(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1789839222)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords130086%_
               _%$%get-precedence-list130080130087%_
               _%$%struct?130081130088%_
               _%$%eq130082130089%_
               _%$%get-name130083130090%_
               _%rhead130091%_
               _%supers130092%_)
        (let* ((_%get-precedence-list130094%_
                (if (eq? _%$%get-precedence-list130080130087%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list130080130087%_))
               (_%struct?130098%_
                (if (eq? _%$%struct?130081130088%_ absent-value)
                    (lambda (_%_130096%_) '#f)
                    _%$%struct?130081130088%_))
               (_%eq130100%_
                (if (eq? _%$%eq130082130089%_ absent-value)
                    eq?
                    _%$%eq130082130089%_))
               (_%get-name130102%_
                (if (eq? _%$%get-name130083130090%_ absent-value)
                    identity
                    _%$%get-name130083130090%_)))
          (c4-linearize*__%
           '#f
           _%get-precedence-list130094%_
           _%struct?130098%_
           absent-value
           _%eq130100%_
           _%get-name130102%_
           (reverse _%rhead130091%_)
           (list _%supers130092%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords130108%_ . _%args130109%_)
        (apply c4-linearize__%
               _%@@keywords130108%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130108%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130108%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords130108%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130108%_
                  'get-name:
                  absent-value))
               _%args130109%_)))
    (define c4-linearize
      (lambda _%$%args130084130115%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args130084130115%_)))
    (define c4-linearize*__%
      (lambda (_%@@keywords129340%_
               _%$%get-precedence-list129333129341%_
               _%$%suffix?129334129342%_
               _%$%super-suffix129335129343%_
               _%$%eq129336129344%_
               _%$%get-name129337129345%_
               _%head129346%_
               _%parents129347%_)
        (let* ((_%get-precedence-list129349%_
                (if (eq? _%$%get-precedence-list129333129341%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list129333129341%_))
               (_%suffix?129351%_
                (if (eq? _%$%suffix?129334129342%_ absent-value)
                    (error '"Missing required keyword argument" 'suffix:)
                    _%$%suffix?129334129342%_))
               (_%super-suffix129378%_
                (if (eq? _%$%super-suffix129335129343%_ absent-value)
                    (lambda (_%x129353%_)
                      (let* ((_%pred129355%_ _%suffix?129351%_)
                             (_%lst129358%_
                              (cdr (_%get-precedence-list129349%_
                                    _%x129353%_))))
                        (if (procedure? _%pred129355%_)
                            (let ((_%pred129363%_ _%pred129355%_))
                              (declare (not safe))
                              (__find _%pred129363%_ _%lst129358%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/c3
                               'contract:
                               'procedure?
                               'value:
                               _%pred129355%_)
                              '#!void))))
                    _%$%super-suffix129335129343%_))
               (_%eq129380%_
                (if (eq? _%$%eq129336129344%_ absent-value)
                    eq?
                    _%$%eq129336129344%_))
               (_%get-name129382%_
                (if (eq? _%$%get-name129337129345%_ absent-value)
                    identity
                    _%$%get-name129337129345%_)))
          (set! _%parents129347%_
                (let ()
                  (declare (not safe))
                  (remove-nulls! _%parents129347%_)))
          (if (null? _%parents129347%_)
              (values _%head129346%_ '#f)
              (if (and (null? (cdr _%parents129347%_))
                       (null? (cdar _%parents129347%_)))
                  (let* ((_%parent129387%_ (caar _%parents129347%_))
                         (_%pl129389%_
                          (_%get-precedence-list129349%_ _%parent129387%_)))
                    (values (append _%head129346%_ _%pl129389%_)
                            (if (_%suffix?129351%_ _%parent129387%_)
                                _%parent129387%_
                                (_%super-suffix129378%_ _%parent129387%_))))
                  (let ((_%rcandidates129393%_ '())
                        (_%suffix129394%_ '#f)
                        (_%suffix-tail129395%_ '()))
                    (letrec* ((_g130191_
                               (let ((_g130192_
                                      (if (eq? _%eq129380%_ eq?)
                                          (values (lambda ()
                                                    (make-table 'test: eq?))
                                                  table-ref
                                                  table-set!
                                                  table-set!
                                                  table->list)
                                          (if (eq? _%eq129380%_ eqv?)
                                              (values (lambda ()
                                                        (make-table
                                                         'test:
                                                         eqv?))
                                                      table-ref
                                                      table-set!
                                                      table-set!
                                                      table->list)
                                              (if (eq? _%eq129380%_ equal?)
                                                  (values (lambda ()
                                                            (make-table
                                                             'test:
                                                             equal?))
                                                          table-ref
                                                          table-set!
                                                          table-set!
                                                          table->list)
                                                  (values (lambda ()
                                                            (letrec* ((_%this129998%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '#f '())))
                      (let ()
                        (declare (not safe))
                        (##set-car! _%this129998%_ _%this129998%_))
                      _%this129998%_))
                  (lambda (_%tab130000%_ _%key130001%_ _%default130002%_)
                    (let ((_%$e130004%_
                           (assoc _%key130001%_
                                  (cdr _%tab130000%_)
                                  _%eq129380%_)))
                      (if _%$e130004%_ (cdr _%$e130004%_) _%default130002%_)))
                  (lambda (_%tab130008%_ _%key130009%_ _%value130010%_)
                    (let ((_%$e130012%_
                           (assoc _%key130009%_
                                  (cdr _%tab130008%_)
                                  _%eq129380%_)))
                      (if _%$e130012%_
                          (set-cdr! _%$e130012%_ _%value130010%_)
                          (let ((_%tail130018%_
                                 (cons (cons _%key130009%_ _%value130010%_)
                                       '())))
                            (set-cdr! (car _%tab130008%_) _%tail130018%_)
                            (set-car! _%tab130008%_ _%tail130018%_)))))
                  (lambda (_%tab130020%_ _%key130021%_)
                    (let _%lp130023%_ ((_%prev130025%_ _%tab130020%_)
                                       (_%rest130026%_ (cdr _%tab130020%_)))
                      (let* ((_%$%rest130027130036%_ _%rest130026%_)
                             (_%$%E130030130040%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest130027130036%_
                                       '([])
                                       '([entry . tail]))
                                '#!void)))
                        (let ((_%$%K130034130063%_ (lambda () '#!void))
                              (_%$%K130031130047%_
                               (lambda (_%tail130044%_ _%entry130045%_)
                                 (if (_%eq129380%_
                                      _%key130021%_
                                      (car _%entry130045%_))
                                     (begin
                                       (set-cdr! _%prev130025%_ _%tail130044%_)
                                       (if (null? _%tail130044%_)
                                           (set-car!
                                            _%tab130020%_
                                            _%prev130025%_)
                                           '#!void))
                                     (_%lp130023%_
                                      _%rest130026%_
                                      _%tail130044%_)))))
                          (let ((_%$%try-match130029130059%_
                                 (lambda ()
                                   (if (pair? _%$%rest130027130036%_)
                                       (let ((_%$%tl130033130052%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest130027130036%_)))
                                             (_%$%hd130032130050%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest130027130036%_))))
                                         (let ((_%entry130055%_
                                                _%$%hd130032130050%_)
                                               (_%tail130057%_
                                                _%$%tl130033130052%_))
                                           (_%$%K130031130047%_
                                            _%tail130057%_
                                            _%entry130055%_)))
                                       (_%$%E130030130040%_)))))
                            (if (null? _%$%rest130027130036%_)
                                '#!void
                                (_%$%try-match130029130059%_)))))))
                  cdr))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 #!void
                                 _g130192_))
                              (_%make-tab129397%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130191_ 0)))
                              (_%tab-ref129398%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130191_ 1)))
                              (_%tab-set!129399%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130191_ 2)))
                              (_%tab-remove!129400%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130191_ 3)))
                              (_%tab->list129401%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130191_ 4)))
                              (_%get-names129402%_
                               (lambda (_%lst129988%_)
                                 (map _%get-name129382%_ _%lst129988%_)))
                              (_%err129403%_
                               (lambda _%a129986%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names129402%_ _%head129346%_)
                                        'parents:
                                        (map _%get-names129402%_
                                             _%parents129347%_)
                                        'precedence-lists:
                                        (let ((__tmp130193
                                               (map _%get-precedence-list129349%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl__0
                                                       append
                                                       '()
                                                       _%parents129347%_)))))
                                          (declare (not safe))
                                          (##map _%get-names129402%_
                                                 __tmp130193))
                                        'common-suffix-tail:
                                        (_%get-names129402%_
                                         _%suffix-tail129395%_)
                                        'rcandidates:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names129402%_
                                                 _%rcandidates129393%_))
                                        _%a129986%_)))
                              (_%super-suffix?129404%_
                               (lambda (_%s1129973%_ _%s2129974%_)
                                 (let ((_%$e129976%_ (not _%s2129974%_)))
                                   (if _%$e129976%_
                                       _%$e129976%_
                                       (let _%loop129979%_ ((_%s129981%_
                                                             _%s1129973%_))
                                         (if _%s129981%_
                                             (let ((_%$e129983%_
                                                    (_%eq129380%_
                                                     _%s129981%_
                                                     _%s2129974%_)))
                                               (if _%$e129983%_
                                                   _%$e129983%_
                                                   (_%loop129979%_
                                                    (_%super-suffix129378%_
                                                     _%s129981%_))))
                                             '#f))))))
                              (_%merge-suffix129405%_
                               (lambda (_%s1129957%_ _%s2129958%_)
                                 (if _%s2129958%_
                                     (if _%s1129957%_
                                         (let _%loop129963%_ ((_%t1129965%_
                                                               _%s1129957%_)
                                                              (_%t2129966%_
                                                               _%s2129958%_))
                                           (if _%t1129965%_
                                               (if _%t2129966%_
                                                   (if (_%eq129380%_
                                                        _%t1129965%_
                                                        _%s2129958%_)
                                                       _%s1129957%_
                                                       (if (_%eq129380%_
                                                            _%t2129966%_
                                                            _%s1129957%_)
                                                           _%s2129958%_
                                                           (_%loop129963%_
                                                            (_%super-suffix129378%_
                                                             _%t1129965%_)
                                                            (_%super-suffix129378%_
                                                             _%t2129966%_))))
                                                   (if (_%super-suffix?129404%_
                                                        _%t1129965%_
                                                        _%s2129958%_)
                                                       _%s1129957%_
                                                       (_%err129403%_
                                                        'suffix-incompatibility:
                                                        (cons (_%get-name129382%_
                                                               _%s1129957%_)
                                                              (cons (_%get-name129382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%s2129958%_)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (_%super-suffix?129404%_
                                                    _%t2129966%_
                                                    _%s1129957%_)
                                                   _%s2129958%_
                                                   (_%err129403%_
                                                    'suffix-incompatibility:
                                                    (cons (_%get-name129382%_
                                                           _%s1129957%_)
                                                          (cons (_%get-name129382%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%s2129958%_)
                        '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%s2129958%_)
                                     _%s1129957%_)))
                              (_%ancestor-counts129406%_ (_%make-tab129397%_))
                              (_%get-ancestor-count129407%_
                               (lambda (_%c129955%_)
                                 (_%tab-ref129398%_
                                  _%ancestor-counts129406%_
                                  _%c129955%_
                                  '0)))
                              (_%increment-ancestor-count129408%_
                               (lambda (_%c129937%_)
                                 (_%tab-set!129399%_
                                  _%ancestor-counts129406%_
                                  _%c129937%_
                                  (let ((_%x129939%_
                                         (_%get-ancestor-count129407%_
                                          _%c129937%_)))
                                    (if (number? _%x129939%_)
                                        (let ((_%x129944%_ _%x129939%_))
                                          (declare (not safe))
                                          (__1+ _%x129944%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/c3
                                           'contract:
                                           'number?
                                           'value:
                                           _%x129939%_)
                                          '#!void))))))
                              (_%decrement-ancestor-count129409%_
                               (lambda (_%c129917%_)
                                 (let ((_%count129935%_
                                        (let ((_%x129919%_
                                               (_%get-ancestor-count129407%_
                                                _%c129917%_)))
                                          (if (number? _%x129919%_)
                                              (let ((_%x129924%_ _%x129919%_))
                                                (declare (not safe))
                                                (__1- _%x129924%_))
                                              (begin
                                                (raise-contract-violation-error
                                                 '"contract violation"
                                                 'context:
                                                 'gerbil/runtime/c3
                                                 'contract:
                                                 'number?
                                                 'value:
                                                 _%x129919%_)
                                                '#!void)))))
                                   (if (= '0 _%count129935%_)
                                       (_%tab-remove!129400%_
                                        _%ancestor-counts129406%_
                                        _%c129917%_)
                                       (_%tab-set!129399%_
                                        _%ancestor-counts129406%_
                                        _%c129917%_
                                        _%count129935%_)))))
                              (_g130194_
                               (let ((_g130195_
                                      (for-each
                                       (lambda (_%parent-list129411%_)
                                         (for-each
                                          (lambda (_%parent129413%_)
                                            (if (zero? (_%get-ancestor-count129407%_
                                                        _%parent129413%_))
                                                (let _%loop129415%_ ((_%al129417%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_%get-precedence-list129349%_ _%parent129413%_))
                             (_%r129418%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (letrec ((_%done129420%_
                                                            (lambda ()
                                                              (if (null? _%r129418%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (set! _%rcandidates129393%_
                                (cons _%r129418%_ _%rcandidates129393%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%al129421129430%_
                                                            _%al129417%_)
                                                           (_%$%E129424129434%_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%al129421129430%_
                             '([])
                             '([a . ar]))
                      '#!void)))
              (let ((_%$%K129428129501%_ (lambda () (_%done129420%_)))
                    (_%$%K129425129485%_
                     (lambda (_%ar129438%_ _%a129439%_)
                       (if (_%suffix?129351%_ _%a129439%_)
                           (let ((_%ms129441%_
                                  (_%merge-suffix129405%_
                                   _%a129439%_
                                   _%suffix129394%_)))
                             (if (and _%suffix129394%_
                                      (_%eq129380%_
                                       _%ms129441%_
                                       _%suffix129394%_))
                                 '#!void
                                 (begin
                                   (let _%loop2129443%_ ((_%tl129445%_
                                                          _%al129417%_))
                                     (let* ((_%$%tl129446129455%_ _%tl129445%_)
                                            (_%$%E129449129459%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%tl129446129455%_
                                                      '([])
                                                      '([t . tr]))
                                               '#!void)))
                                       (let ((_%$%K129453129482%_
                                              (lambda () '#!void))
                                             (_%$%K129450129466%_
                                              (lambda (_%tr129463%_
                                                       _%t129464%_)
                                                (if (and _%suffix129394%_
                                                         (_%eq129380%_
                                                          _%t129464%_
                                                          _%suffix129394%_))
                                                    '#!void
                                                    (begin
                                                      (_%increment-ancestor-count129408%_
                                                       _%t129464%_)
                                                      (_%loop2129443%_
                                                       _%tr129463%_))))))
                                         (let ((_%$%try-match129448129478%_
                                                (lambda ()
                                                  (if (pair? _%$%tl129446129455%_)
                                                      (let ((_%$%tl129452129471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl129446129455%_)))
                    (_%$%hd129451129469%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl129446129455%_))))
                (let ((_%t129474%_ _%$%hd129451129469%_)
                      (_%tr129476%_ _%$%tl129452129471%_))
                  (_%$%K129450129466%_ _%tr129476%_ _%t129474%_)))
              (_%$%E129449129459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (null? _%$%tl129446129455%_)
                                               '#!void
                                               (_%$%try-match129448129478%_))))))
                                   (set! _%suffix129394%_ _%a129439%_)
                                   (set! _%suffix-tail129395%_ _%al129417%_)))
                             (_%done129420%_))
                           (begin
                             (_%increment-ancestor-count129408%_ _%a129439%_)
                             (_%loop129415%_
                              _%ar129438%_
                              (cons _%a129439%_ _%r129418%_)))))))
                (let ((_%$%try-match129423129497%_
                       (lambda ()
                         (if (pair? _%$%al129421129430%_)
                             (let ((_%$%tl129427129490%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%al129421129430%_)))
                                   (_%$%hd129426129488%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%al129421129430%_))))
                               (let ((_%a129493%_ _%$%hd129426129488%_)
                                     (_%ar129495%_ _%$%tl129427129490%_))
                                 (_%$%K129425129485%_
                                  _%ar129495%_
                                  _%a129493%_)))
                             (_%$%E129424129434%_)))))
                  (if (null? _%$%al129421129430%_)
                      (_%done129420%_)
                      (_%$%try-match129423129497%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#!void))
                                          _%parent-list129411%_))
                                       _%parents129347%_)))
                                 #!void
                                 _g130195_))
                              (_%suffix-tail-index129504%_
                               (_%make-tab129397%_))
                              (_g130197_
                               (let ((_g130198_
                                      (let _%loop129506%_ ((_%i129508%_
                                                            (length _%suffix-tail129395%_))
                                                           (_%t129509%_
                                                            _%suffix-tail129395%_))
                                        (let* ((_%$%t129510129519%_
                                                _%t129509%_)
                                               (_%$%E129513129523%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%t129510129519%_
                                                         '([])
                                                         '([a . r]))
                                                  '#!void)))
                                          (let ((_%$%K129517129574%_
                                                 (lambda () '#!void))
                                                (_%$%K129514129558%_
                                                 (lambda (_%r129527%_
                                                          _%a129528%_)
                                                   (_%tab-set!129399%_
                                                    _%suffix-tail-index129504%_
                                                    _%a129528%_
                                                    _%i129508%_)
                                                   (_%loop129506%_
                                                    (let ((_%x129530%_
                                                           _%i129508%_))
                                                      (if (number? _%x129530%_)
                                                          (let ((_%x129535%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%x129530%_))
                    (declare (not safe))
                    (__1- _%x129535%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/c3
                     'contract:
                     'number?
                     'value:
                     _%x129530%_)
                    '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r129527%_))))
                                            (let ((_%$%try-match129512129570%_
                                                   (lambda ()
                                                     (if (pair? _%$%t129510129519%_)
                                                         (let ((_%$%tl129516129563%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%t129510129519%_)))
                       (_%$%hd129515129561%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%t129510129519%_))))
                   (let ((_%a129566%_ _%$%hd129515129561%_)
                         (_%r129568%_ _%$%tl129516129563%_))
                     (_%$%K129514129558%_ _%r129568%_ _%a129566%_)))
                 (_%$%E129513129523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%t129510129519%_)
                                                  '#!void
                                                  (_%$%try-match129512129570%_))))))))
                                 #!void
                                 _g130198_))
                              (_%r-local-order129576%_
                               (let ((__tmp130200
                                      (lambda (_%parent-list129915%_)
                                        (if (null? (cdr _%parent-list129915%_))
                                            '#f
                                            (reverse _%parent-list129915%_)))))
                                 (declare (not safe))
                                 (filter-map__0
                                  __tmp130200
                                  _%parents129347%_)))
                              (_g130201_
                               (let ((_g130202_
                                      (let ((__tmp130204
                                             (lambda (_%cl129578%_)
                                               (for-each
                                                _%increment-ancestor-count129408%_
                                                _%cl129578%_))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp130204
                                         _%r-local-order129576%_))))
                                 #!void
                                 _g130202_))
                              (_g130205_
                               (let ((_g130206_
                                      (set! _%rcandidates129393%_
                                            (let ()
                                              (declare (not safe))
                                              (##append
                                               _%r-local-order129576%_
                                               _%rcandidates129393%_)))))
                                 #!void
                                 _g130206_))
                              (_%remove-suffix-tail-and-reverse129579%_
                               (lambda (_%rcl129789%_)
                                 (let _%u129791%_ ((_%cl-rhead129793%_
                                                    _%rcl129789%_)
                                                   (_%suffix-pos129794%_ '-1))
                                   (let* ((_%$%cl-rhead129795129804%_
                                           _%cl-rhead129793%_)
                                          (_%$%E129798129808%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%cl-rhead129795129804%_
                                                    '([])
                                                    '([c . clrh]))
                                             '#!void)))
                                     (let ((_%$%K129802129912%_
                                            (lambda () '()))
                                           (_%$%K129799129896%_
                                            (lambda (_%clrh129812%_
                                                     _%c129813%_)
                                              (let ((_%p129815%_
                                                     (_%tab-ref129398%_
                                                      _%suffix-tail-index129504%_
                                                      _%c129813%_
                                                      '#f)))
                                                (letrec ((_%err2129817%_
                                                          (lambda _%a129862%_
                                                            (apply _%err129403%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'reverse-candidate-list:
                           (_%get-names129402%_ _%rcl129789%_)
                           'suffix-tail-index:
                           (map (lambda (_%$%e129863129865%_)
                                  (let* ((_%$%$%e129863129867129874%_
                                          _%$%e129863129865%_)
                                         (_%$%E129869129878%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%$%e129863129867129874%_
                                                   '([a . i]))
                                            '#!void))
                                         (_%$%K129870129884%_
                                          (lambda (_%i129881%_ _%a129882%_)
                                            (cons (_%get-name129382%_
                                                   _%a129882%_)
                                                  _%i129881%_))))
                                    (if (pair? _%$%$%e129863129867129874%_)
                                        (let ((_%$%hd129871129887%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%$%e129863129867129874%_)))
                                              (_%$%tl129872129889%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%$%e129863129867129874%_))))
                                          (let* ((_%a129892%_
                                                  _%$%hd129871129887%_)
                                                 (_%i129894%_
                                                  _%$%tl129872129889%_))
                                            (_%$%K129870129884%_
                                             _%i129894%_
                                             _%a129892%_)))
                                        (_%$%E129869129878%_))))
                                (_%tab->list129401%_
                                 _%suffix-tail-index129504%_))
                           'c:
                           (_%get-name129382%_ _%c129813%_)
                           'p:
                           _%p129815%_
                           'suffix-pos:
                           _%suffix-pos129794%_
                           _%a129862%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%p129815%_
                                                      (if (> _%p129815%_
                                                             _%suffix-pos129794%_)
                                                          (_%u129791%_
                                                           _%clrh129812%_
                                                           _%p129815%_)
                                                          (_%err2129817%_
                                                           'ancestor-out-of-order-vs-suffix-tail:
                                                           (_%get-name129382%_
                                                            _%c129813%_)))
                                                      (let ((_g130208_
                                                             (let* ((_%pred129824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g129819129821%_)
                               (_%tab-ref129398%_
                                _%suffix-tail-index129504%_
                                _%$%g129819129821%_
                                '#f)))
                            (_%rhead129827%_ _%clrh129812%_)
                            (_%tail129830%_ (cons _%c129813%_ '()))
                            (_%pred129835%_ _%pred129824%_))
                       (declare (not safe))
                       (__append-reverse-until
                        _%pred129835%_
                        _%rhead129827%_
                        _%tail129830%_))))
                (begin
                  (let ((_g130209_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g130208_)
                               (##values-length _g130208_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g130209_ 2)))
                        (error "Context expects 2 values" _g130209_)))
                  (let ((_%clrh2129857%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g130208_ 0)))
                        (_%h129858%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g130208_ 1))))
                    (if (null? _%clrh2129857%_)
                        _%h129858%_
                        (_%err2129817%_
                         'precedence-list-tail:
                         (_%get-names129402%_ _%h129858%_)
                         'ancestor-out-of-order-vs-suffix-tail:
                         (_%get-name129382%_ (car _%clrh2129857%_))
                         'precedence-list-head:
                         (_%get-names129402%_
                          (reverse _%clrh2129857%_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match129797129908%_
                                              (lambda ()
                                                (if (pair? _%$%cl-rhead129795129804%_)
                                                    (let ((_%$%tl129801129901%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%cl-rhead129795129804%_)))
                                                          (_%$%hd129800129899%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%cl-rhead129795129804%_))))
                                                      (let ((_%c129904%_
                                                             _%$%hd129800129899%_)
                                                            (_%clrh129906%_
                                                             _%$%tl129801129901%_))
                                                        (_%$%K129799129896%_
                                                         _%clrh129906%_
                                                         _%c129904%_)))
                                                    (_%$%E129798129808%_)))))
                                         (if (null? _%$%cl-rhead129795129804%_)
                                             (_%$%K129802129912%_)
                                             (_%$%try-match129797129908%_))))))))
                              (_%candidates129580%_
                               (reverse (let ((__tmp130210
                                               (let ()
                                                 (declare (not safe))
                                                 (##map _%remove-suffix-tail-and-reverse129579%_
                                                        _%rcandidates129393%_))))
                                          (declare (not safe))
                                          (remove-nulls! __tmp130210))))
                              (_g130211_
                               (let ((_g130212_
                                      (let ((__tmp130214
                                             (lambda (_%cl129582%_)
                                               (_%decrement-ancestor-count129409%_
                                                (car _%cl129582%_)))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp130214
                                         _%candidates129580%_))))
                                 #!void
                                 _g130212_))
                              (_%c3-select-next129583%_
                               (lambda (_%tails129745%_)
                                 (let _%loop129747%_ ((_%ts129749%_
                                                       _%tails129745%_))
                                   (let* ((_%$%ts129750129760%_ _%ts129749%_)
                                          (_%$%else129752129768%_
                                           (lambda ()
                                             (_%err129403%_
                                              'c3-select-next:
                                              'fail)))
                                          (_%$%K129754129774%_
                                           (lambda (_%rts129771%_ _%c129772%_)
                                             (if (zero? (_%get-ancestor-count129407%_
                                                         _%c129772%_))
                                                 _%c129772%_
                                                 (_%loop129747%_
                                                  _%rts129771%_)))))
                                     (if (pair? _%$%ts129750129760%_)
                                         (let ((_%$%hd129755129777%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%ts129750129760%_)))
                                               (_%$%tl129756129779%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%ts129750129760%_))))
                                           (if (pair? _%$%hd129755129777%_)
                                               (let* ((_%$%hd129757129782%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd129755129777%_)))
                                                      (_%c129785%_
                                                       _%$%hd129757129782%_)
                                                      (_%rts129787%_
                                                       _%$%tl129756129779%_))
                                                 (_%$%K129754129774%_
                                                  _%rts129787%_
                                                  _%c129785%_))
                                               (_%$%else129752129768%_)))
                                         (_%$%else129752129768%_))))))
                              (_%remove-next!129584%_
                               (lambda (_%next129635%_ _%tails129636%_)
                                 (let _%loop129638%_ ((_%t129640%_
                                                       _%tails129636%_))
                                   (let* ((_%$%t129641129656%_ _%t129640%_)
                                          (_%$%E129645129660%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t129641129656%_
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
                                     (let ((_%$%K129650129722%_
                                            (lambda (_%rr129685%_
                                                     _%tl129686%_
                                                     _%hd129687%_)
                                              (let* ((_%$%tl129688129697%_
                                                      _%tl129686%_)
                                                     (_%$%E129691129701%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%tl129688129697%_
                                                               '([c . _])
                                                               '(_))
                                                        '#!void)))
                                                (let ((_%$%K129693129714%_
                                                       (lambda (_%c129712%_)
                                                         (_%decrement-ancestor-count129409%_
                                                          _%c129712%_)))
                                                      (_%$%K129692129706%_
                                                       (lambda () '#!void)))
                                                  (if (pair? _%$%tl129688129697%_)
                                                      (let* ((_%$%hd129694129717%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl129688129697%_)))
                     (_%c129720%_ _%$%hd129694129717%_))
                (_%decrement-ancestor-count129409%_ _%c129720%_))
              '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (set-car!
                                               _%t129640%_
                                               _%tl129686%_)
                                              (_%loop129638%_ _%rr129685%_)))
                                           (_%$%K129647129674%_
                                            (lambda (_%rr129672%_)
                                              (_%loop129638%_ _%rr129672%_)))
                                           (_%$%K129646129665%_
                                            (lambda () _%tails129636%_)))
                                       (if (pair? _%$%t129641129656%_)
                                           (let ((_%$%tl129652129727%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%t129641129656%_)))
                                                 (_%$%hd129651129725%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%t129641129656%_))))
                                             (if (pair? _%$%hd129651129725%_)
                                                 (let ((_%$%tl129654129734%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd129651129725%_)))
                                                       (_%$%hd129653129732%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd129651129725%_))))
                                                   (if (_%eq129380%_
                                                        _%next129635%_
                                                        _%$%hd129653129732%_)
                                                       (let ((_%hd129730%_
                                                              _%$%hd129651129725%_)
                                                             (_%tl129741%_
                                                              _%$%tl129654129734%_)
                                                             (_%rr129743%_
                                                              _%$%tl129652129727%_))
                                                         (_%$%K129650129722%_
                                                          _%rr129743%_
                                                          _%tl129741%_
                                                          _%hd129730%_))
                                                       (let ((_%rr129680%_
                                                              _%$%tl129652129727%_))
                                                         (_%loop129638%_
                                                          _%rr129680%_))))
                                                 (let ((_%rr129680%_
                                                        _%$%tl129652129727%_))
                                                   (_%loop129638%_
                                                    _%rr129680%_))))
                                           (_%$%K129646129665%_)))))))
                              (_%precedence-list129585%_
                               (let _%c3loop129587%_ ((_%rhead129589%_
                                                       (reverse _%head129346%_))
                                                      (_%tails129590%_
                                                       _%candidates129580%_))
                                 (let* ((_%$%tails129591129601%_
                                         _%tails129590%_)
                                        (_%$%else129594129612%_
                                         (lambda ()
                                           (let ((_%next129609%_
                                                  (_%c3-select-next129583%_
                                                   _%tails129590%_)))
                                             (_%c3loop129587%_
                                              (cons _%next129609%_
                                                    _%rhead129589%_)
                                              (let ((__tmp130215
                                                     (_%remove-next!129584%_
                                                      _%next129609%_
                                                      _%tails129590%_)))
                                                (declare (not safe))
                                                (remove-nulls!
                                                 __tmp130215)))))))
                                   (let ((_%$%K129599129632%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead129589%_
                                             _%suffix-tail129395%_)))
                                         (_%$%K129596129618%_
                                          (lambda (_%tail129616%_)
                                            (append-reverse
                                             _%rhead129589%_
                                             (append _%tail129616%_
                                                     _%suffix-tail129395%_)))))
                                     (let ((_%$%try-match129593129628%_
                                            (lambda ()
                                              (if (pair? _%$%tails129591129601%_)
                                                  (let ((_%$%tl129598129623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails129591129601%_)))
                                                        (_%$%hd129597129621%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails129591129601%_))))
                                                    (if (null? _%$%tl129598129623%_)
                                                        (let ((_%tail129626%_
                                                               _%$%hd129597129621%_))
                                                          (_%$%K129596129618%_
                                                           _%tail129626%_))
                                                        (_%$%else129594129612%_)))
                                                  (_%$%else129594129612%_)))))
                                       (if (null? _%$%tails129591129601%_)
                                           (_%$%K129599129632%_)
                                           (_%$%try-match129593129628%_))))))))
                      (values _%precedence-list129585%_
                              _%suffix129394%_))))))))
    (define c4-linearize*__@
      (lambda (_%@@keywords130069%_ . _%args130070%_)
        (apply c4-linearize*__%
               _%@@keywords130069%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130069%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130069%_
                  'suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130069%_
                  'super-suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords130069%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords130069%_
                  'get-name:
                  absent-value))
               _%args130070%_)))
    (define c4-linearize*
      (lambda _%$%args129338130076%_
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
               _%$%args129338130076%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list129287%_
               _%direct-slot-list129288%_
               _%mixin-slot-names129289%_
               _%result129290%_)
        (let* ((_%next-slot129292%_ '1)
               (_%slot-table129294%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots129296%_ (cons 'class '()))
               (_%process-slot129321%_
                (lambda (_%slot129298%_)
                  (if (symbol? _%slot129298%_)
                      '#!void
                      (error '"invalid slot name" _%slot129298%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table129294%_
                              _%slot129298%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table129294%_
                           _%slot129298%_
                           _%next-slot129292%_))
                        (let ((__tmp130216
                               (let ((_%sym129300%_ _%slot129298%_))
                                 (if (symbol? _%sym129300%_)
                                     (let ((_%sym129305%_ _%sym129300%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym129305%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym129300%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table129294%_
                           __tmp130216
                           _%next-slot129292%_))
                        (set! _%r-slots129296%_
                              (cons _%slot129298%_ _%r-slots129296%_))
                        (set! _%next-slot129292%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot129292%_ '1))))
                      '#!void)))
               (_%process-slots129327%_
                (lambda (_%$%g129322129324%_)
                  (for-each _%process-slot129321%_ _%$%g129322129324%_))))
          (let ((__tmp130218
                 (lambda (_%mixin129330%_)
                   (_%process-slots129327%_
                    (_%mixin-slot-names129289%_ _%mixin129330%_))))
                (__tmp130217 (reverse _%precedence-list129287%_)))
            (declare (not safe))
            (##for-each __tmp130218 __tmp130217))
          (_%process-slots129327%_ _%direct-slot-list129288%_)
          (_%result129290%_
           (reverse! _%r-slots129296%_)
           _%slot-table129294%_))))))
