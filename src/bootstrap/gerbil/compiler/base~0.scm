(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1784461444)
  (begin
    (define gxc#__DEBUG-COMPILE
      (if (string? __DEBUG)
          (let ()
            (declare (not safe))
            (##string-contains __DEBUG '"compilation"))
          '#f))
    (define gxc#current-compile-symbol-table (make-parameter '#f))
    (define gxc#current-compile-runtime-sections (make-parameter '#f))
    (define gxc#current-compile-runtime-names (make-parameter '#f))
    (define gxc#current-compile-output-dir (make-parameter '#f))
    (define gxc#current-compile-invoke-gsc (make-parameter '#f))
    (define gxc#current-compile-gsc-options (make-parameter '#f))
    (define gxc#current-compile-keep-scm (make-parameter '#f))
    (define gxc#current-compile-verbose
      (make-parameter
       (let ((_%$%verbosity200578200580%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity200578200580%_
             (let* ((_%verbosity200582%_ _%$%verbosity200578200580%_)
                    (_%$e200584%_ (string->number _%verbosity200582%_)))
               (if _%$e200584%_ _%$e200584%_ _%verbosity200582%_))
             '#f))))
    (define gxc#current-compile-optimize (make-parameter '#f))
    (define gxc#current-compile-debug (make-parameter '#f))
    (define gxc#current-compile-generate-ssxi (make-parameter '#f))
    (define gxc#current-compile-static (make-parameter '#f))
    (define gxc#current-compile-timestamp (make-parameter '#f))
    (define gxc#current-compile-decls (make-parameter '#f))
    (define gxc#current-compile-context (make-parameter '#f))
    (define gxc#current-compile-parallel (make-parameter '#f))
    (define gxc#current-compile-lift (make-parameter '#f))
    (define gxc#current-compile-marks (make-parameter '#f))
    (define gxc#current-compile-identifiers (make-parameter '#f))
    (define gxc#current-compile-boolean-context (make-parameter '#f))
    (define gxc#make-bound-identifier-table
      (lambda ()
        (letrec ((_%hash-e200575%_
                  (lambda (_%id200577%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id200577%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e200575%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp200639 (list)) (__tmp200638 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp200639
         '(gensyms bindings)
         __tmp200638
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args200571%_
        (apply make-instance gxc#symbol-table::t _%$args200571%_)))
    (define gxc#symbol-table-gensyms
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#symbol-table::t 'bindings)))
    (define gxc#&symbol-table-gensyms-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#symbol-table::t 'gensyms)))
    (define gxc#&symbol-table-bindings-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#symbol-table::t 'bindings)))
    (define gxc#symbol-table:::init!
      (lambda (_%self200558%_)
        (let ((_%self200561%_ _%self200558%_))
          (if (let ((__tmp200640
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200561%_))))
                (declare (not safe))
                (##fx< '2 __tmp200640))
              (begin
                (let ((__tmp200641
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200561%_
                   __tmp200641
                   '1
                   '#f
                   '#f))
                (let ((__tmp200642
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200561%_
                   __tmp200642
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp200643
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200561%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self200561%_
                       '2
                       __tmp200643))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message200427%_ _%stx200428%_ . _%details200429%_)
        (let ((_%ctx200434%_
               (let ((_%$e200431%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e200431%_ _%$e200431%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx200434%_
                 _%message200427%_
                 _%stx200428%_
                 _%details200429%_))))
    (define gxc#verbose
      (lambda _%args200424%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp200644
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args200424%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp200644))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id200406%_)
        (let* ((_%str200408%_
                (if (symbol? _%id200406%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id200406%_))
                    _%id200406%_))
               (_%len200410%_ (string-length _%str200408%_))
               (_%res200412%_
                (let () (declare (not safe)) (##make-string _%len200410%_))))
          (let _%lp200415%_ ((_%i200417%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i200417%_ _%len200410%_))
                (let* ((_%char200419%_ (string-ref _%str200408%_ _%i200417%_))
                       (_%xchar200421%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char200419%_))
                            '#\_
                            _%char200419%_)))
                  (string-set! _%res200412%_ _%i200417%_ _%xchar200421%_)
                  (_%lp200415%_
                   (let () (declare (not safe)) (##fx+ _%i200417%_ '1))))
                _%res200412%_)))))
    (define gxc#map*
      (lambda (_%proc200348%_ _%maybe-improper-list200349%_)
        (let _%recur200351%_ ((_%rest200353%_ _%maybe-improper-list200349%_))
          (let* ((_%$%rest200354200365%_ _%rest200353%_)
                 (_%$%E200358200369%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest200354200365%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K200361200394%_
                   (lambda (_%rest200391%_ _%hd200392%_)
                     (cons (_%proc200348%_ _%hd200392%_)
                           (_%recur200351%_ _%rest200391%_))))
                  (_%$%K200360200385%_ (lambda () '()))
                  (_%$%K200359200375%_
                   (lambda (_%tail200373%_) (_%proc200348%_ _%tail200373%_))))
              (let ((_%$%try-match200356200388%_
                     (lambda ()
                       (if (null? _%$%rest200354200365%_)
                           (_%$%K200360200385%_)
                           (let ((_%tail200378%_ _%$%rest200354200365%_))
                             (declare (not safe))
                             (_%proc200348%_ _%tail200378%_))))))
                (if (pair? _%$%rest200354200365%_)
                    (let ((_%$%tl200363200399%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest200354200365%_)))
                          (_%$%hd200362200397%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest200354200365%_))))
                      (let ((_%hd200402%_ _%$%hd200362200397%_)
                            (_%rest200404%_ _%$%tl200363200399%_))
                        (_%$%K200361200394%_ _%rest200404%_ _%hd200402%_)))
                    (_%$%try-match200356200388%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym200343%_)
        (let ((_%$e200345%_ (not (gxc#gensym-reference? _%sym200343%_))))
          (if _%$e200345%_
              _%$e200345%_
              (memq _%sym200343%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym200339%_)
        (let ((_%str200341%_ (symbol->string _%sym200339%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str200341%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str200341%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id200310%_)
        (let ((_%$e200312%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id200310%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id200310%_))
                   '#f)))
          (if _%$e200312%_
              (let ((_%eid200317%_
                     (##structure-ref _%$e200312%_ '1 gx#binding::t '#f))
                    (_%ht200318%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid200317%_))
                    _%eid200317%_
                    (let ((_%$e200321%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht200318%_ _%eid200317%_))))
                      (if _%$e200321%_
                          _%$e200321%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e200312%_
                                 'gx#local-binding::t))
                              (let ((_%gid200325%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid200317%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht200318%_
                                   _%eid200317%_
                                   _%gid200325%_))
                                _%gid200325%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e200312%_
                                     'gx#module-binding::t))
                                  (let ((_%gid200334%_
                                         (let ((_%$e200328%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e200312%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e200328%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e200328%_
                                                  '"#"
                                                  _%eid200317%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid200317%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht200318%_
                                       _%eid200317%_
                                       _%gid200334%_))
                                    _%gid200334%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id200310%_
                                   _%eid200317%_
                                   _%$e200312%_)))))))
              (if (let ((__tmp200645
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id200310%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp200645))
                  (let () (declare (not safe)) (gx#stx-e _%id200310%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id200310%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id200308%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id200308%_))
            (gxc#generate-runtime-binding-id _%id200308%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top200295%_)
        (if _%top200295%_
            (let ((_%ns200297%_
                   (##structure-ref
                    (let ((__tmp200646
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp200646))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi200298%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns200297%_
                  (if (fxpositive? _%phi200298%_)
                      (let ((__tmp200648 (number->string _%phi200298%_))
                            (__tmp200647
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns200297%_
                         '"["
                         __tmp200648
                         '"]#_"
                         __tmp200647
                         '"_"))
                      (let ((__tmp200649
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns200297%_ '"#_" __tmp200649 '"_")))
                  (if (fxpositive? _%phi200298%_)
                      (let ((__tmp200651 (number->string _%phi200298%_))
                            (__tmp200650
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp200651
                         '"]#_"
                         __tmp200650
                         '"_"))
                      (let ((__tmp200652
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp200652 '"_")))))
            (let ((__tmp200653 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp200653 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top200304%_ '#f))
          (gxc#generate-runtime-temporary__% _%top200304%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g200654_
        (let ((_g200655_ (let () (declare (not safe)) (##length _g200654_))))
          (cond ((let () (declare (not safe)) (##fx= _g200655_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g200654_))
                ((let () (declare (not safe)) (##fx= _g200655_ 1))
                 (apply gxc#generate-runtime-temporary__% _g200654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g200654_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym200273%_ _%quote?200274%_)
        (let* ((_%ht200276%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e200278%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht200276%_ _%sym200273%_))))
          (if _%$e200278%_
              _%$e200278%_
              (let ((_%g200282%_
                     (if _%quote?200274%_
                         (let ((__tmp200656
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym200273%_
                            '"__"
                            __tmp200656))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym200273%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht200276%_ _%sym200273%_ _%g200282%_))
                _%g200282%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym200287%_)
        (let ((_%quote?200289%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym200287%_
           _%quote?200289%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g200657_
        (let ((_g200658_ (let () (declare (not safe)) (##length _g200657_))))
          (cond ((let () (declare (not safe)) (##fx= _g200658_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g200657_))
                ((let () (declare (not safe)) (##fx= _g200658_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g200657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g200657_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id200270%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id200270%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key200225%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key200225%_))
            _%key200225%_
            (if (uninterned-symbol? _%key200225%_)
                (gxc#generate-runtime-gensym-reference__0 _%key200225%_)
                (let* ((_%$%key200229200236%_ _%key200225%_)
                       (_%$%E200231200240%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key200229200236%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K200232200258%_
                        (lambda (_%mark200243%_ _%eid200244%_)
                          (let ((_%$e200246%_
                                 (##structure-ref
                                  _%mark200243%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e200246%_
                                (let ((_%$e200251%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e200246%_
                                          _%eid200244%_))))
                                  (if _%$e200251%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e200251%_))
                                          _%$e200251%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e200251%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid200244%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid200244%_))))))
                  (if (pair? _%$%key200229200236%_)
                      (let ((_%$%hd200233200261%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key200229200236%_)))
                            (_%$%tl200234200263%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key200229200236%_))))
                        (let* ((_%eid200266%_ _%$%hd200233200261%_)
                               (_%mark200268%_ _%$%tl200234200263%_))
                          (_%$%K200232200258%_ _%mark200268%_ _%eid200266%_)))
                      (_%$%E200231200240%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1200218%_ _%id2200219%_)
        (letrec ((_%symbol-e200221%_
                  (lambda (_%id200223%_)
                    (if (symbol? _%id200223%_)
                        _%id200223%_
                        (gxc#generate-runtime-binding-id _%id200223%_)))))
          (eq? (_%symbol-e200221%_ _%id1200218%_)
               (_%symbol-e200221%_ _%id2200219%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx200216%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx200216%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx200216%_)
            (let () (declare (not safe)) (gx#stx-e _%stx200216%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id200138%_)
        (let* ((_%bind200140%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id200138%_)))
               (_%runtime-props200169%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind200140%_
                       'gx#runtime-binding::t))
                    (let* ((_%props200149%_
                            (let ((_%$e200143%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind200140%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e200143%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e200143%_)
                                              '()))
                                  '())))
                           (_%props200165%_
                            (let ((_%$e200151%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind200140%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e200151%_
                                  (let ((_%$e200156%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e200151%_
                                            ':repr))))
                                    (if _%$e200156%_
                                        (let ((_%repr200161%_
                                               (_%$e200156%_ _%$e200151%_)))
                                          (cons 'type:
                                                (cons _%repr200161%_
                                                      _%props200149%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id200138%_
                                         _%$e200151%_)))
                                  _%props200149%_))))
                      _%props200165%_)
                    '()))
               (_%$e200172%_
                (##structure-ref _%bind200140%_ '4 gx#binding::t '#f)))
          (if _%$e200172%_
              (let ((__tmp200659
                     (lambda (_%prop200177%_ _%props200178%_)
                       (let* ((_%$%prop200179200186%_ _%prop200177%_)
                              (_%$%E200181200189%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop200179200186%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K200182200203%_
                               (lambda (_%value200192%_ _%key200193%_)
                                 (let ((_%$e200195%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value200192%_
                                           ':repr))))
                                   (if _%$e200195%_
                                       (let ((_%repr200200%_
                                              (_%$e200195%_ _%value200192%_)))
                                         (cons _%key200193%_
                                               (cons _%repr200200%_
                                                     _%props200178%_)))
                                       (cons _%key200193%_
                                             (cons (cons 'quote
                                                         (cons _%value200192%_
                                                               '()))
                                                   _%props200178%_)))))))
                         (if (pair? _%$%prop200179200186%_)
                             (let ((_%$%hd200183200206%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop200179200186%_)))
                                   (_%$%tl200184200208%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop200179200186%_))))
                               (let* ((_%key200211%_ _%$%hd200183200206%_)
                                      (_%value200213%_ _%$%tl200184200208%_))
                                 (_%$%K200182200203%_
                                  _%value200213%_
                                  _%key200211%_)))
                             (_%$%E200181200189%_))))))
                (declare (not safe))
                (foldl__0 __tmp200659 _%runtime-props200169%_ _%$e200172%_))
              _%runtime-props200169%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk200123%_ _%name200124%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job200126%_
               (gxc#make-compile-job _%thunk200123%_ _%name200124%_)))
          (set! gxc#__compile-jobs (cons _%job200126%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk200131%_)
        (let ((_%name200133%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk200131%_ _%name200133%_))))
    (define gxc#add-compile-job!
      (lambda _g200660_
        (let ((_g200661_ (let () (declare (not safe)) (##length _g200660_))))
          (cond ((let () (declare (not safe)) (##fx= _g200661_ 1))
                 (apply gxc#add-compile-job!__0 _g200660_))
                ((let () (declare (not safe)) (##fx= _g200661_ 2))
                 (apply gxc#add-compile-job!__% _g200660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g200660_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result200120%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result200120%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop200114%_ ()
          (let ((_%pending200117%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending200117%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending200117%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending200117%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk200103%_ _%name200104%_)
        (make-thread
         (lambda ()
           (let _%loop200107%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp200662
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name200104%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp200662))
                   (let ((__tmp200664 (lambda () (_%thunk200103%_)))
                         (__tmp200663
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp200664 __tmp200663)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop200107%_)))))
         _%name200104%_)))
    (define gxc#join!
      (lambda (_%thread200098%_)
        (let ((__tmp200666
               (lambda (_%exn200100%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn200100%_))
                     (let ((__tmp200667
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn200100%_))))
                       (declare (not safe))
                       (raise __tmp200667))
                     (let () (declare (not safe)) (raise _%exn200100%_)))))
              (__tmp200665 (lambda () (thread-join! _%thread200098%_))))
          (declare (not safe))
          (__with-catch __tmp200666 __tmp200665))))))
