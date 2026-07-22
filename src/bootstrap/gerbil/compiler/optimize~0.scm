(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1784461452)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp271949
                   (let ((__obj271943
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
                       (gxc#optimizer-info:::init! __obj271943))
                     __obj271943)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp271949)))))
    (define gxc#optimize!
      (lambda (_%ctx271551%_)
        (let ((__tmp271951
               (lambda ()
                 (let ((__tmp271953
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx271551%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx271551%_)
                          (let ((__tmp271955
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp271954
                                 (##structure-ref
                                  _%ctx271551%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp271955 __tmp271954 '#t))
                          (let ((_%code271555%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx271551%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx271551%_
                             _%code271555%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp271952
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp271953
                    gxc#current-compile-local-type
                    __tmp271952))))
              (__tmp271950 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp271951
           gxc#current-compile-mutators
           __tmp271950))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx271537%_)
        (letrec ((_%load-it!271539%_
                  (lambda (_%id271549%_)
                    (if (let ((__tmp271956
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp271956 _%id271549%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id271549%_)
                          (let ((__tmp271957
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp271957 _%id271549%_ '#t)))))))
          (let* ((_%modid271541%_
                  (##structure-ref
                   _%ctx271537%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str271543%_ (symbol->string _%modid271541%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str271543%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str271543%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!271539%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!271539%_
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
      (lambda (_%ctx271474%_)
        (letrec* ((_%deps271476%_
                   (let* ((_%imports271527%_
                           (##structure-ref
                            _%ctx271474%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e271529%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx271474%_))))
                     (if _%$e271529%_
                         (cons _%$e271529%_ _%imports271527%_)
                         _%imports271527%_))))
          (let _%lp271478%_ ((_%rest271480%_ _%deps271476%_))
            (let* ((_%$%rest271481271489%_ _%rest271480%_)
                   (_%$%else271483271497%_ (lambda () '#!void))
                   (_%$%K271485271515%_
                    (lambda (_%rest271500%_ _%hd271501%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd271501%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp271959
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp271958
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd271501%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp271959 __tmp271958))
                                '#!void
                                (begin
                                  (let ((_%$e271504%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd271501%_))))
                                    (if _%$e271504%_
                                        (_%lp271478%_
                                         (cons _%$e271504%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd271501%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp271478%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd271501%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd271501%_)))
                            (_%lp271478%_ _%rest271500%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd271501%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp271961
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp271960
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd271501%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp271961 __tmp271960))
                                    '#!void
                                    (begin
                                      (_%lp271478%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd271501%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd271501%_)))
                                (_%lp271478%_ _%rest271500%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd271501%_
                                     'gx#module-import::t))
                                  (_%lp271478%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd271501%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest271500%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd271501%_
                                         'gx#module-export::t))
                                      (_%lp271478%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd271501%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest271500%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd271501%_
                                             'gx#import-set::t))
                                          (_%lp271478%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd271501%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest271500%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd271501%_))))))))))
              (if (pair? _%$%rest271481271489%_)
                  (let ((_%$%hd271486271518%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest271481271489%_)))
                        (_%$%tl271487271520%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest271481271489%_))))
                    (let* ((_%hd271523%_ _%$%hd271486271518%_)
                           (_%rest271525%_ _%$%tl271487271520%_))
                      (_%$%K271485271515%_ _%rest271525%_ _%hd271523%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx271454%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx271454%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx271454%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht271456%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id271458%_
                    (##structure-ref
                     _%ctx271454%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod271460%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht271456%_ _%id271458%_)))
                   (_%$e271463%_ _%mod271460%_))
              (if _%$e271463%_
                  _%$e271463%_
                  (let* ((_%mod271466%_
                          (gxc#optimizer-import-ssxi _%ctx271454%_))
                         (_%val271471%_
                          (let ((_%$e271468%_ _%mod271466%_))
                            (if _%$e271468%_ _%$e271468%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht271456%_ _%id271458%_ _%val271471%_))
                    _%val271471%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx271452%_)
        (if (##structure-ref _%ctx271452%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx271452%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id271430%_)
        (letrec ((_%catch-e271432%_
                  (lambda (_%exn271450%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn271450%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn271450%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id271430%_))))
                    '#f))
                 (_%import-e271433%_
                  (lambda ()
                    (let* ((_%str-id271436%_
                            (let ((__tmp271962
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id271430%_))))
                              (declare (not safe))
                              (##string-append __tmp271962 '".ssxi")))
                           (_%artefact-path271443%_
                            (let ((_%$%odir271437271439%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir271437271439%_
                                  (let ((_%odir271441%_
                                         _%$%odir271437271439%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id271436%_
                                        '".ss"))
                                     _%odir271441%_))
                                  '#f)))
                           (_%library-path271445%_
                            (let ((__tmp271963
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id271436%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp271963)))
                           (_%ssxi-path271447%_
                            (if (and _%artefact-path271443%_
                                     (file-exists? _%artefact-path271443%_))
                                _%artefact-path271443%_
                                _%library-path271445%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path271447%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path271447%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e271432%_ _%import-e271433%_)))))
    (define gxc#optimize-source
      (lambda (_%stx271415%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx271415%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx271415%_))
        (let* ((_%stx271417%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx271415%_)))
               (_%stx271419%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx271417%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx271419%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx271419%_))
          (let _%fixpoint271422%_ ((_%current271424%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx271419%_))
            (let ((_%refined271426%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current271424%_ _%refined271426%_)
                  '#!void
                  (_%fixpoint271422%_ _%refined271426%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx271419%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx271419%_))
          (let ((_%stx271428%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx271419%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx271428%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp271965 (list gxc#::generate-runtime-empty::t))
            (__tmp271964 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp271965
         '()
         __tmp271964
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args271412%_
        (apply make-instance gxc#::generate-ssxi::t _%$args271412%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp271966
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
        (__make-atomic-promise __tmp271966)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx271404%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self271407%_
                (let ((__obj271945
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj271945))
               (__tmp271967
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self271407%_ _%stx271404%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp271967
           gxc#current-compile-method
           _%self271407%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self271364%_ _%stx271365%_)
        (let* ((_%$%g271367271377%_
                (lambda (_%$%g271368271374%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271368271374%_))))
               (_%$%g271366271401%_
                (lambda (_%$%g271368271380%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271368271380%_))
                      (let ((_%$%e271370271382%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g271368271380%_))))
                        (let ((_%$%hd271371271385%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271370271382%_)))
                              (_%$%tl271372271387%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271370271382%_))))
                          (let ((__tmp271970
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self271364%_
                                      _%stx271365%_))))
                                (__tmp271968
                                 (let ((__tmp271969
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp271969 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp271970
                             gx#current-expander-phi
                             __tmp271968))))
                      (_%$%g271367271377%_ _%$%g271368271380%_)))))
          (_%$%g271366271401%_ _%stx271365%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self271303%_ _%stx271304%_)
        (let* ((_%$%g271306271320%_
                (lambda (_%$%g271307271317%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271307271317%_))))
               (_%$%g271305271361%_
                (lambda (_%$%g271307271323%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271307271323%_))
                      (let ((_%$%e271310271325%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g271307271323%_))))
                        (let ((_%$%hd271311271328%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271310271325%_)))
                              (_%$%tl271312271330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271310271325%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271312271330%_))
                              (let ((_%$%e271313271333%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl271312271330%_))))
                                (let ((_%$%hd271314271336%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271313271333%_)))
                                      (_%$%tl271315271338%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271313271333%_))))
                                  (let* ((_%ctx271355%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd271314271336%_)))
                                         (_%code271357%_
                                          (##structure-ref
                                           _%ctx271355%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp271971
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self271303%_
                                               _%code271357%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp271971
                                     gx#current-expander-context
                                     _%ctx271355%_))))
                              (_%$%g271306271320%_ _%$%g271307271323%_))))
                      (_%$%g271306271320%_ _%$%g271307271323%_)))))
          (_%$%g271305271361%_ _%stx271304%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self271110%_ _%stx271111%_)
        (letrec ((_%generate-e271113%_
                  (lambda (_%id271288%_)
                    (let* ((_%sym271290%_
                            (if (let ((__tmp271972
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp271972))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id271288%_))
                                '#f))
                           (_%$e271292%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym271290%_))))
                      (if _%$e271292%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym271290%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym271290%_
                                                    (cons (let ((__method271946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e271292%_ 'typedecl))))
                    (if __method271946
                        (let ()
                          (declare (not safe))
                          (__method271946 _%$e271292%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e271292%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym271290%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym271290%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e271297%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym271290%_))))
                            (if _%$e271297%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym271290%_
                                     '" "
                                     _%$e271297%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e271297%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym271290%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym271290%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e271297%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym271290%_
                                                  (cons (let ((__method271947
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e271297%_ 'typedecl))))
                  (if __method271947
                      (let ()
                        (declare (not safe))
                        (__method271947 _%$e271297%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e271297%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx271558271559%_ _%stx271111%_)
                 (_%$%g271116271154%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx271558271559%_)))))
            (let ((_%__kont271560271561%_
                   (lambda (_%$%g271118271270%_)
                     (_%generate-e271113%_ _%$%g271118271270%_)))
                  (_%__kont271562271563%_
                   (lambda (_%$%g271131271205%_)
                     (let ((_%types271231%_
                            (map _%generate-e271113%_
                                 (let ((__tmp271973
                                        (lambda (_%$%g271223271226%_
                                                 _%$%g271224271228%_)
                                          (cons _%$%g271223271226%_
                                                _%$%g271224271228%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp271973
                                    '()
                                    _%$%g271131271205%_)))))
                       (cons 'begin _%types271231%_)))))
              (let ((_%__match271613271614%_
                     (lambda (_%$%e271132271159%_
                              _%$%hd271133271162%_
                              _%$%tl271134271164%_
                              _%$%e271135271167%_
                              _%$%hd271136271170%_
                              _%$%tl271137271172%_
                              _%__splice271564271565%_
                              _%$%target271138271175%_
                              _%$%tl271140271177%_)
                       (letrec ((_%$%loop271141271180%_
                                 (lambda (_%$%hd271139271183%_
                                          _%$%id271145271185%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd271139271183%_))
                                       (let ((_%$%e271142271187%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd271139271183%_))))
                                         (let ((_%$%lp-tl271144271192%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e271142271187%_)))
                                               (_%$%lp-hd271143271190%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e271142271187%_))))
                                           (_%$%loop271141271180%_
                                            _%$%lp-tl271144271192%_
                                            (cons _%$%lp-hd271143271190%_
                                                  _%$%id271145271185%_))))
                                       (let ((_%$%id271146271195%_
                                              (reverse _%$%id271145271185%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl271137271172%_))
                                             (let ((_%$%e271147271197%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl271137271172%_))))
                                               (let ((_%$%tl271149271202%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e271147271197%_)))
                                                     (_%$%hd271148271200%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e271147271197%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl271149271202%_))
                                                     (_%__kont271562271563%_
                                                      _%$%id271146271195%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g271116271154%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g271116271154%_))))))))
                         (_%$%loop271141271180%_
                          _%$%target271138271175%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx271558271559%_))
                    (let ((_%$%e271119271238%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx271558271559%_))))
                      (let ((_%$%tl271121271243%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e271119271238%_)))
                            (_%$%hd271120271241%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e271119271238%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl271121271243%_))
                            (let ((_%$%e271122271246%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl271121271243%_))))
                              (let ((_%$%tl271124271251%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e271122271246%_)))
                                    (_%$%hd271123271249%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e271122271246%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd271123271249%_))
                                    (let ((_%$%e271125271254%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd271123271249%_))))
                                      (let ((_%$%tl271127271259%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e271125271254%_)))
                                            (_%$%hd271126271257%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e271125271254%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl271127271259%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl271124271251%_))
                                                (let ((_%$%e271128271262%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl271124271251%_))))
                                                  (let ((_%$%tl271130271267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e271128271262%_)))
                                                        (_%$%hd271129271265%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e271128271262%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271130271267%_))
                                                        (_%__kont271560271561%_
                                                         _%$%hd271126271257%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd271123271249%_))
                                                            (let ((_%__splice271564271565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd271123271249%_
                              '0))))
                      (let ((_%$%tl271140271177%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice271564271565%_ '1)))
                            (_%$%target271138271175%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice271564271565%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl271140271177%_))
                            (_%__match271613271614%_
                             _%$%e271119271238%_
                             _%$%hd271120271241%_
                             _%$%tl271121271243%_
                             _%$%e271122271246%_
                             _%$%hd271123271249%_
                             _%$%tl271124271251%_
                             _%__splice271564271565%_
                             _%$%target271138271175%_
                             _%$%tl271140271177%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g271116271154%_)))))
                    (let () (declare (not safe)) (_%$%g271116271154%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd271123271249%_))
                                                    (let ((_%__splice271564271565%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd271123271249%_
                                                              '0))))
                                                      (let ((_%$%tl271140271177%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice271564271565%_ '1)))
                    (_%$%target271138271175%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice271564271565%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl271140271177%_))
                    (_%__match271613271614%_
                     _%$%e271119271238%_
                     _%$%hd271120271241%_
                     _%$%tl271121271243%_
                     _%$%e271122271246%_
                     _%$%hd271123271249%_
                     _%$%tl271124271251%_
                     _%__splice271564271565%_
                     _%$%target271138271175%_
                     _%$%tl271140271177%_)
                    (let () (declare (not safe)) (_%$%g271116271154%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g271116271154%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd271123271249%_))
                                                (let ((_%__splice271564271565%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd271123271249%_
                                                          '0))))
                                                  (let ((_%$%tl271140271177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice271564271565%_
                                                            '1)))
                                                        (_%$%target271138271175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice271564271565%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271140271177%_))
                                                        (_%__match271613271614%_
                                                         _%$%e271119271238%_
                                                         _%$%hd271120271241%_
                                                         _%$%tl271121271243%_
                                                         _%$%e271122271246%_
                                                         _%$%hd271123271249%_
                                                         _%$%tl271124271251%_
                                                         _%__splice271564271565%_
                                                         _%$%target271138271175%_
                                                         _%$%tl271140271177%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g271116271154%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g271116271154%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd271123271249%_))
                                        (let ((_%__splice271564271565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd271123271249%_
                                                  '0))))
                                          (let ((_%$%tl271140271177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice271564271565%_
                                                    '1)))
                                                (_%$%target271138271175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice271564271565%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271140271177%_))
                                                (_%__match271613271614%_
                                                 _%$%e271119271238%_
                                                 _%$%hd271120271241%_
                                                 _%$%tl271121271243%_
                                                 _%$%e271122271246%_
                                                 _%$%hd271123271249%_
                                                 _%$%tl271124271251%_
                                                 _%__splice271564271565%_
                                                 _%$%target271138271175%_
                                                 _%$%tl271140271177%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g271116271154%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g271116271154%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g271116271154%_)))))
                    (let () (declare (not safe)) (_%$%g271116271154%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self270663%_ _%stx270664%_)
        (let* ((_%__stx271616271617%_ _%stx270664%_)
               (_%$%g270668270770%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx271616271617%_)))))
          (let ((_%__kont271618271619%_
                 (lambda (_%$%g270670271060%_
                          _%$%g270671271061%_
                          _%$%g270672271062%_
                          _%$%g270673271063%_
                          _%$%g270674271064%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270673271063%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g270672271062%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g270671271061%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g270670271060%_))
                                                 '())))))))
                (_%__kont271620271621%_
                 (lambda (_%$%g270723270886%_
                          _%$%g270724270887%_
                          _%$%g270725270888%_
                          _%$%g270726270889%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270725270888%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g270724270887%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g270723270886%_))
                                           (cons '#f '())))))))
                (_%__kont271622271623%_ (lambda () '(begin))))
            (let ((_%__match271751271752%_
                   (lambda (_%$%e270675270932%_
                            _%$%hd270676270935%_
                            _%$%tl270677270937%_
                            _%$%e270678270940%_
                            _%$%hd270679270943%_
                            _%$%tl270680270945%_
                            _%$%e270681270948%_
                            _%$%hd270682270951%_
                            _%$%tl270683270953%_
                            _%$%e270684270956%_
                            _%$%hd270685270959%_
                            _%$%tl270686270961%_
                            _%$%e270687270964%_
                            _%$%hd270688270967%_
                            _%$%tl270689270969%_
                            _%$%e270690270972%_
                            _%$%hd270691270975%_
                            _%$%tl270692270977%_
                            _%$%e270693270980%_
                            _%$%hd270694270983%_
                            _%$%tl270695270985%_
                            _%$%e270696270988%_
                            _%$%hd270697270991%_
                            _%$%tl270698270993%_
                            _%$%e270699270996%_
                            _%$%hd270700270999%_
                            _%$%tl270701271001%_
                            _%$%e270702271004%_
                            _%$%hd270703271007%_
                            _%$%tl270704271009%_
                            _%$%e270705271012%_
                            _%$%hd270706271015%_
                            _%$%tl270707271017%_
                            _%$%e270708271020%_
                            _%$%hd270709271023%_
                            _%$%tl270710271025%_
                            _%$%e270711271028%_
                            _%$%hd270712271031%_
                            _%$%tl270713271033%_
                            _%$%e270714271036%_
                            _%$%hd270715271039%_
                            _%$%tl270716271041%_
                            _%$%e270717271044%_
                            _%$%hd270718271047%_
                            _%$%tl270719271049%_
                            _%$%e270720271052%_
                            _%$%hd270721271055%_
                            _%$%tl270722271057%_)
                     (let ((_%$%g270670271060%_ _%$%hd270721271055%_)
                           (_%$%g270671271061%_ _%$%hd270712271031%_)
                           (_%$%g270672271062%_ _%$%hd270703271007%_)
                           (_%$%g270673271063%_ _%$%hd270694270983%_)
                           (_%$%g270674271064%_ _%$%hd270685270959%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g270674271064%_
                              'bind-method!))
                           (_%__kont271618271619%_
                            _%$%g270670271060%_
                            _%$%g270671271061%_
                            _%$%g270672271062%_
                            _%$%g270673271063%_
                            _%$%g270674271064%_)
                           (_%__kont271622271623%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx271616271617%_))
                  (let ((_%$%e270675270932%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx271616271617%_))))
                    (let ((_%$%tl270677270937%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270675270932%_)))
                          (_%$%hd270676270935%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270675270932%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl270677270937%_))
                          (let ((_%$%e270678270940%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl270677270937%_))))
                            (let ((_%$%tl270680270945%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270678270940%_)))
                                  (_%$%hd270679270943%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270678270940%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd270679270943%_))
                                  (let ((_%$%e270681270948%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd270679270943%_))))
                                    (let ((_%$%tl270683270953%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270681270948%_)))
                                          (_%$%hd270682270951%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270681270948%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd270682270951%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd270682270951%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270683270953%_))
                                                  (let ((_%$%e270684270956%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl270683270953%_))))
                                                    (let ((_%$%tl270686270961%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270684270956%_)))
                                                          (_%$%hd270685270959%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270684270956%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl270686270961%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl270680270945%_))
                      (let ((_%$%e270687270964%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl270680270945%_))))
                        (let ((_%$%tl270689270969%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270687270964%_)))
                              (_%$%hd270688270967%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270687270964%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd270688270967%_))
                              (let ((_%$%e270690270972%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd270688270967%_))))
                                (let ((_%$%tl270692270977%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270690270972%_)))
                                      (_%$%hd270691270975%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270690270972%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd270691270975%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd270691270975%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl270692270977%_))
                                              (let ((_%$%e270693270980%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl270692270977%_))))
                                                (let ((_%$%tl270695270985%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e270693270980%_)))
                                                      (_%$%hd270694270983%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e270693270980%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270695270985%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl270689270969%_))
                                                          (let ((_%$%e270696270988%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl270689270969%_))))
                    (let ((_%$%tl270698270993%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270696270988%_)))
                          (_%$%hd270697270991%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270696270988%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd270697270991%_))
                          (let ((_%$%e270699270996%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd270697270991%_))))
                            (let ((_%$%tl270701271001%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270699270996%_)))
                                  (_%$%hd270700270999%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270699270996%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd270700270999%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd270700270999%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl270701271001%_))
                                          (let ((_%$%e270702271004%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl270701271001%_))))
                                            (let ((_%$%tl270704271009%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e270702271004%_)))
                                                  (_%$%hd270703271007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e270702271004%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl270704271009%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl270698270993%_))
                                                      (let ((_%$%e270705271012%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl270698270993%_))))
                (let ((_%$%tl270707271017%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e270705271012%_)))
                      (_%$%hd270706271015%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e270705271012%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd270706271015%_))
                      (let ((_%$%e270708271020%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd270706271015%_))))
                        (let ((_%$%tl270710271025%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270708271020%_)))
                              (_%$%hd270709271023%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270708271020%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd270709271023%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd270709271023%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270710271025%_))
                                      (let ((_%$%e270711271028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl270710271025%_))))
                                        (let ((_%$%tl270713271033%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270711271028%_)))
                                              (_%$%hd270712271031%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270711271028%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270713271033%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270707271017%_))
                                                  (let ((_%$%e270714271036%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl270707271017%_))))
                                                    (let ((_%$%tl270716271041%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270714271036%_)))
                                                          (_%$%hd270715271039%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270714271036%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd270715271039%_))
                                                          (let ((_%$%e270717271044%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd270715271039%_))))
                    (let ((_%$%tl270719271049%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270717271044%_)))
                          (_%$%hd270718271047%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270717271044%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd270718271047%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd270718271047%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270719271049%_))
                                  (let ((_%$%e270720271052%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl270719271049%_))))
                                    (let ((_%$%tl270722271057%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270720271052%_)))
                                          (_%$%hd270721271055%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270720271052%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl270722271057%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270716271041%_))
                                              (_%__match271751271752%_
                                               _%$%e270675270932%_
                                               _%$%hd270676270935%_
                                               _%$%tl270677270937%_
                                               _%$%e270678270940%_
                                               _%$%hd270679270943%_
                                               _%$%tl270680270945%_
                                               _%$%e270681270948%_
                                               _%$%hd270682270951%_
                                               _%$%tl270683270953%_
                                               _%$%e270684270956%_
                                               _%$%hd270685270959%_
                                               _%$%tl270686270961%_
                                               _%$%e270687270964%_
                                               _%$%hd270688270967%_
                                               _%$%tl270689270969%_
                                               _%$%e270690270972%_
                                               _%$%hd270691270975%_
                                               _%$%tl270692270977%_
                                               _%$%e270693270980%_
                                               _%$%hd270694270983%_
                                               _%$%tl270695270985%_
                                               _%$%e270696270988%_
                                               _%$%hd270697270991%_
                                               _%$%tl270698270993%_
                                               _%$%e270699270996%_
                                               _%$%hd270700270999%_
                                               _%$%tl270701271001%_
                                               _%$%e270702271004%_
                                               _%$%hd270703271007%_
                                               _%$%tl270704271009%_
                                               _%$%e270705271012%_
                                               _%$%hd270706271015%_
                                               _%$%tl270707271017%_
                                               _%$%e270708271020%_
                                               _%$%hd270709271023%_
                                               _%$%tl270710271025%_
                                               _%$%e270711271028%_
                                               _%$%hd270712271031%_
                                               _%$%tl270713271033%_
                                               _%$%e270714271036%_
                                               _%$%hd270715271039%_
                                               _%$%tl270716271041%_
                                               _%$%e270717271044%_
                                               _%$%hd270718271047%_
                                               _%$%tl270719271049%_
                                               _%$%e270720271052%_
                                               _%$%hd270721271055%_
                                               _%$%tl270722271057%_)
                                              (_%__kont271622271623%_))
                                          (_%__kont271622271623%_))))
                                  (_%__kont271622271623%_))
                              (_%__kont271622271623%_))
                          (_%__kont271622271623%_))))
                  (_%__kont271622271623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270707271017%_))
                                                      (if (let ((__tmp271974
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp271974 'bind-method!))
                  (let ((_%$%g270723270886%_ _%$%hd270712271031%_)
                        (_%$%g270724270887%_ _%$%hd270703271007%_)
                        (_%$%g270725270888%_ _%$%hd270694270983%_)
                        (_%$%g270726270889%_ _%$%hd270685270959%_))
                    (_%__kont271620271621%_
                     _%$%g270723270886%_
                     _%$%g270724270887%_
                     _%$%g270725270888%_
                     _%$%g270726270889%_))
                  (_%__kont271622271623%_))
              (_%__kont271622271623%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont271622271623%_))))
                                      (_%__kont271622271623%_))
                                  (_%__kont271622271623%_))
                              (_%__kont271622271623%_))))
                      (_%__kont271622271623%_))))
              (_%__kont271622271623%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont271622271623%_))))
                                          (_%__kont271622271623%_))
                                      (_%__kont271622271623%_))
                                  (_%__kont271622271623%_))))
                          (_%__kont271622271623%_))))
                  (_%__kont271622271623%_))
              (_%__kont271622271623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont271622271623%_))
                                          (_%__kont271622271623%_))
                                      (_%__kont271622271623%_))))
                              (_%__kont271622271623%_))))
                      (_%__kont271622271623%_))
                  (_%__kont271622271623%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont271622271623%_))
                                              (_%__kont271622271623%_))
                                          (_%__kont271622271623%_))))
                                  (_%__kont271622271623%_))))
                          (_%__kont271622271623%_))))
                  (_%__kont271622271623%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self270487%_ _%stx270488%_)
        (let* ((_%__stx271860271861%_ _%stx270488%_)
               (_%$%g270491270531%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx271860271861%_)))))
          (let ((_%__kont271862271863%_
                 (lambda (_%$%g270493270637%_ _%$%g270494270638%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270494270638%_))
                               (cons _%$%g270493270637%_ '())))))
                (_%__kont271864271865%_
                 (lambda (_%$%g270516270560%_ _%$%g270517270561%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx271860271861%_))
                (let ((_%$%e270495270581%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx271860271861%_))))
                  (let ((_%$%tl270497270586%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270495270581%_)))
                        (_%$%hd270496270584%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270495270581%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl270497270586%_))
                        (let ((_%$%e270498270589%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl270497270586%_))))
                          (let ((_%$%tl270500270594%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270498270589%_)))
                                (_%$%hd270499270592%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270498270589%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd270499270592%_))
                                (let ((_%$%e270501270597%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd270499270592%_))))
                                  (let ((_%$%tl270503270602%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270501270597%_)))
                                        (_%$%hd270502270600%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270501270597%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd270502270600%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd270502270600%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270503270602%_))
                                                (let ((_%$%e270504270605%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl270503270602%_))))
                                                  (let ((_%$%tl270506270610%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270504270605%_)))
                                                        (_%$%hd270505270608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270504270605%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270506270610%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl270500270594%_))
                                                            (let ((_%$%e270507270613%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl270500270594%_))))
                      (let ((_%$%tl270509270618%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e270507270613%_)))
                            (_%$%hd270508270616%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e270507270613%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd270508270616%_))
                            (let ((_%$%e270510270621%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd270508270616%_))))
                              (let ((_%$%tl270512270626%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e270510270621%_)))
                                    (_%$%hd270511270624%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e270510270621%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd270511270624%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd270511270624%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270512270626%_))
                                            (let ((_%$%e270513270629%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl270512270626%_))))
                                              (let ((_%$%tl270515270634%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270513270629%_)))
                                                    (_%$%hd270514270632%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270513270629%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270515270634%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270509270618%_))
                                                        (_%__kont271862271863%_
                                                         _%$%hd270514270632%_
                                                         _%$%hd270505270608%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270491270531%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270509270618%_))
                                                        (_%__kont271864271865%_
                                                         _%$%hd270508270616%_
                                                         _%$%hd270499270592%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270491270531%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl270509270618%_))
                                                (_%__kont271864271865%_
                                                 _%$%hd270508270616%_
                                                 _%$%hd270499270592%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g270491270531%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270509270618%_))
                                            (_%__kont271864271865%_
                                             _%$%hd270508270616%_
                                             _%$%hd270499270592%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270491270531%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270509270618%_))
                                        (_%__kont271864271865%_
                                         _%$%hd270508270616%_
                                         _%$%hd270499270592%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g270491270531%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl270509270618%_))
                                (_%__kont271864271865%_
                                 _%$%hd270508270616%_
                                 _%$%hd270499270592%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g270491270531%_))))))
                    (let () (declare (not safe)) (_%$%g270491270531%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl270500270594%_))
                    (let ((_%$%e270524270552%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl270500270594%_))))
                      (let ((_%$%tl270526270557%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e270524270552%_)))
                            (_%$%hd270525270555%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e270524270552%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl270526270557%_))
                            (_%__kont271864271865%_
                             _%$%hd270525270555%_
                             _%$%hd270499270592%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g270491270531%_)))))
                    (let () (declare (not safe)) (_%$%g270491270531%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl270500270594%_))
                                                    (let ((_%$%e270524270552%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl270500270594%_))))
                                                      (let ((_%$%tl270526270557%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e270524270552%_)))
                    (_%$%hd270525270555%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e270524270552%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl270526270557%_))
                    (_%__kont271864271865%_
                     _%$%hd270525270555%_
                     _%$%hd270499270592%_)
                    (let () (declare (not safe)) (_%$%g270491270531%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270491270531%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270500270594%_))
                                                (let ((_%$%e270524270552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl270500270594%_))))
                                                  (let ((_%$%tl270526270557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270524270552%_)))
                                                        (_%$%hd270525270555%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270524270552%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270526270557%_))
                                                        (_%__kont271864271865%_
                                                         _%$%hd270525270555%_
                                                         _%$%hd270499270592%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270491270531%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g270491270531%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270500270594%_))
                                            (let ((_%$%e270524270552%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl270500270594%_))))
                                              (let ((_%$%tl270526270557%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270524270552%_)))
                                                    (_%$%hd270525270555%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270524270552%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270526270557%_))
                                                    (_%__kont271864271865%_
                                                     _%$%hd270525270555%_
                                                     _%$%hd270499270592%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270491270531%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270491270531%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl270500270594%_))
                                    (let ((_%$%e270524270552%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl270500270594%_))))
                                      (let ((_%$%tl270526270557%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e270524270552%_)))
                                            (_%$%hd270525270555%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e270524270552%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270526270557%_))
                                            (_%__kont271864271865%_
                                             _%$%hd270525270555%_
                                             _%$%hd270499270592%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270491270531%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g270491270531%_))))))
                        (let () (declare (not safe)) (_%$%g270491270531%_)))))
                (let () (declare (not safe)) (_%$%g270491270531%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self270474%_)
        (let ((_%self270477%_ _%self270474%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270477%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self270248%_)
        (let* ((_%self270251%_ _%self270248%_)
               (_%$%self270260270276%_ _%self270251%_)
               (_%$%E270262270279%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self270260270276%_
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
               (_%$%K270263270294%_
                (lambda (_%methods270282%_
                         _%metaclass270283%_
                         _%system?270284%_
                         _%final?270285%_
                         _%struct?270286%_
                         _%constructor270287%_
                         _%fields270288%_
                         _%slots270289%_
                         _%precendence-list270290%_
                         _%super270291%_
                         _%id270292%_)
                  (cons '@class
                        (cons _%id270292%_
                              (cons _%super270291%_
                                    (cons _%precendence-list270290%_
                                          (cons _%slots270289%_
                                                (cons _%fields270288%_
                                                      (cons _%constructor270287%_
                                                            (cons _%struct?270286%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?270285%_
                                (cons _%system?270284%_
                                      (cons _%metaclass270283%_
                                            (cons (if _%methods270282%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods270282%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e270264270297%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '1
                   '#f
                   '#f)))
               (_%id270300%_ _%$%e270264270297%_)
               (_%$%e270265270302%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '2
                   '#f
                   '#f)))
               (_%super270305%_ _%$%e270265270302%_)
               (_%$%e270266270307%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list270310%_ _%$%e270266270307%_)
               (_%$%e270267270312%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '4
                   '#f
                   '#f)))
               (_%slots270315%_ _%$%e270267270312%_)
               (_%$%e270268270317%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '5
                   '#f
                   '#f)))
               (_%fields270320%_ _%$%e270268270317%_)
               (_%$%e270269270322%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '6
                   '#f
                   '#f)))
               (_%constructor270325%_ _%$%e270269270322%_)
               (_%$%e270270270327%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '7
                   '#f
                   '#f)))
               (_%struct?270330%_ _%$%e270270270327%_)
               (_%$%e270271270332%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '8
                   '#f
                   '#f)))
               (_%final?270335%_ _%$%e270271270332%_)
               (_%$%e270272270337%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '9
                   '#f
                   '#f)))
               (_%system?270340%_ _%$%e270272270337%_)
               (_%$%e270273270342%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass270345%_ _%$%e270273270342%_)
               (_%$%e270274270347%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270260270276%_
                   '11
                   '#f
                   '#f)))
               (_%methods270350%_ _%$%e270274270347%_))
          (_%$%K270263270294%_
           _%methods270350%_
           _%metaclass270345%_
           _%system?270340%_
           _%final?270335%_
           _%struct?270330%_
           _%constructor270325%_
           _%fields270320%_
           _%slots270315%_
           _%precendence-list270310%_
           _%super270305%_
           _%id270300%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self270113%_)
        (let ((_%self270116%_ _%self270113%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270116%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self269978%_)
        (let ((_%self269981%_ _%self269978%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269981%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self269843%_)
        (let ((_%self269846%_ _%self269843%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269846%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269846%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self269846%_
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
      (lambda (_%self269708%_)
        (let ((_%self269711%_ _%self269708%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269711%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269711%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self269711%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self269573%_)
        (let ((_%self269576%_ _%self269573%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269576%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269576%_
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
      (lambda (_%self269387%_)
        (let* ((_%self269390%_ _%self269387%_)
               (_%$%self269399269408%_ _%self269390%_)
               (_%$%E269401269411%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self269399269408%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K269402269430%_
                (lambda (_%dispatch269414%_
                         _%arity269415%_
                         _%signature269416%_)
                  (if _%signature269416%_
                      (let ((_%signature269418%_ _%signature269416%_))
                        (cons '@lambda
                              (cons _%arity269415%_
                                    (cons _%dispatch269414%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature269418%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature269418%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature269418%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature269418%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature269418%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity269415%_
                                  (cons _%dispatch269414%_ '()))))))
               (_%$%e269403269433%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269399269408%_
                   '1
                   '#f
                   '#f)))
               (_%$%e269404269436%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269399269408%_
                   '2
                   '#f
                   '#f)))
               (_%signature269439%_ _%$%e269404269436%_)
               (_%$%e269405269441%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269399269408%_
                   '3
                   '#f
                   '#f)))
               (_%arity269444%_ _%$%e269405269441%_)
               (_%$%e269406269446%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269399269408%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch269449%_ _%$%e269406269446%_))
          (_%$%K269402269430%_
           _%dispatch269449%_
           _%arity269444%_
           _%signature269439%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self269247%_)
        (let ((_%self269250%_ _%self269247%_))
          (letrec ((_%clause-e269261%_
                    (lambda (_%clause269263%_)
                      (cdr (let ((__method271948
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause269263%_
                                     'typedecl))))
                             (if __method271948
                                 (let ()
                                   (declare (not safe))
                                   (__method271948 _%clause269263%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause269263%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e269261%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self269250%_
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
      (lambda (_%self269112%_)
        (let ((_%self269115%_ _%self269112%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269115%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269115%_
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
      (lambda (_%self268977%_)
        (let ((_%self268980%_ _%self268977%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self268980%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self268980%_
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
      (lambda (_%self268842%_)
        (let ((_%self268845%_ _%self268842%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self268845%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
