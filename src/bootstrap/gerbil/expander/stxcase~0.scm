(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stxcase::timestamp 1784758125)
  (begin
    (define gx#syntax-pattern::t
      (let ((__tmp199708 (list gx#expander::t))
            (__tmp199707 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gx#syntax-pattern::t
         'syntax-pattern
         __tmp199708
         '(id depth)
         __tmp199707
         '#f)))
    (define gx#syntax-pattern?
      (let ()
        (declare (not safe))
        (__make-class-predicate gx#syntax-pattern::t)))
    (define gx#make-syntax-pattern
      (lambda _%$args199704%_
        (apply make-instance gx#syntax-pattern::t _%$args199704%_)))
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
      (lambda (_%self199690%_ _%stx199691%_)
        (let ((_%self199694%_ _%self199690%_))
          (declare (not safe))
          (gx#raise-syntax-error
           '#f
           '"Identifier used out of context"
           _%stx199691%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gx#syntax-pattern::t
       'apply-macro-expander
       gx#syntax-pattern::apply-macro-expander
       '#f))
    (define gx#macro-expand-syntax
      (lambda (_%stx199157%_)
        (letrec ((_%generate199159%_
                  (lambda (_%e199399%_)
                    (letrec ((_%BUG199401%_
                              (lambda (_%q199566%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax; generate"
                                         _%stx199157%_
                                         _%e199399%_
                                         _%q199566%_))))
                             (_%local-pattern-e199402%_
                              (lambda (_%pat199564%_)
                                (let ((__tmp199709
                                       (##structure-ref
                                        _%pat199564%_
                                        '2
                                        gx#syntax-pattern::t
                                        '#f)))
                                  (declare (not safe))
                                  (gx#syntax-local-rewrap __tmp199709))))
                             (_%getvar199403%_
                              (lambda (_%q199561%_ _%vars199562%_)
                                (let ()
                                  (declare (not safe))
                                  (agetq__%
                                   _%q199561%_
                                   _%vars199562%_
                                   _%BUG199401%_))))
                             (_%getarg199404%_
                              (lambda (_%arg199527%_ _%vars199528%_)
                                (let* ((_%$%arg199529199536%_ _%arg199527%_)
                                       (_%$%E199531199540%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%arg199529199536%_
                                                   '([tag . e])))
                                          '#!void))
                                       (_%$%K199532199549%_
                                        (lambda (_%e199543%_ _%tag199544%_)
                                          (let ((_%$e199546%_ _%tag199544%_))
                                            (if (eq? 'ref _%$e199546%_)
                                                (_%getvar199403%_
                                                 _%e199543%_
                                                 _%vars199528%_)
                                                (if (eq? 'pattern _%$e199546%_)
                                                    (_%local-pattern-e199402%_
                                                     _%e199543%_)
                                                    (_%BUG199401%_
                                                     _%arg199527%_)))))))
                                  (if (pair? _%$%arg199529199536%_)
                                      (let ((_%$%hd199533199552%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%arg199529199536%_)))
                                            (_%$%tl199534199554%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%arg199529199536%_))))
                                        (let* ((_%tag199557%_
                                                _%$%hd199533199552%_)
                                               (_%e199559%_
                                                _%$%tl199534199554%_))
                                          (_%$%K199532199549%_
                                           _%e199559%_
                                           _%tag199557%_)))
                                      (_%$%E199531199540%_))))))
                      (let _%recur199406%_ ((_%e199408%_ _%e199399%_)
                                            (_%vars199409%_ '()))
                        (let* ((_%$%e199410199417%_ _%e199408%_)
                               (_%$%E199412199421%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%e199410199417%_
                                           '([tag . body])))
                                  '#!void))
                               (_%$%K199413199515%_
                                (lambda (_%body199424%_ _%tag199425%_)
                                  (let ((_%$e199427%_ _%tag199425%_))
                                    (if (eq? 'datum _%$e199427%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#core-list 'quote _%body199424%_))
                                        (if (eq? 'term _%$e199427%_)
                                            (let ((_%id199430%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-local-unwrap
                                                      _%body199424%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##structure-direct-instance-of?
                                                     _%id199430%_
                                                     'gx#identifier-wrap::t))
                                                  (let ((_%marks199433%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%id199430%_
                                                            '3
                                                            '#f
                                                            '#f))))
                                                    (if (null? _%marks199433%_)
                                                        (let ((__tmp199710
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#core-list 'quote _%body199424%_))))
                  (declare (not safe))
                  (gx#core-list 'datum->syntax '#f __tmp199710))
                (let ((__tmp199712
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote-syntax _%body199424%_)))
                      (__tmp199711
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'quote _%body199424%_))))
                  (declare (not safe))
                  (gx#core-list
                   'datum->syntax
                   __tmp199712
                   __tmp199711
                   '#f
                   '#f))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (##structure-direct-instance-of?
                                                         _%id199430%_
                                                         'gx#syntax-quote::t))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'quote-syntax
                                                         _%body199424%_))
                                                      (_%BUG199401%_
                                                       _%e199408%_))))
                                            (if (eq? 'pattern _%$e199427%_)
                                                (_%local-pattern-e199402%_
                                                 _%body199424%_)
                                                (if (eq? 'ref _%$e199427%_)
                                                    (_%getvar199403%_
                                                     _%body199424%_
                                                     _%vars199409%_)
                                                    (if (eq? 'cons
                                                             _%$e199427%_)
                                                        (let ((__tmp199714
                                                               (_%recur199406%_
                                                                (car _%body199424%_)
                                                                _%vars199409%_))
                                                              (__tmp199713
                                                               (_%recur199406%_
                                                                (cdr _%body199424%_)
                                                                _%vars199409%_)))
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'cons
                                                           __tmp199714
                                                           __tmp199713))
                                                        (if (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$e199427%_)
                    (let ((__tmp199715
                           (_%recur199406%_ _%body199424%_ _%vars199409%_)))
                      (declare (not safe))
                      (gx#core-list 'list->vector __tmp199715))
                    (if (eq? 'box _%$e199427%_)
                        (let ((__tmp199716
                               (_%recur199406%_
                                _%body199424%_
                                _%vars199409%_)))
                          (declare (not safe))
                          (gx#core-list 'box __tmp199716))
                        (if (eq? 'splice _%$e199427%_)
                            (let* ((_%$%body199436199447%_ _%body199424%_)
                                   (_%$%E199438199451%_
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (error '"No clause matching"
                                               _%$%body199436199447%_
                                               '([depth hd iv . args])))
                                      '#!void))
                                   (_%$%K199439199489%_
                                    (lambda (_%args199454%_
                                             _%iv199455%_
                                             _%hd199456%_
                                             _%depth199457%_)
                                      (let* ((_%targets199463%_
                                              (map (lambda (_%$%g199458199460%_)
                                                     (_%getarg199404%_
                                                      _%$%g199458199460%_
                                                      _%vars199409%_))
                                                   _%args199454%_))
                                             (_%fold-in199465%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#gentemps _%args199454%_)))
                                             (_%fold-out199467%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#genident__0)))
                                             (_%lambda-args199469%_
                                              (let ((__tmp199717
                                                     (cons _%fold-out199467%_
                                                           '())))
                                                (declare (not safe))
                                                (##append
                                                 _%fold-in199465%_
                                                 __tmp199717)))
                                             (_%lambda-body199486%_
                                              (if (let ()
                                                    (declare (not safe))
                                                    (##fx> _%depth199457%_ '1))
                                                  (let ((_%r-args199477%_
                                                         (map (lambda (_%arg199471%_)
                                                                (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cdr _%arg199471%_)))
                      _%args199454%_))
                (_%r-vars199478%_
                 (let ((__tmp199718
                        (lambda (_%arg199473%_ _%var199474%_ _%r199475%_)
                          (cons (cons (cdr _%arg199473%_) _%var199474%_)
                                _%r199475%_))))
                   (declare (not safe))
                   (foldr__1
                    __tmp199718
                    _%vars199409%_
                    _%args199454%_
                    _%fold-in199465%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%recur199406%_
                                                     (cons 'splice
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (##fx- _%depth199457%_ '1))
                         (cons _%hd199456%_
                               (cons (cons 'var _%fold-out199467%_)
                                     _%r-args199477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r-vars199478%_))
                                                  (let* ((_%hd-vars199484%_
                                                          (let ((__tmp199719
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%arg199480%_ _%var199481%_ _%r199482%_)
                           (cons (cons (cdr _%arg199480%_) _%var199481%_)
                                 _%r199482%_))))
                    (declare (not safe))
                    (foldr__1
                     __tmp199719
                     _%vars199409%_
                     _%args199454%_
                     _%fold-in199465%_)))
                 (__tmp199720
                  (_%recur199406%_ _%hd199456%_ _%hd-vars199484%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (gx#core-list
                                                     'cons
                                                     __tmp199720
                                                     _%fold-out199467%_)))))
                                        (let ((__tmp199724
                                               (if (let ((__tmp199725
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##length
                                                             _%targets199463%_))))
                                                     (declare (not safe))
                                                     (##fx> __tmp199725 '1))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#core-cons*
                                                      'syntax-check-splice-targets
                                                      _%targets199463%_))
                                                   '#!void))
                                              (__tmp199721
                                               (let ((__tmp199723
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         'lambda%
                                                         _%lambda-args199469%_
                                                         _%lambda-body199486%_)))
                                                     (__tmp199722
                                                      (_%recur199406%_
                                                       _%iv199455%_
                                                       _%vars199409%_)))
                                                 (declare (not safe))
                                                 (gx#core-cons*
                                                  'foldr
                                                  __tmp199723
                                                  __tmp199722
                                                  _%targets199463%_))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'begin
                                           __tmp199724
                                           __tmp199721))))))
                              (if (pair? _%$%body199436199447%_)
                                  (let ((_%$%hd199440199492%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%body199436199447%_)))
                                        (_%$%tl199441199494%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%body199436199447%_))))
                                    (let ((_%depth199497%_
                                           _%$%hd199440199492%_))
                                      (if (pair? _%$%tl199441199494%_)
                                          (let ((_%$%hd199442199499%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl199441199494%_)))
                                                (_%$%tl199443199501%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl199441199494%_))))
                                            (let ((_%hd199504%_
                                                   _%$%hd199442199499%_))
                                              (if (pair? _%$%tl199443199501%_)
                                                  (let ((_%$%hd199444199506%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl199443199501%_)))
                                                        (_%$%tl199445199508%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl199443199501%_))))
                                                    (let* ((_%iv199511%_
                                                            _%$%hd199444199506%_)
                                                           (_%args199513%_
                                                            _%$%tl199445199508%_))
                                                      (_%$%K199439199489%_
                                                       _%args199513%_
                                                       _%iv199511%_
                                                       _%hd199504%_
                                                       _%depth199497%_)))
                                                  (_%$%E199438199451%_))))
                                          (_%$%E199438199451%_))))
                                  (_%$%E199438199451%_)))
                            (if (eq? 'var _%$e199427%_)
                                _%body199424%_
                                (_%BUG199401%_ _%e199408%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          (if (pair? _%$%e199410199417%_)
                              (let ((_%$%hd199414199518%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e199410199417%_)))
                                    (_%$%tl199415199520%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e199410199417%_))))
                                (let* ((_%tag199523%_ _%$%hd199414199518%_)
                                       (_%body199525%_ _%$%tl199415199520%_))
                                  (_%$%K199413199515%_
                                   _%body199525%_
                                   _%tag199523%_)))
                              (_%$%E199412199421%_)))))))
                 (_%parse199160%_
                  (lambda (_%e199201%_)
                    (letrec ((_%make-cons199203%_
                              (lambda (_%hd199391%_ _%tl199392%_)
                                (let ((_g199726_ _%hd199391%_)
                                      (_g199728_ _%tl199392%_))
                                  (begin
                                    (let ((_g199727_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199726_)
                                                 (##values-length _g199726_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199727_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199727_)))
                                    (let ((_g199729_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199728_)
                                                 (##values-length _g199728_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199729_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199729_)))
                                    (let ((_%hd-e199394%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199726_ 0)))
                                          (_%hd-vars199395%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199726_ 1))))
                                      (let ((_%tl-e199396%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199728_ 0)))
                                            (_%tl-vars199397%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199728_ 1))))
                                        (values (cons 'cons
                                                      (cons _%hd-e199394%_
                                                            _%tl-e199396%_))
                                                (append _%hd-vars199395%_
                                                        _%tl-vars199397%_))))))))
                             (_%make-splice199204%_
                              (lambda (_%where199327%_
                                       _%depth199328%_
                                       _%hd199329%_
                                       _%tl199330%_)
                                (let ((_g199730_ _%hd199329%_)
                                      (_g199732_ _%tl199330%_))
                                  (begin
                                    (let ((_g199731_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199730_)
                                                 (##values-length _g199730_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199731_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199731_)))
                                    (let ((_g199733_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199732_)
                                                 (##values-length _g199732_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199733_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199733_)))
                                    (let ((_%hd-e199332%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199730_ 0)))
                                          (_%hd-vars199333%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199730_ 1))))
                                      (let ((_%tl-e199334%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199732_ 0)))
                                            (_%tl-vars199335%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g199732_ 1))))
                                        (let _%lp199337%_ ((_%rest199339%_
                                                            _%hd-vars199333%_)
                                                           (_%targets199340%_
                                                            '())
                                                           (_%vars199341%_
                                                            _%tl-vars199335%_))
                                          (let* ((_%$%rest199342199352%_
                                                  _%rest199339%_)
                                                 (_%$%else199344199360%_
                                                  (lambda ()
                                                    (if (null? _%targets199340%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Misplaced ellipsis"
                                                           _%stx199157%_
                                                           _%where199327%_))
                                                        (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%depth199328%_
                                    (cons _%hd-e199332%_
                                          (cons _%tl-e199334%_
                                                _%targets199340%_))))
                        _%vars199341%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%K199346199372%_
                                                  (lambda (_%rest199363%_
                                                           _%hd-pat199364%_
                                                           _%hd-depth*199365%_)
                                                    (let ((_%hd-depth199367%_
                                                           (fx- _%hd-depth*199365%_
                                                                _%depth199328%_)))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##fxpositive?
                                                             _%hd-depth199367%_))
                                                          (_%lp199337%_
                                                           _%rest199363%_
                                                           (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%hd-pat199364%_)
                         _%targets199340%_)
                   (cons (cons _%hd-depth199367%_ _%hd-pat199364%_)
                         _%vars199341%_))
                  (if (let ()
                        (declare (not safe))
                        (##fxzero? _%hd-depth199367%_))
                      (_%lp199337%_
                       _%rest199363%_
                       (cons (cons 'pattern _%hd-pat199364%_)
                             _%targets199340%_)
                       _%vars199341%_)
                      (let ()
                        (declare (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Too many ellipses"
                         _%stx199157%_
                         _%where199327%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%rest199342199352%_)
                                                (let ((_%$%hd199347199375%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%rest199342199352%_)))
                                                      (_%$%tl199348199377%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%rest199342199352%_))))
                                                  (if (pair? _%$%hd199347199375%_)
                                                      (let ((_%$%hd199349199380%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%hd199347199375%_)))
                    (_%$%tl199350199382%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%hd199347199375%_))))
                (let* ((_%hd-depth*199385%_ _%$%hd199349199380%_)
                       (_%hd-pat199387%_ _%$%tl199350199382%_)
                       (_%rest199389%_ _%$%tl199348199377%_))
                  (_%$%K199346199372%_
                   _%rest199389%_
                   _%hd-pat199387%_
                   _%hd-depth*199385%_)))
              (_%$%else199344199360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%else199344199360%_))))))))))
                             (_%recur199205%_
                              (lambda (_%e199210%_ _%is-e?199211%_)
                                (if (_%is-e?199211%_ _%e199210%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Mislpaced ellipsis"
                                       _%stx199157%_))
                                    (if (gx#syntax-local-pattern? _%e199210%_)
                                        (let* ((_%pat199215%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-local-e__0
                                                   _%e199210%_)))
                                               (_%depth199217%_
                                                (##structure-ref
                                                 _%pat199215%_
                                                 '3
                                                 gx#syntax-pattern::t
                                                 '#f)))
                                          (if (fxpositive? _%depth199217%_)
                                              (values (cons 'ref _%pat199215%_)
                                                      (cons (cons _%depth199217%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%pat199215%_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (values (cons 'pattern
                                                            _%pat199215%_)
                                                      '())))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _%e199210%_))
                                            (values (cons 'term _%e199210%_)
                                                    '())
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair? _%e199210%_))
                                                (let* ((_%$%e199221199228%_
                                                        _%e199210%_)
                                                       (_%$%E199223199232%_
                                                        (lambda ()
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid syntax-case clause"
                                                             _%$%e199221199228%_))))
                                                       (_%$%E199222199314%_
                                                        (lambda ()
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%e199221199228%_))
                      (let ((_%$%e199224199236%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e199221199228%_))))
                        (let ((_%$%hd199225199239%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199224199236%_)))
                              (_%$%tl199226199241%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199224199236%_))))
                          (let* ((_%hd199244%_ _%$%hd199225199239%_)
                                 (_%rest199246%_ _%$%tl199226199241%_))
                            (if (_%is-e?199211%_ _%hd199244%_)
                                (let* ((_%$%e199247199254%_ _%rest199246%_)
                                       (_%$%E199249199258%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _%stx199157%_
                                             _%e199210%_))))
                                       (_%$%E199248199272%_
                                        (lambda ()
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%e199247199254%_))
                                              (let ((_%$%e199250199262%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%e199247199254%_))))
                                                (let ((_%$%hd199251199265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e199250199262%_)))
                                                      (_%$%tl199252199267%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e199250199262%_))))
                                                  (let ((_%rest199270%_
                                                         _%$%hd199251199265%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl199252199267%_))
                                                        (_%recur199205%_
                                                         _%rest199270%_
                                                         false)
                                                        (_%$%E199249199258%_)))))
                                              (_%$%E199249199258%_)))))
                                  (_%$%E199248199272%_))
                                (let _%lp199276%_ ((_%rest199278%_
                                                    _%rest199246%_)
                                                   (_%depth199279%_ '0))
                                  (let* ((_%$%e199280199287%_ _%rest199278%_)
                                         (_%$%E199282199291%_
                                          (lambda ()
                                            (if (fxpositive? _%depth199279%_)
                                                (_%make-splice199204%_
                                                 _%e199210%_
                                                 _%depth199279%_
                                                 (_%recur199205%_
                                                  _%hd199244%_
                                                  _%is-e?199211%_)
                                                 (_%recur199205%_
                                                  _%rest199278%_
                                                  _%is-e?199211%_))
                                                (_%make-cons199203%_
                                                 (_%recur199205%_
                                                  _%hd199244%_
                                                  _%is-e?199211%_)
                                                 (_%recur199205%_
                                                  _%rest199278%_
                                                  _%is-e?199211%_)))))
                                         (_%$%E199281199310%_
                                          (lambda ()
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%e199280199287%_))
                                                (let ((_%$%e199283199295%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%e199280199287%_))))
                                                  (let ((_%$%hd199284199298%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e199283199295%_)))
                                                        (_%$%tl199285199300%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e199283199295%_))))
                                                    (let* ((_%rest-hd199303%_
                                                            _%$%hd199284199298%_)
                                                           (_%rest-tl199305%_
                                                            _%$%tl199285199300%_))
                                                      (if (_%is-e?199211%_
                                                           _%rest-hd199303%_)
                                                          (_%lp199276%_
                                                           _%rest-tl199305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx+ _%depth199279%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)))
                  (if (fxpositive? _%depth199279%_)
                      (_%make-splice199204%_
                       _%e199210%_
                       _%depth199279%_
                       (_%recur199205%_ _%hd199244%_ _%is-e?199211%_)
                       (_%recur199205%_ _%rest199278%_ _%is-e?199211%_))
                      (_%make-cons199203%_
                       (_%recur199205%_ _%hd199244%_ _%is-e?199211%_)
                       (_%recur199205%_ _%rest199278%_ _%is-e?199211%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E199282199291%_)))))
                                    (_%$%E199281199310%_)))))))
                      (_%$%E199223199232%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E199222199314%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-vector?
                                                       _%e199210%_))
                                                    (let ((_g199734_
                                                           (_%recur199205%_
                                                            (vector->list
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-unwrap__0 _%e199210%_)))
                    _%is-e?199211%_)))
              (begin
                (let ((_g199735_
                       (let ()
                         (declare (not safe))
                         (if (##values? _g199734_)
                             (##values-length _g199734_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g199735_ 2)))
                      (error "Context expects 2 values" _g199735_)))
                (let ((_%e199319%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199734_ 0)))
                      (_%vars199320%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g199734_ 1))))
                  (values (cons 'vector _%e199319%_) _%vars199320%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-box?
                                                           _%e199210%_))
                                                        (let ((_g199736_
                                                               (_%recur199205%_
                                                                (unbox (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#stx-unwrap__0 _%e199210%_)))
                        _%is-e?199211%_)))
                  (begin
                    (let ((_g199737_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g199736_)
                                 (##values-length _g199736_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g199737_ 2)))
                          (error "Context expects 2 values" _g199737_)))
                    (let ((_%e199323%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199736_ 0)))
                          (_%vars199324%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g199736_ 1))))
                      (values (cons 'box _%e199323%_) _%vars199324%_))))
                (values (cons 'datum _%e199210%_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (let ((_g199738_
                             (_%recur199205%_ _%e199201%_ gx#ellipsis?)))
                        (begin
                          (let ((_g199739_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g199738_)
                                       (##values-length _g199738_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g199739_ 2)))
                                (error "Context expects 2 values" _g199739_)))
                          (let ((_%tree199207%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199738_ 0)))
                                (_%vars199208%_
                                 (let ()
                                   (declare (not safe))
                                   (##values-ref _g199738_ 1))))
                            (if (null? _%vars199208%_)
                                _%tree199207%_
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Missing ellipsis"
                                   _%stx199157%_
                                   _%vars199208%_))))))))))
          (let* ((_%$%e199161199171%_ _%stx199157%_)
                 (_%$%E199163199175%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; expand-syntax expects a single argument"
                       _%stx199157%_))))
                 (_%$%E199162199197%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e199161199171%_))
                        (let ((_%$%e199164199179%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e199161199171%_))))
                          (let ((_%$%hd199165199182%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199164199179%_)))
                                (_%$%tl199166199184%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199164199179%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl199166199184%_))
                                (let ((_%$%e199167199187%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl199166199184%_))))
                                  (let ((_%$%hd199168199190%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e199167199187%_)))
                                        (_%$%tl199169199192%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e199167199187%_))))
                                    (let ((_%form199195%_
                                           _%$%hd199168199190%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl199169199192%_))
                                          (let ((__tmp199741
                                                 (_%generate199159%_
                                                  (_%parse199160%_
                                                   _%form199195%_)))
                                                (__tmp199740
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-source
                                                    _%stx199157%_))))
                                            (declare (not safe))
                                            (gx#stx-wrap-source
                                             __tmp199741
                                             __tmp199740))
                                          (_%$%E199163199175%_)))))
                                (_%$%E199163199175%_))))
                        (_%$%E199163199175%_)))))
            (_%$%E199162199197%_)))))
    (define gx#macro-expand-syntax-case__%
      (lambda (_%stx198406%_
               _%identifier=?198407%_
               _%unwrap-e198408%_
               _%wrap-e198409%_)
        (letrec ((_%generate-bindings198411%_
                  (lambda (_%target199021%_
                           _%ids199022%_
                           _%clauses199023%_
                           _%clause-ids199024%_
                           _%E199025%_)
                    (letrec ((_%generate1199027%_
                              (lambda (_%clause199124%_
                                       _%clause-id199125%_
                                       _%E199126%_)
                                (cons (cons _%clause-id199125%_ '())
                                      (cons (let ((__tmp199743
                                                   (cons _%target199021%_ '()))
                                                  (__tmp199742
                                                   (_%generate-clause198413%_
                                                    _%target199021%_
                                                    _%ids199022%_
                                                    _%clause199124%_
                                                    _%E199126%_)))
                                              (declare (not safe))
                                              (gx#core-list
                                               'lambda%
                                               __tmp199743
                                               __tmp199742))
                                            '())))))
                      (let _%lp199029%_ ((_%rest199031%_ _%clauses199023%_)
                                         (_%rest-ids199032%_
                                          _%clause-ids199024%_)
                                         (_%bindings199033%_ '()))
                        (let* ((_%$%rest199034199042%_ _%rest199031%_)
                               (_%$%else199036199050%_
                                (lambda () _%bindings199033%_))
                               (_%$%K199038199112%_
                                (lambda (_%rest199053%_ _%clause199054%_)
                                  (let* ((_%$%rest-ids199055199062%_
                                          _%rest-ids199032%_)
                                         (_%$%E199057199066%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%rest-ids199055199062%_
                                                     '([clause-id
                                                        .
                                                        rest-ids])))
                                            '#!void))
                                         (_%$%K199058199100%_
                                          (lambda (_%rest-ids199069%_
                                                   _%clause-id199070%_)
                                            (let* ((_%$%rest-ids199071199079%_
                                                    _%rest-ids199069%_)
                                                   (_%$%else199073199087%_
                                                    (lambda ()
                                                      (cons (_%generate1199027%_
                                                             _%clause199054%_
                                                             _%clause-id199070%_
                                                             _%E199025%_)
                                                            _%bindings199033%_)))
                                                   (_%$%K199075199092%_
                                                    (lambda (_%next-clause-id199090%_)
                                                      (_%lp199029%_
                                                       _%rest199053%_
                                                       _%rest-ids199069%_
                                                       (cons (_%generate1199027%_
                                                              _%clause199054%_
                                                              _%clause-id199070%_
                                                              _%next-clause-id199090%_)
                                                             _%bindings199033%_)))))
                                              (if (pair? _%$%rest-ids199071199079%_)
                                                  (let* ((_%$%hd199076199095%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%rest-ids199071199079%_)))
                                                         (_%next-clause-id199098%_
                                                          _%$%hd199076199095%_))
                                                    (_%$%K199075199092%_
                                                     _%next-clause-id199098%_))
                                                  (_%$%else199073199087%_))))))
                                    (if (pair? _%$%rest-ids199055199062%_)
                                        (let ((_%$%hd199059199103%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%rest-ids199055199062%_)))
                                              (_%$%tl199060199105%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%rest-ids199055199062%_))))
                                          (let* ((_%clause-id199108%_
                                                  _%$%hd199059199103%_)
                                                 (_%rest-ids199110%_
                                                  _%$%tl199060199105%_))
                                            (_%$%K199058199100%_
                                             _%rest-ids199110%_
                                             _%clause-id199108%_)))
                                        (_%$%E199057199066%_))))))
                          (if (pair? _%$%rest199034199042%_)
                              (let ((_%$%hd199039199115%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest199034199042%_)))
                                    (_%$%tl199040199117%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest199034199042%_))))
                                (let* ((_%clause199120%_ _%$%hd199039199115%_)
                                       (_%rest199122%_ _%$%tl199040199117%_))
                                  (_%$%K199038199112%_
                                   _%rest199122%_
                                   _%clause199120%_)))
                              (_%$%else199036199050%_)))))))
                 (_%generate-body198412%_
                  (lambda (_%bindings198981%_ _%body198982%_)
                    (let _%recur198984%_ ((_%rest198986%_ _%bindings198981%_))
                      (let* ((_%$%rest198987198995%_ _%rest198986%_)
                             (_%$%else198989199003%_
                              (lambda () _%body198982%_))
                             (_%$%K198991199009%_
                              (lambda (_%rest199006%_ _%hd199007%_)
                                (let ((__tmp199745 (cons _%hd199007%_ '()))
                                      (__tmp199744
                                       (_%recur198984%_ _%rest199006%_)))
                                  (declare (not safe))
                                  (gx#core-list
                                   'let-values
                                   __tmp199745
                                   __tmp199744)))))
                        (if (pair? _%$%rest198987198995%_)
                            (let ((_%$%hd198992199012%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest198987198995%_)))
                                  (_%$%tl198993199014%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest198987198995%_))))
                              (let* ((_%hd199017%_ _%$%hd198992199012%_)
                                     (_%rest199019%_ _%$%tl198993199014%_))
                                (_%$%K198991199009%_
                                 _%rest199019%_
                                 _%hd199017%_)))
                            (_%$%else198989199003%_))))))
                 (_%generate-clause198413%_
                  (lambda (_%target198844%_
                           _%ids198845%_
                           _%clause198846%_
                           _%E198847%_)
                    (letrec ((_%generate1198849%_
                              (lambda (_%hd198936%_
                                       _%fender198937%_
                                       _%body198938%_)
                                (let ((_g199746_
                                       (_%parse-clause198415%_
                                        _%hd198936%_
                                        _%ids198845%_)))
                                  (begin
                                    (let ((_g199747_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g199746_)
                                                 (##values-length _g199746_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g199747_ 2)))
                                          (error "Context expects 2 values"
                                                 _g199747_)))
                                    (let ((_%e198940%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199746_ 0)))
                                          (_%mvars198941%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g199746_ 1))))
                                      (let* ((_%pvars198943%_
                                              (map gx#syntax-local-rewrap
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#gentemps
                                                      _%mvars198941%_))))
                                             (_%E198945%_
                                              (cons _%E198847%_
                                                    (cons _%target198844%_
                                                          '())))
                                             (_%K198978%_
                                              (let ((__tmp199748
                                                     (let ((__tmp199750
                                                            (map (lambda (_%mvar198947%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%pvar198948%_)
                           (let* ((_%$%mvar198949198956%_ _%mvar198947%_)
                                  (_%$%E198951198960%_
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (error '"No clause matching"
                                              _%$%mvar198949198956%_
                                              '([id . depth])))
                                     '#!void))
                                  (_%$%K198952198966%_
                                   (lambda (_%depth198963%_ _%id198964%_)
                                     (cons _%id198964%_
                                           (cons (let ((__tmp199752
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%id198964%_)))
                                                       (__tmp199751
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#core-list
                                                           'quote
                                                           _%pvar198948%_))))
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'make-syntax-pattern
                                                    __tmp199752
                                                    __tmp199751
                                                    _%depth198963%_))
                                                 '())))))
                             (if (pair? _%$%mvar198949198956%_)
                                 (let ((_%$%hd198953198969%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%mvar198949198956%_)))
                                       (_%$%tl198954198971%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%mvar198949198956%_))))
                                   (let* ((_%id198974%_ _%$%hd198953198969%_)
                                          (_%depth198976%_
                                           _%$%tl198954198971%_))
                                     (_%$%K198952198966%_
                                      _%depth198976%_
                                      _%id198974%_)))
                                 (_%$%E198951198960%_))))
                         _%mvars198941%_
                         _%pvars198943%_))
                   (__tmp199749
                    (if (eq? _%fender198937%_ '#t)
                        _%body198938%_
                        (let ()
                          (declare (not safe))
                          (gx#core-list
                           'if
                           _%fender198937%_
                           _%body198938%_
                           _%E198945%_)))))
               (declare (not safe))
               (gx#core-list 'let-syntax __tmp199750 __tmp199749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (gx#core-list
                                                 'lambda%
                                                 _%pvars198943%_
                                                 __tmp199748))))
                                        (_%generate-match198414%_
                                         _%hd198936%_
                                         _%target198844%_
                                         _%e198940%_
                                         _%mvars198941%_
                                         _%K198978%_
                                         _%E198945%_))))))))
                      (let* ((_%$%e198850198870%_ _%clause198846%_)
                             (_%$%E198859198874%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid syntax-case clause"
                                   _%$%e198850198870%_))))
                             (_%$%E198852198908%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198850198870%_))
                                    (let ((_%$%e198860198878%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198850198870%_))))
                                      (let ((_%$%hd198861198881%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198860198878%_)))
                                            (_%$%tl198862198883%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198860198878%_))))
                                        (let ((_%hd198886%_
                                               _%$%hd198861198881%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198862198883%_))
                                              (let ((_%$%e198863198888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198862198883%_))))
                                                (let ((_%$%hd198864198891%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198863198888%_)))
                                                      (_%$%tl198865198893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198863198888%_))))
                                                  (let ((_%fender198896%_
                                                         _%$%hd198864198891%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl198865198893%_))
                                                        (let ((_%$%e198866198898%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl198865198893%_))))
                  (let ((_%$%hd198867198901%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e198866198898%_)))
                        (_%$%tl198868198903%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e198866198898%_))))
                    (let ((_%body198906%_ _%$%hd198867198901%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl198868198903%_))
                          (_%generate1198849%_
                           _%hd198886%_
                           _%fender198896%_
                           _%body198906%_)
                          (_%$%E198859198874%_)))))
                (_%$%E198859198874%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E198859198874%_)))))
                                    (_%$%E198859198874%_))))
                             (_%$%E198851198932%_
                              (lambda ()
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%e198850198870%_))
                                    (let ((_%$%e198853198912%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%e198850198870%_))))
                                      (let ((_%$%hd198854198915%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198853198912%_)))
                                            (_%$%tl198855198917%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198853198912%_))))
                                        (let ((_%hd198920%_
                                               _%$%hd198854198915%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198855198917%_))
                                              (let ((_%$%e198856198922%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198855198917%_))))
                                                (let ((_%$%hd198857198925%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198856198922%_)))
                                                      (_%$%tl198858198927%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198856198922%_))))
                                                  (let ((_%body198930%_
                                                         _%$%hd198857198925%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl198858198927%_))
                                                        (_%generate1198849%_
                                                         _%hd198920%_
                                                         '#t
                                                         _%body198930%_)
                                                        (_%$%E198852198908%_)))))
                                              (_%$%E198852198908%_)))))
                                    (_%$%E198852198908%_)))))
                        (_%$%E198851198932%_)))))
                 (_%generate-match198414%_
                  (lambda (_%where198593%_
                           _%target198594%_
                           _%hd198595%_
                           _%mvars198596%_
                           _%K198597%_
                           _%E198598%_)
                    (letrec ((_%BUG198600%_
                              (lambda (_%q198842%_)
                                (let ()
                                  (declare (not safe))
                                  (error '"BUG: syntax-case; generate"
                                         _%stx198406%_
                                         _%hd198595%_
                                         _%q198842%_))))
                             (_%recur198601%_
                              (lambda (_%e198692%_
                                       _%vars198693%_
                                       _%target198694%_
                                       _%E198695%_
                                       _%k198696%_)
                                (let* ((_%$%e198697198704%_ _%e198692%_)
                                       (_%$%E198699198708%_
                                        (lambda ()
                                          (let ()
                                            (declare (not safe))
                                            (error '"No clause matching"
                                                   _%$%e198697198704%_
                                                   '([tag . body])))
                                          '#!void))
                                       (_%$%K198700198830%_
                                        (lambda (_%body198711%_ _%tag198712%_)
                                          (let ((_%$e198714%_ _%tag198712%_))
                                            (if (eq? 'any _%$e198714%_)
                                                (_%k198696%_ _%vars198693%_)
                                                (if (eq? 'id _%$e198714%_)
                                                    (let ((__tmp199757
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#core-list
                                                              'identifier?
                                                              _%target198694%_)))
                                                          (__tmp199753
                                                           (let ((__tmp199755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp199756
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%wrap-e198409%_
                                    _%body198711%_))))
                            (declare (not safe))
                            (gx#core-list
                             _%identifier=?198407%_
                             __tmp199756
                             _%target198694%_)))
                         (__tmp199754 (_%k198696%_ _%vars198693%_)))
                     (declare (not safe))
                     (gx#core-list 'if __tmp199755 __tmp199754 _%E198695%_))))
              (declare (not safe))
              (gx#core-list 'if __tmp199757 __tmp199753 _%E198695%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (eq? 'var _%$e198714%_)
                                                        (_%k198696%_
                                                         (cons (cons _%body198711%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%target198694%_)
                       _%vars198693%_))
                (if (eq? 'cons _%$e198714%_)
                    (let ((_%$e198717%_
                           (let () (declare (not safe)) (gx#genident__1 'e)))
                          (_%$hd198718%_
                           (let () (declare (not safe)) (gx#genident__1 'hd)))
                          (_%$tl198719%_
                           (let () (declare (not safe)) (gx#genident__1 'tl))))
                      (let ((__tmp199763
                             (let ()
                               (declare (not safe))
                               (gx#core-list 'stx-pair? _%target198694%_)))
                            (__tmp199758
                             (let ((__tmp199762
                                    (cons (cons (cons _%$e198717%_ '())
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (gx#core-list
                                                         _%unwrap-e198408%_
                                                         _%target198694%_))
                                                      '()))
                                          '()))
                                   (__tmp199759
                                    (let ((__tmp199761
                                           (cons (cons (cons _%$hd198718%_ '())
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#core-list '##car _%$e198717%_))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons (cons _%$tl198719%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (let ()
                             (declare (not safe))
                             (gx#core-list '##cdr _%$e198717%_))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (__tmp199760
                                           (let* ((_%$%body198720198727%_
                                                   _%body198711%_)
                                                  (_%$%E198722198731%_
                                                   (lambda ()
                                                     (let ()
                                                       (declare (not safe))
                                                       (error '"No clause matching"
                                                              _%$%body198720198727%_
                                                              '([hd . tl])))
                                                     '#!void))
                                                  (_%$%K198723198739%_
                                                   (lambda (_%tl198734%_
                                                            _%hd198735%_)
                                                     (_%recur198601%_
                                                      _%hd198735%_
                                                      _%vars198693%_
                                                      _%$hd198718%_
                                                      _%E198695%_
                                                      (lambda (_%vars198737%_)
                                                        (_%recur198601%_
                                                         _%tl198734%_
                                                         _%vars198737%_
                                                         _%$tl198719%_
                                                         _%E198695%_
                                                         _%k198696%_))))))
                                             (if (pair? _%$%body198720198727%_)
                                                 (let ((_%$%hd198724198742%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%body198720198727%_)))
                                                       (_%$%tl198725198744%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%body198720198727%_))))
                                                   (let* ((_%hd198747%_
                                                           _%$%hd198724198742%_)
                                                          (_%tl198749%_
                                                           _%$%tl198725198744%_))
                                                     (_%$%K198723198739%_
                                                      _%tl198749%_
                                                      _%hd198747%_)))
                                                 (_%$%E198722198731%_)))))
                                      (declare (not safe))
                                      (gx#core-list
                                       'let-values
                                       __tmp199761
                                       __tmp199760))))
                               (declare (not safe))
                               (gx#core-list
                                'let-values
                                __tmp199762
                                __tmp199759))))
                        (declare (not safe))
                        (gx#core-list
                         'if
                         __tmp199763
                         __tmp199758
                         _%E198695%_)))
                    (if (eq? 'splice _%$e198714%_)
                        (let* ((_%$%body198750198757%_ _%body198711%_)
                               (_%$%E198752198761%_
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (error '"No clause matching"
                                           _%$%body198750198757%_
                                           '([hd . tl])))
                                  '#!void))
                               (_%$%K198753198812%_
                                (lambda (_%tl198764%_ _%hd198765%_)
                                  (let* ((_%rlen198767%_
                                          (_%splice-rlen198602%_ _%tl198764%_))
                                         (_%$target198769%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'target)))
                                         (_%$hd198771%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'hd)))
                                         (_%$tl198773%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'tl)))
                                         (_%$lp198775%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'loop)))
                                         (_%$lp-e198777%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'e)))
                                         (_%$lp-hd198779%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-hd)))
                                         (_%$lp-tl198781%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#genident__1 'lp-tl)))
                                         (_%svars198783%_
                                          (_%splice-vars198603%_ _%hd198765%_))
                                         (_%lvars198785%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198783%_)))
                                         (_%tlvars198787%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#gentemps _%svars198783%_)))
                                         (_%linit198791%_
                                          (map (lambda (_%var198789%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list 'quote '())))
                                               _%lvars198785%_)))
                                    (letrec ((_%make-loop198794%_
                                              (lambda (_%vars198798%_)
                                                (let ((__tmp199765
                                                       (cons (cons (cons _%$lp198775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (let ((__tmp199778
                                        (cons _%$hd198771%_ _%lvars198785%_))
                                       (__tmp199766
                                        (let ((__tmp199777
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair?
                                                  _%$hd198771%_)))
                                              (__tmp199771
                                               (let ((__tmp199776
                                                      (cons (cons (cons _%$lp-e198777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#core-list
                                   _%unwrap-e198408%_
                                   _%$hd198771%_))
                                '()))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199772
                                                      (let ((__tmp199775
                                                             (cons (cons (cons _%$lp-hd198779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '())
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#core-list '##car _%$lp-e198777%_))
                                       '()))
                           (cons (cons (cons _%$lp-tl198781%_ '())
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                '##cdr
                                                _%$lp-e198777%_))
                                             '()))
                                 '())))
                    (__tmp199773
                     (_%recur198601%_
                      _%hd198765%_
                      '()
                      _%$lp-hd198779%_
                      _%E198695%_
                      (lambda (_%hdvars198800%_)
                        (cons _%$lp198775%_
                              (cons _%$lp-tl198781%_
                                    (map (lambda (_%svar198802%_
                                                  _%lvar198803%_)
                                           (let ((__tmp199774
                                                  (let ()
                                                    (declare (not safe))
                                                    (agetq__%
                                                     _%svar198802%_
                                                     _%hdvars198800%_
                                                     _%BUG198600%_))))
                                             (declare (not safe))
                                             (gx#core-list
                                              'cons
                                              __tmp199774
                                              _%lvar198803%_)))
                                         _%svars198783%_
                                         _%lvars198785%_)))))))
                (declare (not safe))
                (gx#core-list 'let-values __tmp199775 __tmp199773))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199776
                                                  __tmp199772)))
                                              (__tmp199767
                                               (let ((__tmp199770
                                                      (map (lambda (_%lvar198805%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%tlvar198806%_)
                     (cons (cons _%tlvar198806%_ '())
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#core-list 'reverse _%lvar198805%_))
                                 '())))
                   _%lvars198785%_
                   _%tlvars198787%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp199768
                                                      (_%k198696%_
                                                       (let ((__tmp199769
                                                              (lambda (_%svar198808%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%tlvar198809%_
                               _%r198810%_)
                        (cons (cons _%svar198808%_ _%tlvar198809%_)
                              _%r198810%_))))
                 (declare (not safe))
                 (foldl__1
                  __tmp199769
                  _%vars198798%_
                  _%svars198783%_
                  _%tlvars198787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'let-values
                                                  __tmp199770
                                                  __tmp199768))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199777
                                           __tmp199771
                                           __tmp199767))))
                                   (declare (not safe))
                                   (gx#core-list
                                    'lambda%
                                    __tmp199778
                                    __tmp199766))
                                 '()))
                     '()))
              (__tmp199764
               (cons _%$lp198775%_ (cons _%$target198769%_ _%linit198791%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gx#core-list
                                                   'letrec-values
                                                   __tmp199765
                                                   __tmp199764)))))
                                      (let ((_%body198796%_
                                             (let ((__tmp199780
                                                    (cons (cons (cons _%$target198769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tl198773%_ '()))
                        (cons (let ()
                                (declare (not safe))
                                (gx#core-list
                                 'syntax-split-splice
                                 _%target198694%_
                                 _%rlen198767%_))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199779
                                                    (_%recur198601%_
                                                     _%tl198764%_
                                                     _%vars198693%_
                                                     _%$tl198773%_
                                                     _%E198695%_
                                                     _%make-loop198794%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199780
                                                __tmp199779))))
                                        (let ((__tmp199784
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#core-list
                                                  'stx-pair/null?
                                                  _%target198694%_)))
                                              (__tmp199781
                                               (if (zero? _%rlen198767%_)
                                                   _%body198796%_
                                                   (let ((__tmp199782
                                                          (let ((__tmp199783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#core-list 'stx-length _%target198694%_))))
                    (declare (not safe))
                    (gx#core-list 'fx>= __tmp199783 _%rlen198767%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gx#core-list
                                                      'if
                                                      __tmp199782
                                                      _%body198796%_
                                                      _%E198695%_)))))
                                          (declare (not safe))
                                          (gx#core-list
                                           'if
                                           __tmp199784
                                           __tmp199781
                                           _%E198695%_))))))))
                          (if (pair? _%$%body198750198757%_)
                              (let ((_%$%hd198754198815%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%body198750198757%_)))
                                    (_%$%tl198755198817%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%body198750198757%_))))
                                (let* ((_%hd198820%_ _%$%hd198754198815%_)
                                       (_%tl198822%_ _%$%tl198755198817%_))
                                  (_%$%K198753198812%_
                                   _%tl198822%_
                                   _%hd198820%_)))
                              (_%$%E198752198761%_)))
                        (if (eq? 'null _%$e198714%_)
                            (let ((__tmp199786
                                   (let ()
                                     (declare (not safe))
                                     (gx#core-list
                                      'stx-null?
                                      _%target198694%_)))
                                  (__tmp199785 (_%k198696%_ _%vars198693%_)))
                              (declare (not safe))
                              (gx#core-list
                               'if
                               __tmp199786
                               __tmp199785
                               _%E198695%_))
                            (if (eq? 'vector _%$e198714%_)
                                (let ((_%$e198824%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#genident__1 'e))))
                                  (let ((__tmp199791
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-list
                                            'stx-vector?
                                            _%target198694%_)))
                                        (__tmp199787
                                         (let ((__tmp199789
                                                (cons (cons (cons _%$e198824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (let ((__tmp199790
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-list
                                    _%unwrap-e198408%_
                                    _%target198694%_))))
                            (declare (not safe))
                            (gx#core-list 'vector->list __tmp199790))
                          '()))
              '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (__tmp199788
                                                (_%recur198601%_
                                                 _%body198711%_
                                                 _%vars198693%_
                                                 _%$e198824%_
                                                 _%E198695%_
                                                 _%k198696%_)))
                                           (declare (not safe))
                                           (gx#core-list
                                            'let-values
                                            __tmp199789
                                            __tmp199788))))
                                    (declare (not safe))
                                    (gx#core-list
                                     'if
                                     __tmp199791
                                     __tmp199787
                                     _%E198695%_)))
                                (if (eq? 'box _%$e198714%_)
                                    (let ((_%$e198826%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#genident__1 'e))))
                                      (let ((__tmp199796
                                             (let ()
                                               (declare (not safe))
                                               (gx#core-list
                                                'stx-box?
                                                _%target198694%_)))
                                            (__tmp199792
                                             (let ((__tmp199794
                                                    (cons (cons (cons _%$e198826%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons (let ((__tmp199795
                                     (let ()
                                       (declare (not safe))
                                       (gx#core-list
                                        _%unwrap-e198408%_
                                        _%target198694%_))))
                                (declare (not safe))
                                (gx#core-list 'unbox __tmp199795))
                              '()))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp199793
                                                    (_%recur198601%_
                                                     _%body198711%_
                                                     _%vars198693%_
                                                     _%$e198826%_
                                                     _%E198695%_
                                                     _%k198696%_)))
                                               (declare (not safe))
                                               (gx#core-list
                                                'let-values
                                                __tmp199794
                                                __tmp199793))))
                                        (declare (not safe))
                                        (gx#core-list
                                         'if
                                         __tmp199796
                                         __tmp199792
                                         _%E198695%_)))
                                    (if (eq? 'datum _%$e198714%_)
                                        (let ((_%$e198828%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#genident__1 'e))))
                                          (let ((__tmp199802
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _%target198694%_)))
                                                (__tmp199797
                                                 (let ((__tmp199801
                                                        (cons (cons (cons _%$e198828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '())
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#core-list 'stx-e _%target198694%_))
                                  '()))
                      '()))
               (__tmp199798
                (let ((__tmp199800
                       (let ()
                         (declare (not safe))
                         (gx#core-list 'equal? _%$e198828%_ _%body198711%_)))
                      (__tmp199799 (_%k198696%_ _%vars198693%_)))
                  (declare (not safe))
                  (gx#core-list 'if __tmp199800 __tmp199799 _%E198695%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gx#core-list
                                                    'let-values
                                                    __tmp199801
                                                    __tmp199798))))
                                            (declare (not safe))
                                            (gx#core-list
                                             'if
                                             __tmp199802
                                             __tmp199797
                                             _%E198695%_)))
                                        (_%BUG198600%_
                                         _%e198692%_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (pair? _%$%e198697198704%_)
                                      (let ((_%$%hd198701198833%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e198697198704%_)))
                                            (_%$%tl198702198835%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e198697198704%_))))
                                        (let* ((_%tag198838%_
                                                _%$%hd198701198833%_)
                                               (_%body198840%_
                                                _%$%tl198702198835%_))
                                          (_%$%K198700198830%_
                                           _%body198840%_
                                           _%tag198838%_)))
                                      (_%$%E198699198708%_)))))
                             (_%splice-rlen198602%_
                              (lambda (_%e198654%_)
                                (let _%lp198656%_ ((_%e198658%_ _%e198654%_)
                                                   (_%n198659%_ '0))
                                  (let* ((_%$%e198660198667%_ _%e198658%_)
                                         (_%$%E198662198671%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e198660198667%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K198663198680%_
                                          (lambda (_%body198674%_
                                                   _%tag198675%_)
                                            (let ((_%$e198677%_ _%tag198675%_))
                                              (if (eq? 'splice _%$e198677%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Ambiguous pattern"
                                                     _%stx198406%_
                                                     _%where198593%_))
                                                  (if (eq? 'cons _%$e198677%_)
                                                      (_%lp198656%_
                                                       (cdr _%body198674%_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (##fx+ _%n198659%_
                                                                '1)))
                                                      _%n198659%_))))))
                                    (if (pair? _%$%e198660198667%_)
                                        (let ((_%$%hd198664198683%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198660198667%_)))
                                              (_%$%tl198665198685%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198660198667%_))))
                                          (let* ((_%tag198688%_
                                                  _%$%hd198664198683%_)
                                                 (_%body198690%_
                                                  _%$%tl198665198685%_))
                                            (_%$%K198663198680%_
                                             _%body198690%_
                                             _%tag198688%_)))
                                        (_%$%E198662198671%_))))))
                             (_%splice-vars198603%_
                              (lambda (_%e198610%_)
                                (let _%recur198612%_ ((_%e198614%_ _%e198610%_)
                                                      (_%vars198615%_ '()))
                                  (let* ((_%$%e198616198623%_ _%e198614%_)
                                         (_%$%E198618198627%_
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (error '"No clause matching"
                                                     _%$%e198616198623%_
                                                     '([tag . body])))
                                            '#!void))
                                         (_%$%K198619198642%_
                                          (lambda (_%body198630%_
                                                   _%tag198631%_)
                                            (let ((_%$e198633%_ _%tag198631%_))
                                              (if (eq? 'var _%$e198633%_)
                                                  (cons _%body198630%_
                                                        _%vars198615%_)
                                                  (if (or (eq? 'cons
                                                               _%$e198633%_)
                                                          (eq? 'splice
                                                               _%$e198633%_))
                                                      (_%recur198612%_
                                                       (cdr _%body198630%_)
                                                       (_%recur198612%_
                                                        (car _%body198630%_)
                                                        _%vars198615%_))
                                                      (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e198633%_)
                      (eq? 'box _%$e198633%_))
                  (_%recur198612%_ _%body198630%_ _%vars198615%_)
                  _%vars198615%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (if (pair? _%$%e198616198623%_)
                                        (let ((_%$%hd198620198645%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198616198623%_)))
                                              (_%$%tl198621198647%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198616198623%_))))
                                          (let* ((_%tag198650%_
                                                  _%$%hd198620198645%_)
                                                 (_%body198652%_
                                                  _%$%tl198621198647%_))
                                            (_%$%K198619198642%_
                                             _%body198652%_
                                             _%tag198650%_)))
                                        (_%$%E198618198627%_))))))
                             (_%make-body198604%_
                              (lambda (_%vars198606%_)
                                (cons _%K198597%_
                                      (map (lambda (_%mvar198608%_)
                                             (let ((__tmp199803
                                                    (car _%mvar198608%_)))
                                               (declare (not safe))
                                               (agetq__%
                                                __tmp199803
                                                _%vars198606%_
                                                _%BUG198600%_)))
                                           _%mvars198596%_)))))
                      (_%recur198601%_
                       _%hd198595%_
                       '()
                       _%target198594%_
                       _%E198598%_
                       _%make-body198604%_))))
                 (_%parse-clause198415%_
                  (lambda (_%hd198487%_ _%ids198488%_)
                    (let _%recur198490%_ ((_%e198492%_ _%hd198487%_)
                                          (_%vars198493%_ '())
                                          (_%depth198494%_ '0))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%e198492%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#underscore? _%e198492%_))
                              (values '(any) _%vars198493%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#ellipsis? _%e198492%_))
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Misplaced ellipsis"
                                     _%stx198406%_
                                     _%hd198487%_))
                                  (if (let ((__tmp199804
                                             (lambda (_%id198499%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#bound-identifier=?
                                                  _%e198492%_
                                                  _%id198499%_)))))
                                        (declare (not safe))
                                        (__find __tmp199804 _%ids198488%_))
                                      (values (cons 'id _%e198492%_)
                                              _%vars198493%_)
                                      (if (let ((__tmp199805
                                                 (lambda (_%var198502%_)
                                                   (let ((__tmp199806
                                                          (car _%var198502%_)))
                                                     (declare (not safe))
                                                     (gx#bound-identifier=?
                                                      _%e198492%_
                                                      __tmp199806)))))
                                            (declare (not safe))
                                            (__find __tmp199805
                                                    _%vars198493%_))
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate pattern variable"
                                             _%stx198406%_
                                             _%e198492%_))
                                          (values (cons 'var _%e198492%_)
                                                  (cons (cons _%e198492%_
                                                              _%depth198494%_)
                                                        _%vars198493%_))))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%e198492%_))
                              (let* ((_%$%e198506198513%_ _%e198492%_)
                                     (_%$%E198508198517%_
                                      (lambda ()
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid syntax-case clause"
                                           _%$%e198506198513%_))))
                                     (_%$%E198507198578%_
                                      (lambda ()
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%e198506198513%_))
                                            (let ((_%$%e198509198521%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%e198506198513%_))))
                                              (let ((_%$%hd198510198524%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e198509198521%_)))
                                                    (_%$%tl198511198526%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e198509198521%_))))
                                                (let* ((_%hd198529%_
                                                        _%$%hd198510198524%_)
                                                       (_%rest198531%_
                                                        _%$%tl198511198526%_)
                                                       (_%make-pair198546%_
                                                        (lambda (_%tag198533%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%hd198534%_
                         _%tl198535%_)
                  (let* ((_%hd-depth198537%_
                          (if (eq? _%tag198533%_ 'splice)
                              (let ()
                                (declare (not safe))
                                (##fx+ _%depth198494%_ '1))
                              _%depth198494%_))
                         (_g199807_
                          (_%recur198490%_
                           _%hd198534%_
                           _%vars198493%_
                           _%hd-depth198537%_)))
                    (begin
                      (let ((_g199808_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g199807_)
                                   (##values-length _g199807_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g199808_ 2)))
                            (error "Context expects 2 values" _g199808_)))
                      (let ((_%hd198539%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199807_ 0)))
                            (_%vars198540%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g199807_ 1))))
                        (let ((_g199809_
                               (_%recur198490%_
                                _%tl198535%_
                                _%vars198540%_
                                _%depth198494%_)))
                          (begin
                            (let ((_g199810_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g199809_)
                                         (##values-length _g199809_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g199810_ 2)))
                                  (error "Context expects 2 values"
                                         _g199810_)))
                            (let ((_%tl198542%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199809_ 0)))
                                  (_%vars198543%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g199809_ 1))))
                              (values (cons _%tag198533%_
                                            (cons _%hd198539%_ _%tl198542%_))
                                      _%vars198543%_)))))))))
               (_%$%e198547198554%_ _%rest198531%_)
               (_%$%E198549198558%_
                (lambda ()
                  (_%make-pair198546%_ 'cons _%hd198529%_ _%rest198531%_)))
               (_%$%E198548198574%_
                (lambda ()
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%e198547198554%_))
                      (let ((_%$%e198550198562%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%e198547198554%_))))
                        (let ((_%$%hd198551198565%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198550198562%_)))
                              (_%$%tl198552198567%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198550198562%_))))
                          (let* ((_%rest-hd198570%_ _%$%hd198551198565%_)
                                 (_%rest-tl198572%_ _%$%tl198552198567%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#ellipsis? _%rest-hd198570%_))
                                (_%make-pair198546%_
                                 'splice
                                 _%hd198529%_
                                 _%rest-tl198572%_)
                                (_%make-pair198546%_
                                 'cons
                                 _%hd198529%_
                                 _%rest198531%_)))))
                      (_%$%E198549198558%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E198548198574%_))))
                                            (_%$%E198508198517%_)))))
                                (_%$%E198507198578%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%e198492%_))
                                  (values '(null) _%vars198493%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-vector? _%e198492%_))
                                      (let ((_g199811_
                                             (_%recur198490%_
                                              (vector->list
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e _%e198492%_)))
                                              _%vars198493%_
                                              _%depth198494%_)))
                                        (begin
                                          (let ((_g199812_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g199811_)
                                                       (##values-length
                                                        _g199811_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g199812_ 2)))
                                                (error "Context expects 2 values"
                                                       _g199812_)))
                                          (let ((_%e198584%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g199811_ 0)))
                                                (_%vars198585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g199811_
                                                    1))))
                                            (values (cons 'vector _%e198584%_)
                                                    _%vars198585%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-box? _%e198492%_))
                                          (let ((_g199813_
                                                 (_%recur198490%_
                                                  (unbox (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%e198492%_)))
                                                  _%vars198493%_
                                                  _%depth198494%_)))
                                            (begin
                                              (let ((_g199814_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values?
                                                            _g199813_)
                                                           (##values-length
                                                            _g199813_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g199814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          2)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (error "Context expects 2 values"
                                                           _g199814_)))
                                              (let ((_%e198588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199813_
                                                        0)))
                                                    (_%vars198589%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g199813_
                                                        1))))
                                                (values (cons 'box _%e198588%_)
                                                        _%vars198589%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum? _%e198492%_))
                                              (values (cons 'datum
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%e198492%_)))
                                                      _%vars198493%_)
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad pattern"
                                                 _%stx198406%_
                                                 _%e198492%_))))))))))))
          (let* ((_%$%e198416198429%_ _%stx198406%_)
                 (_%$%E198418198433%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e198416198429%_))))
                 (_%$%E198417198483%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%e198416198429%_))
                        (let ((_%$%e198419198437%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%e198416198429%_))))
                          (let ((_%$%hd198420198440%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e198419198437%_)))
                                (_%$%tl198421198442%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e198419198437%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl198421198442%_))
                                (let ((_%$%e198422198445%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl198421198442%_))))
                                  (let ((_%$%hd198423198448%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e198422198445%_)))
                                        (_%$%tl198424198450%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e198422198445%_))))
                                    (let ((_%expr198453%_
                                           _%$%hd198423198448%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl198424198450%_))
                                          (let ((_%$%e198425198455%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl198424198450%_))))
                                            (let ((_%$%hd198426198458%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e198425198455%_)))
                                                  (_%$%tl198427198460%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e198425198455%_))))
                                              (let* ((_%ids198463%_
                                                      _%$%hd198426198458%_)
                                                     (_%clauses198465%_
                                                      _%$%tl198427198460%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier-list?
                                                       _%ids198463%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-list?
                                                           _%clauses198465%_))
                                                        (let* ((_%ids198470%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax->list _%ids198463%_)))
                       (_%clauses198472%_
                        (let ()
                          (declare (not safe))
                          (gx#syntax->list _%clauses198465%_)))
                       (_%clause-ids198474%_
                        (let ()
                          (declare (not safe))
                          (gx#gentemps _%clauses198472%_)))
                       (_%E198476%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%target198478%_
                        (let () (declare (not safe)) (gx#genident__0)))
                       (_%first198480%_
                        (if (null? _%clauses198472%_)
                            _%E198476%_
                            (car _%clause-ids198474%_))))
                  (let ((__tmp199816
                         (let ((__tmp199817
                                (let ((__tmp199819
                                       (let ((__tmp199821
                                              (cons (cons (cons _%E198476%_
                                                                '())
                                                          (cons (let ((__tmp199823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (cons _%target198478%_ '()))
                              (__tmp199822
                               (let ()
                                 (declare (not safe))
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%target198478%_))))
                          (declare (not safe))
                          (gx#core-list 'lambda% __tmp199823 __tmp199822))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                             (__tmp199820
                                              (_%generate-body198412%_
                                               (_%generate-bindings198411%_
                                                _%target198478%_
                                                _%ids198470%_
                                                _%clauses198472%_
                                                _%clause-ids198474%_
                                                _%E198476%_)
                                               (cons _%first198480%_
                                                     (cons _%expr198453%_
                                                           '())))))
                                         (declare (not safe))
                                         (gx#core-list
                                          'let-values
                                          __tmp199821
                                          __tmp199820)))
                                      (__tmp199818
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-source _%stx198406%_))))
                                  (declare (not safe))
                                  (gx#stx-wrap-source
                                   __tmp199819
                                   __tmp199818))))
                           (declare (not safe))
                           (gx#core-list
                            'begin-annotation
                            '@syntax-case
                            __tmp199817)))
                        (__tmp199815
                         (let ()
                           (declare (not safe))
                           (gx#stx-source _%stx198406%_))))
                    (declare (not safe))
                    (gx#stx-wrap-source __tmp199816 __tmp199815)))
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; clauses expected"
                   _%stx198406%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _%stx198406%_
                                                       _%ids198463%_))))))
                                          (_%$%E198418198433%_)))))
                                (_%$%E198418198433%_))))
                        (_%$%E198418198433%_)))))
            (_%$%E198417198483%_)))))
    (define gx#macro-expand-syntax-case__0
      (lambda (_%stx199131%_)
        (let* ((_%identifier=?199133%_ 'free-identifier=?)
               (_%unwrap-e199135%_ 'syntax-e)
               (_%wrap-e199137%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx199131%_
           _%identifier=?199133%_
           _%unwrap-e199135%_
           _%wrap-e199137%_))))
    (define gx#macro-expand-syntax-case__1
      (lambda (_%stx199139%_ _%identifier=?199140%_)
        (let* ((_%unwrap-e199142%_ 'syntax-e) (_%wrap-e199144%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx199139%_
           _%identifier=?199140%_
           _%unwrap-e199142%_
           _%wrap-e199144%_))))
    (define gx#macro-expand-syntax-case__2
      (lambda (_%stx199146%_ _%identifier=?199147%_ _%unwrap-e199148%_)
        (let ((_%wrap-e199150%_ 'quote-syntax))
          (gx#macro-expand-syntax-case__%
           _%stx199146%_
           _%identifier=?199147%_
           _%unwrap-e199148%_
           _%wrap-e199150%_))))
    (define gx#macro-expand-syntax-case
      (lambda _g199824_
        (let ((_g199825_ (let () (declare (not safe)) (##length _g199824_))))
          (cond ((let () (declare (not safe)) (##fx= _g199825_ 1))
                 (apply gx#macro-expand-syntax-case__0 _g199824_))
                ((let () (declare (not safe)) (##fx= _g199825_ 2))
                 (apply gx#macro-expand-syntax-case__1 _g199824_))
                ((let () (declare (not safe)) (##fx= _g199825_ 3))
                 (apply gx#macro-expand-syntax-case__2 _g199824_))
                ((let () (declare (not safe)) (##fx= _g199825_ 4))
                 (apply gx#macro-expand-syntax-case__% _g199824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-syntax-case
                  _g199824_))))))
    (define gx#syntax-local-pattern?
      (lambda (_%stx198403%_)
        (if (let () (declare (not safe)) (gx#identifier? _%stx198403%_))
            (let ((__tmp199826
                   (let ()
                     (declare (not safe))
                     (gx#syntax-local-e__% _%stx198403%_ false))))
              (declare (not safe))
              (##structure-instance-of? __tmp199826 'gx#syntax-pattern::t))
            '#f)))
    (define gx#syntax-check-splice-targets
      (lambda (_%hd198361%_ . _%rest198362%_)
        (let ((_%len198364%_ (length _%hd198361%_)))
          (let _%lp198366%_ ((_%rest198368%_ _%rest198362%_))
            (let* ((_%$%rest198369198377%_ _%rest198368%_)
                   (_%$%else198371198385%_ (lambda () '#!void))
                   (_%$%K198373198391%_
                    (lambda (_%rest198388%_ _%hd198389%_)
                      (if (let ((__tmp199827 (length _%hd198389%_)))
                            (declare (not safe))
                            (##fx= _%len198364%_ __tmp199827))
                          (_%lp198366%_ _%rest198388%_)
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Splice length mismatch"
                             _%hd198389%_))))))
              (if (pair? _%$%rest198369198377%_)
                  (let ((_%$%hd198374198394%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest198369198377%_)))
                        (_%$%tl198375198396%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest198369198377%_))))
                    (let* ((_%hd198399%_ _%$%hd198374198394%_)
                           (_%rest198401%_ _%$%tl198375198396%_))
                      (_%$%K198373198391%_ _%rest198401%_ _%hd198399%_)))
                  '#!void))))))
    (define gx#syntax-split-splice
      (lambda (_%stx198311%_ _%n198312%_)
        (let _%lp198314%_ ((_%rest198317%_ _%stx198311%_) (_%r198319%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest198317%_))
              (let* ((_%$%g198321198328%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest198317%_)))
                     (_%$%E198323198332%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g198321198328%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K198324198339%_
                      (lambda (_%rest198335%_ _%hd198336%_)
                        (_%lp198314%_
                         _%rest198335%_
                         (cons _%hd198336%_ _%r198319%_)))))
                (if (pair? _%$%g198321198328%_)
                    (let ((_%$%hd198325198342%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g198321198328%_)))
                          (_%$%tl198326198344%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g198321198328%_))))
                      (let* ((_%hd198347%_ _%$%hd198325198342%_)
                             (_%rest198349%_ _%$%tl198326198344%_))
                        (_%$%K198324198339%_ _%rest198349%_ _%hd198347%_)))
                    (_%$%E198323198332%_)))
              (let _%lp198351%_ ((_%n198353%_ _%n198312%_)
                                 (_%l198354%_ _%r198319%_)
                                 (_%r198356%_ _%rest198317%_))
                (if (null? _%l198354%_)
                    (values _%l198354%_ _%r198356%_)
                    (if (fxpositive? _%n198353%_)
                        (_%lp198351%_
                         (let () (declare (not safe)) (##fx- _%n198353%_ '1))
                         (cdr _%l198354%_)
                         (cons (car _%l198354%_) _%r198356%_))
                        (values (reverse! _%l198354%_) _%r198356%_))))))))
    (define gx#syntax-split-splice->vector
      (lambda (_%stx198261%_ _%n198262%_)
        (let _%lp198264%_ ((_%rest198267%_ _%stx198261%_) (_%r198269%_ '()))
          (if (let () (declare (not safe)) (gx#stx-pair? _%rest198267%_))
              (let* ((_%$%g198271198278%_
                      (let ()
                        (declare (not safe))
                        (gx#syntax-e _%rest198267%_)))
                     (_%$%E198273198282%_
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (error '"No clause matching"
                                 _%$%g198271198278%_
                                 '([hd . rest])))
                        '#!void))
                     (_%$%K198274198289%_
                      (lambda (_%rest198285%_ _%hd198286%_)
                        (_%lp198264%_
                         _%rest198285%_
                         (cons _%hd198286%_ _%r198269%_)))))
                (if (pair? _%$%g198271198278%_)
                    (let ((_%$%hd198275198292%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%g198271198278%_)))
                          (_%$%tl198276198294%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%g198271198278%_))))
                      (let* ((_%hd198297%_ _%$%hd198275198292%_)
                             (_%rest198299%_ _%$%tl198276198294%_))
                        (_%$%K198274198289%_ _%rest198299%_ _%hd198297%_)))
                    (_%$%E198273198282%_)))
              (let _%lp198301%_ ((_%n198303%_ _%n198262%_)
                                 (_%l198304%_ _%r198269%_)
                                 (_%r198306%_ _%rest198267%_))
                (if (null? _%l198304%_)
                    (vector _%l198304%_ _%r198306%_)
                    (if (fxpositive? _%n198303%_)
                        (_%lp198301%_
                         (let () (declare (not safe)) (##fx- _%n198303%_ '1))
                         (cdr _%l198304%_)
                         (cons (car _%l198304%_) _%r198306%_))
                        (vector (reverse! _%l198304%_) _%r198306%_))))))))))
