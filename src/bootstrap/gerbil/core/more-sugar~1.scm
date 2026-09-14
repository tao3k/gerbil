(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-sugar[1]#_g49277_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/more-sugar[1]#_g49280_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49281_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49282_|
    (##structure
     gx#syntax-quote::t
     'finally
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49283_|
    (##structure
     gx#syntax-quote::t
     'catch
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49298_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49299_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/more-sugar[1]#_g49300_|
    (##structure
     gx#syntax-quote::t
     'unquote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-sugar[1]#setq-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setq-macro::t
       'setq-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setq-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setq-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setq-macro|
      (lambda _%$args43691%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setq-macro::t|
               _%$args43691%_)))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setq-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setq-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setq-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro::t|
      (make-class-type
       'gerbil/core/more-sugar#setf-macro::t
       'setf-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/more-sugar[1]#setf-macro?|
      (make-class-predicate |gerbil/core/more-sugar[1]#setf-macro::t|))
    (define |gerbil/core/more-sugar[1]#make-setf-macro|
      (lambda _%$args43687%_
        (apply make-instance
               |gerbil/core/more-sugar[1]#setf-macro::t|
               _%$args43687%_)))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro|
      (make-class-slot-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#setf-macro-macro-set!|
      (make-class-slot-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#&setf-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/more-sugar[1]#setf-macro::t|
       'macro))
    (define |gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
      (lambda (_%stx43684%_)
        (if (gx#identifier? _%stx43684%_)
            (let ((__tmp49236 (gx#syntax-local-value _%stx43684%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setf-macro::t|
               __tmp49236))
            '#f)))
    (define |gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
      (lambda (_%stx43681%_)
        (if (gx#identifier? _%stx43681%_)
            (let ((__tmp49237 (gx#syntax-local-value _%stx43681%_ false)))
              (declare (not safe))
              (class-instance?
               |gerbil/core/more-sugar[1]#setq-macro::t|
               __tmp49237))
            '#f)))
    (define |gerbil/core/more-sugar[1]#expand-set!|
      (lambda (_%stx43308%_)
        (let* ((_%__stx4862748628%_ _%stx43308%_)
               (_%$%g4331443377%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4862748628%_))))
          (let ((_%__kont4863048631%_
                 (lambda (_%$%g4331643658%_ _%$%g4331743660%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4331743660%_)
                    _%stx43308%_)))
                (_%__kont4863248633%_
                 (lambda (_%$%g4333043547%_
                          _%$%g4333143549%_
                          _%$%g4333243550%_)
                   (let* ((_%$%g4357243580%_
                           (lambda (_%$%g4357343576%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g4357343576%_)))
                          (_%$%g4357143607%_
                           (lambda (_%$%g4357343584%_)
                             (cons _%$%g4357343584%_
                                   (foldr (lambda (_%$%g4359843601%_
                                                   _%$%g4359943604%_)
                                            (cons _%$%g4359843601%_
                                                  _%$%g4359943604%_))
                                          (cons _%$%g4333043547%_ '())
                                          _%$%g4333143549%_)))))
                     (_%$%g4357143607%_
                      (gx#stx-identifier
                       _%$%g4333243550%_
                       _%$%g4333243550%_
                       '"-set!")))))
                (_%__kont4863648637%_
                 (lambda (_%$%g4335443459%_)
                   (gx#core-apply-expander
                    (gx#syntax-local-e _%$%g4335443459%_)
                    _%stx43308%_)))
                (_%__kont4863848639%_
                 (lambda (_%$%g4336143414%_ _%$%g4336243416%_)
                   (cons (gx#datum->syntax '#f '%#set!)
                         (cons _%$%g4336243416%_
                               (cons _%$%g4336143414%_ '()))))))
            (let* ((_%__match4872648727%_
                    (lambda (_%$%e4336343384%_
                             _%$%hd4336443388%_
                             _%$%tl4336543391%_
                             _%$%e4336643394%_
                             _%$%hd4336743398%_
                             _%$%tl4336843401%_
                             _%$%e4336943404%_
                             _%$%hd4337043408%_
                             _%$%tl4337143411%_)
                      (let ((_%$%g4336143414%_ _%$%hd4337043408%_)
                            (_%$%g4336243416%_ _%$%hd4336743398%_))
                        (if (gx#identifier? _%$%g4336243416%_)
                            (_%__kont4863848639%_
                             _%$%g4336143414%_
                             _%$%g4336243416%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g4331443377%_))))))
                   (_%__match4870648707%_
                    (lambda (_%$%e4335543439%_
                             _%$%hd4335643443%_
                             _%$%tl4335743446%_
                             _%$%e4335843449%_
                             _%$%hd4335943453%_
                             _%$%tl4336043456%_)
                      (let ((_%$%g4335443459%_ _%$%hd4335943453%_))
                        (if (|gerbil/core/more-sugar[1]#syntax-local-setq-macro?|
                             _%$%g4335443459%_)
                            (_%__kont4863648637%_ _%$%g4335443459%_)
                            (if (gx#stx-pair? _%$%tl4336043456%_)
                                (let ((_%$%e4336943404%_
                                       (gx#syntax-e _%$%tl4336043456%_)))
                                  (let ((_%$%tl4337143411%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4336943404%_)))
                                        (_%$%hd4337043408%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4336943404%_))))
                                    (if (gx#stx-null? _%$%tl4337143411%_)
                                        (_%__match4872648727%_
                                         _%$%e4335543439%_
                                         _%$%hd4335643443%_
                                         _%$%tl4335743446%_
                                         _%$%e4335843449%_
                                         _%$%hd4335943453%_
                                         _%$%tl4336043456%_
                                         _%$%e4336943404%_
                                         _%$%hd4337043408%_
                                         _%$%tl4337143411%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g4331443377%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g4331443377%_)))))))
                   (_%__match4869448695%_
                    (lambda (_%$%e4333343479%_
                             _%$%hd4333443483%_
                             _%$%tl4333543486%_
                             _%$%e4333643489%_
                             _%$%hd4333743493%_
                             _%$%tl4333843496%_
                             _%$%e4333943499%_
                             _%$%hd4334043503%_
                             _%$%tl4334143506%_
                             _%__splice4863448635%_
                             _%$%target4334243509%_
                             _%$%tl4334443512%_)
                      (letrec ((_%$%loop4334543515%_
                                (lambda (_%$%hd4334343519%_
                                         _%$%arg4334943522%_)
                                  (if (gx#stx-pair? _%$%hd4334343519%_)
                                      (let ((_%$%e4334643524%_
                                             (gx#syntax-e _%$%hd4334343519%_)))
                                        (let ((_%$%lp-tl4334843531%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4334643524%_)))
                                              (_%$%lp-hd4334743528%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4334643524%_))))
                                          (_%$%loop4334543515%_
                                           _%$%lp-tl4334843531%_
                                           (cons _%$%lp-hd4334743528%_
                                                 _%$%arg4334943522%_))))
                                      (let ((_%$%arg4335043534%_
                                             (reverse _%$%arg4334943522%_)))
                                        (if (gx#stx-pair? _%$%tl4333843496%_)
                                            (let ((_%$%e4335143537%_
                                                   (gx#syntax-e
                                                    _%$%tl4333843496%_)))
                                              (let ((_%$%tl4335343544%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4335143537%_)))
                                                    (_%$%hd4335243541%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4335143537%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4335343544%_)
                                                    (let ((_%$%g4333043547%_
                                                           _%$%hd4335243541%_)
                                                          (_%$%g4333143549%_
                                                           _%$%arg4335043534%_)
                                                          (_%$%g4333243550%_
                                                           _%$%hd4334043503%_))
                                                      (if (gx#identifier?
                                                           _%$%g4333243550%_)
                                                          (_%__kont4863248633%_
                                                           _%$%g4333043547%_
                                                           _%$%g4333143549%_
                                                           _%$%g4333243550%_)
                                                          (_%__match4870648707%_
                                                           _%$%e4333343479%_
                                                           _%$%hd4333443483%_
                                                           _%$%tl4333543486%_
                                                           _%$%e4333643489%_
                                                           _%$%hd4333743493%_
                                                           _%$%tl4333843496%_)))
                                                    (_%__match4870648707%_
                                                     _%$%e4333343479%_
                                                     _%$%hd4333443483%_
                                                     _%$%tl4333543486%_
                                                     _%$%e4333643489%_
                                                     _%$%hd4333743493%_
                                                     _%$%tl4333843496%_))))
                                            (_%__match4870648707%_
                                             _%$%e4333343479%_
                                             _%$%hd4333443483%_
                                             _%$%tl4333543486%_
                                             _%$%e4333643489%_
                                             _%$%hd4333743493%_
                                             _%$%tl4333843496%_)))))))
                        (_%$%loop4334543515%_ _%$%target4334243509%_ '())))))
              (if (gx#stx-pair? _%__stx4862748628%_)
                  (let ((_%$%e4331843618%_ (gx#syntax-e _%__stx4862748628%_)))
                    (let ((_%$%tl4332043625%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4331843618%_)))
                          (_%$%hd4331943622%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4331843618%_))))
                      (if (gx#stx-pair? _%$%tl4332043625%_)
                          (let ((_%$%e4332143628%_
                                 (gx#syntax-e _%$%tl4332043625%_)))
                            (let ((_%$%tl4332343635%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4332143628%_)))
                                  (_%$%hd4332243632%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4332143628%_))))
                              (if (gx#stx-pair? _%$%hd4332243632%_)
                                  (let ((_%$%e4332443638%_
                                         (gx#syntax-e _%$%hd4332243632%_)))
                                    (let ((_%$%tl4332643645%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4332443638%_)))
                                          (_%$%hd4332543642%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4332443638%_))))
                                      (if (gx#stx-pair? _%$%tl4332343635%_)
                                          (let ((_%$%e4332743648%_
                                                 (gx#syntax-e
                                                  _%$%tl4332343635%_)))
                                            (let ((_%$%tl4332943655%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4332743648%_)))
                                                  (_%$%hd4332843652%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4332743648%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl4332943655%_)
                                                  (if (|gerbil/core/more-sugar[1]#syntax-local-setf-macro?|
                                                       (gx#datum->syntax
                                                        '#f
                                                        'setfid))
                                                      (let ((_%$%g4331643658%_
                                                             _%$%hd4332843652%_)
                                                            (_%$%g4331743660%_
                                                             _%$%hd4332543642%_))
                                                        (_%__kont4863048631%_
                                                         _%$%g4331643658%_
                                                         _%$%g4331743660%_))
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl4332643645%_)
                                                          (let ((_%__splice4863448635%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice->vector
                          _%$%tl4332643645%_
                          '0)))
                    (let ((_%$%tl4334443512%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4863448635%_ '1)))
                          (_%$%target4334243509%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice4863448635%_ '0))))
                      (if (gx#stx-null? _%$%tl4334443512%_)
                          (_%__match4869448695%_
                           _%$%e4331843618%_
                           _%$%hd4331943622%_
                           _%$%tl4332043625%_
                           _%$%e4332143628%_
                           _%$%hd4332243632%_
                           _%$%tl4332343635%_
                           _%$%e4332443638%_
                           _%$%hd4332543642%_
                           _%$%tl4332643645%_
                           _%__splice4863448635%_
                           _%$%target4334243509%_
                           _%$%tl4334443512%_)
                          (_%__match4870648707%_
                           _%$%e4331843618%_
                           _%$%hd4331943622%_
                           _%$%tl4332043625%_
                           _%$%e4332143628%_
                           _%$%hd4332243632%_
                           _%$%tl4332343635%_))))
                  (_%__match4870648707%_
                   _%$%e4331843618%_
                   _%$%hd4331943622%_
                   _%$%tl4332043625%_
                   _%$%e4332143628%_
                   _%$%hd4332243632%_
                   _%$%tl4332343635%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl4332643645%_)
                                                      (let ((_%__splice4863448635%_
                                                             (gx#syntax-split-splice->vector
                                                              _%$%tl4332643645%_
                                                              '0)))
                                                        (let ((_%$%tl4334443512%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##vector-ref _%__splice4863448635%_ '1)))
                      (_%$%target4334243509%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice4863448635%_ '0))))
                  (if (gx#stx-null? _%$%tl4334443512%_)
                      (_%__match4869448695%_
                       _%$%e4331843618%_
                       _%$%hd4331943622%_
                       _%$%tl4332043625%_
                       _%$%e4332143628%_
                       _%$%hd4332243632%_
                       _%$%tl4332343635%_
                       _%$%e4332443638%_
                       _%$%hd4332543642%_
                       _%$%tl4332643645%_
                       _%__splice4863448635%_
                       _%$%target4334243509%_
                       _%$%tl4334443512%_)
                      (_%__match4870648707%_
                       _%$%e4331843618%_
                       _%$%hd4331943622%_
                       _%$%tl4332043625%_
                       _%$%e4332143628%_
                       _%$%hd4332243632%_
                       _%$%tl4332343635%_))))
              (_%__match4870648707%_
               _%$%e4331843618%_
               _%$%hd4331943622%_
               _%$%tl4332043625%_
               _%$%e4332143628%_
               _%$%hd4332243632%_
               _%$%tl4332343635%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%$%tl4332643645%_)
                                              (let ((_%__splice4863448635%_
                                                     (gx#syntax-split-splice->vector
                                                      _%$%tl4332643645%_
                                                      '0)))
                                                (let ((_%$%tl4334443512%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4863448635%_
                                                          '1)))
                                                      (_%$%target4334243509%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice4863448635%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%$%tl4334443512%_)
                                                      (_%__match4869448695%_
                                                       _%$%e4331843618%_
                                                       _%$%hd4331943622%_
                                                       _%$%tl4332043625%_
                                                       _%$%e4332143628%_
                                                       _%$%hd4332243632%_
                                                       _%$%tl4332343635%_
                                                       _%$%e4332443638%_
                                                       _%$%hd4332543642%_
                                                       _%$%tl4332643645%_
                                                       _%__splice4863448635%_
                                                       _%$%target4334243509%_
                                                       _%$%tl4334443512%_)
                                                      (_%__match4870648707%_
                                                       _%$%e4331843618%_
                                                       _%$%hd4331943622%_
                                                       _%$%tl4332043625%_
                                                       _%$%e4332143628%_
                                                       _%$%hd4332243632%_
                                                       _%$%tl4332343635%_))))
                                              (_%__match4870648707%_
                                               _%$%e4331843618%_
                                               _%$%hd4331943622%_
                                               _%$%tl4332043625%_
                                               _%$%e4332143628%_
                                               _%$%hd4332243632%_
                                               _%$%tl4332343635%_)))))
                                  (_%__match4870648707%_
                                   _%$%e4331843618%_
                                   _%$%hd4331943622%_
                                   _%$%tl4332043625%_
                                   _%$%e4332143628%_
                                   _%$%hd4332243632%_
                                   _%$%tl4332343635%_))))
                          (let () (declare (not safe)) (_%$%g4331443377%_)))))
                  (let () (declare (not safe)) (_%$%g4331443377%_))))))))
    (define |gerbil/core/more-sugar[1]#stx-re-source|
      (lambda (_%stx43304%_ _%src43306%_)
        (if (gx#identifier? _%stx43304%_)
            _%stx43304%_
            (gx#stx-wrap-source
             (gx#syntax-e _%stx43304%_)
             (gx#stx-source _%src43306%_)))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__%|
      (lambda (_%subs43261%_ _%stx43263%_ _%id=?43264%_)
        (let _%recur43266%_ ((_%stx43269%_ _%stx43263%_))
          (if (gx#identifier? _%stx43269%_)
              (let ((_%$e43274%_
                     (assoc _%stx43269%_ _%subs43261%_ _%id=?43264%_)))
                (if _%$e43274%_ (cdr _%$e43274%_) _%stx43269%_))
              (if (gx#stx-pair? _%stx43269%_)
                  (|gerbil/core/more-sugar[1]#stx-re-source|
                   (cons (_%recur43266%_ (gx#stx-car _%stx43269%_))
                         (_%recur43266%_ (gx#stx-cdr _%stx43269%_)))
                   _%stx43269%_)
                  (if (gx#stx-vector? _%stx43269%_)
                      (|gerbil/core/more-sugar[1]#stx-re-source|
                       (vector-map _%recur43266%_ (gx#syntax-e _%stx43269%_))
                       _%stx43269%_)
                      (if (gx#stx-box? _%stx43269%_)
                          (|gerbil/core/more-sugar[1]#stx-re-source|
                           (box (_%recur43266%_
                                 (unbox (gx#syntax-e _%stx43269%_))))
                           _%stx43269%_)
                          _%stx43269%_)))))))
    (define |gerbil/core/more-sugar[1]#stx-substitute__0|
      (lambda (_%subs43292%_ _%stx43294%_)
        (let ((_%id=?43296%_ gx#bound-identifier=?))
          (|gerbil/core/more-sugar[1]#stx-substitute__%|
           _%subs43292%_
           _%stx43294%_
           _%id=?43296%_))))
    (define |gerbil/core/more-sugar[1]#stx-substitute|
      (lambda _g49238_
        (let ((_g49239_ (let () (declare (not safe)) (##length _g49238_))))
          (cond ((let () (declare (not safe)) (##fx= _g49239_ 2))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__0|
                        _g49238_))
                ((let () (declare (not safe)) (##fx= _g49239_ 3))
                 (apply |gerbil/core/more-sugar[1]#stx-substitute__%|
                        _g49238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  |gerbil/core/more-sugar[1]#stx-substitute|
                  _g49238_))))))
    (define |gerbil/core/more-sugar[:0:]#set!|
      (lambda (_%stx43698%_)
        (|gerbil/core/more-sugar[1]#expand-set!| _%stx43698%_)))
    (define |gerbil/core/more-sugar[:0:]#values-set!|
      (lambda (_%stx43701%_)
        (let* ((_%$%g4370443728%_
                (lambda (_%$%g4370543724%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4370543724%_)))
               (_%$%g4370343902%_
                (lambda (_%$%g4370543732%_)
                  (if (gx#stx-pair? _%$%g4370543732%_)
                      (let ((_%$%e4370843735%_
                             (gx#syntax-e _%$%g4370543732%_)))
                        (let ((_%$%hd4370943739%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4370843735%_)))
                              (_%$%tl4371043742%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4370843735%_))))
                          (if (gx#stx-pair/null? _%$%tl4371043742%_)
                              (if (let ((__tmp49240
                                         (gx#stx-length _%$%tl4371043742%_)))
                                    (declare (not safe))
                                    (##fx>= __tmp49240 '1))
                                  (let ((_g49241_
                                         (gx#syntax-split-splice
                                          _%$%tl4371043742%_
                                          '1)))
                                    (begin
                                      (let ((_g49242_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g49241_)
                                                   (##values-length _g49241_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g49242_ 2)))
                                            (error "Context expects 2 values"
                                                   _g49242_)))
                                      (let ((_%$%target4371143745%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g49241_ 0)))
                                            (_%$%tl4371343748%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g49241_ 1))))
                                        (if (gx#stx-pair? _%$%tl4371343748%_)
                                            (let ((_%$%e4372043751%_
                                                   (gx#syntax-e
                                                    _%$%tl4371343748%_)))
                                              (let ((_%$%hd4372143755%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4372043751%_)))
                                                    (_%$%tl4372243758%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4372043751%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4372243758%_)
                                                    (letrec ((_%$%loop4371443761%_
                                                              (lambda (_%$%hd4371243765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%tgt4371843768%_)
                        (if (gx#stx-pair? _%$%hd4371243765%_)
                            (let ((_%$%e4371543770%_
                                   (gx#syntax-e _%$%hd4371243765%_)))
                              (let ((_%$%lp-hd4371643774%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4371543770%_)))
                                    (_%$%lp-tl4371743777%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4371543770%_))))
                                (_%$%loop4371443761%_
                                 _%$%lp-tl4371743777%_
                                 (cons _%$%lp-hd4371643774%_
                                       _%$%tgt4371843768%_))))
                            (let* ((_%$%tgt4371943780%_
                                    (reverse _%$%tgt4371843768%_))
                                   (_%$%g4380343820%_
                                    (lambda (_%$%g4380443816%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%$%g4380443816%_)))
                                   (_%$%g4380243890%_
                                    (lambda (_%$%g4380443824%_)
                                      (if (gx#stx-pair/null? _%$%g4380443824%_)
                                          (let ((_g49243_
                                                 (gx#syntax-split-splice
                                                  _%$%g4380443824%_
                                                  '0)))
                                            (begin
                                              (let ((_g49244_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g49243_)
                                                           (##values-length
                                                            _g49243_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g49244_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g49244_)))
                                              (let ((_%$%target4380643827%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g49243_
                                                        0)))
                                                    (_%$%tl4380843830%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g49243_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl4380843830%_)
                                                    (letrec ((_%$%loop4380943833%_
                                                              (lambda (_%$%hd4380743837%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%$e4381343840%_)
                        (if (gx#stx-pair? _%$%hd4380743837%_)
                            (let ((_%$%e4381043842%_
                                   (gx#syntax-e _%$%hd4380743837%_)))
                              (let ((_%$%lp-hd4381143846%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4381043842%_)))
                                    (_%$%lp-tl4381243849%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4381043842%_))))
                                (_%$%loop4380943833%_
                                 _%$%lp-tl4381243849%_
                                 (cons _%$%lp-hd4381143846%_
                                       _%$%$e4381343840%_))))
                            (let ((_%$%$e4381443852%_
                                   (reverse _%$%$e4381343840%_)))
                              (cons (gx#datum->syntax '#f 'let-values)
                                    (cons (cons (cons (foldr (lambda (_%$%g4387043876%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4387143879%_)
                       (cons _%$%g4387043876%_ _%$%g4387143879%_))
                     '()
                     _%$%$e4381443852%_)
              (cons _%$%hd4372143755%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (begin
                                            (gx#syntax-check-splice-targets
                                             _%$%$e4381443852%_
                                             _%$%tgt4371943780%_)
                                            (foldr (lambda (_%$%g4387243882%_
                                                            _%$%g4387343885%_
                                                            _%$%g4387443887%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'set!)
                         (cons _%$%g4387343885%_ (cons _%$%g4387243882%_ '())))
                   _%$%g4387443887%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%$%$e4381443852%_
                                                   _%$%tgt4371943780%_)))))))))
              (_%$%loop4380943833%_ _%$%target4380643827%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4380343820%_
                                                     _%$%g4380443824%_)))))
                                          (_%$%g4380343820%_
                                           _%$%g4380443824%_)))))
                              (_%$%g4380243890%_
                               (gx#gentemps
                                (foldr (lambda (_%$%g4389343896%_
                                                _%$%g4389443899%_)
                                         (cons _%$%g4389343896%_
                                               _%$%g4389443899%_))
                                       '()
                                       _%$%tgt4371943780%_))))))))
              (_%$%loop4371443761%_ _%$%target4371143745%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4370443728%_
                                                     _%$%g4370543732%_))))
                                            (_%$%g4370443728%_
                                             _%$%g4370543732%_)))))
                                  (_%$%g4370443728%_ _%$%g4370543732%_))
                              (_%$%g4370443728%_ _%$%g4370543732%_))))
                      (_%$%g4370443728%_ _%$%g4370543732%_)))))
          (_%$%g4370343902%_ _%stx43701%_))))
    (define |gerbil/core/more-sugar[:0:]#parameterize|
      (lambda (_%$stx43908%_)
        (let* ((_%__stx4872948730%_ _%$stx43908%_)
               (_%$%g4391444002%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx4872948730%_))))
          (let ((_%__kont4873248733%_
                 (lambda (_%$%g4391644342%_)
                   (cons (gx#datum->syntax '#f 'let)
                         (cons '()
                               (foldr (lambda (_%$%g4435844361%_
                                               _%$%g4435944364%_)
                                        (cons _%$%g4435844361%_
                                              _%$%g4435944364%_))
                                      '()
                                      _%$%g4391644342%_)))))
                (_%__kont4873648737%_
                 (lambda (_%$%g4393244252%_
                          _%$%g4393344254%_
                          _%$%g4393444255%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (foldr (lambda (_%$%g4427844281%_
                                                           _%$%g4427944284%_)
                                                    (cons _%$%g4427844281%_
                                                          _%$%g4427944284%_))
                                                  '()
                                                  _%$%g4393244252%_)))
                               (cons _%$%g4393444255%_
                                     (cons _%$%g4393344254%_ '()))))))
                (_%__kont4874048741%_
                 (lambda (_%$%g4395944115%_
                          _%$%g4396044117%_
                          _%$%g4396144118%_
                          _%$%g4396244119%_
                          _%$%g4396344120%_)
                   (cons (gx#datum->syntax '#f 'call-with-parameters)
                         (cons (cons (gx#datum->syntax '#f 'lambda)
                                     (cons '()
                                           (cons (cons _%$%g4396344120%_
                                                       (cons (foldr (lambda (_%$%g4415044155%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g4415144158%_)
                              (cons _%$%g4415044155%_ _%$%g4415144158%_))
                            '()
                            _%$%g4396044117%_)
                     (foldr (lambda (_%$%g4415244161%_ _%$%g4415344164%_)
                              (cons _%$%g4415244161%_ _%$%g4415344164%_))
                            '()
                            _%$%g4395944115%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               (cons _%$%g4396244119%_
                                     (cons _%$%g4396144118%_ '())))))))
            (let* ((_%__match4885048851%_
                    (lambda (_%$%e4396444009%_
                             _%$%hd4396544013%_
                             _%$%tl4396644016%_
                             _%$%e4396744019%_
                             _%$%hd4396844023%_
                             _%$%tl4396944026%_
                             _%$%e4397044029%_
                             _%$%hd4397144033%_
                             _%$%tl4397244036%_
                             _%$%e4397344039%_
                             _%$%hd4397444043%_
                             _%$%tl4397544046%_
                             _%$%e4397644049%_
                             _%$%hd4397744053%_
                             _%$%tl4397844056%_
                             _%__splice4874248743%_
                             _%$%target4397944059%_
                             _%$%tl4398144062%_)
                      (letrec ((_%$%loop4398244065%_
                                (lambda (_%$%hd4398044069%_
                                         _%$%rest4398644072%_)
                                  (if (gx#stx-pair? _%$%hd4398044069%_)
                                      (let ((_%$%e4398344074%_
                                             (gx#syntax-e _%$%hd4398044069%_)))
                                        (let ((_%$%lp-tl4398544081%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4398344074%_)))
                                              (_%$%lp-hd4398444078%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4398344074%_))))
                                          (_%$%loop4398244065%_
                                           _%$%lp-tl4398544081%_
                                           (cons _%$%lp-hd4398444078%_
                                                 _%$%rest4398644072%_))))
                                      (let ((_%$%rest4398744084%_
                                             (reverse _%$%rest4398644072%_)))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4396944026%_)
                                            (let ((_%__splice4874448745%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4396944026%_
                                                    '0)))
                                              (let ((_%$%tl4399044090%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4874448745%_
                                                        '1)))
                                                    (_%$%target4398844087%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4874448745%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4399044090%_)
                                                    (letrec ((_%$%loop4399144093%_
                                                              (lambda (_%$%hd4398944097%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body4399544100%_)
                        (if (gx#stx-pair? _%$%hd4398944097%_)
                            (let ((_%$%e4399244102%_
                                   (gx#syntax-e _%$%hd4398944097%_)))
                              (let ((_%$%lp-tl4399444109%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e4399244102%_)))
                                    (_%$%lp-hd4399344106%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e4399244102%_))))
                                (_%$%loop4399144093%_
                                 _%$%lp-tl4399444109%_
                                 (cons _%$%lp-hd4399344106%_
                                       _%$%body4399544100%_))))
                            (let ((_%$%body4399644112%_
                                   (reverse _%$%body4399544100%_)))
                              (_%__kont4874048741%_
                               _%$%body4399644112%_
                               _%$%rest4398744084%_
                               _%$%hd4397744053%_
                               _%$%hd4397444043%_
                               _%$%hd4396544013%_))))))
              (_%$%loop4399144093%_ _%$%target4398844087%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g4391444002%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g4391444002%_))))))))
                        (_%$%loop4398244065%_ _%$%target4397944059%_ '()))))
                   (_%__match4881048811%_
                    (lambda (_%$%e4393544174%_
                             _%$%hd4393644178%_
                             _%$%tl4393744181%_
                             _%$%e4393844184%_
                             _%$%hd4393944188%_
                             _%$%tl4394044191%_
                             _%$%e4394144194%_
                             _%$%hd4394244198%_
                             _%$%tl4394344201%_
                             _%$%e4394444204%_
                             _%$%hd4394544208%_
                             _%$%tl4394644211%_
                             _%$%e4394744214%_
                             _%$%hd4394844218%_
                             _%$%tl4394944221%_
                             _%__splice4873848739%_
                             _%$%target4395044224%_
                             _%$%tl4395244227%_)
                      (letrec ((_%$%loop4395344230%_
                                (lambda (_%$%hd4395144234%_
                                         _%$%body4395744237%_)
                                  (if (gx#stx-pair? _%$%hd4395144234%_)
                                      (let ((_%$%e4395444239%_
                                             (gx#syntax-e _%$%hd4395144234%_)))
                                        (let ((_%$%lp-tl4395644246%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4395444239%_)))
                                              (_%$%lp-hd4395544243%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4395444239%_))))
                                          (_%$%loop4395344230%_
                                           _%$%lp-tl4395644246%_
                                           (cons _%$%lp-hd4395544243%_
                                                 _%$%body4395744237%_))))
                                      (let ((_%$%body4395844249%_
                                             (reverse _%$%body4395744237%_)))
                                        (_%__kont4873648737%_
                                         _%$%body4395844249%_
                                         _%$%hd4394844218%_
                                         _%$%hd4394544208%_))))))
                        (_%$%loop4395344230%_ _%$%target4395044224%_ '()))))
                   (_%__match4876848769%_
                    (lambda (_%$%e4391744294%_
                             _%$%hd4391844298%_
                             _%$%tl4391944301%_
                             _%$%e4392044304%_
                             _%$%hd4392144308%_
                             _%$%tl4392244311%_
                             _%__splice4873448735%_
                             _%$%target4392344314%_
                             _%$%tl4392544317%_)
                      (letrec ((_%$%loop4392644320%_
                                (lambda (_%$%hd4392444324%_
                                         _%$%body4393044327%_)
                                  (if (gx#stx-pair? _%$%hd4392444324%_)
                                      (let ((_%$%e4392744329%_
                                             (gx#syntax-e _%$%hd4392444324%_)))
                                        (let ((_%$%lp-tl4392944336%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4392744329%_)))
                                              (_%$%lp-hd4392844333%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4392744329%_))))
                                          (_%$%loop4392644320%_
                                           _%$%lp-tl4392944336%_
                                           (cons _%$%lp-hd4392844333%_
                                                 _%$%body4393044327%_))))
                                      (let ((_%$%body4393144339%_
                                             (reverse _%$%body4393044327%_)))
                                        (_%__kont4873248733%_
                                         _%$%body4393144339%_))))))
                        (_%$%loop4392644320%_ _%$%target4392344314%_ '())))))
              (if (gx#stx-pair? _%__stx4872948730%_)
                  (let ((_%$%e4391744294%_ (gx#syntax-e _%__stx4872948730%_)))
                    (let ((_%$%tl4391944301%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4391744294%_)))
                          (_%$%hd4391844298%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4391744294%_))))
                      (if (gx#stx-pair? _%$%tl4391944301%_)
                          (let ((_%$%e4392044304%_
                                 (gx#syntax-e _%$%tl4391944301%_)))
                            (let ((_%$%tl4392244311%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e4392044304%_)))
                                  (_%$%hd4392144308%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e4392044304%_))))
                              (if (gx#stx-null? _%$%hd4392144308%_)
                                  (if (gx#stx-pair/null? _%$%tl4392244311%_)
                                      (let ((_%__splice4873448735%_
                                             (gx#syntax-split-splice->vector
                                              _%$%tl4392244311%_
                                              '0)))
                                        (let ((_%$%tl4392544317%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4873448735%_
                                                  '1)))
                                              (_%$%target4392344314%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice4873448735%_
                                                  '0))))
                                          (if (gx#stx-null? _%$%tl4392544317%_)
                                              (_%__match4876848769%_
                                               _%$%e4391744294%_
                                               _%$%hd4391844298%_
                                               _%$%tl4391944301%_
                                               _%$%e4392044304%_
                                               _%$%hd4392144308%_
                                               _%$%tl4392244311%_
                                               _%__splice4873448735%_
                                               _%$%target4392344314%_
                                               _%$%tl4392544317%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4391444002%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4391444002%_)))
                                  (if (gx#stx-pair? _%$%hd4392144308%_)
                                      (let ((_%$%e4394144194%_
                                             (gx#syntax-e _%$%hd4392144308%_)))
                                        (let ((_%$%tl4394344201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4394144194%_)))
                                              (_%$%hd4394244198%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4394144194%_))))
                                          (if (gx#stx-pair? _%$%hd4394244198%_)
                                              (let ((_%$%e4394444204%_
                                                     (gx#syntax-e
                                                      _%$%hd4394244198%_)))
                                                (let ((_%$%tl4394644211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e4394444204%_)))
                                                      (_%$%hd4394544208%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e4394444204%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl4394644211%_)
                                                      (let ((_%$%e4394744214%_
                                                             (gx#syntax-e
                                                              _%$%tl4394644211%_)))
                                                        (let ((_%$%tl4394944221%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%e4394744214%_)))
                      (_%$%hd4394844218%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e4394744214%_))))
                  (if (gx#stx-null? _%$%tl4394944221%_)
                      (if (gx#stx-null? _%$%tl4394344201%_)
                          (if (gx#stx-pair/null? _%$%tl4392244311%_)
                              (let ((_%__splice4873848739%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4392244311%_
                                      '0)))
                                (let ((_%$%tl4395244227%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4873848739%_
                                          '1)))
                                      (_%$%target4395044224%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4873848739%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4395244227%_)
                                      (_%__match4881048811%_
                                       _%$%e4391744294%_
                                       _%$%hd4391844298%_
                                       _%$%tl4391944301%_
                                       _%$%e4392044304%_
                                       _%$%hd4392144308%_
                                       _%$%tl4392244311%_
                                       _%$%e4394144194%_
                                       _%$%hd4394244198%_
                                       _%$%tl4394344201%_
                                       _%$%e4394444204%_
                                       _%$%hd4394544208%_
                                       _%$%tl4394644211%_
                                       _%$%e4394744214%_
                                       _%$%hd4394844218%_
                                       _%$%tl4394944221%_
                                       _%__splice4873848739%_
                                       _%$%target4395044224%_
                                       _%$%tl4395244227%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl4394344201%_)
                                          (let ((_%__splice4874248743%_
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl4394344201%_
                                                  '0)))
                                            (let ((_%$%tl4398144062%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4874248743%_
                                                      '1)))
                                                  (_%$%target4397944059%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%__splice4874248743%_
                                                      '0))))
                                              (if (gx#stx-null?
                                                   _%$%tl4398144062%_)
                                                  (_%__match4885048851%_
                                                   _%$%e4391744294%_
                                                   _%$%hd4391844298%_
                                                   _%$%tl4391944301%_
                                                   _%$%e4392044304%_
                                                   _%$%hd4392144308%_
                                                   _%$%tl4392244311%_
                                                   _%$%e4394144194%_
                                                   _%$%hd4394244198%_
                                                   _%$%tl4394344201%_
                                                   _%$%e4394444204%_
                                                   _%$%hd4394544208%_
                                                   _%$%tl4394644211%_
                                                   _%$%e4394744214%_
                                                   _%$%hd4394844218%_
                                                   _%$%tl4394944221%_
                                                   _%__splice4874248743%_
                                                   _%$%target4397944059%_
                                                   _%$%tl4398144062%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g4391444002%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4391444002%_))))))
                              (if (gx#stx-pair/null? _%$%tl4394344201%_)
                                  (let ((_%__splice4874248743%_
                                         (gx#syntax-split-splice->vector
                                          _%$%tl4394344201%_
                                          '0)))
                                    (let ((_%$%tl4398144062%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4874248743%_
                                              '1)))
                                          (_%$%target4397944059%_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              _%__splice4874248743%_
                                              '0))))
                                      (if (gx#stx-null? _%$%tl4398144062%_)
                                          (_%__match4885048851%_
                                           _%$%e4391744294%_
                                           _%$%hd4391844298%_
                                           _%$%tl4391944301%_
                                           _%$%e4392044304%_
                                           _%$%hd4392144308%_
                                           _%$%tl4392244311%_
                                           _%$%e4394144194%_
                                           _%$%hd4394244198%_
                                           _%$%tl4394344201%_
                                           _%$%e4394444204%_
                                           _%$%hd4394544208%_
                                           _%$%tl4394644211%_
                                           _%$%e4394744214%_
                                           _%$%hd4394844218%_
                                           _%$%tl4394944221%_
                                           _%__splice4874248743%_
                                           _%$%target4397944059%_
                                           _%$%tl4398144062%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g4391444002%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g4391444002%_))))
                          (if (gx#stx-pair/null? _%$%tl4394344201%_)
                              (let ((_%__splice4874248743%_
                                     (gx#syntax-split-splice->vector
                                      _%$%tl4394344201%_
                                      '0)))
                                (let ((_%$%tl4398144062%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4874248743%_
                                          '1)))
                                      (_%$%target4397944059%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice4874248743%_
                                          '0))))
                                  (if (gx#stx-null? _%$%tl4398144062%_)
                                      (_%__match4885048851%_
                                       _%$%e4391744294%_
                                       _%$%hd4391844298%_
                                       _%$%tl4391944301%_
                                       _%$%e4392044304%_
                                       _%$%hd4392144308%_
                                       _%$%tl4392244311%_
                                       _%$%e4394144194%_
                                       _%$%hd4394244198%_
                                       _%$%tl4394344201%_
                                       _%$%e4394444204%_
                                       _%$%hd4394544208%_
                                       _%$%tl4394644211%_
                                       _%$%e4394744214%_
                                       _%$%hd4394844218%_
                                       _%$%tl4394944221%_
                                       _%__splice4874248743%_
                                       _%$%target4397944059%_
                                       _%$%tl4398144062%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4391444002%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g4391444002%_))))
                      (let () (declare (not safe)) (_%$%g4391444002%_)))))
              (let () (declare (not safe)) (_%$%g4391444002%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g4391444002%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g4391444002%_))))))
                          (let () (declare (not safe)) (_%$%g4391444002%_)))))
                  (let () (declare (not safe)) (_%$%g4391444002%_))))))))
    (define |gerbil/core/more-sugar[:0:]#let/cc|
      (lambda (_%$stx44375%_)
        (let* ((_%$%g4437944403%_
                (lambda (_%$%g4438044399%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4438044399%_)))
               (_%$%g4437844486%_
                (lambda (_%$%g4438044407%_)
                  (if (gx#stx-pair? _%$%g4438044407%_)
                      (let ((_%$%e4438344410%_
                             (gx#syntax-e _%$%g4438044407%_)))
                        (let ((_%$%hd4438444414%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4438344410%_)))
                              (_%$%tl4438544417%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4438344410%_))))
                          (if (gx#stx-pair? _%$%tl4438544417%_)
                              (let ((_%$%e4438644420%_
                                     (gx#syntax-e _%$%tl4438544417%_)))
                                (let ((_%$%hd4438744424%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4438644420%_)))
                                      (_%$%tl4438844427%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4438644420%_))))
                                  (if (gx#stx-pair/null? _%$%tl4438844427%_)
                                      (let ((_g49245_
                                             (gx#syntax-split-splice
                                              _%$%tl4438844427%_
                                              '0)))
                                        (begin
                                          (let ((_g49246_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49245_)
                                                       (##values-length
                                                        _g49245_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49246_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49246_)))
                                          (let ((_%$%target4438944430%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49245_ 0)))
                                                (_%$%tl4439144433%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49245_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4439144433%_)
                                                (letrec ((_%$%loop4439244436%_
                                                          (lambda (_%$%hd4439044440%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4439644443%_)
                    (if (gx#stx-pair? _%$%hd4439044440%_)
                        (let ((_%$%e4439344445%_
                               (gx#syntax-e _%$%hd4439044440%_)))
                          (let ((_%$%lp-hd4439444449%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4439344445%_)))
                                (_%$%lp-tl4439544452%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4439344445%_))))
                            (_%$%loop4439244436%_
                             _%$%lp-tl4439544452%_
                             (cons _%$%lp-hd4439444449%_
                                   _%$%body4439644443%_))))
                        (let ((_%$%body4439744455%_
                               (reverse _%$%body4439644443%_)))
                          (if (gx#identifier? _%$%hd4438744424%_)
                              (cons (gx#datum->syntax '#f 'call/cc)
                                    (cons (cons (gx#datum->syntax '#f 'lambda)
                                                (cons (cons _%$%hd4438744424%_
                                                            '())
                                                      (foldr (lambda (_%$%g4447744480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g4447844483%_)
                       (cons _%$%g4447744480%_ _%$%g4447844483%_))
                     '()
                     _%$%body4439744455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              (_%$%g4437944403%_ _%$%g4438044407%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4439244436%_
                                                   _%$%target4438944430%_
                                                   '()))
                                                (_%$%g4437944403%_
                                                 _%$%g4438044407%_)))))
                                      (_%$%g4437944403%_ _%$%g4438044407%_))))
                              (_%$%g4437944403%_ _%$%g4438044407%_))))
                      (_%$%g4437944403%_ _%$%g4438044407%_)))))
          (_%$%g4437844486%_ _%$stx44375%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect|
      (lambda (_%$stx44491%_)
        (let* ((_%$%g4449544523%_
                (lambda (_%$%g4449644519%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4449644519%_)))
               (_%$%g4449444620%_
                (lambda (_%$%g4449644527%_)
                  (if (gx#stx-pair? _%$%g4449644527%_)
                      (let ((_%$%e4450044530%_
                             (gx#syntax-e _%$%g4449644527%_)))
                        (let ((_%$%hd4450144534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4450044530%_)))
                              (_%$%tl4450244537%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4450044530%_))))
                          (if (gx#stx-pair? _%$%tl4450244537%_)
                              (let ((_%$%e4450344540%_
                                     (gx#syntax-e _%$%tl4450244537%_)))
                                (let ((_%$%hd4450444544%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4450344540%_)))
                                      (_%$%tl4450544547%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4450344540%_))))
                                  (if (gx#stx-pair? _%$%tl4450544547%_)
                                      (let ((_%$%e4450644550%_
                                             (gx#syntax-e _%$%tl4450544547%_)))
                                        (let ((_%$%hd4450744554%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4450644550%_)))
                                              (_%$%tl4450844557%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4450644550%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4450844557%_)
                                              (let ((_g49247_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4450844557%_
                                                      '0)))
                                                (begin
                                                  (let ((_g49248_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49247_)
                                                               (##values-length
                                                                _g49247_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49248_ 2)))
                (error "Context expects 2 values" _g49248_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4450944560%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49247_
                                                            0)))
                                                        (_%$%tl4451144563%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49247_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4451144563%_)
                                                        (letrec ((_%$%loop4451244566%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4451044570%_ _%$%rest4451644573%_)
                            (if (gx#stx-pair? _%$%hd4451044570%_)
                                (let ((_%$%e4451344575%_
                                       (gx#syntax-e _%$%hd4451044570%_)))
                                  (let ((_%$%lp-hd4451444579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4451344575%_)))
                                        (_%$%lp-tl4451544582%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4451344575%_))))
                                    (_%$%loop4451244566%_
                                     _%$%lp-tl4451544582%_
                                     (cons _%$%lp-hd4451444579%_
                                           _%$%rest4451644573%_))))
                                (let ((_%$%rest4451744585%_
                                       (reverse _%$%rest4451644573%_)))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'with-unwind-protect)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%$%hd4450444544%_
                                                                '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%$%hd4450744554%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g4461144614%_
                                              _%$%g4461244617%_)
                                       (cons _%$%g4461144614%_
                                             _%$%g4461244617%_))
                                     '()
                                     _%$%rest4451744585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))
                  (_%$%loop4451244566%_ _%$%target4450944560%_ '()))
                (_%$%g4449544523%_ _%$%g4449644527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4449544523%_
                                               _%$%g4449644527%_))))
                                      (_%$%g4449544523%_ _%$%g4449644527%_))))
                              (_%$%g4449544523%_ _%$%g4449644527%_))))
                      (_%$%g4449544523%_ _%$%g4449644527%_)))))
          (_%$%g4449444620%_ _%$stx44491%_))))
    (define |gerbil/core/more-sugar[:0:]#unwind-protect!|
      (lambda (_%$stx44625%_)
        (let* ((_%$%g4462944657%_
                (lambda (_%$%g4463044653%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4463044653%_)))
               (_%$%g4462844754%_
                (lambda (_%$%g4463044661%_)
                  (if (gx#stx-pair? _%$%g4463044661%_)
                      (let ((_%$%e4463444664%_
                             (gx#syntax-e _%$%g4463044661%_)))
                        (let ((_%$%hd4463544668%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4463444664%_)))
                              (_%$%tl4463644671%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4463444664%_))))
                          (if (gx#stx-pair? _%$%tl4463644671%_)
                              (let ((_%$%e4463744674%_
                                     (gx#syntax-e _%$%tl4463644671%_)))
                                (let ((_%$%hd4463844678%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4463744674%_)))
                                      (_%$%tl4463944681%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4463744674%_))))
                                  (if (gx#stx-pair? _%$%tl4463944681%_)
                                      (let ((_%$%e4464044684%_
                                             (gx#syntax-e _%$%tl4463944681%_)))
                                        (let ((_%$%hd4464144688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4464044684%_)))
                                              (_%$%tl4464244691%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4464044684%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4464244691%_)
                                              (let ((_g49249_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4464244691%_
                                                      '0)))
                                                (begin
                                                  (let ((_g49250_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49249_)
                                                               (##values-length
                                                                _g49249_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49250_ 2)))
                (error "Context expects 2 values" _g49250_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4464344694%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49249_
                                                            0)))
                                                        (_%$%tl4464544697%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49249_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4464544697%_)
                                                        (letrec ((_%$%loop4464644700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4464444704%_ _%$%rest4465044707%_)
                            (if (gx#stx-pair? _%$%hd4464444704%_)
                                (let ((_%$%e4464744709%_
                                       (gx#syntax-e _%$%hd4464444704%_)))
                                  (let ((_%$%lp-hd4464844713%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4464744709%_)))
                                        (_%$%lp-tl4464944716%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4464744709%_))))
                                    (_%$%loop4464644700%_
                                     _%$%lp-tl4464944716%_
                                     (cons _%$%lp-hd4464844713%_
                                           _%$%rest4465044707%_))))
                                (let ((_%$%rest4465144719%_
                                       (reverse _%$%rest4465044707%_)))
                                  (cons (gx#datum->syntax
                                         '#f
                                         'with-unwind-protect!)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'lambda)
                                                    (cons '()
                                                          (cons _%$%hd4463844678%_
                                                                '())))
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'lambda)
                                                          (cons '()
                                                                (cons _%$%hd4464144688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (foldr (lambda (_%$%g4474544748%_
                                              _%$%g4474644751%_)
                                       (cons _%$%g4474544748%_
                                             _%$%g4474644751%_))
                                     '()
                                     _%$%rest4465144719%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))))))))
                  (_%$%loop4464644700%_ _%$%target4464344694%_ '()))
                (_%$%g4462944657%_ _%$%g4463044661%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4462944657%_
                                               _%$%g4463044661%_))))
                                      (_%$%g4462944657%_ _%$%g4463044661%_))))
                              (_%$%g4462944657%_ _%$%g4463044661%_))))
                      (_%$%g4462944657%_ _%$%g4463044661%_)))))
          (_%$%g4462844754%_ _%$stx44625%_))))
    (define |gerbil/core/more-sugar[:0:]#do|
      (lambda (_%$stx44759%_)
        (let* ((_%$%g4476344834%_
                (lambda (_%$%g4476444830%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4476444830%_)))
               (_%$%g4476245111%_
                (lambda (_%$%g4476444838%_)
                  (if (gx#stx-pair? _%$%g4476444838%_)
                      (let ((_%$%e4477144841%_
                             (gx#syntax-e _%$%g4476444838%_)))
                        (let ((_%$%hd4477244845%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4477144841%_)))
                              (_%$%tl4477344848%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4477144841%_))))
                          (if (gx#stx-pair? _%$%tl4477344848%_)
                              (let ((_%$%e4477444851%_
                                     (gx#syntax-e _%$%tl4477344848%_)))
                                (let ((_%$%hd4477544855%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4477444851%_)))
                                      (_%$%tl4477644858%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4477444851%_))))
                                  (if (gx#stx-pair/null? _%$%hd4477544855%_)
                                      (let ((_g49251_
                                             (gx#syntax-split-splice
                                              _%$%hd4477544855%_
                                              '0)))
                                        (begin
                                          (let ((_g49252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49251_)
                                                       (##values-length
                                                        _g49251_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49252_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49252_)))
                                          (let ((_%$%target4477744861%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49251_ 0)))
                                                (_%$%tl4477944864%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49251_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4477944864%_)
                                                (letrec ((_%$%loop4478044867%_
                                                          (lambda (_%$%hd4477844871%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4478444874%_
                           _%$%init4478544875%_
                           _%$%var4478644876%_)
                    (if (gx#stx-pair? _%$%hd4477844871%_)
                        (let ((_%$%e4478144878%_
                               (gx#syntax-e _%$%hd4477844871%_)))
                          (let ((_%$%lp-hd4478244882%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4478144878%_)))
                                (_%$%lp-tl4478344885%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4478144878%_))))
                            (if (gx#stx-pair? _%$%lp-hd4478244882%_)
                                (let ((_%$%e4479044888%_
                                       (gx#syntax-e _%$%lp-hd4478244882%_)))
                                  (let ((_%$%hd4479144892%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4479044888%_)))
                                        (_%$%tl4479244895%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4479044888%_))))
                                    (if (gx#stx-pair? _%$%tl4479244895%_)
                                        (let ((_%$%e4479344898%_
                                               (gx#syntax-e
                                                _%$%tl4479244895%_)))
                                          (let ((_%$%hd4479444902%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4479344898%_)))
                                                (_%$%tl4479544905%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4479344898%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4479544905%_)
                                                (let ((_g49253_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4479544905%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49254_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49253_)
                         (##values-length _g49253_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49254_ 2)))
                  (error "Context expects 2 values" _g49254_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4479644908%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49253_
                                                              0)))
                                                          (_%$%tl4479844911%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49253_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4479844911%_)
                                                          (letrec ((_%$%loop4479944914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4479744918%_ _%$%step4480344921%_)
                              (if (gx#stx-pair? _%$%hd4479744918%_)
                                  (let ((_%$%e4480044923%_
                                         (gx#syntax-e _%$%hd4479744918%_)))
                                    (let ((_%$%lp-hd4480144927%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4480044923%_)))
                                          (_%$%lp-tl4480244930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4480044923%_))))
                                      (_%$%loop4479944914%_
                                       _%$%lp-tl4480244930%_
                                       (cons _%$%lp-hd4480144927%_
                                             _%$%step4480344921%_))))
                                  (let ((_%$%step4480444933%_
                                         (reverse _%$%step4480344921%_)))
                                    (_%$%loop4478044867%_
                                     _%$%lp-tl4478344885%_
                                     (cons _%$%step4480444933%_
                                           _%$%step4478444874%_)
                                     (cons _%$%hd4479444902%_
                                           _%$%init4478544875%_)
                                     (cons _%$%hd4479144892%_
                                           _%$%var4478644876%_)))))))
                    (_%$%loop4479944914%_ _%$%target4479644908%_ '()))
                  (_%$%g4476344834%_ _%$%g4476444838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4476344834%_
                                                 _%$%g4476444838%_))))
                                        (_%$%g4476344834%_
                                         _%$%g4476444838%_))))
                                (_%$%g4476344834%_ _%$%g4476444838%_))))
                        (let ((_%$%step4478744936%_
                               (reverse _%$%step4478444874%_))
                              (_%$%init4478844938%_
                               (reverse _%$%init4478544875%_))
                              (_%$%var4478944939%_
                               (reverse _%$%var4478644876%_)))
                          (if (gx#stx-pair? _%$%tl4477644858%_)
                              (let ((_%$%e4480544941%_
                                     (gx#syntax-e _%$%tl4477644858%_)))
                                (let ((_%$%hd4480644945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4480544941%_)))
                                      (_%$%tl4480744948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4480544941%_))))
                                  (if (gx#stx-pair? _%$%hd4480644945%_)
                                      (let ((_%$%e4480844951%_
                                             (gx#syntax-e _%$%hd4480644945%_)))
                                        (let ((_%$%hd4480944955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4480844951%_)))
                                              (_%$%tl4481044958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4480844951%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4481044958%_)
                                              (let ((_g49255_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4481044958%_
                                                      '0)))
                                                (begin
                                                  (let ((_g49256_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49255_)
                                                               (##values-length
                                                                _g49255_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49256_ 2)))
                (error "Context expects 2 values" _g49256_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4481144961%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49255_
                                                            0)))
                                                        (_%$%tl4481344964%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49255_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4481344964%_)
                                                        (letrec ((_%$%loop4481444967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4481244971%_ _%$%fini4481844974%_)
                            (if (gx#stx-pair? _%$%hd4481244971%_)
                                (let ((_%$%e4481544976%_
                                       (gx#syntax-e _%$%hd4481244971%_)))
                                  (let ((_%$%lp-hd4481644980%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4481544976%_)))
                                        (_%$%lp-tl4481744983%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4481544976%_))))
                                    (_%$%loop4481444967%_
                                     _%$%lp-tl4481744983%_
                                     (cons _%$%lp-hd4481644980%_
                                           _%$%fini4481844974%_))))
                                (let ((_%$%fini4481944986%_
                                       (reverse _%$%fini4481844974%_)))
                                  (if (gx#stx-pair/null? _%$%tl4480744948%_)
                                      (let ((_g49257_
                                             (gx#syntax-split-splice
                                              _%$%tl4480744948%_
                                              '0)))
                                        (begin
                                          (let ((_g49258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49257_)
                                                       (##values-length
                                                        _g49257_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49258_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49258_)))
                                          (let ((_%$%target4482044989%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49257_ 0)))
                                                (_%$%tl4482244992%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49257_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4482244992%_)
                                                (letrec ((_%$%loop4482344995%_
                                                          (lambda (_%$%hd4482144999%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4482745002%_)
                    (if (gx#stx-pair? _%$%hd4482144999%_)
                        (let ((_%$%e4482445004%_
                               (gx#syntax-e _%$%hd4482144999%_)))
                          (let ((_%$%lp-hd4482545008%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4482445004%_)))
                                (_%$%lp-tl4482645011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4482445004%_))))
                            (_%$%loop4482344995%_
                             _%$%lp-tl4482645011%_
                             (cons _%$%lp-hd4482545008%_
                                   _%$%body4482745002%_))))
                        (let ((_%$%body4482845014%_
                               (reverse _%$%body4482745002%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4505645059%_
                                               _%$%g4505745062%_)
                                        (cons _%$%g4505645059%_
                                              _%$%g4505745062%_))
                                      '()
                                      _%$%var4478944939%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4478844938%_
                                                   _%$%var4478944939%_)
                                                  (foldr (lambda (_%$%g4506445077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4506545080%_
                          _%$%g4506645082%_)
                   (cons (cons _%$%g4506545080%_ (cons _%$%g4506445077%_ '()))
                         _%$%g4506645082%_))
                 '()
                 _%$%init4478844938%_
                 _%$%var4478944939%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'if)
                                                            (cons _%$%hd4480944955%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (cons '#!void
                                            (foldr (lambda (_%$%g4506745085%_
                                                            _%$%g4506845088%_)
                                                     (cons _%$%g4506745085%_
                                                           _%$%g4506845088%_))
                                                   '()
                                                   _%$%fini4481944986%_)))
                                (cons (cons (gx#datum->syntax '#f 'let)
                                            (cons '()
                                                  (foldr (lambda (_%$%g4506945091%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4507045094%_)
                   (cons _%$%g4506945091%_ _%$%g4507045094%_))
                 (cons (cons (gx#datum->syntax '#f '$loop)
                             (begin
                               (gx#syntax-check-splice-targets
                                _%$%step4478744936%_
                                _%$%var4478944939%_)
                               (foldr (lambda (_%$%g4507145097%_
                                               _%$%g4507245100%_
                                               _%$%g4507345102%_)
                                        (cons (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%$%g4507245100%_
                                                          (foldr (lambda (_%$%g4507445105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%$%g4507545108%_)
                           (cons _%$%g4507445105%_ _%$%g4507545108%_))
                         '()
                         _%$%g4507145097%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g4507345102%_))
                                      '()
                                      _%$%step4478744936%_
                                      _%$%var4478944939%_)))
                       '())
                 _%$%body4482845014%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4476344834%_ _%$%g4476444838%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4482344995%_
                                                   _%$%target4482044989%_
                                                   '()))
                                                (_%$%g4476344834%_
                                                 _%$%g4476444838%_)))))
                                      (_%$%g4476344834%_
                                       _%$%g4476444838%_)))))))
                  (_%$%loop4481444967%_ _%$%target4481144961%_ '()))
                (_%$%g4476344834%_ _%$%g4476444838%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4476344834%_
                                               _%$%g4476444838%_))))
                                      (_%$%g4476344834%_ _%$%g4476444838%_))))
                              (_%$%g4476344834%_ _%$%g4476444838%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4478044867%_
                                                   _%$%target4477744861%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4476344834%_
                                                 _%$%g4476444838%_)))))
                                      (_%$%g4476344834%_ _%$%g4476444838%_))))
                              (_%$%g4476344834%_ _%$%g4476444838%_))))
                      (_%$%g4476344834%_ _%$%g4476444838%_)))))
          (_%$%g4476245111%_ _%$stx44759%_))))
    (define |gerbil/core/more-sugar[:0:]#do-while|
      (lambda (_%$stx45119%_)
        (let* ((_%$%g4512345194%_
                (lambda (_%$%g4512445190%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4512445190%_)))
               (_%$%g4512245471%_
                (lambda (_%$%g4512445198%_)
                  (if (gx#stx-pair? _%$%g4512445198%_)
                      (let ((_%$%e4513145201%_
                             (gx#syntax-e _%$%g4512445198%_)))
                        (let ((_%$%hd4513245205%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4513145201%_)))
                              (_%$%tl4513345208%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4513145201%_))))
                          (if (gx#stx-pair? _%$%tl4513345208%_)
                              (let ((_%$%e4513445211%_
                                     (gx#syntax-e _%$%tl4513345208%_)))
                                (let ((_%$%hd4513545215%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4513445211%_)))
                                      (_%$%tl4513645218%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4513445211%_))))
                                  (if (gx#stx-pair/null? _%$%hd4513545215%_)
                                      (let ((_g49259_
                                             (gx#syntax-split-splice
                                              _%$%hd4513545215%_
                                              '0)))
                                        (begin
                                          (let ((_g49260_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49259_)
                                                       (##values-length
                                                        _g49259_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49260_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49260_)))
                                          (let ((_%$%target4513745221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49259_ 0)))
                                                (_%$%tl4513945224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49259_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4513945224%_)
                                                (letrec ((_%$%loop4514045227%_
                                                          (lambda (_%$%hd4513845231%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%step4514445234%_
                           _%$%init4514545235%_
                           _%$%var4514645236%_)
                    (if (gx#stx-pair? _%$%hd4513845231%_)
                        (let ((_%$%e4514145238%_
                               (gx#syntax-e _%$%hd4513845231%_)))
                          (let ((_%$%lp-hd4514245242%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4514145238%_)))
                                (_%$%lp-tl4514345245%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4514145238%_))))
                            (if (gx#stx-pair? _%$%lp-hd4514245242%_)
                                (let ((_%$%e4515045248%_
                                       (gx#syntax-e _%$%lp-hd4514245242%_)))
                                  (let ((_%$%hd4515145252%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4515045248%_)))
                                        (_%$%tl4515245255%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4515045248%_))))
                                    (if (gx#stx-pair? _%$%tl4515245255%_)
                                        (let ((_%$%e4515345258%_
                                               (gx#syntax-e
                                                _%$%tl4515245255%_)))
                                          (let ((_%$%hd4515445262%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4515345258%_)))
                                                (_%$%tl4515545265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4515345258%_))))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4515545265%_)
                                                (let ((_g49261_
                                                       (gx#syntax-split-splice
                                                        _%$%tl4515545265%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49262_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49261_)
                         (##values-length _g49261_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49262_ 2)))
                  (error "Context expects 2 values" _g49262_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4515645268%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49261_
                                                              0)))
                                                          (_%$%tl4515845271%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49261_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4515845271%_)
                                                          (letrec ((_%$%loop4515945274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4515745278%_ _%$%step4516345281%_)
                              (if (gx#stx-pair? _%$%hd4515745278%_)
                                  (let ((_%$%e4516045283%_
                                         (gx#syntax-e _%$%hd4515745278%_)))
                                    (let ((_%$%lp-hd4516145287%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4516045283%_)))
                                          (_%$%lp-tl4516245290%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4516045283%_))))
                                      (_%$%loop4515945274%_
                                       _%$%lp-tl4516245290%_
                                       (cons _%$%lp-hd4516145287%_
                                             _%$%step4516345281%_))))
                                  (let ((_%$%step4516445293%_
                                         (reverse _%$%step4516345281%_)))
                                    (_%$%loop4514045227%_
                                     _%$%lp-tl4514345245%_
                                     (cons _%$%step4516445293%_
                                           _%$%step4514445234%_)
                                     (cons _%$%hd4515445262%_
                                           _%$%init4514545235%_)
                                     (cons _%$%hd4515145252%_
                                           _%$%var4514645236%_)))))))
                    (_%$%loop4515945274%_ _%$%target4515645268%_ '()))
                  (_%$%g4512345194%_ _%$%g4512445198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4512345194%_
                                                 _%$%g4512445198%_))))
                                        (_%$%g4512345194%_
                                         _%$%g4512445198%_))))
                                (_%$%g4512345194%_ _%$%g4512445198%_))))
                        (let ((_%$%step4514745296%_
                               (reverse _%$%step4514445234%_))
                              (_%$%init4514845298%_
                               (reverse _%$%init4514545235%_))
                              (_%$%var4514945299%_
                               (reverse _%$%var4514645236%_)))
                          (if (gx#stx-pair? _%$%tl4513645218%_)
                              (let ((_%$%e4516545301%_
                                     (gx#syntax-e _%$%tl4513645218%_)))
                                (let ((_%$%hd4516645305%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4516545301%_)))
                                      (_%$%tl4516745308%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4516545301%_))))
                                  (if (gx#stx-pair? _%$%hd4516645305%_)
                                      (let ((_%$%e4516845311%_
                                             (gx#syntax-e _%$%hd4516645305%_)))
                                        (let ((_%$%hd4516945315%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e4516845311%_)))
                                              (_%$%tl4517045318%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e4516845311%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl4517045318%_)
                                              (let ((_g49263_
                                                     (gx#syntax-split-splice
                                                      _%$%tl4517045318%_
                                                      '0)))
                                                (begin
                                                  (let ((_g49264_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g49263_)
                                                               (##values-length
                                                                _g49263_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g49264_ 2)))
                (error "Context expects 2 values" _g49264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target4517145321%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49263_
                                                            0)))
                                                        (_%$%tl4517345324%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g49263_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4517345324%_)
                                                        (letrec ((_%$%loop4517445327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4517245331%_ _%$%fini4517845334%_)
                            (if (gx#stx-pair? _%$%hd4517245331%_)
                                (let ((_%$%e4517545336%_
                                       (gx#syntax-e _%$%hd4517245331%_)))
                                  (let ((_%$%lp-hd4517645340%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4517545336%_)))
                                        (_%$%lp-tl4517745343%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4517545336%_))))
                                    (_%$%loop4517445327%_
                                     _%$%lp-tl4517745343%_
                                     (cons _%$%lp-hd4517645340%_
                                           _%$%fini4517845334%_))))
                                (let ((_%$%fini4517945346%_
                                       (reverse _%$%fini4517845334%_)))
                                  (if (gx#stx-pair/null? _%$%tl4516745308%_)
                                      (let ((_g49265_
                                             (gx#syntax-split-splice
                                              _%$%tl4516745308%_
                                              '0)))
                                        (begin
                                          (let ((_g49266_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49265_)
                                                       (##values-length
                                                        _g49265_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49266_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49266_)))
                                          (let ((_%$%target4518045349%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49265_ 0)))
                                                (_%$%tl4518245352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49265_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4518245352%_)
                                                (letrec ((_%$%loop4518345355%_
                                                          (lambda (_%$%hd4518145359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4518745362%_)
                    (if (gx#stx-pair? _%$%hd4518145359%_)
                        (let ((_%$%e4518445364%_
                               (gx#syntax-e _%$%hd4518145359%_)))
                          (let ((_%$%lp-hd4518545368%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4518445364%_)))
                                (_%$%lp-tl4518645371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4518445364%_))))
                            (_%$%loop4518345355%_
                             _%$%lp-tl4518645371%_
                             (cons _%$%lp-hd4518545368%_
                                   _%$%body4518745362%_))))
                        (let ((_%$%body4518845374%_
                               (reverse _%$%body4518745362%_)))
                          (if (gx#stx-andmap
                               gx#identifier?
                               (foldr (lambda (_%$%g4541645419%_
                                               _%$%g4541745422%_)
                                        (cons _%$%g4541645419%_
                                              _%$%g4541745422%_))
                                      '()
                                      _%$%var4514945299%_))
                              (cons (gx#datum->syntax '#f 'let)
                                    (cons (gx#datum->syntax '#f '$loop)
                                          (cons (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%init4514845298%_
                                                   _%$%var4514945299%_)
                                                  (foldr (lambda (_%$%g4542445437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4542545440%_
                          _%$%g4542645442%_)
                   (cons (cons _%$%g4542545440%_ (cons _%$%g4542445437%_ '()))
                         _%$%g4542645442%_))
                 '()
                 _%$%init4514845298%_
                 _%$%var4514945299%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (foldr (lambda (_%$%g4542745445%_
                                                                _%$%g4542845448%_)
                                                         (cons _%$%g4542745445%_
                                                               _%$%g4542845448%_))
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'if)
                           (cons _%$%hd4516945315%_
                                 (cons (cons (gx#datum->syntax '#f '$loop)
                                             (begin
                                               (gx#syntax-check-splice-targets
                                                _%$%step4514745296%_
                                                _%$%var4514945299%_)
                                               (foldr (lambda (_%$%g4542945451%_
                                                               _%$%g4543045454%_
                                                               _%$%g4543145456%_)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'begin)
                            (cons _%$%g4543045454%_
                                  (foldr (lambda (_%$%g4543245459%_
                                                  _%$%g4543345462%_)
                                           (cons _%$%g4543245459%_
                                                 _%$%g4543345462%_))
                                         '()
                                         _%$%g4542945451%_)))
                      _%$%g4543145456%_))
              '()
              _%$%step4514745296%_
              _%$%var4514945299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'begin)
                                                   (cons '#!void
                                                         (foldr (lambda (_%$%g4543445465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g4543545468%_)
                          (cons _%$%g4543445465%_ _%$%g4543545468%_))
                        '()
                        _%$%fini4517945346%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                     '())
               _%$%body4518845374%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              (_%$%g4512345194%_ _%$%g4512445198%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4518345355%_
                                                   _%$%target4518045349%_
                                                   '()))
                                                (_%$%g4512345194%_
                                                 _%$%g4512445198%_)))))
                                      (_%$%g4512345194%_
                                       _%$%g4512445198%_)))))))
                  (_%$%loop4517445327%_ _%$%target4517145321%_ '()))
                (_%$%g4512345194%_ _%$%g4512445198%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g4512345194%_
                                               _%$%g4512445198%_))))
                                      (_%$%g4512345194%_ _%$%g4512445198%_))))
                              (_%$%g4512345194%_ _%$%g4512445198%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4514045227%_
                                                   _%$%target4513745221%_
                                                   '()
                                                   '()
                                                   '()))
                                                (_%$%g4512345194%_
                                                 _%$%g4512445198%_)))))
                                      (_%$%g4512345194%_ _%$%g4512445198%_))))
                              (_%$%g4512345194%_ _%$%g4512445198%_))))
                      (_%$%g4512345194%_ _%$%g4512445198%_)))))
          (_%$%g4512245471%_ _%$stx45119%_))))
    (define |gerbil/core/more-sugar[:0:]#while|
      (lambda (_%$stx45479%_)
        (let* ((_%$%g4548345507%_
                (lambda (_%$%g4548445503%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4548445503%_)))
               (_%$%g4548245590%_
                (lambda (_%$%g4548445511%_)
                  (if (gx#stx-pair? _%$%g4548445511%_)
                      (let ((_%$%e4548745514%_
                             (gx#syntax-e _%$%g4548445511%_)))
                        (let ((_%$%hd4548845518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4548745514%_)))
                              (_%$%tl4548945521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4548745514%_))))
                          (if (gx#stx-pair? _%$%tl4548945521%_)
                              (let ((_%$%e4549045524%_
                                     (gx#syntax-e _%$%tl4548945521%_)))
                                (let ((_%$%hd4549145528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4549045524%_)))
                                      (_%$%tl4549245531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4549045524%_))))
                                  (if (gx#stx-pair/null? _%$%tl4549245531%_)
                                      (let ((_g49267_
                                             (gx#syntax-split-splice
                                              _%$%tl4549245531%_
                                              '0)))
                                        (begin
                                          (let ((_g49268_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49267_)
                                                       (##values-length
                                                        _g49267_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49268_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49268_)))
                                          (let ((_%$%target4549345534%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49267_ 0)))
                                                (_%$%tl4549545537%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49267_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4549545537%_)
                                                (letrec ((_%$%loop4549645540%_
                                                          (lambda (_%$%hd4549445544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4550045547%_)
                    (if (gx#stx-pair? _%$%hd4549445544%_)
                        (let ((_%$%e4549745549%_
                               (gx#syntax-e _%$%hd4549445544%_)))
                          (let ((_%$%lp-hd4549845553%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4549745549%_)))
                                (_%$%lp-tl4549945556%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4549745549%_))))
                            (_%$%loop4549645540%_
                             _%$%lp-tl4549945556%_
                             (cons _%$%lp-hd4549845553%_
                                   _%$%body4550045547%_))))
                        (let ((_%$%body4550145559%_
                               (reverse _%$%body4550045547%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'when)
                                                        (cons _%$%hd4549145528%_
                                                              (foldr (lambda (_%$%g4558145584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4558245587%_)
                               (cons _%$%g4558145584%_ _%$%g4558245587%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4550145559%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4549645540%_
                                                   _%$%target4549345534%_
                                                   '()))
                                                (_%$%g4548345507%_
                                                 _%$%g4548445511%_)))))
                                      (_%$%g4548345507%_ _%$%g4548445511%_))))
                              (_%$%g4548345507%_ _%$%g4548445511%_))))
                      (_%$%g4548345507%_ _%$%g4548445511%_)))))
          (_%$%g4548245590%_ _%$stx45479%_))))
    (define |gerbil/core/more-sugar[:0:]#until|
      (lambda (_%$stx45595%_)
        (let* ((_%$%g4559945623%_
                (lambda (_%$%g4560045619%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4560045619%_)))
               (_%$%g4559845706%_
                (lambda (_%$%g4560045627%_)
                  (if (gx#stx-pair? _%$%g4560045627%_)
                      (let ((_%$%e4560345630%_
                             (gx#syntax-e _%$%g4560045627%_)))
                        (let ((_%$%hd4560445634%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4560345630%_)))
                              (_%$%tl4560545637%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4560345630%_))))
                          (if (gx#stx-pair? _%$%tl4560545637%_)
                              (let ((_%$%e4560645640%_
                                     (gx#syntax-e _%$%tl4560545637%_)))
                                (let ((_%$%hd4560745644%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4560645640%_)))
                                      (_%$%tl4560845647%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4560645640%_))))
                                  (if (gx#stx-pair/null? _%$%tl4560845647%_)
                                      (let ((_g49269_
                                             (gx#syntax-split-splice
                                              _%$%tl4560845647%_
                                              '0)))
                                        (begin
                                          (let ((_g49270_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49269_)
                                                       (##values-length
                                                        _g49269_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49270_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49270_)))
                                          (let ((_%$%target4560945650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49269_ 0)))
                                                (_%$%tl4561145653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49269_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4561145653%_)
                                                (letrec ((_%$%loop4561245656%_
                                                          (lambda (_%$%hd4561045660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body4561645663%_)
                    (if (gx#stx-pair? _%$%hd4561045660%_)
                        (let ((_%$%e4561345665%_
                               (gx#syntax-e _%$%hd4561045660%_)))
                          (let ((_%$%lp-hd4561445669%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4561345665%_)))
                                (_%$%lp-tl4561545672%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4561345665%_))))
                            (_%$%loop4561245656%_
                             _%$%lp-tl4561545672%_
                             (cons _%$%lp-hd4561445669%_
                                   _%$%body4561645663%_))))
                        (let ((_%$%body4561745675%_
                               (reverse _%$%body4561645663%_)))
                          (cons (gx#datum->syntax '#f 'let)
                                (cons (gx#datum->syntax '#f 'lp)
                                      (cons '()
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'unless)
                                                        (cons _%$%hd4560745644%_
                                                              (foldr (lambda (_%$%g4569745700%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%$%g4569845703%_)
                               (cons _%$%g4569745700%_ _%$%g4569845703%_))
                             (cons (cons (gx#datum->syntax '#f 'lp) '()) '())
                             _%$%body4561745675%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4561245656%_
                                                   _%$%target4560945650%_
                                                   '()))
                                                (_%$%g4559945623%_
                                                 _%$%g4560045627%_)))))
                                      (_%$%g4559945623%_ _%$%g4560045627%_))))
                              (_%$%g4559945623%_ _%$%g4560045627%_))))
                      (_%$%g4559945623%_ _%$%g4560045627%_)))))
          (_%$%g4559845706%_ _%$stx45595%_))))
    (define |gerbil/core/more-sugar[:0:]#catch|
      (lambda (_%$stx45711%_)
        (let ((_%$%g4571445721%_
               (lambda (_%$%g4571545717%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4571545717%_))))
          (_%$%g4571445721%_ _%$stx45711%_))))
    (define |gerbil/core/more-sugar[:0:]#finally|
      (lambda (_%$stx45725%_)
        (let ((_%$%g4572845735%_
               (lambda (_%$%g4572945731%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g4572945731%_))))
          (_%$%g4572845735%_ _%$stx45725%_))))
    (define |gerbil/core/more-sugar[:0:]#try|
      (lambda (_%stx45739%_)
        (letrec ((_%generate-thunk45742%_
                  (lambda (_%body47061%_)
                    (if (null? _%body47061%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; missing body"
                         _%stx45739%_)
                        (let* ((_%$%g4706447081%_
                                (lambda (_%$%g4706547077%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4706547077%_)))
                               (_%$%g4706347140%_
                                (lambda (_%$%g4706547085%_)
                                  (if (gx#stx-pair/null? _%$%g4706547085%_)
                                      (let ((_g49271_
                                             (gx#syntax-split-splice
                                              _%$%g4706547085%_
                                              '0)))
                                        (begin
                                          (let ((_g49272_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49271_)
                                                       (##values-length
                                                        _g49271_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49272_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49272_)))
                                          (let ((_%$%target4706747088%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49271_ 0)))
                                                (_%$%tl4706947091%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49271_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4706947091%_)
                                                (letrec ((_%$%loop4707047094%_
                                                          (lambda (_%$%hd4706847098%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e4707447101%_)
                    (if (gx#stx-pair? _%$%hd4706847098%_)
                        (let ((_%$%e4707147103%_
                               (gx#syntax-e _%$%hd4706847098%_)))
                          (let ((_%$%lp-hd4707247107%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4707147103%_)))
                                (_%$%lp-tl4707347110%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4707147103%_))))
                            (_%$%loop4707047094%_
                             _%$%lp-tl4707347110%_
                             (cons _%$%lp-hd4707247107%_ _%$%e4707447101%_))))
                        (let ((_%$%e4707547113%_ (reverse _%$%e4707447101%_)))
                          (cons (gx#datum->syntax '#f 'lambda)
                                (cons '()
                                      (foldr (lambda (_%$%g4713147134%_
                                                      _%$%g4713247137%_)
                                               (cons _%$%g4713147134%_
                                                     _%$%g4713247137%_))
                                             '()
                                             _%$%e4707547113%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4707047094%_
                                                   _%$%target4706747088%_
                                                   '()))
                                                (_%$%g4706447081%_
                                                 _%$%g4706547085%_)))))
                                      (_%$%g4706447081%_ _%$%g4706547085%_)))))
                          (_%$%g4706347140%_ (reverse _%body47061%_))))))
                 (_%generate-fini45744%_
                  (lambda (_%thunk46944%_ _%fini46946%_)
                    (let* ((_%$%g4694846972%_
                            (lambda (_%$%g4694946968%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4694946968%_)))
                           (_%$%g4694747057%_
                            (lambda (_%$%g4694946976%_)
                              (if (gx#stx-pair? _%$%g4694946976%_)
                                  (let ((_%$%e4695246979%_
                                         (gx#syntax-e _%$%g4694946976%_)))
                                    (let ((_%$%hd4695346983%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4695246979%_)))
                                          (_%$%tl4695446986%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4695246979%_))))
                                      (if (gx#stx-pair? _%$%tl4695446986%_)
                                          (let ((_%$%e4695546989%_
                                                 (gx#syntax-e
                                                  _%$%tl4695446986%_)))
                                            (let ((_%$%hd4695646993%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4695546989%_)))
                                                  (_%$%tl4695746996%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4695546989%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd4695646993%_)
                                                  (let ((_g49273_
                                                         (gx#syntax-split-splice
                                                          _%$%hd4695646993%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g49274_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g49273_)
                           (##values-length _g49273_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g49274_ 2)))
                    (error "Context expects 2 values" _g49274_)))
              (let ((_%$%target4695846999%_
                     (let () (declare (not safe)) (##values-ref _g49273_ 0)))
                    (_%$%tl4696047002%_
                     (let () (declare (not safe)) (##values-ref _g49273_ 1))))
                (if (gx#stx-null? _%$%tl4696047002%_)
                    (letrec ((_%$%loop4696147005%_
                              (lambda (_%$%hd4695947009%_ _%$%e4696547012%_)
                                (if (gx#stx-pair? _%$%hd4695947009%_)
                                    (let ((_%$%e4696247014%_
                                           (gx#syntax-e _%$%hd4695947009%_)))
                                      (let ((_%$%lp-hd4696347018%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4696247014%_)))
                                            (_%$%lp-tl4696447021%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4696247014%_))))
                                        (_%$%loop4696147005%_
                                         _%$%lp-tl4696447021%_
                                         (cons _%$%lp-hd4696347018%_
                                               _%$%e4696547012%_))))
                                    (let ((_%$%e4696647024%_
                                           (reverse _%$%e4696547012%_)))
                                      (if (gx#stx-null? _%$%tl4695746996%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-unwind-protect)
                                                (cons _%$%hd4695346983%_
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'lambda)
                          (cons '()
                                (foldr (lambda (_%$%g4704847051%_
                                                _%$%g4704947054%_)
                                         (cons _%$%g4704847051%_
                                               _%$%g4704947054%_))
                                       '()
                                       _%$%e4696647024%_)))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g4694846972%_
                                           _%$%g4694946976%_)))))))
                      (_%$%loop4696147005%_ _%$%target4695846999%_ '()))
                    (_%$%g4694846972%_ _%$%g4694946976%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4694846972%_
                                                   _%$%g4694946976%_))))
                                          (_%$%g4694846972%_
                                           _%$%g4694946976%_))))
                                  (_%$%g4694846972%_ _%$%g4694946976%_)))))
                      (_%$%g4694747057%_
                       (list _%thunk46944%_ _%fini46946%_)))))
                 (_%generate-catch45745%_
                  (lambda (_%handlers46359%_ _%thunk46361%_)
                    (let* ((_%$%g4636346371%_
                            (lambda (_%$%g4636446367%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g4636446367%_)))
                           (_%$%g4636246940%_
                            (lambda (_%$%g4636446375%_)
                              (let _%lp46390%_ ((_%rest46393%_
                                                 _%handlers46359%_)
                                                (_%clauses46395%_ '()))
                                (let* ((_%$%rest4639646404%_ _%rest46393%_)
                                       (_%$%else4639846535%_
                                        (lambda ()
                                          (let* ((_%$%g4641646440%_
                                                  (lambda (_%$%g4641746436%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4641746436%_)))
                                                 (_%$%g4641546531%_
                                                  (lambda (_%$%g4641746444%_)
                                                    (if (gx#stx-pair?
                                                         _%$%g4641746444%_)
                                                        (let ((_%$%e4642046447%_
                                                               (gx#syntax-e
                                                                _%$%g4641746444%_)))
                                                          (let ((_%$%hd4642146451%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4642046447%_)))
                        (_%$%tl4642246454%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4642046447%_))))
                    (if (gx#stx-pair/null? _%$%hd4642146451%_)
                        (let ((_g49275_
                               (gx#syntax-split-splice _%$%hd4642146451%_ '0)))
                          (begin
                            (let ((_g49276_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g49275_)
                                         (##values-length _g49275_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g49276_ 2)))
                                  (error "Context expects 2 values" _g49276_)))
                            (let ((_%$%target4642346457%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g49275_ 0)))
                                  (_%$%tl4642546460%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g49275_ 1))))
                              (if (gx#stx-null? _%$%tl4642546460%_)
                                  (letrec ((_%$%loop4642646463%_
                                            (lambda (_%$%hd4642446467%_
                                                     _%$%clause4643046470%_)
                                              (if (gx#stx-pair?
                                                   _%$%hd4642446467%_)
                                                  (let ((_%$%e4642746472%_
                                                         (gx#syntax-e
                                                          _%$%hd4642446467%_)))
                                                    (let ((_%$%lp-hd4642846476%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4642746472%_)))
                                                          (_%$%lp-tl4642946479%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4642746472%_))))
                                                      (_%$%loop4642646463%_
                                                       _%$%lp-tl4642946479%_
                                                       (cons _%$%lp-hd4642846476%_
                                                             _%$%clause4643046470%_))))
                                                  (let ((_%$%clause4643146482%_
                                                         (reverse _%$%clause4643046470%_)))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4642246454%_)
                                                        (let ((_%$%e4643246485%_
                                                               (gx#syntax-e
                                                                _%$%tl4642246454%_)))
                                                          (let ((_%$%hd4643346489%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4643246485%_)))
                        (_%$%tl4643446492%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4643246485%_))))
                    (if (gx#stx-null? _%$%tl4643446492%_)
                        (cons (gx#datum->syntax '#f 'with-catch)
                              (cons (cons (gx#datum->syntax '#f 'lambda)
                                          (cons (cons _%$%g4636446375%_ '())
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'cond)
                                                            (foldr (lambda (_%$%g4652246525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g4652346528%_)
                             (cons _%$%g4652246525%_ _%$%g4652346528%_))
                           (cons (cons (gx#datum->syntax '#f 'else)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'raise)
                                                   (cons _%$%g4636446375%_
                                                         '()))
                                             '()))
                                 '())
                           _%$%clause4643146482%_))
              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%$%hd4643346489%_ '())))
                        (_%$%g4641646440%_ _%$%g4641746444%_))))
                (_%$%g4641646440%_ _%$%g4641746444%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (_%$%loop4642646463%_
                                     _%$%target4642346457%_
                                     '()))
                                  (_%$%g4641646440%_ _%$%g4641746444%_)))))
                        (_%$%g4641646440%_ _%$%g4641746444%_))))
                (_%$%g4641646440%_ _%$%g4641746444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g4641546531%_
                                             (list _%clauses46395%_
                                                   _%thunk46361%_)))))
                                       (_%$%K4640046924%_
                                        (lambda (_%rest46539%_ _%hd46541%_)
                                          (let* ((_%__stx4885348854%_
                                                  _%hd46541%_)
                                                 (_%$%g4654646616%_
                                                  (lambda ()
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%__stx4885348854%_))))
                                            (let ((_%__kont4885648857%_
                                                   (lambda (_%$%g4654846903%_
                                                            _%$%g4654946905%_)
                                                     (_%lp46390%_
                                                      _%rest46539%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4654946905%_ '()))
                                (cons _%$%g4636446375%_ '()))
                          (cons (gx#datum->syntax '#f '=>)
                                (cons _%$%g4654846903%_ '())))
                    _%clauses46395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4885848859%_
                                                   (lambda (_%$%g4655946835%_
                                                            _%$%g4656046837%_
                                                            _%$%g4656146838%_)
                                                     (_%lp46390%_
                                                      _%rest46539%_
                                                      (cons (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       '#f
                                       '?)
                                      (cons _%$%g4656146838%_ '()))
                                (cons _%$%g4636446375%_ '()))
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4656046837%_
                                                        (cons _%$%g4636446375%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4685746860%_
                                                            _%$%g4685846863%_)
                                                     (cons _%$%g4685746860%_
                                                           _%$%g4685846863%_))
                                                   '()
                                                   _%$%g4655946835%_)))
                                '()))
                    _%clauses46395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4886248863%_
                                                   (lambda (_%$%g4658046743%_
                                                            _%$%g4658146745%_)
                                                     (_%lp46390%_
                                                      _%rest46539%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'let)
                                      (cons (cons (cons _%$%g4658146745%_
                                                        (cons _%$%g4636446375%_
                                                              '()))
                                                  '())
                                            (foldr (lambda (_%$%g4676146764%_
                                                            _%$%g4676246767%_)
                                                     (cons _%$%g4676146764%_
                                                           _%$%g4676246767%_))
                                                   '()
                                                   _%$%g4658046743%_)))
                                '()))
                    _%clauses46395%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont4886648867%_
                                                   (lambda (_%$%g4659746661%_
                                                            _%$%g4659846663%_)
                                                     (_%lp46390%_
                                                      _%rest46539%_
                                                      (cons (cons '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'begin)
                                      (foldr (lambda (_%$%g4667946682%_
                                                      _%$%g4668046685%_)
                                               (cons _%$%g4667946682%_
                                                     _%$%g4668046685%_))
                                             '()
                                             _%$%g4659746661%_))
                                '()))
                    _%clauses46395%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__match4895848959%_
                                                      (lambda (_%$%e4659946623%_
                                                               _%$%hd4660046627%_
                                                               _%$%tl4660146630%_
                                                               _%__splice4886848869%_
                                                               _%$%target4660246633%_
                                                               _%$%tl4660446636%_)
                                                        (letrec ((_%$%loop4660546639%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4660346643%_ _%$%body4660946646%_)
                            (if (gx#stx-pair? _%$%hd4660346643%_)
                                (let ((_%$%e4660646648%_
                                       (gx#syntax-e _%$%hd4660346643%_)))
                                  (let ((_%$%lp-tl4660846655%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4660646648%_)))
                                        (_%$%lp-hd4660746652%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4660646648%_))))
                                    (_%$%loop4660546639%_
                                     _%$%lp-tl4660846655%_
                                     (cons _%$%lp-hd4660746652%_
                                           _%$%body4660946646%_))))
                                (let ((_%$%body4661046658%_
                                       (reverse _%$%body4660946646%_)))
                                  (let ((_%$%g4659746661%_
                                         _%$%body4661046658%_)
                                        (_%$%g4659846663%_ _%$%hd4660046627%_))
                                    (if (gx#underscore? _%$%g4659846663%_)
                                        (_%__kont4886648867%_
                                         _%$%g4659746661%_
                                         _%$%g4659846663%_)
                                        (_%$%g4654646616%_))))))))
                  (_%$%loop4660546639%_ _%$%target4660246633%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4894448945%_
                                                      (lambda (_%$%e4658246695%_
                                                               _%$%hd4658346699%_
                                                               _%$%tl4658446702%_
                                                               _%$%e4658546705%_
                                                               _%$%hd4658646709%_
                                                               _%$%tl4658746712%_
                                                               _%__splice4886448865%_
                                                               _%$%target4658846715%_
                                                               _%$%tl4659046718%_)
                                                        (letrec ((_%$%loop4659146721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4658946725%_ _%$%body4659546728%_)
                            (if (gx#stx-pair? _%$%hd4658946725%_)
                                (let ((_%$%e4659246730%_
                                       (gx#syntax-e _%$%hd4658946725%_)))
                                  (let ((_%$%lp-tl4659446737%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4659246730%_)))
                                        (_%$%lp-hd4659346734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4659246730%_))))
                                    (_%$%loop4659146721%_
                                     _%$%lp-tl4659446737%_
                                     (cons _%$%lp-hd4659346734%_
                                           _%$%body4659546728%_))))
                                (let ((_%$%body4659646740%_
                                       (reverse _%$%body4659546728%_)))
                                  (let ((_%$%g4658046743%_
                                         _%$%body4659646740%_)
                                        (_%$%g4658146745%_ _%$%hd4658646709%_))
                                    (if (gx#identifier? _%$%g4658146745%_)
                                        (_%__kont4886248863%_
                                         _%$%g4658046743%_
                                         _%$%g4658146745%_)
                                        (_%__match4895848959%_
                                         _%$%e4658246695%_
                                         _%$%hd4658346699%_
                                         _%$%tl4658446702%_
                                         _%__splice4886448865%_
                                         _%$%target4658846715%_
                                         _%$%tl4659046718%_))))))))
                  (_%$%loop4659146721%_ _%$%target4658846715%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__match4892248923%_
                                                      (lambda (_%$%e4656246777%_
                                                               _%$%hd4656346781%_
                                                               _%$%tl4656446784%_
                                                               _%$%e4656546787%_
                                                               _%$%hd4656646791%_
                                                               _%$%tl4656746794%_
                                                               _%$%e4656846797%_
                                                               _%$%hd4656946801%_
                                                               _%$%tl4657046804%_
                                                               _%__splice4886048861%_
                                                               _%$%target4657146807%_
                                                               _%$%tl4657346810%_)
                                                        (letrec ((_%$%loop4657446813%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd4657246817%_ _%$%body4657846820%_)
                            (if (gx#stx-pair? _%$%hd4657246817%_)
                                (let ((_%$%e4657546822%_
                                       (gx#syntax-e _%$%hd4657246817%_)))
                                  (let ((_%$%lp-tl4657746829%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4657546822%_)))
                                        (_%$%lp-hd4657646826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4657546822%_))))
                                    (_%$%loop4657446813%_
                                     _%$%lp-tl4657746829%_
                                     (cons _%$%lp-hd4657646826%_
                                           _%$%body4657846820%_))))
                                (let ((_%$%body4657946832%_
                                       (reverse _%$%body4657846820%_)))
                                  (let ((_%$%g4655946835%_
                                         _%$%body4657946832%_)
                                        (_%$%g4656046837%_ _%$%hd4656946801%_)
                                        (_%$%g4656146838%_ _%$%hd4656646791%_))
                                    (if (gx#identifier? _%$%g4656046837%_)
                                        (_%__kont4885848859%_
                                         _%$%g4655946835%_
                                         _%$%g4656046837%_
                                         _%$%g4656146838%_)
                                        (_%__match4895848959%_
                                         _%$%e4656246777%_
                                         _%$%hd4656346781%_
                                         _%$%tl4656446784%_
                                         _%__splice4886048861%_
                                         _%$%target4657146807%_
                                         _%$%tl4657346810%_))))))))
                  (_%$%loop4657446813%_ _%$%target4657146807%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx4885348854%_)
                                                    (let ((_%$%e4655046873%_
                                                           (gx#syntax-e
                                                            _%__stx4885348854%_)))
                                                      (let ((_%$%tl4655246880%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e4655046873%_)))
                    (_%$%hd4655146877%_
                     (let () (declare (not safe)) (##car _%$%e4655046873%_))))
                (if (gx#stx-pair? _%$%tl4655246880%_)
                    (let ((_%$%e4655346883%_ (gx#syntax-e _%$%tl4655246880%_)))
                      (let ((_%$%tl4655546890%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e4655346883%_)))
                            (_%$%hd4655446887%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e4655346883%_))))
                        (if (gx#identifier? _%$%hd4655446887%_)
                            (if (gx#free-identifier=?
                                 |gerbil/core/more-sugar[1]#_g49277_|
                                 _%$%hd4655446887%_)
                                (if (gx#stx-pair? _%$%tl4655546890%_)
                                    (let ((_%$%e4655646893%_
                                           (gx#syntax-e _%$%tl4655546890%_)))
                                      (let ((_%$%tl4655846900%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4655646893%_)))
                                            (_%$%hd4655746897%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4655646893%_))))
                                        (if (gx#stx-null? _%$%tl4655846900%_)
                                            (_%__kont4885648857%_
                                             _%$%hd4655746897%_
                                             _%$%hd4655146877%_)
                                            (if (gx#stx-pair?
                                                 _%$%hd4655146877%_)
                                                (let ((_%$%e4656546787%_
                                                       (gx#syntax-e
                                                        _%$%hd4655146877%_)))
                                                  (let ((_%$%tl4656746794%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4656546787%_)))
                                                        (_%$%hd4656646791%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4656546787%_))))
                                                    (if (gx#stx-pair?
                                                         _%$%tl4656746794%_)
                                                        (let ((_%$%e4656846797%_
                                                               (gx#syntax-e
                                                                _%$%tl4656746794%_)))
                                                          (let ((_%$%tl4657046804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4656846797%_)))
                        (_%$%hd4656946801%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4656846797%_))))
                    (if (gx#stx-null? _%$%tl4657046804%_)
                        (if (gx#stx-pair/null? _%$%tl4655246880%_)
                            (let ((_%__splice4886048861%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4655246880%_
                                    '0)))
                              (let ((_%$%tl4657346810%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4886048861%_
                                        '1)))
                                    (_%$%target4657146807%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4886048861%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4657346810%_)
                                    (_%__match4892248923%_
                                     _%$%e4655046873%_
                                     _%$%hd4655146877%_
                                     _%$%tl4655246880%_
                                     _%$%e4656546787%_
                                     _%$%hd4656646791%_
                                     _%$%tl4656746794%_
                                     _%$%e4656846797%_
                                     _%$%hd4656946801%_
                                     _%$%tl4657046804%_
                                     _%__splice4886048861%_
                                     _%$%target4657146807%_
                                     _%$%tl4657346810%_)
                                    (_%$%g4654646616%_))))
                            (_%$%g4654646616%_))
                        (if (gx#stx-pair/null? _%$%tl4655246880%_)
                            (let ((_%__splice4886848869%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4655246880%_
                                    '0)))
                              (let ((_%$%tl4660446636%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4886848869%_
                                        '1)))
                                    (_%$%target4660246633%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4886848869%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4660446636%_)
                                    (_%__match4895848959%_
                                     _%$%e4655046873%_
                                     _%$%hd4655146877%_
                                     _%$%tl4655246880%_
                                     _%__splice4886848869%_
                                     _%$%target4660246633%_
                                     _%$%tl4660446636%_)
                                    (_%$%g4654646616%_))))
                            (_%$%g4654646616%_)))))
                (if (gx#stx-null? _%$%tl4656746794%_)
                    (if (gx#stx-pair/null? _%$%tl4655246880%_)
                        (let ((_%__splice4886448865%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4655246880%_
                                '0)))
                          (let ((_%$%tl4659046718%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4886448865%_ '1)))
                                (_%$%target4658846715%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4886448865%_ '0))))
                            (if (gx#stx-null? _%$%tl4659046718%_)
                                (_%__match4894448945%_
                                 _%$%e4655046873%_
                                 _%$%hd4655146877%_
                                 _%$%tl4655246880%_
                                 _%$%e4656546787%_
                                 _%$%hd4656646791%_
                                 _%$%tl4656746794%_
                                 _%__splice4886448865%_
                                 _%$%target4658846715%_
                                 _%$%tl4659046718%_)
                                (_%$%g4654646616%_))))
                        (_%$%g4654646616%_))
                    (if (gx#stx-pair/null? _%$%tl4655246880%_)
                        (let ((_%__splice4886848869%_
                               (gx#syntax-split-splice->vector
                                _%$%tl4655246880%_
                                '0)))
                          (let ((_%$%tl4660446636%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4886848869%_ '1)))
                                (_%$%target4660246633%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _%__splice4886848869%_ '0))))
                            (if (gx#stx-null? _%$%tl4660446636%_)
                                (_%__match4895848959%_
                                 _%$%e4655046873%_
                                 _%$%hd4655146877%_
                                 _%$%tl4655246880%_
                                 _%__splice4886848869%_
                                 _%$%target4660246633%_
                                 _%$%tl4660446636%_)
                                (_%$%g4654646616%_))))
                        (_%$%g4654646616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4655246880%_)
                                                    (let ((_%__splice4886848869%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4655246880%_
                                                            '0)))
                                                      (let ((_%$%tl4660446636%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4886848869%_ '1)))
                    (_%$%target4660246633%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4886848869%_ '0))))
                (if (gx#stx-null? _%$%tl4660446636%_)
                    (_%__match4895848959%_
                     _%$%e4655046873%_
                     _%$%hd4655146877%_
                     _%$%tl4655246880%_
                     _%__splice4886848869%_
                     _%$%target4660246633%_
                     _%$%tl4660446636%_)
                    (_%$%g4654646616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4654646616%_))))))
                                    (if (gx#stx-pair? _%$%hd4655146877%_)
                                        (let ((_%$%e4656546787%_
                                               (gx#syntax-e
                                                _%$%hd4655146877%_)))
                                          (let ((_%$%tl4656746794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4656546787%_)))
                                                (_%$%hd4656646791%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4656546787%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl4656746794%_)
                                                (let ((_%$%e4656846797%_
                                                       (gx#syntax-e
                                                        _%$%tl4656746794%_)))
                                                  (let ((_%$%tl4657046804%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e4656846797%_)))
                                                        (_%$%hd4656946801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e4656846797%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4657046804%_)
                                                        (if (gx#stx-pair/null?
                                                             _%$%tl4655246880%_)
                                                            (let ((_%__splice4886048861%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-split-splice->vector
                            _%$%tl4655246880%_
                            '0)))
                      (let ((_%$%tl4657346810%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4886048861%_ '1)))
                            (_%$%target4657146807%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4886048861%_ '0))))
                        (if (gx#stx-null? _%$%tl4657346810%_)
                            (_%__match4892248923%_
                             _%$%e4655046873%_
                             _%$%hd4655146877%_
                             _%$%tl4655246880%_
                             _%$%e4656546787%_
                             _%$%hd4656646791%_
                             _%$%tl4656746794%_
                             _%$%e4656846797%_
                             _%$%hd4656946801%_
                             _%$%tl4657046804%_
                             _%__splice4886048861%_
                             _%$%target4657146807%_
                             _%$%tl4657346810%_)
                            (_%$%g4654646616%_))))
                    (_%$%g4654646616%_))
                (if (gx#stx-pair/null? _%$%tl4655246880%_)
                    (let ((_%__splice4886848869%_
                           (gx#syntax-split-splice->vector
                            _%$%tl4655246880%_
                            '0)))
                      (let ((_%$%tl4660446636%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4886848869%_ '1)))
                            (_%$%target4660246633%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice4886848869%_ '0))))
                        (if (gx#stx-null? _%$%tl4660446636%_)
                            (_%__match4895848959%_
                             _%$%e4655046873%_
                             _%$%hd4655146877%_
                             _%$%tl4655246880%_
                             _%__splice4886848869%_
                             _%$%target4660246633%_
                             _%$%tl4660446636%_)
                            (_%$%g4654646616%_))))
                    (_%$%g4654646616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-null?
                                                     _%$%tl4656746794%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4655246880%_)
                                                        (let ((_%__splice4886448865%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4655246880%_
                                                                '0)))
                                                          (let ((_%$%tl4659046718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886448865%_ '1)))
                        (_%$%target4658846715%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886448865%_ '0))))
                    (if (gx#stx-null? _%$%tl4659046718%_)
                        (_%__match4894448945%_
                         _%$%e4655046873%_
                         _%$%hd4655146877%_
                         _%$%tl4655246880%_
                         _%$%e4656546787%_
                         _%$%hd4656646791%_
                         _%$%tl4656746794%_
                         _%__splice4886448865%_
                         _%$%target4658846715%_
                         _%$%tl4659046718%_)
                        (_%$%g4654646616%_))))
                (_%$%g4654646616%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4655246880%_)
                                                        (let ((_%__splice4886848869%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4655246880%_
                                                                '0)))
                                                          (let ((_%$%tl4660446636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886848869%_ '1)))
                        (_%$%target4660246633%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886848869%_ '0))))
                    (if (gx#stx-null? _%$%tl4660446636%_)
                        (_%__match4895848959%_
                         _%$%e4655046873%_
                         _%$%hd4655146877%_
                         _%$%tl4655246880%_
                         _%__splice4886848869%_
                         _%$%target4660246633%_
                         _%$%tl4660446636%_)
                        (_%$%g4654646616%_))))
                (_%$%g4654646616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (gx#stx-pair/null?
                                             _%$%tl4655246880%_)
                                            (let ((_%__splice4886848869%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4655246880%_
                                                    '0)))
                                              (let ((_%$%tl4660446636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4886848869%_
                                                        '1)))
                                                    (_%$%target4660246633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4886848869%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4660446636%_)
                                                    (_%__match4895848959%_
                                                     _%$%e4655046873%_
                                                     _%$%hd4655146877%_
                                                     _%$%tl4655246880%_
                                                     _%__splice4886848869%_
                                                     _%$%target4660246633%_
                                                     _%$%tl4660446636%_)
                                                    (_%$%g4654646616%_))))
                                            (_%$%g4654646616%_))))
                                (if (gx#stx-pair? _%$%hd4655146877%_)
                                    (let ((_%$%e4656546787%_
                                           (gx#syntax-e _%$%hd4655146877%_)))
                                      (let ((_%$%tl4656746794%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4656546787%_)))
                                            (_%$%hd4656646791%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4656546787%_))))
                                        (if (gx#stx-pair? _%$%tl4656746794%_)
                                            (let ((_%$%e4656846797%_
                                                   (gx#syntax-e
                                                    _%$%tl4656746794%_)))
                                              (let ((_%$%tl4657046804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e4656846797%_)))
                                                    (_%$%hd4656946801%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e4656846797%_))))
                                                (if (gx#stx-null?
                                                     _%$%tl4657046804%_)
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4655246880%_)
                                                        (let ((_%__splice4886048861%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4655246880%_
                                                                '0)))
                                                          (let ((_%$%tl4657346810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886048861%_ '1)))
                        (_%$%target4657146807%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886048861%_ '0))))
                    (if (gx#stx-null? _%$%tl4657346810%_)
                        (_%__match4892248923%_
                         _%$%e4655046873%_
                         _%$%hd4655146877%_
                         _%$%tl4655246880%_
                         _%$%e4656546787%_
                         _%$%hd4656646791%_
                         _%$%tl4656746794%_
                         _%$%e4656846797%_
                         _%$%hd4656946801%_
                         _%$%tl4657046804%_
                         _%__splice4886048861%_
                         _%$%target4657146807%_
                         _%$%tl4657346810%_)
                        (_%$%g4654646616%_))))
                (_%$%g4654646616%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair/null?
                                                         _%$%tl4655246880%_)
                                                        (let ((_%__splice4886848869%_
                                                               (gx#syntax-split-splice->vector
                                                                _%$%tl4655246880%_
                                                                '0)))
                                                          (let ((_%$%tl4660446636%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886848869%_ '1)))
                        (_%$%target4660246633%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice4886848869%_ '0))))
                    (if (gx#stx-null? _%$%tl4660446636%_)
                        (_%__match4895848959%_
                         _%$%e4655046873%_
                         _%$%hd4655146877%_
                         _%$%tl4655246880%_
                         _%__splice4886848869%_
                         _%$%target4660246633%_
                         _%$%tl4660446636%_)
                        (_%$%g4654646616%_))))
                (_%$%g4654646616%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (gx#stx-null?
                                                 _%$%tl4656746794%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4655246880%_)
                                                    (let ((_%__splice4886448865%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4655246880%_
                                                            '0)))
                                                      (let ((_%$%tl4659046718%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4886448865%_ '1)))
                    (_%$%target4658846715%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4886448865%_ '0))))
                (if (gx#stx-null? _%$%tl4659046718%_)
                    (_%__match4894448945%_
                     _%$%e4655046873%_
                     _%$%hd4655146877%_
                     _%$%tl4655246880%_
                     _%$%e4656546787%_
                     _%$%hd4656646791%_
                     _%$%tl4656746794%_
                     _%__splice4886448865%_
                     _%$%target4658846715%_
                     _%$%tl4659046718%_)
                    (_%$%g4654646616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4654646616%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4655246880%_)
                                                    (let ((_%__splice4886848869%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4655246880%_
                                                            '0)))
                                                      (let ((_%$%tl4660446636%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4886848869%_ '1)))
                    (_%$%target4660246633%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4886848869%_ '0))))
                (if (gx#stx-null? _%$%tl4660446636%_)
                    (_%__match4895848959%_
                     _%$%e4655046873%_
                     _%$%hd4655146877%_
                     _%$%tl4655246880%_
                     _%__splice4886848869%_
                     _%$%target4660246633%_
                     _%$%tl4660446636%_)
                    (_%$%g4654646616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4654646616%_))))))
                                    (if (gx#stx-pair/null? _%$%tl4655246880%_)
                                        (let ((_%__splice4886848869%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4655246880%_
                                                '0)))
                                          (let ((_%$%tl4660446636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4886848869%_
                                                    '1)))
                                                (_%$%target4660246633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4886848869%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4660446636%_)
                                                (_%__match4895848959%_
                                                 _%$%e4655046873%_
                                                 _%$%hd4655146877%_
                                                 _%$%tl4655246880%_
                                                 _%__splice4886848869%_
                                                 _%$%target4660246633%_
                                                 _%$%tl4660446636%_)
                                                (_%$%g4654646616%_))))
                                        (_%$%g4654646616%_))))
                            (if (gx#stx-pair? _%$%hd4655146877%_)
                                (let ((_%$%e4656546787%_
                                       (gx#syntax-e _%$%hd4655146877%_)))
                                  (let ((_%$%tl4656746794%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4656546787%_)))
                                        (_%$%hd4656646791%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4656546787%_))))
                                    (if (gx#stx-pair? _%$%tl4656746794%_)
                                        (let ((_%$%e4656846797%_
                                               (gx#syntax-e
                                                _%$%tl4656746794%_)))
                                          (let ((_%$%tl4657046804%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e4656846797%_)))
                                                (_%$%hd4656946801%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e4656846797%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl4657046804%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4655246880%_)
                                                    (let ((_%__splice4886048861%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4655246880%_
                                                            '0)))
                                                      (let ((_%$%tl4657346810%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4886048861%_ '1)))
                    (_%$%target4657146807%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4886048861%_ '0))))
                (if (gx#stx-null? _%$%tl4657346810%_)
                    (_%__match4892248923%_
                     _%$%e4655046873%_
                     _%$%hd4655146877%_
                     _%$%tl4655246880%_
                     _%$%e4656546787%_
                     _%$%hd4656646791%_
                     _%$%tl4656746794%_
                     _%$%e4656846797%_
                     _%$%hd4656946801%_
                     _%$%tl4657046804%_
                     _%__splice4886048861%_
                     _%$%target4657146807%_
                     _%$%tl4657346810%_)
                    (_%$%g4654646616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4654646616%_))
                                                (if (gx#stx-pair/null?
                                                     _%$%tl4655246880%_)
                                                    (let ((_%__splice4886848869%_
                                                           (gx#syntax-split-splice->vector
                                                            _%$%tl4655246880%_
                                                            '0)))
                                                      (let ((_%$%tl4660446636%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice4886848869%_ '1)))
                    (_%$%target4660246633%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice4886848869%_ '0))))
                (if (gx#stx-null? _%$%tl4660446636%_)
                    (_%__match4895848959%_
                     _%$%e4655046873%_
                     _%$%hd4655146877%_
                     _%$%tl4655246880%_
                     _%__splice4886848869%_
                     _%$%target4660246633%_
                     _%$%tl4660446636%_)
                    (_%$%g4654646616%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4654646616%_)))))
                                        (if (gx#stx-null? _%$%tl4656746794%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4655246880%_)
                                                (let ((_%__splice4886448865%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4655246880%_
                                                        '0)))
                                                  (let ((_%$%tl4659046718%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4886448865%_
                                                            '1)))
                                                        (_%$%target4658846715%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4886448865%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4659046718%_)
                                                        (_%__match4894448945%_
                                                         _%$%e4655046873%_
                                                         _%$%hd4655146877%_
                                                         _%$%tl4655246880%_
                                                         _%$%e4656546787%_
                                                         _%$%hd4656646791%_
                                                         _%$%tl4656746794%_
                                                         _%__splice4886448865%_
                                                         _%$%target4658846715%_
                                                         _%$%tl4659046718%_)
                                                        (_%$%g4654646616%_))))
                                                (_%$%g4654646616%_))
                                            (if (gx#stx-pair/null?
                                                 _%$%tl4655246880%_)
                                                (let ((_%__splice4886848869%_
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl4655246880%_
                                                        '0)))
                                                  (let ((_%$%tl4660446636%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4886848869%_
                                                            '1)))
                                                        (_%$%target4660246633%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice4886848869%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%$%tl4660446636%_)
                                                        (_%__match4895848959%_
                                                         _%$%e4655046873%_
                                                         _%$%hd4655146877%_
                                                         _%$%tl4655246880%_
                                                         _%__splice4886848869%_
                                                         _%$%target4660246633%_
                                                         _%$%tl4660446636%_)
                                                        (_%$%g4654646616%_))))
                                                (_%$%g4654646616%_))))))
                                (if (gx#stx-pair/null? _%$%tl4655246880%_)
                                    (let ((_%__splice4886848869%_
                                           (gx#syntax-split-splice->vector
                                            _%$%tl4655246880%_
                                            '0)))
                                      (let ((_%$%tl4660446636%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4886848869%_
                                                '1)))
                                            (_%$%target4660246633%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice4886848869%_
                                                '0))))
                                        (if (gx#stx-null? _%$%tl4660446636%_)
                                            (_%__match4895848959%_
                                             _%$%e4655046873%_
                                             _%$%hd4655146877%_
                                             _%$%tl4655246880%_
                                             _%__splice4886848869%_
                                             _%$%target4660246633%_
                                             _%$%tl4660446636%_)
                                            (_%$%g4654646616%_))))
                                    (_%$%g4654646616%_))))))
                    (if (gx#stx-pair? _%$%hd4655146877%_)
                        (let ((_%$%e4656546787%_
                               (gx#syntax-e _%$%hd4655146877%_)))
                          (let ((_%$%tl4656746794%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4656546787%_)))
                                (_%$%hd4656646791%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4656546787%_))))
                            (if (gx#stx-pair? _%$%tl4656746794%_)
                                (let ((_%$%e4656846797%_
                                       (gx#syntax-e _%$%tl4656746794%_)))
                                  (let ((_%$%tl4657046804%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4656846797%_)))
                                        (_%$%hd4656946801%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4656846797%_))))
                                    (if (gx#stx-null? _%$%tl4657046804%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4655246880%_)
                                            (let ((_%__splice4886048861%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4655246880%_
                                                    '0)))
                                              (let ((_%$%tl4657346810%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4886048861%_
                                                        '1)))
                                                    (_%$%target4657146807%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4886048861%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4657346810%_)
                                                    (_%__match4892248923%_
                                                     _%$%e4655046873%_
                                                     _%$%hd4655146877%_
                                                     _%$%tl4655246880%_
                                                     _%$%e4656546787%_
                                                     _%$%hd4656646791%_
                                                     _%$%tl4656746794%_
                                                     _%$%e4656846797%_
                                                     _%$%hd4656946801%_
                                                     _%$%tl4657046804%_
                                                     _%__splice4886048861%_
                                                     _%$%target4657146807%_
                                                     _%$%tl4657346810%_)
                                                    (_%$%g4654646616%_))))
                                            (_%$%g4654646616%_))
                                        (if (gx#stx-pair/null?
                                             _%$%tl4655246880%_)
                                            (let ((_%__splice4886848869%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4655246880%_
                                                    '0)))
                                              (let ((_%$%tl4660446636%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4886848869%_
                                                        '1)))
                                                    (_%$%target4660246633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4886848869%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4660446636%_)
                                                    (_%__match4895848959%_
                                                     _%$%e4655046873%_
                                                     _%$%hd4655146877%_
                                                     _%$%tl4655246880%_
                                                     _%__splice4886848869%_
                                                     _%$%target4660246633%_
                                                     _%$%tl4660446636%_)
                                                    (_%$%g4654646616%_))))
                                            (_%$%g4654646616%_)))))
                                (if (gx#stx-null? _%$%tl4656746794%_)
                                    (if (gx#stx-pair/null? _%$%tl4655246880%_)
                                        (let ((_%__splice4886448865%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4655246880%_
                                                '0)))
                                          (let ((_%$%tl4659046718%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4886448865%_
                                                    '1)))
                                                (_%$%target4658846715%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4886448865%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4659046718%_)
                                                (_%__match4894448945%_
                                                 _%$%e4655046873%_
                                                 _%$%hd4655146877%_
                                                 _%$%tl4655246880%_
                                                 _%$%e4656546787%_
                                                 _%$%hd4656646791%_
                                                 _%$%tl4656746794%_
                                                 _%__splice4886448865%_
                                                 _%$%target4658846715%_
                                                 _%$%tl4659046718%_)
                                                (_%$%g4654646616%_))))
                                        (_%$%g4654646616%_))
                                    (if (gx#stx-pair/null? _%$%tl4655246880%_)
                                        (let ((_%__splice4886848869%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4655246880%_
                                                '0)))
                                          (let ((_%$%tl4660446636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4886848869%_
                                                    '1)))
                                                (_%$%target4660246633%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4886848869%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4660446636%_)
                                                (_%__match4895848959%_
                                                 _%$%e4655046873%_
                                                 _%$%hd4655146877%_
                                                 _%$%tl4655246880%_
                                                 _%__splice4886848869%_
                                                 _%$%target4660246633%_
                                                 _%$%tl4660446636%_)
                                                (_%$%g4654646616%_))))
                                        (_%$%g4654646616%_))))))
                        (if (gx#stx-pair/null? _%$%tl4655246880%_)
                            (let ((_%__splice4886848869%_
                                   (gx#syntax-split-splice->vector
                                    _%$%tl4655246880%_
                                    '0)))
                              (let ((_%$%tl4660446636%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4886848869%_
                                        '1)))
                                    (_%$%target4660246633%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice4886848869%_
                                        '0))))
                                (if (gx#stx-null? _%$%tl4660446636%_)
                                    (_%__match4895848959%_
                                     _%$%e4655046873%_
                                     _%$%hd4655146877%_
                                     _%$%tl4655246880%_
                                     _%__splice4886848869%_
                                     _%$%target4660246633%_
                                     _%$%tl4660446636%_)
                                    (_%$%g4654646616%_))))
                            (_%$%g4654646616%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g4654646616%_))))))))
                                  (if (pair? _%$%rest4639646404%_)
                                      (let ((_%$%hd4640146928%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest4639646404%_)))
                                            (_%$%tl4640246931%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%rest4639646404%_))))
                                        (let* ((_%hd46934%_ _%$%hd4640146928%_)
                                               (_%rest46937%_
                                                _%$%tl4640246931%_))
                                          (_%$%K4640046924%_
                                           _%rest46937%_
                                           _%hd46934%_)))
                                      (_%$%else4639846535%_)))))))
                      (_%$%g4636246940%_ (gx#genident))))))
          (let* ((_%$%g4574745767%_
                  (lambda (_%$%g4574845763%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g4574845763%_)))
                 (_%$%g4574646355%_
                  (lambda (_%$%g4574845771%_)
                    (if (gx#stx-pair? _%$%g4574845771%_)
                        (let ((_%$%e4575045774%_
                               (gx#syntax-e _%$%g4574845771%_)))
                          (let ((_%$%hd4575145778%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4575045774%_)))
                                (_%$%tl4575245781%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4575045774%_))))
                            (if (gx#stx-pair/null? _%$%tl4575245781%_)
                                (let ((_g49278_
                                       (gx#syntax-split-splice
                                        _%$%tl4575245781%_
                                        '0)))
                                  (begin
                                    (let ((_g49279_
                                           (let ()
                                             (declare (not safe))
                                             (if (##values? _g49278_)
                                                 (##values-length _g49278_)
                                                 1))))
                                      (if (not (let ()
                                                 (declare (not safe))
                                                 (##fx= _g49279_ 2)))
                                          (error "Context expects 2 values"
                                                 _g49279_)))
                                    (let ((_%$%target4575345784%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g49278_ 0)))
                                          (_%$%tl4575545787%_
                                           (let ()
                                             (declare (not safe))
                                             (##values-ref _g49278_ 1))))
                                      (if (gx#stx-null? _%$%tl4575545787%_)
                                          (letrec ((_%$%loop4575645790%_
                                                    (lambda (_%$%hd4575445794%_
                                                             _%$%e4576045797%_)
                                                      (if (gx#stx-pair?
                                                           _%$%hd4575445794%_)
                                                          (let ((_%$%e4575745799%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%hd4575445794%_)))
                    (let ((_%$%lp-hd4575845803%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e4575745799%_)))
                          (_%$%lp-tl4575945806%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e4575745799%_))))
                      (_%$%loop4575645790%_
                       _%$%lp-tl4575945806%_
                       (cons _%$%lp-hd4575845803%_ _%$%e4576045797%_))))
                  (let ((_%$%e4576145809%_ (reverse _%$%e4576045797%_)))
                    (let _%lp45829%_ ((_%rest45832%_
                                       (foldr (lambda (_%$%g4634646349%_
                                                       _%$%g4634746352%_)
                                                (cons _%$%g4634646349%_
                                                      _%$%g4634746352%_))
                                              '()
                                              _%$%e4576145809%_))
                                      (_%body45834%_ '()))
                      (let* ((_%__stx4907949080%_ _%rest45832%_)
                             (_%$%g4583745849%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%__stx4907949080%_))))
                        (let ((_%__kont4908249083%_
                               (lambda (_%$%g4583945877%_ _%$%g4584045879%_)
                                 (let* ((_%__stx4902749028%_ _%$%g4584045879%_)
                                        (_%$%g4589645929%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%__stx4902749028%_))))
                                   (let ((_%__kont4903049031%_
                                          (lambda (_%$%g4589846316%_)
                                            (if (gx#stx-null?
                                                 _%$%g4583945877%_)
                                                (_%generate-fini45744%_
                                                 (_%generate-thunk45742%_
                                                  _%body45834%_)
                                                 (foldr (lambda (_%$%g4633046333%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g4633146336%_)
                  (cons _%$%g4633046333%_ _%$%g4633146336%_))
                '()
                _%$%g4589846316%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Misplaced finally clause"
                                                 _%stx45739%_))))
                                         (_%__kont4903449035%_
                                          (lambda (_%$%g4591145985%_)
                                            (let _%lp46002%_ ((_%rest46005%_
                                                               _%$%g4583945877%_)
                                                              (_%handlers46007%_
                                                               (cons (foldr (lambda (_%$%g4626246265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                             _%$%g4626346268%_)
                                      (cons _%$%g4626246265%_
                                            _%$%g4626346268%_))
                                    '()
                                    _%$%g4591145985%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%__stx4896148962%_
                                                      _%rest46005%_)
                                                     (_%$%g4601146051%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%__stx4896148962%_))))
                                                (let ((_%__kont4896448965%_
                                                       (lambda (_%$%g4601346232%_
                                                                _%$%g4601446234%_)
                                                         (_%lp46002%_
                                                          _%$%g4601346232%_
                                                          (cons (foldr (lambda (_%$%g4625046253%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                        _%$%g4625146256%_)
                                 (cons _%$%g4625046253%_ _%$%g4625146256%_))
                               '()
                               _%$%g4601446234%_)
                        _%handlers46007%_))))
              (_%__kont4896848969%_
               (lambda (_%$%g4603046117%_)
                 (let* ((_%$%g4613846146%_
                         (lambda (_%$%g4613946142%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g4613946142%_)))
                        (_%$%g4613746173%_
                         (lambda (_%$%g4613946150%_)
                           (_%generate-fini45744%_
                            (cons (gx#datum->syntax '#f 'lambda)
                                  (cons '() (cons _%$%g4613946150%_ '())))
                            (foldr (lambda (_%$%g4616446167%_
                                            _%$%g4616546170%_)
                                     (cons _%$%g4616446167%_
                                           _%$%g4616546170%_))
                                   '()
                                   _%$%g4603046117%_)))))
                   (_%$%g4613746173%_
                    (_%generate-catch45745%_
                     _%handlers46007%_
                     (_%generate-thunk45742%_ _%body45834%_))))))
              (_%__kont4897248973%_
               (lambda ()
                 (_%generate-catch45745%_
                  _%handlers46007%_
                  (_%generate-thunk45742%_ _%body45834%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let* ((_%$%g4601046062%_
                                                          (lambda ()
                                                            (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%__stx4896148962%_)
                        (_%__kont4897248973%_)
                        (_%$%g4601146051%_))))
                 (_%__match4902249023%_
                  (lambda (_%$%e4603146069%_
                           _%$%hd4603246073%_
                           _%$%tl4603346076%_
                           _%$%e4603446079%_
                           _%$%hd4603546083%_
                           _%$%tl4603646086%_
                           _%__splice4897048971%_
                           _%$%target4603746089%_
                           _%$%tl4603946092%_)
                    (letrec ((_%$%loop4604046095%_
                              (lambda (_%$%hd4603846099%_ _%$%fini4604446102%_)
                                (if (gx#stx-pair? _%$%hd4603846099%_)
                                    (let ((_%$%e4604146104%_
                                           (gx#syntax-e _%$%hd4603846099%_)))
                                      (let ((_%$%lp-tl4604346111%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4604146104%_)))
                                            (_%$%lp-hd4604246108%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4604146104%_))))
                                        (_%$%loop4604046095%_
                                         _%$%lp-tl4604346111%_
                                         (cons _%$%lp-hd4604246108%_
                                               _%$%fini4604446102%_))))
                                    (let ((_%$%fini4604546114%_
                                           (reverse _%$%fini4604446102%_)))
                                      (if (gx#stx-null? _%$%tl4603346076%_)
                                          (_%__kont4896848969%_
                                           _%$%fini4604546114%_)
                                          (_%$%g4601146051%_)))))))
                      (_%$%loop4604046095%_ _%$%target4603746089%_ '()))))
                 (_%__match4899848999%_
                  (lambda (_%$%e4601546184%_
                           _%$%hd4601646188%_
                           _%$%tl4601746191%_
                           _%$%e4601846194%_
                           _%$%hd4601946198%_
                           _%$%tl4602046201%_
                           _%__splice4896648967%_
                           _%$%target4602146204%_
                           _%$%tl4602346207%_)
                    (letrec ((_%$%loop4602446210%_
                              (lambda (_%$%hd4602246214%_
                                       _%$%handler4602846217%_)
                                (if (gx#stx-pair? _%$%hd4602246214%_)
                                    (let ((_%$%e4602546219%_
                                           (gx#syntax-e _%$%hd4602246214%_)))
                                      (let ((_%$%lp-tl4602746226%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e4602546219%_)))
                                            (_%$%lp-hd4602646223%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e4602546219%_))))
                                        (_%$%loop4602446210%_
                                         _%$%lp-tl4602746226%_
                                         (cons _%$%lp-hd4602646223%_
                                               _%$%handler4602846217%_))))
                                    (let ((_%$%handler4602946229%_
                                           (reverse _%$%handler4602846217%_)))
                                      (_%__kont4896448965%_
                                       _%$%tl4601746191%_
                                       _%$%handler4602946229%_))))))
                      (_%$%loop4602446210%_ _%$%target4602146204%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (gx#stx-pair?
                                                         _%__stx4896148962%_)
                                                        (let ((_%$%e4601546184%_
                                                               (gx#syntax-e
                                                                _%__stx4896148962%_)))
                                                          (let ((_%$%tl4601746191%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4601546184%_)))
                        (_%$%hd4601646188%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4601546184%_))))
                    (if (gx#stx-pair? _%$%hd4601646188%_)
                        (let ((_%$%e4601846194%_
                               (gx#syntax-e _%$%hd4601646188%_)))
                          (let ((_%$%tl4602046201%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4601846194%_)))
                                (_%$%hd4601946198%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4601846194%_))))
                            (if (gx#identifier? _%$%hd4601946198%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/more-sugar[1]#_g49280_|
                                     _%$%hd4601946198%_)
                                    (if (gx#stx-pair/null? _%$%tl4602046201%_)
                                        (let ((_%__splice4896648967%_
                                               (gx#syntax-split-splice->vector
                                                _%$%tl4602046201%_
                                                '0)))
                                          (let ((_%$%tl4602346207%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4896648967%_
                                                    '1)))
                                                (_%$%target4602146204%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice4896648967%_
                                                    '0))))
                                            (if (gx#stx-null?
                                                 _%$%tl4602346207%_)
                                                (_%__match4899848999%_
                                                 _%$%e4601546184%_
                                                 _%$%hd4601646188%_
                                                 _%$%tl4601746191%_
                                                 _%$%e4601846194%_
                                                 _%$%hd4601946198%_
                                                 _%$%tl4602046201%_
                                                 _%__splice4896648967%_
                                                 _%$%target4602146204%_
                                                 _%$%tl4602346207%_)
                                                (_%$%g4601146051%_))))
                                        (_%$%g4601146051%_))
                                    (if (gx#free-identifier=?
                                         |gerbil/core/more-sugar[1]#_g49281_|
                                         _%$%hd4601946198%_)
                                        (if (gx#stx-pair/null?
                                             _%$%tl4602046201%_)
                                            (let ((_%__splice4897048971%_
                                                   (gx#syntax-split-splice->vector
                                                    _%$%tl4602046201%_
                                                    '0)))
                                              (let ((_%$%tl4603946092%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4897048971%_
                                                        '1)))
                                                    (_%$%target4603746089%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _%__splice4897048971%_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _%$%tl4603946092%_)
                                                    (_%__match4902249023%_
                                                     _%$%e4601546184%_
                                                     _%$%hd4601646188%_
                                                     _%$%tl4601746191%_
                                                     _%$%e4601846194%_
                                                     _%$%hd4601946198%_
                                                     _%$%tl4602046201%_
                                                     _%__splice4897048971%_
                                                     _%$%target4603746089%_
                                                     _%$%tl4603946092%_)
                                                    (_%$%g4601146051%_))))
                                            (_%$%g4601146051%_))
                                        (_%$%g4601146051%_)))
                                (_%$%g4601146051%_))))
                        (_%$%g4601146051%_))))
                (_%$%g4601046062%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%__kont4903849039%_
                                          (lambda ()
                                            (_%lp45829%_
                                             _%$%g4583945877%_
                                             (cons _%$%g4584045879%_
                                                   _%body45834%_)))))
                                     (let* ((_%__match4907649077%_
                                             (lambda (_%$%e4591245947%_
                                                      _%$%hd4591345951%_
                                                      _%$%tl4591445954%_
                                                      _%__splice4903649037%_
                                                      _%$%target4591545957%_
                                                      _%$%tl4591745960%_)
                                               (letrec ((_%$%loop4591845963%_
                                                         (lambda (_%$%hd4591645967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%handler4592245970%_)
                   (if (gx#stx-pair? _%$%hd4591645967%_)
                       (let ((_%$%e4591945972%_
                              (gx#syntax-e _%$%hd4591645967%_)))
                         (let ((_%$%lp-tl4592145979%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4591945972%_)))
                               (_%$%lp-hd4592045976%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4591945972%_))))
                           (_%$%loop4591845963%_
                            _%$%lp-tl4592145979%_
                            (cons _%$%lp-hd4592045976%_
                                  _%$%handler4592245970%_))))
                       (let ((_%$%handler4592345982%_
                              (reverse _%$%handler4592245970%_)))
                         (_%__kont4903449035%_ _%$%handler4592345982%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4591845963%_
                                                  _%$%target4591545957%_
                                                  '()))))
                                            (_%__match4905849059%_
                                             (lambda (_%$%e4589946278%_
                                                      _%$%hd4590046282%_
                                                      _%$%tl4590146285%_
                                                      _%__splice4903249033%_
                                                      _%$%target4590246288%_
                                                      _%$%tl4590446291%_)
                                               (letrec ((_%$%loop4590546294%_
                                                         (lambda (_%$%hd4590346298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%fini4590946301%_)
                   (if (gx#stx-pair? _%$%hd4590346298%_)
                       (let ((_%$%e4590646303%_
                              (gx#syntax-e _%$%hd4590346298%_)))
                         (let ((_%$%lp-tl4590846310%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e4590646303%_)))
                               (_%$%lp-hd4590746307%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e4590646303%_))))
                           (_%$%loop4590546294%_
                            _%$%lp-tl4590846310%_
                            (cons _%$%lp-hd4590746307%_
                                  _%$%fini4590946301%_))))
                       (let ((_%$%fini4591046313%_
                              (reverse _%$%fini4590946301%_)))
                         (_%__kont4903049031%_ _%$%fini4591046313%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%loop4590546294%_
                                                  _%$%target4590246288%_
                                                  '())))))
                                       (if (gx#stx-pair? _%__stx4902749028%_)
                                           (let ((_%$%e4589946278%_
                                                  (gx#syntax-e
                                                   _%__stx4902749028%_)))
                                             (let ((_%$%tl4590146285%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e4589946278%_)))
                                                   (_%$%hd4590046282%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e4589946278%_))))
                                               (if (gx#identifier?
                                                    _%$%hd4590046282%_)
                                                   (if (gx#free-identifier=?
                                                        |gerbil/core/more-sugar[1]#_g49282_|
                                                        _%$%hd4590046282%_)
                                                       (if (gx#stx-pair/null?
                                                            _%$%tl4590146285%_)
                                                           (let ((_%__splice4903249033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice->vector
                           _%$%tl4590146285%_
                           '0)))
                     (let ((_%$%tl4590446291%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4903249033%_ '1)))
                           (_%$%target4590246288%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%__splice4903249033%_ '0))))
                       (if (gx#stx-null? _%$%tl4590446291%_)
                           (_%__match4905849059%_
                            _%$%e4589946278%_
                            _%$%hd4590046282%_
                            _%$%tl4590146285%_
                            _%__splice4903249033%_
                            _%$%target4590246288%_
                            _%$%tl4590446291%_)
                           (_%__kont4903849039%_))))
                   (_%__kont4903849039%_))
               (if (gx#free-identifier=?
                    |gerbil/core/more-sugar[1]#_g49283_|
                    _%$%hd4590046282%_)
                   (if (gx#stx-pair/null? _%$%tl4590146285%_)
                       (let ((_%__splice4903649037%_
                              (gx#syntax-split-splice->vector
                               _%$%tl4590146285%_
                               '0)))
                         (let ((_%$%tl4591745960%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4903649037%_ '1)))
                               (_%$%target4591545957%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref _%__splice4903649037%_ '0))))
                           (if (gx#stx-null? _%$%tl4591745960%_)
                               (_%__match4907649077%_
                                _%$%e4589946278%_
                                _%$%hd4590046282%_
                                _%$%tl4590146285%_
                                _%__splice4903649037%_
                                _%$%target4591545957%_
                                _%$%tl4591745960%_)
                               (_%__kont4903849039%_))))
                       (_%__kont4903849039%_))
                   (_%__kont4903849039%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%__kont4903849039%_))))
                                           (_%__kont4903849039%_)))))))
                              (_%__kont4908449085%_
                               (lambda ()
                                 (cons 'begin (reverse _%body45834%_)))))
                          (let ((_%$%g4583645860%_
                                 (lambda ()
                                   (if (gx#stx-null? _%__stx4907949080%_)
                                       (_%__kont4908449085%_)
                                       (_%$%g4583745849%_)))))
                            (if (gx#stx-pair? _%__stx4907949080%_)
                                (let ((_%$%e4584145867%_
                                       (gx#syntax-e _%__stx4907949080%_)))
                                  (let ((_%$%tl4584345874%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4584145867%_)))
                                        (_%$%hd4584245871%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4584145867%_))))
                                    (_%__kont4908249083%_
                                     _%$%tl4584345874%_
                                     _%$%hd4584245871%_)))
                                (_%$%g4583645860%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%loop4575645790%_
                                             _%$%target4575345784%_
                                             '()))
                                          (_%$%g4574745767%_
                                           _%$%g4574845771%_)))))
                                (_%$%g4574745767%_ _%$%g4574845771%_))))
                        (_%$%g4574745767%_ _%$%g4574845771%_)))))
            (_%$%g4574646355%_ _%stx45739%_)))))
    (define |gerbil/core/more-sugar[:0:]#hash|
      (lambda (_%$stx47155%_)
        (let* ((_%$%g4715947188%_
                (lambda (_%$%g4716047184%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4716047184%_)))
               (_%$%g4715847284%_
                (lambda (_%$%g4716047192%_)
                  (if (gx#stx-pair? _%$%g4716047192%_)
                      (let ((_%$%e4716347195%_
                             (gx#syntax-e _%$%g4716047192%_)))
                        (let ((_%$%hd4716447199%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4716347195%_)))
                              (_%$%tl4716547202%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4716347195%_))))
                          (if (gx#stx-pair/null? _%$%tl4716547202%_)
                              (let ((_g49284_
                                     (gx#syntax-split-splice
                                      _%$%tl4716547202%_
                                      '0)))
                                (begin
                                  (let ((_g49285_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49284_)
                                               (##values-length _g49284_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49285_ 2)))
                                        (error "Context expects 2 values"
                                               _g49285_)))
                                  (let ((_%$%target4716647205%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49284_ 0)))
                                        (_%$%tl4716847208%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49284_ 1))))
                                    (if (gx#stx-null? _%$%tl4716847208%_)
                                        (letrec ((_%$%loop4716947211%_
                                                  (lambda (_%$%hd4716747215%_
                                                           _%$%val4717347218%_
                                                           _%$%key4717447219%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4716747215%_)
                                                        (let ((_%$%e4717047221%_
                                                               (gx#syntax-e
                                                                _%$%hd4716747215%_)))
                                                          (let ((_%$%lp-hd4717147225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4717047221%_)))
                        (_%$%lp-tl4717247228%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4717047221%_))))
                    (if (gx#stx-pair? _%$%lp-hd4717147225%_)
                        (let ((_%$%e4717747231%_
                               (gx#syntax-e _%$%lp-hd4717147225%_)))
                          (let ((_%$%hd4717847235%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4717747231%_)))
                                (_%$%tl4717947238%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4717747231%_))))
                            (if (gx#stx-pair? _%$%tl4717947238%_)
                                (let ((_%$%e4718047241%_
                                       (gx#syntax-e _%$%tl4717947238%_)))
                                  (let ((_%$%hd4718147245%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4718047241%_)))
                                        (_%$%tl4718247248%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4718047241%_))))
                                    (if (gx#stx-null? _%$%tl4718247248%_)
                                        (_%$%loop4716947211%_
                                         _%$%lp-tl4717247228%_
                                         (cons _%$%hd4718147245%_
                                               _%$%val4717347218%_)
                                         (cons _%$%hd4717847235%_
                                               _%$%key4717447219%_))
                                        (_%$%g4715947188%_
                                         _%$%g4716047192%_))))
                                (_%$%g4715947188%_ _%$%g4716047192%_))))
                        (_%$%g4715947188%_ _%$%g4716047192%_))))
                (let ((_%$%val4717547251%_ (reverse _%$%val4717347218%_))
                      (_%$%key4717647253%_ (reverse _%$%key4717447219%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4717547251%_
                                 _%$%key4717647253%_)
                                (foldr (lambda (_%$%g4727247276%_
                                                _%$%g4727347279%_
                                                _%$%g4727447281%_)
                                         (cons (cons _%$%g4727347279%_
                                                     (cons _%$%g4727247276%_
                                                           '()))
                                               _%$%g4727447281%_))
                                       '()
                                       _%$%val4717547251%_
                                       _%$%key4717647253%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4716947211%_
                                           _%$%target4716647205%_
                                           '()
                                           '()))
                                        (_%$%g4715947188%_
                                         _%$%g4716047192%_)))))
                              (_%$%g4715947188%_ _%$%g4716047192%_))))
                      (_%$%g4715947188%_ _%$%g4716047192%_)))))
          (_%$%g4715847284%_ _%$stx47155%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eq|
      (lambda (_%$stx47289%_)
        (let* ((_%$%g4729347322%_
                (lambda (_%$%g4729447318%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4729447318%_)))
               (_%$%g4729247418%_
                (lambda (_%$%g4729447326%_)
                  (if (gx#stx-pair? _%$%g4729447326%_)
                      (let ((_%$%e4729747329%_
                             (gx#syntax-e _%$%g4729447326%_)))
                        (let ((_%$%hd4729847333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4729747329%_)))
                              (_%$%tl4729947336%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4729747329%_))))
                          (if (gx#stx-pair/null? _%$%tl4729947336%_)
                              (let ((_g49286_
                                     (gx#syntax-split-splice
                                      _%$%tl4729947336%_
                                      '0)))
                                (begin
                                  (let ((_g49287_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49286_)
                                               (##values-length _g49286_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49287_ 2)))
                                        (error "Context expects 2 values"
                                               _g49287_)))
                                  (let ((_%$%target4730047339%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49286_ 0)))
                                        (_%$%tl4730247342%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49286_ 1))))
                                    (if (gx#stx-null? _%$%tl4730247342%_)
                                        (letrec ((_%$%loop4730347345%_
                                                  (lambda (_%$%hd4730147349%_
                                                           _%$%val4730747352%_
                                                           _%$%key4730847353%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4730147349%_)
                                                        (let ((_%$%e4730447355%_
                                                               (gx#syntax-e
                                                                _%$%hd4730147349%_)))
                                                          (let ((_%$%lp-hd4730547359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4730447355%_)))
                        (_%$%lp-tl4730647362%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4730447355%_))))
                    (if (gx#stx-pair? _%$%lp-hd4730547359%_)
                        (let ((_%$%e4731147365%_
                               (gx#syntax-e _%$%lp-hd4730547359%_)))
                          (let ((_%$%hd4731247369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4731147365%_)))
                                (_%$%tl4731347372%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4731147365%_))))
                            (if (gx#stx-pair? _%$%tl4731347372%_)
                                (let ((_%$%e4731447375%_
                                       (gx#syntax-e _%$%tl4731347372%_)))
                                  (let ((_%$%hd4731547379%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4731447375%_)))
                                        (_%$%tl4731647382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4731447375%_))))
                                    (if (gx#stx-null? _%$%tl4731647382%_)
                                        (_%$%loop4730347345%_
                                         _%$%lp-tl4730647362%_
                                         (cons _%$%hd4731547379%_
                                               _%$%val4730747352%_)
                                         (cons _%$%hd4731247369%_
                                               _%$%key4730847353%_))
                                        (_%$%g4729347322%_
                                         _%$%g4729447326%_))))
                                (_%$%g4729347322%_ _%$%g4729447326%_))))
                        (_%$%g4729347322%_ _%$%g4729447326%_))))
                (let ((_%$%val4730947385%_ (reverse _%$%val4730747352%_))
                      (_%$%key4731047387%_ (reverse _%$%key4730847353%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eq)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4730947385%_
                                 _%$%key4731047387%_)
                                (foldr (lambda (_%$%g4740647410%_
                                                _%$%g4740747413%_
                                                _%$%g4740847415%_)
                                         (cons (cons _%$%g4740747413%_
                                                     (cons _%$%g4740647410%_
                                                           '()))
                                               _%$%g4740847415%_))
                                       '()
                                       _%$%val4730947385%_
                                       _%$%key4731047387%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4730347345%_
                                           _%$%target4730047339%_
                                           '()
                                           '()))
                                        (_%$%g4729347322%_
                                         _%$%g4729447326%_)))))
                              (_%$%g4729347322%_ _%$%g4729447326%_))))
                      (_%$%g4729347322%_ _%$%g4729447326%_)))))
          (_%$%g4729247418%_ _%$stx47289%_))))
    (define |gerbil/core/more-sugar[:0:]#hash-eqv|
      (lambda (_%$stx47423%_)
        (let* ((_%$%g4742747456%_
                (lambda (_%$%g4742847452%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4742847452%_)))
               (_%$%g4742647552%_
                (lambda (_%$%g4742847460%_)
                  (if (gx#stx-pair? _%$%g4742847460%_)
                      (let ((_%$%e4743147463%_
                             (gx#syntax-e _%$%g4742847460%_)))
                        (let ((_%$%hd4743247467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4743147463%_)))
                              (_%$%tl4743347470%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4743147463%_))))
                          (if (gx#stx-pair/null? _%$%tl4743347470%_)
                              (let ((_g49288_
                                     (gx#syntax-split-splice
                                      _%$%tl4743347470%_
                                      '0)))
                                (begin
                                  (let ((_g49289_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49288_)
                                               (##values-length _g49288_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49289_ 2)))
                                        (error "Context expects 2 values"
                                               _g49289_)))
                                  (let ((_%$%target4743447473%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49288_ 0)))
                                        (_%$%tl4743647476%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49288_ 1))))
                                    (if (gx#stx-null? _%$%tl4743647476%_)
                                        (letrec ((_%$%loop4743747479%_
                                                  (lambda (_%$%hd4743547483%_
                                                           _%$%val4744147486%_
                                                           _%$%key4744247487%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4743547483%_)
                                                        (let ((_%$%e4743847489%_
                                                               (gx#syntax-e
                                                                _%$%hd4743547483%_)))
                                                          (let ((_%$%lp-hd4743947493%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4743847489%_)))
                        (_%$%lp-tl4744047496%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4743847489%_))))
                    (if (gx#stx-pair? _%$%lp-hd4743947493%_)
                        (let ((_%$%e4744547499%_
                               (gx#syntax-e _%$%lp-hd4743947493%_)))
                          (let ((_%$%hd4744647503%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4744547499%_)))
                                (_%$%tl4744747506%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4744547499%_))))
                            (if (gx#stx-pair? _%$%tl4744747506%_)
                                (let ((_%$%e4744847509%_
                                       (gx#syntax-e _%$%tl4744747506%_)))
                                  (let ((_%$%hd4744947513%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e4744847509%_)))
                                        (_%$%tl4745047516%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e4744847509%_))))
                                    (if (gx#stx-null? _%$%tl4745047516%_)
                                        (_%$%loop4743747479%_
                                         _%$%lp-tl4744047496%_
                                         (cons _%$%hd4744947513%_
                                               _%$%val4744147486%_)
                                         (cons _%$%hd4744647503%_
                                               _%$%key4744247487%_))
                                        (_%$%g4742747456%_
                                         _%$%g4742847460%_))))
                                (_%$%g4742747456%_ _%$%g4742847460%_))))
                        (_%$%g4742747456%_ _%$%g4742847460%_))))
                (let ((_%$%val4744347519%_ (reverse _%$%val4744147486%_))
                      (_%$%key4744447521%_ (reverse _%$%key4744247487%_)))
                  (cons (gx#datum->syntax '#f '~hash-table)
                        (cons (gx#datum->syntax '#f 'make-hash-table-eqv)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _%$%val4744347519%_
                                 _%$%key4744447521%_)
                                (foldr (lambda (_%$%g4754047544%_
                                                _%$%g4754147547%_
                                                _%$%g4754247549%_)
                                         (cons (cons _%$%g4754147547%_
                                                     (cons _%$%g4754047544%_
                                                           '()))
                                               _%$%g4754247549%_))
                                       '()
                                       _%$%val4744347519%_
                                       _%$%key4744447521%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4743747479%_
                                           _%$%target4743447473%_
                                           '()
                                           '()))
                                        (_%$%g4742747456%_
                                         _%$%g4742847460%_)))))
                              (_%$%g4742747456%_ _%$%g4742847460%_))))
                      (_%$%g4742747456%_ _%$%g4742847460%_)))))
          (_%$%g4742647552%_ _%$stx47423%_))))
    (define |gerbil/core/more-sugar[:0:]#~hash-table|
      (lambda (_%stx47557%_)
        (let* ((_%$%g4756047584%_
                (lambda (_%$%g4756147580%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4756147580%_)))
               (_%$%g4755947825%_
                (lambda (_%$%g4756147588%_)
                  (if (gx#stx-pair? _%$%g4756147588%_)
                      (let ((_%$%e4756447591%_
                             (gx#syntax-e _%$%g4756147588%_)))
                        (let ((_%$%hd4756547595%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4756447591%_)))
                              (_%$%tl4756647598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4756447591%_))))
                          (if (gx#stx-pair? _%$%tl4756647598%_)
                              (let ((_%$%e4756747601%_
                                     (gx#syntax-e _%$%tl4756647598%_)))
                                (let ((_%$%hd4756847605%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4756747601%_)))
                                      (_%$%tl4756947608%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4756747601%_))))
                                  (if (gx#stx-pair/null? _%$%tl4756947608%_)
                                      (let ((_g49290_
                                             (gx#syntax-split-splice
                                              _%$%tl4756947608%_
                                              '0)))
                                        (begin
                                          (let ((_g49291_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49290_)
                                                       (##values-length
                                                        _g49290_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49291_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49291_)))
                                          (let ((_%$%target4757047611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49290_ 0)))
                                                (_%$%tl4757247614%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49290_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4757247614%_)
                                                (letrec ((_%$%loop4757347617%_
                                                          (lambda (_%$%hd4757147621%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%entry4757747624%_)
                    (if (gx#stx-pair? _%$%hd4757147621%_)
                        (let ((_%$%e4757447626%_
                               (gx#syntax-e _%$%hd4757147621%_)))
                          (let ((_%$%lp-hd4757547630%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4757447626%_)))
                                (_%$%lp-tl4757647633%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4757447626%_))))
                            (_%$%loop4757347617%_
                             _%$%lp-tl4757647633%_
                             (cons _%$%lp-hd4757547630%_
                                   _%$%entry4757747624%_))))
                        (let* ((_%$%entry4757847636%_
                                (reverse _%$%entry4757747624%_))
                               (_%$%g4765947667%_
                                (lambda (_%$%g4766047663%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g4766047663%_)))
                               (_%$%g4765847813%_
                                (lambda (_%$%g4766047671%_)
                                  (let* ((_%$%g4768647712%_
                                          (lambda (_%$%g4768747708%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g4768747708%_)))
                                         (_%$%g4768547801%_
                                          (lambda (_%$%g4768747716%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%g4768747716%_)
                                                (let ((_g49292_
                                                       (gx#syntax-split-splice
                                                        _%$%g4768747716%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g49293_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g49292_)
                         (##values-length _g49292_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g49293_ 2)))
                  (error "Context expects 2 values" _g49293_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target4769047719%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49292_
                                                              0)))
                                                          (_%$%tl4769247722%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g49292_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4769247722%_)
                                                          (letrec ((_%$%loop4769347725%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd4769147729%_
                                     _%$%val4769747732%_
                                     _%$%key4769847733%_)
                              (if (gx#stx-pair? _%$%hd4769147729%_)
                                  (let ((_%$%e4769447735%_
                                         (gx#syntax-e _%$%hd4769147729%_)))
                                    (let ((_%$%lp-hd4769547739%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e4769447735%_)))
                                          (_%$%lp-tl4769647742%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e4769447735%_))))
                                      (if (gx#stx-pair? _%$%lp-hd4769547739%_)
                                          (let ((_%$%e4770147745%_
                                                 (gx#syntax-e
                                                  _%$%lp-hd4769547739%_)))
                                            (let ((_%$%hd4770247749%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e4770147745%_)))
                                                  (_%$%tl4770347752%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e4770147745%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl4770347752%_)
                                                  (let ((_%$%e4770447755%_
                                                         (gx#syntax-e
                                                          _%$%tl4770347752%_)))
                                                    (let ((_%$%hd4770547759%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e4770447755%_)))
                                                          (_%$%tl4770647762%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e4770447755%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl4770647762%_)
                                                          (_%$%loop4769347725%_
                                                           _%$%lp-tl4769647742%_
                                                           (cons _%$%hd4770547759%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%val4769747732%_)
                   (cons _%$%hd4770247749%_ _%$%key4769847733%_))
                  (_%$%g4768647712%_ _%$%g4768747716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g4768647712%_
                                                   _%$%g4768747716%_))))
                                          (_%$%g4768647712%_
                                           _%$%g4768747716%_))))
                                  (let ((_%$%val4769947765%_
                                         (reverse _%$%val4769747732%_))
                                        (_%$%key4770047767%_
                                         (reverse _%$%key4769847733%_)))
                                    (cons (gx#datum->syntax '#f 'let)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'ht)
                                                      (cons (cons _%$%hd4756847605%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'size: (cons _%$%g4766047671%_ '())))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (begin
                                                  (gx#syntax-check-splice-targets
                                                   _%$%val4769947765%_
                                                   _%$%key4770047767%_)
                                                  (foldr (lambda (_%$%g4778947793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g4779047796%_
                          _%$%g4779147798%_)
                   (cons (cons (gx#datum->syntax '#f 'hash-put!)
                               (cons (gx#datum->syntax '#f 'ht)
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'quasiquote)
                                                 (cons _%$%g4779047796%_ '()))
                                           (cons _%$%g4778947793%_ '()))))
                         _%$%g4779147798%_))
                 (cons (gx#datum->syntax '#f 'ht) '())
                 _%$%val4769947765%_
                 _%$%key4770047767%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%$%loop4769347725%_ _%$%target4769047719%_ '() '()))
                  (_%$%g4768647712%_ _%$%g4768747716%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g4768647712%_
                                                 _%$%g4768747716%_)))))
                                    (_%$%g4768547801%_
                                     (foldr (lambda (_%$%g4780447807%_
                                                     _%$%g4780547810%_)
                                              (cons _%$%g4780447807%_
                                                    _%$%g4780547810%_))
                                            '()
                                            _%$%entry4757847636%_))))))
                          (_%$%g4765847813%_
                           (gx#stx-length
                            (foldr (lambda (_%$%g4781647819%_
                                            _%$%g4781747822%_)
                                     (cons _%$%g4781647819%_
                                           _%$%g4781747822%_))
                                   '()
                                   _%$%entry4757847636%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4757347617%_
                                                   _%$%target4757047611%_
                                                   '()))
                                                (_%$%g4756047584%_
                                                 _%$%g4756147588%_)))))
                                      (_%$%g4756047584%_ _%$%g4756147588%_))))
                              (_%$%g4756047584%_ _%$%g4756147588%_))))
                      (_%$%g4756047584%_ _%$%g4756147588%_)))))
          (_%$%g4755947825%_ _%stx47557%_))))
    (define |gerbil/core/more-sugar[:0:]#@bytes|
      (lambda (_%stx47831%_)
        (let* ((_%$%g4783447848%_
                (lambda (_%$%g4783547844%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4783547844%_)))
               (_%$%g4783347920%_
                (lambda (_%$%g4783547852%_)
                  (if (gx#stx-pair? _%$%g4783547852%_)
                      (let ((_%$%e4783747855%_
                             (gx#syntax-e _%$%g4783547852%_)))
                        (let ((_%$%hd4783847859%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4783747855%_)))
                              (_%$%tl4783947862%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4783747855%_))))
                          (if (gx#stx-pair? _%$%tl4783947862%_)
                              (let ((_%$%e4784047865%_
                                     (gx#syntax-e _%$%tl4783947862%_)))
                                (let ((_%$%hd4784147869%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4784047865%_)))
                                      (_%$%tl4784247872%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4784047865%_))))
                                  (if (gx#stx-null? _%$%tl4784247872%_)
                                      (if (gx#stx-string? _%$%hd4784147869%_)
                                          (let* ((_%$%g4788947897%_
                                                  (lambda (_%$%g4789047893%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g4789047893%_)))
                                                 (_%$%g4788847916%_
                                                  (lambda (_%$%g4789047901%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%$%g4789047901%_
                                                                '())))))
                                            (_%$%g4788847916%_
                                             (string->bytes
                                              (gx#stx-e _%$%hd4784147869%_))))
                                          (_%$%g4783447848%_
                                           _%$%g4783547852%_))
                                      (_%$%g4783447848%_ _%$%g4783547852%_))))
                              (_%$%g4783447848%_ _%$%g4783547852%_))))
                      (_%$%g4783447848%_ _%$%g4783547852%_)))))
          (_%$%g4783347920%_ _%stx47831%_))))
    (define |gerbil/core/more-sugar[:0:]#@eval|
      (lambda (_%stx47924%_)
        (let* ((_%$%g4792747941%_
                (lambda (_%$%g4792847937%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4792847937%_)))
               (_%$%g4792648013%_
                (lambda (_%$%g4792847945%_)
                  (if (gx#stx-pair? _%$%g4792847945%_)
                      (let ((_%$%e4793047948%_
                             (gx#syntax-e _%$%g4792847945%_)))
                        (let ((_%$%hd4793147952%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4793047948%_)))
                              (_%$%tl4793247955%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4793047948%_))))
                          (if (gx#stx-pair? _%$%tl4793247955%_)
                              (let ((_%$%e4793347958%_
                                     (gx#syntax-e _%$%tl4793247955%_)))
                                (let ((_%$%hd4793447962%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4793347958%_)))
                                      (_%$%tl4793547965%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4793347958%_))))
                                  (if (gx#stx-null? _%$%tl4793547965%_)
                                      (let* ((_%$%g4798247990%_
                                              (lambda (_%$%g4798347986%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g4798347986%_)))
                                             (_%$%g4798148009%_
                                              (lambda (_%$%g4798347994%_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _%$%g4798347994%_
                                                            '())))))
                                        (_%$%g4798148009%_
                                         (gx#eval-syntax+1
                                          _%$%hd4793447962%_)))
                                      (_%$%g4792747941%_ _%$%g4792847945%_))))
                              (_%$%g4792747941%_ _%$%g4792847945%_))))
                      (_%$%g4792747941%_ _%$%g4792847945%_)))))
          (_%$%g4792648013%_ _%stx47924%_))))
    (define |gerbil/core/more-sugar[:0:]#eval-when-compile|
      (lambda (_%stx48017%_)
        (let* ((_%$%g4802048034%_
                (lambda (_%$%g4802148030%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4802148030%_)))
               (_%$%g4801948075%_
                (lambda (_%$%g4802148038%_)
                  (if (gx#stx-pair? _%$%g4802148038%_)
                      (let ((_%$%e4802348041%_
                             (gx#syntax-e _%$%g4802148038%_)))
                        (let ((_%$%hd4802448045%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4802348041%_)))
                              (_%$%tl4802548048%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4802348041%_))))
                          (if (gx#stx-pair? _%$%tl4802548048%_)
                              (let ((_%$%e4802648051%_
                                     (gx#syntax-e _%$%tl4802548048%_)))
                                (let ((_%$%hd4802748055%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4802648051%_)))
                                      (_%$%tl4802848058%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4802648051%_))))
                                  (if (gx#stx-null? _%$%tl4802848058%_)
                                      (let ()
                                        (if (gx#current-expander-compiling?)
                                            (gx#eval-syntax _%$%hd4802748055%_)
                                            '#!void)
                                        (cons (gx#datum->syntax '#f 'void)
                                              '()))
                                      (_%$%g4802048034%_ _%$%g4802148038%_))))
                              (_%$%g4802048034%_ _%$%g4802148038%_))))
                      (_%$%g4802048034%_ _%$%g4802148038%_)))))
          (_%$%g4801948075%_ _%stx48017%_))))
    (define |gerbil/core/more-sugar[:0:]#with-id|
      (lambda (_%stx48079%_)
        (let* ((_%$%g4808248115%_
                (lambda (_%$%g4808348111%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g4808348111%_)))
               (_%$%g4808148620%_
                (lambda (_%$%g4808348119%_)
                  (if (gx#stx-pair? _%$%g4808348119%_)
                      (let ((_%$%e4808648122%_
                             (gx#syntax-e _%$%g4808348119%_)))
                        (let ((_%$%hd4808748126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e4808648122%_)))
                              (_%$%tl4808848129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e4808648122%_))))
                          (if (gx#stx-pair? _%$%tl4808848129%_)
                              (let ((_%$%e4808948132%_
                                     (gx#syntax-e _%$%tl4808848129%_)))
                                (let ((_%$%hd4809048136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e4808948132%_)))
                                      (_%$%tl4809148139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e4808948132%_))))
                                  (if (gx#stx-pair/null? _%$%hd4809048136%_)
                                      (let ((_g49294_
                                             (gx#syntax-split-splice
                                              _%$%hd4809048136%_
                                              '0)))
                                        (begin
                                          (let ((_g49295_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g49294_)
                                                       (##values-length
                                                        _g49294_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g49295_ 2)))
                                                (error "Context expects 2 values"
                                                       _g49295_)))
                                          (let ((_%$%target4809248142%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49294_ 0)))
                                                (_%$%tl4809448145%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g49294_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl4809448145%_)
                                                (letrec ((_%$%loop4809548148%_
                                                          (lambda (_%$%hd4809348152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause4809948155%_)
                    (if (gx#stx-pair? _%$%hd4809348152%_)
                        (let ((_%$%e4809648157%_
                               (gx#syntax-e _%$%hd4809348152%_)))
                          (let ((_%$%lp-hd4809748161%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e4809648157%_)))
                                (_%$%lp-tl4809848164%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e4809648157%_))))
                            (_%$%loop4809548148%_
                             _%$%lp-tl4809848164%_
                             (cons _%$%lp-hd4809748161%_
                                   _%$%clause4809948155%_))))
                        (let ((_%$%clause4810048167%_
                               (reverse _%$%clause4809948155%_)))
                          (if (gx#stx-pair/null? _%$%tl4809148139%_)
                              (let ((_g49296_
                                     (gx#syntax-split-splice
                                      _%$%tl4809148139%_
                                      '0)))
                                (begin
                                  (let ((_g49297_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g49296_)
                                               (##values-length _g49296_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g49297_ 2)))
                                        (error "Context expects 2 values"
                                               _g49297_)))
                                  (let ((_%$%target4810148170%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49296_ 0)))
                                        (_%$%tl4810348173%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g49296_ 1))))
                                    (if (gx#stx-null? _%$%tl4810348173%_)
                                        (letrec ((_%$%loop4810448176%_
                                                  (lambda (_%$%hd4810248180%_
                                                           _%$%body4810848183%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd4810248180%_)
                                                        (let ((_%$%e4810548185%_
                                                               (gx#syntax-e
                                                                _%$%hd4810248180%_)))
                                                          (let ((_%$%lp-hd4810648189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e4810548185%_)))
                        (_%$%lp-tl4810748192%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e4810548185%_))))
                    (_%$%loop4810448176%_
                     _%$%lp-tl4810748192%_
                     (cons _%$%lp-hd4810648189%_ _%$%body4810848183%_))))
                (let* ((_%$%body4810948195%_ (reverse _%$%body4810848183%_))
                       (_%subs48609%_
                        (map (lambda (_%clause48222%_)
                               (let* ((_%__stx4909749098%_ _%clause48222%_)
                                      (_%$%g4822848299%_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx4909749098%_))))
                                 (let ((_%__kont4910049101%_
                                        (lambda (_%$%g4823048578%_
                                                 _%$%g4823148580%_)
                                          (cons _%$%g4823148580%_
                                                (gx#syntax-local-temp
                                                 (gx#stx-e
                                                  _%$%g4823048578%_)))))
                                       (_%__kont4910249103%_
                                        (lambda (_%$%g4824448512%_
                                                 _%$%g4824548514%_)
                                          (cons _%$%g4824548514%_
                                                (gx#genident 'local-id))))
                                       (_%__kont4910449105%_
                                        (lambda (_%$%g4825848446%_
                                                 _%$%g4825948448%_)
                                          (cons _%$%g4825948448%_
                                                (gx#syntax-local-introduce
                                                 _%$%g4825848446%_))))
                                       (_%__kont4910649107%_
                                        (lambda (_%$%g4827248364%_
                                                 _%$%g4827348366%_
                                                 _%$%g4827448367%_
                                                 _%$%g4827548368%_)
                                          (cons _%$%g4827548368%_
                                                (gx#stx-identifier
                                                 _%$%g4827448367%_
                                                 (cons _%$%g4827348366%_
                                                       (foldr (lambda (_%$%g4839048393%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%g4839148396%_)
                        (cons _%$%g4839048393%_ _%$%g4839148396%_))
                      '()
                      _%$%g4827248364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (let* ((_%__match4923249233%_
                                           (lambda (_%$%e4827648306%_
                                                    _%$%hd4827748310%_
                                                    _%$%tl4827848313%_
                                                    _%$%e4827948316%_
                                                    _%$%hd4828048320%_
                                                    _%$%tl4828148323%_
                                                    _%$%e4828248326%_
                                                    _%$%hd4828348330%_
                                                    _%$%tl4828448333%_
                                                    _%__splice4910849109%_
                                                    _%$%target4828548336%_
                                                    _%$%tl4828748339%_)
                                             (letrec ((_%$%loop4828848342%_
                                                       (lambda (_%$%hd4828648346%_
                                                                _%$%components4829248349%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd4828648346%_)
                                                             (let ((_%$%e4828948351%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd4828648346%_)))
                       (let ((_%$%lp-tl4829148358%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4828948351%_)))
                             (_%$%lp-hd4829048355%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4828948351%_))))
                         (_%$%loop4828848342%_
                          _%$%lp-tl4829148358%_
                          (cons _%$%lp-hd4829048355%_
                                _%$%components4829248349%_))))
                     (let ((_%$%components4829348361%_
                            (reverse _%$%components4829248349%_)))
                       (let ((_%$%g4827248364%_ _%$%components4829348361%_)
                             (_%$%g4827348366%_ _%$%hd4828348330%_)
                             (_%$%g4827448367%_ _%$%hd4828048320%_)
                             (_%$%g4827548368%_ _%$%hd4827748310%_))
                         (if (gx#identifier? _%$%g4827548368%_)
                             (_%__kont4910649107%_
                              _%$%g4827248364%_
                              _%$%g4827348366%_
                              _%$%g4827448367%_
                              _%$%g4827548368%_)
                             (_%$%g4822848299%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop4828848342%_
                                                _%$%target4828548336%_
                                                '()))))
                                          (_%__match4920649207%_
                                           (lambda (_%$%e4826048406%_
                                                    _%$%hd4826148410%_
                                                    _%$%tl4826248413%_
                                                    _%$%e4826348416%_
                                                    _%$%hd4826448420%_
                                                    _%$%tl4826548423%_
                                                    _%$%e4826648426%_
                                                    _%$%hd4826748430%_
                                                    _%$%tl4826848433%_
                                                    _%$%e4826948436%_
                                                    _%$%hd4827048440%_
                                                    _%$%tl4827148443%_)
                                             (let ((_%$%g4825848446%_
                                                    _%$%hd4827048440%_)
                                                   (_%$%g4825948448%_
                                                    _%$%hd4826148410%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4825948448%_)
                                                        (gx#identifier?
                                                         _%$%g4825848446%_))
                                                   (_%__kont4910449105%_
                                                    _%$%g4825848446%_
                                                    _%$%g4825948448%_)
                                                   (_%$%g4822848299%_)))))
                                          (_%__match4917449175%_
                                           (lambda (_%$%e4824648472%_
                                                    _%$%hd4824748476%_
                                                    _%$%tl4824848479%_
                                                    _%$%e4824948482%_
                                                    _%$%hd4825048486%_
                                                    _%$%tl4825148489%_
                                                    _%$%e4825248492%_
                                                    _%$%hd4825348496%_
                                                    _%$%tl4825448499%_
                                                    _%$%e4825548502%_
                                                    _%$%hd4825648506%_
                                                    _%$%tl4825748509%_)
                                             (let ((_%$%g4824448512%_
                                                    _%$%hd4825648506%_)
                                                   (_%$%g4824548514%_
                                                    _%$%hd4824748476%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4824548514%_)
                                                        (gx#identifier?
                                                         _%$%g4824448512%_))
                                                   (_%__kont4910249103%_
                                                    _%$%g4824448512%_
                                                    _%$%g4824548514%_)
                                                   (_%$%g4822848299%_)))))
                                          (_%__match4914249143%_
                                           (lambda (_%$%e4823248538%_
                                                    _%$%hd4823348542%_
                                                    _%$%tl4823448545%_
                                                    _%$%e4823548548%_
                                                    _%$%hd4823648552%_
                                                    _%$%tl4823748555%_
                                                    _%$%e4823848558%_
                                                    _%$%hd4823948562%_
                                                    _%$%tl4824048565%_
                                                    _%$%e4824148568%_
                                                    _%$%hd4824248572%_
                                                    _%$%tl4824348575%_)
                                             (let ((_%$%g4823048578%_
                                                    _%$%hd4824248572%_)
                                                   (_%$%g4823148580%_
                                                    _%$%hd4823348542%_))
                                               (if (and (gx#identifier?
                                                         _%$%g4823148580%_)
                                                        (gx#identifier?
                                                         _%$%g4823048578%_))
                                                   (_%__kont4910049101%_
                                                    _%$%g4823048578%_
                                                    _%$%g4823148580%_)
                                                   (_%$%g4822848299%_))))))
                                     (if (gx#stx-pair? _%__stx4909749098%_)
                                         (let ((_%$%e4823248538%_
                                                (gx#syntax-e
                                                 _%__stx4909749098%_)))
                                           (let ((_%$%tl4823448545%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4823248538%_)))
                                                 (_%$%hd4823348542%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4823248538%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl4823448545%_)
                                                 (let ((_%$%e4823548548%_
                                                        (gx#syntax-e
                                                         _%$%tl4823448545%_)))
                                                   (let ((_%$%tl4823748555%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4823548548%_)))
                                                         (_%$%hd4823648552%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4823548548%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%hd4823648552%_)
                                                         (let ((_%$%e4823848558%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd4823648552%_)))
                   (let ((_%$%tl4824048565%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4823848558%_)))
                         (_%$%hd4823948562%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4823848558%_))))
                     (if (gx#identifier? _%$%hd4823948562%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/more-sugar[1]#_g49298_|
                              _%$%hd4823948562%_)
                             (if (gx#stx-pair? _%$%tl4824048565%_)
                                 (let ((_%$%e4824148568%_
                                        (gx#syntax-e _%$%tl4824048565%_)))
                                   (let ((_%$%tl4824348575%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e4824148568%_)))
                                         (_%$%hd4824248572%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e4824148568%_))))
                                     (if (gx#stx-null? _%$%tl4824348575%_)
                                         (if (gx#stx-null? _%$%tl4823748555%_)
                                             (_%__match4914249143%_
                                              _%$%e4823248538%_
                                              _%$%hd4823348542%_
                                              _%$%tl4823448545%_
                                              _%$%e4823548548%_
                                              _%$%hd4823648552%_
                                              _%$%tl4823748555%_
                                              _%$%e4823848558%_
                                              _%$%hd4823948562%_
                                              _%$%tl4824048565%_
                                              _%$%e4824148568%_
                                              _%$%hd4824248572%_
                                              _%$%tl4824348575%_)
                                             (if (gx#stx-pair?
                                                  _%$%tl4823748555%_)
                                                 (let ((_%$%e4828248326%_
                                                        (gx#syntax-e
                                                         _%$%tl4823748555%_)))
                                                   (let ((_%$%tl4828448333%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4828248326%_)))
                                                         (_%$%hd4828348330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4828248326%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4828448333%_)
                                                         (let ((_%__splice4910849109%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4828448333%_
                         '0)))
                   (let ((_%$%tl4828748339%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4910849109%_ '1)))
                         (_%$%target4828548336%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4910849109%_ '0))))
                     (if (gx#stx-null? _%$%tl4828748339%_)
                         (_%__match4923249233%_
                          _%$%e4823248538%_
                          _%$%hd4823348542%_
                          _%$%tl4823448545%_
                          _%$%e4823548548%_
                          _%$%hd4823648552%_
                          _%$%tl4823748555%_
                          _%$%e4828248326%_
                          _%$%hd4828348330%_
                          _%$%tl4828448333%_
                          _%__splice4910849109%_
                          _%$%target4828548336%_
                          _%$%tl4828748339%_)
                         (_%$%g4822848299%_))))
                 (_%$%g4822848299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4822848299%_)))
                                         (if (gx#stx-pair? _%$%tl4823748555%_)
                                             (let ((_%$%e4828248326%_
                                                    (gx#syntax-e
                                                     _%$%tl4823748555%_)))
                                               (let ((_%$%tl4828448333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4828248326%_)))
                                                     (_%$%hd4828348330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4828248326%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4828448333%_)
                                                     (let ((_%__splice4910849109%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4828448333%_
                                                             '0)))
                                                       (let ((_%$%tl4828748339%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4910849109%_ '1)))
                     (_%$%target4828548336%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4910849109%_ '0))))
                 (if (gx#stx-null? _%$%tl4828748339%_)
                     (_%__match4923249233%_
                      _%$%e4823248538%_
                      _%$%hd4823348542%_
                      _%$%tl4823448545%_
                      _%$%e4823548548%_
                      _%$%hd4823648552%_
                      _%$%tl4823748555%_
                      _%$%e4828248326%_
                      _%$%hd4828348330%_
                      _%$%tl4828448333%_
                      _%__splice4910849109%_
                      _%$%target4828548336%_
                      _%$%tl4828748339%_)
                     (_%$%g4822848299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4822848299%_))))
                                             (_%$%g4822848299%_)))))
                                 (if (gx#stx-pair? _%$%tl4823748555%_)
                                     (let ((_%$%e4828248326%_
                                            (gx#syntax-e _%$%tl4823748555%_)))
                                       (let ((_%$%tl4828448333%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4828248326%_)))
                                             (_%$%hd4828348330%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4828248326%_))))
                                         (if (gx#stx-pair/null?
                                              _%$%tl4828448333%_)
                                             (let ((_%__splice4910849109%_
                                                    (gx#syntax-split-splice->vector
                                                     _%$%tl4828448333%_
                                                     '0)))
                                               (let ((_%$%tl4828748339%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4910849109%_
                                                         '1)))
                                                     (_%$%target4828548336%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-ref
                                                         _%__splice4910849109%_
                                                         '0))))
                                                 (if (gx#stx-null?
                                                      _%$%tl4828748339%_)
                                                     (_%__match4923249233%_
                                                      _%$%e4823248538%_
                                                      _%$%hd4823348542%_
                                                      _%$%tl4823448545%_
                                                      _%$%e4823548548%_
                                                      _%$%hd4823648552%_
                                                      _%$%tl4823748555%_
                                                      _%$%e4828248326%_
                                                      _%$%hd4828348330%_
                                                      _%$%tl4828448333%_
                                                      _%__splice4910849109%_
                                                      _%$%target4828548336%_
                                                      _%$%tl4828748339%_)
                                                     (_%$%g4822848299%_))))
                                             (_%$%g4822848299%_))))
                                     (_%$%g4822848299%_)))
                             (if (gx#free-identifier=?
                                  |gerbil/core/more-sugar[1]#_g49299_|
                                  _%$%hd4823948562%_)
                                 (if (gx#stx-pair? _%$%tl4824048565%_)
                                     (let ((_%$%e4825548502%_
                                            (gx#syntax-e _%$%tl4824048565%_)))
                                       (let ((_%$%tl4825748509%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e4825548502%_)))
                                             (_%$%hd4825648506%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e4825548502%_))))
                                         (if (gx#stx-null? _%$%tl4825748509%_)
                                             (if (gx#stx-null?
                                                  _%$%tl4823748555%_)
                                                 (_%__match4917449175%_
                                                  _%$%e4823248538%_
                                                  _%$%hd4823348542%_
                                                  _%$%tl4823448545%_
                                                  _%$%e4823548548%_
                                                  _%$%hd4823648552%_
                                                  _%$%tl4823748555%_
                                                  _%$%e4823848558%_
                                                  _%$%hd4823948562%_
                                                  _%$%tl4824048565%_
                                                  _%$%e4825548502%_
                                                  _%$%hd4825648506%_
                                                  _%$%tl4825748509%_)
                                                 (if (gx#stx-pair?
                                                      _%$%tl4823748555%_)
                                                     (let ((_%$%e4828248326%_
                                                            (gx#syntax-e
                                                             _%$%tl4823748555%_)))
                                                       (let ((_%$%tl4828448333%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4828248326%_)))
                     (_%$%hd4828348330%_
                      (let () (declare (not safe)) (##car _%$%e4828248326%_))))
                 (if (gx#stx-pair/null? _%$%tl4828448333%_)
                     (let ((_%__splice4910849109%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4828448333%_
                             '0)))
                       (let ((_%$%tl4828748339%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4910849109%_ '1)))
                             (_%$%target4828548336%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4910849109%_ '0))))
                         (if (gx#stx-null? _%$%tl4828748339%_)
                             (_%__match4923249233%_
                              _%$%e4823248538%_
                              _%$%hd4823348542%_
                              _%$%tl4823448545%_
                              _%$%e4823548548%_
                              _%$%hd4823648552%_
                              _%$%tl4823748555%_
                              _%$%e4828248326%_
                              _%$%hd4828348330%_
                              _%$%tl4828448333%_
                              _%__splice4910849109%_
                              _%$%target4828548336%_
                              _%$%tl4828748339%_)
                             (_%$%g4822848299%_))))
                     (_%$%g4822848299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4822848299%_)))
                                             (if (gx#stx-pair?
                                                  _%$%tl4823748555%_)
                                                 (let ((_%$%e4828248326%_
                                                        (gx#syntax-e
                                                         _%$%tl4823748555%_)))
                                                   (let ((_%$%tl4828448333%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e4828248326%_)))
                                                         (_%$%hd4828348330%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e4828248326%_))))
                                                     (if (gx#stx-pair/null?
                                                          _%$%tl4828448333%_)
                                                         (let ((_%__splice4910849109%_
                                                                (gx#syntax-split-splice->vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4828448333%_
                         '0)))
                   (let ((_%$%tl4828748339%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4910849109%_ '1)))
                         (_%$%target4828548336%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%__splice4910849109%_ '0))))
                     (if (gx#stx-null? _%$%tl4828748339%_)
                         (_%__match4923249233%_
                          _%$%e4823248538%_
                          _%$%hd4823348542%_
                          _%$%tl4823448545%_
                          _%$%e4823548548%_
                          _%$%hd4823648552%_
                          _%$%tl4823748555%_
                          _%$%e4828248326%_
                          _%$%hd4828348330%_
                          _%$%tl4828448333%_
                          _%__splice4910849109%_
                          _%$%target4828548336%_
                          _%$%tl4828748339%_)
                         (_%$%g4822848299%_))))
                 (_%$%g4822848299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4822848299%_)))))
                                     (if (gx#stx-pair? _%$%tl4823748555%_)
                                         (let ((_%$%e4828248326%_
                                                (gx#syntax-e
                                                 _%$%tl4823748555%_)))
                                           (let ((_%$%tl4828448333%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4828248326%_)))
                                                 (_%$%hd4828348330%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4828248326%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4828448333%_)
                                                 (let ((_%__splice4910849109%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4828448333%_
                                                         '0)))
                                                   (let ((_%$%tl4828748339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4910849109%_
                                                             '1)))
                                                         (_%$%target4828548336%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4910849109%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4828748339%_)
                                                         (_%__match4923249233%_
                                                          _%$%e4823248538%_
                                                          _%$%hd4823348542%_
                                                          _%$%tl4823448545%_
                                                          _%$%e4823548548%_
                                                          _%$%hd4823648552%_
                                                          _%$%tl4823748555%_
                                                          _%$%e4828248326%_
                                                          _%$%hd4828348330%_
                                                          _%$%tl4828448333%_
                                                          _%__splice4910849109%_
                                                          _%$%target4828548336%_
                                                          _%$%tl4828748339%_)
                                                         (_%$%g4822848299%_))))
                                                 (_%$%g4822848299%_))))
                                         (_%$%g4822848299%_)))
                                 (if (gx#free-identifier=?
                                      |gerbil/core/more-sugar[1]#_g49300_|
                                      _%$%hd4823948562%_)
                                     (if (gx#stx-pair? _%$%tl4824048565%_)
                                         (let ((_%$%e4826948436%_
                                                (gx#syntax-e
                                                 _%$%tl4824048565%_)))
                                           (let ((_%$%tl4827148443%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4826948436%_)))
                                                 (_%$%hd4827048440%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4826948436%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl4827148443%_)
                                                 (if (gx#stx-null?
                                                      _%$%tl4823748555%_)
                                                     (_%__match4920649207%_
                                                      _%$%e4823248538%_
                                                      _%$%hd4823348542%_
                                                      _%$%tl4823448545%_
                                                      _%$%e4823548548%_
                                                      _%$%hd4823648552%_
                                                      _%$%tl4823748555%_
                                                      _%$%e4823848558%_
                                                      _%$%hd4823948562%_
                                                      _%$%tl4824048565%_
                                                      _%$%e4826948436%_
                                                      _%$%hd4827048440%_
                                                      _%$%tl4827148443%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl4823748555%_)
                                                         (let ((_%$%e4828248326%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl4823748555%_)))
                   (let ((_%$%tl4828448333%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e4828248326%_)))
                         (_%$%hd4828348330%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e4828248326%_))))
                     (if (gx#stx-pair/null? _%$%tl4828448333%_)
                         (let ((_%__splice4910849109%_
                                (gx#syntax-split-splice->vector
                                 _%$%tl4828448333%_
                                 '0)))
                           (let ((_%$%tl4828748339%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4910849109%_ '1)))
                                 (_%$%target4828548336%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref _%__splice4910849109%_ '0))))
                             (if (gx#stx-null? _%$%tl4828748339%_)
                                 (_%__match4923249233%_
                                  _%$%e4823248538%_
                                  _%$%hd4823348542%_
                                  _%$%tl4823448545%_
                                  _%$%e4823548548%_
                                  _%$%hd4823648552%_
                                  _%$%tl4823748555%_
                                  _%$%e4828248326%_
                                  _%$%hd4828348330%_
                                  _%$%tl4828448333%_
                                  _%__splice4910849109%_
                                  _%$%target4828548336%_
                                  _%$%tl4828748339%_)
                                 (_%$%g4822848299%_))))
                         (_%$%g4822848299%_))))
                 (_%$%g4822848299%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%$%tl4823748555%_)
                                                     (let ((_%$%e4828248326%_
                                                            (gx#syntax-e
                                                             _%$%tl4823748555%_)))
                                                       (let ((_%$%tl4828448333%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e4828248326%_)))
                     (_%$%hd4828348330%_
                      (let () (declare (not safe)) (##car _%$%e4828248326%_))))
                 (if (gx#stx-pair/null? _%$%tl4828448333%_)
                     (let ((_%__splice4910849109%_
                            (gx#syntax-split-splice->vector
                             _%$%tl4828448333%_
                             '0)))
                       (let ((_%$%tl4828748339%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4910849109%_ '1)))
                             (_%$%target4828548336%_
                              (let ()
                                (declare (not safe))
                                (##vector-ref _%__splice4910849109%_ '0))))
                         (if (gx#stx-null? _%$%tl4828748339%_)
                             (_%__match4923249233%_
                              _%$%e4823248538%_
                              _%$%hd4823348542%_
                              _%$%tl4823448545%_
                              _%$%e4823548548%_
                              _%$%hd4823648552%_
                              _%$%tl4823748555%_
                              _%$%e4828248326%_
                              _%$%hd4828348330%_
                              _%$%tl4828448333%_
                              _%__splice4910849109%_
                              _%$%target4828548336%_
                              _%$%tl4828748339%_)
                             (_%$%g4822848299%_))))
                     (_%$%g4822848299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4822848299%_)))))
                                         (if (gx#stx-pair? _%$%tl4823748555%_)
                                             (let ((_%$%e4828248326%_
                                                    (gx#syntax-e
                                                     _%$%tl4823748555%_)))
                                               (let ((_%$%tl4828448333%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e4828248326%_)))
                                                     (_%$%hd4828348330%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e4828248326%_))))
                                                 (if (gx#stx-pair/null?
                                                      _%$%tl4828448333%_)
                                                     (let ((_%__splice4910849109%_
                                                            (gx#syntax-split-splice->vector
                                                             _%$%tl4828448333%_
                                                             '0)))
                                                       (let ((_%$%tl4828748339%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##vector-ref _%__splice4910849109%_ '1)))
                     (_%$%target4828548336%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref _%__splice4910849109%_ '0))))
                 (if (gx#stx-null? _%$%tl4828748339%_)
                     (_%__match4923249233%_
                      _%$%e4823248538%_
                      _%$%hd4823348542%_
                      _%$%tl4823448545%_
                      _%$%e4823548548%_
                      _%$%hd4823648552%_
                      _%$%tl4823748555%_
                      _%$%e4828248326%_
                      _%$%hd4828348330%_
                      _%$%tl4828448333%_
                      _%__splice4910849109%_
                      _%$%target4828548336%_
                      _%$%tl4828748339%_)
                     (_%$%g4822848299%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g4822848299%_))))
                                             (_%$%g4822848299%_)))
                                     (if (gx#stx-pair? _%$%tl4823748555%_)
                                         (let ((_%$%e4828248326%_
                                                (gx#syntax-e
                                                 _%$%tl4823748555%_)))
                                           (let ((_%$%tl4828448333%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e4828248326%_)))
                                                 (_%$%hd4828348330%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e4828248326%_))))
                                             (if (gx#stx-pair/null?
                                                  _%$%tl4828448333%_)
                                                 (let ((_%__splice4910849109%_
                                                        (gx#syntax-split-splice->vector
                                                         _%$%tl4828448333%_
                                                         '0)))
                                                   (let ((_%$%tl4828748339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4910849109%_
                                                             '1)))
                                                         (_%$%target4828548336%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _%__splice4910849109%_
                                                             '0))))
                                                     (if (gx#stx-null?
                                                          _%$%tl4828748339%_)
                                                         (_%__match4923249233%_
                                                          _%$%e4823248538%_
                                                          _%$%hd4823348542%_
                                                          _%$%tl4823448545%_
                                                          _%$%e4823548548%_
                                                          _%$%hd4823648552%_
                                                          _%$%tl4823748555%_
                                                          _%$%e4828248326%_
                                                          _%$%hd4828348330%_
                                                          _%$%tl4828448333%_
                                                          _%__splice4910849109%_
                                                          _%$%target4828548336%_
                                                          _%$%tl4828748339%_)
                                                         (_%$%g4822848299%_))))
                                                 (_%$%g4822848299%_))))
                                         (_%$%g4822848299%_)))))
                         (if (gx#stx-pair? _%$%tl4823748555%_)
                             (let ((_%$%e4828248326%_
                                    (gx#syntax-e _%$%tl4823748555%_)))
                               (let ((_%$%tl4828448333%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e4828248326%_)))
                                     (_%$%hd4828348330%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e4828248326%_))))
                                 (if (gx#stx-pair/null? _%$%tl4828448333%_)
                                     (let ((_%__splice4910849109%_
                                            (gx#syntax-split-splice->vector
                                             _%$%tl4828448333%_
                                             '0)))
                                       (let ((_%$%tl4828748339%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4910849109%_
                                                 '1)))
                                             (_%$%target4828548336%_
                                              (let ()
                                                (declare (not safe))
                                                (##vector-ref
                                                 _%__splice4910849109%_
                                                 '0))))
                                         (if (gx#stx-null? _%$%tl4828748339%_)
                                             (_%__match4923249233%_
                                              _%$%e4823248538%_
                                              _%$%hd4823348542%_
                                              _%$%tl4823448545%_
                                              _%$%e4823548548%_
                                              _%$%hd4823648552%_
                                              _%$%tl4823748555%_
                                              _%$%e4828248326%_
                                              _%$%hd4828348330%_
                                              _%$%tl4828448333%_
                                              _%__splice4910849109%_
                                              _%$%target4828548336%_
                                              _%$%tl4828748339%_)
                                             (_%$%g4822848299%_))))
                                     (_%$%g4822848299%_))))
                             (_%$%g4822848299%_)))))
                 (if (gx#stx-pair? _%$%tl4823748555%_)
                     (let ((_%$%e4828248326%_
                            (gx#syntax-e _%$%tl4823748555%_)))
                       (let ((_%$%tl4828448333%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e4828248326%_)))
                             (_%$%hd4828348330%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e4828248326%_))))
                         (if (gx#stx-pair/null? _%$%tl4828448333%_)
                             (let ((_%__splice4910849109%_
                                    (gx#syntax-split-splice->vector
                                     _%$%tl4828448333%_
                                     '0)))
                               (let ((_%$%tl4828748339%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4910849109%_
                                         '1)))
                                     (_%$%target4828548336%_
                                      (let ()
                                        (declare (not safe))
                                        (##vector-ref
                                         _%__splice4910849109%_
                                         '0))))
                                 (if (gx#stx-null? _%$%tl4828748339%_)
                                     (_%__match4923249233%_
                                      _%$%e4823248538%_
                                      _%$%hd4823348542%_
                                      _%$%tl4823448545%_
                                      _%$%e4823548548%_
                                      _%$%hd4823648552%_
                                      _%$%tl4823748555%_
                                      _%$%e4828248326%_
                                      _%$%hd4828348330%_
                                      _%$%tl4828448333%_
                                      _%__splice4910849109%_
                                      _%$%target4828548336%_
                                      _%$%tl4828748339%_)
                                     (_%$%g4822848299%_))))
                             (_%$%g4822848299%_))))
                     (_%$%g4822848299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g4822848299%_))))
                                         (_%$%g4822848299%_))))))
                             (gx#syntax->list
                              (foldr (lambda (_%$%g4860048603%_
                                              _%$%g4860148606%_)
                                       (cons _%$%g4860048603%_
                                             _%$%g4860148606%_))
                                     '()
                                     _%$%clause4810048167%_)))))
                  (|gerbil/core/more-sugar[1]#stx-substitute__0|
                   _%subs48609%_
                   (cons (gx#datum->syntax '#f 'begin)
                         (foldr (lambda (_%$%g4861148614%_ _%$%g4861248617%_)
                                  (cons _%$%g4861148614%_ _%$%g4861248617%_))
                                '()
                                _%$%body4810948195%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop4810448176%_
                                           _%$%target4810148170%_
                                           '()))
                                        (_%$%g4808248115%_
                                         _%$%g4808348119%_)))))
                              (_%$%g4808248115%_ _%$%g4808348119%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop4809548148%_
                                                   _%$%target4809248142%_
                                                   '()))
                                                (_%$%g4808248115%_
                                                 _%$%g4808348119%_)))))
                                      (_%$%g4808248115%_ _%$%g4808348119%_))))
                              (_%$%g4808248115%_ _%$%g4808348119%_))))
                      (_%$%g4808248115%_ _%$%g4808348119%_)))))
          (_%$%g4808148620%_ _%stx48079%_))))))
