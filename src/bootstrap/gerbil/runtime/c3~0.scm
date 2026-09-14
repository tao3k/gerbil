(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/c3::timestamp 1789371521)
  (begin
    (define c4-linearize__%
      (lambda (_%@@keywords129924%_
               _%$%get-precedence-list129918129925%_
               _%$%struct?129919129926%_
               _%$%eq129920129927%_
               _%$%get-name129921129928%_
               _%rhead129929%_
               _%supers129930%_)
        (let* ((_%get-precedence-list129932%_
                (if (eq? _%$%get-precedence-list129918129925%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list129918129925%_))
               (_%struct?129936%_
                (if (eq? _%$%struct?129919129926%_ absent-value)
                    (lambda (_%_129934%_) '#f)
                    _%$%struct?129919129926%_))
               (_%eq129938%_
                (if (eq? _%$%eq129920129927%_ absent-value)
                    eq?
                    _%$%eq129920129927%_))
               (_%get-name129940%_
                (if (eq? _%$%get-name129921129928%_ absent-value)
                    identity
                    _%$%get-name129921129928%_)))
          (c4-linearize*__%
           '#f
           _%get-precedence-list129932%_
           _%struct?129936%_
           absent-value
           _%eq129938%_
           _%get-name129940%_
           (reverse _%rhead129929%_)
           (list _%supers129930%_)))))
    (define c4-linearize__@
      (lambda (_%@@keywords129946%_ . _%args129947%_)
        (apply c4-linearize__%
               _%@@keywords129946%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords129946%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords129946%_
                  'struct:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords129946%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords129946%_
                  'get-name:
                  absent-value))
               _%args129947%_)))
    (define c4-linearize
      (lambda _%$%args129922129953%_
        (apply keyword-dispatch
               '#(#f get-name: struct: get-precedence-list: #f eq:)
               c4-linearize__@
               _%$%args129922129953%_)))
    (define c4-linearize*__%
      (lambda (_%@@keywords129178%_
               _%$%get-precedence-list129171129179%_
               _%$%suffix?129172129180%_
               _%$%super-suffix129173129181%_
               _%$%eq129174129182%_
               _%$%get-name129175129183%_
               _%head129184%_
               _%parents129185%_)
        (let* ((_%get-precedence-list129187%_
                (if (eq? _%$%get-precedence-list129171129179%_ absent-value)
                    (error '"Missing required keyword argument"
                           'get-precedence-list:)
                    _%$%get-precedence-list129171129179%_))
               (_%suffix?129189%_
                (if (eq? _%$%suffix?129172129180%_ absent-value)
                    (error '"Missing required keyword argument" 'suffix:)
                    _%$%suffix?129172129180%_))
               (_%super-suffix129216%_
                (if (eq? _%$%super-suffix129173129181%_ absent-value)
                    (lambda (_%x129191%_)
                      (let* ((_%pred129193%_ _%suffix?129189%_)
                             (_%lst129196%_
                              (cdr (_%get-precedence-list129187%_
                                    _%x129191%_))))
                        (if (procedure? _%pred129193%_)
                            (let ((_%pred129201%_ _%pred129193%_))
                              (declare (not safe))
                              (__find _%pred129201%_ _%lst129196%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/c3
                               'contract:
                               'procedure?
                               'value:
                               _%pred129193%_)
                              '#!void))))
                    _%$%super-suffix129173129181%_))
               (_%eq129218%_
                (if (eq? _%$%eq129174129182%_ absent-value)
                    eq?
                    _%$%eq129174129182%_))
               (_%get-name129220%_
                (if (eq? _%$%get-name129175129183%_ absent-value)
                    identity
                    _%$%get-name129175129183%_)))
          (set! _%parents129185%_
                (let ()
                  (declare (not safe))
                  (remove-nulls! _%parents129185%_)))
          (if (null? _%parents129185%_)
              (values _%head129184%_ '#f)
              (if (and (null? (cdr _%parents129185%_))
                       (null? (cdar _%parents129185%_)))
                  (let* ((_%parent129225%_ (caar _%parents129185%_))
                         (_%pl129227%_
                          (_%get-precedence-list129187%_ _%parent129225%_)))
                    (values (append _%head129184%_ _%pl129227%_)
                            (if (_%suffix?129189%_ _%parent129225%_)
                                _%parent129225%_
                                (_%super-suffix129216%_ _%parent129225%_))))
                  (let ((_%rcandidates129231%_ '())
                        (_%suffix129232%_ '#f)
                        (_%suffix-tail129233%_ '()))
                    (letrec* ((_g130029_
                               (let ((_g130030_
                                      (if (eq? _%eq129218%_ eq?)
                                          (values (lambda ()
                                                    (make-table 'test: eq?))
                                                  table-ref
                                                  table-set!
                                                  table-set!
                                                  table->list)
                                          (if (eq? _%eq129218%_ eqv?)
                                              (values (lambda ()
                                                        (make-table
                                                         'test:
                                                         eqv?))
                                                      table-ref
                                                      table-set!
                                                      table-set!
                                                      table->list)
                                              (if (eq? _%eq129218%_ equal?)
                                                  (values (lambda ()
                                                            (make-table
                                                             'test:
                                                             equal?))
                                                          table-ref
                                                          table-set!
                                                          table-set!
                                                          table->list)
                                                  (values (lambda ()
                                                            (letrec* ((_%this129836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons '#f '())))
                      (let ()
                        (declare (not safe))
                        (##set-car! _%this129836%_ _%this129836%_))
                      _%this129836%_))
                  (lambda (_%tab129838%_ _%key129839%_ _%default129840%_)
                    (let ((_%$e129842%_
                           (assoc _%key129839%_
                                  (cdr _%tab129838%_)
                                  _%eq129218%_)))
                      (if _%$e129842%_ (cdr _%$e129842%_) _%default129840%_)))
                  (lambda (_%tab129846%_ _%key129847%_ _%value129848%_)
                    (let ((_%$e129850%_
                           (assoc _%key129847%_
                                  (cdr _%tab129846%_)
                                  _%eq129218%_)))
                      (if _%$e129850%_
                          (set-cdr! _%$e129850%_ _%value129848%_)
                          (let ((_%tail129856%_
                                 (cons (cons _%key129847%_ _%value129848%_)
                                       '())))
                            (set-cdr! (car _%tab129846%_) _%tail129856%_)
                            (set-car! _%tab129846%_ _%tail129856%_)))))
                  (lambda (_%tab129858%_ _%key129859%_)
                    (let _%lp129861%_ ((_%prev129863%_ _%tab129858%_)
                                       (_%rest129864%_ (cdr _%tab129858%_)))
                      (let* ((_%$%rest129865129874%_ _%rest129864%_)
                             (_%$%E129868129878%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%rest129865129874%_
                                       '([])
                                       '([entry . tail]))
                                '#!void)))
                        (let ((_%$%K129872129901%_ (lambda () '#!void))
                              (_%$%K129869129885%_
                               (lambda (_%tail129882%_ _%entry129883%_)
                                 (if (_%eq129218%_
                                      _%key129859%_
                                      (car _%entry129883%_))
                                     (begin
                                       (set-cdr! _%prev129863%_ _%tail129882%_)
                                       (if (null? _%tail129882%_)
                                           (set-car!
                                            _%tab129858%_
                                            _%prev129863%_)
                                           '#!void))
                                     (_%lp129861%_
                                      _%rest129864%_
                                      _%tail129882%_)))))
                          (let ((_%$%try-match129867129897%_
                                 (lambda ()
                                   (if (pair? _%$%rest129865129874%_)
                                       (let ((_%$%tl129871129890%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%rest129865129874%_)))
                                             (_%$%hd129870129888%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%rest129865129874%_))))
                                         (let ((_%entry129893%_
                                                _%$%hd129870129888%_)
                                               (_%tail129895%_
                                                _%$%tl129871129890%_))
                                           (_%$%K129869129885%_
                                            _%tail129895%_
                                            _%entry129893%_)))
                                       (_%$%E129868129878%_)))))
                            (if (null? _%$%rest129865129874%_)
                                '#!void
                                (_%$%try-match129867129897%_)))))))
                  cdr))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 #!void
                                 _g130030_))
                              (_%make-tab129235%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130029_ 0)))
                              (_%tab-ref129236%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130029_ 1)))
                              (_%tab-set!129237%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130029_ 2)))
                              (_%tab-remove!129238%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130029_ 3)))
                              (_%tab->list129239%_
                               (let ()
                                 (declare (not safe))
                                 (##values-ref _g130029_ 4)))
                              (_%get-names129240%_
                               (lambda (_%lst129826%_)
                                 (map _%get-name129220%_ _%lst129826%_)))
                              (_%err129241%_
                               (lambda _%a129824%_
                                 (apply error
                                        '"Inconsistent precedence graph"
                                        'head:
                                        (_%get-names129240%_ _%head129184%_)
                                        'parents:
                                        (map _%get-names129240%_
                                             _%parents129185%_)
                                        'precedence-lists:
                                        (let ((__tmp130031
                                               (map _%get-precedence-list129187%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (foldl__0
                                                       append
                                                       '()
                                                       _%parents129185%_)))))
                                          (declare (not safe))
                                          (##map _%get-names129240%_
                                                 __tmp130031))
                                        'common-suffix-tail:
                                        (_%get-names129240%_
                                         _%suffix-tail129233%_)
                                        'rcandidates:
                                        (let ()
                                          (declare (not safe))
                                          (##map _%get-names129240%_
                                                 _%rcandidates129231%_))
                                        _%a129824%_)))
                              (_%super-suffix?129242%_
                               (lambda (_%s1129811%_ _%s2129812%_)
                                 (let ((_%$e129814%_ (not _%s2129812%_)))
                                   (if _%$e129814%_
                                       _%$e129814%_
                                       (let _%loop129817%_ ((_%s129819%_
                                                             _%s1129811%_))
                                         (if _%s129819%_
                                             (let ((_%$e129821%_
                                                    (_%eq129218%_
                                                     _%s129819%_
                                                     _%s2129812%_)))
                                               (if _%$e129821%_
                                                   _%$e129821%_
                                                   (_%loop129817%_
                                                    (_%super-suffix129216%_
                                                     _%s129819%_))))
                                             '#f))))))
                              (_%merge-suffix129243%_
                               (lambda (_%s1129795%_ _%s2129796%_)
                                 (if _%s2129796%_
                                     (if _%s1129795%_
                                         (let _%loop129801%_ ((_%t1129803%_
                                                               _%s1129795%_)
                                                              (_%t2129804%_
                                                               _%s2129796%_))
                                           (if _%t1129803%_
                                               (if _%t2129804%_
                                                   (if (_%eq129218%_
                                                        _%t1129803%_
                                                        _%s2129796%_)
                                                       _%s1129795%_
                                                       (if (_%eq129218%_
                                                            _%t2129804%_
                                                            _%s1129795%_)
                                                           _%s2129796%_
                                                           (_%loop129801%_
                                                            (_%super-suffix129216%_
                                                             _%t1129803%_)
                                                            (_%super-suffix129216%_
                                                             _%t2129804%_))))
                                                   (if (_%super-suffix?129242%_
                                                        _%t1129803%_
                                                        _%s2129796%_)
                                                       _%s1129795%_
                                                       (_%err129241%_
                                                        'suffix-incompatibility:
                                                        (cons (_%get-name129220%_
                                                               _%s1129795%_)
                                                              (cons (_%get-name129220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%s2129796%_)
                            '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (if (_%super-suffix?129242%_
                                                    _%t2129804%_
                                                    _%s1129795%_)
                                                   _%s2129796%_
                                                   (_%err129241%_
                                                    'suffix-incompatibility:
                                                    (cons (_%get-name129220%_
                                                           _%s1129795%_)
                                                          (cons (_%get-name129220%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%s2129796%_)
                        '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%s2129796%_)
                                     _%s1129795%_)))
                              (_%ancestor-counts129244%_ (_%make-tab129235%_))
                              (_%get-ancestor-count129245%_
                               (lambda (_%c129793%_)
                                 (_%tab-ref129236%_
                                  _%ancestor-counts129244%_
                                  _%c129793%_
                                  '0)))
                              (_%increment-ancestor-count129246%_
                               (lambda (_%c129775%_)
                                 (_%tab-set!129237%_
                                  _%ancestor-counts129244%_
                                  _%c129775%_
                                  (let ((_%x129777%_
                                         (_%get-ancestor-count129245%_
                                          _%c129775%_)))
                                    (if (number? _%x129777%_)
                                        (let ((_%x129782%_ _%x129777%_))
                                          (declare (not safe))
                                          (__1+ _%x129782%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/c3
                                           'contract:
                                           'number?
                                           'value:
                                           _%x129777%_)
                                          '#!void))))))
                              (_%decrement-ancestor-count129247%_
                               (lambda (_%c129755%_)
                                 (let ((_%count129773%_
                                        (let ((_%x129757%_
                                               (_%get-ancestor-count129245%_
                                                _%c129755%_)))
                                          (if (number? _%x129757%_)
                                              (let ((_%x129762%_ _%x129757%_))
                                                (declare (not safe))
                                                (__1- _%x129762%_))
                                              (begin
                                                (raise-contract-violation-error
                                                 '"contract violation"
                                                 'context:
                                                 'gerbil/runtime/c3
                                                 'contract:
                                                 'number?
                                                 'value:
                                                 _%x129757%_)
                                                '#!void)))))
                                   (if (= '0 _%count129773%_)
                                       (_%tab-remove!129238%_
                                        _%ancestor-counts129244%_
                                        _%c129755%_)
                                       (_%tab-set!129237%_
                                        _%ancestor-counts129244%_
                                        _%c129755%_
                                        _%count129773%_)))))
                              (_g130032_
                               (let ((_g130033_
                                      (for-each
                                       (lambda (_%parent-list129249%_)
                                         (for-each
                                          (lambda (_%parent129251%_)
                                            (if (zero? (_%get-ancestor-count129245%_
                                                        _%parent129251%_))
                                                (let _%loop129253%_ ((_%al129255%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_%get-precedence-list129187%_ _%parent129251%_))
                             (_%r129256%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (letrec ((_%done129258%_
                                                            (lambda ()
                                                              (if (null? _%r129256%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#!void
                          (set! _%rcandidates129231%_
                                (cons _%r129256%_ _%rcandidates129231%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%al129259129268%_
                                                            _%al129255%_)
                                                           (_%$%E129262129272%_
                                                            (lambda ()
                                                              (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%al129259129268%_
                             '([])
                             '([a . ar]))
                      '#!void)))
              (let ((_%$%K129266129339%_ (lambda () (_%done129258%_)))
                    (_%$%K129263129323%_
                     (lambda (_%ar129276%_ _%a129277%_)
                       (if (_%suffix?129189%_ _%a129277%_)
                           (let ((_%ms129279%_
                                  (_%merge-suffix129243%_
                                   _%a129277%_
                                   _%suffix129232%_)))
                             (if (and _%suffix129232%_
                                      (_%eq129218%_
                                       _%ms129279%_
                                       _%suffix129232%_))
                                 '#!void
                                 (begin
                                   (let _%loop2129281%_ ((_%tl129283%_
                                                          _%al129255%_))
                                     (let* ((_%$%tl129284129293%_ _%tl129283%_)
                                            (_%$%E129287129297%_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _%$%tl129284129293%_
                                                      '([])
                                                      '([t . tr]))
                                               '#!void)))
                                       (let ((_%$%K129291129320%_
                                              (lambda () '#!void))
                                             (_%$%K129288129304%_
                                              (lambda (_%tr129301%_
                                                       _%t129302%_)
                                                (if (and _%suffix129232%_
                                                         (_%eq129218%_
                                                          _%t129302%_
                                                          _%suffix129232%_))
                                                    '#!void
                                                    (begin
                                                      (_%increment-ancestor-count129246%_
                                                       _%t129302%_)
                                                      (_%loop2129281%_
                                                       _%tr129301%_))))))
                                         (let ((_%$%try-match129286129316%_
                                                (lambda ()
                                                  (if (pair? _%$%tl129284129293%_)
                                                      (let ((_%$%tl129290129309%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%tl129284129293%_)))
                    (_%$%hd129289129307%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%tl129284129293%_))))
                (let ((_%t129312%_ _%$%hd129289129307%_)
                      (_%tr129314%_ _%$%tl129290129309%_))
                  (_%$%K129288129304%_ _%tr129314%_ _%t129312%_)))
              (_%$%E129287129297%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (null? _%$%tl129284129293%_)
                                               '#!void
                                               (_%$%try-match129286129316%_))))))
                                   (set! _%suffix129232%_ _%a129277%_)
                                   (set! _%suffix-tail129233%_ _%al129255%_)))
                             (_%done129258%_))
                           (begin
                             (_%increment-ancestor-count129246%_ _%a129277%_)
                             (_%loop129253%_
                              _%ar129276%_
                              (cons _%a129277%_ _%r129256%_)))))))
                (let ((_%$%try-match129261129335%_
                       (lambda ()
                         (if (pair? _%$%al129259129268%_)
                             (let ((_%$%tl129265129328%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%al129259129268%_)))
                                   (_%$%hd129264129326%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%al129259129268%_))))
                               (let ((_%a129331%_ _%$%hd129264129326%_)
                                     (_%ar129333%_ _%$%tl129265129328%_))
                                 (_%$%K129263129323%_
                                  _%ar129333%_
                                  _%a129331%_)))
                             (_%$%E129262129272%_)))))
                  (if (null? _%$%al129259129268%_)
                      (_%done129258%_)
                      (_%$%try-match129261129335%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '#!void))
                                          _%parent-list129249%_))
                                       _%parents129185%_)))
                                 #!void
                                 _g130033_))
                              (_%suffix-tail-index129342%_
                               (_%make-tab129235%_))
                              (_g130035_
                               (let ((_g130036_
                                      (let _%loop129344%_ ((_%i129346%_
                                                            (length _%suffix-tail129233%_))
                                                           (_%t129347%_
                                                            _%suffix-tail129233%_))
                                        (let* ((_%$%t129348129357%_
                                                _%t129347%_)
                                               (_%$%E129351129361%_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _%$%t129348129357%_
                                                         '([])
                                                         '([a . r]))
                                                  '#!void)))
                                          (let ((_%$%K129355129412%_
                                                 (lambda () '#!void))
                                                (_%$%K129352129396%_
                                                 (lambda (_%r129365%_
                                                          _%a129366%_)
                                                   (_%tab-set!129237%_
                                                    _%suffix-tail-index129342%_
                                                    _%a129366%_
                                                    _%i129346%_)
                                                   (_%loop129344%_
                                                    (let ((_%x129368%_
                                                           _%i129346%_))
                                                      (if (number? _%x129368%_)
                                                          (let ((_%x129373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%x129368%_))
                    (declare (not safe))
                    (__1- _%x129373%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/runtime/c3
                     'contract:
                     'number?
                     'value:
                     _%x129368%_)
                    '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r129365%_))))
                                            (let ((_%$%try-match129350129408%_
                                                   (lambda ()
                                                     (if (pair? _%$%t129348129357%_)
                                                         (let ((_%$%tl129354129401%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##cdr _%$%t129348129357%_)))
                       (_%$%hd129353129399%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%t129348129357%_))))
                   (let ((_%a129404%_ _%$%hd129353129399%_)
                         (_%r129406%_ _%$%tl129354129401%_))
                     (_%$%K129352129396%_ _%r129406%_ _%a129404%_)))
                 (_%$%E129351129361%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%t129348129357%_)
                                                  '#!void
                                                  (_%$%try-match129350129408%_))))))))
                                 #!void
                                 _g130036_))
                              (_%r-local-order129414%_
                               (let ((__tmp130038
                                      (lambda (_%parent-list129753%_)
                                        (if (null? (cdr _%parent-list129753%_))
                                            '#f
                                            (reverse _%parent-list129753%_)))))
                                 (declare (not safe))
                                 (filter-map__0
                                  __tmp130038
                                  _%parents129185%_)))
                              (_g130039_
                               (let ((_g130040_
                                      (let ((__tmp130042
                                             (lambda (_%cl129416%_)
                                               (for-each
                                                _%increment-ancestor-count129246%_
                                                _%cl129416%_))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp130042
                                         _%r-local-order129414%_))))
                                 #!void
                                 _g130040_))
                              (_g130043_
                               (let ((_g130044_
                                      (set! _%rcandidates129231%_
                                            (let ()
                                              (declare (not safe))
                                              (##append
                                               _%r-local-order129414%_
                                               _%rcandidates129231%_)))))
                                 #!void
                                 _g130044_))
                              (_%remove-suffix-tail-and-reverse129417%_
                               (lambda (_%rcl129627%_)
                                 (let _%u129629%_ ((_%cl-rhead129631%_
                                                    _%rcl129627%_)
                                                   (_%suffix-pos129632%_ '-1))
                                   (let* ((_%$%cl-rhead129633129642%_
                                           _%cl-rhead129631%_)
                                          (_%$%E129636129646%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%cl-rhead129633129642%_
                                                    '([])
                                                    '([c . clrh]))
                                             '#!void)))
                                     (let ((_%$%K129640129750%_
                                            (lambda () '()))
                                           (_%$%K129637129734%_
                                            (lambda (_%clrh129650%_
                                                     _%c129651%_)
                                              (let ((_%p129653%_
                                                     (_%tab-ref129236%_
                                                      _%suffix-tail-index129342%_
                                                      _%c129651%_
                                                      '#f)))
                                                (letrec ((_%err2129655%_
                                                          (lambda _%a129700%_
                                                            (apply _%err129241%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'reverse-candidate-list:
                           (_%get-names129240%_ _%rcl129627%_)
                           'suffix-tail-index:
                           (map (lambda (_%$%e129701129703%_)
                                  (let* ((_%$%$%e129701129705129712%_
                                          _%$%e129701129703%_)
                                         (_%$%E129707129716%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%$%e129701129705129712%_
                                                   '([a . i]))
                                            '#!void))
                                         (_%$%K129708129722%_
                                          (lambda (_%i129719%_ _%a129720%_)
                                            (cons (_%get-name129220%_
                                                   _%a129720%_)
                                                  _%i129719%_))))
                                    (if (pair? _%$%$%e129701129705129712%_)
                                        (let ((_%$%hd129709129725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%$%e129701129705129712%_)))
                                              (_%$%tl129710129727%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%$%e129701129705129712%_))))
                                          (let* ((_%a129730%_
                                                  _%$%hd129709129725%_)
                                                 (_%i129732%_
                                                  _%$%tl129710129727%_))
                                            (_%$%K129708129722%_
                                             _%i129732%_
                                             _%a129730%_)))
                                        (_%$%E129707129716%_))))
                                (_%tab->list129239%_
                                 _%suffix-tail-index129342%_))
                           'c:
                           (_%get-name129220%_ _%c129651%_)
                           'p:
                           _%p129653%_
                           'suffix-pos:
                           _%suffix-pos129632%_
                           _%a129700%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if _%p129653%_
                                                      (if (> _%p129653%_
                                                             _%suffix-pos129632%_)
                                                          (_%u129629%_
                                                           _%clrh129650%_
                                                           _%p129653%_)
                                                          (_%err2129655%_
                                                           'ancestor-out-of-order-vs-suffix-tail:
                                                           (_%get-name129220%_
                                                            _%c129651%_)))
                                                      (let ((_g130046_
                                                             (let* ((_%pred129662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g129657129659%_)
                               (_%tab-ref129236%_
                                _%suffix-tail-index129342%_
                                _%$%g129657129659%_
                                '#f)))
                            (_%rhead129665%_ _%clrh129650%_)
                            (_%tail129668%_ (cons _%c129651%_ '()))
                            (_%pred129673%_ _%pred129662%_))
                       (declare (not safe))
                       (__append-reverse-until
                        _%pred129673%_
                        _%rhead129665%_
                        _%tail129668%_))))
                (begin
                  (let ((_g130047_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g130046_)
                               (##values-length _g130046_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g130047_ 2)))
                        (error "Context expects 2 values" _g130047_)))
                  (let ((_%clrh2129695%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g130046_ 0)))
                        (_%h129696%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g130046_ 1))))
                    (if (null? _%clrh2129695%_)
                        _%h129696%_
                        (_%err2129655%_
                         'precedence-list-tail:
                         (_%get-names129240%_ _%h129696%_)
                         'ancestor-out-of-order-vs-suffix-tail:
                         (_%get-name129220%_ (car _%clrh2129695%_))
                         'precedence-list-head:
                         (_%get-names129240%_
                          (reverse _%clrh2129695%_)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (let ((_%$%try-match129635129746%_
                                              (lambda ()
                                                (if (pair? _%$%cl-rhead129633129642%_)
                                                    (let ((_%$%tl129639129739%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%cl-rhead129633129642%_)))
                                                          (_%$%hd129638129737%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%cl-rhead129633129642%_))))
                                                      (let ((_%c129742%_
                                                             _%$%hd129638129737%_)
                                                            (_%clrh129744%_
                                                             _%$%tl129639129739%_))
                                                        (_%$%K129637129734%_
                                                         _%clrh129744%_
                                                         _%c129742%_)))
                                                    (_%$%E129636129646%_)))))
                                         (if (null? _%$%cl-rhead129633129642%_)
                                             (_%$%K129640129750%_)
                                             (_%$%try-match129635129746%_))))))))
                              (_%candidates129418%_
                               (reverse (let ((__tmp130048
                                               (let ()
                                                 (declare (not safe))
                                                 (##map _%remove-suffix-tail-and-reverse129417%_
                                                        _%rcandidates129231%_))))
                                          (declare (not safe))
                                          (remove-nulls! __tmp130048))))
                              (_g130049_
                               (let ((_g130050_
                                      (let ((__tmp130052
                                             (lambda (_%cl129420%_)
                                               (_%decrement-ancestor-count129247%_
                                                (car _%cl129420%_)))))
                                        (declare (not safe))
                                        (##for-each
                                         __tmp130052
                                         _%candidates129418%_))))
                                 #!void
                                 _g130050_))
                              (_%c3-select-next129421%_
                               (lambda (_%tails129583%_)
                                 (let _%loop129585%_ ((_%ts129587%_
                                                       _%tails129583%_))
                                   (let* ((_%$%ts129588129598%_ _%ts129587%_)
                                          (_%$%else129590129606%_
                                           (lambda ()
                                             (_%err129241%_
                                              'c3-select-next:
                                              'fail)))
                                          (_%$%K129592129612%_
                                           (lambda (_%rts129609%_ _%c129610%_)
                                             (if (zero? (_%get-ancestor-count129245%_
                                                         _%c129610%_))
                                                 _%c129610%_
                                                 (_%loop129585%_
                                                  _%rts129609%_)))))
                                     (if (pair? _%$%ts129588129598%_)
                                         (let ((_%$%hd129593129615%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%ts129588129598%_)))
                                               (_%$%tl129594129617%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%ts129588129598%_))))
                                           (if (pair? _%$%hd129593129615%_)
                                               (let* ((_%$%hd129595129620%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd129593129615%_)))
                                                      (_%c129623%_
                                                       _%$%hd129595129620%_)
                                                      (_%rts129625%_
                                                       _%$%tl129594129617%_))
                                                 (_%$%K129592129612%_
                                                  _%rts129625%_
                                                  _%c129623%_))
                                               (_%$%else129590129606%_)))
                                         (_%$%else129590129606%_))))))
                              (_%remove-next!129422%_
                               (lambda (_%next129473%_ _%tails129474%_)
                                 (let _%loop129476%_ ((_%t129478%_
                                                       _%tails129474%_))
                                   (let* ((_%$%t129479129494%_ _%t129478%_)
                                          (_%$%E129483129498%_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _%$%t129479129494%_
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
                                     (let ((_%$%K129488129560%_
                                            (lambda (_%rr129523%_
                                                     _%tl129524%_
                                                     _%hd129525%_)
                                              (let* ((_%$%tl129526129535%_
                                                      _%tl129524%_)
                                                     (_%$%E129529129539%_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _%$%tl129526129535%_
                                                               '([c . _])
                                                               '(_))
                                                        '#!void)))
                                                (let ((_%$%K129531129552%_
                                                       (lambda (_%c129550%_)
                                                         (_%decrement-ancestor-count129247%_
                                                          _%c129550%_)))
                                                      (_%$%K129530129544%_
                                                       (lambda () '#!void)))
                                                  (if (pair? _%$%tl129526129535%_)
                                                      (let* ((_%$%hd129532129555%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%tl129526129535%_)))
                     (_%c129558%_ _%$%hd129532129555%_))
                (_%decrement-ancestor-count129247%_ _%c129558%_))
              '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (set-car!
                                               _%t129478%_
                                               _%tl129524%_)
                                              (_%loop129476%_ _%rr129523%_)))
                                           (_%$%K129485129512%_
                                            (lambda (_%rr129510%_)
                                              (_%loop129476%_ _%rr129510%_)))
                                           (_%$%K129484129503%_
                                            (lambda () _%tails129474%_)))
                                       (if (pair? _%$%t129479129494%_)
                                           (let ((_%$%tl129490129565%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%t129479129494%_)))
                                                 (_%$%hd129489129563%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%t129479129494%_))))
                                             (if (pair? _%$%hd129489129563%_)
                                                 (let ((_%$%tl129492129572%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%hd129489129563%_)))
                                                       (_%$%hd129491129570%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%hd129489129563%_))))
                                                   (if (_%eq129218%_
                                                        _%next129473%_
                                                        _%$%hd129491129570%_)
                                                       (let ((_%hd129568%_
                                                              _%$%hd129489129563%_)
                                                             (_%tl129579%_
                                                              _%$%tl129492129572%_)
                                                             (_%rr129581%_
                                                              _%$%tl129490129565%_))
                                                         (_%$%K129488129560%_
                                                          _%rr129581%_
                                                          _%tl129579%_
                                                          _%hd129568%_))
                                                       (let ((_%rr129518%_
                                                              _%$%tl129490129565%_))
                                                         (_%loop129476%_
                                                          _%rr129518%_))))
                                                 (let ((_%rr129518%_
                                                        _%$%tl129490129565%_))
                                                   (_%loop129476%_
                                                    _%rr129518%_))))
                                           (_%$%K129484129503%_)))))))
                              (_%precedence-list129423%_
                               (let _%c3loop129425%_ ((_%rhead129427%_
                                                       (reverse _%head129184%_))
                                                      (_%tails129428%_
                                                       _%candidates129418%_))
                                 (let* ((_%$%tails129429129439%_
                                         _%tails129428%_)
                                        (_%$%else129432129450%_
                                         (lambda ()
                                           (let ((_%next129447%_
                                                  (_%c3-select-next129421%_
                                                   _%tails129428%_)))
                                             (_%c3loop129425%_
                                              (cons _%next129447%_
                                                    _%rhead129427%_)
                                              (let ((__tmp130053
                                                     (_%remove-next!129422%_
                                                      _%next129447%_
                                                      _%tails129428%_)))
                                                (declare (not safe))
                                                (remove-nulls!
                                                 __tmp130053)))))))
                                   (let ((_%$%K129437129470%_
                                          (lambda ()
                                            (append-reverse
                                             _%rhead129427%_
                                             _%suffix-tail129233%_)))
                                         (_%$%K129434129456%_
                                          (lambda (_%tail129454%_)
                                            (append-reverse
                                             _%rhead129427%_
                                             (append _%tail129454%_
                                                     _%suffix-tail129233%_)))))
                                     (let ((_%$%try-match129431129466%_
                                            (lambda ()
                                              (if (pair? _%$%tails129429129439%_)
                                                  (let ((_%$%tl129436129461%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tails129429129439%_)))
                                                        (_%$%hd129435129459%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tails129429129439%_))))
                                                    (if (null? _%$%tl129436129461%_)
                                                        (let ((_%tail129464%_
                                                               _%$%hd129435129459%_))
                                                          (_%$%K129434129456%_
                                                           _%tail129464%_))
                                                        (_%$%else129432129450%_)))
                                                  (_%$%else129432129450%_)))))
                                       (if (null? _%$%tails129429129439%_)
                                           (_%$%K129437129470%_)
                                           (_%$%try-match129431129466%_))))))))
                      (values _%precedence-list129423%_
                              _%suffix129232%_))))))))
    (define c4-linearize*__@
      (lambda (_%@@keywords129907%_ . _%args129908%_)
        (apply c4-linearize*__%
               _%@@keywords129907%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords129907%_
                  'get-precedence-list:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords129907%_
                  'suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords129907%_
                  'super-suffix:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref _%@@keywords129907%_ 'eq: absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords129907%_
                  'get-name:
                  absent-value))
               _%args129908%_)))
    (define c4-linearize*
      (lambda _%$%args129176129914%_
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
               _%$%args129176129914%_)))
    (define c4-compute-class-slots
      (lambda (_%precedence-list129125%_
               _%direct-slot-list129126%_
               _%mixin-slot-names129127%_
               _%result129128%_)
        (let* ((_%next-slot129130%_ '1)
               (_%slot-table129132%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots129134%_ (cons 'class '()))
               (_%process-slot129159%_
                (lambda (_%slot129136%_)
                  (if (symbol? _%slot129136%_)
                      '#!void
                      (error '"invalid slot name" _%slot129136%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table129132%_
                              _%slot129136%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table129132%_
                           _%slot129136%_
                           _%next-slot129130%_))
                        (let ((__tmp130054
                               (let ((_%sym129138%_ _%slot129136%_))
                                 (if (symbol? _%sym129138%_)
                                     (let ((_%sym129143%_ _%sym129138%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym129143%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/c3
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym129138%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table129132%_
                           __tmp130054
                           _%next-slot129130%_))
                        (set! _%r-slots129134%_
                              (cons _%slot129136%_ _%r-slots129134%_))
                        (set! _%next-slot129130%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot129130%_ '1))))
                      '#!void)))
               (_%process-slots129165%_
                (lambda (_%$%g129160129162%_)
                  (for-each _%process-slot129159%_ _%$%g129160129162%_))))
          (let ((__tmp130056
                 (lambda (_%mixin129168%_)
                   (_%process-slots129165%_
                    (_%mixin-slot-names129127%_ _%mixin129168%_))))
                (__tmp130055 (reverse _%precedence-list129125%_)))
            (declare (not safe))
            (##for-each __tmp130056 __tmp130055))
          (_%process-slots129165%_ _%direct-slot-list129126%_)
          (_%result129128%_
           (reverse! _%r-slots129134%_)
           _%slot-table129132%_))))))
