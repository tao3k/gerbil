(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeCast[1]#_g105376_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g105377_|
    (##structure gx#syntax-quote::t ': #f (gx#current-expander-context) '()))
  (define |gerbil/core/contract~TypeCast[1]#_g105378_|
    (##structure gx#syntax-quote::t ':- #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/contract~TypeCast[:0:]#:|
      (lambda (_%stx53849%_)
        (let* ((_%__stx9842698427%_ _%stx53849%_)
               (_%$%g5385353886%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9842698427%_))))
          (let ((_%__kont9842998430%_
                 (lambda (_%$%g5385554135%_ _%$%g5385654137%_)
                   (let ((_%meta54152%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx53849%_
                             _%$%g5385554135%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta54152%_))
                         (let* ((_%$%g5415754172%_
                                 (lambda (_%$%g5415854168%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5415854168%_)))
                                (_%$%g5415654219%_
                                 (lambda (_%$%g5415854176%_)
                                   (if (gx#stx-pair? _%$%g5415854176%_)
                                       (let ((_%$%e5416154179%_
                                              (gx#syntax-e _%$%g5415854176%_)))
                                         (let ((_%$%hd5416254183%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5416154179%_)))
                                               (_%$%tl5416354186%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5416154179%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5416354186%_)
                                               (let ((_%$%e5416454189%_
                                                      (gx#syntax-e
                                                       _%$%tl5416354186%_)))
                                                 (let ((_%$%hd5416554193%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5416454189%_)))
                                                       (_%$%tl5416654196%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5416454189%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5416654196%_)
                                                       (if (let ((__tmp105373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj105192 _%meta54152%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj105192
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj105192
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj105192 'id)))))
                     (declare (not safe))
                     (##memq __tmp105373 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5416254183%_ '()))
                               (cons _%$%g5385654137%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5416254183%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons _%$%g5385654137%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5416554193%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'contract-violation!)
                                             (cons _%$%g5385654137%_
                                                   (cons (cons _%$%hd5416554193%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%$%g5415754172%_ _%$%g5415854176%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5415754172%_
                                                _%$%g5415854176%_))))
                                       (_%$%g5415754172%_
                                        _%$%g5415854176%_)))))
                           (_%$%g5415654219%_
                            (list (let ((__obj105193 _%meta54152%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj105193
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj105193
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj105193
                                         'type-descriptor)))
                                  (let ((__obj105194 _%meta54152%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj105194
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj105194
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj105194
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta54152%_))
                             (let* ((_%$%g5422554240%_
                                     (lambda (_%$%g5422654236%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5422654236%_)))
                                    (_%$%g5422454285%_
                                     (lambda (_%$%g5422654244%_)
                                       (if (gx#stx-pair? _%$%g5422654244%_)
                                           (let ((_%$%e5422954247%_
                                                  (gx#syntax-e
                                                   _%$%g5422654244%_)))
                                             (let ((_%$%hd5423054251%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5422954247%_)))
                                                   (_%$%tl5423154254%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5422954247%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5423154254%_)
                                                   (let ((_%$%e5423254257%_
                                                          (gx#syntax-e
                                                           _%$%tl5423154254%_)))
                                                     (let ((_%$%hd5423354261%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5423254257%_)))
                                                           (_%$%tl5423454264%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5423254257%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5423454264%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5423054251%_ '()))
                               (cons (cons _%$%hd5423354261%_
                                           (cons _%$%g5385654137%_ '()))
                                     '())))
                   (_%$%g5422554240%_ _%$%g5422654244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5422554240%_
                                                    _%$%g5422654244%_))))
                                           (_%$%g5422554240%_
                                            _%$%g5422654244%_)))))
                               (_%$%g5422454285%_
                                (list (let ((__obj105191 _%meta54152%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj105191
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj105191
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj105191
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx53849%_
                                         _%$%g5385554135%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx53849%_
                              _%$%g5385554135%_))))))
                (_%__kont9843198432%_
                 (lambda (_%$%g5386653937%_ _%$%g5386753939%_)
                   (let ((_%meta53959%_
                          (let ()
                            (declare (not safe))
                            (|gerbil/core/contract~TypeReference[1]#resolve-type|
                             _%stx53849%_
                             _%$%g5386653937%_))))
                     (if (let ()
                           (declare (not safe))
                           (class-instance?
                            gerbil/core/mop~MOP-2#class-type-info::t
                            _%meta53959%_))
                         (let* ((_%$%g5396453979%_
                                 (lambda (_%$%g5396553975%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g5396553975%_)))
                                (_%$%g5396354026%_
                                 (lambda (_%$%g5396553983%_)
                                   (if (gx#stx-pair? _%$%g5396553983%_)
                                       (let ((_%$%e5396853986%_
                                              (gx#syntax-e _%$%g5396553983%_)))
                                         (let ((_%$%hd5396953990%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e5396853986%_)))
                                               (_%$%tl5397053993%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e5396853986%_))))
                                           (if (gx#stx-pair?
                                                _%$%tl5397053993%_)
                                               (let ((_%$%e5397153996%_
                                                      (gx#syntax-e
                                                       _%$%tl5397053993%_)))
                                                 (let ((_%$%hd5397254000%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e5397153996%_)))
                                                       (_%$%tl5397354003%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e5397153996%_))))
                                                   (if (gx#stx-null?
                                                        _%$%tl5397354003%_)
                                                       (if (let ((__tmp105374
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__obj105196 _%meta53959%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-direct-instance-of?
                                   __obj105196
                                   'gerbil/core#class-type-info::t))
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   __obj105196
                                   '2
                                   '#f
                                   '#f))
                                (unchecked-slot-ref __obj105196 'id)))))
                     (declare (not safe))
                     (##memq __tmp105374 '(t void)))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5396953990%_ '()))
                               (cons _%$%g5386753939%_ '())))
                   (cons (gx#datum->syntax '#f 'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5396953990%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'let)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin-annotation)
                           (cons (cons (gx#datum->syntax '#f '@type)
                                       (cons (gx#datum->syntax '#f 't::t) '()))
                                 (cons _%$%g5386753939%_ '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'if)
                                                             (cons (cons _%$%hd5397254000%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (gx#datum->syntax '#f 'val) '()))
                           (cons (gx#datum->syntax '#f 'val)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'runtime-contract-violation!)
                                             (cons _%$%g5386753939%_
                                                   (cons (cons _%$%hd5397254000%_
                                                               (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'val)
                             '()))
                 (cons (gx#datum->syntax '#f 'val) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))
               (_%$%g5396453979%_ _%$%g5396553983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g5396453979%_
                                                _%$%g5396553983%_))))
                                       (_%$%g5396453979%_
                                        _%$%g5396553983%_)))))
                           (_%$%g5396354026%_
                            (list (let ((__obj105197 _%meta53959%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj105197
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj105197
                                           '4
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj105197
                                         'type-descriptor)))
                                  (let ((__obj105198 _%meta53959%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-direct-instance-of?
                                           __obj105198
                                           'gerbil/core#class-type-info::t))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __obj105198
                                           '15
                                           '#f
                                           '#f))
                                        (unchecked-slot-ref
                                         __obj105198
                                         'predicate))))))
                         (if (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%meta53959%_))
                             (let* ((_%$%g5403254047%_
                                     (lambda (_%$%g5403354043%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g5403354043%_)))
                                    (_%$%g5403154092%_
                                     (lambda (_%$%g5403354051%_)
                                       (if (gx#stx-pair? _%$%g5403354051%_)
                                           (let ((_%$%e5403654054%_
                                                  (gx#syntax-e
                                                   _%$%g5403354051%_)))
                                             (let ((_%$%hd5403754058%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e5403654054%_)))
                                                   (_%$%tl5403854061%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e5403654054%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl5403854061%_)
                                                   (let ((_%$%e5403954064%_
                                                          (gx#syntax-e
                                                           _%$%tl5403854061%_)))
                                                     (let ((_%$%hd5404054068%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e5403954064%_)))
                                                           (_%$%tl5404154071%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e5403954064%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl5404154071%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@type)
                                     (cons _%$%hd5403754058%_ '()))
                               (cons (cons _%$%hd5404054068%_
                                           (cons _%$%g5386753939%_ '()))
                                     '())))
                   (_%$%g5403254047%_ _%$%g5403354051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g5403254047%_
                                                    _%$%g5403354051%_))))
                                           (_%$%g5403254047%_
                                            _%$%g5403354051%_)))))
                               (_%$%g5403154092%_
                                (list (let ((__obj105195 _%meta53959%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-direct-instance-of?
                                               __obj105195
                                               'gerbil/core#runtime-type-info::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               __obj105195
                                               '3
                                               '#f
                                               '#f))
                                            (unchecked-slot-ref
                                             __obj105195
                                             'type-descriptor)))
                                      (let ()
                                        (declare (not safe))
                                        (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                         _%stx53849%_
                                         _%$%g5386653937%_)))))
                             (gx#raise-syntax-error
                              '#f
                              '"not a class type or interface"
                              _%stx53849%_
                              _%$%g5386653937%_)))))))
            (let* ((_%__match9848598486%_
                    (lambda (_%$%e5386853893%_
                             _%$%hd5386953897%_
                             _%$%tl5387053900%_
                             _%$%e5387153903%_
                             _%$%hd5387253907%_
                             _%$%tl5387353910%_
                             _%$%e5387453913%_
                             _%$%hd5387553917%_
                             _%$%tl5387653920%_
                             _%$%e5387753923%_
                             _%$%e5387853927%_
                             _%$%hd5387953931%_
                             _%$%tl5388053934%_)
                      (let ((_%$%g5386653937%_ _%$%hd5387953931%_)
                            (_%$%g5386753939%_ _%$%hd5387253907%_))
                        (if (gx#identifier? _%$%g5386653937%_)
                            (_%__kont9843198432%_
                             _%$%g5386653937%_
                             _%$%g5386753939%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5385353886%_))))))
                   (_%__match9845398454%_
                    (lambda (_%$%e5385754105%_
                             _%$%hd5385854109%_
                             _%$%tl5385954112%_
                             _%$%e5386054115%_
                             _%$%hd5386154119%_
                             _%$%tl5386254122%_
                             _%$%e5386354125%_
                             _%$%hd5386454129%_
                             _%$%tl5386554132%_)
                      (let ((_%$%g5385554135%_ _%$%hd5386454129%_)
                            (_%$%g5385654137%_ _%$%hd5386154119%_))
                        (if (gx#identifier? _%$%g5385554135%_)
                            (_%__kont9842998430%_
                             _%$%g5385554135%_
                             _%$%g5385654137%_)
                            (if (gx#stx-datum? _%$%hd5386454129%_)
                                (let ((_%$%e5387753923%_
                                       (gx#stx-e _%$%hd5386454129%_)))
                                  (declare (not safe))
                                  (_%$%g5385353886%_))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5385353886%_))))))))
              (if (gx#stx-pair? _%__stx9842698427%_)
                  (let ((_%$%e5385754105%_ (gx#syntax-e _%__stx9842698427%_)))
                    (let ((_%$%tl5385954112%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5385754105%_)))
                          (_%$%hd5385854109%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5385754105%_))))
                      (if (gx#stx-pair? _%$%tl5385954112%_)
                          (let ((_%$%e5386054115%_
                                 (gx#syntax-e _%$%tl5385954112%_)))
                            (let ((_%$%tl5386254122%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5386054115%_)))
                                  (_%$%hd5386154119%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5386054115%_))))
                              (if (gx#stx-pair? _%$%tl5386254122%_)
                                  (let ((_%$%e5386354125%_
                                         (gx#syntax-e _%$%tl5386254122%_)))
                                    (let ((_%$%tl5386554132%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5386354125%_)))
                                          (_%$%hd5386454129%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5386354125%_))))
                                      (if (gx#stx-null? _%$%tl5386554132%_)
                                          (_%__match9845398454%_
                                           _%$%e5385754105%_
                                           _%$%hd5385854109%_
                                           _%$%tl5385954112%_
                                           _%$%e5386054115%_
                                           _%$%hd5386154119%_
                                           _%$%tl5386254122%_
                                           _%$%e5386354125%_
                                           _%$%hd5386454129%_
                                           _%$%tl5386554132%_)
                                          (if (gx#stx-datum?
                                               _%$%hd5386454129%_)
                                              (let ((_%$%e5387753923%_
                                                     (gx#stx-e
                                                      _%$%hd5386454129%_)))
                                                (if (equal? _%$%e5387753923%_
                                                            'runtime:)
                                                    (if (gx#stx-pair?
                                                         _%$%tl5386554132%_)
                                                        (let ((_%$%e5387853927%_
                                                               (gx#syntax-e
                                                                _%$%tl5386554132%_)))
                                                          (let ((_%$%tl5388053934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5387853927%_)))
                        (_%$%hd5387953931%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5387853927%_))))
                    (if (gx#stx-null? _%$%tl5388053934%_)
                        (_%__match9848598486%_
                         _%$%e5385754105%_
                         _%$%hd5385854109%_
                         _%$%tl5385954112%_
                         _%$%e5386054115%_
                         _%$%hd5386154119%_
                         _%$%tl5386254122%_
                         _%$%e5386354125%_
                         _%$%hd5386454129%_
                         _%$%tl5386554132%_
                         _%$%e5387753923%_
                         _%$%e5387853927%_
                         _%$%hd5387953931%_
                         _%$%tl5388053934%_)
                        (let () (declare (not safe)) (_%$%g5385353886%_)))))
                (let () (declare (not safe)) (_%$%g5385353886%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5385353886%_))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5385353886%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5385353886%_)))))
                          (let () (declare (not safe)) (_%$%g5385353886%_)))))
                  (let () (declare (not safe)) (_%$%g5385353886%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:?|
      (lambda (_%stx54295%_)
        (let* ((_%$%g5429854316%_
                (lambda (_%$%g5429954312%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5429954312%_)))
               (_%$%g5429754510%_
                (lambda (_%$%g5429954320%_)
                  (if (gx#stx-pair? _%$%g5429954320%_)
                      (let ((_%$%e5430254323%_
                             (gx#syntax-e _%$%g5429954320%_)))
                        (let ((_%$%hd5430354327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5430254323%_)))
                              (_%$%tl5430454330%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5430254323%_))))
                          (if (gx#stx-pair? _%$%tl5430454330%_)
                              (let ((_%$%e5430554333%_
                                     (gx#syntax-e _%$%tl5430454330%_)))
                                (let ((_%$%hd5430654337%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5430554333%_)))
                                      (_%$%tl5430754340%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5430554333%_))))
                                  (if (gx#stx-pair? _%$%tl5430754340%_)
                                      (let ((_%$%e5430854343%_
                                             (gx#syntax-e _%$%tl5430754340%_)))
                                        (let ((_%$%hd5430954347%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5430854343%_)))
                                              (_%$%tl5431054350%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5430854343%_))))
                                          (if (gx#stx-null? _%$%tl5431054350%_)
                                              (if (gx#identifier?
                                                   _%$%hd5430954347%_)
                                                  (let ((_%meta54371%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (|gerbil/core/contract~TypeReference[1]#resolve-type|
                                                            _%stx54295%_
                                                            _%$%hd5430954347%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (class-instance?
                                                           gerbil/core/mop~MOP-2#class-type-info::t
                                                           _%meta54371%_))
                                                        (let* ((_%$%g5437654391%_
                                                                (lambda (_%$%g5437754387%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g5437754387%_)))
                       (_%$%g5437554438%_
                        (lambda (_%$%g5437754395%_)
                          (if (gx#stx-pair? _%$%g5437754395%_)
                              (let ((_%$%e5438054398%_
                                     (gx#syntax-e _%$%g5437754395%_)))
                                (let ((_%$%hd5438154402%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5438054398%_)))
                                      (_%$%tl5438254405%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5438054398%_))))
                                  (if (gx#stx-pair? _%$%tl5438254405%_)
                                      (let ((_%$%e5438354408%_
                                             (gx#syntax-e _%$%tl5438254405%_)))
                                        (let ((_%$%hd5438454412%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5438354408%_)))
                                              (_%$%tl5438554415%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5438354408%_))))
                                          (if (gx#stx-null? _%$%tl5438554415%_)
                                              (if (let ((__tmp105375
                                                         (let ((__obj105200
                                                                _%meta54371%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##structure-direct-instance-of?
                          __obj105200
                          'gerbil/core#class-type-info::t))
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref __obj105200 '2 '#f '#f))
                       (unchecked-slot-ref __obj105200 'id)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (##memq __tmp105375
                                                            '(t void)))
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5438154402%_ '()))
                      (cons _%$%hd5430654337%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5438154402%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5430654337%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'if)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'or)
                        (cons (cons (gx#datum->syntax '#f 'not)
                                    (cons (gx#datum->syntax '#f 'val) '()))
                              (cons (cons _%$%hd5438454412%_
                                          (cons (gx#datum->syntax '#f 'val)
                                                '()))
                                    '())))
                  (cons (gx#datum->syntax '#f 'val)
                        (cons (cons (gx#datum->syntax '#f 'contract-violation!)
                                    (cons _%$%hd5430654337%_
                                          (cons (cons _%$%hd5438454412%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'val)
                                                            '()))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'val)
                                                      '()))))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5437654391%_
                                               _%$%g5437754395%_))))
                                      (_%$%g5437654391%_ _%$%g5437754395%_))))
                              (_%$%g5437654391%_ _%$%g5437754395%_)))))
                  (_%$%g5437554438%_
                   (list (let ((__obj105201 _%meta54371%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj105201
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj105201
                                  '4
                                  '#f
                                  '#f))
                               (unchecked-slot-ref
                                __obj105201
                                'type-descriptor)))
                         (let ((__obj105202 _%meta54371%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##structure-direct-instance-of?
                                  __obj105202
                                  'gerbil/core#class-type-info::t))
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  __obj105202
                                  '15
                                  '#f
                                  '#f))
                               (unchecked-slot-ref __obj105202 'predicate))))))
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       gerbil/core/contract~InterfaceInfo#interface-info::t
                       _%meta54371%_))
                    (let* ((_%$%g5444454459%_
                            (lambda (_%$%g5444554455%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g5444554455%_)))
                           (_%$%g5444354504%_
                            (lambda (_%$%g5444554463%_)
                              (if (gx#stx-pair? _%$%g5444554463%_)
                                  (let ((_%$%e5444854466%_
                                         (gx#syntax-e _%$%g5444554463%_)))
                                    (let ((_%$%hd5444954470%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5444854466%_)))
                                          (_%$%tl5445054473%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5444854466%_))))
                                      (if (gx#stx-pair? _%$%tl5445054473%_)
                                          (let ((_%$%e5445154476%_
                                                 (gx#syntax-e
                                                  _%$%tl5445054473%_)))
                                            (let ((_%$%hd5445254480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e5445154476%_)))
                                                  (_%$%tl5445354483%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e5445154476%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl5445354483%_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'begin-annotation)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '@type)
                            (cons _%$%hd5444954470%_ '()))
                      (cons (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (gx#datum->syntax '#f 'val)
                                              (cons _%$%hd5430654337%_ '()))
                                        (cons (cons (gx#datum->syntax '#f 'and)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'val)
                                                          (cons (cons _%$%hd5445254480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (gx#datum->syntax '#f 'val) '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())))
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5444454459%_
                                                   _%$%g5444554463%_))))
                                          (_%$%g5444454459%_
                                           _%$%g5444554463%_))))
                                  (_%$%g5444454459%_ _%$%g5444554463%_)))))
                      (_%$%g5444354504%_
                       (list (let ((__obj105199 _%meta54371%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj105199
                                      'gerbil/core#runtime-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj105199
                                      '3
                                      '#f
                                      '#f))
                                   (unchecked-slot-ref
                                    __obj105199
                                    'type-descriptor)))
                             (let ()
                               (declare (not safe))
                               (|gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
                                _%stx54295%_
                                _%$%hd5430954347%_)))))
                    (gx#raise-syntax-error
                     '#f
                     '"not a class type or interface"
                     _%stx54295%_
                     _%$%hd5430954347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g5429854316%_
                                                   _%$%g5429954320%_))
                                              (_%$%g5429854316%_
                                               _%$%g5429954320%_))))
                                      (_%$%g5429854316%_ _%$%g5429954320%_))))
                              (_%$%g5429854316%_ _%$%g5429954320%_))))
                      (_%$%g5429854316%_ _%$%g5429954320%_)))))
          (_%$%g5429754510%_ _%stx54295%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:-|
      (lambda (_%stx54514%_)
        (let* ((_%$%g5451754535%_
                (lambda (_%$%g5451854531%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5451854531%_)))
               (_%$%g5451654621%_
                (lambda (_%$%g5451854539%_)
                  (if (gx#stx-pair? _%$%g5451854539%_)
                      (let ((_%$%e5452154542%_
                             (gx#syntax-e _%$%g5451854539%_)))
                        (let ((_%$%hd5452254546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5452154542%_)))
                              (_%$%tl5452354549%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5452154542%_))))
                          (if (gx#stx-pair? _%$%tl5452354549%_)
                              (let ((_%$%e5452454552%_
                                     (gx#syntax-e _%$%tl5452354549%_)))
                                (let ((_%$%hd5452554556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5452454552%_)))
                                      (_%$%tl5452654559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5452454552%_))))
                                  (if (gx#stx-pair? _%$%tl5452654559%_)
                                      (let ((_%$%e5452754562%_
                                             (gx#syntax-e _%$%tl5452654559%_)))
                                        (let ((_%$%hd5452854566%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5452754562%_)))
                                              (_%$%tl5452954569%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5452754562%_))))
                                          (if (gx#stx-null? _%$%tl5452954569%_)
                                              (if (gx#identifier?
                                                   _%$%hd5452854566%_)
                                                  (let* ((_%$%g5459054598%_
                                                          (lambda (_%$%g5459154594%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%$%g5459154594%_)))
                                                         (_%$%g5458954617%_
                                                          (lambda (_%$%g5459154602%_)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@type)
                                      (cons _%$%g5459154602%_ '()))
                                (cons _%$%hd5452554556%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g5458954617%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (|gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
                                                        _%stx54514%_
                                                        _%$%hd5452854566%_))))
                                                  (_%$%g5451754535%_
                                                   _%$%g5451854539%_))
                                              (_%$%g5451754535%_
                                               _%$%g5451854539%_))))
                                      (_%$%g5451754535%_ _%$%g5451854539%_))))
                              (_%$%g5451754535%_ _%$%g5451854539%_))))
                      (_%$%g5451754535%_ _%$%g5451854539%_)))))
          (_%$%g5451654621%_ _%stx54514%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#do-with-lock|
      (lambda (_%$stx54625%_)
        (let* ((_%__stx9848898489%_ _%$stx54625%_)
               (_%$%g5463154715%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9848898489%_))))
          (let ((_%__kont9849198492%_
                 (lambda (_%$%g5463355019%_
                          _%$%g5463455021%_
                          _%$%g5463555022%_
                          _%$%g5463655023%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5463655023%_
                                           (cons _%$%g5463455021%_
                                                 (foldr (lambda (_%$%g5504755050%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5504855053%_)
                  (cons _%$%g5504755050%_ _%$%g5504855053%_))
                '()
                _%$%g5463355019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5463555022%_ '())))))
                (_%__kont9849598496%_
                 (lambda (_%$%g5466154897%_
                          _%$%g5466254899%_
                          _%$%g5466354900%_
                          _%$%g5466454901%_)
                   (cons (gx#datum->syntax '#f ':)
                         (cons (cons (gx#datum->syntax '#f 'do-with-lock)
                                     (cons _%$%g5466454901%_
                                           (cons _%$%g5466254899%_
                                                 (foldr (lambda (_%$%g5492554928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g5492654931%_)
                  (cons _%$%g5492554928%_ _%$%g5492654931%_))
                '()
                _%$%g5466154897%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%$%g5466354900%_ '())))))
                (_%__kont9849998500%_
                 (lambda (_%$%g5468954780%_
                          _%$%g5469054782%_
                          _%$%g5469154783%_)
                   (cons (gx#datum->syntax '#f 'with-lock)
                         (cons _%$%g5469154783%_
                               (cons (cons (gx#datum->syntax '#f 'lambda)
                                           (cons '()
                                                 (cons _%$%g5469054782%_
                                                       (foldr (lambda (_%$%g5480354806%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g5480454809%_)
                        (cons _%$%g5480354806%_ _%$%g5480454809%_))
                      '()
                      _%$%g5468954780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (let* ((_%__match9861398614%_
                    (lambda (_%$%e5469254722%_
                             _%$%hd5469354726%_
                             _%$%tl5469454729%_
                             _%$%e5469554732%_
                             _%$%hd5469654736%_
                             _%$%tl5469754739%_
                             _%$%e5469854742%_
                             _%$%hd5469954746%_
                             _%$%tl5470054749%_
                             _%__splice9850198502%_
                             _%$%target5470154752%_
                             _%$%tl5470354755%_)
                      (letrec ((_%$%loop5470454758%_
                                (lambda (_%$%hd5470254762%_
                                         _%$%rest5470854765%_)
                                  (if (gx#stx-pair? _%$%hd5470254762%_)
                                      (let ((_%$%e5470554767%_
                                             (gx#syntax-e _%$%hd5470254762%_)))
                                        (let ((_%$%lp-tl5470754774%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5470554767%_)))
                                              (_%$%lp-hd5470654771%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5470554767%_))))
                                          (_%$%loop5470454758%_
                                           _%$%lp-tl5470754774%_
                                           (cons _%$%lp-hd5470654771%_
                                                 _%$%rest5470854765%_))))
                                      (let ((_%$%rest5470954777%_
                                             (reverse _%$%rest5470854765%_)))
                                        (_%__kont9849998500%_
                                         _%$%rest5470954777%_
                                         _%$%hd5469954746%_
                                         _%$%hd5469654736%_))))))
                        (_%$%loop5470454758%_ _%$%target5470154752%_ '()))))
                   (_%__match9858798588%_
                    (lambda (_%$%e5466554819%_
                             _%$%hd5466654823%_
                             _%$%tl5466754826%_
                             _%$%e5466854829%_
                             _%$%hd5466954833%_
                             _%$%tl5467054836%_
                             _%$%e5467154839%_
                             _%$%hd5467254843%_
                             _%$%tl5467354846%_
                             _%$%e5467454849%_
                             _%$%hd5467554853%_
                             _%$%tl5467654856%_
                             _%$%e5467754859%_
                             _%$%hd5467854863%_
                             _%$%tl5467954866%_
                             _%__splice9849798498%_
                             _%$%target5468054869%_
                             _%$%tl5468254872%_)
                      (letrec ((_%$%loop5468354875%_
                                (lambda (_%$%hd5468154879%_
                                         _%$%rest5468754882%_)
                                  (if (gx#stx-pair? _%$%hd5468154879%_)
                                      (let ((_%$%e5468454884%_
                                             (gx#syntax-e _%$%hd5468154879%_)))
                                        (let ((_%$%lp-tl5468654891%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5468454884%_)))
                                              (_%$%lp-hd5468554888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5468454884%_))))
                                          (_%$%loop5468354875%_
                                           _%$%lp-tl5468654891%_
                                           (cons _%$%lp-hd5468554888%_
                                                 _%$%rest5468754882%_))))
                                      (let ((_%$%rest5468854894%_
                                             (reverse _%$%rest5468754882%_)))
                                        (_%__kont9849598496%_
                                         _%$%rest5468854894%_
                                         _%$%hd5467854863%_
                                         _%$%hd5467554853%_
                                         _%$%hd5466954833%_))))))
                        (_%$%loop5468354875%_ _%$%target5468054869%_ '()))))
                   (_%__match9854598546%_
                    (lambda (_%$%e5463754941%_
                             _%$%hd5463854945%_
                             _%$%tl5463954948%_
                             _%$%e5464054951%_
                             _%$%hd5464154955%_
                             _%$%tl5464254958%_
                             _%$%e5464354961%_
                             _%$%hd5464454965%_
                             _%$%tl5464554968%_
                             _%$%e5464654971%_
                             _%$%hd5464754975%_
                             _%$%tl5464854978%_
                             _%$%e5464954981%_
                             _%$%hd5465054985%_
                             _%$%tl5465154988%_
                             _%__splice9849398494%_
                             _%$%target5465254991%_
                             _%$%tl5465454994%_)
                      (letrec ((_%$%loop5465554997%_
                                (lambda (_%$%hd5465355001%_
                                         _%$%rest5465955004%_)
                                  (if (gx#stx-pair? _%$%hd5465355001%_)
                                      (let ((_%$%e5465655006%_
                                             (gx#syntax-e _%$%hd5465355001%_)))
                                        (let ((_%$%lp-tl5465855013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5465655006%_)))
                                              (_%$%lp-hd5465755010%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5465655006%_))))
                                          (_%$%loop5465554997%_
                                           _%$%lp-tl5465855013%_
                                           (cons _%$%lp-hd5465755010%_
                                                 _%$%rest5465955004%_))))
                                      (let ((_%$%rest5466055016%_
                                             (reverse _%$%rest5465955004%_)))
                                        (_%__kont9849198492%_
                                         _%$%rest5466055016%_
                                         _%$%hd5465054985%_
                                         _%$%hd5464754975%_
                                         _%$%hd5464154955%_))))))
                        (_%$%loop5465554997%_ _%$%target5465254991%_ '())))))
              (if (gx#stx-pair? _%__stx9848898489%_)
                  (let ((_%$%e5463754941%_ (gx#syntax-e _%__stx9848898489%_)))
                    (let ((_%$%tl5463954948%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5463754941%_)))
                          (_%$%hd5463854945%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5463754941%_))))
                      (if (gx#stx-pair? _%$%tl5463954948%_)
                          (let ((_%$%e5464054951%_
                                 (gx#syntax-e _%$%tl5463954948%_)))
                            (let ((_%$%tl5464254958%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e5464054951%_)))
                                  (_%$%hd5464154955%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e5464054951%_))))
                              (if (gx#stx-pair? _%$%tl5464254958%_)
                                  (let ((_%$%e5464354961%_
                                         (gx#syntax-e _%$%tl5464254958%_)))
                                    (let ((_%$%tl5464554968%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e5464354961%_)))
                                          (_%$%hd5464454965%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e5464354961%_))))
                                      (if (gx#identifier? _%$%hd5464454965%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/contract~TypeCast[1]#_g105376_|
                                               _%$%hd5464454965%_)
                                              (if (gx#stx-pair?
                                                   _%$%tl5464554968%_)
                                                  (let ((_%$%e5464654971%_
                                                         (gx#syntax-e
                                                          _%$%tl5464554968%_)))
                                                    (let ((_%$%tl5464854978%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e5464654971%_)))
                                                          (_%$%hd5464754975%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e5464654971%_))))
                                                      (if (gx#stx-pair?
                                                           _%$%tl5464854978%_)
                                                          (let ((_%$%e5464954981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl5464854978%_)))
                    (let ((_%$%tl5465154988%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e5464954981%_)))
                          (_%$%hd5465054985%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e5464954981%_))))
                      (if (gx#stx-pair/null? _%$%tl5465154988%_)
                          (let ((_%__splice9849398494%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5465154988%_
                                  '0)))
                            (let ((_%$%tl5465454994%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9849398494%_ '1)))
                                  (_%$%target5465254991%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9849398494%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5465454994%_)
                                  (_%__match9854598546%_
                                   _%$%e5463754941%_
                                   _%$%hd5463854945%_
                                   _%$%tl5463954948%_
                                   _%$%e5464054951%_
                                   _%$%hd5464154955%_
                                   _%$%tl5464254958%_
                                   _%$%e5464354961%_
                                   _%$%hd5464454965%_
                                   _%$%tl5464554968%_
                                   _%$%e5464654971%_
                                   _%$%hd5464754975%_
                                   _%$%tl5464854978%_
                                   _%$%e5464954981%_
                                   _%$%hd5465054985%_
                                   _%$%tl5465154988%_
                                   _%__splice9849398494%_
                                   _%$%target5465254991%_
                                   _%$%tl5465454994%_)
                                  (if (gx#stx-pair/null? _%$%tl5464554968%_)
                                      (let ((_%__splice9850198502%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl5464554968%_
                                              '0)))
                                        (let ((_%$%tl5470354755%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9850198502%_
                                                  '1)))
                                              (_%$%target5470154752%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice9850198502%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl5470354755%_)
                                              (_%__match9861398614%_
                                               _%$%e5463754941%_
                                               _%$%hd5463854945%_
                                               _%$%tl5463954948%_
                                               _%$%e5464054951%_
                                               _%$%hd5464154955%_
                                               _%$%tl5464254958%_
                                               _%$%e5464354961%_
                                               _%$%hd5464454965%_
                                               _%$%tl5464554968%_
                                               _%__splice9850198502%_
                                               _%$%target5470154752%_
                                               _%$%tl5470354755%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5463154715%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5463154715%_))))))
                          (if (gx#stx-pair/null? _%$%tl5464554968%_)
                              (let ((_%__splice9850198502%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5464554968%_
                                      '0)))
                                (let ((_%$%tl5470354755%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9850198502%_
                                          '1)))
                                      (_%$%target5470154752%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9850198502%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5470354755%_)
                                      (_%__match9861398614%_
                                       _%$%e5463754941%_
                                       _%$%hd5463854945%_
                                       _%$%tl5463954948%_
                                       _%$%e5464054951%_
                                       _%$%hd5464154955%_
                                       _%$%tl5464254958%_
                                       _%$%e5464354961%_
                                       _%$%hd5464454965%_
                                       _%$%tl5464554968%_
                                       _%__splice9850198502%_
                                       _%$%target5470154752%_
                                       _%$%tl5470354755%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g5463154715%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g5463154715%_))))))
                  (if (gx#stx-pair/null? _%$%tl5464554968%_)
                      (let ((_%__splice9850198502%_
                             (gx#syntax-split-splice->vector
                              _%$%tl5464554968%_
                              '0)))
                        (let ((_%$%tl5470354755%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9850198502%_ '1)))
                              (_%$%target5470154752%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice9850198502%_ '0))))
                          (if (gx#stx-null? _%$%tl5470354755%_)
                              (_%__match9861398614%_
                               _%$%e5463754941%_
                               _%$%hd5463854945%_
                               _%$%tl5463954948%_
                               _%$%e5464054951%_
                               _%$%hd5464154955%_
                               _%$%tl5464254958%_
                               _%$%e5464354961%_
                               _%$%hd5464454965%_
                               _%$%tl5464554968%_
                               _%__splice9850198502%_
                               _%$%target5470154752%_
                               _%$%tl5470354755%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g5463154715%_)))))
                      (let () (declare (not safe)) (_%$%g5463154715%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5464554968%_)
                                                      (let ((_%__splice9850198502%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5464554968%_
                                                              '0)))
                                                        (let ((_%$%tl5470354755%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9850198502%_ '1)))
                      (_%$%target5470154752%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9850198502%_ '0))))
                  (if (gx#stx-null? _%$%tl5470354755%_)
                      (_%__match9861398614%_
                       _%$%e5463754941%_
                       _%$%hd5463854945%_
                       _%$%tl5463954948%_
                       _%$%e5464054951%_
                       _%$%hd5464154955%_
                       _%$%tl5464254958%_
                       _%$%e5464354961%_
                       _%$%hd5464454965%_
                       _%$%tl5464554968%_
                       _%__splice9850198502%_
                       _%$%target5470154752%_
                       _%$%tl5470354755%_)
                      (let () (declare (not safe)) (_%$%g5463154715%_)))))
              (let () (declare (not safe)) (_%$%g5463154715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/contract~TypeCast[1]#_g105377_|
                                                   _%$%hd5464454965%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl5464554968%_)
                                                      (let ((_%$%e5467454849%_
                                                             (gx#syntax-e
                                                              _%$%tl5464554968%_)))
                                                        (let ((_%$%tl5467654856%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e5467454849%_)))
                      (_%$%hd5467554853%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e5467454849%_))))
                  (if (gx#stx-pair? _%$%tl5467654856%_)
                      (let ((_%$%e5467754859%_
                             (gx#syntax-e _%$%tl5467654856%_)))
                        (let ((_%$%tl5467954866%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5467754859%_)))
                              (_%$%hd5467854863%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5467754859%_))))
                          (if (gx#stx-pair/null? _%$%tl5467954866%_)
                              (let ((_%__splice9849798498%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl5467954866%_
                                      '0)))
                                (let ((_%$%tl5468254872%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9849798498%_
                                          '1)))
                                      (_%$%target5468054869%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice9849798498%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl5468254872%_)
                                      (_%__match9858798588%_
                                       _%$%e5463754941%_
                                       _%$%hd5463854945%_
                                       _%$%tl5463954948%_
                                       _%$%e5464054951%_
                                       _%$%hd5464154955%_
                                       _%$%tl5464254958%_
                                       _%$%e5464354961%_
                                       _%$%hd5464454965%_
                                       _%$%tl5464554968%_
                                       _%$%e5467454849%_
                                       _%$%hd5467554853%_
                                       _%$%tl5467654856%_
                                       _%$%e5467754859%_
                                       _%$%hd5467854863%_
                                       _%$%tl5467954866%_
                                       _%__splice9849798498%_
                                       _%$%target5468054869%_
                                       _%$%tl5468254872%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl5464554968%_)
                                          (let ((_%__splice9850198502%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl5464554968%_
                                                  '0)))
                                            (let ((_%$%tl5470354755%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9850198502%_
                                                      '1)))
                                                  (_%$%target5470154752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice9850198502%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl5470354755%_)
                                                  (_%__match9861398614%_
                                                   _%$%e5463754941%_
                                                   _%$%hd5463854945%_
                                                   _%$%tl5463954948%_
                                                   _%$%e5464054951%_
                                                   _%$%hd5464154955%_
                                                   _%$%tl5464254958%_
                                                   _%$%e5464354961%_
                                                   _%$%hd5464454965%_
                                                   _%$%tl5464554968%_
                                                   _%__splice9850198502%_
                                                   _%$%target5470154752%_
                                                   _%$%tl5470354755%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g5463154715%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5463154715%_))))))
                              (if (gx#stx-pair/null? _%$%tl5464554968%_)
                                  (let ((_%__splice9850198502%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl5464554968%_
                                          '0)))
                                    (let ((_%$%tl5470354755%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9850198502%_
                                              '1)))
                                          (_%$%target5470154752%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice9850198502%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl5470354755%_)
                                          (_%__match9861398614%_
                                           _%$%e5463754941%_
                                           _%$%hd5463854945%_
                                           _%$%tl5463954948%_
                                           _%$%e5464054951%_
                                           _%$%hd5464154955%_
                                           _%$%tl5464254958%_
                                           _%$%e5464354961%_
                                           _%$%hd5464454965%_
                                           _%$%tl5464554968%_
                                           _%__splice9850198502%_
                                           _%$%target5470154752%_
                                           _%$%tl5470354755%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g5463154715%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5463154715%_))))))
                      (if (gx#stx-pair/null? _%$%tl5464554968%_)
                          (let ((_%__splice9850198502%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl5464554968%_
                                  '0)))
                            (let ((_%$%tl5470354755%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _%__splice9850198502%_ '1)))
                                  (_%$%target5470154752%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice9850198502%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl5470354755%_)
                                  (_%__match9861398614%_
                                   _%$%e5463754941%_
                                   _%$%hd5463854945%_
                                   _%$%tl5463954948%_
                                   _%$%e5464054951%_
                                   _%$%hd5464154955%_
                                   _%$%tl5464254958%_
                                   _%$%e5464354961%_
                                   _%$%hd5464454965%_
                                   _%$%tl5464554968%_
                                   _%__splice9850198502%_
                                   _%$%target5470154752%_
                                   _%$%tl5470354755%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5463154715%_)))))
                          (let () (declare (not safe)) (_%$%g5463154715%_))))))
              (if (gx#stx-pair/null? _%$%tl5464554968%_)
                  (let ((_%__splice9850198502%_
                         (gx#syntax-split-splice->vector
                          _%$%tl5464554968%_
                          '0)))
                    (let ((_%$%tl5470354755%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9850198502%_ '1)))
                          (_%$%target5470154752%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice9850198502%_ '0))))
                      (if (gx#stx-null? _%$%tl5470354755%_)
                          (_%__match9861398614%_
                           _%$%e5463754941%_
                           _%$%hd5463854945%_
                           _%$%tl5463954948%_
                           _%$%e5464054951%_
                           _%$%hd5464154955%_
                           _%$%tl5464254958%_
                           _%$%e5464354961%_
                           _%$%hd5464454965%_
                           _%$%tl5464554968%_
                           _%__splice9850198502%_
                           _%$%target5470154752%_
                           _%$%tl5470354755%_)
                          (let () (declare (not safe)) (_%$%g5463154715%_)))))
                  (let () (declare (not safe)) (_%$%g5463154715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl5464554968%_)
                                                      (let ((_%__splice9850198502%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl5464554968%_
                                                              '0)))
                                                        (let ((_%$%tl5470354755%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice9850198502%_ '1)))
                      (_%$%target5470154752%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice9850198502%_ '0))))
                  (if (gx#stx-null? _%$%tl5470354755%_)
                      (_%__match9861398614%_
                       _%$%e5463754941%_
                       _%$%hd5463854945%_
                       _%$%tl5463954948%_
                       _%$%e5464054951%_
                       _%$%hd5464154955%_
                       _%$%tl5464254958%_
                       _%$%e5464354961%_
                       _%$%hd5464454965%_
                       _%$%tl5464554968%_
                       _%__splice9850198502%_
                       _%$%target5470154752%_
                       _%$%tl5470354755%_)
                      (let () (declare (not safe)) (_%$%g5463154715%_)))))
              (let () (declare (not safe)) (_%$%g5463154715%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl5464554968%_)
                                              (let ((_%__splice9850198502%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl5464554968%_
                                                      '0)))
                                                (let ((_%$%tl5470354755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9850198502%_
                                                          '1)))
                                                      (_%$%target5470154752%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice9850198502%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5470354755%_)
                                                      (_%__match9861398614%_
                                                       _%$%e5463754941%_
                                                       _%$%hd5463854945%_
                                                       _%$%tl5463954948%_
                                                       _%$%e5464054951%_
                                                       _%$%hd5464154955%_
                                                       _%$%tl5464254958%_
                                                       _%$%e5464354961%_
                                                       _%$%hd5464454965%_
                                                       _%$%tl5464554968%_
                                                       _%__splice9850198502%_
                                                       _%$%target5470154752%_
                                                       _%$%tl5470354755%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g5463154715%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g5463154715%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g5463154715%_)))))
                          (let () (declare (not safe)) (_%$%g5463154715%_)))))
                  (let () (declare (not safe)) (_%$%g5463154715%_))))))))
    (define |gerbil/core/contract~TypeCast[:0:]#:~|
      (lambda (_%$stx55063%_)
        (let* ((_%__stx9861698617%_ _%$stx55063%_)
               (_%$%g5506855104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx9861698617%_))))
          (let ((_%__kont9861998620%_
                 (lambda (_%$%g5507055222%_ _%$%g5507155224%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons (cons (gx#datum->syntax '#f 'val)
                                     (cons _%$%g5507155224%_ '()))
                               (cons (cons (gx#datum->syntax '#f 'if)
                                           (cons (cons _%$%g5507055222%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'val)
                                                             '()))
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'val)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'contract-violation!)
                           (cons _%$%g5507155224%_
                                 (cons _%$%g5507055222%_
                                       (cons (gx#datum->syntax '#f 'val)
                                             '()))))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont9862198622%_
                 (lambda (_%$%g5508155161%_
                          _%$%g5508255163%_
                          _%$%g5508355164%_)
                   (cons (gx#datum->syntax '#f ':-)
                         (cons (cons (gx#datum->syntax '#f ':~)
                                     (cons _%$%g5508355164%_
                                           (cons _%$%g5508255163%_ '())))
                               (cons _%$%g5508155161%_ '()))))))
            (if (gx#stx-pair? _%__stx9861698617%_)
                (let ((_%$%e5507255192%_ (gx#syntax-e _%__stx9861698617%_)))
                  (let ((_%$%tl5507455199%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e5507255192%_)))
                        (_%$%hd5507355196%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e5507255192%_))))
                    (if (gx#stx-pair? _%$%tl5507455199%_)
                        (let ((_%$%e5507555202%_
                               (gx#syntax-e _%$%tl5507455199%_)))
                          (let ((_%$%tl5507755209%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e5507555202%_)))
                                (_%$%hd5507655206%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e5507555202%_))))
                            (if (gx#stx-pair? _%$%tl5507755209%_)
                                (let ((_%$%e5507855212%_
                                       (gx#syntax-e _%$%tl5507755209%_)))
                                  (let ((_%$%tl5508055219%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e5507855212%_)))
                                        (_%$%hd5507955216%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e5507855212%_))))
                                    (if (gx#stx-null? _%$%tl5508055219%_)
                                        (_%__kont9861998620%_
                                         _%$%hd5507955216%_
                                         _%$%hd5507655206%_)
                                        (if (gx#stx-pair? _%$%tl5508055219%_)
                                            (let ((_%$%e5509355141%_
                                                   (gx#syntax-e
                                                    _%$%tl5508055219%_)))
                                              (let ((_%$%tl5509555148%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e5509355141%_)))
                                                    (_%$%hd5509455145%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e5509355141%_))))
                                                (if (gx#identifier?
                                                     _%$%hd5509455145%_)
                                                    (if (gx#free-identifier=?
                                                         |gerbil/core/contract~TypeCast[1]#_g105378_|
                                                         _%$%hd5509455145%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl5509555148%_)
                                                            (let ((_%$%e5509655151%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl5509555148%_)))
                      (let ((_%$%tl5509855158%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5509655151%_)))
                            (_%$%hd5509755155%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5509655151%_))))
                        (if (gx#stx-null? _%$%tl5509855158%_)
                            (_%__kont9862198622%_
                             _%$%hd5509755155%_
                             _%$%hd5507955216%_
                             _%$%hd5507655206%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g5506855104%_)))))
                    (let () (declare (not safe)) (_%$%g5506855104%_)))
                (let () (declare (not safe)) (_%$%g5506855104%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g5506855104%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g5506855104%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g5506855104%_)))))
                        (let () (declare (not safe)) (_%$%g5506855104%_)))))
                (let () (declare (not safe)) (_%$%g5506855104%_)))))))
    (define |gerbil/core/contract~TypeCast[:0:]#::-|
      (lambda (_%$stx55243%_)
        (let ((_%$%g5524655253%_
               (lambda (_%$%g5524755249%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5524755249%_))))
          (_%$%g5524655253%_ _%$stx55243%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#:=|
      (lambda (_%$stx55257%_)
        (let ((_%$%g5526055267%_
               (lambda (_%$%g5526155263%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g5526155263%_))))
          (_%$%g5526055267%_ _%$stx55257%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#check-nil!|
      (lambda (_%$stx55271%_)
        (let* ((_%$%g5527555289%_
                (lambda (_%$%g5527655285%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5527655285%_)))
               (_%$%g5527455330%_
                (lambda (_%$%g5527655293%_)
                  (if (gx#stx-pair? _%$%g5527655293%_)
                      (let ((_%$%e5527855296%_
                             (gx#syntax-e _%$%g5527655293%_)))
                        (let ((_%$%hd5527955300%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5527855296%_)))
                              (_%$%tl5528055303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5527855296%_))))
                          (if (gx#stx-pair? _%$%tl5528055303%_)
                              (let ((_%$%e5528155306%_
                                     (gx#syntax-e _%$%tl5528055303%_)))
                                (let ((_%$%hd5528255310%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5528155306%_)))
                                      (_%$%tl5528355313%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5528155306%_))))
                                  (if (gx#stx-null? _%$%tl5528355313%_)
                                      (cons (gx#datum->syntax '#f 'or)
                                            (cons _%$%hd5528255310%_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'nil-dereference!)
                                                              (cons _%$%hd5528255310%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5527555289%_ _%$%g5527655293%_))))
                              (_%$%g5527555289%_ _%$%g5527655293%_))))
                      (_%$%g5527555289%_ _%$%g5527655293%_)))))
          (_%$%g5527455330%_ _%$stx55271%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#contract-violation!|
      (lambda (_%stx55334%_)
        (let* ((_%$%g5533755360%_
                (lambda (_%$%g5533855356%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5533855356%_)))
               (_%$%g5533655484%_
                (lambda (_%$%g5533855364%_)
                  (if (gx#stx-pair? _%$%g5533855364%_)
                      (let ((_%$%e5534355367%_
                             (gx#syntax-e _%$%g5533855364%_)))
                        (let ((_%$%hd5534455371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5534355367%_)))
                              (_%$%tl5534555374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5534355367%_))))
                          (if (gx#stx-pair? _%$%tl5534555374%_)
                              (let ((_%$%e5534655377%_
                                     (gx#syntax-e _%$%tl5534555374%_)))
                                (let ((_%$%hd5534755381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5534655377%_)))
                                      (_%$%tl5534855384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5534655377%_))))
                                  (if (gx#stx-pair? _%$%tl5534855384%_)
                                      (let ((_%$%e5534955387%_
                                             (gx#syntax-e _%$%tl5534855384%_)))
                                        (let ((_%$%hd5535055391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5534955387%_)))
                                              (_%$%tl5535155394%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5534955387%_))))
                                          (if (gx#stx-pair? _%$%tl5535155394%_)
                                              (let ((_%$%e5535255397%_
                                                     (gx#syntax-e
                                                      _%$%tl5535155394%_)))
                                                (let ((_%$%hd5535355401%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5535255397%_)))
                                                      (_%$%tl5535455404%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5535255397%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5535455404%_)
                                                      (let* ((_%$%g5543155439%_
                                                              (lambda (_%$%g5543255435%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5543255435%_)))
                     (_%$%g5543055458%_
                      (lambda (_%$%g5543255443%_)
                        (cons (gx#datum->syntax '#f 'begin-annotation)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           '@contract-violation)
                                          (cons _%$%g5543255443%_
                                                (cons _%$%hd5535055391%_
                                                      (cons _%$%hd5535355401%_
                                                            '()))))
                                    (cons (cons (gx#datum->syntax '#f 'abort!)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'raise-contract-violation-error)
                                                            (cons '"contract violation"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'context:
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%$%g5543255443%_ '()))
                                      (cons 'contract:
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'quote)
                                                        (cons _%$%hd5535055391%_
                                                              '()))
                                                  (cons 'value:
                                                        (cons _%$%hd5535355401%_
                                                              '()))))))))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))))))
                (_%$%g5543055458%_
                 (let ((_%$e55470%_
                        (let ((_%$e55462%_ (gx#stx-source _%$%hd5534755381%_)))
                          (if _%$e55462%_
                              _%$e55462%_
                              (let ((_%$e55466%_ (gx#stx-source _%stx55334%_)))
                                (if _%$e55466%_
                                    _%$e55466%_
                                    (gx#stx-source _%$%hd5534455371%_)))))))
                   (if _%$e55470%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5547655478%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e55470%_
                             '#t
                             _%$%g5547655478%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5533755360%_ _%$%g5533855364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5533755360%_
                                               _%$%g5533855364%_))))
                                      (_%$%g5533755360%_ _%$%g5533855364%_))))
                              (_%$%g5533755360%_ _%$%g5533855364%_))))
                      (_%$%g5533755360%_ _%$%g5533855364%_)))))
          (_%$%g5533655484%_ _%stx55334%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#runtime-contract-violation!|
      (lambda (_%stx55488%_)
        (let* ((_%$%g5549155514%_
                (lambda (_%$%g5549255510%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5549255510%_)))
               (_%$%g5549055638%_
                (lambda (_%$%g5549255518%_)
                  (if (gx#stx-pair? _%$%g5549255518%_)
                      (let ((_%$%e5549755521%_
                             (gx#syntax-e _%$%g5549255518%_)))
                        (let ((_%$%hd5549855525%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5549755521%_)))
                              (_%$%tl5549955528%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5549755521%_))))
                          (if (gx#stx-pair? _%$%tl5549955528%_)
                              (let ((_%$%e5550055531%_
                                     (gx#syntax-e _%$%tl5549955528%_)))
                                (let ((_%$%hd5550155535%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5550055531%_)))
                                      (_%$%tl5550255538%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5550055531%_))))
                                  (if (gx#stx-pair? _%$%tl5550255538%_)
                                      (let ((_%$%e5550355541%_
                                             (gx#syntax-e _%$%tl5550255538%_)))
                                        (let ((_%$%hd5550455545%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e5550355541%_)))
                                              (_%$%tl5550555548%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e5550355541%_))))
                                          (if (gx#stx-pair? _%$%tl5550555548%_)
                                              (let ((_%$%e5550655551%_
                                                     (gx#syntax-e
                                                      _%$%tl5550555548%_)))
                                                (let ((_%$%hd5550755555%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e5550655551%_)))
                                                      (_%$%tl5550855558%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e5550655551%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl5550855558%_)
                                                      (let* ((_%$%g5558555593%_
                                                              (lambda (_%$%g5558655589%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g5558655589%_)))
                     (_%$%g5558455612%_
                      (lambda (_%$%g5558655597%_)
                        (cons (gx#datum->syntax '#f 'abort!)
                              (cons (cons (gx#datum->syntax
                                           '#f
                                           'raise-contract-violation-error)
                                          (cons '"contract violation"
                                                (cons 'context:
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _%$%g5558655597%_ '()))
                    (cons 'contract:
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%$%hd5550455545%_ '()))
                                (cons 'value:
                                      (cons _%$%hd5550755555%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '())))))
                (_%$%g5558455612%_
                 (let ((_%$e55624%_
                        (let ((_%$e55616%_ (gx#stx-source _%$%hd5550155535%_)))
                          (if _%$e55616%_
                              _%$e55616%_
                              (let ((_%$e55620%_ (gx#stx-source _%stx55488%_)))
                                (if _%$e55620%_
                                    _%$e55620%_
                                    (gx#stx-source _%$%hd5549855525%_)))))))
                   (if _%$e55624%_
                       (call-with-output-string
                        '""
                        (lambda (_%$%g5563055632%_)
                          (let ()
                            (declare (not safe))
                            (##display-locat
                             _%$e55624%_
                             '#t
                             _%$%g5563055632%_))))
                       (gx#expander-context-id (gx#core-context-top))))))
              (_%$%g5549155514%_ _%$%g5549255518%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g5549155514%_
                                               _%$%g5549255518%_))))
                                      (_%$%g5549155514%_ _%$%g5549255518%_))))
                              (_%$%g5549155514%_ _%$%g5549255518%_))))
                      (_%$%g5549155514%_ _%$%g5549255518%_)))))
          (_%$%g5549055638%_ _%stx55488%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#nil-dereference!|
      (lambda (_%stx55642%_)
        (let* ((_%$%g5564555660%_
                (lambda (_%$%g5564655656%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5564655656%_)))
               (_%$%g5564455756%_
                (lambda (_%$%g5564655664%_)
                  (if (gx#stx-pair? _%$%g5564655664%_)
                      (let ((_%$%e5564955667%_
                             (gx#syntax-e _%$%g5564655664%_)))
                        (let ((_%$%hd5565055671%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5564955667%_)))
                              (_%$%tl5565155674%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5564955667%_))))
                          (if (gx#stx-pair? _%$%tl5565155674%_)
                              (let ((_%$%e5565255677%_
                                     (gx#syntax-e _%$%tl5565155674%_)))
                                (let ((_%$%hd5565355681%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5565255677%_)))
                                      (_%$%tl5565455684%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5565255677%_))))
                                  (if (gx#stx-null? _%$%tl5565455684%_)
                                      (let* ((_%$%g5570355711%_
                                              (lambda (_%$%g5570455707%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g5570455707%_)))
                                             (_%$%g5570255730%_
                                              (lambda (_%$%g5570455715%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'abort!)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'raise-contract-violation-error)
                          (cons '"nil (#f) derefence"
                                (cons 'context:
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%$%g5570455715%_ '()))
                                            (cons 'contract:
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote)
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'check-nil!)
                                  (cons _%$%hd5565355681%_ '()))
                            '()))
                (cons 'value: (cons '#f '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g5570255730%_
                                         (let ((_%$e55742%_
                                                (let ((_%$e55734%_
                                                       (gx#stx-source
                                                        _%$%hd5565355681%_)))
                                                  (if _%$e55734%_
                                                      _%$e55734%_
                                                      (let ((_%$e55738%_
                                                             (gx#stx-source
                                                              _%stx55642%_)))
                                                        (if _%$e55738%_
                                                            _%$e55738%_
                                                            (gx#stx-source
                                                             _%$%hd5565055671%_)))))))
                                           (if _%$e55742%_
                                               (call-with-output-string
                                                '""
                                                (lambda (_%$%g5574855750%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (##display-locat
                                                     _%$e55742%_
                                                     '#t
                                                     _%$%g5574855750%_))))
                                               (gx#expander-context-id
                                                (gx#core-context-top))))))
                                      (_%$%g5564555660%_ _%$%g5564655664%_))))
                              (_%$%g5564555660%_ _%$%g5564655664%_))))
                      (_%$%g5564555660%_ _%$%g5564655664%_)))))
          (_%$%g5564455756%_ _%stx55642%_))))
    (define |gerbil/core/contract~TypeCast[:0:]#abort!|
      (lambda (_%$stx55760%_)
        (let* ((_%$%g5576455778%_
                (lambda (_%$%g5576555774%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g5576555774%_)))
               (_%$%g5576355819%_
                (lambda (_%$%g5576555782%_)
                  (if (gx#stx-pair? _%$%g5576555782%_)
                      (let ((_%$%e5576755785%_
                             (gx#syntax-e _%$%g5576555782%_)))
                        (let ((_%$%hd5576855789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e5576755785%_)))
                              (_%$%tl5576955792%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e5576755785%_))))
                          (if (gx#stx-pair? _%$%tl5576955792%_)
                              (let ((_%$%e5577055795%_
                                     (gx#syntax-e _%$%tl5576955792%_)))
                                (let ((_%$%hd5577155799%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e5577055795%_)))
                                      (_%$%tl5577255802%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e5577055795%_))))
                                  (if (gx#stx-null? _%$%tl5577255802%_)
                                      (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@abort)
                                                        '())
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'begin)
                                                              (cons _%$%hd5577155799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons (cons (gx#datum->syntax '#f 'void) '())
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g5576455778%_ _%$%g5576555782%_))))
                              (_%$%g5576455778%_ _%$%g5576555782%_))))
                      (_%$%g5576455778%_ _%$%g5576555782%_)))))
          (_%$%g5576355819%_ _%$stx55760%_))))))
