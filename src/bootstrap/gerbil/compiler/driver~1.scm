(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx272206%_)
    (let* ((_%$%g272210272224%_
            (lambda (_%$%g272211272220%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g272211272220%_))))
           (_%$%g272209272266%_
            (lambda (_%$%g272211272228%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g272211272228%_))
                  (let ((_%$%e272213272231%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g272211272228%_))))
                    (let ((_%$%hd272214272235%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272213272231%_)))
                          (_%$%tl272215272238%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272213272231%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl272215272238%_))
                          (let ((_%$%e272216272241%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl272215272238%_))))
                            (let ((_%$%hd272217272245%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272216272241%_)))
                                  (_%$%tl272218272248%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272216272241%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl272218272248%_))
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
                                                                (cons _%$%hd272217272245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g272210272224%_ _%$%g272211272228%_))))
                          (_%$%g272210272224%_ _%$%g272211272228%_))))
                  (_%$%g272210272224%_ _%$%g272211272228%_)))))
      (_%$%g272209272266%_ _%$stx272206%_))))
