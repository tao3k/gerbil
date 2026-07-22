(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/contract~TypeReference[1]#type-reference::t|
    (make-class-type
     'gerbil/core/contract~TypeReference#type-reference::t
     'type-reference
     (list)
     '(identifier)
     '()
     '#f))
  (define |gerbil/core/contract~TypeReference[1]#type-reference?|
    (make-class-predicate
     |gerbil/core/contract~TypeReference[1]#type-reference::t|))
  (define |gerbil/core/contract~TypeReference[1]#make-type-reference|
    (lambda _%$args53763%_
      (apply make-instance
             |gerbil/core/contract~TypeReference[1]#type-reference::t|
             _%$args53763%_)))
  (define |gerbil/core/contract~TypeReference[1]#type-reference-identifier|
    (make-class-slot-accessor
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#type-reference-identifier-set!|
    (make-class-slot-mutator
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#&type-reference-identifier|
    (make-class-slot-unchecked-accessor
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#&type-reference-identifier-set!|
    (make-class-slot-unchecked-mutator
     |gerbil/core/contract~TypeReference[1]#type-reference::t|
     'identifier))
  (define |gerbil/core/contract~TypeReference[1]#type-identifier?|
    (lambda (_%id53745%_)
      (if (gx#identifier? _%id53745%_)
          (let ((_%$%t5374753749%_ (gx#syntax-local-value _%id53745%_ false)))
            (if _%$%t5374753749%_
                (let* ((_%t53752%_ _%$%t5374753749%_)
                       (_%$e53755%_
                        (let ()
                          (declare (not safe))
                          (class-instance?
                           gerbil/core/mop~MOP-2#class-type-info::t
                           _%t53752%_))))
                  (if _%$e53755%_
                      _%$e53755%_
                      (let ((_%$e53759%_
                             (let ()
                               (declare (not safe))
                               (class-instance?
                                gerbil/core/contract~InterfaceInfo#interface-info::t
                                _%t53752%_))))
                        (if _%$e53759%_
                            _%$e53759%_
                            (let ()
                              (declare (not safe))
                              (class-instance?
                               |gerbil/core/contract~TypeReference[1]#type-reference::t|
                               _%t53752%_))))))
                '#f))
          '#f)))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type|
    (lambda (_%stx53725%_ _%id53727%_)
      (let _%loop53729%_ ((_%t53732%_
                           (gx#syntax-local-value _%id53727%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t53732%_))
            _%t53732%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t53732%_))
                _%t53732%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t53732%_))
                    (_%loop53729%_
                     (gx#syntax-local-value
                      (let ((__obj105187 _%t53732%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-direct-instance-of?
                               __obj105187
                               'gerbil/core/contract~TypeReference#type-reference::t))
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               __obj105187
                               '1
                               '#f
                               '#f))
                            (unchecked-slot-ref __obj105187 'identifier)))
                      false))
                    (if (not _%t53732%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx53725%_
                         _%id53727%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx53725%_
                         _%id53727%_
                         _%t53732%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->identifier|
    (lambda (_%stx53701%_ _%id53703%_)
      (let _%loop53705%_ ((_%id53708%_ _%id53703%_)
                          (_%t53710%_
                           (gx#syntax-local-value _%id53703%_ false)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t53710%_))
            _%id53708%_
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t53710%_))
                _%id53708%_
                (if (let ()
                      (declare (not safe))
                      (class-instance?
                       |gerbil/core/contract~TypeReference[1]#type-reference::t|
                       _%t53710%_))
                    (let ((_%id53718%_
                           (let ((__obj105188 _%t53710%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-direct-instance-of?
                                    __obj105188
                                    'gerbil/core/contract~TypeReference#type-reference::t))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __obj105188
                                    '1
                                    '#f
                                    '#f))
                                 (unchecked-slot-ref
                                  __obj105188
                                  'identifier)))))
                      (_%loop53705%_
                       _%id53718%_
                       (gx#syntax-local-value _%id53718%_ false)))
                    (if (not _%t53710%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unresolved type"
                         _%stx53701%_
                         _%id53708%_)
                        (gx#raise-syntax-error
                         '#f
                         '"unexpected type; expected class, interface or type reference"
                         _%stx53701%_
                         _%id53708%_
                         _%t53710%_))))))))
  (define |gerbil/core/contract~TypeReference[1]#resolve-type->type-descriptor|
    (lambda (_%stx53688%_ _%id53690%_)
      (let ((_%t53692%_
             (|gerbil/core/contract~TypeReference[1]#resolve-type|
              _%stx53688%_
              _%id53690%_)))
        (if (let ()
              (declare (not safe))
              (class-instance?
               gerbil/core/mop~MOP-2#class-type-info::t
               _%t53692%_))
            (let ((__obj105190 _%t53692%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-direct-instance-of?
                     __obj105190
                     'gerbil/core#class-type-info::t))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref __obj105190 '4 '#f '#f))
                  (unchecked-slot-ref __obj105190 'type-descriptor)))
            (if (let ()
                  (declare (not safe))
                  (class-instance?
                   gerbil/core/contract~InterfaceInfo#interface-info::t
                   _%t53692%_))
                (let ((__obj105189 _%t53692%_))
                  (if (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         __obj105189
                         'gerbil/core#runtime-type-info::t))
                      (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref __obj105189 '3 '#f '#f))
                      (unchecked-slot-ref __obj105189 'type-descriptor)))
                (gx#raise-syntax-error
                 '#f
                 '"unexpected type; expected class, interface or type reference"
                 _%stx53688%_
                 _%id53690%_
                 _%t53692%_))))))
  (define |gerbil/core/contract~TypeReference[:0:]#deftype|
    (lambda (_%$stx53767%_)
      (let* ((_%$%g5377153789%_
              (lambda (_%$%g5377253785%_)
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; invalid match target"
                 _%$%g5377253785%_)))
             (_%$%g5377053844%_
              (lambda (_%$%g5377253793%_)
                (if (gx#stx-pair? _%$%g5377253793%_)
                    (let ((_%$%e5377553796%_ (gx#syntax-e _%$%g5377253793%_)))
                      (let ((_%$%hd5377653800%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e5377553796%_)))
                            (_%$%tl5377753803%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e5377553796%_))))
                        (if (gx#stx-pair? _%$%tl5377753803%_)
                            (let ((_%$%e5377853806%_
                                   (gx#syntax-e _%$%tl5377753803%_)))
                              (let ((_%$%hd5377953810%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e5377853806%_)))
                                    (_%$%tl5378053813%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e5377853806%_))))
                                (if (gx#stx-pair? _%$%tl5378053813%_)
                                    (let ((_%$%e5378153816%_
                                           (gx#syntax-e _%$%tl5378053813%_)))
                                      (let ((_%$%hd5378253820%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e5378153816%_)))
                                            (_%$%tl5378353823%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e5378153816%_))))
                                        (if (gx#stx-null? _%$%tl5378353823%_)
                                            (if (and (gx#identifier?
                                                      _%$%hd5377953810%_)
                                                     (gx#identifier?
                                                      _%$%hd5378253820%_))
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'defsyntax)
                                                      (cons _%$%hd5377953810%_
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'make-type-reference)
                                (cons 'identifier:
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'quote-syntax)
                                                  (cons _%$%hd5378253820%_
                                                        '()))
                                            '())))
                          '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g5377153789%_
                                                 _%$%g5377253793%_))
                                            (_%$%g5377153789%_
                                             _%$%g5377253793%_))))
                                    (_%$%g5377153789%_ _%$%g5377253793%_))))
                            (_%$%g5377153789%_ _%$%g5377253793%_))))
                    (_%$%g5377153789%_ _%$%g5377253793%_)))))
        (_%$%g5377053844%_ _%$stx53767%_)))))
