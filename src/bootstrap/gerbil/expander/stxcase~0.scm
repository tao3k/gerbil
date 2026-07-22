(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1784461444)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp199487 (list gx#expander::t))
            (__tmp199486 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp199487
         '(id depth)
         __tmp199486
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args199483%_
        (apply make-instance gx#syntax-pattern::t _%$args199483%_)))
    (define gx#syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'id)))
    (define gx#syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'depth)))
    (define gx#syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gx#syntax-pattern::t 'e)))
    (define gx#&syntax-pattern-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'id)))
    (define gx#&syntax-pattern-depth-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'depth)))
    (define gx#&syntax-pattern-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gx#syntax-pattern::t 'e)))
    (define gx#syntax-pattern::apply-macro-expander
      (lambda (_%self199469%_ _%stx199470%_)
        (let ((_%self199473%_ _%self199469%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx199470%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx198936%_)
        (letrec ((_%generate198938%_
                  (lambda (_%e199178%_)
                    (letrec ((_%BUG199180%_
                              (lambda (_%q199345%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx198936%_
                                         _%e199178%_
                                         _%q199345%_))))
                             (_%local-pattern-e199181%_
                              (lambda (_%pat199343%_)
                                (let ((__tmp199488
                                       (##structure-ref
                                        _%pat199343%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp199488))))
                             (_%getvar199182%_
                              (lambda (_%q199340%_ _%vars199341%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q199340%_
                                   _%vars199341%_
                                   _%BUG199180%_))))
                             (_%getarg199183%_
                              (lambda (_%arg199306%_ _%vars199307%_)
                                (let* ((_%$%arg199308199315%_ _%arg199306%_)
                                       (_%$%E199310199319%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg199308199315%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K199311199328%_
                                        (lambda (_%e199322%_ _%tag199323%_)
                                          (let ((_%$e199325%_ _%tag199323%_))
                                            (if (eq? 'ref _%$e199325%_)
                                                (_%getvar199182%_
                                                 _%e199322%_
                                                 _%vars199307%_)
                                                (if (eq? 'pattern _%$e199325%_)
                                                    (_%local-pattern-e199181%_
                                                     _%e199322%_)
                                                    (_%BUG199180%_
                                                     _%arg199306%_)))))))
                                  (if (pair? _%$%arg199308199315%_)
                                      (let ((_%$%hd199312199331%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg199308199315%_)))
                                            (_%$%tl199313199333%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg199308199315%_))))
                                        (let* ((_%tag199336%_
                                                _%$%hd199312199331%_)
                                               (_%e199338%_
                                                _%$%tl199313199333%_))
                                          (_%$%K199311199328%_
                                           _%e199338%_
                                           _%tag199336%_)))
                                      (_%$%E199310199319%_))))))
                      (let _%recur199185%_ ((_%e199187%_ _%e199178%_)
                                            (_%vars199188%_ '()))
                        (let* ((_%$%e199189199196%_ _%e199187%_)
                               (_%$%E199191199200%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e199189199196%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K199192199294%_
                                (lambda (_%body199203%_ _%tag199204%_)
                                  (let ((_%$e199206%_ _%tag199204%_))
                                    (if (eq? 'datum _%$e199206%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body199203%_))
                                        (if (eq? 'term _%$e199206%_)
                                            (let ((_%id199209%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body199203%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id199209%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks199212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id199209%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks199212%_)
                                                        (let ((__tmp199489
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body199203%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp199489))
                (let ((__tmp199491
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body199203%_)))
                      (__tmp199490
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body199203%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp199491
                   __tmp199490
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id199209%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body199203%_))
                                                      (_%BUG199180%_
                                                       _%e199187%_))))
                                            (if (eq? 'pattern _%$e199206%_)
                                                (_%local-pattern-e199181%_
                                                 _%body199203%_)
                                                (if (eq? 'ref _%$e199206%_)
                                                    (_%getvar199182%_
                                                     _%body199203%_
                                                     _%vars199188%_)
                                                    (if (eq? 'cons
                                                             _%$e199206%_)
                                                        (let ((__tmp199493
                                                               (_%recur199185%_
                                                                (car _%body199203%_)
                                                                _%vars199188%_))
                                                              (__tmp199492
                                                               (_%recur199185%_
                                                                (cdr _%body199203%_)
                                                                _%vars199188%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp199493
                                                           __tmp199492))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e199206%_)
                    (let ((__tmp199494
                           (_%recur199185%_ _%body199203%_ _%vars199188%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp199494))
                    (if (eq? 'box _%$e199206%_)
                        (let ((__tmp199495
                               (_%recur199185%_
                                _%body199203%_
                                _%vars199188%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp199495))
                        (if (eq? 'splice _%$e199206%_)
                            (let* ((_%$%body199215199226%_ _%body199203%_)
                                   (_%$%E199217199230%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body199215199226%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K199218199268%_
                                    (lambda (_%args199233%_
                                             _%iv199234%_
                                             _%hd199235%_
                                             _%depth199236%_)
                                      (let* ((_%targets199242%_
                                              (map (lambda (_%$%g199237199239%_)
                                                     (_%getarg199183%_
                                                      _%$%g199237199239%_
                                                      _%vars199188%_))
                                                   _%args199233%_))
                                             (_%fold-in199244%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args199233%_)))
                                             (_%fold-out199246%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args199248%_
                                              (let ((__tmp199496
                                                     (cons _%fold-out199246%_
                                                           '())))
                                                (declare (not safe))
                                                (##append
                                                 _%fold-in199244%_
                                                 __tmp199496)))
                                             (_%lambda-body199265%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth199236%_ '1))
                                                  (let ((_%r-args199256%_
                                                         (map (lambda (_%arg199250%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg199250%_)))
                      _%args199233%_))
                (_%r-vars199257%_
                 (let ((__tmp199497
                        (lambda (_%arg199252%_ _%var199253%_ _%r199254%_)
                          (cons (cons (cdr _%arg199252%_) _%var199253%_)
                                _%r199254%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp199497
                    _%vars199188%_
                    _%args199233%_
                    _%fold-in199244%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur199185%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth199236%_ '1))
                         (cons _%hd199235%_
                               (cons (cons 'var _%fold-out199246%_)
                                     _%r-args199256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars199257%_))
                                                  (let* ((_%hd-vars199263%_
                                                          (let ((__tmp199498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg199259%_ _%var199260%_ _%r199261%_)
                           (cons (cons (cdr _%arg199259%_) _%var199260%_)
                                 _%r199261%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp199498
                     _%vars199188%_
                     _%args199233%_
                     _%fold-in199244%_)))
                 (__tmp199499
                  (_%recur199185%_ _%hd199235%_ _%hd-vars199263%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp199499
                                                     _%fold-out199246%_)))))
                                        (let ((__tmp199503
                                               (if (let ((__tmp199504
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets199242%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp199504 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets199242%_))
                                                   '#!void))
                                              (__tmp199500
                                               (let ((__tmp199502
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args199248%_
                                                         _%lambda-body199265%_)))
                                                     (__tmp199501
                                                      (_%recur199185%_
                                                       _%iv199234%_
                                                       _%vars199188%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp199502
                                                  __tmp199501
                                                  _%targets199242%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp199503
                                           __tmp199500))))))
                              (if (pair? _%$%body199215199226%_)
                                  (let ((_%$%hd199219199271%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body199215199226%_)))
                                        (_%$%tl199220199273%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body199215199226%_))))
                                    (let ((_%depth199276%_
                                           _%$%hd199219199271%_))
                                      (if (pair? _%$%tl199220199273%_)
                                          (let ((_%$%hd199221199278%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl199220199273%_)))
                                                (_%$%tl199222199280%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl199220199273%_))))
                                            (let ((_%hd199283%_
                                                   _%$%hd199221199278%_))
                                              (if (pair? _%$%tl199222199280%_)
                                                  (let ((_%$%hd199223199285%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl199222199280%_)))
                                                        (_%$%tl199224199287%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl199222199280%_))))
                                                    (let* ((_%iv199290%_
                                                            _%$%hd199223199285%_)
                                                           (_%args199292%_
                                                            _%$%tl199224199287%_))
                                                      (_%$%K199218199268%_
                                                       _%args199292%_
                                                       _%iv199290%_
                                                       _%hd199283%_
                                                       _%depth199276%_)))
                                                  (_%$%E199217199230%_))))
                                          (_%$%E199217199230%_))))
                                  (_%$%E199217199230%_)))
                            (if (eq? 'var _%$e199206%_)
                                _%body199203%_
                                (_%BUG199180%_ _%e199187%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e199189199196%_)
                              (let ((_%$%hd199193199297%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e199189199196%_)))
                                    (_%$%tl199194199299%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e199189199196%_))))
                                (let* ((_%tag199302%_ _%$%hd199193199297%_)
                                       (_%body199304%_ _%$%tl199194199299%_))
                                  (_%$%K199192199294%_
                                   _%body199304%_
                                   _%tag199302%_)))
                              (_%$%E199191199200%_)))))))
                 (_%parse198939%_
                  (lambda (_%e198980%_)
                    (letrec ((_%make-cons198982%_
                              (lambda (_%hd199170%_ _%tl199171%_)
                                (let ((_g199505_ _%hd199170%_)
                                      (_g199507_ _%tl199171%_))
                                  (begin
                                    (let ((_g199506_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199505_)
                                                 (##values-length _g199505_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199506_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199506_)))
                                    (let ((_g199508_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199507_)
                                                 (##values-length _g199507_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199508_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199508_)))
                                    (let ((_%hd-e199173%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199505_ 0)))
                                          (_%hd-vars199174%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199505_ 1))))
                                      (let ((_%tl-e199175%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199507_ 0)))
                                            (_%tl-vars199176%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199507_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e199173%_
                                                            _%tl-e199175%_))
                                                (append _%hd-vars199174%_
                                                        _%tl-vars199176%_))))))))
                             (_%make-splice198983%_
                              (lambda (_%where199106%_
                                       _%depth199107%_
                                       _%hd199108%_
                                       _%tl199109%_)
                                (let ((_g199509_ _%hd199108%_)
                                      (_g199511_ _%tl199109%_))
                                  (begin
                                    (let ((_g199510_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199509_)
                                                 (##values-length _g199509_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199510_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199510_)))
                                    (let ((_g199512_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199511_)
                                                 (##values-length _g199511_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199512_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199512_)))
                                    (let ((_%hd-e199111%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199509_ 0)))
                                          (_%hd-vars199112%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199509_ 1))))
                                      (let ((_%tl-e199113%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199511_ 0)))
                                            (_%tl-vars199114%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199511_ 1))))
                                        (let _%lp199116%_ ((_%rest199118%_
                                                            _%hd-vars199112%_)
                                                           (_%targets199119%_
                                                            '())
                                                           (_%vars199120%_
                                                            _%tl-vars199114%_))
                                          (let* ((_%$%rest199121199131%_
                                                  _%rest199118%_)
                                                 (_%$%else199123199139%_
                                                  (lambda ()
                                                    (if (null? _%targets199119%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx198936%_
                                                           _%where199106%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth199107%_
                                    (cons _%hd-e199111%_
                                          (cons _%tl-e199113%_
                                                _%targets199119%_))))
                        _%vars199120%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K199125199151%_
                                                  (lambda (_%rest199142%_
                                                           _%hd-pat199143%_
                                                           _%hd-depth*199144%_)
                                                    (let ((_%hd-depth199146%_
                                                           (fx- _%hd-depth*199144%_
                                                                _%depth199107%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth199146%_))
                                                          (_%lp199116%_
                                                           _%rest199142%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat199143%_)
                         _%targets199119%_)
                   (cons (cons _%hd-depth199146%_ _%hd-pat199143%_)
                         _%vars199120%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth199146%_))
                      (_%lp199116%_
                       _%rest199142%_
                       (cons (cons 'pattern _%hd-pat199143%_)
                             _%targets199119%_)
                       _%vars199120%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx198936%_
                         _%where199106%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest199121199131%_)
                                                (let ((_%$%hd199126199154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest199121199131%_)))
                                                      (_%$%tl199127199156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest199121199131%_))))
                                                  (if (pair? _%$%hd199126199154%_)
                                                      (let ((_%$%hd199128199159%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd199126199154%_)))
                    (_%$%tl199129199161%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd199126199154%_))))
                (let* ((_%hd-depth*199164%_ _%$%hd199128199159%_)
                       (_%hd-pat199166%_ _%$%tl199129199161%_)
                       (_%rest199168%_ _%$%tl199127199156%_))
                  (_%$%K199125199151%_
                   _%rest199168%_
                   _%hd-pat199166%_
                   _%hd-depth*199164%_)))
              (_%$%else199123199139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else199123199139%_))))))))))
                             (_%recur198984%_
                              (lambda (_%e198989%_ _%is-e?198990%_)
                                (if (_%is-e?198990%_ _%e198989%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx198936%_))
                                    (if (gx#syntax-local-pattern? _%e198989%_)
                                        (let* ((_%pat198994%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e198989%_)))
                                               (_%depth198996%_
                                                (##structure-ref
                                                 _%pat198994%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth198996%_)
                                              (values (cons 'ref _%pat198994%_)
                                                      (cons (cons _%depth198996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat198994%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat198994%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e198989%_))
                                            (values (cons 'term _%e198989%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e198989%_))
                                                (let* ((_%$%e199000199007%_
                                                        _%e198989%_)
                                                       (_%$%E199002199011%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e199000199007%_))))
                                                       (_%$%E199001199093%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e199000199007%_))
                      (let ((_%$%e199003199015%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e199000199007%_))))
                        (let ((_%$%hd199004199018%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199003199015%_)))
                              (_%$%tl199005199020%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199003199015%_))))
                          (let* ((_%hd199023%_ _%$%hd199004199018%_)
                                 (_%rest199025%_ _%$%tl199005199020%_))
                            (if (_%is-e?198990%_ _%hd199023%_)
                                (let* ((_%$%e199026199033%_ _%rest199025%_)
                                       (_%$%E199028199037%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx198936%_
                                             _%e198989%_))))
                                       (_%$%E199027199051%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e199026199033%_))
                                              (let ((_%$%e199029199041%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e199026199033%_))))
                                                (let ((_%$%hd199030199044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e199029199041%_)))
                                                      (_%$%tl199031199046%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e199029199041%_))))
                                                  (let ((_%rest199049%_
                                                         _%$%hd199030199044%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl199031199046%_))
                                                        (_%recur198984%_
                                                         _%rest199049%_
                                                         false)
                                                        (_%$%E199028199037%_)))))
                                              (_%$%E199028199037%_)))))
                                  (_%$%E199027199051%_))
                                (let _%lp199055%_ ((_%rest199057%_
                                                    _%rest199025%_)
                                                   (_%depth199058%_ '0))
                                  (let* ((_%$%e199059199066%_ _%rest199057%_)
                                         (_%$%E199061199070%_
                                          (lambda ()
                                            (if (fxpositive? _%depth199058%_)
                                                (_%make-splice198983%_
                                                 _%e198989%_
                                                 _%depth199058%_
                                                 (_%recur198984%_
                                                  _%hd199023%_
                                                  _%is-e?198990%_)
                                                 (_%recur198984%_
                                                  _%rest199057%_
                                                  _%is-e?198990%_))
                                                (_%make-cons198982%_
                                                 (_%recur198984%_
                                                  _%hd199023%_
                                                  _%is-e?198990%_)
                                                 (_%recur198984%_
                                                  _%rest199057%_
                                                  _%is-e?198990%_)))))
                                         (_%$%E199060199089%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e199059199066%_))
                                                (let ((_%$%e199062199074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e199059199066%_))))
                                                  (let ((_%$%hd199063199077%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e199062199074%_)))
                                                        (_%$%tl199064199079%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e199062199074%_))))
                                                    (let* ((_%rest-hd199082%_
                                                            _%$%hd199063199077%_)
                                                           (_%rest-tl199084%_
                                                            _%$%tl199064199079%_))
                                                      (if (_%is-e?198990%_
                                                           _%rest-hd199082%_)
                                                          (_%lp199055%_
                                                           _%rest-tl199084%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth199058%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth199058%_)
                      (_%make-splice198983%_
                       _%e198989%_
                       _%depth199058%_
                       (_%recur198984%_ _%hd199023%_ _%is-e?198990%_)
                       (_%recur198984%_ _%rest199057%_ _%is-e?198990%_))
                      (_%make-cons198982%_
                       (_%recur198984%_ _%hd199023%_ _%is-e?198990%_)
                       (_%recur198984%_ _%rest199057%_ _%is-e?198990%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E199061199070%_)))))
                                    (_%$%E199060199089%_)))))))
                      (_%$%E199002199011%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E199001199093%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e198989%_))
                                                    (let ((_g199513_
                                                           (_%recur198984%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e198989%_)))
                    _%is-e?198990%_)))
              (begin
                (let ((_g199514_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g199513_)
                             (##values-length _g199513_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g199514_ 2)))
                      (error "Context expects 2 values" _g199514_)))
                (let ((_%e199098%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199513_ 0)))
                      (_%vars199099%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199513_ 1))))
                  (values (cons 'vector _%e199098%_) _%vars199099%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e198989%_))
                                                        (let ((_g199515_
                                                               (_%recur198984%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e198989%_)))
                        _%is-e?198990%_)))
                  (begin
                    (let ((_g199516_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g199515_)
                                 (##values-length _g199515_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g199516_ 2)))
                          (error "Context expects 2 values" _g199516_)))
                    (let ((_%e199102%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199515_ 0)))
                          (_%vars199103%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199515_ 1))))
                      (values (cons 'box _%e199102%_) _%vars199103%_))))
                (values (cons 'datum _%e198989%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g199517_
                             (_%recur198984%_ _%e198980%_ gx#ellipsis?)))
                        (begin
                          (let ((_g199518_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g199517_)
                                       (##values-length _g199517_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g199518_ 2)))
                                (error "Context expects 2 values" _g199518_)))
                          (let ((_%tree198986%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199517_ 0)))
                                (_%vars198987%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199517_ 1))))
                            (if (null? _%vars198987%_)
                                _%tree198986%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx198936%_
                                   _%vars198987%_))))))))))
          (let* ((_%$%e198940198950%_ _%stx198936%_)
                 (_%$%E198942198954%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx198936%_))))
                 (_%$%E198941198976%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e198940198950%_))
                        (let ((_%$%e198943198958%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e198940198950%_))))
                          (let ((_%$%hd198944198961%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198943198958%_)))
                                (_%$%tl198945198963%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198943198958%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl198945198963%_))
                                (let ((_%$%e198946198966%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl198945198963%_))))
                                  (let ((_%$%hd198947198969%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198946198966%_)))
                                        (_%$%tl198948198971%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198946198966%_))))
                                    (let ((_%form198974%_
                                           _%$%hd198947198969%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl198948198971%_))
                                          (let ((__tmp199520
                                                 (_%generate198938%_
                                                  (_%parse198939%_
                                                   _%form198974%_)))
                                                (__tmp199519
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx198936%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp199520
                                             __tmp199519))
                                          (_%$%E198942198954%_)))))
                                (_%$%E198942198954%_))))
                        (_%$%E198942198954%_)))))
            (_%$%E198941198976%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx198185%_
               _%identifier=?198186%_
               _%unwrap-e198187%_
               _%wrap-e198188%_)
        (letrec ((_%generate-bindings198190%_
                  (lambda (_%target198800%_
                           _%ids198801%_
                           _%clauses198802%_
                           _%clause-ids198803%_
                           _%E198804%_)
                    (letrec ((_%generate1198806%_
                              (lambda (_%clause198903%_
                                       _%clause-id198904%_
                                       _%E198905%_)
                                (cons (cons _%clause-id198904%_ '())
                                      (cons (let ((__tmp199522
                                                   (cons _%target198800%_ '()))
                                                  (__tmp199521
                                                   (_%generate-clause198192%_
                                                    _%target198800%_
                                                    _%ids198801%_
                                                    _%clause198903%_
                                                    _%E198905%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp199522
                                               __tmp199521))
                                            '())))))
                      (let _%lp198808%_ ((_%rest198810%_ _%clauses198802%_)
                                         (_%rest-ids198811%_
                                          _%clause-ids198803%_)
                                         (_%bindings198812%_ '()))
                        (let* ((_%$%rest198813198821%_ _%rest198810%_)
                               (_%$%else198815198829%_
                                (lambda () _%bindings198812%_))
                               (_%$%K198817198891%_
                                (lambda (_%rest198832%_ _%clause198833%_)
                                  (let* ((_%$%rest-ids198834198841%_
                                          _%rest-ids198811%_)
                                         (_%$%E198836198845%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids198834198841%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K198837198879%_
                                          (lambda (_%rest-ids198848%_
                                                   _%clause-id198849%_)
                                            (let* ((_%$%rest-ids198850198858%_
                                                    _%rest-ids198848%_)
                                                   (_%$%else198852198866%_
                                                    (lambda ()
                                                      (cons (_%generate1198806%_
                                                             _%clause198833%_
                                                             _%clause-id198849%_
                                                             _%E198804%_)
                                                            _%bindings198812%_)))
                                                   (_%$%K198854198871%_
                                                    (lambda (_%next-clause-id198869%_)
                                                      (_%lp198808%_
                                                       _%rest198832%_
                                                       _%rest-ids198848%_
                                                       (cons (_%generate1198806%_
                                                              _%clause198833%_
                                                              _%clause-id198849%_
                                                              _%next-clause-id198869%_)
                                                             _%bindings198812%_)))))
                                              (if (pair? _%$%rest-ids198850198858%_)
                                                  (let* ((_%$%hd198855198874%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids198850198858%_)))
                                                         (_%next-clause-id198877%_
                                                          _%$%hd198855198874%_))
                                                    (_%$%K198854198871%_
                                                     _%next-clause-id198877%_))
                                                  (_%$%else198852198866%_))))))
                                    (if (pair? _%$%rest-ids198834198841%_)
                                        (let ((_%$%hd198838198882%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids198834198841%_)))
                                              (_%$%tl198839198884%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids198834198841%_))))
                                          (let* ((_%clause-id198887%_
                                                  _%$%hd198838198882%_)
                                                 (_%rest-ids198889%_
                                                  _%$%tl198839198884%_))
                                            (_%$%K198837198879%_
                                             _%rest-ids198889%_
                                             _%clause-id198887%_)))
                                        (_%$%E198836198845%_))))))
                          (if (pair? _%$%rest198813198821%_)
                              (let ((_%$%hd198818198894%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest198813198821%_)))
                                    (_%$%tl198819198896%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest198813198821%_))))
                                (let* ((_%clause198899%_ _%$%hd198818198894%_)
                                       (_%rest198901%_ _%$%tl198819198896%_))
                                  (_%$%K198817198891%_
                                   _%rest198901%_
                                   _%clause198899%_)))
                              (_%$%else198815198829%_)))))))
                 (_%generate-body198191%_
                  (lambda (_%bindings198760%_ _%body198761%_)
                    (let _%recur198763%_ ((_%rest198765%_ _%bindings198760%_))
                      (let* ((_%$%rest198766198774%_ _%rest198765%_)
                             (_%$%else198768198782%_
                              (lambda () _%body198761%_))
                             (_%$%K198770198788%_
                              (lambda (_%rest198785%_ _%hd198786%_)
                                (let ((__tmp199524 (cons _%hd198786%_ '()))
                                      (__tmp199523
                                       (_%recur198763%_ _%rest198785%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp199524
                                   __tmp199523)))))
                        (if (pair? _%$%rest198766198774%_)
                            (let ((_%$%hd198771198791%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest198766198774%_)))
                                  (_%$%tl198772198793%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest198766198774%_))))
                              (let* ((_%hd198796%_ _%$%hd198771198791%_)
                                     (_%rest198798%_ _%$%tl198772198793%_))
                                (_%$%K198770198788%_
                                 _%rest198798%_
                                 _%hd198796%_)))
                            (_%$%else198768198782%_))))))
                 (_%generate-clause198192%_
                  (lambda (_%target198623%_
                           _%ids198624%_
                           _%clause198625%_
                           _%E198626%_)
                    (letrec ((_%generate1198628%_
                              (lambda (_%hd198715%_
                                       _%fender198716%_
                                       _%body198717%_)
                                (let ((_g199525_
                                       (_%parse-clause198194%_
                                        _%hd198715%_
                                        _%ids198624%_)))
                                  (begin
                                    (let ((_g199526_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199525_)
                                                 (##values-length _g199525_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199526_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199526_)))
                                    (let ((_%e198719%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199525_ 0)))
                                          (_%mvars198720%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199525_ 1))))
                                      (let* ((_%pvars198722%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars198720%_))))
                                             (_%E198724%_
                                              (cons _%E198626%_
                                                    (cons _%target198623%_
                                                          '())))
                                             (_%K198757%_
                                              (let ((__tmp199527
                                                     (let ((__tmp199529
                                                            (map (lambda (_%mvar198726%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar198727%_)
                           (let* ((_%$%mvar198728198735%_ _%mvar198726%_)
                                  (_%$%E198730198739%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar198728198735%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K198731198745%_
                                   (lambda (_%depth198742%_ _%id198743%_)
                                     (cons _%id198743%_
                                           (cons (let ((__tmp199531
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id198743%_)))
                                                       (__tmp199530
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar198727%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp199531
                                                    __tmp199530
                                                    _%depth198742%_))
                                                 '())))))
                             (if (pair? _%$%mvar198728198735%_)
                                 (let ((_%$%hd198732198748%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar198728198735%_)))
                                       (_%$%tl198733198750%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar198728198735%_))))
                                   (let* ((_%id198753%_ _%$%hd198732198748%_)
                                          (_%depth198755%_
                                           _%$%tl198733198750%_))
                                     (_%$%K198731198745%_
                                      _%depth198755%_
                                      _%id198753%_)))
                                 (_%$%E198730198739%_))))
                         _%mvars198720%_
                         _%pvars198722%_))
                   (__tmp199528
                    (if (eq? _%fender198716%_ '#t)
                        _%body198717%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender198716%_
                           _%body198717%_
                           _%E198724%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp199529 __tmp199528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars198722%_
                                                 __tmp199527))))
                                        (_%generate-match198193%_
                                         _%hd198715%_
                                         _%target198623%_
                                         _%e198719%_
                                         _%mvars198720%_
                                         _%K198757%_
                                         _%E198724%_))))))))
                      (let* ((_%$%e198629198649%_ _%clause198625%_)
                             (_%$%E198638198653%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e198629198649%_))))
                             (_%$%E198631198687%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198629198649%_))
                                    (let ((_%$%e198639198657%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198629198649%_))))
                                      (let ((_%$%hd198640198660%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198639198657%_)))
                                            (_%$%tl198641198662%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198639198657%_))))
                                        (let ((_%hd198665%_
                                               _%$%hd198640198660%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198641198662%_))
                                              (let ((_%$%e198642198667%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198641198662%_))))
                                                (let ((_%$%hd198643198670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198642198667%_)))
                                                      (_%$%tl198644198672%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198642198667%_))))
                                                  (let ((_%fender198675%_
                                                         _%$%hd198643198670%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl198644198672%_))
                                                        (let ((_%$%e198645198677%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl198644198672%_))))
                  (let ((_%$%hd198646198680%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e198645198677%_)))
                        (_%$%tl198647198682%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e198645198677%_))))
                    (let ((_%body198685%_ _%$%hd198646198680%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl198647198682%_))
                          (_%generate1198628%_
                           _%hd198665%_
                           _%fender198675%_
                           _%body198685%_)
                          (_%$%E198638198653%_)))))
                (_%$%E198638198653%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E198638198653%_)))))
                                    (_%$%E198638198653%_))))
                             (_%$%E198630198711%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198629198649%_))
                                    (let ((_%$%e198632198691%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198629198649%_))))
                                      (let ((_%$%hd198633198694%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198632198691%_)))
                                            (_%$%tl198634198696%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198632198691%_))))
                                        (let ((_%hd198699%_
                                               _%$%hd198633198694%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198634198696%_))
                                              (let ((_%$%e198635198701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198634198696%_))))
                                                (let ((_%$%hd198636198704%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198635198701%_)))
                                                      (_%$%tl198637198706%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198635198701%_))))
                                                  (let ((_%body198709%_
                                                         _%$%hd198636198704%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl198637198706%_))
                                                        (_%generate1198628%_
                                                         _%hd198699%_
                                                         '#t
                                                         _%body198709%_)
                                                        (_%$%E198631198687%_)))))
                                              (_%$%E198631198687%_)))))
                                    (_%$%E198631198687%_)))))
                        (_%$%E198630198711%_)))))
                 (_%generate-match198193%_
                  (lambda (_%where198372%_
                           _%target198373%_
                           _%hd198374%_
                           _%mvars198375%_
                           _%K198376%_
                           _%E198377%_)
                    (letrec ((_%BUG198379%_
                              (lambda (_%q198621%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx198185%_
                                         _%hd198374%_
                                         _%q198621%_))))
                             (_%recur198380%_
                              (lambda (_%e198471%_
                                       _%vars198472%_
                                       _%target198473%_
                                       _%E198474%_
                                       _%k198475%_)
                                (let* ((_%$%e198476198483%_ _%e198471%_)
                                       (_%$%E198478198487%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e198476198483%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K198479198609%_
                                        (lambda (_%body198490%_ _%tag198491%_)
                                          (let ((_%$e198493%_ _%tag198491%_))
                                            (if (eq? 'any _%$e198493%_)
                                                (_%k198475%_ _%vars198472%_)
                                                (if (eq? 'id _%$e198493%_)
                                                    (let ((__tmp199536
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target198473%_)))
                                                          (__tmp199532
                                                           (let ((__tmp199534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp199535
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e198188%_
                                    _%body198490%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?198186%_
                             __tmp199535
                             _%target198473%_)))
                         (__tmp199533 (_%k198475%_ _%vars198472%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp199534 __tmp199533 _%E198474%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp199536 __tmp199532 _%E198474%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e198493%_)
                                                        (_%k198475%_
                                                         (cons (cons _%body198490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target198473%_)
                       _%vars198472%_))
                (if (eq? 'cons _%$e198493%_)
                    (let ((_%$e198496%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd198497%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl198498%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp199542
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target198473%_)))
                            (__tmp199537
                             (let ((__tmp199541
                                    (cons (cons (cons _%$e198496%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e198187%_
                                                         _%target198473%_))
                                                      '()))
                                          '()))
                                   (__tmp199538
                                    (let ((__tmp199540
                                           (cons (cons (cons _%$hd198497%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e198496%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl198498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e198496%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp199539
                                           (let* ((_%$%body198499198506%_
                                                   _%body198490%_)
                                                  (_%$%E198501198510%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body198499198506%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K198502198518%_
                                                   (lambda (_%tl198513%_
                                                            _%hd198514%_)
                                                     (_%recur198380%_
                                                      _%hd198514%_
                                                      _%vars198472%_
                                                      _%$hd198497%_
                                                      _%E198474%_
                                                      (lambda (_%vars198516%_)
                                                        (_%recur198380%_
                                                         _%tl198513%_
                                                         _%vars198516%_
                                                         _%$tl198498%_
                                                         _%E198474%_
                                                         _%k198475%_))))))
                                             (if (pair? _%$%body198499198506%_)
                                                 (let ((_%$%hd198503198521%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body198499198506%_)))
                                                       (_%$%tl198504198523%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body198499198506%_))))
                                                   (let* ((_%hd198526%_
                                                           _%$%hd198503198521%_)
                                                          (_%tl198528%_
                                                           _%$%tl198504198523%_))
                                                     (_%$%K198502198518%_
                                                      _%tl198528%_
                                                      _%hd198526%_)))
                                                 (_%$%E198501198510%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp199540
                                       __tmp199539))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp199541
                                __tmp199538))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp199542
                         __tmp199537
                         _%E198474%_)))
                    (if (eq? 'splice _%$e198493%_)
                        (let* ((_%$%body198529198536%_ _%body198490%_)
                               (_%$%E198531198540%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body198529198536%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K198532198591%_
                                (lambda (_%tl198543%_ _%hd198544%_)
                                  (let* ((_%rlen198546%_
                                          (_%splice-rlen198381%_ _%tl198543%_))
                                         (_%$target198548%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd198550%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl198552%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp198554%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e198556%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd198558%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl198560%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars198562%_
                                          (_%splice-vars198382%_ _%hd198544%_))
                                         (_%lvars198564%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198562%_)))
                                         (_%tlvars198566%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198562%_)))
                                         (_%linit198570%_
                                          (map (lambda (_%var198568%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars198564%_)))
                                    (letrec ((_%make-loop198573%_
                                              (lambda (_%vars198577%_)
                                                (let ((__tmp199544
                                                       (cons (cons (cons _%$lp198554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp199557
                                        (cons _%$hd198550%_ _%lvars198564%_))
                                       (__tmp199545
                                        (let ((__tmp199556
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd198550%_)))
                                              (__tmp199550
                                               (let ((__tmp199555
                                                      (cons (cons (cons _%$lp-e198556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e198187%_
                                   _%$hd198550%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199551
                                                      (let ((__tmp199554
                                                             (cons (cons (cons _%$lp-hd198558%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e198556%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl198560%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e198556%_))
                                             '()))
                                 '())))
                    (__tmp199552
                     (_%recur198380%_
                      _%hd198544%_
                      '()
                      _%$lp-hd198558%_
                      _%E198474%_
                      (lambda (_%hdvars198579%_)
                        (cons _%$lp198554%_
                              (cons _%$lp-tl198560%_
                                    (map (lambda (_%svar198581%_
                                                  _%lvar198582%_)
                                           (let ((__tmp199553
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar198581%_
                                                     _%hdvars198579%_
                                                     _%BUG198379%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp199553
                                              _%lvar198582%_)))
                                         _%svars198562%_
                                         _%lvars198564%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp199554 __tmp199552))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199555
                                                  __tmp199551)))
                                              (__tmp199546
                                               (let ((__tmp199549
                                                      (map (lambda (_%lvar198584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar198585%_)
                     (cons (cons _%tlvar198585%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar198584%_))
                                 '())))
                   _%lvars198564%_
                   _%tlvars198566%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199547
                                                      (_%k198475%_
                                                       (let ((__tmp199548
                                                              (lambda (_%svar198587%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar198588%_
                               _%r198589%_)
                        (cons (cons _%svar198587%_ _%tlvar198588%_)
                              _%r198589%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp199548
                  _%vars198577%_
                  _%svars198562%_
                  _%tlvars198566%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199549
                                                  __tmp199547))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199556
                                           __tmp199550
                                           __tmp199546))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp199557
                                    __tmp199545))
                                 '()))
                     '()))
              (__tmp199543
               (cons _%$lp198554%_ (cons _%$target198548%_ _%linit198570%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp199544
                                                   __tmp199543)))))
                                      (let ((_%body198575%_
                                             (let ((__tmp199559
                                                    (cons (cons (cons _%$target198548%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl198552%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target198473%_
                                 _%rlen198546%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199558
                                                    (_%recur198380%_
                                                     _%tl198543%_
                                                     _%vars198472%_
                                                     _%$tl198552%_
                                                     _%E198474%_
                                                     _%make-loop198573%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199559
                                                __tmp199558))))
                                        (let ((__tmp199563
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target198473%_)))
                                              (__tmp199560
                                               (if (zero? _%rlen198546%_)
                                                   _%body198575%_
                                                   (let ((__tmp199561
                                                          (let ((__tmp199562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target198473%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp199562 _%rlen198546%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp199561
                                                      _%body198575%_
                                                      _%E198474%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199563
                                           __tmp199560
                                           _%E198474%_))))))))
                          (if (pair? _%$%body198529198536%_)
                              (let ((_%$%hd198533198594%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body198529198536%_)))
                                    (_%$%tl198534198596%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body198529198536%_))))
                                (let* ((_%hd198599%_ _%$%hd198533198594%_)
                                       (_%tl198601%_ _%$%tl198534198596%_))
                                  (_%$%K198532198591%_
                                   _%tl198601%_
                                   _%hd198599%_)))
                              (_%$%E198531198540%_)))
                        (if (eq? 'null _%$e198493%_)
                            (let ((__tmp199565
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target198473%_)))
                                  (__tmp199564 (_%k198475%_ _%vars198472%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp199565
                               __tmp199564
                               _%E198474%_))
                            (if (eq? 'vector _%$e198493%_)
                                (let ((_%$e198603%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp199570
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target198473%_)))
                                        (__tmp199566
                                         (let ((__tmp199568
                                                (cons (cons (cons _%$e198603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp199569
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e198187%_
                                    _%target198473%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp199569))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp199567
                                                (_%recur198380%_
                                                 _%body198490%_
                                                 _%vars198472%_
                                                 _%$e198603%_
                                                 _%E198474%_
                                                 _%k198475%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp199568
                                            __tmp199567))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp199570
                                     __tmp199566
                                     _%E198474%_)))
                                (if (eq? 'box _%$e198493%_)
                                    (let ((_%$e198605%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp199575
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target198473%_)))
                                            (__tmp199571
                                             (let ((__tmp199573
                                                    (cons (cons (cons _%$e198605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp199574
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e198187%_
                                        _%target198473%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp199574))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199572
                                                    (_%recur198380%_
                                                     _%body198490%_
                                                     _%vars198472%_
                                                     _%$e198605%_
                                                     _%E198474%_
                                                     _%k198475%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199573
                                                __tmp199572))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp199575
                                         __tmp199571
                                         _%E198474%_)))
                                    (if (eq? 'datum _%$e198493%_)
                                        (let ((_%$e198607%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp199581
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target198473%_)))
                                                (__tmp199576
                                                 (let ((__tmp199580
                                                        (cons (cons (cons _%$e198607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target198473%_))
                                  '()))
                      '()))
               (__tmp199577
                (let ((__tmp199579
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e198607%_ _%body198490%_)))
                      (__tmp199578 (_%k198475%_ _%vars198472%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp199579 __tmp199578 _%E198474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp199580
                                                    __tmp199577))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp199581
                                             __tmp199576
                                             _%E198474%_)))
                                        (_%BUG198379%_
                                         _%e198471%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e198476198483%_)
                                      (let ((_%$%hd198480198612%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198476198483%_)))
                                            (_%$%tl198481198614%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198476198483%_))))
                                        (let* ((_%tag198617%_
                                                _%$%hd198480198612%_)
                                               (_%body198619%_
                                                _%$%tl198481198614%_))
                                          (_%$%K198479198609%_
                                           _%body198619%_
                                           _%tag198617%_)))
                                      (_%$%E198478198487%_)))))
                             (_%splice-rlen198381%_
                              (lambda (_%e198433%_)
                                (let _%lp198435%_ ((_%e198437%_ _%e198433%_)
                                                   (_%n198438%_ '0))
                                  (let* ((_%$%e198439198446%_ _%e198437%_)
                                         (_%$%E198441198450%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e198439198446%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K198442198459%_
                                          (lambda (_%body198453%_
                                                   _%tag198454%_)
                                            (let ((_%$e198456%_ _%tag198454%_))
                                              (if (eq? 'splice _%$e198456%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx198185%_
                                                     _%where198372%_))
                                                  (if (eq? 'cons _%$e198456%_)
                                                      (_%lp198435%_
                                                       (cdr _%body198453%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n198438%_
                                                                '1)))
                                                      _%n198438%_))))))
                                    (if (pair? _%$%e198439198446%_)
                                        (let ((_%$%hd198443198462%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198439198446%_)))
                                              (_%$%tl198444198464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198439198446%_))))
                                          (let* ((_%tag198467%_
                                                  _%$%hd198443198462%_)
                                                 (_%body198469%_
                                                  _%$%tl198444198464%_))
                                            (_%$%K198442198459%_
                                             _%body198469%_
                                             _%tag198467%_)))
                                        (_%$%E198441198450%_))))))
                             (_%splice-vars198382%_
                              (lambda (_%e198389%_)
                                (let _%recur198391%_ ((_%e198393%_ _%e198389%_)
                                                      (_%vars198394%_ '()))
                                  (let* ((_%$%e198395198402%_ _%e198393%_)
                                         (_%$%E198397198406%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e198395198402%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K198398198421%_
                                          (lambda (_%body198409%_
                                                   _%tag198410%_)
                                            (let ((_%$e198412%_ _%tag198410%_))
                                              (if (eq? 'var _%$e198412%_)
                                                  (cons _%body198409%_
                                                        _%vars198394%_)
                                                  (if (or (eq? 'cons
                                                               _%$e198412%_)
                                                          (eq? 'splice
                                                               _%$e198412%_))
                                                      (_%recur198391%_
                                                       (cdr _%body198409%_)
                                                       (_%recur198391%_
                                                        (car _%body198409%_)
                                                        _%vars198394%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e198412%_)
                      (eq? 'box _%$e198412%_))
                  (_%recur198391%_ _%body198409%_ _%vars198394%_)
                  _%vars198394%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e198395198402%_)
                                        (let ((_%$%hd198399198424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198395198402%_)))
                                              (_%$%tl198400198426%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198395198402%_))))
                                          (let* ((_%tag198429%_
                                                  _%$%hd198399198424%_)
                                                 (_%body198431%_
                                                  _%$%tl198400198426%_))
                                            (_%$%K198398198421%_
                                             _%body198431%_
                                             _%tag198429%_)))
                                        (_%$%E198397198406%_))))))
                             (_%make-body198383%_
                              (lambda (_%vars198385%_)
                                (cons _%K198376%_
                                      (map (lambda (_%mvar198387%_)
                                             (let ((__tmp199582
                                                    (car _%mvar198387%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp199582
                                                _%vars198385%_
                                                _%BUG198379%_)))
                                           _%mvars198375%_)))))
                      (_%recur198380%_
                       _%hd198374%_
                       '()
                       _%target198373%_
                       _%E198377%_
                       _%make-body198383%_))))
                 (_%parse-clause198194%_
                  (lambda (_%hd198266%_ _%ids198267%_)
                    (let _%recur198269%_ ((_%e198271%_ _%hd198266%_)
                                          (_%vars198272%_ '())
                                          (_%depth198273%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e198271%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e198271%_))
                              (values '(any) _%vars198272%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e198271%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx198185%_
                                     _%hd198266%_))
                                  (if (let ((__tmp199583
                                             (lambda (_%id198278%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e198271%_
                                                  _%id198278%_)))))
                                        (declare (not safe))
                                        (__find __tmp199583 _%ids198267%_))
                                      (values (cons 'id _%e198271%_)
                                              _%vars198272%_)
                                      (if (let ((__tmp199584
                                                 (lambda (_%var198281%_)
                                                   (let ((__tmp199585
                                                          (car _%var198281%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e198271%_
                                                      __tmp199585)))))
                                            (declare (not safe))
                                            (__find __tmp199584
                                                    _%vars198272%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx198185%_
                                             _%e198271%_))
                                          (values (cons 'var _%e198271%_)
                                                  (cons (cons _%e198271%_
                                                              _%depth198273%_)
                                                        _%vars198272%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e198271%_))
                              (let* ((_%$%e198285198292%_ _%e198271%_)
                                     (_%$%E198287198296%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e198285198292%_))))
                                     (_%$%E198286198357%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e198285198292%_))
                                            (let ((_%$%e198288198300%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e198285198292%_))))
                                              (let ((_%$%hd198289198303%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e198288198300%_)))
                                                    (_%$%tl198290198305%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e198288198300%_))))
                                                (let* ((_%hd198308%_
                                                        _%$%hd198289198303%_)
                                                       (_%rest198310%_
                                                        _%$%tl198290198305%_)
                                                       (_%make-pair198325%_
                                                        (lambda (_%tag198312%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd198313%_
                         _%tl198314%_)
                  (let* ((_%hd-depth198316%_
                          (if (eq? _%tag198312%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth198273%_ '1))
                              _%depth198273%_))
                         (_g199586_
                          (_%recur198269%_
                           _%hd198313%_
                           _%vars198272%_
                           _%hd-depth198316%_)))
                    (begin
                      (let ((_g199587_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g199586_)
                                   (##values-length _g199586_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g199587_ 2)))
                            (error "Context expects 2 values" _g199587_)))
                      (let ((_%hd198318%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199586_ 0)))
                            (_%vars198319%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199586_ 1))))
                        (let ((_g199588_
                               (_%recur198269%_
                                _%tl198314%_
                                _%vars198319%_
                                _%depth198273%_)))
                          (begin
                            (let ((_g199589_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g199588_)
                                         (##values-length _g199588_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g199589_ 2)))
                                  (error "Context expects 2 values"
                                         _g199589_)))
                            (let ((_%tl198321%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199588_ 0)))
                                  (_%vars198322%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199588_ 1))))
                              (values (cons _%tag198312%_
                                            (cons _%hd198318%_ _%tl198321%_))
                                      _%vars198322%_)))))))))
               (_%$%e198326198333%_ _%rest198310%_)
               (_%$%E198328198337%_
                (lambda ()
                  (_%make-pair198325%_ 'cons _%hd198308%_ _%rest198310%_)))
               (_%$%E198327198353%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e198326198333%_))
                      (let ((_%$%e198329198341%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e198326198333%_))))
                        (let ((_%$%hd198330198344%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198329198341%_)))
                              (_%$%tl198331198346%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198329198341%_))))
                          (let* ((_%rest-hd198349%_ _%$%hd198330198344%_)
                                 (_%rest-tl198351%_ _%$%tl198331198346%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd198349%_))
                                (_%make-pair198325%_
                                 'splice
                                 _%hd198308%_
                                 _%rest-tl198351%_)
                                (_%make-pair198325%_
                                 'cons
                                 _%hd198308%_
                                 _%rest198310%_)))))
                      (_%$%E198328198337%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198327198353%_))))
                                            (_%$%E198287198296%_)))))
                                (_%$%E198286198357%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e198271%_))
                                  (values '(null) _%vars198272%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e198271%_))
                                      (let ((_g199590_
                                             (_%recur198269%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e198271%_)))
                                              _%vars198272%_
                                              _%depth198273%_)))
                                        (begin
                                          (let ((_g199591_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199590_)
                                                       (##values-length
                                                        _g199590_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199591_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199591_)))
                                          (let ((_%e198363%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199590_ 0)))
                                                (_%vars198364%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199590_
                                                    1))))
                                            (values (cons 'vector _%e198363%_)
                                                    _%vars198364%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e198271%_))
                                          (let ((_g199592_
                                                 (_%recur198269%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e198271%_)))
                                                  _%vars198272%_
                                                  _%depth198273%_)))
                                            (begin
                                              (let ((_g199593_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g199592_)
                                                           (##values-length
                                                            _g199592_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g199593_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g199593_)))
                                              (let ((_%e198367%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199592_
                                                        0)))
                                                    (_%vars198368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199592_
                                                        1))))
                                                (values (cons 'box _%e198367%_)
                                                        _%vars198368%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e198271%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e198271%_)))
                                                      _%vars198272%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx198185%_
                                                 _%e198271%_))))))))))))
          (let* ((_%$%e198195198208%_ _%stx198185%_)
                 (_%$%E198197198212%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e198195198208%_))))
                 (_%$%E198196198262%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e198195198208%_))
                        (let ((_%$%e198198198216%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e198195198208%_))))
                          (let ((_%$%hd198199198219%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198198198216%_)))
                                (_%$%tl198200198221%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198198198216%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl198200198221%_))
                                (let ((_%$%e198201198224%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl198200198221%_))))
                                  (let ((_%$%hd198202198227%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198201198224%_)))
                                        (_%$%tl198203198229%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198201198224%_))))
                                    (let ((_%expr198232%_
                                           _%$%hd198202198227%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl198203198229%_))
                                          (let ((_%$%e198204198234%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl198203198229%_))))
                                            (let ((_%$%hd198205198237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e198204198234%_)))
                                                  (_%$%tl198206198239%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e198204198234%_))))
                                              (let* ((_%ids198242%_
                                                      _%$%hd198205198237%_)
                                                     (_%clauses198244%_
                                                      _%$%tl198206198239%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids198242%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses198244%_))
                                                        (let* ((_%ids198249%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids198242%_)))
                       (_%clauses198251%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses198244%_)))
                       (_%clause-ids198253%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses198251%_)))
                       (_%E198255%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target198257%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first198259%_
                        (if (null? _%clauses198251%_)
                            _%E198255%_
                            (car _%clause-ids198253%_))))
                  (let ((__tmp199595
                         (let ((__tmp199596
                                (let ((__tmp199598
                                       (let ((__tmp199600
                                              (cons (cons (cons _%E198255%_
                                                                '())
                                                          (cons (let ((__tmp199602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target198257%_ '()))
                              (__tmp199601
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target198257%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp199602 __tmp199601))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp199599
                                              (_%generate-body198191%_
                                               (_%generate-bindings198190%_
                                                _%target198257%_
                                                _%ids198249%_
                                                _%clauses198251%_
                                                _%clause-ids198253%_
                                                _%E198255%_)
                                               (cons _%first198259%_
                                                     (cons _%expr198232%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp199600
                                          __tmp199599)))
                                      (__tmp199597
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx198185%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp199598
                                   __tmp199597))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp199596)))
                        (__tmp199594
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx198185%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp199595 __tmp199594)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx198185%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx198185%_
                                                       _%ids198242%_))))))
                                          (_%$%E198197198212%_)))))
                                (_%$%E198197198212%_))))
                        (_%$%E198197198212%_)))))
            (_%$%E198196198262%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx198910%_)
        (let* ((_%identifier=?198912%_ 'free-identifier=?)
               (_%unwrap-e198914%_ 'syntax-e)
               (_%wrap-e198916%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198910%_
           _%identifier=?198912%_
           _%unwrap-e198914%_
           _%wrap-e198916%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx198918%_ _%identifier=?198919%_)
        (let* ((_%unwrap-e198921%_ 'syntax-e) (_%wrap-e198923%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198918%_
           _%identifier=?198919%_
           _%unwrap-e198921%_
           _%wrap-e198923%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx198925%_ _%identifier=?198926%_ _%unwrap-e198927%_)
        (let ((_%wrap-e198929%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx198925%_
           _%identifier=?198926%_
           _%unwrap-e198927%_
           _%wrap-e198929%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g199603_
        (let ((_g199604_ (let () (declare (not safe)) (##length _g199603_))))
          (cond ((let () (declare (not safe)) (##fx= _g199604_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g199603_))
                ((let () (declare (not safe)) (##fx= _g199604_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g199603_))
                ((let () (declare (not safe)) (##fx= _g199604_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g199603_))
                ((let () (declare (not safe)) (##fx= _g199604_ 4))
                 (apply gx#macro-expand-syntax-case__% _g199603_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g199603_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx198182%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx198182%_))
            (let ((__tmp199605
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx198182%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp199605 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd198140%_ . _%rest198141%_)
        (let ((_%len198143%_ (length _%hd198140%_)))
          (let _%lp198145%_ ((_%rest198147%_ _%rest198141%_))
            (let* ((_%$%rest198148198156%_ _%rest198147%_)
                   (_%$%else198150198164%_ (lambda () '#!void))
                   (_%$%K198152198170%_
                    (lambda (_%rest198167%_ _%hd198168%_)
                      (if (let ((__tmp199606 (length _%hd198168%_)))
                            (declare (not safe))
                            (##fx= _%len198143%_ __tmp199606))
                          (_%lp198145%_ _%rest198167%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd198168%_))))))
              (if (pair? _%$%rest198148198156%_)
                  (let ((_%$%hd198153198173%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest198148198156%_)))
                        (_%$%tl198154198175%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest198148198156%_))))
                    (let* ((_%hd198178%_ _%$%hd198153198173%_)
                           (_%rest198180%_ _%$%tl198154198175%_))
                      (_%$%K198152198170%_ _%rest198180%_ _%hd198178%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx198090%_ _%n198091%_)
        (let _%lp198093%_ ((_%rest198096%_ _%stx198090%_) (_%r198098%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest198096%_))
              (let* ((_%$%g198100198107%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest198096%_)))
                     (_%$%E198102198111%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g198100198107%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K198103198118%_
                      (lambda (_%rest198114%_ _%hd198115%_)
                        (_%lp198093%_
                         _%rest198114%_
                         (cons _%hd198115%_ _%r198098%_)))))
                (if (pair? _%$%g198100198107%_)
                    (let ((_%$%hd198104198121%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g198100198107%_)))
                          (_%$%tl198105198123%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g198100198107%_))))
                      (let* ((_%hd198126%_ _%$%hd198104198121%_)
                             (_%rest198128%_ _%$%tl198105198123%_))
                        (_%$%K198103198118%_ _%rest198128%_ _%hd198126%_)))
                    (_%$%E198102198111%_)))
              (let _%lp198130%_ ((_%n198132%_ _%n198091%_)
                                 (_%l198133%_ _%r198098%_)
                                 (_%r198135%_ _%rest198096%_))
                (if (null? _%l198133%_)
                    (values _%l198133%_ _%r198135%_)
                    (if (fxpositive? _%n198132%_)
                        (_%lp198130%_
                         (let () (declare (not safe)) (##fx- _%n198132%_ '1))
                         (cdr _%l198133%_)
                         (cons (car _%l198133%_) _%r198135%_))
                        (values (reverse! _%l198133%_) _%r198135%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx198040%_ _%n198041%_)
        (let _%lp198043%_ ((_%rest198046%_ _%stx198040%_) (_%r198048%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest198046%_))
              (let* ((_%$%g198050198057%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest198046%_)))
                     (_%$%E198052198061%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g198050198057%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K198053198068%_
                      (lambda (_%rest198064%_ _%hd198065%_)
                        (_%lp198043%_
                         _%rest198064%_
                         (cons _%hd198065%_ _%r198048%_)))))
                (if (pair? _%$%g198050198057%_)
                    (let ((_%$%hd198054198071%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g198050198057%_)))
                          (_%$%tl198055198073%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g198050198057%_))))
                      (let* ((_%hd198076%_ _%$%hd198054198071%_)
                             (_%rest198078%_ _%$%tl198055198073%_))
                        (_%$%K198053198068%_ _%rest198078%_ _%hd198076%_)))
                    (_%$%E198052198061%_)))
              (let _%lp198080%_ ((_%n198082%_ _%n198041%_)
                                 (_%l198083%_ _%r198048%_)
                                 (_%r198085%_ _%rest198046%_))
                (if (null? _%l198083%_)
                    (vector _%l198083%_ _%r198085%_)
                    (if (fxpositive? _%n198082%_)
                        (_%lp198080%_
                         (let () (declare (not safe)) (##fx- _%n198082%_ '1))
                         (cdr _%l198083%_)
                         (cons (car _%l198083%_) _%r198085%_))
                        (vector (reverse! _%l198083%_) _%r198085%_))))))))))
