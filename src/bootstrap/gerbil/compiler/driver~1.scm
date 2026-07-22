(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx271985%_)
    (let* ((_%$%g271989272003%_
            (lambda (_%$%g271990271999%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g271990271999%_))))
           (_%$%g271988272045%_
            (lambda (_%$%g271990272007%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g271990272007%_))
                  (let ((_%$%e271992272010%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g271990272007%_))))
                    (let ((_%$%hd271993272014%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e271992272010%_)))
                          (_%$%tl271994272017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e271992272010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl271994272017%_))
                          (let ((_%$%e271995272020%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl271994272017%_))))
                            (let ((_%$%hd271996272024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e271995272020%_)))
                                  (_%$%tl271997272027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e271995272020%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl271997272027%_))
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
                                                                (cons _%$%hd271996272024%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g271989272003%_ _%$%g271990272007%_))))
                          (_%$%g271989272003%_ _%$%g271990272007%_))))
                  (_%$%g271989272003%_ _%$%g271990272007%_)))))
      (_%$%g271988272045%_ _%$stx271985%_))))
