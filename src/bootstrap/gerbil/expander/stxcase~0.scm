(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1789371531)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp201721 (list gx#expander::t))
            (__tmp201720 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp201721
         '(id depth)
         __tmp201720
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args201717%_
        (apply make-instance gx#syntax-pattern::t _%$args201717%_)))
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
      (lambda (_%self201703%_ _%stx201704%_)
        (let ((_%self201707%_ _%self201703%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx201704%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx201170%_)
        (letrec ((_%generate201172%_
                  (lambda (_%e201412%_)
                    (letrec ((_%BUG201414%_
                              (lambda (_%q201579%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx201170%_
                                         _%e201412%_
                                         _%q201579%_))))
                             (_%local-pattern-e201415%_
                              (lambda (_%pat201577%_)
                                (let ((__tmp201722
                                       (##structure-ref
                                        _%pat201577%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp201722))))
                             (_%getvar201416%_
                              (lambda (_%q201574%_ _%vars201575%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q201574%_
                                   _%vars201575%_
                                   _%BUG201414%_))))
                             (_%getarg201417%_
                              (lambda (_%arg201540%_ _%vars201541%_)
                                (let* ((_%$%arg201542201549%_ _%arg201540%_)
                                       (_%$%E201544201553%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg201542201549%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K201545201562%_
                                        (lambda (_%e201556%_ _%tag201557%_)
                                          (let ((_%$e201559%_ _%tag201557%_))
                                            (if (eq? 'ref _%$e201559%_)
                                                (_%getvar201416%_
                                                 _%e201556%_
                                                 _%vars201541%_)
                                                (if (eq? 'pattern _%$e201559%_)
                                                    (_%local-pattern-e201415%_
                                                     _%e201556%_)
                                                    (_%BUG201414%_
                                                     _%arg201540%_)))))))
                                  (if (pair? _%$%arg201542201549%_)
                                      (let ((_%$%hd201546201565%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg201542201549%_)))
                                            (_%$%tl201547201567%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg201542201549%_))))
                                        (let* ((_%tag201570%_
                                                _%$%hd201546201565%_)
                                               (_%e201572%_
                                                _%$%tl201547201567%_))
                                          (_%$%K201545201562%_
                                           _%e201572%_
                                           _%tag201570%_)))
                                      (_%$%E201544201553%_))))))
                      (let _%recur201419%_ ((_%e201421%_ _%e201412%_)
                                            (_%vars201422%_ '()))
                        (let* ((_%$%e201423201430%_ _%e201421%_)
                               (_%$%E201425201434%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e201423201430%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K201426201528%_
                                (lambda (_%body201437%_ _%tag201438%_)
                                  (let ((_%$e201440%_ _%tag201438%_))
                                    (if (eq? 'datum _%$e201440%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body201437%_))
                                        (if (eq? 'term _%$e201440%_)
                                            (let ((_%id201443%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body201437%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id201443%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks201446%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id201443%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks201446%_)
                                                        (let ((__tmp201723
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body201437%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp201723))
                (let ((__tmp201725
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body201437%_)))
                      (__tmp201724
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body201437%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp201725
                   __tmp201724
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id201443%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body201437%_))
                                                      (_%BUG201414%_
                                                       _%e201421%_))))
                                            (if (eq? 'pattern _%$e201440%_)
                                                (_%local-pattern-e201415%_
                                                 _%body201437%_)
                                                (if (eq? 'ref _%$e201440%_)
                                                    (_%getvar201416%_
                                                     _%body201437%_
                                                     _%vars201422%_)
                                                    (if (eq? 'cons
                                                             _%$e201440%_)
                                                        (let ((__tmp201727
                                                               (_%recur201419%_
                                                                (car _%body201437%_)
                                                                _%vars201422%_))
                                                              (__tmp201726
                                                               (_%recur201419%_
                                                                (cdr _%body201437%_)
                                                                _%vars201422%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp201727
                                                           __tmp201726))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e201440%_)
                    (let ((__tmp201728
                           (_%recur201419%_ _%body201437%_ _%vars201422%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp201728))
                    (if (eq? 'box _%$e201440%_)
                        (let ((__tmp201729
                               (_%recur201419%_
                                _%body201437%_
                                _%vars201422%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp201729))
                        (if (eq? 'splice _%$e201440%_)
                            (let* ((_%$%body201449201460%_ _%body201437%_)
                                   (_%$%E201451201464%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body201449201460%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K201452201502%_
                                    (lambda (_%args201467%_
                                             _%iv201468%_
                                             _%hd201469%_
                                             _%depth201470%_)
                                      (let* ((_%targets201476%_
                                              (map (lambda (_%$%g201471201473%_)
                                                     (_%getarg201417%_
                                                      _%$%g201471201473%_
                                                      _%vars201422%_))
                                                   _%args201467%_))
                                             (_%fold-in201478%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args201467%_)))
                                             (_%fold-out201480%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args201482%_
                                              (let ((__tmp201730
                                                     (cons _%fold-out201480%_
                                                           '())))
                                                (declare (not safe))
                                                (##append
                                                 _%fold-in201478%_
                                                 __tmp201730)))
                                             (_%lambda-body201499%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth201470%_ '1))
                                                  (let ((_%r-args201490%_
                                                         (map (lambda (_%arg201484%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg201484%_)))
                      _%args201467%_))
                (_%r-vars201491%_
                 (let ((__tmp201731
                        (lambda (_%arg201486%_ _%var201487%_ _%r201488%_)
                          (cons (cons (cdr _%arg201486%_) _%var201487%_)
                                _%r201488%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp201731
                    _%vars201422%_
                    _%args201467%_
                    _%fold-in201478%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur201419%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth201470%_ '1))
                         (cons _%hd201469%_
                               (cons (cons 'var _%fold-out201480%_)
                                     _%r-args201490%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars201491%_))
                                                  (let* ((_%hd-vars201497%_
                                                          (let ((__tmp201732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg201493%_ _%var201494%_ _%r201495%_)
                           (cons (cons (cdr _%arg201493%_) _%var201494%_)
                                 _%r201495%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp201732
                     _%vars201422%_
                     _%args201467%_
                     _%fold-in201478%_)))
                 (__tmp201733
                  (_%recur201419%_ _%hd201469%_ _%hd-vars201497%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp201733
                                                     _%fold-out201480%_)))))
                                        (let ((__tmp201737
                                               (if (let ((__tmp201738
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets201476%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp201738 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets201476%_))
                                                   '#!void))
                                              (__tmp201734
                                               (let ((__tmp201736
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args201482%_
                                                         _%lambda-body201499%_)))
                                                     (__tmp201735
                                                      (_%recur201419%_
                                                       _%iv201468%_
                                                       _%vars201422%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp201736
                                                  __tmp201735
                                                  _%targets201476%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp201737
                                           __tmp201734))))))
                              (if (pair? _%$%body201449201460%_)
                                  (let ((_%$%hd201453201505%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body201449201460%_)))
                                        (_%$%tl201454201507%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body201449201460%_))))
                                    (let ((_%depth201510%_
                                           _%$%hd201453201505%_))
                                      (if (pair? _%$%tl201454201507%_)
                                          (let ((_%$%hd201455201512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl201454201507%_)))
                                                (_%$%tl201456201514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl201454201507%_))))
                                            (let ((_%hd201517%_
                                                   _%$%hd201455201512%_))
                                              (if (pair? _%$%tl201456201514%_)
                                                  (let ((_%$%hd201457201519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl201456201514%_)))
                                                        (_%$%tl201458201521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl201456201514%_))))
                                                    (let* ((_%iv201524%_
                                                            _%$%hd201457201519%_)
                                                           (_%args201526%_
                                                            _%$%tl201458201521%_))
                                                      (_%$%K201452201502%_
                                                       _%args201526%_
                                                       _%iv201524%_
                                                       _%hd201517%_
                                                       _%depth201510%_)))
                                                  (_%$%E201451201464%_))))
                                          (_%$%E201451201464%_))))
                                  (_%$%E201451201464%_)))
                            (if (eq? 'var _%$e201440%_)
                                _%body201437%_
                                (_%BUG201414%_ _%e201421%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e201423201430%_)
                              (let ((_%$%hd201427201531%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e201423201430%_)))
                                    (_%$%tl201428201533%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e201423201430%_))))
                                (let* ((_%tag201536%_ _%$%hd201427201531%_)
                                       (_%body201538%_ _%$%tl201428201533%_))
                                  (_%$%K201426201528%_
                                   _%body201538%_
                                   _%tag201536%_)))
                              (_%$%E201425201434%_)))))))
                 (_%parse201173%_
                  (lambda (_%e201214%_)
                    (letrec ((_%make-cons201216%_
                              (lambda (_%hd201404%_ _%tl201405%_)
                                (let ((_g201739_ _%hd201404%_)
                                      (_g201741_ _%tl201405%_))
                                  (begin
                                    (let ((_g201740_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201739_)
                                                 (##values-length _g201739_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201740_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201740_)))
                                    (let ((_g201742_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201741_)
                                                 (##values-length _g201741_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201742_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201742_)))
                                    (let ((_%hd-e201407%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201739_ 0)))
                                          (_%hd-vars201408%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201739_ 1))))
                                      (let ((_%tl-e201409%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201741_ 0)))
                                            (_%tl-vars201410%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201741_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e201407%_
                                                            _%tl-e201409%_))
                                                (append _%hd-vars201408%_
                                                        _%tl-vars201410%_))))))))
                             (_%make-splice201217%_
                              (lambda (_%where201340%_
                                       _%depth201341%_
                                       _%hd201342%_
                                       _%tl201343%_)
                                (let ((_g201743_ _%hd201342%_)
                                      (_g201745_ _%tl201343%_))
                                  (begin
                                    (let ((_g201744_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201743_)
                                                 (##values-length _g201743_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201744_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201744_)))
                                    (let ((_g201746_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201745_)
                                                 (##values-length _g201745_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201746_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201746_)))
                                    (let ((_%hd-e201345%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201743_ 0)))
                                          (_%hd-vars201346%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201743_ 1))))
                                      (let ((_%tl-e201347%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201745_ 0)))
                                            (_%tl-vars201348%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201745_ 1))))
                                        (let _%lp201350%_ ((_%rest201352%_
                                                            _%hd-vars201346%_)
                                                           (_%targets201353%_
                                                            '())
                                                           (_%vars201354%_
                                                            _%tl-vars201348%_))
                                          (let* ((_%$%rest201355201365%_
                                                  _%rest201352%_)
                                                 (_%$%else201357201373%_
                                                  (lambda ()
                                                    (if (null? _%targets201353%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx201170%_
                                                           _%where201340%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth201341%_
                                    (cons _%hd-e201345%_
                                          (cons _%tl-e201347%_
                                                _%targets201353%_))))
                        _%vars201354%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K201359201385%_
                                                  (lambda (_%rest201376%_
                                                           _%hd-pat201377%_
                                                           _%hd-depth*201378%_)
                                                    (let ((_%hd-depth201380%_
                                                           (fx- _%hd-depth*201378%_
                                                                _%depth201341%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth201380%_))
                                                          (_%lp201350%_
                                                           _%rest201376%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat201377%_)
                         _%targets201353%_)
                   (cons (cons _%hd-depth201380%_ _%hd-pat201377%_)
                         _%vars201354%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth201380%_))
                      (_%lp201350%_
                       _%rest201376%_
                       (cons (cons 'pattern _%hd-pat201377%_)
                             _%targets201353%_)
                       _%vars201354%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx201170%_
                         _%where201340%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest201355201365%_)
                                                (let ((_%$%hd201360201388%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest201355201365%_)))
                                                      (_%$%tl201361201390%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest201355201365%_))))
                                                  (if (pair? _%$%hd201360201388%_)
                                                      (let ((_%$%hd201362201393%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd201360201388%_)))
                    (_%$%tl201363201395%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd201360201388%_))))
                (let* ((_%hd-depth*201398%_ _%$%hd201362201393%_)
                       (_%hd-pat201400%_ _%$%tl201363201395%_)
                       (_%rest201402%_ _%$%tl201361201390%_))
                  (_%$%K201359201385%_
                   _%rest201402%_
                   _%hd-pat201400%_
                   _%hd-depth*201398%_)))
              (_%$%else201357201373%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else201357201373%_))))))))))
                             (_%recur201218%_
                              (lambda (_%e201223%_ _%is-e?201224%_)
                                (if (_%is-e?201224%_ _%e201223%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx201170%_))
                                    (if (gx#syntax-local-pattern? _%e201223%_)
                                        (let* ((_%pat201228%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e201223%_)))
                                               (_%depth201230%_
                                                (##structure-ref
                                                 _%pat201228%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth201230%_)
                                              (values (cons 'ref _%pat201228%_)
                                                      (cons (cons _%depth201230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat201228%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat201228%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e201223%_))
                                            (values (cons 'term _%e201223%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e201223%_))
                                                (let* ((_%$%e201234201241%_
                                                        _%e201223%_)
                                                       (_%$%E201236201245%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e201234201241%_))))
                                                       (_%$%E201235201327%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e201234201241%_))
                      (let ((_%$%e201237201249%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e201234201241%_))))
                        (let ((_%$%hd201238201252%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201237201249%_)))
                              (_%$%tl201239201254%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201237201249%_))))
                          (let* ((_%hd201257%_ _%$%hd201238201252%_)
                                 (_%rest201259%_ _%$%tl201239201254%_))
                            (if (_%is-e?201224%_ _%hd201257%_)
                                (let* ((_%$%e201260201267%_ _%rest201259%_)
                                       (_%$%E201262201271%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx201170%_
                                             _%e201223%_))))
                                       (_%$%E201261201285%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e201260201267%_))
                                              (let ((_%$%e201263201275%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e201260201267%_))))
                                                (let ((_%$%hd201264201278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201263201275%_)))
                                                      (_%$%tl201265201280%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201263201275%_))))
                                                  (let ((_%rest201283%_
                                                         _%$%hd201264201278%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl201265201280%_))
                                                        (_%recur201218%_
                                                         _%rest201283%_
                                                         false)
                                                        (_%$%E201262201271%_)))))
                                              (_%$%E201262201271%_)))))
                                  (_%$%E201261201285%_))
                                (let _%lp201289%_ ((_%rest201291%_
                                                    _%rest201259%_)
                                                   (_%depth201292%_ '0))
                                  (let* ((_%$%e201293201300%_ _%rest201291%_)
                                         (_%$%E201295201304%_
                                          (lambda ()
                                            (if (fxpositive? _%depth201292%_)
                                                (_%make-splice201217%_
                                                 _%e201223%_
                                                 _%depth201292%_
                                                 (_%recur201218%_
                                                  _%hd201257%_
                                                  _%is-e?201224%_)
                                                 (_%recur201218%_
                                                  _%rest201291%_
                                                  _%is-e?201224%_))
                                                (_%make-cons201216%_
                                                 (_%recur201218%_
                                                  _%hd201257%_
                                                  _%is-e?201224%_)
                                                 (_%recur201218%_
                                                  _%rest201291%_
                                                  _%is-e?201224%_)))))
                                         (_%$%E201294201323%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e201293201300%_))
                                                (let ((_%$%e201296201308%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e201293201300%_))))
                                                  (let ((_%$%hd201297201311%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e201296201308%_)))
                                                        (_%$%tl201298201313%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e201296201308%_))))
                                                    (let* ((_%rest-hd201316%_
                                                            _%$%hd201297201311%_)
                                                           (_%rest-tl201318%_
                                                            _%$%tl201298201313%_))
                                                      (if (_%is-e?201224%_
                                                           _%rest-hd201316%_)
                                                          (_%lp201289%_
                                                           _%rest-tl201318%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth201292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth201292%_)
                      (_%make-splice201217%_
                       _%e201223%_
                       _%depth201292%_
                       (_%recur201218%_ _%hd201257%_ _%is-e?201224%_)
                       (_%recur201218%_ _%rest201291%_ _%is-e?201224%_))
                      (_%make-cons201216%_
                       (_%recur201218%_ _%hd201257%_ _%is-e?201224%_)
                       (_%recur201218%_ _%rest201291%_ _%is-e?201224%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E201295201304%_)))))
                                    (_%$%E201294201323%_)))))))
                      (_%$%E201236201245%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E201235201327%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e201223%_))
                                                    (let ((_g201747_
                                                           (_%recur201218%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e201223%_)))
                    _%is-e?201224%_)))
              (begin
                (let ((_g201748_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g201747_)
                             (##values-length _g201747_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201748_ 2)))
                      (error "Context expects 2 values" _g201748_)))
                (let ((_%e201332%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201747_ 0)))
                      (_%vars201333%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201747_ 1))))
                  (values (cons 'vector _%e201332%_) _%vars201333%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e201223%_))
                                                        (let ((_g201749_
                                                               (_%recur201218%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e201223%_)))
                        _%is-e?201224%_)))
                  (begin
                    (let ((_g201750_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g201749_)
                                 (##values-length _g201749_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g201750_ 2)))
                          (error "Context expects 2 values" _g201750_)))
                    (let ((_%e201336%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g201749_ 0)))
                          (_%vars201337%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g201749_ 1))))
                      (values (cons 'box _%e201336%_) _%vars201337%_))))
                (values (cons 'datum _%e201223%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g201751_
                             (_%recur201218%_ _%e201214%_ gx#ellipsis?)))
                        (begin
                          (let ((_g201752_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g201751_)
                                       (##values-length _g201751_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g201752_ 2)))
                                (error "Context expects 2 values" _g201752_)))
                          (let ((_%tree201220%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g201751_ 0)))
                                (_%vars201221%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g201751_ 1))))
                            (if (null? _%vars201221%_)
                                _%tree201220%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx201170%_
                                   _%vars201221%_))))))))))
          (let* ((_%$%e201174201184%_ _%stx201170%_)
                 (_%$%E201176201188%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx201170%_))))
                 (_%$%E201175201210%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e201174201184%_))
                        (let ((_%$%e201177201192%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e201174201184%_))))
                          (let ((_%$%hd201178201195%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201177201192%_)))
                                (_%$%tl201179201197%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201177201192%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl201179201197%_))
                                (let ((_%$%e201180201200%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl201179201197%_))))
                                  (let ((_%$%hd201181201203%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201180201200%_)))
                                        (_%$%tl201182201205%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201180201200%_))))
                                    (let ((_%form201208%_
                                           _%$%hd201181201203%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl201182201205%_))
                                          (let ((__tmp201754
                                                 (_%generate201172%_
                                                  (_%parse201173%_
                                                   _%form201208%_)))
                                                (__tmp201753
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx201170%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp201754
                                             __tmp201753))
                                          (_%$%E201176201188%_)))))
                                (_%$%E201176201188%_))))
                        (_%$%E201176201188%_)))))
            (_%$%E201175201210%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx200419%_
               _%identifier=?200420%_
               _%unwrap-e200421%_
               _%wrap-e200422%_)
        (letrec ((_%generate-bindings200424%_
                  (lambda (_%target201034%_
                           _%ids201035%_
                           _%clauses201036%_
                           _%clause-ids201037%_
                           _%E201038%_)
                    (letrec ((_%generate1201040%_
                              (lambda (_%clause201137%_
                                       _%clause-id201138%_
                                       _%E201139%_)
                                (cons (cons _%clause-id201138%_ '())
                                      (cons (let ((__tmp201756
                                                   (cons _%target201034%_ '()))
                                                  (__tmp201755
                                                   (_%generate-clause200426%_
                                                    _%target201034%_
                                                    _%ids201035%_
                                                    _%clause201137%_
                                                    _%E201139%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp201756
                                               __tmp201755))
                                            '())))))
                      (let _%lp201042%_ ((_%rest201044%_ _%clauses201036%_)
                                         (_%rest-ids201045%_
                                          _%clause-ids201037%_)
                                         (_%bindings201046%_ '()))
                        (let* ((_%$%rest201047201055%_ _%rest201044%_)
                               (_%$%else201049201063%_
                                (lambda () _%bindings201046%_))
                               (_%$%K201051201125%_
                                (lambda (_%rest201066%_ _%clause201067%_)
                                  (let* ((_%$%rest-ids201068201075%_
                                          _%rest-ids201045%_)
                                         (_%$%E201070201079%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids201068201075%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K201071201113%_
                                          (lambda (_%rest-ids201082%_
                                                   _%clause-id201083%_)
                                            (let* ((_%$%rest-ids201084201092%_
                                                    _%rest-ids201082%_)
                                                   (_%$%else201086201100%_
                                                    (lambda ()
                                                      (cons (_%generate1201040%_
                                                             _%clause201067%_
                                                             _%clause-id201083%_
                                                             _%E201038%_)
                                                            _%bindings201046%_)))
                                                   (_%$%K201088201105%_
                                                    (lambda (_%next-clause-id201103%_)
                                                      (_%lp201042%_
                                                       _%rest201066%_
                                                       _%rest-ids201082%_
                                                       (cons (_%generate1201040%_
                                                              _%clause201067%_
                                                              _%clause-id201083%_
                                                              _%next-clause-id201103%_)
                                                             _%bindings201046%_)))))
                                              (if (pair? _%$%rest-ids201084201092%_)
                                                  (let* ((_%$%hd201089201108%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids201084201092%_)))
                                                         (_%next-clause-id201111%_
                                                          _%$%hd201089201108%_))
                                                    (_%$%K201088201105%_
                                                     _%next-clause-id201111%_))
                                                  (_%$%else201086201100%_))))))
                                    (if (pair? _%$%rest-ids201068201075%_)
                                        (let ((_%$%hd201072201116%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids201068201075%_)))
                                              (_%$%tl201073201118%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids201068201075%_))))
                                          (let* ((_%clause-id201121%_
                                                  _%$%hd201072201116%_)
                                                 (_%rest-ids201123%_
                                                  _%$%tl201073201118%_))
                                            (_%$%K201071201113%_
                                             _%rest-ids201123%_
                                             _%clause-id201121%_)))
                                        (_%$%E201070201079%_))))))
                          (if (pair? _%$%rest201047201055%_)
                              (let ((_%$%hd201052201128%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest201047201055%_)))
                                    (_%$%tl201053201130%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest201047201055%_))))
                                (let* ((_%clause201133%_ _%$%hd201052201128%_)
                                       (_%rest201135%_ _%$%tl201053201130%_))
                                  (_%$%K201051201125%_
                                   _%rest201135%_
                                   _%clause201133%_)))
                              (_%$%else201049201063%_)))))))
                 (_%generate-body200425%_
                  (lambda (_%bindings200994%_ _%body200995%_)
                    (let _%recur200997%_ ((_%rest200999%_ _%bindings200994%_))
                      (let* ((_%$%rest201000201008%_ _%rest200999%_)
                             (_%$%else201002201016%_
                              (lambda () _%body200995%_))
                             (_%$%K201004201022%_
                              (lambda (_%rest201019%_ _%hd201020%_)
                                (let ((__tmp201758 (cons _%hd201020%_ '()))
                                      (__tmp201757
                                       (_%recur200997%_ _%rest201019%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp201758
                                   __tmp201757)))))
                        (if (pair? _%$%rest201000201008%_)
                            (let ((_%$%hd201005201025%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest201000201008%_)))
                                  (_%$%tl201006201027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest201000201008%_))))
                              (let* ((_%hd201030%_ _%$%hd201005201025%_)
                                     (_%rest201032%_ _%$%tl201006201027%_))
                                (_%$%K201004201022%_
                                 _%rest201032%_
                                 _%hd201030%_)))
                            (_%$%else201002201016%_))))))
                 (_%generate-clause200426%_
                  (lambda (_%target200857%_
                           _%ids200858%_
                           _%clause200859%_
                           _%E200860%_)
                    (letrec ((_%generate1200862%_
                              (lambda (_%hd200949%_
                                       _%fender200950%_
                                       _%body200951%_)
                                (let ((_g201759_
                                       (_%parse-clause200428%_
                                        _%hd200949%_
                                        _%ids200858%_)))
                                  (begin
                                    (let ((_g201760_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201759_)
                                                 (##values-length _g201759_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201760_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201760_)))
                                    (let ((_%e200953%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201759_ 0)))
                                          (_%mvars200954%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201759_ 1))))
                                      (let* ((_%pvars200956%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars200954%_))))
                                             (_%E200958%_
                                              (cons _%E200860%_
                                                    (cons _%target200857%_
                                                          '())))
                                             (_%K200991%_
                                              (let ((__tmp201761
                                                     (let ((__tmp201763
                                                            (map (lambda (_%mvar200960%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar200961%_)
                           (let* ((_%$%mvar200962200969%_ _%mvar200960%_)
                                  (_%$%E200964200973%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar200962200969%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K200965200979%_
                                   (lambda (_%depth200976%_ _%id200977%_)
                                     (cons _%id200977%_
                                           (cons (let ((__tmp201765
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id200977%_)))
                                                       (__tmp201764
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar200961%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp201765
                                                    __tmp201764
                                                    _%depth200976%_))
                                                 '())))))
                             (if (pair? _%$%mvar200962200969%_)
                                 (let ((_%$%hd200966200982%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar200962200969%_)))
                                       (_%$%tl200967200984%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar200962200969%_))))
                                   (let* ((_%id200987%_ _%$%hd200966200982%_)
                                          (_%depth200989%_
                                           _%$%tl200967200984%_))
                                     (_%$%K200965200979%_
                                      _%depth200989%_
                                      _%id200987%_)))
                                 (_%$%E200964200973%_))))
                         _%mvars200954%_
                         _%pvars200956%_))
                   (__tmp201762
                    (if (eq? _%fender200950%_ '#t)
                        _%body200951%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender200950%_
                           _%body200951%_
                           _%E200958%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp201763 __tmp201762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars200956%_
                                                 __tmp201761))))
                                        (_%generate-match200427%_
                                         _%hd200949%_
                                         _%target200857%_
                                         _%e200953%_
                                         _%mvars200954%_
                                         _%K200991%_
                                         _%E200958%_))))))))
                      (let* ((_%$%e200863200883%_ _%clause200859%_)
                             (_%$%E200872200887%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e200863200883%_))))
                             (_%$%E200865200921%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e200863200883%_))
                                    (let ((_%$%e200873200891%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e200863200883%_))))
                                      (let ((_%$%hd200874200894%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e200873200891%_)))
                                            (_%$%tl200875200896%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e200873200891%_))))
                                        (let ((_%hd200899%_
                                               _%$%hd200874200894%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200875200896%_))
                                              (let ((_%$%e200876200901%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl200875200896%_))))
                                                (let ((_%$%hd200877200904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200876200901%_)))
                                                      (_%$%tl200878200906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200876200901%_))))
                                                  (let ((_%fender200909%_
                                                         _%$%hd200877200904%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl200878200906%_))
                                                        (let ((_%$%e200879200911%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl200878200906%_))))
                  (let ((_%$%hd200880200914%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e200879200911%_)))
                        (_%$%tl200881200916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e200879200911%_))))
                    (let ((_%body200919%_ _%$%hd200880200914%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl200881200916%_))
                          (_%generate1200862%_
                           _%hd200899%_
                           _%fender200909%_
                           _%body200919%_)
                          (_%$%E200872200887%_)))))
                (_%$%E200872200887%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E200872200887%_)))))
                                    (_%$%E200872200887%_))))
                             (_%$%E200864200945%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e200863200883%_))
                                    (let ((_%$%e200866200925%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e200863200883%_))))
                                      (let ((_%$%hd200867200928%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e200866200925%_)))
                                            (_%$%tl200868200930%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e200866200925%_))))
                                        (let ((_%hd200933%_
                                               _%$%hd200867200928%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl200868200930%_))
                                              (let ((_%$%e200869200935%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl200868200930%_))))
                                                (let ((_%$%hd200870200938%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e200869200935%_)))
                                                      (_%$%tl200871200940%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e200869200935%_))))
                                                  (let ((_%body200943%_
                                                         _%$%hd200870200938%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl200871200940%_))
                                                        (_%generate1200862%_
                                                         _%hd200933%_
                                                         '#t
                                                         _%body200943%_)
                                                        (_%$%E200865200921%_)))))
                                              (_%$%E200865200921%_)))))
                                    (_%$%E200865200921%_)))))
                        (_%$%E200864200945%_)))))
                 (_%generate-match200427%_
                  (lambda (_%where200606%_
                           _%target200607%_
                           _%hd200608%_
                           _%mvars200609%_
                           _%K200610%_
                           _%E200611%_)
                    (letrec ((_%BUG200613%_
                              (lambda (_%q200855%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx200419%_
                                         _%hd200608%_
                                         _%q200855%_))))
                             (_%recur200614%_
                              (lambda (_%e200705%_
                                       _%vars200706%_
                                       _%target200707%_
                                       _%E200708%_
                                       _%k200709%_)
                                (let* ((_%$%e200710200717%_ _%e200705%_)
                                       (_%$%E200712200721%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e200710200717%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K200713200843%_
                                        (lambda (_%body200724%_ _%tag200725%_)
                                          (let ((_%$e200727%_ _%tag200725%_))
                                            (if (eq? 'any _%$e200727%_)
                                                (_%k200709%_ _%vars200706%_)
                                                (if (eq? 'id _%$e200727%_)
                                                    (let ((__tmp201770
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target200707%_)))
                                                          (__tmp201766
                                                           (let ((__tmp201768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201769
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e200422%_
                                    _%body200724%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?200420%_
                             __tmp201769
                             _%target200707%_)))
                         (__tmp201767 (_%k200709%_ _%vars200706%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp201768 __tmp201767 _%E200708%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp201770 __tmp201766 _%E200708%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e200727%_)
                                                        (_%k200709%_
                                                         (cons (cons _%body200724%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target200707%_)
                       _%vars200706%_))
                (if (eq? 'cons _%$e200727%_)
                    (let ((_%$e200730%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd200731%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl200732%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp201776
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target200707%_)))
                            (__tmp201771
                             (let ((__tmp201775
                                    (cons (cons (cons _%$e200730%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e200421%_
                                                         _%target200707%_))
                                                      '()))
                                          '()))
                                   (__tmp201772
                                    (let ((__tmp201774
                                           (cons (cons (cons _%$hd200731%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e200730%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl200732%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e200730%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp201773
                                           (let* ((_%$%body200733200740%_
                                                   _%body200724%_)
                                                  (_%$%E200735200744%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body200733200740%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K200736200752%_
                                                   (lambda (_%tl200747%_
                                                            _%hd200748%_)
                                                     (_%recur200614%_
                                                      _%hd200748%_
                                                      _%vars200706%_
                                                      _%$hd200731%_
                                                      _%E200708%_
                                                      (lambda (_%vars200750%_)
                                                        (_%recur200614%_
                                                         _%tl200747%_
                                                         _%vars200750%_
                                                         _%$tl200732%_
                                                         _%E200708%_
                                                         _%k200709%_))))))
                                             (if (pair? _%$%body200733200740%_)
                                                 (let ((_%$%hd200737200755%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body200733200740%_)))
                                                       (_%$%tl200738200757%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body200733200740%_))))
                                                   (let* ((_%hd200760%_
                                                           _%$%hd200737200755%_)
                                                          (_%tl200762%_
                                                           _%$%tl200738200757%_))
                                                     (_%$%K200736200752%_
                                                      _%tl200762%_
                                                      _%hd200760%_)))
                                                 (_%$%E200735200744%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp201774
                                       __tmp201773))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp201775
                                __tmp201772))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp201776
                         __tmp201771
                         _%E200708%_)))
                    (if (eq? 'splice _%$e200727%_)
                        (let* ((_%$%body200763200770%_ _%body200724%_)
                               (_%$%E200765200774%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body200763200770%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K200766200825%_
                                (lambda (_%tl200777%_ _%hd200778%_)
                                  (let* ((_%rlen200780%_
                                          (_%splice-rlen200615%_ _%tl200777%_))
                                         (_%$target200782%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd200784%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl200786%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp200788%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e200790%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd200792%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl200794%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars200796%_
                                          (_%splice-vars200616%_ _%hd200778%_))
                                         (_%lvars200798%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars200796%_)))
                                         (_%tlvars200800%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars200796%_)))
                                         (_%linit200804%_
                                          (map (lambda (_%var200802%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars200798%_)))
                                    (letrec ((_%make-loop200807%_
                                              (lambda (_%vars200811%_)
                                                (let ((__tmp201778
                                                       (cons (cons (cons _%$lp200788%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp201791
                                        (cons _%$hd200784%_ _%lvars200798%_))
                                       (__tmp201779
                                        (let ((__tmp201790
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd200784%_)))
                                              (__tmp201784
                                               (let ((__tmp201789
                                                      (cons (cons (cons _%$lp-e200790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e200421%_
                                   _%$hd200784%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp201785
                                                      (let ((__tmp201788
                                                             (cons (cons (cons _%$lp-hd200792%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e200790%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl200794%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e200790%_))
                                             '()))
                                 '())))
                    (__tmp201786
                     (_%recur200614%_
                      _%hd200778%_
                      '()
                      _%$lp-hd200792%_
                      _%E200708%_
                      (lambda (_%hdvars200813%_)
                        (cons _%$lp200788%_
                              (cons _%$lp-tl200794%_
                                    (map (lambda (_%svar200815%_
                                                  _%lvar200816%_)
                                           (let ((__tmp201787
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar200815%_
                                                     _%hdvars200813%_
                                                     _%BUG200613%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp201787
                                              _%lvar200816%_)))
                                         _%svars200796%_
                                         _%lvars200798%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp201788 __tmp201786))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp201789
                                                  __tmp201785)))
                                              (__tmp201780
                                               (let ((__tmp201783
                                                      (map (lambda (_%lvar200818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar200819%_)
                     (cons (cons _%tlvar200819%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar200818%_))
                                 '())))
                   _%lvars200798%_
                   _%tlvars200800%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp201781
                                                      (_%k200709%_
                                                       (let ((__tmp201782
                                                              (lambda (_%svar200821%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar200822%_
                               _%r200823%_)
                        (cons (cons _%svar200821%_ _%tlvar200822%_)
                              _%r200823%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp201782
                  _%vars200811%_
                  _%svars200796%_
                  _%tlvars200800%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp201783
                                                  __tmp201781))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp201790
                                           __tmp201784
                                           __tmp201780))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp201791
                                    __tmp201779))
                                 '()))
                     '()))
              (__tmp201777
               (cons _%$lp200788%_ (cons _%$target200782%_ _%linit200804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp201778
                                                   __tmp201777)))))
                                      (let ((_%body200809%_
                                             (let ((__tmp201793
                                                    (cons (cons (cons _%$target200782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl200786%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target200707%_
                                 _%rlen200780%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp201792
                                                    (_%recur200614%_
                                                     _%tl200777%_
                                                     _%vars200706%_
                                                     _%$tl200786%_
                                                     _%E200708%_
                                                     _%make-loop200807%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp201793
                                                __tmp201792))))
                                        (let ((__tmp201797
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target200707%_)))
                                              (__tmp201794
                                               (if (zero? _%rlen200780%_)
                                                   _%body200809%_
                                                   (let ((__tmp201795
                                                          (let ((__tmp201796
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target200707%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp201796 _%rlen200780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp201795
                                                      _%body200809%_
                                                      _%E200708%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp201797
                                           __tmp201794
                                           _%E200708%_))))))))
                          (if (pair? _%$%body200763200770%_)
                              (let ((_%$%hd200767200828%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body200763200770%_)))
                                    (_%$%tl200768200830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body200763200770%_))))
                                (let* ((_%hd200833%_ _%$%hd200767200828%_)
                                       (_%tl200835%_ _%$%tl200768200830%_))
                                  (_%$%K200766200825%_
                                   _%tl200835%_
                                   _%hd200833%_)))
                              (_%$%E200765200774%_)))
                        (if (eq? 'null _%$e200727%_)
                            (let ((__tmp201799
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target200707%_)))
                                  (__tmp201798 (_%k200709%_ _%vars200706%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp201799
                               __tmp201798
                               _%E200708%_))
                            (if (eq? 'vector _%$e200727%_)
                                (let ((_%$e200837%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp201804
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target200707%_)))
                                        (__tmp201800
                                         (let ((__tmp201802
                                                (cons (cons (cons _%$e200837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp201803
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e200421%_
                                    _%target200707%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp201803))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp201801
                                                (_%recur200614%_
                                                 _%body200724%_
                                                 _%vars200706%_
                                                 _%$e200837%_
                                                 _%E200708%_
                                                 _%k200709%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp201802
                                            __tmp201801))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp201804
                                     __tmp201800
                                     _%E200708%_)))
                                (if (eq? 'box _%$e200727%_)
                                    (let ((_%$e200839%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp201809
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target200707%_)))
                                            (__tmp201805
                                             (let ((__tmp201807
                                                    (cons (cons (cons _%$e200839%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp201808
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e200421%_
                                        _%target200707%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp201808))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp201806
                                                    (_%recur200614%_
                                                     _%body200724%_
                                                     _%vars200706%_
                                                     _%$e200839%_
                                                     _%E200708%_
                                                     _%k200709%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp201807
                                                __tmp201806))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp201809
                                         __tmp201805
                                         _%E200708%_)))
                                    (if (eq? 'datum _%$e200727%_)
                                        (let ((_%$e200841%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp201815
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target200707%_)))
                                                (__tmp201810
                                                 (let ((__tmp201814
                                                        (cons (cons (cons _%$e200841%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target200707%_))
                                  '()))
                      '()))
               (__tmp201811
                (let ((__tmp201813
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e200841%_ _%body200724%_)))
                      (__tmp201812 (_%k200709%_ _%vars200706%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp201813 __tmp201812 _%E200708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp201814
                                                    __tmp201811))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp201815
                                             __tmp201810
                                             _%E200708%_)))
                                        (_%BUG200613%_
                                         _%e200705%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e200710200717%_)
                                      (let ((_%$%hd200714200846%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e200710200717%_)))
                                            (_%$%tl200715200848%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e200710200717%_))))
                                        (let* ((_%tag200851%_
                                                _%$%hd200714200846%_)
                                               (_%body200853%_
                                                _%$%tl200715200848%_))
                                          (_%$%K200713200843%_
                                           _%body200853%_
                                           _%tag200851%_)))
                                      (_%$%E200712200721%_)))))
                             (_%splice-rlen200615%_
                              (lambda (_%e200667%_)
                                (let _%lp200669%_ ((_%e200671%_ _%e200667%_)
                                                   (_%n200672%_ '0))
                                  (let* ((_%$%e200673200680%_ _%e200671%_)
                                         (_%$%E200675200684%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e200673200680%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K200676200693%_
                                          (lambda (_%body200687%_
                                                   _%tag200688%_)
                                            (let ((_%$e200690%_ _%tag200688%_))
                                              (if (eq? 'splice _%$e200690%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx200419%_
                                                     _%where200606%_))
                                                  (if (eq? 'cons _%$e200690%_)
                                                      (_%lp200669%_
                                                       (cdr _%body200687%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n200672%_
                                                                '1)))
                                                      _%n200672%_))))))
                                    (if (pair? _%$%e200673200680%_)
                                        (let ((_%$%hd200677200696%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200673200680%_)))
                                              (_%$%tl200678200698%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200673200680%_))))
                                          (let* ((_%tag200701%_
                                                  _%$%hd200677200696%_)
                                                 (_%body200703%_
                                                  _%$%tl200678200698%_))
                                            (_%$%K200676200693%_
                                             _%body200703%_
                                             _%tag200701%_)))
                                        (_%$%E200675200684%_))))))
                             (_%splice-vars200616%_
                              (lambda (_%e200623%_)
                                (let _%recur200625%_ ((_%e200627%_ _%e200623%_)
                                                      (_%vars200628%_ '()))
                                  (let* ((_%$%e200629200636%_ _%e200627%_)
                                         (_%$%E200631200640%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e200629200636%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K200632200655%_
                                          (lambda (_%body200643%_
                                                   _%tag200644%_)
                                            (let ((_%$e200646%_ _%tag200644%_))
                                              (if (eq? 'var _%$e200646%_)
                                                  (cons _%body200643%_
                                                        _%vars200628%_)
                                                  (if (or (eq? 'cons
                                                               _%$e200646%_)
                                                          (eq? 'splice
                                                               _%$e200646%_))
                                                      (_%recur200625%_
                                                       (cdr _%body200643%_)
                                                       (_%recur200625%_
                                                        (car _%body200643%_)
                                                        _%vars200628%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e200646%_)
                      (eq? 'box _%$e200646%_))
                  (_%recur200625%_ _%body200643%_ _%vars200628%_)
                  _%vars200628%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e200629200636%_)
                                        (let ((_%$%hd200633200658%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200629200636%_)))
                                              (_%$%tl200634200660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200629200636%_))))
                                          (let* ((_%tag200663%_
                                                  _%$%hd200633200658%_)
                                                 (_%body200665%_
                                                  _%$%tl200634200660%_))
                                            (_%$%K200632200655%_
                                             _%body200665%_
                                             _%tag200663%_)))
                                        (_%$%E200631200640%_))))))
                             (_%make-body200617%_
                              (lambda (_%vars200619%_)
                                (cons _%K200610%_
                                      (map (lambda (_%mvar200621%_)
                                             (let ((__tmp201816
                                                    (car _%mvar200621%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp201816
                                                _%vars200619%_
                                                _%BUG200613%_)))
                                           _%mvars200609%_)))))
                      (_%recur200614%_
                       _%hd200608%_
                       '()
                       _%target200607%_
                       _%E200611%_
                       _%make-body200617%_))))
                 (_%parse-clause200428%_
                  (lambda (_%hd200500%_ _%ids200501%_)
                    (let _%recur200503%_ ((_%e200505%_ _%hd200500%_)
                                          (_%vars200506%_ '())
                                          (_%depth200507%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e200505%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e200505%_))
                              (values '(any) _%vars200506%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e200505%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx200419%_
                                     _%hd200500%_))
                                  (if (let ((__tmp201817
                                             (lambda (_%id200512%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e200505%_
                                                  _%id200512%_)))))
                                        (declare (not safe))
                                        (__find __tmp201817 _%ids200501%_))
                                      (values (cons 'id _%e200505%_)
                                              _%vars200506%_)
                                      (if (let ((__tmp201818
                                                 (lambda (_%var200515%_)
                                                   (let ((__tmp201819
                                                          (car _%var200515%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e200505%_
                                                      __tmp201819)))))
                                            (declare (not safe))
                                            (__find __tmp201818
                                                    _%vars200506%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx200419%_
                                             _%e200505%_))
                                          (values (cons 'var _%e200505%_)
                                                  (cons (cons _%e200505%_
                                                              _%depth200507%_)
                                                        _%vars200506%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e200505%_))
                              (let* ((_%$%e200519200526%_ _%e200505%_)
                                     (_%$%E200521200530%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e200519200526%_))))
                                     (_%$%E200520200591%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e200519200526%_))
                                            (let ((_%$%e200522200534%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e200519200526%_))))
                                              (let ((_%$%hd200523200537%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e200522200534%_)))
                                                    (_%$%tl200524200539%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e200522200534%_))))
                                                (let* ((_%hd200542%_
                                                        _%$%hd200523200537%_)
                                                       (_%rest200544%_
                                                        _%$%tl200524200539%_)
                                                       (_%make-pair200559%_
                                                        (lambda (_%tag200546%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd200547%_
                         _%tl200548%_)
                  (let* ((_%hd-depth200550%_
                          (if (eq? _%tag200546%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth200507%_ '1))
                              _%depth200507%_))
                         (_g201820_
                          (_%recur200503%_
                           _%hd200547%_
                           _%vars200506%_
                           _%hd-depth200550%_)))
                    (begin
                      (let ((_g201821_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201820_)
                                   (##values-length _g201820_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201821_ 2)))
                            (error "Context expects 2 values" _g201821_)))
                      (let ((_%hd200552%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g201820_ 0)))
                            (_%vars200553%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g201820_ 1))))
                        (let ((_g201822_
                               (_%recur200503%_
                                _%tl200548%_
                                _%vars200553%_
                                _%depth200507%_)))
                          (begin
                            (let ((_g201823_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201822_)
                                         (##values-length _g201822_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201823_ 2)))
                                  (error "Context expects 2 values"
                                         _g201823_)))
                            (let ((_%tl200555%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201822_ 0)))
                                  (_%vars200556%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201822_ 1))))
                              (values (cons _%tag200546%_
                                            (cons _%hd200552%_ _%tl200555%_))
                                      _%vars200556%_)))))))))
               (_%$%e200560200567%_ _%rest200544%_)
               (_%$%E200562200571%_
                (lambda ()
                  (_%make-pair200559%_ 'cons _%hd200542%_ _%rest200544%_)))
               (_%$%E200561200587%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e200560200567%_))
                      (let ((_%$%e200563200575%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e200560200567%_))))
                        (let ((_%$%hd200564200578%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200563200575%_)))
                              (_%$%tl200565200580%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200563200575%_))))
                          (let* ((_%rest-hd200583%_ _%$%hd200564200578%_)
                                 (_%rest-tl200585%_ _%$%tl200565200580%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd200583%_))
                                (_%make-pair200559%_
                                 'splice
                                 _%hd200542%_
                                 _%rest-tl200585%_)
                                (_%make-pair200559%_
                                 'cons
                                 _%hd200542%_
                                 _%rest200544%_)))))
                      (_%$%E200562200571%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E200561200587%_))))
                                            (_%$%E200521200530%_)))))
                                (_%$%E200520200591%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e200505%_))
                                  (values '(null) _%vars200506%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e200505%_))
                                      (let ((_g201824_
                                             (_%recur200503%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e200505%_)))
                                              _%vars200506%_
                                              _%depth200507%_)))
                                        (begin
                                          (let ((_g201825_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201824_)
                                                       (##values-length
                                                        _g201824_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201825_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201825_)))
                                          (let ((_%e200597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201824_ 0)))
                                                (_%vars200598%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201824_
                                                    1))))
                                            (values (cons 'vector _%e200597%_)
                                                    _%vars200598%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e200505%_))
                                          (let ((_g201826_
                                                 (_%recur200503%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e200505%_)))
                                                  _%vars200506%_
                                                  _%depth200507%_)))
                                            (begin
                                              (let ((_g201827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g201826_)
                                                           (##values-length
                                                            _g201826_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g201827_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g201827_)))
                                              (let ((_%e200601%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g201826_
                                                        0)))
                                                    (_%vars200602%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g201826_
                                                        1))))
                                                (values (cons 'box _%e200601%_)
                                                        _%vars200602%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e200505%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e200505%_)))
                                                      _%vars200506%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx200419%_
                                                 _%e200505%_))))))))))))
          (let* ((_%$%e200429200442%_ _%stx200419%_)
                 (_%$%E200431200446%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e200429200442%_))))
                 (_%$%E200430200496%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e200429200442%_))
                        (let ((_%$%e200432200450%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e200429200442%_))))
                          (let ((_%$%hd200433200453%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e200432200450%_)))
                                (_%$%tl200434200455%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e200432200450%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl200434200455%_))
                                (let ((_%$%e200435200458%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl200434200455%_))))
                                  (let ((_%$%hd200436200461%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e200435200458%_)))
                                        (_%$%tl200437200463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e200435200458%_))))
                                    (let ((_%expr200466%_
                                           _%$%hd200436200461%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl200437200463%_))
                                          (let ((_%$%e200438200468%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl200437200463%_))))
                                            (let ((_%$%hd200439200471%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e200438200468%_)))
                                                  (_%$%tl200440200473%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e200438200468%_))))
                                              (let* ((_%ids200476%_
                                                      _%$%hd200439200471%_)
                                                     (_%clauses200478%_
                                                      _%$%tl200440200473%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids200476%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses200478%_))
                                                        (let* ((_%ids200483%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids200476%_)))
                       (_%clauses200485%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses200478%_)))
                       (_%clause-ids200487%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses200485%_)))
                       (_%E200489%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target200491%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first200493%_
                        (if (null? _%clauses200485%_)
                            _%E200489%_
                            (car _%clause-ids200487%_))))
                  (let ((__tmp201829
                         (let ((__tmp201830
                                (let ((__tmp201832
                                       (let ((__tmp201834
                                              (cons (cons (cons _%E200489%_
                                                                '())
                                                          (cons (let ((__tmp201836
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target200491%_ '()))
                              (__tmp201835
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target200491%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp201836 __tmp201835))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp201833
                                              (_%generate-body200425%_
                                               (_%generate-bindings200424%_
                                                _%target200491%_
                                                _%ids200483%_
                                                _%clauses200485%_
                                                _%clause-ids200487%_
                                                _%E200489%_)
                                               (cons _%first200493%_
                                                     (cons _%expr200466%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp201834
                                          __tmp201833)))
                                      (__tmp201831
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx200419%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp201832
                                   __tmp201831))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp201830)))
                        (__tmp201828
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx200419%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp201829 __tmp201828)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx200419%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx200419%_
                                                       _%ids200476%_))))))
                                          (_%$%E200431200446%_)))))
                                (_%$%E200431200446%_))))
                        (_%$%E200431200446%_)))))
            (_%$%E200430200496%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx201144%_)
        (let* ((_%identifier=?201146%_ 'free-identifier=?)
               (_%unwrap-e201148%_ 'syntax-e)
               (_%wrap-e201150%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx201144%_
           _%identifier=?201146%_
           _%unwrap-e201148%_
           _%wrap-e201150%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx201152%_ _%identifier=?201153%_)
        (let* ((_%unwrap-e201155%_ 'syntax-e) (_%wrap-e201157%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx201152%_
           _%identifier=?201153%_
           _%unwrap-e201155%_
           _%wrap-e201157%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx201159%_ _%identifier=?201160%_ _%unwrap-e201161%_)
        (let ((_%wrap-e201163%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx201159%_
           _%identifier=?201160%_
           _%unwrap-e201161%_
           _%wrap-e201163%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g201837_
        (let ((_g201838_ (let () (declare (not safe)) (##length _g201837_))))
          (cond ((let () (declare (not safe)) (##fx= _g201838_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g201837_))
                ((let () (declare (not safe)) (##fx= _g201838_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g201837_))
                ((let () (declare (not safe)) (##fx= _g201838_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g201837_))
                ((let () (declare (not safe)) (##fx= _g201838_ 4))
                 (apply gx#macro-expand-syntax-case__% _g201837_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g201837_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx200416%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx200416%_))
            (let ((__tmp201839
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx200416%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp201839 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd200374%_ . _%rest200375%_)
        (let ((_%len200377%_ (length _%hd200374%_)))
          (let _%lp200379%_ ((_%rest200381%_ _%rest200375%_))
            (let* ((_%$%rest200382200390%_ _%rest200381%_)
                   (_%$%else200384200398%_ (lambda () '#!void))
                   (_%$%K200386200404%_
                    (lambda (_%rest200401%_ _%hd200402%_)
                      (if (let ((__tmp201840 (length _%hd200402%_)))
                            (declare (not safe))
                            (##fx= _%len200377%_ __tmp201840))
                          (_%lp200379%_ _%rest200401%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd200402%_))))))
              (if (pair? _%$%rest200382200390%_)
                  (let ((_%$%hd200387200407%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest200382200390%_)))
                        (_%$%tl200388200409%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest200382200390%_))))
                    (let* ((_%hd200412%_ _%$%hd200387200407%_)
                           (_%rest200414%_ _%$%tl200388200409%_))
                      (_%$%K200386200404%_ _%rest200414%_ _%hd200412%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx200324%_ _%n200325%_)
        (let _%lp200327%_ ((_%rest200330%_ _%stx200324%_) (_%r200332%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest200330%_))
              (let* ((_%$%g200334200341%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest200330%_)))
                     (_%$%E200336200345%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g200334200341%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K200337200352%_
                      (lambda (_%rest200348%_ _%hd200349%_)
                        (_%lp200327%_
                         _%rest200348%_
                         (cons _%hd200349%_ _%r200332%_)))))
                (if (pair? _%$%g200334200341%_)
                    (let ((_%$%hd200338200355%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g200334200341%_)))
                          (_%$%tl200339200357%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g200334200341%_))))
                      (let* ((_%hd200360%_ _%$%hd200338200355%_)
                             (_%rest200362%_ _%$%tl200339200357%_))
                        (_%$%K200337200352%_ _%rest200362%_ _%hd200360%_)))
                    (_%$%E200336200345%_)))
              (let _%lp200364%_ ((_%n200366%_ _%n200325%_)
                                 (_%l200367%_ _%r200332%_)
                                 (_%r200369%_ _%rest200330%_))
                (if (null? _%l200367%_)
                    (values _%l200367%_ _%r200369%_)
                    (if (fxpositive? _%n200366%_)
                        (_%lp200364%_
                         (let () (declare (not safe)) (##fx- _%n200366%_ '1))
                         (cdr _%l200367%_)
                         (cons (car _%l200367%_) _%r200369%_))
                        (values (reverse! _%l200367%_) _%r200369%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx200274%_ _%n200275%_)
        (let _%lp200277%_ ((_%rest200280%_ _%stx200274%_) (_%r200282%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest200280%_))
              (let* ((_%$%g200284200291%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest200280%_)))
                     (_%$%E200286200295%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g200284200291%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K200287200302%_
                      (lambda (_%rest200298%_ _%hd200299%_)
                        (_%lp200277%_
                         _%rest200298%_
                         (cons _%hd200299%_ _%r200282%_)))))
                (if (pair? _%$%g200284200291%_)
                    (let ((_%$%hd200288200305%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g200284200291%_)))
                          (_%$%tl200289200307%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g200284200291%_))))
                      (let* ((_%hd200310%_ _%$%hd200288200305%_)
                             (_%rest200312%_ _%$%tl200289200307%_))
                        (_%$%K200287200302%_ _%rest200312%_ _%hd200310%_)))
                    (_%$%E200286200295%_)))
              (let _%lp200314%_ ((_%n200316%_ _%n200275%_)
                                 (_%l200317%_ _%r200282%_)
                                 (_%r200319%_ _%rest200280%_))
                (if (null? _%l200317%_)
                    (vector _%l200317%_ _%r200319%_)
                    (if (fxpositive? _%n200316%_)
                        (_%lp200314%_
                         (let () (declare (not safe)) (##fx- _%n200316%_ '1))
                         (cdr _%l200317%_)
                         (cons (car _%l200317%_) _%r200319%_))
                        (vector (reverse! _%l200317%_) _%r200319%_))))))))))
