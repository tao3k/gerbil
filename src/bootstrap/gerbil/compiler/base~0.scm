(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/base::timestamp 1784758125)
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
       (let ((_%$%verbosity200799200801%_
              (let ()
                (declare (not safe))
                (##getenv '"GERBIL_BUILD_VERBOSE" '#f))))
         (if _%$%verbosity200799200801%_
             (let* ((_%verbosity200803%_ _%$%verbosity200799200801%_)
                    (_%$e200805%_ (string->number _%verbosity200803%_)))
               (if _%$e200805%_ _%$e200805%_ _%verbosity200803%_))
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
        (letrec ((_%hash-e200796%_
                  (lambda (_%id200798%_)
                    (symbol-hash
                     (let () (declare (not safe)) (gx#stx-e _%id200798%_))))))
          (let ()
            (declare (not safe))
            (make-hash-table__%
             '#f
             absent-value
             absent-value
             gx#bound-identifier=?
             _%hash-e200796%_
             absent-value
             absent-value
             absent-value
             absent-value)))))
    (define gxc#current-compile-local-env (make-parameter '()))
    (define gxc#symbol-table::t
      (let ((__tmp200860 (list)) (__tmp200859 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#symbol-table::t
         'symbol-table
         __tmp200860
         '(gensyms bindings)
         __tmp200859
         ':init!)))
    (define gxc#symbol-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#symbol-table::t)))
    (define gxc#make-symbol-table
      (lambda _%$args200792%_
        (apply make-instance gxc#symbol-table::t _%$args200792%_)))
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
      (lambda (_%self200779%_)
        (let ((_%self200782%_ _%self200779%_))
          (if (let ((__tmp200861
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200782%_))))
                (declare (not safe))
                (##fx< '2 __tmp200861))
              (begin
                (let ((__tmp200862
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200782%_
                   __tmp200862
                   '1
                   '#f
                   '#f))
                (let ((__tmp200863
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self200782%_
                   __tmp200863
                   '2
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp200864
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self200782%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self200782%_
                       '2
                       __tmp200864))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#symbol-table::t
       ':init!
       gxc#symbol-table:::init!
       '#f))
    (define gxc#raise-compile-error
      (lambda (_%message200648%_ _%stx200649%_ . _%details200650%_)
        (let ((_%ctx200655%_
               (let ((_%$e200652%_
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-context))))
                 (if _%$e200652%_ _%$e200652%_ '(compile)))))
          (apply gx#raise-syntax-error
                 _%ctx200655%_
                 _%message200648%_
                 _%stx200649%_
                 _%details200650%_))))
    (define gxc#verbose
      (lambda _%args200645%_
        (if (let () (declare (not safe)) (gxc#current-compile-verbose))
            (let ((__tmp200865
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (##apply displayln _%args200645%_)))))
              (declare (not safe))
              (__with-lock gxc#__verbose-mutex __tmp200865))
            '#!void)))
    (define gxc#__verbose-mutex (make-mutex 'compiler/driver))
    (define gxc#module-path-reserved-chars '":#<>&!?*;()[]{}|'`\"\\")
    (define gxc#module-id->path-string
      (lambda (_%id200627%_)
        (let* ((_%str200629%_
                (if (symbol? _%id200627%_)
                    (let ()
                      (declare (not safe))
                      (##symbol->string _%id200627%_))
                    _%id200627%_))
               (_%len200631%_ (string-length _%str200629%_))
               (_%res200633%_
                (let () (declare (not safe)) (##make-string _%len200631%_))))
          (let _%lp200636%_ ((_%i200638%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i200638%_ _%len200631%_))
                (let* ((_%char200640%_ (string-ref _%str200629%_ _%i200638%_))
                       (_%xchar200642%_
                        (if (let ()
                              (declare (not safe))
                              (string-index__0
                               gxc#module-path-reserved-chars
                               _%char200640%_))
                            '#\_
                            _%char200640%_)))
                  (string-set! _%res200633%_ _%i200638%_ _%xchar200642%_)
                  (_%lp200636%_
                   (let () (declare (not safe)) (##fx+ _%i200638%_ '1))))
                _%res200633%_)))))
    (define gxc#map*
      (lambda (_%proc200569%_ _%maybe-improper-list200570%_)
        (let _%recur200572%_ ((_%rest200574%_ _%maybe-improper-list200570%_))
          (let* ((_%$%rest200575200586%_ _%rest200574%_)
                 (_%$%E200579200590%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (error '"No clause matching"
                             _%$%rest200575200586%_
                             '([hd . rest])
                             '([])
                             '(tail)))
                    '#!void)))
            (let ((_%$%K200582200615%_
                   (lambda (_%rest200612%_ _%hd200613%_)
                     (cons (_%proc200569%_ _%hd200613%_)
                           (_%recur200572%_ _%rest200612%_))))
                  (_%$%K200581200606%_ (lambda () '()))
                  (_%$%K200580200596%_
                   (lambda (_%tail200594%_) (_%proc200569%_ _%tail200594%_))))
              (let ((_%$%try-match200577200609%_
                     (lambda ()
                       (if (null? _%$%rest200575200586%_)
                           (_%$%K200581200606%_)
                           (let ((_%tail200599%_ _%$%rest200575200586%_))
                             (declare (not safe))
                             (_%proc200569%_ _%tail200599%_))))))
                (if (pair? _%$%rest200575200586%_)
                    (let ((_%$%tl200584200620%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest200575200586%_)))
                          (_%$%hd200583200618%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest200575200586%_))))
                      (let ((_%hd200623%_ _%$%hd200583200618%_)
                            (_%rest200625%_ _%$%tl200584200620%_))
                        (_%$%K200582200615%_ _%rest200625%_ _%hd200623%_)))
                    (_%$%try-match200577200609%_))))))))
    (define gxc#symbol-in-local-scope?
      (lambda (_%sym200564%_)
        (let ((_%$e200566%_ (not (gxc#gensym-reference? _%sym200564%_))))
          (if _%$e200566%_
              _%$e200566%_
              (memq _%sym200564%_
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-local-env)))))))
    (define gxc#gensym-reference?
      (lambda (_%sym200560%_)
        (let ((_%str200562%_ (symbol->string _%sym200560%_)))
          (if (let ()
                (declare (not safe))
                (##string-prefix? '"_%" _%str200562%_))
              (let ()
                (declare (not safe))
                (##string-suffix? '"%_" _%str200562%_))
              '#f))))
    (define gxc#generate-runtime-binding-id
      (lambda (_%id200531%_)
        (let ((_%$e200533%_
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      _%id200531%_
                      'gx#syntax-quote::t))
                   (let ()
                     (declare (not safe))
                     (gx#resolve-identifier__0 _%id200531%_))
                   '#f)))
          (if _%$e200533%_
              (let ((_%eid200538%_
                     (##structure-ref _%$e200533%_ '1 gx#binding::t '#f))
                    (_%ht200539%_
                     (##structure-ref
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-symbol-table))
                      '2
                      gxc#symbol-table::t
                      '#f)))
                (if (let ()
                      (declare (not safe))
                      (interned-symbol? _%eid200538%_))
                    _%eid200538%_
                    (let ((_%$e200542%_
                           (let ()
                             (declare (not safe))
                             (hash-get _%ht200539%_ _%eid200538%_))))
                      (if _%$e200542%_
                          _%$e200542%_
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%$e200533%_
                                 'gx#local-binding::t))
                              (let ((_%gid200546%_
                                     (gxc#generate-runtime-gensym-reference__0
                                      _%eid200538%_)))
                                (let ()
                                  (declare (not safe))
                                  (hash-put!
                                   _%ht200539%_
                                   _%eid200538%_
                                   _%gid200546%_))
                                _%gid200546%_)
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-instance-of?
                                     _%$e200533%_
                                     'gx#module-binding::t))
                                  (let ((_%gid200555%_
                                         (let ((_%$e200549%_
                                                (##structure-ref
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%$e200533%_
                                                    '7
                                                    '#f
                                                    '#f))
                                                 '6
                                                 gx#module-context::t
                                                 '#f)))
                                           (if _%$e200549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  _%$e200549%_
                                                  '"#"
                                                  _%eid200538%_))
                                               (gxc#generate-runtime-gensym-reference__0
                                                _%eid200538%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (hash-put!
                                       _%ht200539%_
                                       _%eid200538%_
                                       _%gid200555%_))
                                    _%gid200555%_)
                                  (gxc#raise-compile-error
                                   '"Cannot compile reference to uninterned binding"
                                   _%id200531%_
                                   _%eid200538%_
                                   _%$e200533%_)))))))
              (if (let ((__tmp200866
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%id200531%_))))
                    (declare (not safe))
                    (interned-symbol? __tmp200866))
                  (let () (declare (not safe)) (gx#stx-e _%id200531%_))
                  (gxc#raise-compile-error
                   '"Cannot compile reference to uninterned identifier"
                   _%id200531%_))))))
    (define gxc#generate-runtime-binding-id*
      (lambda (_%id200529%_)
        (if (let () (declare (not safe)) (gx#identifier? _%id200529%_))
            (gxc#generate-runtime-binding-id _%id200529%_)
            (gxc#generate-runtime-temporary__0))))
    (define gxc#generate-runtime-temporary__%
      (lambda (_%top200516%_)
        (if _%top200516%_
            (let ((_%ns200518%_
                   (##structure-ref
                    (let ((__tmp200867
                           (let ()
                             (declare (not safe))
                             (gx#current-expander-context))))
                      (declare (not safe))
                      (gx#core-context-top__1 __tmp200867))
                    '6
                    gx#module-context::t
                    '#f))
                  (_%phi200519%_
                   (let () (declare (not safe)) (gx#current-expander-phi))))
              (if _%ns200518%_
                  (if (fxpositive? _%phi200519%_)
                      (let ((__tmp200869 (number->string _%phi200519%_))
                            (__tmp200868
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         _%ns200518%_
                         '"["
                         __tmp200869
                         '"]#_"
                         __tmp200868
                         '"_"))
                      (let ((__tmp200870
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 _%ns200518%_ '"#_" __tmp200870 '"_")))
                  (if (fxpositive? _%phi200519%_)
                      (let ((__tmp200872 (number->string _%phi200519%_))
                            (__tmp200871
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1
                         '"["
                         __tmp200872
                         '"]#_"
                         __tmp200871
                         '"_"))
                      (let ((__tmp200873
                             (let () (declare (not safe)) (##gensym))))
                        (declare (not safe))
                        (make-symbol__1 '"_" __tmp200873 '"_")))))
            (let ((__tmp200874 (let () (declare (not safe)) (##gensym))))
              (declare (not safe))
              (make-symbol__1 '"_" __tmp200874 '"_")))))
    (define gxc#generate-runtime-temporary__0
      (lambda ()
        (let ((_%top200525%_ '#f))
          (gxc#generate-runtime-temporary__% _%top200525%_))))
    (define gxc#generate-runtime-temporary
      (lambda _g200875_
        (let ((_g200876_ (let () (declare (not safe)) (##length _g200875_))))
          (cond ((let () (declare (not safe)) (##fx= _g200876_ 0))
                 (apply gxc#generate-runtime-temporary__0 _g200875_))
                ((let () (declare (not safe)) (##fx= _g200876_ 1))
                 (apply gxc#generate-runtime-temporary__% _g200875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-temporary
                  _g200875_))))))
    (define gxc#generate-runtime-gensym-reference__%
      (lambda (_%sym200494%_ _%quote?200495%_)
        (let* ((_%ht200497%_
                (##structure-ref
                 (let ()
                   (declare (not safe))
                   (gxc#current-compile-symbol-table))
                 '1
                 gxc#symbol-table::t
                 '#f))
               (_%$e200499%_
                (let ()
                  (declare (not safe))
                  (hash-get _%ht200497%_ _%sym200494%_))))
          (if _%$e200499%_
              _%$e200499%_
              (let ((_%g200503%_
                     (if _%quote?200495%_
                         (let ((__tmp200877
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-timestamp))))
                           (declare (not safe))
                           (make-symbol__1
                            '"__"
                            _%sym200494%_
                            '"__"
                            __tmp200877))
                         (let ()
                           (declare (not safe))
                           (make-symbol__1 '"_%" _%sym200494%_ '"%_")))))
                (let ()
                  (declare (not safe))
                  (hash-put! _%ht200497%_ _%sym200494%_ _%g200503%_))
                _%g200503%_)))))
    (define gxc#generate-runtime-gensym-reference__0
      (lambda (_%sym200508%_)
        (let ((_%quote?200510%_ '#f))
          (gxc#generate-runtime-gensym-reference__%
           _%sym200508%_
           _%quote?200510%_))))
    (define gxc#generate-runtime-gensym-reference
      (lambda _g200878_
        (let ((_g200879_ (let () (declare (not safe)) (##length _g200878_))))
          (cond ((let () (declare (not safe)) (##fx= _g200879_ 1))
                 (apply gxc#generate-runtime-gensym-reference__0 _g200878_))
                ((let () (declare (not safe)) (##fx= _g200879_ 2))
                 (apply gxc#generate-runtime-gensym-reference__% _g200878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#generate-runtime-gensym-reference
                  _g200878_))))))
    (define gxc#generate-runtime-identifier
      (lambda (_%id200491%_)
        (gxc#generate-runtime-identifier-key
         (let () (declare (not safe)) (gx#core-identifier-key _%id200491%_)))))
    (define gxc#generate-runtime-identifier-key
      (lambda (_%key200446%_)
        (if (let () (declare (not safe)) (interned-symbol? _%key200446%_))
            _%key200446%_
            (if (uninterned-symbol? _%key200446%_)
                (gxc#generate-runtime-gensym-reference__0 _%key200446%_)
                (let* ((_%$%key200450200457%_ _%key200446%_)
                       (_%$%E200452200461%_
                        (lambda ()
                          (let ()
                            (declare (not safe))
                            (error '"No clause matching"
                                   _%$%key200450200457%_
                                   '([eid . mark])))
                          '#!void))
                       (_%$%K200453200479%_
                        (lambda (_%mark200464%_ _%eid200465%_)
                          (let ((_%$e200467%_
                                 (##structure-ref
                                  _%mark200464%_
                                  '1
                                  gx#expander-mark::t
                                  '#f)))
                            (if _%$e200467%_
                                (let ((_%$e200472%_
                                       (let ()
                                         (declare (not safe))
                                         (hash-get
                                          _%$e200467%_
                                          _%eid200465%_))))
                                  (if _%$e200472%_
                                      (if (let ()
                                            (declare (not safe))
                                            (interned-symbol? _%$e200472%_))
                                          _%$e200472%_
                                          (gxc#generate-runtime-gensym-reference__0
                                           _%$e200472%_))
                                      (gxc#generate-runtime-identifier-key
                                       _%eid200465%_)))
                                (gxc#generate-runtime-identifier-key
                                 _%eid200465%_))))))
                  (if (pair? _%$%key200450200457%_)
                      (let ((_%$%hd200454200482%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%key200450200457%_)))
                            (_%$%tl200455200484%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%key200450200457%_))))
                        (let* ((_%eid200487%_ _%$%hd200454200482%_)
                               (_%mark200489%_ _%$%tl200455200484%_))
                          (_%$%K200453200479%_ _%mark200489%_ _%eid200487%_)))
                      (_%$%E200452200461%_)))))))
    (define gxc#runtime-identifier=?
      (lambda (_%id1200439%_ _%id2200440%_)
        (letrec ((_%symbol-e200442%_
                  (lambda (_%id200444%_)
                    (if (symbol? _%id200444%_)
                        _%id200444%_
                        (gxc#generate-runtime-binding-id _%id200444%_)))))
          (eq? (_%symbol-e200442%_ _%id1200439%_)
               (_%symbol-e200442%_ _%id2200440%_)))))
    (define gxc#identifier-symbol
      (lambda (_%stx200437%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%stx200437%_
               'gx#syntax-quote::t))
            (gxc#generate-runtime-binding-id _%stx200437%_)
            (let () (declare (not safe)) (gx#stx-e _%stx200437%_)))))
    (define gxc#runtime-identifier-properties
      (lambda (_%id200359%_)
        (let* ((_%bind200361%_
                (let ()
                  (declare (not safe))
                  (gx#resolve-identifier__0 _%id200359%_)))
               (_%runtime-props200390%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%bind200361%_
                       'gx#runtime-binding::t))
                    (let* ((_%props200370%_
                            (let ((_%$e200364%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind200361%_
                                      '6
                                      '#f
                                      '#f))))
                              (if _%$e200364%_
                                  (cons 'macro:
                                        (cons (gxc#generate-runtime-identifier
                                               _%$e200364%_)
                                              '()))
                                  '())))
                           (_%props200386%_
                            (let ((_%$e200372%_
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%bind200361%_
                                      '5
                                      '#f
                                      '#f))))
                              (if _%$e200372%_
                                  (let ((_%$e200377%_
                                         (let ()
                                           (declare (not safe))
                                           (__method-ref
                                            _%$e200372%_
                                            ':repr))))
                                    (if _%$e200377%_
                                        (let ((_%repr200382%_
                                               (_%$e200377%_ _%$e200372%_)))
                                          (cons 'type:
                                                (cons _%repr200382%_
                                                      _%props200370%_)))
                                        (gxc#raise-compile-error
                                         '"unrepresentable type"
                                         _%id200359%_
                                         _%$e200372%_)))
                                  _%props200370%_))))
                      _%props200386%_)
                    '()))
               (_%$e200393%_
                (##structure-ref _%bind200361%_ '4 gx#binding::t '#f)))
          (if _%$e200393%_
              (let ((__tmp200880
                     (lambda (_%prop200398%_ _%props200399%_)
                       (let* ((_%$%prop200400200407%_ _%prop200398%_)
                              (_%$%E200402200410%_
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (error '"No clause matching"
                                          _%$%prop200400200407%_
                                          '([key . value])))
                                 '#!void))
                              (_%$%K200403200424%_
                               (lambda (_%value200413%_ _%key200414%_)
                                 (let ((_%$e200416%_
                                        (let ()
                                          (declare (not safe))
                                          (__method-ref
                                           _%value200413%_
                                           ':repr))))
                                   (if _%$e200416%_
                                       (let ((_%repr200421%_
                                              (_%$e200416%_ _%value200413%_)))
                                         (cons _%key200414%_
                                               (cons _%repr200421%_
                                                     _%props200399%_)))
                                       (cons _%key200414%_
                                             (cons (cons 'quote
                                                         (cons _%value200413%_
                                                               '()))
                                                   _%props200399%_)))))))
                         (if (pair? _%$%prop200400200407%_)
                             (let ((_%$%hd200404200427%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%prop200400200407%_)))
                                   (_%$%tl200405200429%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%prop200400200407%_))))
                               (let* ((_%key200432%_ _%$%hd200404200427%_)
                                      (_%value200434%_ _%$%tl200405200429%_))
                                 (_%$%K200403200424%_
                                  _%value200434%_
                                  _%key200432%_)))
                             (_%$%E200402200410%_))))))
                (declare (not safe))
                (foldl__0 __tmp200880 _%runtime-props200390%_ _%$e200393%_))
              _%runtime-props200390%_))))
    (define gxc#__compile-jobs '())
    (define gxc#__available-cores
      (string->number
       (let () (declare (not safe)) (##getenv '"GERBIL_BUILD_CORES" '"1"))))
    (define gxc#__jobs-mx (make-mutex))
    (define gxc#__jobs-cv (make-condition-variable))
    (define gxc#add-compile-job!__%
      (lambda (_%thunk200344%_ _%name200345%_)
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%job200347%_
               (gxc#make-compile-job _%thunk200344%_ _%name200345%_)))
          (set! gxc#__compile-jobs (cons _%job200347%_ gxc#__compile-jobs)))
        (mutex-unlock! gxc#__jobs-mx)))
    (define gxc#add-compile-job!__0
      (lambda (_%thunk200352%_)
        (let ((_%name200354%_
               (let () (declare (not safe)) (gxc#current-compile-context))))
          (gxc#add-compile-job!__% _%thunk200352%_ _%name200354%_))))
    (define gxc#add-compile-job!
      (lambda _g200881_
        (let ((_g200882_ (let () (declare (not safe)) (##length _g200881_))))
          (cond ((let () (declare (not safe)) (##fx= _g200882_ 1))
                 (apply gxc#add-compile-job!__0 _g200881_))
                ((let () (declare (not safe)) (##fx= _g200882_ 2))
                 (apply gxc#add-compile-job!__% _g200881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#add-compile-job!
                  _g200881_))))))
    (define gxc#pending-compile-jobs
      (lambda ()
        (mutex-lock! gxc#__jobs-mx)
        (let ((_%result200341%_ (reverse! gxc#__compile-jobs)))
          (set! gxc#__compile-jobs '())
          (mutex-unlock! gxc#__jobs-mx)
          _%result200341%_)))
    (define gxc#execute-pending-compile-jobs!
      (lambda ()
        (let _%loop200335%_ ()
          (let ((_%pending200338%_ (gxc#pending-compile-jobs)))
            (if (null? _%pending200338%_)
                '#!void
                (begin
                  (let ()
                    (declare (not safe))
                    (##for-each thread-start! _%pending200338%_))
                  (let ()
                    (declare (not safe))
                    (##for-each gxc#join! _%pending200338%_))))))))
    (define gxc#make-compile-job
      (lambda (_%thunk200324%_ _%name200325%_)
        (make-thread
         (lambda ()
           (let _%loop200328%_ ()
             (mutex-lock! gxc#__jobs-mx)
             (if (> gxc#__available-cores '0)
                 (begin
                   (set! gxc#__available-cores (- gxc#__available-cores '1))
                   (mutex-unlock! gxc#__jobs-mx)
                   (let ((__tmp200883
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (displayln
                               '"... execute compile job "
                               _%name200325%_)))))
                     (declare (not safe))
                     (__with-lock gxc#__verbose-mutex __tmp200883))
                   (let ((__tmp200885 (lambda () (_%thunk200324%_)))
                         (__tmp200884
                          (lambda ()
                            (mutex-lock! gxc#__jobs-mx)
                            (set! gxc#__available-cores
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ gxc#__available-cores '1)))
                            (condition-variable-signal! gxc#__jobs-cv)
                            (mutex-unlock! gxc#__jobs-mx))))
                     (declare (not safe))
                     (__with-unwind-protect __tmp200885 __tmp200884)))
                 (begin
                   (mutex-unlock! gxc#__jobs-mx gxc#__jobs-cv)
                   (_%loop200328%_)))))
         _%name200325%_)))
    (define gxc#join!
      (lambda (_%thread200319%_)
        (let ((__tmp200887
               (lambda (_%exn200321%_)
                 (if (let ()
                       (declare (not safe))
                       (uncaught-exception? _%exn200321%_))
                     (let ((__tmp200888
                            (let ()
                              (declare (not safe))
                              (uncaught-exception-reason _%exn200321%_))))
                       (declare (not safe))
                       (raise __tmp200888))
                     (let () (declare (not safe)) (raise _%exn200321%_)))))
              (__tmp200886 (lambda () (thread-join! _%thread200319%_))))
          (declare (not safe))
          (__with-catch __tmp200887 __tmp200886))))))
