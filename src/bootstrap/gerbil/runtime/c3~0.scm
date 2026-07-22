(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1784758121)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords127897%_
               _%$%get-precedence-list127891127898%_
               _%$%struct?127892127899%_
               _%$%eq127893127900%_
               _%$%get-name127894127901%_
               _%rhead127902%_
               _%supers127903%_)
        (let* ((_%get-precedence-list127905%_
                (if (eq? _%$%get-precedence-list127891127898%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list127891127898%_))
               (_%struct?127909%_
                (if (eq? _%$%struct?127892127899%_ absent-value)
                    (lambda (_%_127907%_) '#f)
                    _%$%struct?127892127899%_))
               (_%eq127911%_
                (if (eq? _%$%eq127893127900%_ absent-value)
                    eq?
                    _%$%eq127893127900%_))
               (_%get-name127913%_
                (if (eq? _%$%get-name127894127901%_ absent-value)
                    identity
                    _%$%get-name127894127901%_)))
          (c4-linearize*__%
           '#f
           _%get-precedence-list127905%_
           _%struct?127909%_
           absent-value
           _%eq127911%_
           _%get-name127913%_
           (reverse _%rhead127902%_)
           (list _%supers127903%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords127919%_ . _%args127920%_)
        (apply c4-linearize__%
               _%@@keywords127919%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127919%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127919%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127919%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127919%_
                  'get-name:
                  absent-value))
               _%args127920%_)))
    (define c4-linearize
      (lambda _%$%args127895127926%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args127895127926%_)))
    (define c4-linearize*__%
      (lambda (_%@@keywords127151%_
               _%$%get-precedence-list127144127152%_
               _%$%suffix?127145127153%_
               _%$%super-suffix127146127154%_
               _%$%eq127147127155%_
               _%$%get-name127148127156%_
               _%head127157%_
               _%parents127158%_)
        (let* ((_%get-precedence-list127160%_
                (if (eq? _%$%get-precedence-list127144127152%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list127144127152%_))
               (_%suffix?127162%_
                (if (eq? _%$%suffix?127145127153%_ absent-value)
                    (error '"Missing required keyword argument" 'suffix:)
                    _%$%suffix?127145127153%_))
               (_%super-suffix127189%_
                (if (eq? _%$%super-suffix127146127154%_ absent-value)
                    (lambda (_%x127164%_)
                      (let* ((_%pred127166%_ _%suffix?127162%_)
                             (_%lst127169%_
                              (cdr (_%get-precedence-list127160%_
                                    _%x127164%_))))
                        (if (procedure? _%pred127166%_)
                            (let ((_%pred127174%_ _%pred127166%_))
                              (declare (not safe))
                              (__find _%pred127174%_ _%lst127169%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/c3
                               'contract:
                               'procedure?
                               'value:
                               _%pred127166%_)
                              '#!void))))
                    _%$%super-suffix127146127154%_))
               (_%eq127191%_
                (if (eq? _%$%eq127147127155%_ absent-value)
                    eq?
                    _%$%eq127147127155%_))
               (_%get-name127193%_
                (if (eq? _%$%get-name127148127156%_ absent-value)
                    identity
                    _%$%get-name127148127156%_)))
          (set! _%parents127158%_
                (let ()
                  (declare (not safe))
                  (remove-nulls! _%parents127158%_)))
          (if (null? _%parents127158%_)
              (values _%head127157%_ '#f)
              (if (and (null? (cdr _%parents127158%_))
                       (null? (cdar _%parents127158%_)))
                  (let* ((_%parent127198%_ (caar _%parents127158%_))
                         (_%pl127200%_
                          (_%get-precedence-list127160%_ _%parent127198%_)))
                    (values (append _%head127157%_ _%pl127200%_)
                            (if (_%suffix?127162%_ _%parent127198%_)
                                _%parent127198%_
                                (_%super-suffix127189%_ _%parent127198%_))))
                  (let ((_%rcandidates127204%_ '())
                        (_%suffix127205%_ '#f)
                        (_%suffix-tail127206%_ '()))
                    (letrec* ((_g128002_
                               (let ((_g128003_
                                      (if (eq? _%eq127191%_ eq?)
                                          (values (lambda ()
                                                    (make-table 'test: eq?))
                                                  table-ref
                                                  table-set!
                                                  table-set!
                                                  table->list)
                                          (if (eq? _%eq127191%_ eqv?)
                                              (values (lambda ()
                                                        (make-table
                                                         'test:
                                                         eqv?))
                                                      table-ref
                                                      table-set!
                                                      table-set!
                                                      table->list)
                                              (if (eq? _%eq127191%_ equal?)
                                                  (values (lambda ()
                                                            (make-table
                                                             'test:
                                                             equal?))
                                                          table-ref
                                                          table-set!
                                                          table-set!
                                                          table->list)
                                                  (values (lambda ()
                                                            (letrec* ((_%this127809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '#f '())))
                      (let ()
                        (declare (not safe))
                        (##set-car! _%this127809%_ _%this127809%_))
                      _%this127809%_))
                  (lambda (_%tab127811%_ _%key127812%_ _%default127813%_)
                    (let ((_%$e127815%_
                           (assoc _%key127812%_
                                  (cdr _%tab127811%_)
                                  _%eq127191%_)))
                      (if _%$e127815%_ (cdr _%$e127815%_) _%default127813%_)))
                  (lambda (_%tab127819%_ _%key127820%_ _%value127821%_)
                    (let ((_%$e127823%_
                           (assoc _%key127820%_
                                  (cdr _%tab127819%_)
                                  _%eq127191%_)))
                      (if _%$e127823%_
                          (set-cdr! _%$e127823%_ _%value127821%_)
                          (let ((_%tail127829%_
                                 (cons (cons _%key127820%_ _%value127821%_)
                                       '())))
                            (set-cdr! (car _%tab127819%_) _%tail127829%_)
                            (set-car! _%tab127819%_ _%tail127829%_)))))
                  (lambda (_%tab127831%_ _%key127832%_)
                    (let _%lp127834%_ ((_%prev127836%_ _%tab127831%_)
                                       (_%rest127837%_ (cdr _%tab127831%_)))
                      (let* ((_%$%rest127838127847%_ _%rest127837%_)
                             (_%$%E127841127851%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest127838127847%_
                                       '([])
                                       '([entry . tail]))
                                '#!void)))
                        (let ((_%$%K127845127874%_ (lambda () '#!void))
                              (_%$%K127842127858%_
                               (lambda (_%tail127855%_ _%entry127856%_)
                                 (if (_%eq127191%_
                                      _%key127832%_
                                      (car _%entry127856%_))
                                     (begin
                                       (set-cdr! _%prev127836%_ _%tail127855%_)
                                       (if (null? _%tail127855%_)
                                           (set-car!
                                            _%tab127831%_
                                            _%prev127836%_)
                                           '#!void))
                                     (_%lp127834%_
                                      _%rest127837%_
                                      _%tail127855%_)))))
                          (let ((_%$%try-match127840127870%_
                                 (lambda ()
                                   (if (pair? _%$%rest127838127847%_)
                                       (let ((_%$%tl127844127863%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest127838127847%_)))
                                             (_%$%hd127843127861%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest127838127847%_))))
                                         (let ((_%entry127866%_
                                                _%$%hd127843127861%_)
                                               (_%tail127868%_
                                                _%$%tl127844127863%_))
                                           (_%$%K127842127858%_
                                            _%tail127868%_
                                            _%entry127866%_)))
                                       (_%$%E127841127851%_)))))
                            (if (null? _%$%rest127838127847%_)
                                '#!void
                                (_%$%try-match127840127870%_)))))))
                  cdr))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 #!void
                                 _g128003_))
                              (_%make-tab127208%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g128002_ 0)))
                              (_%tab-ref127209%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g128002_ 1)))
                              (_%tab-set!127210%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g128002_ 2)))
                              (_%tab-remove!127211%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g128002_ 3)))
                              (_%tab->list127212%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g128002_ 4)))
                              (_%get-names127213%_
                               (lambda (_%lst127799%_)
                                 (map _%get-name127193%_ _%lst127799%_)))
                              (_%err127214%_
                               (lambda _%a127797%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names127213%_ _%head127157%_)
                                        'parents:
                                        (map _%get-names127213%_
                                             _%parents127158%_)
                                        'precedence-lists:
                                        (let ((__tmp128004
                                               (map _%get-precedence-list127160%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl__0
                                                       append
                                                       '()
                                                       _%parents127158%_)))))
                                          (declare (not safe))
                                          (##map _%get-names127213%_
                                                 __tmp128004))
                                        'common-suffix-tail:
                                        (_%get-names127213%_
                                         _%suffix-tail127206%_)
                                        'rcandidates:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names127213%_
                                                 _%rcandidates127204%_))
                                        _%a127797%_)))
                              (_%super-suffix?127215%_
                               (lambda (_%s1127784%_ _%s2127785%_)
                                 (let ((_%$e127787%_ (not _%s2127785%_)))
                                   (if _%$e127787%_
                                       _%$e127787%_
                                       (let _%loop127790%_ ((_%s127792%_
                                                             _%s1127784%_))
                                         (if _%s127792%_
                                             (let ((_%$e127794%_
                                                    (_%eq127191%_
                                                     _%s127792%_
                                                     _%s2127785%_)))
                                               (if _%$e127794%_
                                                   _%$e127794%_
                                                   (_%loop127790%_
                                                    (_%super-suffix127189%_
                                                     _%s127792%_))))
                                             '#f))))))
                              (_%merge-suffix127216%_
                               (lambda (_%s1127768%_ _%s2127769%_)
                                 (if (not _%s2127769%_)
                                     _%s1127768%_
                                     (if (not _%s1127768%_)
                                         _%s2127769%_
                                         (let _%loop127774%_ ((_%t1127776%_
                                                               _%s1127768%_)
                                                              (_%t2127777%_
                                                               _%s2127769%_))
                                           (if (not _%t1127776%_)
                                               (if (_%super-suffix?127215%_
                                                    _%t2127777%_
                                                    _%s1127768%_)
                                                   _%s2127769%_
                                                   (_%err127214%_
                                                    'suffix-incompatibility:
                                                    (cons (_%get-name127193%_
                                                           _%s1127768%_)
                                                          (cons (_%get-name127193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%s2127769%_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (not _%t2127777%_)
                                                   (if (_%super-suffix?127215%_
                                                        _%t1127776%_
                                                        _%s2127769%_)
                                                       _%s1127768%_
                                                       (_%err127214%_
                                                        'suffix-incompatibility:
                                                        (cons (_%get-name127193%_
                                                               _%s1127768%_)
                                                              (cons (_%get-name127193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%s2127769%_)
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (_%eq127191%_
                                                        _%t1127776%_
                                                        _%s2127769%_)
                                                       _%s1127768%_
                                                       (if (_%eq127191%_
                                                            _%t2127777%_
                                                            _%s1127768%_)
                                                           _%s2127769%_
                                                           (_%loop127774%_
                                                            (_%super-suffix127189%_
                                                             _%t1127776%_)
                                                            (_%super-suffix127189%_
                                                             _%t2127777%_)))))))))))
                              (_%ancestor-counts127217%_ (_%make-tab127208%_))
                              (_%get-ancestor-count127218%_
                               (lambda (_%c127766%_)
                                 (_%tab-ref127209%_
                                  _%ancestor-counts127217%_
                                  _%c127766%_
                                  '0)))
                              (_%increment-ancestor-count127219%_
                               (lambda (_%c127748%_)
                                 (_%tab-set!127210%_
                                  _%ancestor-counts127217%_
                                  _%c127748%_
                                  (let ((_%x127750%_
                                         (_%get-ancestor-count127218%_
                                          _%c127748%_)))
                                    (if (number? _%x127750%_)
                                        (let ((_%x127755%_ _%x127750%_))
                                          (declare (not safe))
                                          (__1+ _%x127755%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/c3
                                           'contract:
                                           'number?
                                           'value:
                                           _%x127750%_)
                                          '#!void))))))
                              (_%decrement-ancestor-count127220%_
                               (lambda (_%c127728%_)
                                 (let ((_%count127746%_
                                        (let ((_%x127730%_
                                               (_%get-ancestor-count127218%_
                                                _%c127728%_)))
                                          (if (number? _%x127730%_)
                                              (let ((_%x127735%_ _%x127730%_))
                                                (declare (not safe))
                                                (__1- _%x127735%_))
                                              (begin
                                                (raise-contract-violation-error
                                                 '"contract violation"
                                                 'context:
                                                 'gerbil/runtime/c3
                                                 'contract:
                                                 'number?
                                                 'value:
                                                 _%x127730%_)
                                                '#!void)))))
                                   (if (= '0 _%count127746%_)
                                       (_%tab-remove!127211%_
                                        _%ancestor-counts127217%_
                                        _%c127728%_)
                                       (_%tab-set!127210%_
                                        _%ancestor-counts127217%_
                                        _%c127728%_
                                        _%count127746%_)))))
                              (_g128005_
                               (let ((_g128006_
                                      (for-each
                                       (lambda (_%parent-list127222%_)
                                         (for-each
                                          (lambda (_%parent127224%_)
                                            (if (zero? (_%get-ancestor-count127218%_
                                                        _%parent127224%_))
                                                (let _%loop127226%_ ((_%al127228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_%get-precedence-list127160%_ _%parent127224%_))
                             (_%r127229%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (letrec ((_%done127231%_
                                                            (lambda ()
                                                              (if (null? _%r127229%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (set! _%rcandidates127204%_
                                (cons _%r127229%_ _%rcandidates127204%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%al127232127241%_
                                                            _%al127228%_)
                                                           (_%$%E127235127245%_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%al127232127241%_
                             '([])
                             '([a . ar]))
                      '#!void)))
              (let ((_%$%K127239127312%_ (lambda () (_%done127231%_)))
                    (_%$%K127236127296%_
                     (lambda (_%ar127249%_ _%a127250%_)
                       (if (_%suffix?127162%_ _%a127250%_)
                           (let ((_%ms127252%_
                                  (_%merge-suffix127216%_
                                   _%a127250%_
                                   _%suffix127205%_)))
                             (if (and _%suffix127205%_
                                      (_%eq127191%_
                                       _%ms127252%_
                                       _%suffix127205%_))
                                 '#!void
                                 (begin
                                   (let _%loop2127254%_ ((_%tl127256%_
                                                          _%al127228%_))
                                     (let* ((_%$%tl127257127266%_ _%tl127256%_)
                                            (_%$%E127260127270%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%tl127257127266%_
                                                      '([])
                                                      '([t . tr]))
                                               '#!void)))
                                       (let ((_%$%K127264127293%_
                                              (lambda () '#!void))
                                             (_%$%K127261127277%_
                                              (lambda (_%tr127274%_
                                                       _%t127275%_)
                                                (if (and _%suffix127205%_
                                                         (_%eq127191%_
                                                          _%t127275%_
                                                          _%suffix127205%_))
                                                    '#!void
                                                    (begin
                                                      (_%increment-ancestor-count127219%_
                                                       _%t127275%_)
                                                      (_%loop2127254%_
                                                       _%tr127274%_))))))
                                         (let ((_%$%try-match127259127289%_
                                                (lambda ()
                                                  (if (pair? _%$%tl127257127266%_)
                                                      (let ((_%$%tl127263127282%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl127257127266%_)))
                    (_%$%hd127262127280%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl127257127266%_))))
                (let ((_%t127285%_ _%$%hd127262127280%_)
                      (_%tr127287%_ _%$%tl127263127282%_))
                  (_%$%K127261127277%_ _%tr127287%_ _%t127285%_)))
              (_%$%E127260127270%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (null? _%$%tl127257127266%_)
                                               '#!void
                                               (_%$%try-match127259127289%_))))))
                                   (set! _%suffix127205%_ _%a127250%_)
                                   (set! _%suffix-tail127206%_ _%al127228%_)))
                             (_%done127231%_))
                           (begin
                             (_%increment-ancestor-count127219%_ _%a127250%_)
                             (_%loop127226%_
                              _%ar127249%_
                              (cons _%a127250%_ _%r127229%_)))))))
                (let ((_%$%try-match127234127308%_
                       (lambda ()
                         (if (pair? _%$%al127232127241%_)
                             (let ((_%$%tl127238127301%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%al127232127241%_)))
                                   (_%$%hd127237127299%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%al127232127241%_))))
                               (let ((_%a127304%_ _%$%hd127237127299%_)
                                     (_%ar127306%_ _%$%tl127238127301%_))
                                 (_%$%K127236127296%_
                                  _%ar127306%_
                                  _%a127304%_)))
                             (_%$%E127235127245%_)))))
                  (if (null? _%$%al127232127241%_)
                      (_%done127231%_)
                      (_%$%try-match127234127308%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#!void))
                                          _%parent-list127222%_))
                                       _%parents127158%_)))
                                 #!void
                                 _g128006_))
                              (_%suffix-tail-index127315%_
                               (_%make-tab127208%_))
                              (_g128008_
                               (let ((_g128009_
                                      (let _%loop127317%_ ((_%i127319%_
                                                            (length _%suffix-tail127206%_))
                                                           (_%t127320%_
                                                            _%suffix-tail127206%_))
                                        (let* ((_%$%t127321127330%_
                                                _%t127320%_)
                                               (_%$%E127324127334%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%t127321127330%_
                                                         '([])
                                                         '([a . r]))
                                                  '#!void)))
                                          (let ((_%$%K127328127385%_
                                                 (lambda () '#!void))
                                                (_%$%K127325127369%_
                                                 (lambda (_%r127338%_
                                                          _%a127339%_)
                                                   (_%tab-set!127210%_
                                                    _%suffix-tail-index127315%_
                                                    _%a127339%_
                                                    _%i127319%_)
                                                   (_%loop127317%_
                                                    (let ((_%x127341%_
                                                           _%i127319%_))
                                                      (if (number? _%x127341%_)
                                                          (let ((_%x127346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%x127341%_))
                    (declare (not safe))
                    (__1- _%x127346%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/c3
                     'contract:
                     'number?
                     'value:
                     _%x127341%_)
                    '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r127338%_))))
                                            (let ((_%$%try-match127323127381%_
                                                   (lambda ()
                                                     (if (pair? _%$%t127321127330%_)
                                                         (let ((_%$%tl127327127374%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%t127321127330%_)))
                       (_%$%hd127326127372%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%t127321127330%_))))
                   (let ((_%a127377%_ _%$%hd127326127372%_)
                         (_%r127379%_ _%$%tl127327127374%_))
                     (_%$%K127325127369%_ _%r127379%_ _%a127377%_)))
                 (_%$%E127324127334%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%t127321127330%_)
                                                  '#!void
                                                  (_%$%try-match127323127381%_))))))))
                                 #!void
                                 _g128009_))
                              (_%r-local-order127387%_
                               (let ((__tmp128011
                                      (lambda (_%parent-list127726%_)
                                        (if (null? (cdr _%parent-list127726%_))
                                            '#f
                                            (reverse _%parent-list127726%_)))))
                                 (declare (not safe))
                                 (filter-map__0
                                  __tmp128011
                                  _%parents127158%_)))
                              (_g128012_
                               (let ((_g128013_
                                      (let ((__tmp128015
                                             (lambda (_%cl127389%_)
                                               (for-each
                                                _%increment-ancestor-count127219%_
                                                _%cl127389%_))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp128015
                                         _%r-local-order127387%_))))
                                 #!void
                                 _g128013_))
                              (_g128016_
                               (let ((_g128017_
                                      (set! _%rcandidates127204%_
                                            (let ()
                                              (declare (not safe))
                                              (##append
                                               _%r-local-order127387%_
                                               _%rcandidates127204%_)))))
                                 #!void
                                 _g128017_))
                              (_%remove-suffix-tail-and-reverse127390%_
                               (lambda (_%rcl127600%_)
                                 (let _%u127602%_ ((_%cl-rhead127604%_
                                                    _%rcl127600%_)
                                                   (_%suffix-pos127605%_ '-1))
                                   (let* ((_%$%cl-rhead127606127615%_
                                           _%cl-rhead127604%_)
                                          (_%$%E127609127619%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%cl-rhead127606127615%_
                                                    '([])
                                                    '([c . clrh]))
                                             '#!void)))
                                     (let ((_%$%K127613127723%_
                                            (lambda () '()))
                                           (_%$%K127610127707%_
                                            (lambda (_%clrh127623%_
                                                     _%c127624%_)
                                              (let ((_%p127626%_
                                                     (_%tab-ref127209%_
                                                      _%suffix-tail-index127315%_
                                                      _%c127624%_
                                                      '#f)))
                                                (letrec ((_%err2127628%_
                                                          (lambda _%a127673%_
                                                            (apply _%err127214%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'reverse-candidate-list:
                           (_%get-names127213%_ _%rcl127600%_)
                           'suffix-tail-index:
                           (map (lambda (_%$%e127674127676%_)
                                  (let* ((_%$%$%e127674127678127685%_
                                          _%$%e127674127676%_)
                                         (_%$%E127680127689%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%$%e127674127678127685%_
                                                   '([a . i]))
                                            '#!void))
                                         (_%$%K127681127695%_
                                          (lambda (_%i127692%_ _%a127693%_)
                                            (cons (_%get-name127193%_
                                                   _%a127693%_)
                                                  _%i127692%_))))
                                    (if (pair? _%$%$%e127674127678127685%_)
                                        (let ((_%$%hd127682127698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%$%e127674127678127685%_)))
                                              (_%$%tl127683127700%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%$%e127674127678127685%_))))
                                          (let* ((_%a127703%_
                                                  _%$%hd127682127698%_)
                                                 (_%i127705%_
                                                  _%$%tl127683127700%_))
                                            (_%$%K127681127695%_
                                             _%i127705%_
                                             _%a127703%_)))
                                        (_%$%E127680127689%_))))
                                (_%tab->list127212%_
                                 _%suffix-tail-index127315%_))
                           'c:
                           (_%get-name127193%_ _%c127624%_)
                           'p:
                           _%p127626%_
                           'suffix-pos:
                           _%suffix-pos127605%_
                           _%a127673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (not _%p127626%_)
                                                      (let ((_g128019_
                                                             (let* ((_%pred127635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g127630127632%_)
                               (_%tab-ref127209%_
                                _%suffix-tail-index127315%_
                                _%$%g127630127632%_
                                '#f)))
                            (_%rhead127638%_ _%clrh127623%_)
                            (_%tail127641%_ (cons _%c127624%_ '()))
                            (_%pred127646%_ _%pred127635%_))
                       (declare (not safe))
                       (__append-reverse-until
                        _%pred127646%_
                        _%rhead127638%_
                        _%tail127641%_))))
                (begin
                  (let ((_g128020_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g128019_)
                               (##values-length _g128019_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g128020_ 2)))
                        (error "Context expects 2 values" _g128020_)))
                  (let ((_%clrh2127668%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g128019_ 0)))
                        (_%h127669%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g128019_ 1))))
                    (if (null? _%clrh2127668%_)
                        _%h127669%_
                        (_%err2127628%_
                         'precedence-list-tail:
                         (_%get-names127213%_ _%h127669%_)
                         'ancestor-out-of-order-vs-suffix-tail:
                         (_%get-name127193%_ (car _%clrh2127668%_))
                         'precedence-list-head:
                         (_%get-names127213%_ (reverse _%clrh2127668%_)))))))
              (if (> _%p127626%_ _%suffix-pos127605%_)
                  (_%u127602%_ _%clrh127623%_ _%p127626%_)
                  (_%err2127628%_
                   'ancestor-out-of-order-vs-suffix-tail:
                   (_%get-name127193%_ _%c127624%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match127608127719%_
                                              (lambda ()
                                                (if (pair? _%$%cl-rhead127606127615%_)
                                                    (let ((_%$%tl127612127712%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%cl-rhead127606127615%_)))
                                                          (_%$%hd127611127710%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%cl-rhead127606127615%_))))
                                                      (let ((_%c127715%_
                                                             _%$%hd127611127710%_)
                                                            (_%clrh127717%_
                                                             _%$%tl127612127712%_))
                                                        (_%$%K127610127707%_
                                                         _%clrh127717%_
                                                         _%c127715%_)))
                                                    (_%$%E127609127619%_)))))
                                         (if (null? _%$%cl-rhead127606127615%_)
                                             (_%$%K127613127723%_)
                                             (_%$%try-match127608127719%_))))))))
                              (_%candidates127391%_
                               (reverse (let ((__tmp128021
                                               (let ()
                                                 (declare (not safe))
                                                 (##map _%remove-suffix-tail-and-reverse127390%_
                                                        _%rcandidates127204%_))))
                                          (declare (not safe))
                                          (remove-nulls! __tmp128021))))
                              (_g128022_
                               (let ((_g128023_
                                      (let ((__tmp128025
                                             (lambda (_%cl127393%_)
                                               (_%decrement-ancestor-count127220%_
                                                (car _%cl127393%_)))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp128025
                                         _%candidates127391%_))))
                                 #!void
                                 _g128023_))
                              (_%c3-select-next127394%_
                               (lambda (_%tails127556%_)
                                 (let _%loop127558%_ ((_%ts127560%_
                                                       _%tails127556%_))
                                   (let* ((_%$%ts127561127571%_ _%ts127560%_)
                                          (_%$%else127563127579%_
                                           (lambda ()
                                             (_%err127214%_
                                              'c3-select-next:
                                              'fail)))
                                          (_%$%K127565127585%_
                                           (lambda (_%rts127582%_ _%c127583%_)
                                             (if (zero? (_%get-ancestor-count127218%_
                                                         _%c127583%_))
                                                 _%c127583%_
                                                 (_%loop127558%_
                                                  _%rts127582%_)))))
                                     (if (pair? _%$%ts127561127571%_)
                                         (let ((_%$%hd127566127588%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%ts127561127571%_)))
                                               (_%$%tl127567127590%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%ts127561127571%_))))
                                           (if (pair? _%$%hd127566127588%_)
                                               (let* ((_%$%hd127568127593%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd127566127588%_)))
                                                      (_%c127596%_
                                                       _%$%hd127568127593%_)
                                                      (_%rts127598%_
                                                       _%$%tl127567127590%_))
                                                 (_%$%K127565127585%_
                                                  _%rts127598%_
                                                  _%c127596%_))
                                               (_%$%else127563127579%_)))
                                         (_%$%else127563127579%_))))))
                              (_%remove-next!127395%_
                               (lambda (_%next127446%_ _%tails127447%_)
                                 (let _%loop127449%_ ((_%t127451%_
                                                       _%tails127447%_))
                                   (let* ((_%$%t127452127467%_ _%t127451%_)
                                          (_%$%E127456127471%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t127452127467%_
                                                    '([(and hd
                                                            [(? (cut eq
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             next
                             <>))
                     .
                     tl])
               .
               rr])
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '([_ . rr])
                                                    '(_))
                                             '#!void)))
                                     (let ((_%$%K127461127533%_
                                            (lambda (_%rr127496%_
                                                     _%tl127497%_
                                                     _%hd127498%_)
                                              (let* ((_%$%tl127499127508%_
                                                      _%tl127497%_)
                                                     (_%$%E127502127512%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%tl127499127508%_
                                                               '([c . _])
                                                               '(_))
                                                        '#!void)))
                                                (let ((_%$%K127504127525%_
                                                       (lambda (_%c127523%_)
                                                         (_%decrement-ancestor-count127220%_
                                                          _%c127523%_)))
                                                      (_%$%K127503127517%_
                                                       (lambda () '#!void)))
                                                  (if (pair? _%$%tl127499127508%_)
                                                      (let* ((_%$%hd127505127528%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl127499127508%_)))
                     (_%c127531%_ _%$%hd127505127528%_))
                (_%decrement-ancestor-count127220%_ _%c127531%_))
              '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (set-car!
                                               _%t127451%_
                                               _%tl127497%_)
                                              (_%loop127449%_ _%rr127496%_)))
                                           (_%$%K127458127485%_
                                            (lambda (_%rr127483%_)
                                              (_%loop127449%_ _%rr127483%_)))
                                           (_%$%K127457127476%_
                                            (lambda () _%tails127447%_)))
                                       (if (pair? _%$%t127452127467%_)
                                           (let ((_%$%tl127463127538%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%t127452127467%_)))
                                                 (_%$%hd127462127536%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%t127452127467%_))))
                                             (if (pair? _%$%hd127462127536%_)
                                                 (let ((_%$%tl127465127545%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd127462127536%_)))
                                                       (_%$%hd127464127543%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd127462127536%_))))
                                                   (if (_%eq127191%_
                                                        _%next127446%_
                                                        _%$%hd127464127543%_)
                                                       (let ((_%hd127541%_
                                                              _%$%hd127462127536%_)
                                                             (_%tl127552%_
                                                              _%$%tl127465127545%_)
                                                             (_%rr127554%_
                                                              _%$%tl127463127538%_))
                                                         (_%$%K127461127533%_
                                                          _%rr127554%_
                                                          _%tl127552%_
                                                          _%hd127541%_))
                                                       (let ((_%rr127491%_
                                                              _%$%tl127463127538%_))
                                                         (_%loop127449%_
                                                          _%rr127491%_))))
                                                 (let ((_%rr127491%_
                                                        _%$%tl127463127538%_))
                                                   (_%loop127449%_
                                                    _%rr127491%_))))
                                           (_%$%K127457127476%_)))))))
                              (_%precedence-list127396%_
                               (let _%c3loop127398%_ ((_%rhead127400%_
                                                       (reverse _%head127157%_))
                                                      (_%tails127401%_
                                                       _%candidates127391%_))
                                 (let* ((_%$%tails127402127412%_
                                         _%tails127401%_)
                                        (_%$%else127405127423%_
                                         (lambda ()
                                           (let ((_%next127420%_
                                                  (_%c3-select-next127394%_
                                                   _%tails127401%_)))
                                             (_%c3loop127398%_
                                              (cons _%next127420%_
                                                    _%rhead127400%_)
                                              (let ((__tmp128026
                                                     (_%remove-next!127395%_
                                                      _%next127420%_
                                                      _%tails127401%_)))
                                                (declare (not safe))
                                                (remove-nulls!
                                                 __tmp128026)))))))
                                   (let ((_%$%K127410127443%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead127400%_
                                             _%suffix-tail127206%_)))
                                         (_%$%K127407127429%_
                                          (lambda (_%tail127427%_)
                                            (append-reverse
                                             _%rhead127400%_
                                             (append _%tail127427%_
                                                     _%suffix-tail127206%_)))))
                                     (let ((_%$%try-match127404127439%_
                                            (lambda ()
                                              (if (pair? _%$%tails127402127412%_)
                                                  (let ((_%$%tl127409127434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails127402127412%_)))
                                                        (_%$%hd127408127432%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails127402127412%_))))
                                                    (if (null? _%$%tl127409127434%_)
                                                        (let ((_%tail127437%_
                                                               _%$%hd127408127432%_))
                                                          (_%$%K127407127429%_
                                                           _%tail127437%_))
                                                        (_%$%else127405127423%_)))
                                                  (_%$%else127405127423%_)))))
                                       (if (null? _%$%tails127402127412%_)
                                           (_%$%K127410127443%_)
                                           (_%$%try-match127404127439%_))))))))
                      (values _%precedence-list127396%_
                              _%suffix127205%_))))))))
    (define c4-linearize*__@
      (lambda (_%@@keywords127880%_ . _%args127881%_)
        (apply c4-linearize*__%
               _%@@keywords127880%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127880%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127880%_
                  'suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127880%_
                  'super-suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords127880%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords127880%_
                  'get-name:
                  absent-value))
               _%args127881%_)))
    (define c4-linearize*
      (lambda _%$%args127149127887%_
        (apply keyword-dispatch
               '#(#f
                  #f
                  super-suffix:
                  eq:
                  suffix:
                  #f
                  #f
                  get-precedence-list:
                  #f
                  get-name:)
               c4-linearize*__@
               _%$%args127149127887%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list127098%_
               _%direct-slot-list127099%_
               _%mixin-slot-names127100%_
               _%result127101%_)
        (let* ((_%next-slot127103%_ '1)
               (_%slot-table127105%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots127107%_ (cons 'class '()))
               (_%process-slot127132%_
                (lambda (_%slot127109%_)
                  (if (symbol? _%slot127109%_)
                      '#!void
                      (error '"invalid slot name" _%slot127109%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table127105%_
                              _%slot127109%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table127105%_
                           _%slot127109%_
                           _%next-slot127103%_))
                        (let ((__tmp128027
                               (let ((_%sym127111%_ _%slot127109%_))
                                 (if (symbol? _%sym127111%_)
                                     (let ((_%sym127116%_ _%sym127111%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym127116%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym127111%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table127105%_
                           __tmp128027
                           _%next-slot127103%_))
                        (set! _%r-slots127107%_
                              (cons _%slot127109%_ _%r-slots127107%_))
                        (set! _%next-slot127103%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot127103%_ '1))))
                      '#!void)))
               (_%process-slots127138%_
                (lambda (_%$%g127133127135%_)
                  (for-each _%process-slot127132%_ _%$%g127133127135%_))))
          (let ((__tmp128029
                 (lambda (_%mixin127141%_)
                   (_%process-slots127138%_
                    (_%mixin-slot-names127100%_ _%mixin127141%_))))
                (__tmp128028 (reverse _%precedence-list127098%_)))
            (declare (not safe))
            (##for-each __tmp128029 __tmp128028))
          (_%process-slots127138%_ _%direct-slot-list127099%_)
          (_%result127101%_
           (reverse! _%r-slots127107%_)
           _%slot-table127105%_))))))
