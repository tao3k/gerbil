(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g128163_|
    (gx#core-deserialize-mark
     '(0
       (id . _%id127242%_)
       ($%arg127217 . _%$%arg127217127275%_)
       (arg . _%arg127305%_)
       ($%arg127218 . _%$%arg127218127289%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128164_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128163_|)))
  (define |[1]#_g128166_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128167_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128166_|)))
  (define |[1]#_g128168_|
    (gx#core-deserialize-mark
     '(0
       ($%arg127338 . _%$%arg127338127395%_)
       (id . _%id127362%_)
       ($%arg127339 . _%$%arg127339127409%_)
       (arg . _%arg127425%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128169_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128168_|)))
  (define |[1]#_g128171_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128172_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128171_|)))
  (define |[1]#_g128173_|
    (gx#core-deserialize-mark
     '(0
       ($%arg127459 . _%$%arg127459127529%_)
       (id . _%id127482%_)
       ($%arg127458 . _%$%arg127458127515%_)
       (arg . _%arg127545%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128174_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128173_|)))
  (define |[1]#_g128176_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128177_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128176_|)))
  (define |[1]#_g128178_|
    (gx#core-deserialize-mark
     '(0
       ($%arg127578 . _%$%arg127578127635%_)
       (id . _%id127602%_)
       ($%arg127579 . _%$%arg127579127649%_)
       (arg . _%arg127665%_))
     (gx#import-module '(:gerbil/core/contract Interface))))
  (define |[1]#_g128179_|
    (##structure
     gx#syntax-quote::t
     'with-dispatch-arguments
     #f
     (gx#current-expander-context)
     (list |[1]#_g128178_|)))
  (define |[1]#_g128181_|
    (gx#core-deserialize-mark
     '(0)
     (gx#import-module '(:gerbil/core/contract TypedDefinitions))))
  (define |[1]#_g128182_|
    (##structure
     gx#syntax-quote::t
     'using
     #f
     (gx#current-expander-context)
     (list |[1]#_g128181_|)))
  (begin
    (define |[:0:]#@make-promise|
      (lambda (_%$stx127199%_)
        (let* ((_%__stx128045128046%_ _%$stx127199%_)
               (_%$%g127204127225%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128045128046%_))))
          (let ((_%__kont128048128049%_
                 (lambda (_%$%g127206127291%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128164_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp128165
                                                  (lambda (_%$%g127306127309%_
                                                           _%$%g127307127312%_)
                                                    (cons _%$%g127306127309%_
                                                          _%$%g127307127312%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128165
                                              '()
                                              _%$%g127206127291%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128167_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128052128053%_
                 (lambda (_%$%g127219127232%_)
                   (gx#datum->syntax '#f 'make-promise))))
            (let* ((_%$%g127203127244%_
                    (lambda ()
                      (let ((_%$%g127219127232%_ _%__stx128045128046%_))
                        (if (gx#identifier? _%$%g127219127232%_)
                            (_%__kont128052128053%_ _%$%g127219127232%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127204127225%_))))))
                   (_%__match128068128069%_
                    (lambda (_%$%e127207127251%_
                             _%$%hd127208127255%_
                             _%$%tl127209127258%_
                             _%__splice128050128051%_
                             _%$%target127210127261%_
                             _%$%tl127212127264%_)
                      (letrec ((_%$%loop127213127267%_
                                (lambda (_%$%hd127211127271%_
                                         _%$%arg127217127274%_)
                                  (if (gx#stx-pair? _%$%hd127211127271%_)
                                      (let ((_%$%e127214127277%_
                                             (gx#syntax-e
                                              _%$%hd127211127271%_)))
                                        (let ((_%$%lp-tl127216127284%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127214127277%_)))
                                              (_%$%lp-hd127215127281%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127214127277%_))))
                                          (_%$%loop127213127267%_
                                           _%$%lp-tl127216127284%_
                                           (cons _%$%lp-hd127215127281%_
                                                 _%$%arg127217127274%_))))
                                      (let ((_%$%arg127218127287%_
                                             (reverse _%$%arg127217127274%_)))
                                        (_%__kont128048128049%_
                                         _%$%arg127218127287%_))))))
                        (_%$%loop127213127267%_
                         _%$%target127210127261%_
                         '())))))
              (if (gx#stx-pair? _%__stx128045128046%_)
                  (let ((_%$%e127207127251%_
                         (gx#syntax-e _%__stx128045128046%_)))
                    (let ((_%$%tl127209127258%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127207127251%_)))
                          (_%$%hd127208127255%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127207127251%_))))
                      (if (gx#stx-pair/null? _%$%tl127209127258%_)
                          (let ((_%__splice128050128051%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127209127258%_
                                  '0)))
                            (let ((_%$%tl127212127264%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128050128051%_
                                      '1)))
                                  (_%$%target127210127261%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128050128051%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127212127264%_)
                                  (_%__match128068128069%_
                                   _%$%e127207127251%_
                                   _%$%hd127208127255%_
                                   _%$%tl127209127258%_
                                   _%__splice128050128051%_
                                   _%$%target127210127261%_
                                   _%$%tl127212127264%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127203127244%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127203127244%_)))))
                  (let () (declare (not safe)) (_%$%g127203127244%_))))))))
    (define |[:0:]#@make-atomic-promise|
      (lambda (_%$stx127320%_)
        (let* ((_%__stx128071128072%_ _%$stx127320%_)
               (_%$%g127325127346%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128071128072%_))))
          (let ((_%__kont128074128075%_
                 (lambda (_%$%g127327127411%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128169_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'thunk) '())
                                     (cons (let ((__tmp128170
                                                  (lambda (_%$%g127426127429%_
                                                           _%$%g127427127432%_)
                                                    (cons _%$%g127426127429%_
                                                          _%$%g127427127432%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128170
                                              '()
                                              _%$%g127327127411%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128172_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'thunk)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__make-atomic-promise)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'thunk)
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128078128079%_
                 (lambda (_%$%g127340127353%_)
                   (gx#datum->syntax '#f 'make-atomic-promise))))
            (let* ((_%$%g127324127364%_
                    (lambda ()
                      (let ((_%$%g127340127353%_ _%__stx128071128072%_))
                        (if (gx#identifier? _%$%g127340127353%_)
                            (_%__kont128078128079%_ _%$%g127340127353%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127325127346%_))))))
                   (_%__match128094128095%_
                    (lambda (_%$%e127328127371%_
                             _%$%hd127329127375%_
                             _%$%tl127330127378%_
                             _%__splice128076128077%_
                             _%$%target127331127381%_
                             _%$%tl127333127384%_)
                      (letrec ((_%$%loop127334127387%_
                                (lambda (_%$%hd127332127391%_
                                         _%$%arg127338127394%_)
                                  (if (gx#stx-pair? _%$%hd127332127391%_)
                                      (let ((_%$%e127335127397%_
                                             (gx#syntax-e
                                              _%$%hd127332127391%_)))
                                        (let ((_%$%lp-tl127337127404%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127335127397%_)))
                                              (_%$%lp-hd127336127401%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127335127397%_))))
                                          (_%$%loop127334127387%_
                                           _%$%lp-tl127337127404%_
                                           (cons _%$%lp-hd127336127401%_
                                                 _%$%arg127338127394%_))))
                                      (let ((_%$%arg127339127407%_
                                             (reverse _%$%arg127338127394%_)))
                                        (_%__kont128074128075%_
                                         _%$%arg127339127407%_))))))
                        (_%$%loop127334127387%_
                         _%$%target127331127381%_
                         '())))))
              (if (gx#stx-pair? _%__stx128071128072%_)
                  (let ((_%$%e127328127371%_
                         (gx#syntax-e _%__stx128071128072%_)))
                    (let ((_%$%tl127330127378%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127328127371%_)))
                          (_%$%hd127329127375%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127328127371%_))))
                      (if (gx#stx-pair/null? _%$%tl127330127378%_)
                          (let ((_%__splice128076128077%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127330127378%_
                                  '0)))
                            (let ((_%$%tl127333127384%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128076128077%_
                                      '1)))
                                  (_%$%target127331127381%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128076128077%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127333127384%_)
                                  (_%__match128094128095%_
                                   _%$%e127328127371%_
                                   _%$%hd127329127375%_
                                   _%$%tl127330127378%_
                                   _%__splice128076128077%_
                                   _%$%target127331127381%_
                                   _%$%tl127333127384%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127324127364%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127324127364%_)))))
                  (let () (declare (not safe)) (_%$%g127324127364%_))))))))
    (define |[:0:]#@with-unwind-protect|
      (lambda (_%$stx127440%_)
        (let* ((_%__stx128097128098%_ _%$stx127440%_)
               (_%$%g127445127466%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128097128098%_))))
          (let ((_%__kont128100128101%_
                 (lambda (_%$%g127447127531%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128174_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp128175
                                                  (lambda (_%$%g127546127549%_
                                                           _%$%g127547127552%_)
                                                    (cons _%$%g127546127549%_
                                                          _%$%g127547127552%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128175
                                              '()
                                              _%$%g127447127531%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128177_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128104128105%_
                 (lambda (_%$%g127460127473%_)
                   (gx#datum->syntax '#f 'with-unwind-protect))))
            (let* ((_%$%g127444127484%_
                    (lambda ()
                      (let ((_%$%g127460127473%_ _%__stx128097128098%_))
                        (if (gx#identifier? _%$%g127460127473%_)
                            (_%__kont128104128105%_ _%$%g127460127473%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127445127466%_))))))
                   (_%__match128120128121%_
                    (lambda (_%$%e127448127491%_
                             _%$%hd127449127495%_
                             _%$%tl127450127498%_
                             _%__splice128102128103%_
                             _%$%target127451127501%_
                             _%$%tl127453127504%_)
                      (letrec ((_%$%loop127454127507%_
                                (lambda (_%$%hd127452127511%_
                                         _%$%arg127458127514%_)
                                  (if (gx#stx-pair? _%$%hd127452127511%_)
                                      (let ((_%$%e127455127517%_
                                             (gx#syntax-e
                                              _%$%hd127452127511%_)))
                                        (let ((_%$%lp-tl127457127524%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127455127517%_)))
                                              (_%$%lp-hd127456127521%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127455127517%_))))
                                          (_%$%loop127454127507%_
                                           _%$%lp-tl127457127524%_
                                           (cons _%$%lp-hd127456127521%_
                                                 _%$%arg127458127514%_))))
                                      (let ((_%$%arg127459127527%_
                                             (reverse _%$%arg127458127514%_)))
                                        (_%__kont128100128101%_
                                         _%$%arg127459127527%_))))))
                        (_%$%loop127454127507%_
                         _%$%target127451127501%_
                         '())))))
              (if (gx#stx-pair? _%__stx128097128098%_)
                  (let ((_%$%e127448127491%_
                         (gx#syntax-e _%__stx128097128098%_)))
                    (let ((_%$%tl127450127498%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127448127491%_)))
                          (_%$%hd127449127495%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127448127491%_))))
                      (if (gx#stx-pair/null? _%$%tl127450127498%_)
                          (let ((_%__splice128102128103%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127450127498%_
                                  '0)))
                            (let ((_%$%tl127453127504%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128102128103%_
                                      '1)))
                                  (_%$%target127451127501%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128102128103%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127453127504%_)
                                  (_%__match128120128121%_
                                   _%$%e127448127491%_
                                   _%$%hd127449127495%_
                                   _%$%tl127450127498%_
                                   _%__splice128102128103%_
                                   _%$%target127451127501%_
                                   _%$%tl127453127504%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127444127484%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127444127484%_)))))
                  (let () (declare (not safe)) (_%$%g127444127484%_))))))))
    (define |[:0:]#@with-unwind-protect!|
      (lambda (_%$stx127560%_)
        (let* ((_%__stx128123128124%_ _%$stx127560%_)
               (_%$%g127565127586%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx128123128124%_))))
          (let ((_%__kont128126128127%_
                 (lambda (_%$%g127567127651%_)
                   (cons (gx#datum->syntax
                          |[1]#_g128179_|
                          'with-dispatch-arguments
                          '#f
                          '#f)
                         (cons (cons (cons (gx#datum->syntax '#f 'K)
                                           (cons (gx#datum->syntax '#f 'fini)
                                                 '()))
                                     (cons (let ((__tmp128180
                                                  (lambda (_%$%g127666127669%_
                                                           _%$%g127667127672%_)
                                                    (cons _%$%g127666127669%_
                                                          _%$%g127667127672%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp128180
                                              '()
                                              _%$%g127567127651%_))
                                           '()))
                               (cons (cons (gx#datum->syntax
                                            |[1]#_g128182_|
                                            'using
                                            '#f
                                            '#f)
                                           (cons (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'K)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            ':)
                           (cons (gx#datum->syntax '#f ':procedure) '())))
               (cons (cons (gx#datum->syntax '#f 'fini)
                           (cons (gx#datum->syntax '#f ':)
                                 (cons (gx#datum->syntax '#f ':procedure)
                                       '())))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '__with-unwind-protect!)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'K)
                           (cons (gx#datum->syntax '#f 'fini) '())))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont128130128131%_
                 (lambda (_%$%g127580127593%_)
                   (gx#datum->syntax '#f 'with-unwind-protect!))))
            (let* ((_%$%g127564127604%_
                    (lambda ()
                      (let ((_%$%g127580127593%_ _%__stx128123128124%_))
                        (if (gx#identifier? _%$%g127580127593%_)
                            (_%__kont128130128131%_ _%$%g127580127593%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g127565127586%_))))))
                   (_%__match128146128147%_
                    (lambda (_%$%e127568127611%_
                             _%$%hd127569127615%_
                             _%$%tl127570127618%_
                             _%__splice128128128129%_
                             _%$%target127571127621%_
                             _%$%tl127573127624%_)
                      (letrec ((_%$%loop127574127627%_
                                (lambda (_%$%hd127572127631%_
                                         _%$%arg127578127634%_)
                                  (if (gx#stx-pair? _%$%hd127572127631%_)
                                      (let ((_%$%e127575127637%_
                                             (gx#syntax-e
                                              _%$%hd127572127631%_)))
                                        (let ((_%$%lp-tl127577127644%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e127575127637%_)))
                                              (_%$%lp-hd127576127641%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e127575127637%_))))
                                          (_%$%loop127574127627%_
                                           _%$%lp-tl127577127644%_
                                           (cons _%$%lp-hd127576127641%_
                                                 _%$%arg127578127634%_))))
                                      (let ((_%$%arg127579127647%_
                                             (reverse _%$%arg127578127634%_)))
                                        (_%__kont128126128127%_
                                         _%$%arg127579127647%_))))))
                        (_%$%loop127574127627%_
                         _%$%target127571127621%_
                         '())))))
              (if (gx#stx-pair? _%__stx128123128124%_)
                  (let ((_%$%e127568127611%_
                         (gx#syntax-e _%__stx128123128124%_)))
                    (let ((_%$%tl127570127618%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e127568127611%_)))
                          (_%$%hd127569127615%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e127568127611%_))))
                      (if (gx#stx-pair/null? _%$%tl127570127618%_)
                          (let ((_%__splice128128128129%_
                                 (gx#syntax-split-splice->vector
                                  _%$%tl127570127618%_
                                  '0)))
                            (let ((_%$%tl127573127624%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128128128129%_
                                      '1)))
                                  (_%$%target127571127621%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice128128128129%_
                                      '0))))
                              (if (gx#stx-null? _%$%tl127573127624%_)
                                  (_%__match128146128147%_
                                   _%$%e127568127611%_
                                   _%$%hd127569127615%_
                                   _%$%tl127570127618%_
                                   _%__splice128128128129%_
                                   _%$%target127571127621%_
                                   _%$%tl127573127624%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g127564127604%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g127564127604%_)))))
                  (let () (declare (not safe)) (_%$%g127564127604%_))))))))))
