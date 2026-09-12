(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx272189%_)
    (let* ((_%$%g272193272207%_
            (lambda (_%$%g272194272203%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g272194272203%_))))
           (_%$%g272192272249%_
            (lambda (_%$%g272194272211%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g272194272211%_))
                  (let ((_%$%e272196272214%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g272194272211%_))))
                    (let ((_%$%hd272197272218%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272196272214%_)))
                          (_%$%tl272198272221%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272196272214%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl272198272221%_))
                          (let ((_%$%e272199272224%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl272198272221%_))))
                            (let ((_%$%hd272200272228%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272199272224%_)))
                                  (_%$%tl272201272231%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272199272224%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl272201272231%_))
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
                                                                (cons _%$%hd272200272228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g272193272207%_ _%$%g272194272211%_))))
                          (_%$%g272193272207%_ _%$%g272194272211%_))))
                  (_%$%g272193272207%_ _%$%g272194272211%_)))))
      (_%$%g272192272249%_ _%$stx272189%_))))
