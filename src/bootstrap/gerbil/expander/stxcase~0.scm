(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1789839226)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp201883 (list gx#expander::t))
            (__tmp201882 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp201883
         '(id depth)
         __tmp201882
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args201879%_
        (apply make-instance gx#syntax-pattern::t _%$args201879%_)))
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
      (lambda (_%self201865%_ _%stx201866%_)
        (let ((_%self201869%_ _%self201865%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx201866%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx201332%_)
        (letrec ((_%generate201334%_
                  (lambda (_%e201574%_)
                    (letrec ((_%BUG201576%_
                              (lambda (_%q201741%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx201332%_
                                         _%e201574%_
                                         _%q201741%_))))
                             (_%local-pattern-e201577%_
                              (lambda (_%pat201739%_)
                                (let ((__tmp201884
                                       (##structure-ref
                                        _%pat201739%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp201884))))
                             (_%getvar201578%_
                              (lambda (_%q201736%_ _%vars201737%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q201736%_
                                   _%vars201737%_
                                   _%BUG201576%_))))
                             (_%getarg201579%_
                              (lambda (_%arg201702%_ _%vars201703%_)
                                (let* ((_%$%arg201704201711%_ _%arg201702%_)
                                       (_%$%E201706201715%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg201704201711%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K201707201724%_
                                        (lambda (_%e201718%_ _%tag201719%_)
                                          (let ((_%$e201721%_ _%tag201719%_))
                                            (if (eq? 'ref _%$e201721%_)
                                                (_%getvar201578%_
                                                 _%e201718%_
                                                 _%vars201703%_)
                                                (if (eq? 'pattern _%$e201721%_)
                                                    (_%local-pattern-e201577%_
                                                     _%e201718%_)
                                                    (_%BUG201576%_
                                                     _%arg201702%_)))))))
                                  (if (pair? _%$%arg201704201711%_)
                                      (let ((_%$%hd201708201727%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg201704201711%_)))
                                            (_%$%tl201709201729%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg201704201711%_))))
                                        (let* ((_%tag201732%_
                                                _%$%hd201708201727%_)
                                               (_%e201734%_
                                                _%$%tl201709201729%_))
                                          (_%$%K201707201724%_
                                           _%e201734%_
                                           _%tag201732%_)))
                                      (_%$%E201706201715%_))))))
                      (let _%recur201581%_ ((_%e201583%_ _%e201574%_)
                                            (_%vars201584%_ '()))
                        (let* ((_%$%e201585201592%_ _%e201583%_)
                               (_%$%E201587201596%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e201585201592%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K201588201690%_
                                (lambda (_%body201599%_ _%tag201600%_)
                                  (let ((_%$e201602%_ _%tag201600%_))
                                    (if (eq? 'datum _%$e201602%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body201599%_))
                                        (if (eq? 'term _%$e201602%_)
                                            (let ((_%id201605%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body201599%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id201605%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks201608%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id201605%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks201608%_)
                                                        (let ((__tmp201885
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body201599%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp201885))
                (let ((__tmp201887
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body201599%_)))
                      (__tmp201886
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body201599%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp201887
                   __tmp201886
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id201605%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body201599%_))
                                                      (_%BUG201576%_
                                                       _%e201583%_))))
                                            (if (eq? 'pattern _%$e201602%_)
                                                (_%local-pattern-e201577%_
                                                 _%body201599%_)
                                                (if (eq? 'ref _%$e201602%_)
                                                    (_%getvar201578%_
                                                     _%body201599%_
                                                     _%vars201584%_)
                                                    (if (eq? 'cons
                                                             _%$e201602%_)
                                                        (let ((__tmp201889
                                                               (_%recur201581%_
                                                                (car _%body201599%_)
                                                                _%vars201584%_))
                                                              (__tmp201888
                                                               (_%recur201581%_
                                                                (cdr _%body201599%_)
                                                                _%vars201584%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp201889
                                                           __tmp201888))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e201602%_)
                    (let ((__tmp201890
                           (_%recur201581%_ _%body201599%_ _%vars201584%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp201890))
                    (if (eq? 'box _%$e201602%_)
                        (let ((__tmp201891
                               (_%recur201581%_
                                _%body201599%_
                                _%vars201584%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp201891))
                        (if (eq? 'splice _%$e201602%_)
                            (let* ((_%$%body201611201622%_ _%body201599%_)
                                   (_%$%E201613201626%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body201611201622%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K201614201664%_
                                    (lambda (_%args201629%_
                                             _%iv201630%_
                                             _%hd201631%_
                                             _%depth201632%_)
                                      (let* ((_%targets201638%_
                                              (map (lambda (_%$%g201633201635%_)
                                                     (_%getarg201579%_
                                                      _%$%g201633201635%_
                                                      _%vars201584%_))
                                                   _%args201629%_))
                                             (_%fold-in201640%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args201629%_)))
                                             (_%fold-out201642%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args201644%_
                                              (let ((__tmp201892
                                                     (cons _%fold-out201642%_
                                                           '())))
                                                (declare (not safe))
                                                (##append
                                                 _%fold-in201640%_
                                                 __tmp201892)))
                                             (_%lambda-body201661%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth201632%_ '1))
                                                  (let ((_%r-args201652%_
                                                         (map (lambda (_%arg201646%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg201646%_)))
                      _%args201629%_))
                (_%r-vars201653%_
                 (let ((__tmp201893
                        (lambda (_%arg201648%_ _%var201649%_ _%r201650%_)
                          (cons (cons (cdr _%arg201648%_) _%var201649%_)
                                _%r201650%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp201893
                    _%vars201584%_
                    _%args201629%_
                    _%fold-in201640%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur201581%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth201632%_ '1))
                         (cons _%hd201631%_
                               (cons (cons 'var _%fold-out201642%_)
                                     _%r-args201652%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars201653%_))
                                                  (let* ((_%hd-vars201659%_
                                                          (let ((__tmp201894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg201655%_ _%var201656%_ _%r201657%_)
                           (cons (cons (cdr _%arg201655%_) _%var201656%_)
                                 _%r201657%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp201894
                     _%vars201584%_
                     _%args201629%_
                     _%fold-in201640%_)))
                 (__tmp201895
                  (_%recur201581%_ _%hd201631%_ _%hd-vars201659%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp201895
                                                     _%fold-out201642%_)))))
                                        (let ((__tmp201899
                                               (if (let ((__tmp201900
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets201638%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp201900 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets201638%_))
                                                   '#!void))
                                              (__tmp201896
                                               (let ((__tmp201898
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args201644%_
                                                         _%lambda-body201661%_)))
                                                     (__tmp201897
                                                      (_%recur201581%_
                                                       _%iv201630%_
                                                       _%vars201584%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp201898
                                                  __tmp201897
                                                  _%targets201638%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp201899
                                           __tmp201896))))))
                              (if (pair? _%$%body201611201622%_)
                                  (let ((_%$%hd201615201667%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body201611201622%_)))
                                        (_%$%tl201616201669%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body201611201622%_))))
                                    (let ((_%depth201672%_
                                           _%$%hd201615201667%_))
                                      (if (pair? _%$%tl201616201669%_)
                                          (let ((_%$%hd201617201674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl201616201669%_)))
                                                (_%$%tl201618201676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl201616201669%_))))
                                            (let ((_%hd201679%_
                                                   _%$%hd201617201674%_))
                                              (if (pair? _%$%tl201618201676%_)
                                                  (let ((_%$%hd201619201681%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl201618201676%_)))
                                                        (_%$%tl201620201683%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl201618201676%_))))
                                                    (let* ((_%iv201686%_
                                                            _%$%hd201619201681%_)
                                                           (_%args201688%_
                                                            _%$%tl201620201683%_))
                                                      (_%$%K201614201664%_
                                                       _%args201688%_
                                                       _%iv201686%_
                                                       _%hd201679%_
                                                       _%depth201672%_)))
                                                  (_%$%E201613201626%_))))
                                          (_%$%E201613201626%_))))
                                  (_%$%E201613201626%_)))
                            (if (eq? 'var _%$e201602%_)
                                _%body201599%_
                                (_%BUG201576%_ _%e201583%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e201585201592%_)
                              (let ((_%$%hd201589201693%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e201585201592%_)))
                                    (_%$%tl201590201695%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e201585201592%_))))
                                (let* ((_%tag201698%_ _%$%hd201589201693%_)
                                       (_%body201700%_ _%$%tl201590201695%_))
                                  (_%$%K201588201690%_
                                   _%body201700%_
                                   _%tag201698%_)))
                              (_%$%E201587201596%_)))))))
                 (_%parse201335%_
                  (lambda (_%e201376%_)
                    (letrec ((_%make-cons201378%_
                              (lambda (_%hd201566%_ _%tl201567%_)
                                (let ((_g201901_ _%hd201566%_)
                                      (_g201903_ _%tl201567%_))
                                  (begin
                                    (let ((_g201902_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201901_)
                                                 (##values-length _g201901_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201902_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201902_)))
                                    (let ((_g201904_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201903_)
                                                 (##values-length _g201903_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201904_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201904_)))
                                    (let ((_%hd-e201569%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201901_ 0)))
                                          (_%hd-vars201570%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201901_ 1))))
                                      (let ((_%tl-e201571%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201903_ 0)))
                                            (_%tl-vars201572%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201903_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e201569%_
                                                            _%tl-e201571%_))
                                                (append _%hd-vars201570%_
                                                        _%tl-vars201572%_))))))))
                             (_%make-splice201379%_
                              (lambda (_%where201502%_
                                       _%depth201503%_
                                       _%hd201504%_
                                       _%tl201505%_)
                                (let ((_g201905_ _%hd201504%_)
                                      (_g201907_ _%tl201505%_))
                                  (begin
                                    (let ((_g201906_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201905_)
                                                 (##values-length _g201905_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201906_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201906_)))
                                    (let ((_g201908_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201907_)
                                                 (##values-length _g201907_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201908_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201908_)))
                                    (let ((_%hd-e201507%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201905_ 0)))
                                          (_%hd-vars201508%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201905_ 1))))
                                      (let ((_%tl-e201509%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201907_ 0)))
                                            (_%tl-vars201510%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g201907_ 1))))
                                        (let _%lp201512%_ ((_%rest201514%_
                                                            _%hd-vars201508%_)
                                                           (_%targets201515%_
                                                            '())
                                                           (_%vars201516%_
                                                            _%tl-vars201510%_))
                                          (let* ((_%$%rest201517201527%_
                                                  _%rest201514%_)
                                                 (_%$%else201519201535%_
                                                  (lambda ()
                                                    (if (null? _%targets201515%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx201332%_
                                                           _%where201502%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth201503%_
                                    (cons _%hd-e201507%_
                                          (cons _%tl-e201509%_
                                                _%targets201515%_))))
                        _%vars201516%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K201521201547%_
                                                  (lambda (_%rest201538%_
                                                           _%hd-pat201539%_
                                                           _%hd-depth*201540%_)
                                                    (let ((_%hd-depth201542%_
                                                           (fx- _%hd-depth*201540%_
                                                                _%depth201503%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth201542%_))
                                                          (_%lp201512%_
                                                           _%rest201538%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat201539%_)
                         _%targets201515%_)
                   (cons (cons _%hd-depth201542%_ _%hd-pat201539%_)
                         _%vars201516%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth201542%_))
                      (_%lp201512%_
                       _%rest201538%_
                       (cons (cons 'pattern _%hd-pat201539%_)
                             _%targets201515%_)
                       _%vars201516%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx201332%_
                         _%where201502%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest201517201527%_)
                                                (let ((_%$%hd201522201550%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest201517201527%_)))
                                                      (_%$%tl201523201552%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest201517201527%_))))
                                                  (if (pair? _%$%hd201522201550%_)
                                                      (let ((_%$%hd201524201555%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd201522201550%_)))
                    (_%$%tl201525201557%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd201522201550%_))))
                (let* ((_%hd-depth*201560%_ _%$%hd201524201555%_)
                       (_%hd-pat201562%_ _%$%tl201525201557%_)
                       (_%rest201564%_ _%$%tl201523201552%_))
                  (_%$%K201521201547%_
                   _%rest201564%_
                   _%hd-pat201562%_
                   _%hd-depth*201560%_)))
              (_%$%else201519201535%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else201519201535%_))))))))))
                             (_%recur201380%_
                              (lambda (_%e201385%_ _%is-e?201386%_)
                                (if (_%is-e?201386%_ _%e201385%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx201332%_))
                                    (if (gx#syntax-local-pattern? _%e201385%_)
                                        (let* ((_%pat201390%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e201385%_)))
                                               (_%depth201392%_
                                                (##structure-ref
                                                 _%pat201390%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth201392%_)
                                              (values (cons 'ref _%pat201390%_)
                                                      (cons (cons _%depth201392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat201390%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat201390%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e201385%_))
                                            (values (cons 'term _%e201385%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e201385%_))
                                                (let* ((_%$%e201396201403%_
                                                        _%e201385%_)
                                                       (_%$%E201398201407%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e201396201403%_))))
                                                       (_%$%E201397201489%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e201396201403%_))
                      (let ((_%$%e201399201411%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e201396201403%_))))
                        (let ((_%$%hd201400201414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e201399201411%_)))
                              (_%$%tl201401201416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e201399201411%_))))
                          (let* ((_%hd201419%_ _%$%hd201400201414%_)
                                 (_%rest201421%_ _%$%tl201401201416%_))
                            (if (_%is-e?201386%_ _%hd201419%_)
                                (let* ((_%$%e201422201429%_ _%rest201421%_)
                                       (_%$%E201424201433%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx201332%_
                                             _%e201385%_))))
                                       (_%$%E201423201447%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e201422201429%_))
                                              (let ((_%$%e201425201437%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e201422201429%_))))
                                                (let ((_%$%hd201426201440%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201425201437%_)))
                                                      (_%$%tl201427201442%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201425201437%_))))
                                                  (let ((_%rest201445%_
                                                         _%$%hd201426201440%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl201427201442%_))
                                                        (_%recur201380%_
                                                         _%rest201445%_
                                                         false)
                                                        (_%$%E201424201433%_)))))
                                              (_%$%E201424201433%_)))))
                                  (_%$%E201423201447%_))
                                (let _%lp201451%_ ((_%rest201453%_
                                                    _%rest201421%_)
                                                   (_%depth201454%_ '0))
                                  (let* ((_%$%e201455201462%_ _%rest201453%_)
                                         (_%$%E201457201466%_
                                          (lambda ()
                                            (if (fxpositive? _%depth201454%_)
                                                (_%make-splice201379%_
                                                 _%e201385%_
                                                 _%depth201454%_
                                                 (_%recur201380%_
                                                  _%hd201419%_
                                                  _%is-e?201386%_)
                                                 (_%recur201380%_
                                                  _%rest201453%_
                                                  _%is-e?201386%_))
                                                (_%make-cons201378%_
                                                 (_%recur201380%_
                                                  _%hd201419%_
                                                  _%is-e?201386%_)
                                                 (_%recur201380%_
                                                  _%rest201453%_
                                                  _%is-e?201386%_)))))
                                         (_%$%E201456201485%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e201455201462%_))
                                                (let ((_%$%e201458201470%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e201455201462%_))))
                                                  (let ((_%$%hd201459201473%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e201458201470%_)))
                                                        (_%$%tl201460201475%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e201458201470%_))))
                                                    (let* ((_%rest-hd201478%_
                                                            _%$%hd201459201473%_)
                                                           (_%rest-tl201480%_
                                                            _%$%tl201460201475%_))
                                                      (if (_%is-e?201386%_
                                                           _%rest-hd201478%_)
                                                          (_%lp201451%_
                                                           _%rest-tl201480%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth201454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth201454%_)
                      (_%make-splice201379%_
                       _%e201385%_
                       _%depth201454%_
                       (_%recur201380%_ _%hd201419%_ _%is-e?201386%_)
                       (_%recur201380%_ _%rest201453%_ _%is-e?201386%_))
                      (_%make-cons201378%_
                       (_%recur201380%_ _%hd201419%_ _%is-e?201386%_)
                       (_%recur201380%_ _%rest201453%_ _%is-e?201386%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E201457201466%_)))))
                                    (_%$%E201456201485%_)))))))
                      (_%$%E201398201407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E201397201489%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e201385%_))
                                                    (let ((_g201909_
                                                           (_%recur201380%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e201385%_)))
                    _%is-e?201386%_)))
              (begin
                (let ((_g201910_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g201909_)
                             (##values-length _g201909_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g201910_ 2)))
                      (error "Context expects 2 values" _g201910_)))
                (let ((_%e201494%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201909_ 0)))
                      (_%vars201495%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g201909_ 1))))
                  (values (cons 'vector _%e201494%_) _%vars201495%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e201385%_))
                                                        (let ((_g201911_
                                                               (_%recur201380%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e201385%_)))
                        _%is-e?201386%_)))
                  (begin
                    (let ((_g201912_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g201911_)
                                 (##values-length _g201911_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g201912_ 2)))
                          (error "Context expects 2 values" _g201912_)))
                    (let ((_%e201498%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g201911_ 0)))
                          (_%vars201499%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g201911_ 1))))
                      (values (cons 'box _%e201498%_) _%vars201499%_))))
                (values (cons 'datum _%e201385%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g201913_
                             (_%recur201380%_ _%e201376%_ gx#ellipsis?)))
                        (begin
                          (let ((_g201914_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g201913_)
                                       (##values-length _g201913_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g201914_ 2)))
                                (error "Context expects 2 values" _g201914_)))
                          (let ((_%tree201382%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g201913_ 0)))
                                (_%vars201383%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g201913_ 1))))
                            (if (null? _%vars201383%_)
                                _%tree201382%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx201332%_
                                   _%vars201383%_))))))))))
          (let* ((_%$%e201336201346%_ _%stx201332%_)
                 (_%$%E201338201350%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx201332%_))))
                 (_%$%E201337201372%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e201336201346%_))
                        (let ((_%$%e201339201354%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e201336201346%_))))
                          (let ((_%$%hd201340201357%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e201339201354%_)))
                                (_%$%tl201341201359%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e201339201354%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl201341201359%_))
                                (let ((_%$%e201342201362%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl201341201359%_))))
                                  (let ((_%$%hd201343201365%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e201342201362%_)))
                                        (_%$%tl201344201367%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e201342201362%_))))
                                    (let ((_%form201370%_
                                           _%$%hd201343201365%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl201344201367%_))
                                          (let ((__tmp201916
                                                 (_%generate201334%_
                                                  (_%parse201335%_
                                                   _%form201370%_)))
                                                (__tmp201915
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx201332%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp201916
                                             __tmp201915))
                                          (_%$%E201338201350%_)))))
                                (_%$%E201338201350%_))))
                        (_%$%E201338201350%_)))))
            (_%$%E201337201372%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx200581%_
               _%identifier=?200582%_
               _%unwrap-e200583%_
               _%wrap-e200584%_)
        (letrec ((_%generate-bindings200586%_
                  (lambda (_%target201196%_
                           _%ids201197%_
                           _%clauses201198%_
                           _%clause-ids201199%_
                           _%E201200%_)
                    (letrec ((_%generate1201202%_
                              (lambda (_%clause201299%_
                                       _%clause-id201300%_
                                       _%E201301%_)
                                (cons (cons _%clause-id201300%_ '())
                                      (cons (let ((__tmp201918
                                                   (cons _%target201196%_ '()))
                                                  (__tmp201917
                                                   (_%generate-clause200588%_
                                                    _%target201196%_
                                                    _%ids201197%_
                                                    _%clause201299%_
                                                    _%E201301%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp201918
                                               __tmp201917))
                                            '())))))
                      (let _%lp201204%_ ((_%rest201206%_ _%clauses201198%_)
                                         (_%rest-ids201207%_
                                          _%clause-ids201199%_)
                                         (_%bindings201208%_ '()))
                        (let* ((_%$%rest201209201217%_ _%rest201206%_)
                               (_%$%else201211201225%_
                                (lambda () _%bindings201208%_))
                               (_%$%K201213201287%_
                                (lambda (_%rest201228%_ _%clause201229%_)
                                  (let* ((_%$%rest-ids201230201237%_
                                          _%rest-ids201207%_)
                                         (_%$%E201232201241%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids201230201237%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K201233201275%_
                                          (lambda (_%rest-ids201244%_
                                                   _%clause-id201245%_)
                                            (let* ((_%$%rest-ids201246201254%_
                                                    _%rest-ids201244%_)
                                                   (_%$%else201248201262%_
                                                    (lambda ()
                                                      (cons (_%generate1201202%_
                                                             _%clause201229%_
                                                             _%clause-id201245%_
                                                             _%E201200%_)
                                                            _%bindings201208%_)))
                                                   (_%$%K201250201267%_
                                                    (lambda (_%next-clause-id201265%_)
                                                      (_%lp201204%_
                                                       _%rest201228%_
                                                       _%rest-ids201244%_
                                                       (cons (_%generate1201202%_
                                                              _%clause201229%_
                                                              _%clause-id201245%_
                                                              _%next-clause-id201265%_)
                                                             _%bindings201208%_)))))
                                              (if (pair? _%$%rest-ids201246201254%_)
                                                  (let* ((_%$%hd201251201270%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids201246201254%_)))
                                                         (_%next-clause-id201273%_
                                                          _%$%hd201251201270%_))
                                                    (_%$%K201250201267%_
                                                     _%next-clause-id201273%_))
                                                  (_%$%else201248201262%_))))))
                                    (if (pair? _%$%rest-ids201230201237%_)
                                        (let ((_%$%hd201234201278%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids201230201237%_)))
                                              (_%$%tl201235201280%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids201230201237%_))))
                                          (let* ((_%clause-id201283%_
                                                  _%$%hd201234201278%_)
                                                 (_%rest-ids201285%_
                                                  _%$%tl201235201280%_))
                                            (_%$%K201233201275%_
                                             _%rest-ids201285%_
                                             _%clause-id201283%_)))
                                        (_%$%E201232201241%_))))))
                          (if (pair? _%$%rest201209201217%_)
                              (let ((_%$%hd201214201290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest201209201217%_)))
                                    (_%$%tl201215201292%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest201209201217%_))))
                                (let* ((_%clause201295%_ _%$%hd201214201290%_)
                                       (_%rest201297%_ _%$%tl201215201292%_))
                                  (_%$%K201213201287%_
                                   _%rest201297%_
                                   _%clause201295%_)))
                              (_%$%else201211201225%_)))))))
                 (_%generate-body200587%_
                  (lambda (_%bindings201156%_ _%body201157%_)
                    (let _%recur201159%_ ((_%rest201161%_ _%bindings201156%_))
                      (let* ((_%$%rest201162201170%_ _%rest201161%_)
                             (_%$%else201164201178%_
                              (lambda () _%body201157%_))
                             (_%$%K201166201184%_
                              (lambda (_%rest201181%_ _%hd201182%_)
                                (let ((__tmp201920 (cons _%hd201182%_ '()))
                                      (__tmp201919
                                       (_%recur201159%_ _%rest201181%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp201920
                                   __tmp201919)))))
                        (if (pair? _%$%rest201162201170%_)
                            (let ((_%$%hd201167201187%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest201162201170%_)))
                                  (_%$%tl201168201189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest201162201170%_))))
                              (let* ((_%hd201192%_ _%$%hd201167201187%_)
                                     (_%rest201194%_ _%$%tl201168201189%_))
                                (_%$%K201166201184%_
                                 _%rest201194%_
                                 _%hd201192%_)))
                            (_%$%else201164201178%_))))))
                 (_%generate-clause200588%_
                  (lambda (_%target201019%_
                           _%ids201020%_
                           _%clause201021%_
                           _%E201022%_)
                    (letrec ((_%generate1201024%_
                              (lambda (_%hd201111%_
                                       _%fender201112%_
                                       _%body201113%_)
                                (let ((_g201921_
                                       (_%parse-clause200590%_
                                        _%hd201111%_
                                        _%ids201020%_)))
                                  (begin
                                    (let ((_g201922_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g201921_)
                                                 (##values-length _g201921_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g201922_ 2)))
                                          (error "Context expects 2 values"
                                                 _g201922_)))
                                    (let ((_%e201115%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201921_ 0)))
                                          (_%mvars201116%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g201921_ 1))))
                                      (let* ((_%pvars201118%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars201116%_))))
                                             (_%E201120%_
                                              (cons _%E201022%_
                                                    (cons _%target201019%_
                                                          '())))
                                             (_%K201153%_
                                              (let ((__tmp201923
                                                     (let ((__tmp201925
                                                            (map (lambda (_%mvar201122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar201123%_)
                           (let* ((_%$%mvar201124201131%_ _%mvar201122%_)
                                  (_%$%E201126201135%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar201124201131%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K201127201141%_
                                   (lambda (_%depth201138%_ _%id201139%_)
                                     (cons _%id201139%_
                                           (cons (let ((__tmp201927
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id201139%_)))
                                                       (__tmp201926
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar201123%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp201927
                                                    __tmp201926
                                                    _%depth201138%_))
                                                 '())))))
                             (if (pair? _%$%mvar201124201131%_)
                                 (let ((_%$%hd201128201144%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar201124201131%_)))
                                       (_%$%tl201129201146%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar201124201131%_))))
                                   (let* ((_%id201149%_ _%$%hd201128201144%_)
                                          (_%depth201151%_
                                           _%$%tl201129201146%_))
                                     (_%$%K201127201141%_
                                      _%depth201151%_
                                      _%id201149%_)))
                                 (_%$%E201126201135%_))))
                         _%mvars201116%_
                         _%pvars201118%_))
                   (__tmp201924
                    (if (eq? _%fender201112%_ '#t)
                        _%body201113%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender201112%_
                           _%body201113%_
                           _%E201120%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp201925 __tmp201924))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars201118%_
                                                 __tmp201923))))
                                        (_%generate-match200589%_
                                         _%hd201111%_
                                         _%target201019%_
                                         _%e201115%_
                                         _%mvars201116%_
                                         _%K201153%_
                                         _%E201120%_))))))))
                      (let* ((_%$%e201025201045%_ _%clause201021%_)
                             (_%$%E201034201049%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e201025201045%_))))
                             (_%$%E201027201083%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e201025201045%_))
                                    (let ((_%$%e201035201053%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e201025201045%_))))
                                      (let ((_%$%hd201036201056%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e201035201053%_)))
                                            (_%$%tl201037201058%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e201035201053%_))))
                                        (let ((_%hd201061%_
                                               _%$%hd201036201056%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl201037201058%_))
                                              (let ((_%$%e201038201063%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl201037201058%_))))
                                                (let ((_%$%hd201039201066%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201038201063%_)))
                                                      (_%$%tl201040201068%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201038201063%_))))
                                                  (let ((_%fender201071%_
                                                         _%$%hd201039201066%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl201040201068%_))
                                                        (let ((_%$%e201041201073%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl201040201068%_))))
                  (let ((_%$%hd201042201076%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e201041201073%_)))
                        (_%$%tl201043201078%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e201041201073%_))))
                    (let ((_%body201081%_ _%$%hd201042201076%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl201043201078%_))
                          (_%generate1201024%_
                           _%hd201061%_
                           _%fender201071%_
                           _%body201081%_)
                          (_%$%E201034201049%_)))))
                (_%$%E201034201049%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E201034201049%_)))))
                                    (_%$%E201034201049%_))))
                             (_%$%E201026201107%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e201025201045%_))
                                    (let ((_%$%e201028201087%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e201025201045%_))))
                                      (let ((_%$%hd201029201090%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e201028201087%_)))
                                            (_%$%tl201030201092%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e201028201087%_))))
                                        (let ((_%hd201095%_
                                               _%$%hd201029201090%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl201030201092%_))
                                              (let ((_%$%e201031201097%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl201030201092%_))))
                                                (let ((_%$%hd201032201100%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e201031201097%_)))
                                                      (_%$%tl201033201102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e201031201097%_))))
                                                  (let ((_%body201105%_
                                                         _%$%hd201032201100%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl201033201102%_))
                                                        (_%generate1201024%_
                                                         _%hd201095%_
                                                         '#t
                                                         _%body201105%_)
                                                        (_%$%E201027201083%_)))))
                                              (_%$%E201027201083%_)))))
                                    (_%$%E201027201083%_)))))
                        (_%$%E201026201107%_)))))
                 (_%generate-match200589%_
                  (lambda (_%where200768%_
                           _%target200769%_
                           _%hd200770%_
                           _%mvars200771%_
                           _%K200772%_
                           _%E200773%_)
                    (letrec ((_%BUG200775%_
                              (lambda (_%q201017%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx200581%_
                                         _%hd200770%_
                                         _%q201017%_))))
                             (_%recur200776%_
                              (lambda (_%e200867%_
                                       _%vars200868%_
                                       _%target200869%_
                                       _%E200870%_
                                       _%k200871%_)
                                (let* ((_%$%e200872200879%_ _%e200867%_)
                                       (_%$%E200874200883%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e200872200879%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K200875201005%_
                                        (lambda (_%body200886%_ _%tag200887%_)
                                          (let ((_%$e200889%_ _%tag200887%_))
                                            (if (eq? 'any _%$e200889%_)
                                                (_%k200871%_ _%vars200868%_)
                                                (if (eq? 'id _%$e200889%_)
                                                    (let ((__tmp201932
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target200869%_)))
                                                          (__tmp201928
                                                           (let ((__tmp201930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp201931
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e200584%_
                                    _%body200886%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?200582%_
                             __tmp201931
                             _%target200869%_)))
                         (__tmp201929 (_%k200871%_ _%vars200868%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp201930 __tmp201929 _%E200870%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp201932 __tmp201928 _%E200870%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e200889%_)
                                                        (_%k200871%_
                                                         (cons (cons _%body200886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target200869%_)
                       _%vars200868%_))
                (if (eq? 'cons _%$e200889%_)
                    (let ((_%$e200892%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd200893%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl200894%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp201938
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target200869%_)))
                            (__tmp201933
                             (let ((__tmp201937
                                    (cons (cons (cons _%$e200892%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e200583%_
                                                         _%target200869%_))
                                                      '()))
                                          '()))
                                   (__tmp201934
                                    (let ((__tmp201936
                                           (cons (cons (cons _%$hd200893%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e200892%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl200894%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e200892%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp201935
                                           (let* ((_%$%body200895200902%_
                                                   _%body200886%_)
                                                  (_%$%E200897200906%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body200895200902%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K200898200914%_
                                                   (lambda (_%tl200909%_
                                                            _%hd200910%_)
                                                     (_%recur200776%_
                                                      _%hd200910%_
                                                      _%vars200868%_
                                                      _%$hd200893%_
                                                      _%E200870%_
                                                      (lambda (_%vars200912%_)
                                                        (_%recur200776%_
                                                         _%tl200909%_
                                                         _%vars200912%_
                                                         _%$tl200894%_
                                                         _%E200870%_
                                                         _%k200871%_))))))
                                             (if (pair? _%$%body200895200902%_)
                                                 (let ((_%$%hd200899200917%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body200895200902%_)))
                                                       (_%$%tl200900200919%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body200895200902%_))))
                                                   (let* ((_%hd200922%_
                                                           _%$%hd200899200917%_)
                                                          (_%tl200924%_
                                                           _%$%tl200900200919%_))
                                                     (_%$%K200898200914%_
                                                      _%tl200924%_
                                                      _%hd200922%_)))
                                                 (_%$%E200897200906%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp201936
                                       __tmp201935))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp201937
                                __tmp201934))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp201938
                         __tmp201933
                         _%E200870%_)))
                    (if (eq? 'splice _%$e200889%_)
                        (let* ((_%$%body200925200932%_ _%body200886%_)
                               (_%$%E200927200936%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body200925200932%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K200928200987%_
                                (lambda (_%tl200939%_ _%hd200940%_)
                                  (let* ((_%rlen200942%_
                                          (_%splice-rlen200777%_ _%tl200939%_))
                                         (_%$target200944%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd200946%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl200948%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp200950%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e200952%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd200954%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl200956%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars200958%_
                                          (_%splice-vars200778%_ _%hd200940%_))
                                         (_%lvars200960%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars200958%_)))
                                         (_%tlvars200962%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars200958%_)))
                                         (_%linit200966%_
                                          (map (lambda (_%var200964%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars200960%_)))
                                    (letrec ((_%make-loop200969%_
                                              (lambda (_%vars200973%_)
                                                (let ((__tmp201940
                                                       (cons (cons (cons _%$lp200950%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp201953
                                        (cons _%$hd200946%_ _%lvars200960%_))
                                       (__tmp201941
                                        (let ((__tmp201952
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd200946%_)))
                                              (__tmp201946
                                               (let ((__tmp201951
                                                      (cons (cons (cons _%$lp-e200952%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e200583%_
                                   _%$hd200946%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp201947
                                                      (let ((__tmp201950
                                                             (cons (cons (cons _%$lp-hd200954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e200952%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl200956%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e200952%_))
                                             '()))
                                 '())))
                    (__tmp201948
                     (_%recur200776%_
                      _%hd200940%_
                      '()
                      _%$lp-hd200954%_
                      _%E200870%_
                      (lambda (_%hdvars200975%_)
                        (cons _%$lp200950%_
                              (cons _%$lp-tl200956%_
                                    (map (lambda (_%svar200977%_
                                                  _%lvar200978%_)
                                           (let ((__tmp201949
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar200977%_
                                                     _%hdvars200975%_
                                                     _%BUG200775%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp201949
                                              _%lvar200978%_)))
                                         _%svars200958%_
                                         _%lvars200960%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp201950 __tmp201948))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp201951
                                                  __tmp201947)))
                                              (__tmp201942
                                               (let ((__tmp201945
                                                      (map (lambda (_%lvar200980%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar200981%_)
                     (cons (cons _%tlvar200981%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar200980%_))
                                 '())))
                   _%lvars200960%_
                   _%tlvars200962%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp201943
                                                      (_%k200871%_
                                                       (let ((__tmp201944
                                                              (lambda (_%svar200983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar200984%_
                               _%r200985%_)
                        (cons (cons _%svar200983%_ _%tlvar200984%_)
                              _%r200985%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp201944
                  _%vars200973%_
                  _%svars200958%_
                  _%tlvars200962%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp201945
                                                  __tmp201943))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp201952
                                           __tmp201946
                                           __tmp201942))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp201953
                                    __tmp201941))
                                 '()))
                     '()))
              (__tmp201939
               (cons _%$lp200950%_ (cons _%$target200944%_ _%linit200966%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp201940
                                                   __tmp201939)))))
                                      (let ((_%body200971%_
                                             (let ((__tmp201955
                                                    (cons (cons (cons _%$target200944%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl200948%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target200869%_
                                 _%rlen200942%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp201954
                                                    (_%recur200776%_
                                                     _%tl200939%_
                                                     _%vars200868%_
                                                     _%$tl200948%_
                                                     _%E200870%_
                                                     _%make-loop200969%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp201955
                                                __tmp201954))))
                                        (let ((__tmp201959
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target200869%_)))
                                              (__tmp201956
                                               (if (zero? _%rlen200942%_)
                                                   _%body200971%_
                                                   (let ((__tmp201957
                                                          (let ((__tmp201958
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target200869%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp201958 _%rlen200942%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp201957
                                                      _%body200971%_
                                                      _%E200870%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp201959
                                           __tmp201956
                                           _%E200870%_))))))))
                          (if (pair? _%$%body200925200932%_)
                              (let ((_%$%hd200929200990%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body200925200932%_)))
                                    (_%$%tl200930200992%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body200925200932%_))))
                                (let* ((_%hd200995%_ _%$%hd200929200990%_)
                                       (_%tl200997%_ _%$%tl200930200992%_))
                                  (_%$%K200928200987%_
                                   _%tl200997%_
                                   _%hd200995%_)))
                              (_%$%E200927200936%_)))
                        (if (eq? 'null _%$e200889%_)
                            (let ((__tmp201961
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target200869%_)))
                                  (__tmp201960 (_%k200871%_ _%vars200868%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp201961
                               __tmp201960
                               _%E200870%_))
                            (if (eq? 'vector _%$e200889%_)
                                (let ((_%$e200999%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp201966
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target200869%_)))
                                        (__tmp201962
                                         (let ((__tmp201964
                                                (cons (cons (cons _%$e200999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp201965
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e200583%_
                                    _%target200869%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp201965))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp201963
                                                (_%recur200776%_
                                                 _%body200886%_
                                                 _%vars200868%_
                                                 _%$e200999%_
                                                 _%E200870%_
                                                 _%k200871%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp201964
                                            __tmp201963))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp201966
                                     __tmp201962
                                     _%E200870%_)))
                                (if (eq? 'box _%$e200889%_)
                                    (let ((_%$e201001%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp201971
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target200869%_)))
                                            (__tmp201967
                                             (let ((__tmp201969
                                                    (cons (cons (cons _%$e201001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp201970
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e200583%_
                                        _%target200869%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp201970))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp201968
                                                    (_%recur200776%_
                                                     _%body200886%_
                                                     _%vars200868%_
                                                     _%$e201001%_
                                                     _%E200870%_
                                                     _%k200871%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp201969
                                                __tmp201968))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp201971
                                         __tmp201967
                                         _%E200870%_)))
                                    (if (eq? 'datum _%$e200889%_)
                                        (let ((_%$e201003%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp201977
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target200869%_)))
                                                (__tmp201972
                                                 (let ((__tmp201976
                                                        (cons (cons (cons _%$e201003%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target200869%_))
                                  '()))
                      '()))
               (__tmp201973
                (let ((__tmp201975
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e201003%_ _%body200886%_)))
                      (__tmp201974 (_%k200871%_ _%vars200868%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp201975 __tmp201974 _%E200870%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp201976
                                                    __tmp201973))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp201977
                                             __tmp201972
                                             _%E200870%_)))
                                        (_%BUG200775%_
                                         _%e200867%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e200872200879%_)
                                      (let ((_%$%hd200876201008%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e200872200879%_)))
                                            (_%$%tl200877201010%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e200872200879%_))))
                                        (let* ((_%tag201013%_
                                                _%$%hd200876201008%_)
                                               (_%body201015%_
                                                _%$%tl200877201010%_))
                                          (_%$%K200875201005%_
                                           _%body201015%_
                                           _%tag201013%_)))
                                      (_%$%E200874200883%_)))))
                             (_%splice-rlen200777%_
                              (lambda (_%e200829%_)
                                (let _%lp200831%_ ((_%e200833%_ _%e200829%_)
                                                   (_%n200834%_ '0))
                                  (let* ((_%$%e200835200842%_ _%e200833%_)
                                         (_%$%E200837200846%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e200835200842%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K200838200855%_
                                          (lambda (_%body200849%_
                                                   _%tag200850%_)
                                            (let ((_%$e200852%_ _%tag200850%_))
                                              (if (eq? 'splice _%$e200852%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx200581%_
                                                     _%where200768%_))
                                                  (if (eq? 'cons _%$e200852%_)
                                                      (_%lp200831%_
                                                       (cdr _%body200849%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n200834%_
                                                                '1)))
                                                      _%n200834%_))))))
                                    (if (pair? _%$%e200835200842%_)
                                        (let ((_%$%hd200839200858%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200835200842%_)))
                                              (_%$%tl200840200860%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200835200842%_))))
                                          (let* ((_%tag200863%_
                                                  _%$%hd200839200858%_)
                                                 (_%body200865%_
                                                  _%$%tl200840200860%_))
                                            (_%$%K200838200855%_
                                             _%body200865%_
                                             _%tag200863%_)))
                                        (_%$%E200837200846%_))))))
                             (_%splice-vars200778%_
                              (lambda (_%e200785%_)
                                (let _%recur200787%_ ((_%e200789%_ _%e200785%_)
                                                      (_%vars200790%_ '()))
                                  (let* ((_%$%e200791200798%_ _%e200789%_)
                                         (_%$%E200793200802%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e200791200798%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K200794200817%_
                                          (lambda (_%body200805%_
                                                   _%tag200806%_)
                                            (let ((_%$e200808%_ _%tag200806%_))
                                              (if (eq? 'var _%$e200808%_)
                                                  (cons _%body200805%_
                                                        _%vars200790%_)
                                                  (if (or (eq? 'cons
                                                               _%$e200808%_)
                                                          (eq? 'splice
                                                               _%$e200808%_))
                                                      (_%recur200787%_
                                                       (cdr _%body200805%_)
                                                       (_%recur200787%_
                                                        (car _%body200805%_)
                                                        _%vars200790%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e200808%_)
                      (eq? 'box _%$e200808%_))
                  (_%recur200787%_ _%body200805%_ _%vars200790%_)
                  _%vars200790%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e200791200798%_)
                                        (let ((_%$%hd200795200820%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e200791200798%_)))
                                              (_%$%tl200796200822%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e200791200798%_))))
                                          (let* ((_%tag200825%_
                                                  _%$%hd200795200820%_)
                                                 (_%body200827%_
                                                  _%$%tl200796200822%_))
                                            (_%$%K200794200817%_
                                             _%body200827%_
                                             _%tag200825%_)))
                                        (_%$%E200793200802%_))))))
                             (_%make-body200779%_
                              (lambda (_%vars200781%_)
                                (cons _%K200772%_
                                      (map (lambda (_%mvar200783%_)
                                             (let ((__tmp201978
                                                    (car _%mvar200783%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp201978
                                                _%vars200781%_
                                                _%BUG200775%_)))
                                           _%mvars200771%_)))))
                      (_%recur200776%_
                       _%hd200770%_
                       '()
                       _%target200769%_
                       _%E200773%_
                       _%make-body200779%_))))
                 (_%parse-clause200590%_
                  (lambda (_%hd200662%_ _%ids200663%_)
                    (let _%recur200665%_ ((_%e200667%_ _%hd200662%_)
                                          (_%vars200668%_ '())
                                          (_%depth200669%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e200667%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e200667%_))
                              (values '(any) _%vars200668%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e200667%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx200581%_
                                     _%hd200662%_))
                                  (if (let ((__tmp201979
                                             (lambda (_%id200674%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e200667%_
                                                  _%id200674%_)))))
                                        (declare (not safe))
                                        (__find __tmp201979 _%ids200663%_))
                                      (values (cons 'id _%e200667%_)
                                              _%vars200668%_)
                                      (if (let ((__tmp201980
                                                 (lambda (_%var200677%_)
                                                   (let ((__tmp201981
                                                          (car _%var200677%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e200667%_
                                                      __tmp201981)))))
                                            (declare (not safe))
                                            (__find __tmp201980
                                                    _%vars200668%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx200581%_
                                             _%e200667%_))
                                          (values (cons 'var _%e200667%_)
                                                  (cons (cons _%e200667%_
                                                              _%depth200669%_)
                                                        _%vars200668%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e200667%_))
                              (let* ((_%$%e200681200688%_ _%e200667%_)
                                     (_%$%E200683200692%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e200681200688%_))))
                                     (_%$%E200682200753%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e200681200688%_))
                                            (let ((_%$%e200684200696%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e200681200688%_))))
                                              (let ((_%$%hd200685200699%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e200684200696%_)))
                                                    (_%$%tl200686200701%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e200684200696%_))))
                                                (let* ((_%hd200704%_
                                                        _%$%hd200685200699%_)
                                                       (_%rest200706%_
                                                        _%$%tl200686200701%_)
                                                       (_%make-pair200721%_
                                                        (lambda (_%tag200708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd200709%_
                         _%tl200710%_)
                  (let* ((_%hd-depth200712%_
                          (if (eq? _%tag200708%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth200669%_ '1))
                              _%depth200669%_))
                         (_g201982_
                          (_%recur200665%_
                           _%hd200709%_
                           _%vars200668%_
                           _%hd-depth200712%_)))
                    (begin
                      (let ((_g201983_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g201982_)
                                   (##values-length _g201982_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g201983_ 2)))
                            (error "Context expects 2 values" _g201983_)))
                      (let ((_%hd200714%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g201982_ 0)))
                            (_%vars200715%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g201982_ 1))))
                        (let ((_g201984_
                               (_%recur200665%_
                                _%tl200710%_
                                _%vars200715%_
                                _%depth200669%_)))
                          (begin
                            (let ((_g201985_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g201984_)
                                         (##values-length _g201984_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g201985_ 2)))
                                  (error "Context expects 2 values"
                                         _g201985_)))
                            (let ((_%tl200717%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201984_ 0)))
                                  (_%vars200718%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g201984_ 1))))
                              (values (cons _%tag200708%_
                                            (cons _%hd200714%_ _%tl200717%_))
                                      _%vars200718%_)))))))))
               (_%$%e200722200729%_ _%rest200706%_)
               (_%$%E200724200733%_
                (lambda ()
                  (_%make-pair200721%_ 'cons _%hd200704%_ _%rest200706%_)))
               (_%$%E200723200749%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e200722200729%_))
                      (let ((_%$%e200725200737%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e200722200729%_))))
                        (let ((_%$%hd200726200740%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200725200737%_)))
                              (_%$%tl200727200742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200725200737%_))))
                          (let* ((_%rest-hd200745%_ _%$%hd200726200740%_)
                                 (_%rest-tl200747%_ _%$%tl200727200742%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd200745%_))
                                (_%make-pair200721%_
                                 'splice
                                 _%hd200704%_
                                 _%rest-tl200747%_)
                                (_%make-pair200721%_
                                 'cons
                                 _%hd200704%_
                                 _%rest200706%_)))))
                      (_%$%E200724200733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E200723200749%_))))
                                            (_%$%E200683200692%_)))))
                                (_%$%E200682200753%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e200667%_))
                                  (values '(null) _%vars200668%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e200667%_))
                                      (let ((_g201986_
                                             (_%recur200665%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e200667%_)))
                                              _%vars200668%_
                                              _%depth200669%_)))
                                        (begin
                                          (let ((_g201987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g201986_)
                                                       (##values-length
                                                        _g201986_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g201987_ 2)))
                                                (error "Context expects 2 values"
                                                       _g201987_)))
                                          (let ((_%e200759%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g201986_ 0)))
                                                (_%vars200760%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g201986_
                                                    1))))
                                            (values (cons 'vector _%e200759%_)
                                                    _%vars200760%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e200667%_))
                                          (let ((_g201988_
                                                 (_%recur200665%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e200667%_)))
                                                  _%vars200668%_
                                                  _%depth200669%_)))
                                            (begin
                                              (let ((_g201989_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g201988_)
                                                           (##values-length
                                                            _g201988_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g201989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g201989_)))
                                              (let ((_%e200763%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g201988_
                                                        0)))
                                                    (_%vars200764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g201988_
                                                        1))))
                                                (values (cons 'box _%e200763%_)
                                                        _%vars200764%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e200667%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e200667%_)))
                                                      _%vars200668%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx200581%_
                                                 _%e200667%_))))))))))))
          (let* ((_%$%e200591200604%_ _%stx200581%_)
                 (_%$%E200593200608%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e200591200604%_))))
                 (_%$%E200592200658%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e200591200604%_))
                        (let ((_%$%e200594200612%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e200591200604%_))))
                          (let ((_%$%hd200595200615%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e200594200612%_)))
                                (_%$%tl200596200617%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e200594200612%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl200596200617%_))
                                (let ((_%$%e200597200620%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl200596200617%_))))
                                  (let ((_%$%hd200598200623%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e200597200620%_)))
                                        (_%$%tl200599200625%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e200597200620%_))))
                                    (let ((_%expr200628%_
                                           _%$%hd200598200623%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl200599200625%_))
                                          (let ((_%$%e200600200630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl200599200625%_))))
                                            (let ((_%$%hd200601200633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e200600200630%_)))
                                                  (_%$%tl200602200635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e200600200630%_))))
                                              (let* ((_%ids200638%_
                                                      _%$%hd200601200633%_)
                                                     (_%clauses200640%_
                                                      _%$%tl200602200635%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids200638%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses200640%_))
                                                        (let* ((_%ids200645%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids200638%_)))
                       (_%clauses200647%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses200640%_)))
                       (_%clause-ids200649%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses200647%_)))
                       (_%E200651%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target200653%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first200655%_
                        (if (null? _%clauses200647%_)
                            _%E200651%_
                            (car _%clause-ids200649%_))))
                  (let ((__tmp201991
                         (let ((__tmp201992
                                (let ((__tmp201994
                                       (let ((__tmp201996
                                              (cons (cons (cons _%E200651%_
                                                                '())
                                                          (cons (let ((__tmp201998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target200653%_ '()))
                              (__tmp201997
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target200653%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp201998 __tmp201997))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp201995
                                              (_%generate-body200587%_
                                               (_%generate-bindings200586%_
                                                _%target200653%_
                                                _%ids200645%_
                                                _%clauses200647%_
                                                _%clause-ids200649%_
                                                _%E200651%_)
                                               (cons _%first200655%_
                                                     (cons _%expr200628%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp201996
                                          __tmp201995)))
                                      (__tmp201993
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx200581%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp201994
                                   __tmp201993))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp201992)))
                        (__tmp201990
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx200581%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp201991 __tmp201990)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx200581%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx200581%_
                                                       _%ids200638%_))))))
                                          (_%$%E200593200608%_)))))
                                (_%$%E200593200608%_))))
                        (_%$%E200593200608%_)))))
            (_%$%E200592200658%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx201306%_)
        (let* ((_%identifier=?201308%_ 'free-identifier=?)
               (_%unwrap-e201310%_ 'syntax-e)
               (_%wrap-e201312%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx201306%_
           _%identifier=?201308%_
           _%unwrap-e201310%_
           _%wrap-e201312%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx201314%_ _%identifier=?201315%_)
        (let* ((_%unwrap-e201317%_ 'syntax-e) (_%wrap-e201319%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx201314%_
           _%identifier=?201315%_
           _%unwrap-e201317%_
           _%wrap-e201319%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx201321%_ _%identifier=?201322%_ _%unwrap-e201323%_)
        (let ((_%wrap-e201325%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx201321%_
           _%identifier=?201322%_
           _%unwrap-e201323%_
           _%wrap-e201325%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g201999_
        (let ((_g202000_ (let () (declare (not safe)) (##length _g201999_))))
          (cond ((let () (declare (not safe)) (##fx= _g202000_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g201999_))
                ((let () (declare (not safe)) (##fx= _g202000_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g201999_))
                ((let () (declare (not safe)) (##fx= _g202000_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g201999_))
                ((let () (declare (not safe)) (##fx= _g202000_ 4))
                 (apply gx#macro-expand-syntax-case__% _g201999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g201999_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx200578%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx200578%_))
            (let ((__tmp202001
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx200578%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp202001 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd200536%_ . _%rest200537%_)
        (let ((_%len200539%_ (length _%hd200536%_)))
          (let _%lp200541%_ ((_%rest200543%_ _%rest200537%_))
            (let* ((_%$%rest200544200552%_ _%rest200543%_)
                   (_%$%else200546200560%_ (lambda () '#!void))
                   (_%$%K200548200566%_
                    (lambda (_%rest200563%_ _%hd200564%_)
                      (if (let ((__tmp202002 (length _%hd200564%_)))
                            (declare (not safe))
                            (##fx= _%len200539%_ __tmp202002))
                          (_%lp200541%_ _%rest200563%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd200564%_))))))
              (if (pair? _%$%rest200544200552%_)
                  (let ((_%$%hd200549200569%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest200544200552%_)))
                        (_%$%tl200550200571%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest200544200552%_))))
                    (let* ((_%hd200574%_ _%$%hd200549200569%_)
                           (_%rest200576%_ _%$%tl200550200571%_))
                      (_%$%K200548200566%_ _%rest200576%_ _%hd200574%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx200486%_ _%n200487%_)
        (let _%lp200489%_ ((_%rest200492%_ _%stx200486%_) (_%r200494%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest200492%_))
              (let* ((_%$%g200496200503%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest200492%_)))
                     (_%$%E200498200507%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g200496200503%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K200499200514%_
                      (lambda (_%rest200510%_ _%hd200511%_)
                        (_%lp200489%_
                         _%rest200510%_
                         (cons _%hd200511%_ _%r200494%_)))))
                (if (pair? _%$%g200496200503%_)
                    (let ((_%$%hd200500200517%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g200496200503%_)))
                          (_%$%tl200501200519%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g200496200503%_))))
                      (let* ((_%hd200522%_ _%$%hd200500200517%_)
                             (_%rest200524%_ _%$%tl200501200519%_))
                        (_%$%K200499200514%_ _%rest200524%_ _%hd200522%_)))
                    (_%$%E200498200507%_)))
              (let _%lp200526%_ ((_%n200528%_ _%n200487%_)
                                 (_%l200529%_ _%r200494%_)
                                 (_%r200531%_ _%rest200492%_))
                (if (null? _%l200529%_)
                    (values _%l200529%_ _%r200531%_)
                    (if (fxpositive? _%n200528%_)
                        (_%lp200526%_
                         (let () (declare (not safe)) (##fx- _%n200528%_ '1))
                         (cdr _%l200529%_)
                         (cons (car _%l200529%_) _%r200531%_))
                        (values (reverse! _%l200529%_) _%r200531%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx200436%_ _%n200437%_)
        (let _%lp200439%_ ((_%rest200442%_ _%stx200436%_) (_%r200444%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest200442%_))
              (let* ((_%$%g200446200453%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest200442%_)))
                     (_%$%E200448200457%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g200446200453%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K200449200464%_
                      (lambda (_%rest200460%_ _%hd200461%_)
                        (_%lp200439%_
                         _%rest200460%_
                         (cons _%hd200461%_ _%r200444%_)))))
                (if (pair? _%$%g200446200453%_)
                    (let ((_%$%hd200450200467%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g200446200453%_)))
                          (_%$%tl200451200469%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g200446200453%_))))
                      (let* ((_%hd200472%_ _%$%hd200450200467%_)
                             (_%rest200474%_ _%$%tl200451200469%_))
                        (_%$%K200449200464%_ _%rest200474%_ _%hd200472%_)))
                    (_%$%E200448200457%_)))
              (let _%lp200476%_ ((_%n200478%_ _%n200437%_)
                                 (_%l200479%_ _%r200444%_)
                                 (_%r200481%_ _%rest200442%_))
                (if (null? _%l200479%_)
                    (vector _%l200479%_ _%r200481%_)
                    (if (fxpositive? _%n200478%_)
                        (_%lp200476%_
                         (let () (declare (not safe)) (##fx- _%n200478%_ '1))
                         (cdr _%l200479%_)
                         (cons (car _%l200479%_) _%r200481%_))
                        (vector (reverse! _%l200479%_) _%r200481%_))))))))))
