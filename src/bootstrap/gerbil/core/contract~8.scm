(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~ClassMeta[1]#meta-object-methods!|
    (lambda (_%meta62084%_)
      (let ((_%$e62087%_
             (let ((__obj105226 _%meta62084%_))
               (if (let ()
                     (declare (not safe))
                     (##structure-direct-instance-of?
                      __obj105226
                      'gerbil/core#meta-object::t))
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref __obj105226 '1 '#f '#f))
                   (class-slot-ref
                    gerbil/core/mop~MOP-2#meta-object::t
                    __obj105226
                    'methods)))))
        (if _%$e62087%_
            _%$e62087%_
            (let ((_%tab62093%_ (make-hash-table-eq)))
              (let ((__obj105227 _%meta62084%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       __obj105227
                       'gerbil/core#meta-object::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj105227
                       _%tab62093%_
                       '1
                       '#f
                       '#f))
                    (class-slot-set!
                     gerbil/core/mop~MOP-2#meta-object::t
                     __obj105227
                     'methods
                     _%tab62093%_)))
              _%tab62093%_)))))
  (define |gerbil/core/contract~ClassMeta[:0:]#@call-meta-object|
    (lambda (_%stx62096%_)
      (let* ((_%$%g6209962130%_
              (lambda (_%$%g6210062126%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6210062126%_)))
             (_%$%g6209862242%_
              (lambda (_%$%g6210062134%_)
                (if (gx#stx-pair? _%$%g6210062134%_)
                    (let ((_%$%e6210462137%_ (gx#syntax-e _%$%g6210062134%_)))
                      (let ((_%$%hd6210562141%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6210462137%_)))
                            (_%$%tl6210662144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6210462137%_))))
                        (if (gx#stx-pair? _%$%tl6210662144%_)
                            (let ((_%$%e6210762147%_
                                   (gx#syntax-e _%$%tl6210662144%_)))
                              (let ((_%$%hd6210862151%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6210762147%_)))
                                    (_%$%tl6210962154%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6210762147%_))))
                                (if (gx#stx-pair? _%$%tl6210962154%_)
                                    (let ((_%$%e6211062157%_
                                           (gx#syntax-e _%$%tl6210962154%_)))
                                      (let ((_%$%hd6211162161%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6211062157%_)))
                                            (_%$%tl6211262164%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6211062157%_))))
                                        (if (gx#stx-pair? _%$%hd6211162161%_)
                                            (let ((_%$%e6211362167%_
                                                   (gx#syntax-e
                                                    _%$%hd6211162161%_)))
                                              (let ((_%$%hd6211462171%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e6211362167%_)))
                                                    (_%$%tl6211562174%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e6211362167%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl6211562174%_)
                                                    (let ((_g105435_
                                                           (gx#syntax-split-splice
                                                            _%$%tl6211562174%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g105436_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g105435_)
                             (##values-length _g105435_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g105436_ 2)))
                      (error "Context expects 2 values" _g105436_)))
                (let ((_%$%target6211662177%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105435_ 0)))
                      (_%$%tl6211862180%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105435_ 1))))
                  (if (gx#stx-null? _%$%tl6211862180%_)
                      (letrec ((_%$%loop6211962183%_
                                (lambda (_%$%hd6211762187%_
                                         _%$%arg6212362190%_)
                                  (if (gx#stx-pair? _%$%hd6211762187%_)
                                      (let ((_%$%e6212062192%_
                                             (gx#syntax-e _%$%hd6211762187%_)))
                                        (let ((_%$%lp-hd6212162196%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6212062192%_)))
                                              (_%$%lp-tl6212262199%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6212062192%_))))
                                          (_%$%loop6211962183%_
                                           _%$%lp-tl6212262199%_
                                           (cons _%$%lp-hd6212162196%_
                                                 _%$%arg6212362190%_))))
                                      (let ((_%$%arg6212462202%_
                                             (reverse _%$%arg6212362190%_)))
                                        (if (gx#stx-null? _%$%tl6211262164%_)
                                            (if (gx#identifier?
                                                 _%$%hd6211462171%_)
                                                (let ((_%meta62231%_
                                                       (gx#syntax-local-value
                                                        _%$%hd6210862151%_
                                                        false)))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (class-instance?
                                                         gerbil/core/mop~MOP-2#meta-object::t
                                                         _%meta62231%_))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"not a meta-object"
                                                       _%stx62096%_
                                                       _%$%hd6210862151%_
                                                       _%meta62231%_))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'let)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'meta)
                            (cons (cons (gx#datum->syntax
                                         '#f
                                         'syntax-local-value)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'syntax)
                                                    (cons _%$%hd6210862151%_
                                                          '()))
                                              '()))
                                  '()))
                      (cons (cons (gx#datum->syntax '#f 'call-meta-object)
                                  (cons (gx#datum->syntax '#f 'meta)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'quote)
                                                    (cons _%$%hd6211462171%_
                                                          '()))
                                              (foldr (lambda (_%$%g6223362236%_
                                                              _%$%g6223462239%_)
                                                       (cons _%$%g6223362236%_
                                                             _%$%g6223462239%_))
                                                     '()
                                                     _%$%arg6212462202%_))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g6209962130%_
                                                 _%$%g6210062134%_))
                                            (_%$%g6209962130%_
                                             _%$%g6210062134%_)))))))
                        (_%$%loop6211962183%_ _%$%target6211662177%_ '()))
                      (_%$%g6209962130%_ _%$%g6210062134%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g6209962130%_
                                                     _%$%g6210062134%_))))
                                            (_%$%g6209962130%_
                                             _%$%g6210062134%_))))
                                    (_%$%g6209962130%_ _%$%g6210062134%_))))
                            (_%$%g6209962130%_ _%$%g6210062134%_))))
                    (_%$%g6209962130%_ _%$%g6210062134%_)))))
        (_%$%g6209862242%_ _%stx62096%_))))
  (define |gerbil/core/contract~ClassMeta[:0:]#defmethod-for-meta|
    (lambda (_%stx62247%_)
      (let* ((_%$%g6225062295%_
              (lambda (_%$%g6225162291%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g6225162291%_)))
             (_%$%g6224962463%_
              (lambda (_%$%g6225162299%_)
                (if (gx#stx-pair? _%$%g6225162299%_)
                    (let ((_%$%e6225762302%_ (gx#syntax-e _%$%g6225162299%_)))
                      (let ((_%$%hd6225862306%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e6225762302%_)))
                            (_%$%tl6225962309%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e6225762302%_))))
                        (if (gx#stx-pair? _%$%tl6225962309%_)
                            (let ((_%$%e6226062312%_
                                   (gx#syntax-e _%$%tl6225962309%_)))
                              (let ((_%$%hd6226162316%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e6226062312%_)))
                                    (_%$%tl6226262319%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e6226062312%_))))
                                (if (gx#stx-pair? _%$%tl6226262319%_)
                                    (let ((_%$%e6226362322%_
                                           (gx#syntax-e _%$%tl6226262319%_)))
                                      (let ((_%$%hd6226462326%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e6226362322%_)))
                                            (_%$%tl6226562329%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e6226362322%_))))
                                        (if (gx#stx-pair? _%$%hd6226462326%_)
                                            (let ((_%$%e6226662332%_
                                                   (gx#syntax-e
                                                    _%$%hd6226462326%_)))
                                              (let ((_%$%hd6226762336%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e6226662332%_)))
                                                    (_%$%tl6226862339%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e6226662332%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl6226862339%_)
                                                    (let ((_g105437_
                                                           (gx#syntax-split-splice
                                                            _%$%tl6226862339%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g105438_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g105437_)
                             (##values-length _g105437_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g105438_ 2)))
                      (error "Context expects 2 values" _g105438_)))
                (let ((_%$%target6226962342%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105437_ 0)))
                      (_%$%tl6227162345%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105437_ 1))))
                  (if (gx#stx-null? _%$%tl6227162345%_)
                      (letrec ((_%$%loop6227262348%_
                                (lambda (_%$%hd6227062352%_
                                         _%$%arg6227662355%_)
                                  (if (gx#stx-pair? _%$%hd6227062352%_)
                                      (let ((_%$%e6227362357%_
                                             (gx#syntax-e _%$%hd6227062352%_)))
                                        (let ((_%$%lp-hd6227462361%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6227362357%_)))
                                              (_%$%lp-tl6227562364%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6227362357%_))))
                                          (_%$%loop6227262348%_
                                           _%$%lp-tl6227562364%_
                                           (cons _%$%lp-hd6227462361%_
                                                 _%$%arg6227662355%_))))
                                      (let ((_%$%arg6227762367%_
                                             (reverse _%$%arg6227662355%_)))
                                        (if (gx#stx-pair? _%$%tl6226562329%_)
                                            (let ((_%$%e6227862370%_
                                                   (gx#syntax-e
                                                    _%$%tl6226562329%_)))
                                              (let ((_%$%hd6227962374%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e6227862370%_)))
                                                    (_%$%tl6228062377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e6227862370%_))))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl6228062377%_)
                                                    (let ((_g105439_
                                                           (gx#syntax-split-splice
                                                            _%$%tl6228062377%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g105440_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g105439_)
                             (##values-length _g105439_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g105440_ 2)))
                      (error "Context expects 2 values" _g105440_)))
                (let ((_%$%target6228162380%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105439_ 0)))
                      (_%$%tl6228362383%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g105439_ 1))))
                  (if (gx#stx-null? _%$%tl6228362383%_)
                      (letrec ((_%$%loop6228462386%_
                                (lambda (_%$%hd6228262390%_
                                         _%$%rest6228862393%_)
                                  (if (gx#stx-pair? _%$%hd6228262390%_)
                                      (let ((_%$%e6228562395%_
                                             (gx#syntax-e _%$%hd6228262390%_)))
                                        (let ((_%$%lp-hd6228662399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e6228562395%_)))
                                              (_%$%lp-tl6228762402%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e6228562395%_))))
                                          (_%$%loop6228462386%_
                                           _%$%lp-tl6228762402%_
                                           (cons _%$%lp-hd6228662399%_
                                                 _%$%rest6228862393%_))))
                                      (let ((_%$%rest6228962405%_
                                             (reverse _%$%rest6228862393%_)))
                                        (if (gx#identifier? _%$%hd6226762336%_)
                                            (let ((_%meta62444%_
                                                   (gx#syntax-local-value
                                                    _%$%hd6226162316%_
                                                    false)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (class-instance?
                                                     gerbil/core/mop~MOP-2#meta-object::t
                                                     _%meta62444%_))
                                                  '#!void
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"not a meta-object"
                                                   _%stx62247%_
                                                   _%$%hd6226162316%_
                                                   _%meta62444%_))
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin-syntax)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'let)
                        (cons (cons (gx#datum->syntax '#f 'tab)
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'meta-object-methods!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'syntax-local-value)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax)
                                (cons _%$%hd6226162316%_ '()))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (cons (cons (gx#datum->syntax '#f 'hash-put!)
                                          (cons (gx#datum->syntax '#f 'tab)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%$%hd6226762336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons (gx#datum->syntax '#f 'lambda)
                          (cons (foldr (lambda (_%$%g6244662451%_
                                                _%$%g6244762454%_)
                                         (cons _%$%g6244662451%_
                                               _%$%g6244762454%_))
                                       '()
                                       _%$%arg6227762367%_)
                                (cons _%$%hd6227962374%_
                                      (foldr (lambda (_%$%g6244862457%_
                                                      _%$%g6244962460%_)
                                               (cons _%$%g6244862457%_
                                                     _%$%g6244962460%_))
                                             '()
                                             _%$%rest6228962405%_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g6225062295%_
                                             _%$%g6225162299%_)))))))
                        (_%$%loop6228462386%_ _%$%target6228162380%_ '()))
                      (_%$%g6225062295%_ _%$%g6225162299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g6225062295%_
                                                     _%$%g6225162299%_))))
                                            (_%$%g6225062295%_
                                             _%$%g6225162299%_)))))))
                        (_%$%loop6227262348%_ _%$%target6226962342%_ '()))
                      (_%$%g6225062295%_ _%$%g6225162299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g6225062295%_
                                                     _%$%g6225162299%_))))
                                            (_%$%g6225062295%_
                                             _%$%g6225162299%_))))
                                    (_%$%g6225062295%_ _%$%g6225162299%_))))
                            (_%$%g6225062295%_ _%$%g6225162299%_))))
                    (_%$%g6225062295%_ _%$%g6225162299%_)))))
        (_%$%g6224962463%_ _%stx62247%_)))))
