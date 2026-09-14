(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1789371531)
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
       (let ((_%$%verbosity202812202814%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity202812202814%_
             (let* ((_%verbosity202816%_ _%$%verbosity202812202814%_)
                    (_%$e202818%_ (string->number _%verbosity202816%_)))
               (if _%$e202818%_ _%$e202818%_ _%verbosity202816%_))
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
        (letrec ((_%hash-e202809%_
                  (lambda (_%id202811%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id202811%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e202809%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp202873 (list)) (__tmp202872 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp202873
         '(gensyms bindings)
         __tmp202872
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args202805%_
        (apply make-instance gxc#symbol-table::t _%$args202805%_)))
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
      (lambda (_%self202792%_)
        (let ((_%self202795%_ _%self202792%_))
          (if (let ((__tmp202874
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202795%_))))
                (declare (not safe))
                (##fx< '2 __tmp202874))
              (begin
                (let ((__tmp202875
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202795%_
                   __tmp202875
                   '1
                   '#f
                   '#f))
                (let ((__tmp202876
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202795%_
                   __tmp202876
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp202877
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202795%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self202795%_
                       '2
                       __tmp202877))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message202661%_ _%stx202662%_ . _%details202663%_)
        (let ((_%ctx202668%_
               (let ((_%$e202665%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e202665%_ _%$e202665%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx202668%_
                 _%message202661%_
                 _%stx202662%_
                 _%details202663%_))))
    (define gxc#verbose
      (lambda _%args202658%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp202878
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args202658%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp202878))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id202640%_)
        (let* ((_%str202642%_
                (if (symbol? _%id202640%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id202640%_))
                    _%id202640%_))
               (_%len202644%_ (string-length _%str202642%_))
               (_%res202646%_
                (let () (declare (not safe)) (##make-string _%len202644%_))))
          (let _%lp202649%_ ((_%i202651%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i202651%_ _%len202644%_))
                (let* ((_%char202653%_ (string-ref _%str202642%_ _%i202651%_))
                       (_%xchar202655%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char202653%_))
                            '#\_
                            _%char202653%_)))
                  (string-set! _%res202646%_ _%i202651%_ _%xchar202655%_)
                  (_%lp202649%_
                   (let () (declare (not safe)) (##fx+ _%i202651%_ '1))))
                _%res202646%_)))))
    (define gxc#map*
      (lambda (_%proc202582%_ _%maybe-improper-list202583%_)
        (let _%recur202585%_ ((_%rest202587%_ _%maybe-improper-list202583%_))
          (let* ((_%$%rest202588202599%_ _%rest202587%_)
                 (_%$%E202592202603%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest202588202599%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K202595202628%_
                   (lambda (_%rest202625%_ _%hd202626%_)
                     (cons (_%proc202582%_ _%hd202626%_)
                           (_%recur202585%_ _%rest202625%_))))
                  (_%$%K202594202619%_ (lambda () '()))
                  (_%$%K202593202609%_
                   (lambda (_%tail202607%_) (_%proc202582%_ _%tail202607%_))))
              (let ((_%$%try-match202590202622%_
                     (lambda ()
                       (if (null? _%$%rest202588202599%_)
                           (_%$%K202594202619%_)
                           (let ((_%tail202612%_ _%$%rest202588202599%_))
                             (declare (not safe))
                             (_%proc202582%_ _%tail202612%_))))))
                (if (pair? _%$%rest202588202599%_)
                    (let ((_%$%tl202597202633%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest202588202599%_)))
                          (_%$%hd202596202631%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest202588202599%_))))
                      (let ((_%hd202636%_ _%$%hd202596202631%_)
                            (_%rest202638%_ _%$%tl202597202633%_))
                        (_%$%K202595202628%_ _%rest202638%_ _%hd202636%_)))
                    (_%$%try-match202590202622%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym202577%_)
        (let ((_%$e202579%_ (not (gxc#gensym-reference? _%sym202577%_))))
          (if _%$e202579%_
              _%$e202579%_
              (memq _%sym202577%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym202573%_)
        (let ((_%str202575%_ (symbol->string _%sym202573%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str202575%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str202575%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id202544%_)
        (let ((_%$e202546%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id202544%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id202544%_))
                   '#f)))
          (if _%$e202546%_
              (let ((_%eid202551%_
                     (##structure-ref _%$e202546%_ '1 gx#binding::t '#f))
                    (_%ht202552%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid202551%_))
                    _%eid202551%_
                    (let ((_%$e202555%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht202552%_ _%eid202551%_))))
                      (if _%$e202555%_
                          _%$e202555%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e202546%_
                                 'gx#local-binding::t))
                              (let ((_%gid202559%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid202551%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht202552%_
                                   _%eid202551%_
                                   _%gid202559%_))
                                _%gid202559%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e202546%_
                                     'gx#module-binding::t))
                                  (let ((_%gid202568%_
                                         (let ((_%$e202562%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e202546%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e202562%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e202562%_
                                                  '"#"
                                                  _%eid202551%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid202551%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht202552%_
                                       _%eid202551%_
                                       _%gid202568%_))
                                    _%gid202568%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id202544%_
                                   _%eid202551%_
                                   _%$e202546%_)))))))
              (if (let ((__tmp202879
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id202544%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp202879))
                  (let () (declare (not safe)) (gx#stx-e _%id202544%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id202544%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id202542%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id202542%_))
            (gxc#generate-runtime-binding-id _%id202542%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top202529%_)
        (if _%top202529%_
            (let ((_%ns202531%_
                   (##structure-ref
                    (let ((__tmp202880
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp202880))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi202532%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns202531%_
                  (if (fxpositive? _%phi202532%_)
                      (let ((__tmp202882 (number->string _%phi202532%_))
                            (__tmp202881
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns202531%_
                         '"["
                         __tmp202882
                         '"]#_"
                         __tmp202881
                         '"_"))
                      (let ((__tmp202883
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns202531%_ '"#_" __tmp202883 '"_")))
                  (if (fxpositive? _%phi202532%_)
                      (let ((__tmp202885 (number->string _%phi202532%_))
                            (__tmp202884
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp202885
                         '"]#_"
                         __tmp202884
                         '"_"))
                      (let ((__tmp202886
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp202886 '"_")))))
            (let ((__tmp202887 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp202887 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top202538%_ '#f))
          (gxc#generate-runtime-temporary__% _%top202538%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g202888_
        (let ((_g202889_ (let () (declare (not safe)) (##length _g202888_))))
          (cond ((let () (declare (not safe)) (##fx= _g202889_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g202888_))
                ((let () (declare (not safe)) (##fx= _g202889_ 1))
                 (apply gxc#generate-runtime-temporary__% _g202888_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g202888_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym202507%_ _%quote?202508%_)
        (let* ((_%ht202510%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e202512%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht202510%_ _%sym202507%_))))
          (if _%$e202512%_
              _%$e202512%_
              (let ((_%g202516%_
                     (if _%quote?202508%_
                         (let ((__tmp202890
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym202507%_
                            '"__"
                            __tmp202890))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym202507%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht202510%_ _%sym202507%_ _%g202516%_))
                _%g202516%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym202521%_)
        (let ((_%quote?202523%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym202521%_
           _%quote?202523%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g202891_
        (let ((_g202892_ (let () (declare (not safe)) (##length _g202891_))))
          (cond ((let () (declare (not safe)) (##fx= _g202892_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g202891_))
                ((let () (declare (not safe)) (##fx= _g202892_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g202891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g202891_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id202504%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id202504%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key202459%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key202459%_))
            _%key202459%_
            (if (uninterned-symbol? _%key202459%_)
                (gxc#generate-runtime-gensym-reference__0 _%key202459%_)
                (let* ((_%$%key202463202470%_ _%key202459%_)
                       (_%$%E202465202474%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key202463202470%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K202466202492%_
                        (lambda (_%mark202477%_ _%eid202478%_)
                          (let ((_%$e202480%_
                                 (##structure-ref
                                  _%mark202477%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e202480%_
                                (let ((_%$e202485%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e202480%_
                                          _%eid202478%_))))
                                  (if _%$e202485%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e202485%_))
                                          _%$e202485%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e202485%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid202478%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid202478%_))))))
                  (if (pair? _%$%key202463202470%_)
                      (let ((_%$%hd202467202495%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key202463202470%_)))
                            (_%$%tl202468202497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key202463202470%_))))
                        (let* ((_%eid202500%_ _%$%hd202467202495%_)
                               (_%mark202502%_ _%$%tl202468202497%_))
                          (_%$%K202466202492%_ _%mark202502%_ _%eid202500%_)))
                      (_%$%E202465202474%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1202452%_ _%id2202453%_)
        (letrec ((_%symbol-e202455%_
                  (lambda (_%id202457%_)
                    (if (symbol? _%id202457%_)
                        _%id202457%_
                        (gxc#generate-runtime-binding-id _%id202457%_)))))
          (eq? (_%symbol-e202455%_ _%id1202452%_)
               (_%symbol-e202455%_ _%id2202453%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx202450%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx202450%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx202450%_)
            (let () (declare (not safe)) (gx#stx-e _%stx202450%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id202372%_)
        (let* ((_%bind202374%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id202372%_)))
               (_%runtime-props202403%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind202374%_
                       'gx#runtime-binding::t))
                    (let* ((_%props202383%_
                            (let ((_%$e202377%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind202374%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e202377%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e202377%_)
                                              '()))
                                  '())))
                           (_%props202399%_
                            (let ((_%$e202385%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind202374%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e202385%_
                                  (let ((_%$e202390%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e202385%_
                                            ':repr))))
                                    (if _%$e202390%_
                                        (let ((_%repr202395%_
                                               (_%$e202390%_ _%$e202385%_)))
                                          (cons 'type:
                                                (cons _%repr202395%_
                                                      _%props202383%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id202372%_
                                         _%$e202385%_)))
                                  _%props202383%_))))
                      _%props202399%_)
                    '()))
               (_%$e202406%_
                (##structure-ref _%bind202374%_ '4 gx#binding::t '#f)))
          (if _%$e202406%_
              (let ((__tmp202893
                     (lambda (_%prop202411%_ _%props202412%_)
                       (let* ((_%$%prop202413202420%_ _%prop202411%_)
                              (_%$%E202415202423%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop202413202420%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K202416202437%_
                               (lambda (_%value202426%_ _%key202427%_)
                                 (let ((_%$e202429%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value202426%_
                                           ':repr))))
                                   (if _%$e202429%_
                                       (let ((_%repr202434%_
                                              (_%$e202429%_ _%value202426%_)))
                                         (cons _%key202427%_
                                               (cons _%repr202434%_
                                                     _%props202412%_)))
                                       (cons _%key202427%_
                                             (cons (cons 'quote
                                                         (cons _%value202426%_
                                                               '()))
                                                   _%props202412%_)))))))
                         (if (pair? _%$%prop202413202420%_)
                             (let ((_%$%hd202417202440%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop202413202420%_)))
                                   (_%$%tl202418202442%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop202413202420%_))))
                               (let* ((_%key202445%_ _%$%hd202417202440%_)
                                      (_%value202447%_ _%$%tl202418202442%_))
                                 (_%$%K202416202437%_
                                  _%value202447%_
                                  _%key202445%_)))
                             (_%$%E202415202423%_))))))
                (declare (not safe))
                (foldl__0 __tmp202893 _%runtime-props202403%_ _%$e202406%_))
              _%runtime-props202403%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk202357%_ _%name202358%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job202360%_
               (gxc#make-compile-job _%thunk202357%_ _%name202358%_)))
          (set! gxc#__compile-jobs (cons _%job202360%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk202365%_)
        (let ((_%name202367%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk202365%_ _%name202367%_))))
    (define gxc#add-compile-job!
      (lambda _g202894_
        (let ((_g202895_ (let () (declare (not safe)) (##length _g202894_))))
          (cond ((let () (declare (not safe)) (##fx= _g202895_ 1))
                 (apply gxc#add-compile-job!__0 _g202894_))
                ((let () (declare (not safe)) (##fx= _g202895_ 2))
                 (apply gxc#add-compile-job!__% _g202894_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g202894_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result202354%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result202354%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop202348%_ ()
          (let ((_%pending202351%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending202351%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending202351%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending202351%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk202337%_ _%name202338%_)
        (make-thread
         (lambda ()
           (let _%loop202341%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp202896
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name202338%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp202896))
                   (let ((__tmp202898 (lambda () (_%thunk202337%_)))
                         (__tmp202897
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp202898 __tmp202897)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop202341%_)))))
         _%name202338%_)))
    (define gxc#join!
      (lambda (_%thread202332%_)
        (let ((__tmp202900
               (lambda (_%exn202334%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn202334%_))
                     (let ((__tmp202901
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn202334%_))))
                       (declare (not safe))
                       (raise __tmp202901))
                     (let () (declare (not safe)) (raise _%exn202334%_)))))
              (__tmp202899 (lambda () (thread-join! _%thread202332%_))))
          (declare (not safe))
          (__with-catch __tmp202900 __tmp202899))))))
