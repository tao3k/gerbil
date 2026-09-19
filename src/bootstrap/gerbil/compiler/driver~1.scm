(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(define |gxc[:0:]#with-driver-mutex|
  (lambda (_%$stx274239%_)
    (let* ((_%$%g274243274257%_
            (lambda (_%$%g274244274253%_)
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g274244274253%_))))
           (_%$%g274242274299%_
            (lambda (_%$%g274244274261%_)
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%$%g274244274261%_))
                  (let ((_%$%e274246274264%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%g274244274261%_))))
                    (let ((_%$%hd274247274268%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e274246274264%_)))
                          (_%$%tl274248274271%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e274246274264%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl274248274271%_))
                          (let ((_%$%e274249274274%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl274248274271%_))))
                            (let ((_%$%hd274250274278%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e274249274274%_)))
                                  (_%$%tl274251274281%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e274249274274%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl274251274281%_))
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
                                                                (cons _%$%hd274250274278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (_%$%g274243274257%_ _%$%g274244274261%_))))
                          (_%$%g274243274257%_ _%$%g274244274261%_))))
                  (_%$%g274243274257%_ _%$%g274244274261%_)))))
      (_%$%g274242274299%_ _%$stx274239%_))))
