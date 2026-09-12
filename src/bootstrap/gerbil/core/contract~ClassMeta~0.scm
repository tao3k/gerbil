(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/core/contract~ClassMeta::timestamp 1789188899)
  (begin
    (define gerbil/core/contract~ClassMeta#!class-precedence-list
      (lambda (_%klass62666%_)
        (let ((_%$e62668%_
               (let ((__obj105220 _%klass62666%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj105220
                        'gerbil/core#class-type-info::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj105220 '7 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#class-type-info::t
                      __obj105220
                      'precedence-list)))))
          (if _%$e62668%_
              _%$e62668%_
              (let ((_g105279_
                     (c4-linearize
                      '()
                      (let ((__obj105221 _%klass62666%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj105221
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj105221
                               '5
                               '#f
                               '#f))
                            (class-slot-ref
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj105221
                             'super)))
                      'get-precedence-list:
                      (lambda (_%klass-id62672%_)
                        (cons _%klass-id62672%_
                              (gerbil/core/contract~ClassMeta#!class-precedence-list
                               (gx#syntax-local-value _%klass-id62672%_))))
                      'struct:
                      (lambda (_%klass-id62674%_)
                        (let ((__obj105222
                               (gx#syntax-local-value _%klass-id62674%_)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 __obj105222
                                 'gerbil/core#class-type-info::t))
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 __obj105222
                                 '9
                                 '#f
                                 '#f))
                              (class-slot-ref
                               gerbil/core/mop~MOP-2#class-type-info::t
                               __obj105222
                               'struct?))))
                      'eq:
                      gx#free-identifier=?
                      'get-name:
                      gx#stx-e)))
                (begin
                  (let ((_g105280_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g105279_)
                               (##values-length _g105279_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g105280_ 2)))
                        (error "Context expects 2 values" _g105280_)))
                  (let ((_%precedence-list62676%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g105279_ 0)))
                        (_%base-struct62677%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g105279_ 1))))
                    (let ((_%precedence-list62721%_
                           (if (let ((__tmp105281
                                      (let ((__obj105223 _%klass62666%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj105223
                                               'gerbil/core#class-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj105223
                                               '2
                                               '#f
                                               '#f))
                                            (class-slot-ref
                                             gerbil/core/mop~MOP-2#class-type-info::t
                                             __obj105223
                                             'id)))))
                                 (declare (not safe))
                                 (##memq __tmp105281 '(t object class)))
                               _%precedence-list62676%_
                               (if (member ':object
                                           _%precedence-list62676%_
                                           gx#free-identifier=?)
                                   _%precedence-list62676%_
                                   (if (let ((__obj105224 _%klass62666%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-direct-instance-of?
                                                __obj105224
                                                'gerbil/core#class-type-info::t))
                                             (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                __obj105224
                                                '11
                                                '#f
                                                '#f))
                                             (class-slot-ref
                                              gerbil/core/mop~MOP-2#class-type-info::t
                                              __obj105224
                                              'system?)))
                                       (if (member ':t
                                                   _%precedence-list62676%_
                                                   gx#free-identifier=?)
                                           _%precedence-list62676%_
                                           (let ((__tmp105282
                                                  (cons (gx#core-quote-syntax
                                                         ':t)
                                                        '())))
                                             (declare (not safe))
                                             (##append
                                              _%precedence-list62676%_
                                              __tmp105282)))
                                       (let _%loop62683%_ ((_%tail62685%_
                                                            _%precedence-list62676%_)
                                                           (_%head62686%_ '()))
                                         (let* ((_%$%tail6268762695%_
                                                 _%tail62685%_)
                                                (_%$%else6268962703%_
                                                 (lambda ()
                                                   (foldl cons
                                                          (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         ':object)
                        (cons (gx#core-quote-syntax ':t) '()))
                  _%head62686%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%K6269162709%_
                                                 (lambda (_%rest62706%_
                                                          _%hd62707%_)
                                                   (if (gx#free-identifier=?
                                                        _%hd62707%_
                                                        ':t)
                                                       (foldl cons
                                                              (cons (gx#core-quote-syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             ':object)
                            _%tail62685%_)
                      _%head62686%_)
               (_%loop62683%_
                _%rest62706%_
                (cons _%hd62707%_ _%head62686%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (pair? _%$%tail6268762695%_)
                                               (let ((_%$%hd6269262712%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%tail6268762695%_)))
                                                     (_%$%tl6269362714%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%tail6268762695%_))))
                                                 (let* ((_%hd62717%_
                                                         _%$%hd6269262712%_)
                                                        (_%rest62719%_
                                                         _%$%tl6269362714%_))
                                                   (_%$%K6269162709%_
                                                    _%rest62719%_
                                                    _%hd62717%_)))
                                               (_%$%else6268962703%_)))))))))
                      (let ((__obj105225 _%klass62666%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj105225
                               'gerbil/core#class-type-info::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               __obj105225
                               _%precedence-list62721%_
                               '7
                               '#f
                               '#f))
                            (class-slot-set!
                             gerbil/core/mop~MOP-2#class-type-info::t
                             __obj105225
                             'precedence-list
                             _%precedence-list62721%_)))
                      _%precedence-list62721%_))))))))
    (define gerbil/core/contract~ClassMeta#class-type-info::precedence-list
      gerbil/core/contract~ClassMeta#!class-precedence-list)
    (bind-method!
     gerbil/core/mop~MOP-2#class-type-info::t
     'precedence-list
     gerbil/core/contract~ClassMeta#class-type-info::precedence-list
     '#f)
    (define gerbil/core/contract~ClassMeta#meta-object-method-ref
      (lambda (_%meta62536%_ _%method62537%_)
        (let ((_%$%tab6253862540%_
               (let ((__obj105228 _%meta62536%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-direct-instance-of?
                        __obj105228
                        'gerbil/core#meta-object::t))
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref __obj105228 '1 '#f '#f))
                     (class-slot-ref
                      gerbil/core/mop~MOP-2#meta-object::t
                      __obj105228
                      'methods)))))
          (if _%$%tab6253862540%_
              (let ((_%tab62542%_ _%$%tab6253862540%_))
                (hash-get _%tab62542%_ _%method62537%_))
              '#f))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method
      (lambda (_%meta62530%_ _%method62531%_)
        (let ((_%$e62533%_
               (gerbil/core/contract~ClassMeta#meta-object-method-ref
                _%meta62530%_
                _%method62531%_)))
          (if _%$e62533%_
              _%$e62533%_
              (gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
               _%meta62530%_
               _%method62531%_)))))
    (define gerbil/core/contract~ClassMeta#get-meta-object-method-mixin
      (lambda (_%meta62479%_ _%method62480%_)
        (let ((_%$e62482%_ (method-ref _%meta62479%_ 'precedence-list)))
          (if _%$e62482%_
              (let _%loop62487%_ ((_%rest62489%_ (_%$e62482%_ _%meta62479%_)))
                (let* ((_%$%rest6249062498%_ _%rest62489%_)
                       (_%$%else6249262506%_ (lambda () '#f))
                       (_%$%K6249462517%_
                        (lambda (_%rest62509%_ _%klass62510%_)
                          (let* ((_%meta62512%_
                                  (gx#syntax-local-value _%klass62510%_))
                                 (_%$e62514%_
                                  (if (let ()
                                        (declare (not safe))
                                        (class-instance?
                                         gerbil/core/mop~MOP-2#meta-object::t
                                         _%meta62512%_))
                                      (gerbil/core/contract~ClassMeta#meta-object-method-ref
                                       _%meta62512%_
                                       _%method62480%_)
                                      '#f)))
                            (if _%$e62514%_
                                _%$e62514%_
                                (_%loop62487%_ _%rest62509%_))))))
                  (if (pair? _%$%rest6249062498%_)
                      (let ((_%$%hd6249562520%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%rest6249062498%_)))
                            (_%$%tl6249662522%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%rest6249062498%_))))
                        (let* ((_%klass62525%_ _%$%hd6249562520%_)
                               (_%rest62527%_ _%$%tl6249662522%_))
                          (_%$%K6249462517%_ _%rest62527%_ _%klass62525%_)))
                      (_%$%else6249262506%_))))
              '#f))))
    (define gerbil/core/contract~ClassMeta#call-meta-object
      (lambda (_%meta62469%_ _%method62470%_ . _%args62471%_)
        (let ((_%$e62473%_
               (gerbil/core/contract~ClassMeta#get-meta-object-method
                _%meta62469%_
                _%method62470%_)))
          (if _%$e62473%_
              (apply _%$e62473%_ _%meta62469%_ _%args62471%_)
              (error '"missing meta object method"
                     'meta-object:
                     _%meta62469%_
                     'method:
                     'method)))))))
