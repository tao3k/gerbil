(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1789188908)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp199691 (list gx#expander::t))
            (__tmp199690 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp199691
         '(id depth)
         __tmp199690
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args199687%_
        (apply make-instance gx#syntax-pattern::t _%$args199687%_)))
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
      (lambda (_%self199673%_ _%stx199674%_)
        (let ((_%self199677%_ _%self199673%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx199674%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx199140%_)
        (letrec ((_%generate199142%_
                  (lambda (_%e199382%_)
                    (letrec ((_%BUG199384%_
                              (lambda (_%q199549%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx199140%_
                                         _%e199382%_
                                         _%q199549%_))))
                             (_%local-pattern-e199385%_
                              (lambda (_%pat199547%_)
                                (let ((__tmp199692
                                       (##structure-ref
                                        _%pat199547%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp199692))))
                             (_%getvar199386%_
                              (lambda (_%q199544%_ _%vars199545%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q199544%_
                                   _%vars199545%_
                                   _%BUG199384%_))))
                             (_%getarg199387%_
                              (lambda (_%arg199510%_ _%vars199511%_)
                                (let* ((_%$%arg199512199519%_ _%arg199510%_)
                                       (_%$%E199514199523%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg199512199519%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K199515199532%_
                                        (lambda (_%e199526%_ _%tag199527%_)
                                          (let ((_%$e199529%_ _%tag199527%_))
                                            (if (eq? 'ref _%$e199529%_)
                                                (_%getvar199386%_
                                                 _%e199526%_
                                                 _%vars199511%_)
                                                (if (eq? 'pattern _%$e199529%_)
                                                    (_%local-pattern-e199385%_
                                                     _%e199526%_)
                                                    (_%BUG199384%_
                                                     _%arg199510%_)))))))
                                  (if (pair? _%$%arg199512199519%_)
                                      (let ((_%$%hd199516199535%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg199512199519%_)))
                                            (_%$%tl199517199537%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg199512199519%_))))
                                        (let* ((_%tag199540%_
                                                _%$%hd199516199535%_)
                                               (_%e199542%_
                                                _%$%tl199517199537%_))
                                          (_%$%K199515199532%_
                                           _%e199542%_
                                           _%tag199540%_)))
                                      (_%$%E199514199523%_))))))
                      (let _%recur199389%_ ((_%e199391%_ _%e199382%_)
                                            (_%vars199392%_ '()))
                        (let* ((_%$%e199393199400%_ _%e199391%_)
                               (_%$%E199395199404%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e199393199400%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K199396199498%_
                                (lambda (_%body199407%_ _%tag199408%_)
                                  (let ((_%$e199410%_ _%tag199408%_))
                                    (if (eq? 'datum _%$e199410%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body199407%_))
                                        (if (eq? 'term _%$e199410%_)
                                            (let ((_%id199413%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body199407%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id199413%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks199416%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id199413%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks199416%_)
                                                        (let ((__tmp199693
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body199407%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp199693))
                (let ((__tmp199695
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body199407%_)))
                      (__tmp199694
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body199407%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp199695
                   __tmp199694
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id199413%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body199407%_))
                                                      (_%BUG199384%_
                                                       _%e199391%_))))
                                            (if (eq? 'pattern _%$e199410%_)
                                                (_%local-pattern-e199385%_
                                                 _%body199407%_)
                                                (if (eq? 'ref _%$e199410%_)
                                                    (_%getvar199386%_
                                                     _%body199407%_
                                                     _%vars199392%_)
                                                    (if (eq? 'cons
                                                             _%$e199410%_)
                                                        (let ((__tmp199697
                                                               (_%recur199389%_
                                                                (car _%body199407%_)
                                                                _%vars199392%_))
                                                              (__tmp199696
                                                               (_%recur199389%_
                                                                (cdr _%body199407%_)
                                                                _%vars199392%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp199697
                                                           __tmp199696))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e199410%_)
                    (let ((__tmp199698
                           (_%recur199389%_ _%body199407%_ _%vars199392%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp199698))
                    (if (eq? 'box _%$e199410%_)
                        (let ((__tmp199699
                               (_%recur199389%_
                                _%body199407%_
                                _%vars199392%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp199699))
                        (if (eq? 'splice _%$e199410%_)
                            (let* ((_%$%body199419199430%_ _%body199407%_)
                                   (_%$%E199421199434%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body199419199430%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K199422199472%_
                                    (lambda (_%args199437%_
                                             _%iv199438%_
                                             _%hd199439%_
                                             _%depth199440%_)
                                      (let* ((_%targets199446%_
                                              (map (lambda (_%$%g199441199443%_)
                                                     (_%getarg199387%_
                                                      _%$%g199441199443%_
                                                      _%vars199392%_))
                                                   _%args199437%_))
                                             (_%fold-in199448%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args199437%_)))
                                             (_%fold-out199450%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args199452%_
                                              (let ((__tmp199700
                                                     (cons _%fold-out199450%_
                                                           '())))
                                                (declare (not safe))
                                                (##append
                                                 _%fold-in199448%_
                                                 __tmp199700)))
                                             (_%lambda-body199469%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth199440%_ '1))
                                                  (let ((_%r-args199460%_
                                                         (map (lambda (_%arg199454%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg199454%_)))
                      _%args199437%_))
                (_%r-vars199461%_
                 (let ((__tmp199701
                        (lambda (_%arg199456%_ _%var199457%_ _%r199458%_)
                          (cons (cons (cdr _%arg199456%_) _%var199457%_)
                                _%r199458%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp199701
                    _%vars199392%_
                    _%args199437%_
                    _%fold-in199448%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur199389%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth199440%_ '1))
                         (cons _%hd199439%_
                               (cons (cons 'var _%fold-out199450%_)
                                     _%r-args199460%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars199461%_))
                                                  (let* ((_%hd-vars199467%_
                                                          (let ((__tmp199702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg199463%_ _%var199464%_ _%r199465%_)
                           (cons (cons (cdr _%arg199463%_) _%var199464%_)
                                 _%r199465%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp199702
                     _%vars199392%_
                     _%args199437%_
                     _%fold-in199448%_)))
                 (__tmp199703
                  (_%recur199389%_ _%hd199439%_ _%hd-vars199467%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp199703
                                                     _%fold-out199450%_)))))
                                        (let ((__tmp199707
                                               (if (let ((__tmp199708
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets199446%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp199708 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets199446%_))
                                                   '#!void))
                                              (__tmp199704
                                               (let ((__tmp199706
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args199452%_
                                                         _%lambda-body199469%_)))
                                                     (__tmp199705
                                                      (_%recur199389%_
                                                       _%iv199438%_
                                                       _%vars199392%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp199706
                                                  __tmp199705
                                                  _%targets199446%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp199707
                                           __tmp199704))))))
                              (if (pair? _%$%body199419199430%_)
                                  (let ((_%$%hd199423199475%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body199419199430%_)))
                                        (_%$%tl199424199477%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body199419199430%_))))
                                    (let ((_%depth199480%_
                                           _%$%hd199423199475%_))
                                      (if (pair? _%$%tl199424199477%_)
                                          (let ((_%$%hd199425199482%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl199424199477%_)))
                                                (_%$%tl199426199484%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl199424199477%_))))
                                            (let ((_%hd199487%_
                                                   _%$%hd199425199482%_))
                                              (if (pair? _%$%tl199426199484%_)
                                                  (let ((_%$%hd199427199489%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl199426199484%_)))
                                                        (_%$%tl199428199491%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl199426199484%_))))
                                                    (let* ((_%iv199494%_
                                                            _%$%hd199427199489%_)
                                                           (_%args199496%_
                                                            _%$%tl199428199491%_))
                                                      (_%$%K199422199472%_
                                                       _%args199496%_
                                                       _%iv199494%_
                                                       _%hd199487%_
                                                       _%depth199480%_)))
                                                  (_%$%E199421199434%_))))
                                          (_%$%E199421199434%_))))
                                  (_%$%E199421199434%_)))
                            (if (eq? 'var _%$e199410%_)
                                _%body199407%_
                                (_%BUG199384%_ _%e199391%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e199393199400%_)
                              (let ((_%$%hd199397199501%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e199393199400%_)))
                                    (_%$%tl199398199503%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e199393199400%_))))
                                (let* ((_%tag199506%_ _%$%hd199397199501%_)
                                       (_%body199508%_ _%$%tl199398199503%_))
                                  (_%$%K199396199498%_
                                   _%body199508%_
                                   _%tag199506%_)))
                              (_%$%E199395199404%_)))))))
                 (_%parse199143%_
                  (lambda (_%e199184%_)
                    (letrec ((_%make-cons199186%_
                              (lambda (_%hd199374%_ _%tl199375%_)
                                (let ((_g199709_ _%hd199374%_)
                                      (_g199711_ _%tl199375%_))
                                  (begin
                                    (let ((_g199710_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199709_)
                                                 (##values-length _g199709_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199710_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199710_)))
                                    (let ((_g199712_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199711_)
                                                 (##values-length _g199711_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199712_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199712_)))
                                    (let ((_%hd-e199377%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199709_ 0)))
                                          (_%hd-vars199378%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199709_ 1))))
                                      (let ((_%tl-e199379%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199711_ 0)))
                                            (_%tl-vars199380%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199711_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e199377%_
                                                            _%tl-e199379%_))
                                                (append _%hd-vars199378%_
                                                        _%tl-vars199380%_))))))))
                             (_%make-splice199187%_
                              (lambda (_%where199310%_
                                       _%depth199311%_
                                       _%hd199312%_
                                       _%tl199313%_)
                                (let ((_g199713_ _%hd199312%_)
                                      (_g199715_ _%tl199313%_))
                                  (begin
                                    (let ((_g199714_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199713_)
                                                 (##values-length _g199713_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199714_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199714_)))
                                    (let ((_g199716_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199715_)
                                                 (##values-length _g199715_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199716_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199716_)))
                                    (let ((_%hd-e199315%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199713_ 0)))
                                          (_%hd-vars199316%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199713_ 1))))
                                      (let ((_%tl-e199317%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199715_ 0)))
                                            (_%tl-vars199318%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199715_ 1))))
                                        (let _%lp199320%_ ((_%rest199322%_
                                                            _%hd-vars199316%_)
                                                           (_%targets199323%_
                                                            '())
                                                           (_%vars199324%_
                                                            _%tl-vars199318%_))
                                          (let* ((_%$%rest199325199335%_
                                                  _%rest199322%_)
                                                 (_%$%else199327199343%_
                                                  (lambda ()
                                                    (if (null? _%targets199323%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx199140%_
                                                           _%where199310%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth199311%_
                                    (cons _%hd-e199315%_
                                          (cons _%tl-e199317%_
                                                _%targets199323%_))))
                        _%vars199324%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K199329199355%_
                                                  (lambda (_%rest199346%_
                                                           _%hd-pat199347%_
                                                           _%hd-depth*199348%_)
                                                    (let ((_%hd-depth199350%_
                                                           (fx- _%hd-depth*199348%_
                                                                _%depth199311%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth199350%_))
                                                          (_%lp199320%_
                                                           _%rest199346%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat199347%_)
                         _%targets199323%_)
                   (cons (cons _%hd-depth199350%_ _%hd-pat199347%_)
                         _%vars199324%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth199350%_))
                      (_%lp199320%_
                       _%rest199346%_
                       (cons (cons 'pattern _%hd-pat199347%_)
                             _%targets199323%_)
                       _%vars199324%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx199140%_
                         _%where199310%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest199325199335%_)
                                                (let ((_%$%hd199330199358%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest199325199335%_)))
                                                      (_%$%tl199331199360%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest199325199335%_))))
                                                  (if (pair? _%$%hd199330199358%_)
                                                      (let ((_%$%hd199332199363%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd199330199358%_)))
                    (_%$%tl199333199365%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd199330199358%_))))
                (let* ((_%hd-depth*199368%_ _%$%hd199332199363%_)
                       (_%hd-pat199370%_ _%$%tl199333199365%_)
                       (_%rest199372%_ _%$%tl199331199360%_))
                  (_%$%K199329199355%_
                   _%rest199372%_
                   _%hd-pat199370%_
                   _%hd-depth*199368%_)))
              (_%$%else199327199343%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else199327199343%_))))))))))
                             (_%recur199188%_
                              (lambda (_%e199193%_ _%is-e?199194%_)
                                (if (_%is-e?199194%_ _%e199193%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx199140%_))
                                    (if (gx#syntax-local-pattern? _%e199193%_)
                                        (let* ((_%pat199198%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e199193%_)))
                                               (_%depth199200%_
                                                (##structure-ref
                                                 _%pat199198%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth199200%_)
                                              (values (cons 'ref _%pat199198%_)
                                                      (cons (cons _%depth199200%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat199198%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat199198%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e199193%_))
                                            (values (cons 'term _%e199193%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e199193%_))
                                                (let* ((_%$%e199204199211%_
                                                        _%e199193%_)
                                                       (_%$%E199206199215%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e199204199211%_))))
                                                       (_%$%E199205199297%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e199204199211%_))
                      (let ((_%$%e199207199219%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e199204199211%_))))
                        (let ((_%$%hd199208199222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199207199219%_)))
                              (_%$%tl199209199224%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199207199219%_))))
                          (let* ((_%hd199227%_ _%$%hd199208199222%_)
                                 (_%rest199229%_ _%$%tl199209199224%_))
                            (if (_%is-e?199194%_ _%hd199227%_)
                                (let* ((_%$%e199230199237%_ _%rest199229%_)
                                       (_%$%E199232199241%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx199140%_
                                             _%e199193%_))))
                                       (_%$%E199231199255%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e199230199237%_))
                                              (let ((_%$%e199233199245%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e199230199237%_))))
                                                (let ((_%$%hd199234199248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e199233199245%_)))
                                                      (_%$%tl199235199250%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e199233199245%_))))
                                                  (let ((_%rest199253%_
                                                         _%$%hd199234199248%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl199235199250%_))
                                                        (_%recur199188%_
                                                         _%rest199253%_
                                                         false)
                                                        (_%$%E199232199241%_)))))
                                              (_%$%E199232199241%_)))))
                                  (_%$%E199231199255%_))
                                (let _%lp199259%_ ((_%rest199261%_
                                                    _%rest199229%_)
                                                   (_%depth199262%_ '0))
                                  (let* ((_%$%e199263199270%_ _%rest199261%_)
                                         (_%$%E199265199274%_
                                          (lambda ()
                                            (if (fxpositive? _%depth199262%_)
                                                (_%make-splice199187%_
                                                 _%e199193%_
                                                 _%depth199262%_
                                                 (_%recur199188%_
                                                  _%hd199227%_
                                                  _%is-e?199194%_)
                                                 (_%recur199188%_
                                                  _%rest199261%_
                                                  _%is-e?199194%_))
                                                (_%make-cons199186%_
                                                 (_%recur199188%_
                                                  _%hd199227%_
                                                  _%is-e?199194%_)
                                                 (_%recur199188%_
                                                  _%rest199261%_
                                                  _%is-e?199194%_)))))
                                         (_%$%E199264199293%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e199263199270%_))
                                                (let ((_%$%e199266199278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e199263199270%_))))
                                                  (let ((_%$%hd199267199281%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e199266199278%_)))
                                                        (_%$%tl199268199283%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e199266199278%_))))
                                                    (let* ((_%rest-hd199286%_
                                                            _%$%hd199267199281%_)
                                                           (_%rest-tl199288%_
                                                            _%$%tl199268199283%_))
                                                      (if (_%is-e?199194%_
                                                           _%rest-hd199286%_)
                                                          (_%lp199259%_
                                                           _%rest-tl199288%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth199262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth199262%_)
                      (_%make-splice199187%_
                       _%e199193%_
                       _%depth199262%_
                       (_%recur199188%_ _%hd199227%_ _%is-e?199194%_)
                       (_%recur199188%_ _%rest199261%_ _%is-e?199194%_))
                      (_%make-cons199186%_
                       (_%recur199188%_ _%hd199227%_ _%is-e?199194%_)
                       (_%recur199188%_ _%rest199261%_ _%is-e?199194%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E199265199274%_)))))
                                    (_%$%E199264199293%_)))))))
                      (_%$%E199206199215%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E199205199297%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e199193%_))
                                                    (let ((_g199717_
                                                           (_%recur199188%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e199193%_)))
                    _%is-e?199194%_)))
              (begin
                (let ((_g199718_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g199717_)
                             (##values-length _g199717_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g199718_ 2)))
                      (error "Context expects 2 values" _g199718_)))
                (let ((_%e199302%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199717_ 0)))
                      (_%vars199303%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199717_ 1))))
                  (values (cons 'vector _%e199302%_) _%vars199303%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e199193%_))
                                                        (let ((_g199719_
                                                               (_%recur199188%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e199193%_)))
                        _%is-e?199194%_)))
                  (begin
                    (let ((_g199720_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g199719_)
                                 (##values-length _g199719_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g199720_ 2)))
                          (error "Context expects 2 values" _g199720_)))
                    (let ((_%e199306%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199719_ 0)))
                          (_%vars199307%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199719_ 1))))
                      (values (cons 'box _%e199306%_) _%vars199307%_))))
                (values (cons 'datum _%e199193%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g199721_
                             (_%recur199188%_ _%e199184%_ gx#ellipsis?)))
                        (begin
                          (let ((_g199722_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g199721_)
                                       (##values-length _g199721_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g199722_ 2)))
                                (error "Context expects 2 values" _g199722_)))
                          (let ((_%tree199190%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199721_ 0)))
                                (_%vars199191%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199721_ 1))))
                            (if (null? _%vars199191%_)
                                _%tree199190%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx199140%_
                                   _%vars199191%_))))))))))
          (let* ((_%$%e199144199154%_ _%stx199140%_)
                 (_%$%E199146199158%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx199140%_))))
                 (_%$%E199145199180%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e199144199154%_))
                        (let ((_%$%e199147199162%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e199144199154%_))))
                          (let ((_%$%hd199148199165%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199147199162%_)))
                                (_%$%tl199149199167%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199147199162%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl199149199167%_))
                                (let ((_%$%e199150199170%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl199149199167%_))))
                                  (let ((_%$%hd199151199173%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199150199170%_)))
                                        (_%$%tl199152199175%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199150199170%_))))
                                    (let ((_%form199178%_
                                           _%$%hd199151199173%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl199152199175%_))
                                          (let ((__tmp199724
                                                 (_%generate199142%_
                                                  (_%parse199143%_
                                                   _%form199178%_)))
                                                (__tmp199723
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx199140%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp199724
                                             __tmp199723))
                                          (_%$%E199146199158%_)))))
                                (_%$%E199146199158%_))))
                        (_%$%E199146199158%_)))))
            (_%$%E199145199180%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx198389%_
               _%identifier=?198390%_
               _%unwrap-e198391%_
               _%wrap-e198392%_)
        (letrec ((_%generate-bindings198394%_
                  (lambda (_%target199004%_
                           _%ids199005%_
                           _%clauses199006%_
                           _%clause-ids199007%_
                           _%E199008%_)
                    (letrec ((_%generate1199010%_
                              (lambda (_%clause199107%_
                                       _%clause-id199108%_
                                       _%E199109%_)
                                (cons (cons _%clause-id199108%_ '())
                                      (cons (let ((__tmp199726
                                                   (cons _%target199004%_ '()))
                                                  (__tmp199725
                                                   (_%generate-clause198396%_
                                                    _%target199004%_
                                                    _%ids199005%_
                                                    _%clause199107%_
                                                    _%E199109%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp199726
                                               __tmp199725))
                                            '())))))
                      (let _%lp199012%_ ((_%rest199014%_ _%clauses199006%_)
                                         (_%rest-ids199015%_
                                          _%clause-ids199007%_)
                                         (_%bindings199016%_ '()))
                        (let* ((_%$%rest199017199025%_ _%rest199014%_)
                               (_%$%else199019199033%_
                                (lambda () _%bindings199016%_))
                               (_%$%K199021199095%_
                                (lambda (_%rest199036%_ _%clause199037%_)
                                  (let* ((_%$%rest-ids199038199045%_
                                          _%rest-ids199015%_)
                                         (_%$%E199040199049%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids199038199045%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K199041199083%_
                                          (lambda (_%rest-ids199052%_
                                                   _%clause-id199053%_)
                                            (let* ((_%$%rest-ids199054199062%_
                                                    _%rest-ids199052%_)
                                                   (_%$%else199056199070%_
                                                    (lambda ()
                                                      (cons (_%generate1199010%_
                                                             _%clause199037%_
                                                             _%clause-id199053%_
                                                             _%E199008%_)
                                                            _%bindings199016%_)))
                                                   (_%$%K199058199075%_
                                                    (lambda (_%next-clause-id199073%_)
                                                      (_%lp199012%_
                                                       _%rest199036%_
                                                       _%rest-ids199052%_
                                                       (cons (_%generate1199010%_
                                                              _%clause199037%_
                                                              _%clause-id199053%_
                                                              _%next-clause-id199073%_)
                                                             _%bindings199016%_)))))
                                              (if (pair? _%$%rest-ids199054199062%_)
                                                  (let* ((_%$%hd199059199078%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids199054199062%_)))
                                                         (_%next-clause-id199081%_
                                                          _%$%hd199059199078%_))
                                                    (_%$%K199058199075%_
                                                     _%next-clause-id199081%_))
                                                  (_%$%else199056199070%_))))))
                                    (if (pair? _%$%rest-ids199038199045%_)
                                        (let ((_%$%hd199042199086%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids199038199045%_)))
                                              (_%$%tl199043199088%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids199038199045%_))))
                                          (let* ((_%clause-id199091%_
                                                  _%$%hd199042199086%_)
                                                 (_%rest-ids199093%_
                                                  _%$%tl199043199088%_))
                                            (_%$%K199041199083%_
                                             _%rest-ids199093%_
                                             _%clause-id199091%_)))
                                        (_%$%E199040199049%_))))))
                          (if (pair? _%$%rest199017199025%_)
                              (let ((_%$%hd199022199098%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest199017199025%_)))
                                    (_%$%tl199023199100%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest199017199025%_))))
                                (let* ((_%clause199103%_ _%$%hd199022199098%_)
                                       (_%rest199105%_ _%$%tl199023199100%_))
                                  (_%$%K199021199095%_
                                   _%rest199105%_
                                   _%clause199103%_)))
                              (_%$%else199019199033%_)))))))
                 (_%generate-body198395%_
                  (lambda (_%bindings198964%_ _%body198965%_)
                    (let _%recur198967%_ ((_%rest198969%_ _%bindings198964%_))
                      (let* ((_%$%rest198970198978%_ _%rest198969%_)
                             (_%$%else198972198986%_
                              (lambda () _%body198965%_))
                             (_%$%K198974198992%_
                              (lambda (_%rest198989%_ _%hd198990%_)
                                (let ((__tmp199728 (cons _%hd198990%_ '()))
                                      (__tmp199727
                                       (_%recur198967%_ _%rest198989%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp199728
                                   __tmp199727)))))
                        (if (pair? _%$%rest198970198978%_)
                            (let ((_%$%hd198975198995%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest198970198978%_)))
                                  (_%$%tl198976198997%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest198970198978%_))))
                              (let* ((_%hd199000%_ _%$%hd198975198995%_)
                                     (_%rest199002%_ _%$%tl198976198997%_))
                                (_%$%K198974198992%_
                                 _%rest199002%_
                                 _%hd199000%_)))
                            (_%$%else198972198986%_))))))
                 (_%generate-clause198396%_
                  (lambda (_%target198827%_
                           _%ids198828%_
                           _%clause198829%_
                           _%E198830%_)
                    (letrec ((_%generate1198832%_
                              (lambda (_%hd198919%_
                                       _%fender198920%_
                                       _%body198921%_)
                                (let ((_g199729_
                                       (_%parse-clause198398%_
                                        _%hd198919%_
                                        _%ids198828%_)))
                                  (begin
                                    (let ((_g199730_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199729_)
                                                 (##values-length _g199729_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199730_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199730_)))
                                    (let ((_%e198923%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199729_ 0)))
                                          (_%mvars198924%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199729_ 1))))
                                      (let* ((_%pvars198926%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars198924%_))))
                                             (_%E198928%_
                                              (cons _%E198830%_
                                                    (cons _%target198827%_
                                                          '())))
                                             (_%K198961%_
                                              (let ((__tmp199731
                                                     (let ((__tmp199733
                                                            (map (lambda (_%mvar198930%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar198931%_)
                           (let* ((_%$%mvar198932198939%_ _%mvar198930%_)
                                  (_%$%E198934198943%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar198932198939%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K198935198949%_
                                   (lambda (_%depth198946%_ _%id198947%_)
                                     (cons _%id198947%_
                                           (cons (let ((__tmp199735
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id198947%_)))
                                                       (__tmp199734
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar198931%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp199735
                                                    __tmp199734
                                                    _%depth198946%_))
                                                 '())))))
                             (if (pair? _%$%mvar198932198939%_)
                                 (let ((_%$%hd198936198952%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar198932198939%_)))
                                       (_%$%tl198937198954%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar198932198939%_))))
                                   (let* ((_%id198957%_ _%$%hd198936198952%_)
                                          (_%depth198959%_
                                           _%$%tl198937198954%_))
                                     (_%$%K198935198949%_
                                      _%depth198959%_
                                      _%id198957%_)))
                                 (_%$%E198934198943%_))))
                         _%mvars198924%_
                         _%pvars198926%_))
                   (__tmp199732
                    (if (eq? _%fender198920%_ '#t)
                        _%body198921%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender198920%_
                           _%body198921%_
                           _%E198928%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp199733 __tmp199732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars198926%_
                                                 __tmp199731))))
                                        (_%generate-match198397%_
                                         _%hd198919%_
                                         _%target198827%_
                                         _%e198923%_
                                         _%mvars198924%_
                                         _%K198961%_
                                         _%E198928%_))))))))
                      (let* ((_%$%e198833198853%_ _%clause198829%_)
                             (_%$%E198842198857%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e198833198853%_))))
                             (_%$%E198835198891%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198833198853%_))
                                    (let ((_%$%e198843198861%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198833198853%_))))
                                      (let ((_%$%hd198844198864%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198843198861%_)))
                                            (_%$%tl198845198866%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198843198861%_))))
                                        (let ((_%hd198869%_
                                               _%$%hd198844198864%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198845198866%_))
                                              (let ((_%$%e198846198871%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198845198866%_))))
                                                (let ((_%$%hd198847198874%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198846198871%_)))
                                                      (_%$%tl198848198876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198846198871%_))))
                                                  (let ((_%fender198879%_
                                                         _%$%hd198847198874%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl198848198876%_))
                                                        (let ((_%$%e198849198881%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl198848198876%_))))
                  (let ((_%$%hd198850198884%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e198849198881%_)))
                        (_%$%tl198851198886%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e198849198881%_))))
                    (let ((_%body198889%_ _%$%hd198850198884%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl198851198886%_))
                          (_%generate1198832%_
                           _%hd198869%_
                           _%fender198879%_
                           _%body198889%_)
                          (_%$%E198842198857%_)))))
                (_%$%E198842198857%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E198842198857%_)))))
                                    (_%$%E198842198857%_))))
                             (_%$%E198834198915%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198833198853%_))
                                    (let ((_%$%e198836198895%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198833198853%_))))
                                      (let ((_%$%hd198837198898%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198836198895%_)))
                                            (_%$%tl198838198900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198836198895%_))))
                                        (let ((_%hd198903%_
                                               _%$%hd198837198898%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198838198900%_))
                                              (let ((_%$%e198839198905%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198838198900%_))))
                                                (let ((_%$%hd198840198908%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198839198905%_)))
                                                      (_%$%tl198841198910%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198839198905%_))))
                                                  (let ((_%body198913%_
                                                         _%$%hd198840198908%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl198841198910%_))
                                                        (_%generate1198832%_
                                                         _%hd198903%_
                                                         '#t
                                                         _%body198913%_)
                                                        (_%$%E198835198891%_)))))
                                              (_%$%E198835198891%_)))))
                                    (_%$%E198835198891%_)))))
                        (_%$%E198834198915%_)))))
                 (_%generate-match198397%_
                  (lambda (_%where198576%_
                           _%target198577%_
                           _%hd198578%_
                           _%mvars198579%_
                           _%K198580%_
                           _%E198581%_)
                    (letrec ((_%BUG198583%_
                              (lambda (_%q198825%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx198389%_
                                         _%hd198578%_
                                         _%q198825%_))))
                             (_%recur198584%_
                              (lambda (_%e198675%_
                                       _%vars198676%_
                                       _%target198677%_
                                       _%E198678%_
                                       _%k198679%_)
                                (let* ((_%$%e198680198687%_ _%e198675%_)
                                       (_%$%E198682198691%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e198680198687%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K198683198813%_
                                        (lambda (_%body198694%_ _%tag198695%_)
                                          (let ((_%$e198697%_ _%tag198695%_))
                                            (if (eq? 'any _%$e198697%_)
                                                (_%k198679%_ _%vars198676%_)
                                                (if (eq? 'id _%$e198697%_)
                                                    (let ((__tmp199740
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target198677%_)))
                                                          (__tmp199736
                                                           (let ((__tmp199738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp199739
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e198392%_
                                    _%body198694%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?198390%_
                             __tmp199739
                             _%target198677%_)))
                         (__tmp199737 (_%k198679%_ _%vars198676%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp199738 __tmp199737 _%E198678%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp199740 __tmp199736 _%E198678%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e198697%_)
                                                        (_%k198679%_
                                                         (cons (cons _%body198694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target198677%_)
                       _%vars198676%_))
                (if (eq? 'cons _%$e198697%_)
                    (let ((_%$e198700%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd198701%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl198702%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp199746
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target198677%_)))
                            (__tmp199741
                             (let ((__tmp199745
                                    (cons (cons (cons _%$e198700%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e198391%_
                                                         _%target198677%_))
                                                      '()))
                                          '()))
                                   (__tmp199742
                                    (let ((__tmp199744
                                           (cons (cons (cons _%$hd198701%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e198700%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl198702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e198700%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp199743
                                           (let* ((_%$%body198703198710%_
                                                   _%body198694%_)
                                                  (_%$%E198705198714%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body198703198710%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K198706198722%_
                                                   (lambda (_%tl198717%_
                                                            _%hd198718%_)
                                                     (_%recur198584%_
                                                      _%hd198718%_
                                                      _%vars198676%_
                                                      _%$hd198701%_
                                                      _%E198678%_
                                                      (lambda (_%vars198720%_)
                                                        (_%recur198584%_
                                                         _%tl198717%_
                                                         _%vars198720%_
                                                         _%$tl198702%_
                                                         _%E198678%_
                                                         _%k198679%_))))))
                                             (if (pair? _%$%body198703198710%_)
                                                 (let ((_%$%hd198707198725%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body198703198710%_)))
                                                       (_%$%tl198708198727%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body198703198710%_))))
                                                   (let* ((_%hd198730%_
                                                           _%$%hd198707198725%_)
                                                          (_%tl198732%_
                                                           _%$%tl198708198727%_))
                                                     (_%$%K198706198722%_
                                                      _%tl198732%_
                                                      _%hd198730%_)))
                                                 (_%$%E198705198714%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp199744
                                       __tmp199743))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp199745
                                __tmp199742))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp199746
                         __tmp199741
                         _%E198678%_)))
                    (if (eq? 'splice _%$e198697%_)
                        (let* ((_%$%body198733198740%_ _%body198694%_)
                               (_%$%E198735198744%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body198733198740%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K198736198795%_
                                (lambda (_%tl198747%_ _%hd198748%_)
                                  (let* ((_%rlen198750%_
                                          (_%splice-rlen198585%_ _%tl198747%_))
                                         (_%$target198752%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd198754%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl198756%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp198758%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e198760%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd198762%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl198764%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars198766%_
                                          (_%splice-vars198586%_ _%hd198748%_))
                                         (_%lvars198768%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198766%_)))
                                         (_%tlvars198770%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198766%_)))
                                         (_%linit198774%_
                                          (map (lambda (_%var198772%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars198768%_)))
                                    (letrec ((_%make-loop198777%_
                                              (lambda (_%vars198781%_)
                                                (let ((__tmp199748
                                                       (cons (cons (cons _%$lp198758%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp199761
                                        (cons _%$hd198754%_ _%lvars198768%_))
                                       (__tmp199749
                                        (let ((__tmp199760
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd198754%_)))
                                              (__tmp199754
                                               (let ((__tmp199759
                                                      (cons (cons (cons _%$lp-e198760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e198391%_
                                   _%$hd198754%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199755
                                                      (let ((__tmp199758
                                                             (cons (cons (cons _%$lp-hd198762%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e198760%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl198764%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e198760%_))
                                             '()))
                                 '())))
                    (__tmp199756
                     (_%recur198584%_
                      _%hd198748%_
                      '()
                      _%$lp-hd198762%_
                      _%E198678%_
                      (lambda (_%hdvars198783%_)
                        (cons _%$lp198758%_
                              (cons _%$lp-tl198764%_
                                    (map (lambda (_%svar198785%_
                                                  _%lvar198786%_)
                                           (let ((__tmp199757
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar198785%_
                                                     _%hdvars198783%_
                                                     _%BUG198583%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp199757
                                              _%lvar198786%_)))
                                         _%svars198766%_
                                         _%lvars198768%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp199758 __tmp199756))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199759
                                                  __tmp199755)))
                                              (__tmp199750
                                               (let ((__tmp199753
                                                      (map (lambda (_%lvar198788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar198789%_)
                     (cons (cons _%tlvar198789%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar198788%_))
                                 '())))
                   _%lvars198768%_
                   _%tlvars198770%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199751
                                                      (_%k198679%_
                                                       (let ((__tmp199752
                                                              (lambda (_%svar198791%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar198792%_
                               _%r198793%_)
                        (cons (cons _%svar198791%_ _%tlvar198792%_)
                              _%r198793%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp199752
                  _%vars198781%_
                  _%svars198766%_
                  _%tlvars198770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199753
                                                  __tmp199751))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199760
                                           __tmp199754
                                           __tmp199750))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp199761
                                    __tmp199749))
                                 '()))
                     '()))
              (__tmp199747
               (cons _%$lp198758%_ (cons _%$target198752%_ _%linit198774%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp199748
                                                   __tmp199747)))))
                                      (let ((_%body198779%_
                                             (let ((__tmp199763
                                                    (cons (cons (cons _%$target198752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl198756%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target198677%_
                                 _%rlen198750%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199762
                                                    (_%recur198584%_
                                                     _%tl198747%_
                                                     _%vars198676%_
                                                     _%$tl198756%_
                                                     _%E198678%_
                                                     _%make-loop198777%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199763
                                                __tmp199762))))
                                        (let ((__tmp199767
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target198677%_)))
                                              (__tmp199764
                                               (if (zero? _%rlen198750%_)
                                                   _%body198779%_
                                                   (let ((__tmp199765
                                                          (let ((__tmp199766
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target198677%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp199766 _%rlen198750%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp199765
                                                      _%body198779%_
                                                      _%E198678%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199767
                                           __tmp199764
                                           _%E198678%_))))))))
                          (if (pair? _%$%body198733198740%_)
                              (let ((_%$%hd198737198798%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body198733198740%_)))
                                    (_%$%tl198738198800%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body198733198740%_))))
                                (let* ((_%hd198803%_ _%$%hd198737198798%_)
                                       (_%tl198805%_ _%$%tl198738198800%_))
                                  (_%$%K198736198795%_
                                   _%tl198805%_
                                   _%hd198803%_)))
                              (_%$%E198735198744%_)))
                        (if (eq? 'null _%$e198697%_)
                            (let ((__tmp199769
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target198677%_)))
                                  (__tmp199768 (_%k198679%_ _%vars198676%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp199769
                               __tmp199768
                               _%E198678%_))
                            (if (eq? 'vector _%$e198697%_)
                                (let ((_%$e198807%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp199774
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target198677%_)))
                                        (__tmp199770
                                         (let ((__tmp199772
                                                (cons (cons (cons _%$e198807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp199773
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e198391%_
                                    _%target198677%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp199773))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp199771
                                                (_%recur198584%_
                                                 _%body198694%_
                                                 _%vars198676%_
                                                 _%$e198807%_
                                                 _%E198678%_
                                                 _%k198679%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp199772
                                            __tmp199771))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp199774
                                     __tmp199770
                                     _%E198678%_)))
                                (if (eq? 'box _%$e198697%_)
                                    (let ((_%$e198809%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp199779
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target198677%_)))
                                            (__tmp199775
                                             (let ((__tmp199777
                                                    (cons (cons (cons _%$e198809%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp199778
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e198391%_
                                        _%target198677%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp199778))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199776
                                                    (_%recur198584%_
                                                     _%body198694%_
                                                     _%vars198676%_
                                                     _%$e198809%_
                                                     _%E198678%_
                                                     _%k198679%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199777
                                                __tmp199776))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp199779
                                         __tmp199775
                                         _%E198678%_)))
                                    (if (eq? 'datum _%$e198697%_)
                                        (let ((_%$e198811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp199785
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target198677%_)))
                                                (__tmp199780
                                                 (let ((__tmp199784
                                                        (cons (cons (cons _%$e198811%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target198677%_))
                                  '()))
                      '()))
               (__tmp199781
                (let ((__tmp199783
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e198811%_ _%body198694%_)))
                      (__tmp199782 (_%k198679%_ _%vars198676%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp199783 __tmp199782 _%E198678%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp199784
                                                    __tmp199781))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp199785
                                             __tmp199780
                                             _%E198678%_)))
                                        (_%BUG198583%_
                                         _%e198675%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e198680198687%_)
                                      (let ((_%$%hd198684198816%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198680198687%_)))
                                            (_%$%tl198685198818%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198680198687%_))))
                                        (let* ((_%tag198821%_
                                                _%$%hd198684198816%_)
                                               (_%body198823%_
                                                _%$%tl198685198818%_))
                                          (_%$%K198683198813%_
                                           _%body198823%_
                                           _%tag198821%_)))
                                      (_%$%E198682198691%_)))))
                             (_%splice-rlen198585%_
                              (lambda (_%e198637%_)
                                (let _%lp198639%_ ((_%e198641%_ _%e198637%_)
                                                   (_%n198642%_ '0))
                                  (let* ((_%$%e198643198650%_ _%e198641%_)
                                         (_%$%E198645198654%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e198643198650%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K198646198663%_
                                          (lambda (_%body198657%_
                                                   _%tag198658%_)
                                            (let ((_%$e198660%_ _%tag198658%_))
                                              (if (eq? 'splice _%$e198660%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx198389%_
                                                     _%where198576%_))
                                                  (if (eq? 'cons _%$e198660%_)
                                                      (_%lp198639%_
                                                       (cdr _%body198657%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n198642%_
                                                                '1)))
                                                      _%n198642%_))))))
                                    (if (pair? _%$%e198643198650%_)
                                        (let ((_%$%hd198647198666%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198643198650%_)))
                                              (_%$%tl198648198668%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198643198650%_))))
                                          (let* ((_%tag198671%_
                                                  _%$%hd198647198666%_)
                                                 (_%body198673%_
                                                  _%$%tl198648198668%_))
                                            (_%$%K198646198663%_
                                             _%body198673%_
                                             _%tag198671%_)))
                                        (_%$%E198645198654%_))))))
                             (_%splice-vars198586%_
                              (lambda (_%e198593%_)
                                (let _%recur198595%_ ((_%e198597%_ _%e198593%_)
                                                      (_%vars198598%_ '()))
                                  (let* ((_%$%e198599198606%_ _%e198597%_)
                                         (_%$%E198601198610%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e198599198606%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K198602198625%_
                                          (lambda (_%body198613%_
                                                   _%tag198614%_)
                                            (let ((_%$e198616%_ _%tag198614%_))
                                              (if (eq? 'var _%$e198616%_)
                                                  (cons _%body198613%_
                                                        _%vars198598%_)
                                                  (if (or (eq? 'cons
                                                               _%$e198616%_)
                                                          (eq? 'splice
                                                               _%$e198616%_))
                                                      (_%recur198595%_
                                                       (cdr _%body198613%_)
                                                       (_%recur198595%_
                                                        (car _%body198613%_)
                                                        _%vars198598%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e198616%_)
                      (eq? 'box _%$e198616%_))
                  (_%recur198595%_ _%body198613%_ _%vars198598%_)
                  _%vars198598%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e198599198606%_)
                                        (let ((_%$%hd198603198628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198599198606%_)))
                                              (_%$%tl198604198630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198599198606%_))))
                                          (let* ((_%tag198633%_
                                                  _%$%hd198603198628%_)
                                                 (_%body198635%_
                                                  _%$%tl198604198630%_))
                                            (_%$%K198602198625%_
                                             _%body198635%_
                                             _%tag198633%_)))
                                        (_%$%E198601198610%_))))))
                             (_%make-body198587%_
                              (lambda (_%vars198589%_)
                                (cons _%K198580%_
                                      (map (lambda (_%mvar198591%_)
                                             (let ((__tmp199786
                                                    (car _%mvar198591%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp199786
                                                _%vars198589%_
                                                _%BUG198583%_)))
                                           _%mvars198579%_)))))
                      (_%recur198584%_
                       _%hd198578%_
                       '()
                       _%target198577%_
                       _%E198581%_
                       _%make-body198587%_))))
                 (_%parse-clause198398%_
                  (lambda (_%hd198470%_ _%ids198471%_)
                    (let _%recur198473%_ ((_%e198475%_ _%hd198470%_)
                                          (_%vars198476%_ '())
                                          (_%depth198477%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e198475%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e198475%_))
                              (values '(any) _%vars198476%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e198475%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx198389%_
                                     _%hd198470%_))
                                  (if (let ((__tmp199787
                                             (lambda (_%id198482%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e198475%_
                                                  _%id198482%_)))))
                                        (declare (not safe))
                                        (__find __tmp199787 _%ids198471%_))
                                      (values (cons 'id _%e198475%_)
                                              _%vars198476%_)
                                      (if (let ((__tmp199788
                                                 (lambda (_%var198485%_)
                                                   (let ((__tmp199789
                                                          (car _%var198485%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e198475%_
                                                      __tmp199789)))))
                                            (declare (not safe))
                                            (__find __tmp199788
                                                    _%vars198476%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx198389%_
                                             _%e198475%_))
                                          (values (cons 'var _%e198475%_)
                                                  (cons (cons _%e198475%_
                                                              _%depth198477%_)
                                                        _%vars198476%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e198475%_))
                              (let* ((_%$%e198489198496%_ _%e198475%_)
                                     (_%$%E198491198500%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e198489198496%_))))
                                     (_%$%E198490198561%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e198489198496%_))
                                            (let ((_%$%e198492198504%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e198489198496%_))))
                                              (let ((_%$%hd198493198507%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e198492198504%_)))
                                                    (_%$%tl198494198509%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e198492198504%_))))
                                                (let* ((_%hd198512%_
                                                        _%$%hd198493198507%_)
                                                       (_%rest198514%_
                                                        _%$%tl198494198509%_)
                                                       (_%make-pair198529%_
                                                        (lambda (_%tag198516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd198517%_
                         _%tl198518%_)
                  (let* ((_%hd-depth198520%_
                          (if (eq? _%tag198516%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth198477%_ '1))
                              _%depth198477%_))
                         (_g199790_
                          (_%recur198473%_
                           _%hd198517%_
                           _%vars198476%_
                           _%hd-depth198520%_)))
                    (begin
                      (let ((_g199791_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g199790_)
                                   (##values-length _g199790_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g199791_ 2)))
                            (error "Context expects 2 values" _g199791_)))
                      (let ((_%hd198522%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199790_ 0)))
                            (_%vars198523%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199790_ 1))))
                        (let ((_g199792_
                               (_%recur198473%_
                                _%tl198518%_
                                _%vars198523%_
                                _%depth198477%_)))
                          (begin
                            (let ((_g199793_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g199792_)
                                         (##values-length _g199792_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g199793_ 2)))
                                  (error "Context expects 2 values"
                                         _g199793_)))
                            (let ((_%tl198525%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199792_ 0)))
                                  (_%vars198526%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199792_ 1))))
                              (values (cons _%tag198516%_
                                            (cons _%hd198522%_ _%tl198525%_))
                                      _%vars198526%_)))))))))
               (_%$%e198530198537%_ _%rest198514%_)
               (_%$%E198532198541%_
                (lambda ()
                  (_%make-pair198529%_ 'cons _%hd198512%_ _%rest198514%_)))
               (_%$%E198531198557%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e198530198537%_))
                      (let ((_%$%e198533198545%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e198530198537%_))))
                        (let ((_%$%hd198534198548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198533198545%_)))
                              (_%$%tl198535198550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198533198545%_))))
                          (let* ((_%rest-hd198553%_ _%$%hd198534198548%_)
                                 (_%rest-tl198555%_ _%$%tl198535198550%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd198553%_))
                                (_%make-pair198529%_
                                 'splice
                                 _%hd198512%_
                                 _%rest-tl198555%_)
                                (_%make-pair198529%_
                                 'cons
                                 _%hd198512%_
                                 _%rest198514%_)))))
                      (_%$%E198532198541%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198531198557%_))))
                                            (_%$%E198491198500%_)))))
                                (_%$%E198490198561%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e198475%_))
                                  (values '(null) _%vars198476%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e198475%_))
                                      (let ((_g199794_
                                             (_%recur198473%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e198475%_)))
                                              _%vars198476%_
                                              _%depth198477%_)))
                                        (begin
                                          (let ((_g199795_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199794_)
                                                       (##values-length
                                                        _g199794_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199795_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199795_)))
                                          (let ((_%e198567%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199794_ 0)))
                                                (_%vars198568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199794_
                                                    1))))
                                            (values (cons 'vector _%e198567%_)
                                                    _%vars198568%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e198475%_))
                                          (let ((_g199796_
                                                 (_%recur198473%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e198475%_)))
                                                  _%vars198476%_
                                                  _%depth198477%_)))
                                            (begin
                                              (let ((_g199797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g199796_)
                                                           (##values-length
                                                            _g199796_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g199797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g199797_)))
                                              (let ((_%e198571%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199796_
                                                        0)))
                                                    (_%vars198572%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199796_
                                                        1))))
                                                (values (cons 'box _%e198571%_)
                                                        _%vars198572%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e198475%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e198475%_)))
                                                      _%vars198476%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx198389%_
                                                 _%e198475%_))))))))))))
          (let* ((_%$%e198399198412%_ _%stx198389%_)
                 (_%$%E198401198416%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e198399198412%_))))
                 (_%$%E198400198466%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e198399198412%_))
                        (let ((_%$%e198402198420%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e198399198412%_))))
                          (let ((_%$%hd198403198423%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198402198420%_)))
                                (_%$%tl198404198425%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198402198420%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl198404198425%_))
                                (let ((_%$%e198405198428%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl198404198425%_))))
                                  (let ((_%$%hd198406198431%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198405198428%_)))
                                        (_%$%tl198407198433%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198405198428%_))))
                                    (let ((_%expr198436%_
                                           _%$%hd198406198431%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl198407198433%_))
                                          (let ((_%$%e198408198438%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl198407198433%_))))
                                            (let ((_%$%hd198409198441%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e198408198438%_)))
                                                  (_%$%tl198410198443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e198408198438%_))))
                                              (let* ((_%ids198446%_
                                                      _%$%hd198409198441%_)
                                                     (_%clauses198448%_
                                                      _%$%tl198410198443%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids198446%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses198448%_))
                                                        (let* ((_%ids198453%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids198446%_)))
                       (_%clauses198455%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses198448%_)))
                       (_%clause-ids198457%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses198455%_)))
                       (_%E198459%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target198461%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first198463%_
                        (if (null? _%clauses198455%_)
                            _%E198459%_
                            (car _%clause-ids198457%_))))
                  (let ((__tmp199799
                         (let ((__tmp199800
                                (let ((__tmp199802
                                       (let ((__tmp199804
                                              (cons (cons (cons _%E198459%_
                                                                '())
                                                          (cons (let ((__tmp199806
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target198461%_ '()))
                              (__tmp199805
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target198461%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp199806 __tmp199805))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp199803
                                              (_%generate-body198395%_
                                               (_%generate-bindings198394%_
                                                _%target198461%_
                                                _%ids198453%_
                                                _%clauses198455%_
                                                _%clause-ids198457%_
                                                _%E198459%_)
                                               (cons _%first198463%_
                                                     (cons _%expr198436%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp199804
                                          __tmp199803)))
                                      (__tmp199801
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx198389%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp199802
                                   __tmp199801))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp199800)))
                        (__tmp199798
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx198389%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp199799 __tmp199798)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx198389%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx198389%_
                                                       _%ids198446%_))))))
                                          (_%$%E198401198416%_)))))
                                (_%$%E198401198416%_))))
                        (_%$%E198401198416%_)))))
            (_%$%E198400198466%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx199114%_)
        (let* ((_%identifier=?199116%_ 'free-identifier=?)
               (_%unwrap-e199118%_ 'syntax-e)
               (_%wrap-e199120%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx199114%_
           _%identifier=?199116%_
           _%unwrap-e199118%_
           _%wrap-e199120%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx199122%_ _%identifier=?199123%_)
        (let* ((_%unwrap-e199125%_ 'syntax-e) (_%wrap-e199127%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx199122%_
           _%identifier=?199123%_
           _%unwrap-e199125%_
           _%wrap-e199127%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx199129%_ _%identifier=?199130%_ _%unwrap-e199131%_)
        (let ((_%wrap-e199133%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx199129%_
           _%identifier=?199130%_
           _%unwrap-e199131%_
           _%wrap-e199133%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g199807_
        (let ((_g199808_ (let () (declare (not safe)) (##length _g199807_))))
          (cond ((let () (declare (not safe)) (##fx= _g199808_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g199807_))
                ((let () (declare (not safe)) (##fx= _g199808_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g199807_))
                ((let () (declare (not safe)) (##fx= _g199808_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g199807_))
                ((let () (declare (not safe)) (##fx= _g199808_ 4))
                 (apply gx#macro-expand-syntax-case__% _g199807_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g199807_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx198386%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx198386%_))
            (let ((__tmp199809
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx198386%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp199809 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd198344%_ . _%rest198345%_)
        (let ((_%len198347%_ (length _%hd198344%_)))
          (let _%lp198349%_ ((_%rest198351%_ _%rest198345%_))
            (let* ((_%$%rest198352198360%_ _%rest198351%_)
                   (_%$%else198354198368%_ (lambda () '#!void))
                   (_%$%K198356198374%_
                    (lambda (_%rest198371%_ _%hd198372%_)
                      (if (let ((__tmp199810 (length _%hd198372%_)))
                            (declare (not safe))
                            (##fx= _%len198347%_ __tmp199810))
                          (_%lp198349%_ _%rest198371%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd198372%_))))))
              (if (pair? _%$%rest198352198360%_)
                  (let ((_%$%hd198357198377%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest198352198360%_)))
                        (_%$%tl198358198379%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest198352198360%_))))
                    (let* ((_%hd198382%_ _%$%hd198357198377%_)
                           (_%rest198384%_ _%$%tl198358198379%_))
                      (_%$%K198356198374%_ _%rest198384%_ _%hd198382%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx198294%_ _%n198295%_)
        (let _%lp198297%_ ((_%rest198300%_ _%stx198294%_) (_%r198302%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest198300%_))
              (let* ((_%$%g198304198311%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest198300%_)))
                     (_%$%E198306198315%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g198304198311%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K198307198322%_
                      (lambda (_%rest198318%_ _%hd198319%_)
                        (_%lp198297%_
                         _%rest198318%_
                         (cons _%hd198319%_ _%r198302%_)))))
                (if (pair? _%$%g198304198311%_)
                    (let ((_%$%hd198308198325%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g198304198311%_)))
                          (_%$%tl198309198327%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g198304198311%_))))
                      (let* ((_%hd198330%_ _%$%hd198308198325%_)
                             (_%rest198332%_ _%$%tl198309198327%_))
                        (_%$%K198307198322%_ _%rest198332%_ _%hd198330%_)))
                    (_%$%E198306198315%_)))
              (let _%lp198334%_ ((_%n198336%_ _%n198295%_)
                                 (_%l198337%_ _%r198302%_)
                                 (_%r198339%_ _%rest198300%_))
                (if (null? _%l198337%_)
                    (values _%l198337%_ _%r198339%_)
                    (if (fxpositive? _%n198336%_)
                        (_%lp198334%_
                         (let () (declare (not safe)) (##fx- _%n198336%_ '1))
                         (cdr _%l198337%_)
                         (cons (car _%l198337%_) _%r198339%_))
                        (values (reverse! _%l198337%_) _%r198339%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx198244%_ _%n198245%_)
        (let _%lp198247%_ ((_%rest198250%_ _%stx198244%_) (_%r198252%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest198250%_))
              (let* ((_%$%g198254198261%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest198250%_)))
                     (_%$%E198256198265%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g198254198261%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K198257198272%_
                      (lambda (_%rest198268%_ _%hd198269%_)
                        (_%lp198247%_
                         _%rest198268%_
                         (cons _%hd198269%_ _%r198252%_)))))
                (if (pair? _%$%g198254198261%_)
                    (let ((_%$%hd198258198275%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g198254198261%_)))
                          (_%$%tl198259198277%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g198254198261%_))))
                      (let* ((_%hd198280%_ _%$%hd198258198275%_)
                             (_%rest198282%_ _%$%tl198259198277%_))
                        (_%$%K198257198272%_ _%rest198282%_ _%hd198280%_)))
                    (_%$%E198256198265%_)))
              (let _%lp198284%_ ((_%n198286%_ _%n198245%_)
                                 (_%l198287%_ _%r198252%_)
                                 (_%r198289%_ _%rest198250%_))
                (if (null? _%l198287%_)
                    (vector _%l198287%_ _%r198289%_)
                    (if (fxpositive? _%n198286%_)
                        (_%lp198284%_
                         (let () (declare (not safe)) (##fx- _%n198286%_ '1))
                         (cdr _%l198287%_)
                         (cons (car _%l198287%_) _%r198289%_))
                        (vector (reverse! _%l198287%_) _%r198289%_))))))))))
