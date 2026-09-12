(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1789188908)
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
       (let ((_%$%verbosity200782200784%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity200782200784%_
             (let* ((_%verbosity200786%_ _%$%verbosity200782200784%_)
                    (_%$e200788%_ (string->number _%verbosity200786%_)))
               (if _%$e200788%_ _%$e200788%_ _%verbosity200786%_))
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
        (letrec ((_%hash-e200779%_
                  (lambda (_%id200781%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id200781%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e200779%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp200843 (list)) (__tmp200842 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp200843
         '(gensyms bindings)
         __tmp200842
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args200775%_
        (apply make-instance gxc#symbol-table::t _%$args200775%_)))
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
      (lambda (_%self200762%_)
        (let ((_%self200765%_ _%self200762%_))
          (if (let ((__tmp200844
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200765%_))))
                (declare (not safe))
                (##fx< '2 __tmp200844))
              (begin
                (let ((__tmp200845
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200765%_
                   __tmp200845
                   '1
                   '#f
                   '#f))
                (let ((__tmp200846
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200765%_
                   __tmp200846
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp200847
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200765%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self200765%_
                       '2
                       __tmp200847))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message200631%_ _%stx200632%_ . _%details200633%_)
        (let ((_%ctx200638%_
               (let ((_%$e200635%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e200635%_ _%$e200635%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx200638%_
                 _%message200631%_
                 _%stx200632%_
                 _%details200633%_))))
    (define gxc#verbose
      (lambda _%args200628%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp200848
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args200628%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp200848))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id200610%_)
        (let* ((_%str200612%_
                (if (symbol? _%id200610%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id200610%_))
                    _%id200610%_))
               (_%len200614%_ (string-length _%str200612%_))
               (_%res200616%_
                (let () (declare (not safe)) (##make-string _%len200614%_))))
          (let _%lp200619%_ ((_%i200621%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i200621%_ _%len200614%_))
                (let* ((_%char200623%_ (string-ref _%str200612%_ _%i200621%_))
                       (_%xchar200625%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char200623%_))
                            '#\_
                            _%char200623%_)))
                  (string-set! _%res200616%_ _%i200621%_ _%xchar200625%_)
                  (_%lp200619%_
                   (let () (declare (not safe)) (##fx+ _%i200621%_ '1))))
                _%res200616%_)))))
    (define gxc#map*
      (lambda (_%proc200552%_ _%maybe-improper-list200553%_)
        (let _%recur200555%_ ((_%rest200557%_ _%maybe-improper-list200553%_))
          (let* ((_%$%rest200558200569%_ _%rest200557%_)
                 (_%$%E200562200573%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest200558200569%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K200565200598%_
                   (lambda (_%rest200595%_ _%hd200596%_)
                     (cons (_%proc200552%_ _%hd200596%_)
                           (_%recur200555%_ _%rest200595%_))))
                  (_%$%K200564200589%_ (lambda () '()))
                  (_%$%K200563200579%_
                   (lambda (_%tail200577%_) (_%proc200552%_ _%tail200577%_))))
              (let ((_%$%try-match200560200592%_
                     (lambda ()
                       (if (null? _%$%rest200558200569%_)
                           (_%$%K200564200589%_)
                           (let ((_%tail200582%_ _%$%rest200558200569%_))
                             (declare (not safe))
                             (_%proc200552%_ _%tail200582%_))))))
                (if (pair? _%$%rest200558200569%_)
                    (let ((_%$%tl200567200603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest200558200569%_)))
                          (_%$%hd200566200601%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest200558200569%_))))
                      (let ((_%hd200606%_ _%$%hd200566200601%_)
                            (_%rest200608%_ _%$%tl200567200603%_))
                        (_%$%K200565200598%_ _%rest200608%_ _%hd200606%_)))
                    (_%$%try-match200560200592%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym200547%_)
        (let ((_%$e200549%_ (not (gxc#gensym-reference? _%sym200547%_))))
          (if _%$e200549%_
              _%$e200549%_
              (memq _%sym200547%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym200543%_)
        (let ((_%str200545%_ (symbol->string _%sym200543%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str200545%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str200545%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id200514%_)
        (let ((_%$e200516%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id200514%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id200514%_))
                   '#f)))
          (if _%$e200516%_
              (let ((_%eid200521%_
                     (##structure-ref _%$e200516%_ '1 gx#binding::t '#f))
                    (_%ht200522%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid200521%_))
                    _%eid200521%_
                    (let ((_%$e200525%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht200522%_ _%eid200521%_))))
                      (if _%$e200525%_
                          _%$e200525%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e200516%_
                                 'gx#local-binding::t))
                              (let ((_%gid200529%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid200521%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht200522%_
                                   _%eid200521%_
                                   _%gid200529%_))
                                _%gid200529%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e200516%_
                                     'gx#module-binding::t))
                                  (let ((_%gid200538%_
                                         (let ((_%$e200532%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e200516%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e200532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e200532%_
                                                  '"#"
                                                  _%eid200521%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid200521%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht200522%_
                                       _%eid200521%_
                                       _%gid200538%_))
                                    _%gid200538%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id200514%_
                                   _%eid200521%_
                                   _%$e200516%_)))))))
              (if (let ((__tmp200849
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id200514%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp200849))
                  (let () (declare (not safe)) (gx#stx-e _%id200514%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id200514%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id200512%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id200512%_))
            (gxc#generate-runtime-binding-id _%id200512%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top200499%_)
        (if _%top200499%_
            (let ((_%ns200501%_
                   (##structure-ref
                    (let ((__tmp200850
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp200850))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi200502%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns200501%_
                  (if (fxpositive? _%phi200502%_)
                      (let ((__tmp200852 (number->string _%phi200502%_))
                            (__tmp200851
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns200501%_
                         '"["
                         __tmp200852
                         '"]#_"
                         __tmp200851
                         '"_"))
                      (let ((__tmp200853
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns200501%_ '"#_" __tmp200853 '"_")))
                  (if (fxpositive? _%phi200502%_)
                      (let ((__tmp200855 (number->string _%phi200502%_))
                            (__tmp200854
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp200855
                         '"]#_"
                         __tmp200854
                         '"_"))
                      (let ((__tmp200856
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp200856 '"_")))))
            (let ((__tmp200857 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp200857 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top200508%_ '#f))
          (gxc#generate-runtime-temporary__% _%top200508%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g200858_
        (let ((_g200859_ (let () (declare (not safe)) (##length _g200858_))))
          (cond ((let () (declare (not safe)) (##fx= _g200859_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g200858_))
                ((let () (declare (not safe)) (##fx= _g200859_ 1))
                 (apply gxc#generate-runtime-temporary__% _g200858_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g200858_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym200477%_ _%quote?200478%_)
        (let* ((_%ht200480%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e200482%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht200480%_ _%sym200477%_))))
          (if _%$e200482%_
              _%$e200482%_
              (let ((_%g200486%_
                     (if _%quote?200478%_
                         (let ((__tmp200860
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym200477%_
                            '"__"
                            __tmp200860))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym200477%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht200480%_ _%sym200477%_ _%g200486%_))
                _%g200486%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym200491%_)
        (let ((_%quote?200493%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym200491%_
           _%quote?200493%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g200861_
        (let ((_g200862_ (let () (declare (not safe)) (##length _g200861_))))
          (cond ((let () (declare (not safe)) (##fx= _g200862_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g200861_))
                ((let () (declare (not safe)) (##fx= _g200862_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g200861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g200861_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id200474%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id200474%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key200429%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key200429%_))
            _%key200429%_
            (if (uninterned-symbol? _%key200429%_)
                (gxc#generate-runtime-gensym-reference__0 _%key200429%_)
                (let* ((_%$%key200433200440%_ _%key200429%_)
                       (_%$%E200435200444%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key200433200440%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K200436200462%_
                        (lambda (_%mark200447%_ _%eid200448%_)
                          (let ((_%$e200450%_
                                 (##structure-ref
                                  _%mark200447%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e200450%_
                                (let ((_%$e200455%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e200450%_
                                          _%eid200448%_))))
                                  (if _%$e200455%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e200455%_))
                                          _%$e200455%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e200455%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid200448%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid200448%_))))))
                  (if (pair? _%$%key200433200440%_)
                      (let ((_%$%hd200437200465%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key200433200440%_)))
                            (_%$%tl200438200467%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key200433200440%_))))
                        (let* ((_%eid200470%_ _%$%hd200437200465%_)
                               (_%mark200472%_ _%$%tl200438200467%_))
                          (_%$%K200436200462%_ _%mark200472%_ _%eid200470%_)))
                      (_%$%E200435200444%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1200422%_ _%id2200423%_)
        (letrec ((_%symbol-e200425%_
                  (lambda (_%id200427%_)
                    (if (symbol? _%id200427%_)
                        _%id200427%_
                        (gxc#generate-runtime-binding-id _%id200427%_)))))
          (eq? (_%symbol-e200425%_ _%id1200422%_)
               (_%symbol-e200425%_ _%id2200423%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx200420%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx200420%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx200420%_)
            (let () (declare (not safe)) (gx#stx-e _%stx200420%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id200342%_)
        (let* ((_%bind200344%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id200342%_)))
               (_%runtime-props200373%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind200344%_
                       'gx#runtime-binding::t))
                    (let* ((_%props200353%_
                            (let ((_%$e200347%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind200344%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e200347%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e200347%_)
                                              '()))
                                  '())))
                           (_%props200369%_
                            (let ((_%$e200355%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind200344%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e200355%_
                                  (let ((_%$e200360%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e200355%_
                                            ':repr))))
                                    (if _%$e200360%_
                                        (let ((_%repr200365%_
                                               (_%$e200360%_ _%$e200355%_)))
                                          (cons 'type:
                                                (cons _%repr200365%_
                                                      _%props200353%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id200342%_
                                         _%$e200355%_)))
                                  _%props200353%_))))
                      _%props200369%_)
                    '()))
               (_%$e200376%_
                (##structure-ref _%bind200344%_ '4 gx#binding::t '#f)))
          (if _%$e200376%_
              (let ((__tmp200863
                     (lambda (_%prop200381%_ _%props200382%_)
                       (let* ((_%$%prop200383200390%_ _%prop200381%_)
                              (_%$%E200385200393%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop200383200390%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K200386200407%_
                               (lambda (_%value200396%_ _%key200397%_)
                                 (let ((_%$e200399%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value200396%_
                                           ':repr))))
                                   (if _%$e200399%_
                                       (let ((_%repr200404%_
                                              (_%$e200399%_ _%value200396%_)))
                                         (cons _%key200397%_
                                               (cons _%repr200404%_
                                                     _%props200382%_)))
                                       (cons _%key200397%_
                                             (cons (cons 'quote
                                                         (cons _%value200396%_
                                                               '()))
                                                   _%props200382%_)))))))
                         (if (pair? _%$%prop200383200390%_)
                             (let ((_%$%hd200387200410%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop200383200390%_)))
                                   (_%$%tl200388200412%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop200383200390%_))))
                               (let* ((_%key200415%_ _%$%hd200387200410%_)
                                      (_%value200417%_ _%$%tl200388200412%_))
                                 (_%$%K200386200407%_
                                  _%value200417%_
                                  _%key200415%_)))
                             (_%$%E200385200393%_))))))
                (declare (not safe))
                (foldl__0 __tmp200863 _%runtime-props200373%_ _%$e200376%_))
              _%runtime-props200373%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk200327%_ _%name200328%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job200330%_
               (gxc#make-compile-job _%thunk200327%_ _%name200328%_)))
          (set! gxc#__compile-jobs (cons _%job200330%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk200335%_)
        (let ((_%name200337%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk200335%_ _%name200337%_))))
    (define gxc#add-compile-job!
      (lambda _g200864_
        (let ((_g200865_ (let () (declare (not safe)) (##length _g200864_))))
          (cond ((let () (declare (not safe)) (##fx= _g200865_ 1))
                 (apply gxc#add-compile-job!__0 _g200864_))
                ((let () (declare (not safe)) (##fx= _g200865_ 2))
                 (apply gxc#add-compile-job!__% _g200864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g200864_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result200324%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result200324%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop200318%_ ()
          (let ((_%pending200321%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending200321%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending200321%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending200321%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk200307%_ _%name200308%_)
        (make-thread
         (lambda ()
           (let _%loop200311%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp200866
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name200308%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp200866))
                   (let ((__tmp200868 (lambda () (_%thunk200307%_)))
                         (__tmp200867
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp200868 __tmp200867)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop200311%_)))))
         _%name200308%_)))
    (define gxc#join!
      (lambda (_%thread200302%_)
        (let ((__tmp200870
               (lambda (_%exn200304%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn200304%_))
                     (let ((__tmp200871
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn200304%_))))
                       (declare (not safe))
                       (raise __tmp200871))
                     (let () (declare (not safe)) (raise _%exn200304%_)))))
              (__tmp200869 (lambda () (thread-join! _%thread200302%_))))
          (declare (not safe))
          (__with-catch __tmp200870 __tmp200869))))))
