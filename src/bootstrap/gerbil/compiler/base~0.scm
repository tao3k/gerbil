(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1789839226)
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
       (let ((_%$%verbosity202974202976%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity202974202976%_
             (let* ((_%verbosity202978%_ _%$%verbosity202974202976%_)
                    (_%$e202980%_ (string->number _%verbosity202978%_)))
               (if _%$e202980%_ _%$e202980%_ _%verbosity202978%_))
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
        (letrec ((_%hash-e202971%_
                  (lambda (_%id202973%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id202973%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e202971%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp203035 (list)) (__tmp203034 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp203035
         '(gensyms bindings)
         __tmp203034
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args202967%_
        (apply make-instance gxc#symbol-table::t _%$args202967%_)))
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
      (lambda (_%self202954%_)
        (let ((_%self202957%_ _%self202954%_))
          (if (let ((__tmp203036
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202957%_))))
                (declare (not safe))
                (##fx< '2 __tmp203036))
              (begin
                (let ((__tmp203037
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202957%_
                   __tmp203037
                   '1
                   '#f
                   '#f))
                (let ((__tmp203038
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self202957%_
                   __tmp203038
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp203039
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self202957%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self202957%_
                       '2
                       __tmp203039))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message202823%_ _%stx202824%_ . _%details202825%_)
        (let ((_%ctx202830%_
               (let ((_%$e202827%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e202827%_ _%$e202827%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx202830%_
                 _%message202823%_
                 _%stx202824%_
                 _%details202825%_))))
    (define gxc#verbose
      (lambda _%args202820%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp203040
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args202820%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp203040))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id202802%_)
        (let* ((_%str202804%_
                (if (symbol? _%id202802%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id202802%_))
                    _%id202802%_))
               (_%len202806%_ (string-length _%str202804%_))
               (_%res202808%_
                (let () (declare (not safe)) (##make-string _%len202806%_))))
          (let _%lp202811%_ ((_%i202813%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i202813%_ _%len202806%_))
                (let* ((_%char202815%_ (string-ref _%str202804%_ _%i202813%_))
                       (_%xchar202817%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char202815%_))
                            '#\_
                            _%char202815%_)))
                  (string-set! _%res202808%_ _%i202813%_ _%xchar202817%_)
                  (_%lp202811%_
                   (let () (declare (not safe)) (##fx+ _%i202813%_ '1))))
                _%res202808%_)))))
    (define gxc#map*
      (lambda (_%proc202744%_ _%maybe-improper-list202745%_)
        (let _%recur202747%_ ((_%rest202749%_ _%maybe-improper-list202745%_))
          (let* ((_%$%rest202750202761%_ _%rest202749%_)
                 (_%$%E202754202765%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest202750202761%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K202757202790%_
                   (lambda (_%rest202787%_ _%hd202788%_)
                     (cons (_%proc202744%_ _%hd202788%_)
                           (_%recur202747%_ _%rest202787%_))))
                  (_%$%K202756202781%_ (lambda () '()))
                  (_%$%K202755202771%_
                   (lambda (_%tail202769%_) (_%proc202744%_ _%tail202769%_))))
              (let ((_%$%try-match202752202784%_
                     (lambda ()
                       (if (null? _%$%rest202750202761%_)
                           (_%$%K202756202781%_)
                           (let ((_%tail202774%_ _%$%rest202750202761%_))
                             (declare (not safe))
                             (_%proc202744%_ _%tail202774%_))))))
                (if (pair? _%$%rest202750202761%_)
                    (let ((_%$%tl202759202795%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest202750202761%_)))
                          (_%$%hd202758202793%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest202750202761%_))))
                      (let ((_%hd202798%_ _%$%hd202758202793%_)
                            (_%rest202800%_ _%$%tl202759202795%_))
                        (_%$%K202757202790%_ _%rest202800%_ _%hd202798%_)))
                    (_%$%try-match202752202784%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym202739%_)
        (let ((_%$e202741%_ (not (gxc#gensym-reference? _%sym202739%_))))
          (if _%$e202741%_
              _%$e202741%_
              (memq _%sym202739%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym202735%_)
        (let ((_%str202737%_ (symbol->string _%sym202735%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str202737%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str202737%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id202706%_)
        (let ((_%$e202708%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id202706%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id202706%_))
                   '#f)))
          (if _%$e202708%_
              (let ((_%eid202713%_
                     (##structure-ref _%$e202708%_ '1 gx#binding::t '#f))
                    (_%ht202714%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid202713%_))
                    _%eid202713%_
                    (let ((_%$e202717%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht202714%_ _%eid202713%_))))
                      (if _%$e202717%_
                          _%$e202717%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e202708%_
                                 'gx#local-binding::t))
                              (let ((_%gid202721%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid202713%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht202714%_
                                   _%eid202713%_
                                   _%gid202721%_))
                                _%gid202721%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e202708%_
                                     'gx#module-binding::t))
                                  (let ((_%gid202730%_
                                         (let ((_%$e202724%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e202708%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e202724%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e202724%_
                                                  '"#"
                                                  _%eid202713%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid202713%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht202714%_
                                       _%eid202713%_
                                       _%gid202730%_))
                                    _%gid202730%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id202706%_
                                   _%eid202713%_
                                   _%$e202708%_)))))))
              (if (let ((__tmp203041
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id202706%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp203041))
                  (let () (declare (not safe)) (gx#stx-e _%id202706%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id202706%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id202704%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id202704%_))
            (gxc#generate-runtime-binding-id _%id202704%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top202691%_)
        (if _%top202691%_
            (let ((_%ns202693%_
                   (##structure-ref
                    (let ((__tmp203042
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp203042))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi202694%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns202693%_
                  (if (fxpositive? _%phi202694%_)
                      (let ((__tmp203044 (number->string _%phi202694%_))
                            (__tmp203043
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns202693%_
                         '"["
                         __tmp203044
                         '"]#_"
                         __tmp203043
                         '"_"))
                      (let ((__tmp203045
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns202693%_ '"#_" __tmp203045 '"_")))
                  (if (fxpositive? _%phi202694%_)
                      (let ((__tmp203047 (number->string _%phi202694%_))
                            (__tmp203046
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp203047
                         '"]#_"
                         __tmp203046
                         '"_"))
                      (let ((__tmp203048
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp203048 '"_")))))
            (let ((__tmp203049 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp203049 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top202700%_ '#f))
          (gxc#generate-runtime-temporary__% _%top202700%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g203050_
        (let ((_g203051_ (let () (declare (not safe)) (##length _g203050_))))
          (cond ((let () (declare (not safe)) (##fx= _g203051_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g203050_))
                ((let () (declare (not safe)) (##fx= _g203051_ 1))
                 (apply gxc#generate-runtime-temporary__% _g203050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g203050_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym202669%_ _%quote?202670%_)
        (let* ((_%ht202672%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e202674%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht202672%_ _%sym202669%_))))
          (if _%$e202674%_
              _%$e202674%_
              (let ((_%g202678%_
                     (if _%quote?202670%_
                         (let ((__tmp203052
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym202669%_
                            '"__"
                            __tmp203052))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym202669%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht202672%_ _%sym202669%_ _%g202678%_))
                _%g202678%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym202683%_)
        (let ((_%quote?202685%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym202683%_
           _%quote?202685%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g203053_
        (let ((_g203054_ (let () (declare (not safe)) (##length _g203053_))))
          (cond ((let () (declare (not safe)) (##fx= _g203054_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g203053_))
                ((let () (declare (not safe)) (##fx= _g203054_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g203053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g203053_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id202666%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id202666%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key202621%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key202621%_))
            _%key202621%_
            (if (uninterned-symbol? _%key202621%_)
                (gxc#generate-runtime-gensym-reference__0 _%key202621%_)
                (let* ((_%$%key202625202632%_ _%key202621%_)
                       (_%$%E202627202636%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key202625202632%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K202628202654%_
                        (lambda (_%mark202639%_ _%eid202640%_)
                          (let ((_%$e202642%_
                                 (##structure-ref
                                  _%mark202639%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e202642%_
                                (let ((_%$e202647%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e202642%_
                                          _%eid202640%_))))
                                  (if _%$e202647%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e202647%_))
                                          _%$e202647%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e202647%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid202640%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid202640%_))))))
                  (if (pair? _%$%key202625202632%_)
                      (let ((_%$%hd202629202657%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key202625202632%_)))
                            (_%$%tl202630202659%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key202625202632%_))))
                        (let* ((_%eid202662%_ _%$%hd202629202657%_)
                               (_%mark202664%_ _%$%tl202630202659%_))
                          (_%$%K202628202654%_ _%mark202664%_ _%eid202662%_)))
                      (_%$%E202627202636%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1202614%_ _%id2202615%_)
        (letrec ((_%symbol-e202617%_
                  (lambda (_%id202619%_)
                    (if (symbol? _%id202619%_)
                        _%id202619%_
                        (gxc#generate-runtime-binding-id _%id202619%_)))))
          (eq? (_%symbol-e202617%_ _%id1202614%_)
               (_%symbol-e202617%_ _%id2202615%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx202612%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx202612%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx202612%_)
            (let () (declare (not safe)) (gx#stx-e _%stx202612%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id202534%_)
        (let* ((_%bind202536%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id202534%_)))
               (_%runtime-props202565%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind202536%_
                       'gx#runtime-binding::t))
                    (let* ((_%props202545%_
                            (let ((_%$e202539%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind202536%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e202539%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e202539%_)
                                              '()))
                                  '())))
                           (_%props202561%_
                            (let ((_%$e202547%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind202536%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e202547%_
                                  (let ((_%$e202552%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e202547%_
                                            ':repr))))
                                    (if _%$e202552%_
                                        (let ((_%repr202557%_
                                               (_%$e202552%_ _%$e202547%_)))
                                          (cons 'type:
                                                (cons _%repr202557%_
                                                      _%props202545%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id202534%_
                                         _%$e202547%_)))
                                  _%props202545%_))))
                      _%props202561%_)
                    '()))
               (_%$e202568%_
                (##structure-ref _%bind202536%_ '4 gx#binding::t '#f)))
          (if _%$e202568%_
              (let ((__tmp203055
                     (lambda (_%prop202573%_ _%props202574%_)
                       (let* ((_%$%prop202575202582%_ _%prop202573%_)
                              (_%$%E202577202585%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop202575202582%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K202578202599%_
                               (lambda (_%value202588%_ _%key202589%_)
                                 (let ((_%$e202591%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value202588%_
                                           ':repr))))
                                   (if _%$e202591%_
                                       (let ((_%repr202596%_
                                              (_%$e202591%_ _%value202588%_)))
                                         (cons _%key202589%_
                                               (cons _%repr202596%_
                                                     _%props202574%_)))
                                       (cons _%key202589%_
                                             (cons (cons 'quote
                                                         (cons _%value202588%_
                                                               '()))
                                                   _%props202574%_)))))))
                         (if (pair? _%$%prop202575202582%_)
                             (let ((_%$%hd202579202602%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop202575202582%_)))
                                   (_%$%tl202580202604%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop202575202582%_))))
                               (let* ((_%key202607%_ _%$%hd202579202602%_)
                                      (_%value202609%_ _%$%tl202580202604%_))
                                 (_%$%K202578202599%_
                                  _%value202609%_
                                  _%key202607%_)))
                             (_%$%E202577202585%_))))))
                (declare (not safe))
                (foldl__0 __tmp203055 _%runtime-props202565%_ _%$e202568%_))
              _%runtime-props202565%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk202519%_ _%name202520%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job202522%_
               (gxc#make-compile-job _%thunk202519%_ _%name202520%_)))
          (set! gxc#__compile-jobs (cons _%job202522%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk202527%_)
        (let ((_%name202529%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk202527%_ _%name202529%_))))
    (define gxc#add-compile-job!
      (lambda _g203056_
        (let ((_g203057_ (let () (declare (not safe)) (##length _g203056_))))
          (cond ((let () (declare (not safe)) (##fx= _g203057_ 1))
                 (apply gxc#add-compile-job!__0 _g203056_))
                ((let () (declare (not safe)) (##fx= _g203057_ 2))
                 (apply gxc#add-compile-job!__% _g203056_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g203056_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result202516%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result202516%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop202510%_ ()
          (let ((_%pending202513%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending202513%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending202513%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending202513%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk202499%_ _%name202500%_)
        (make-thread
         (lambda ()
           (let _%loop202503%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp203058
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name202500%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp203058))
                   (let ((__tmp203060 (lambda () (_%thunk202499%_)))
                         (__tmp203059
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp203060 __tmp203059)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop202503%_)))))
         _%name202500%_)))
    (define gxc#join!
      (lambda (_%thread202494%_)
        (let ((__tmp203062
               (lambda (_%exn202496%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn202496%_))
                     (let ((__tmp203063
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn202496%_))))
                       (declare (not safe))
                       (raise __tmp203063))
                     (let () (declare (not safe)) (raise _%exn202496%_)))))
              (__tmp203061 (lambda () (thread-join! _%thread202494%_))))
          (declare (not safe))
          (__with-catch __tmp203062 __tmp203061))))))
