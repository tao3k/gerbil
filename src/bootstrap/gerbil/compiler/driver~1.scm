(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx274077%_)
    (let* ((_%$%g274081274095%_
            (lambda (_%$%g274082274091%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g274082274091%_))))
           (_%$%g274080274137%_
            (lambda (_%$%g274082274099%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g274082274099%_))
                  (let ((_%$%e274084274102%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g274082274099%_))))
                    (let ((_%$%hd274085274106%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e274084274102%_)))
                          (_%$%tl274086274109%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e274084274102%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl274086274109%_))
                          (let ((_%$%e274087274112%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl274086274109%_))))
                            (let ((_%$%hd274088274116%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e274087274112%_)))
                                  (_%$%tl274089274119%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e274087274112%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl274089274119%_))
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
                                                                (cons _%$%hd274088274116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g274081274095%_ _%$%g274082274099%_))))
                          (_%$%g274081274095%_ _%$%g274082274099%_))))
                  (_%$%g274081274095%_ _%$%g274082274099%_)))))
      (_%$%g274080274137%_ _%$stx274077%_))))
