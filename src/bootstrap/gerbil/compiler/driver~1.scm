(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx273984%_)
    (let* ((_%$%g273988274002%_
            (lambda (_%$%g273989273998%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g273989273998%_))))
           (_%$%g273987274044%_
            (lambda (_%$%g273989274006%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g273989274006%_))
                  (let ((_%$%e273991274009%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g273989274006%_))))
                    (let ((_%$%hd273992274013%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e273991274009%_)))
                          (_%$%tl273993274016%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e273991274009%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl273993274016%_))
                          (let ((_%$%e273994274019%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl273993274016%_))))
                            (let ((_%$%hd273995274023%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e273994274019%_)))
                                  (_%$%tl273996274026%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e273994274019%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl273996274026%_))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'with-lock))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '+driver-mutex+))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'lambda))
                                                          (cons '()
                                                                (cons _%$%hd273995274023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g273988274002%_ _%$%g273989274006%_))))
                          (_%$%g273988274002%_ _%$%g273989274006%_))))
                  (_%$%g273988274002%_ _%$%g273989274006%_)))))
      (_%$%g273987274044%_ _%$stx273984%_))))
