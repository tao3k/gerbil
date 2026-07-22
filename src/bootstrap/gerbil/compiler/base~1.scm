(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g200677_|
    (##structure
     gx#syntax-quote::t
     'symbol-table::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200679_|
    (##structure
     gx#syntax-quote::t
     'make-symbol-table
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200681_|
    (##structure
     gx#syntax-quote::t
     'symbol-table?
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200683_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200684_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200686_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200687_|
    (##structure
     gx#syntax-quote::t
     'symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200689_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200690_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200692_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-gensyms-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g200693_|
    (##structure
     gx#syntax-quote::t
     '&symbol-table-bindings-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#ast-case|
      (lambda (_%stx199637%_)
        (let ()
          (declare (not safe))
          (gx#macro-expand-syntax-case__%
           _%stx199637%_
           'stx-eq?
           'stx-e
           'quote))))
    (define |gxc[:0:]#ast-rules|
      (lambda (_%stx199640%_)
        (let* ((_%$%g199643199667%_
                (lambda (_%$%g199644199663%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199644199663%_))))
               (_%$%g199642199966%_
                (lambda (_%$%g199644199671%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199644199671%_))
                      (let ((_%$%e199647199674%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199644199671%_))))
                        (let ((_%$%hd199648199678%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199647199674%_)))
                              (_%$%tl199649199681%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199647199674%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199649199681%_))
                              (let ((_%$%e199650199684%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199649199681%_))))
                                (let ((_%$%hd199651199688%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199650199684%_)))
                                      (_%$%tl199652199691%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199650199684%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl199652199691%_))
                                      (let ((_g200668_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl199652199691%_
                                                '0))))
                                        (begin
                                          (let ((_g200669_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g200668_)
                                                       (##values-length
                                                        _g200668_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g200669_ 2)))
                                                (error "Context expects 2 values"
                                                       _g200669_)))
                                          (let ((_%$%target199653199694%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g200668_ 0)))
                                                (_%$%tl199655199697%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g200668_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl199655199697%_))
                                                (letrec ((_%$%loop199656199700%_
                                                          (lambda (_%$%hd199654199704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause199660199707%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd199654199704%_))
                        (let ((_%$%e199657199709%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd199654199704%_))))
                          (let ((_%$%lp-hd199658199713%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e199657199709%_)))
                                (_%$%lp-tl199659199716%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e199657199709%_))))
                            (_%$%loop199656199700%_
                             _%$%lp-tl199659199716%_
                             (cons _%$%lp-hd199658199713%_
                                   _%$%clause199660199707%_))))
                        (let ((_%$%clause199661199719%_
                               (reverse _%$%clause199660199707%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier-list? _%$%hd199651199688%_))
                              (let* ((_%$%g199743199760%_
                                      (lambda (_%$%g199744199756%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g199744199756%_))))
                                     (_%$%g199742199819%_
                                      (lambda (_%$%g199744199764%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g199744199764%_))
                                            (let ((_g200670_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g199744199764%_
                                                      '0))))
                                              (begin
                                                (let ((_g200671_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g200670_)
                                                             (##values-length
                                                              _g200670_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g200671_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g200671_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target199746199767%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200670_
                                                          0)))
                                                      (_%$%tl199748199770%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g200670_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl199748199770%_))
                                                      (letrec ((_%$%loop199749199773%_
                                                                (lambda (_%$%hd199747199777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%clause199753199780%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd199747199777%_))
                              (let ((_%$%e199750199782%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd199747199777%_))))
                                (let ((_%$%lp-hd199751199786%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199750199782%_)))
                                      (_%$%lp-tl199752199789%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199750199782%_))))
                                  (_%$%loop199749199773%_
                                   _%$%lp-tl199752199789%_
                                   (cons _%$%lp-hd199751199786%_
                                         _%$%clause199753199780%_))))
                              (let ((_%$%clause199754199792%_
                                     (reverse _%$%clause199753199780%_)))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'lambda))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '$stx))
                                                  '())
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'ast-case))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '$stx))
                      (cons _%$%hd199651199688%_
                            (let ((__tmp200672
                                   (lambda (_%$%g199810199813%_
                                            _%$%g199811199816%_)
                                     (cons _%$%g199810199813%_
                                           _%$%g199811199816%_))))
                              (declare (not safe))
                              (foldr__0
                               __tmp200672
                               '()
                               _%$%clause199754199792%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))))))))
                (_%$%loop199749199773%_ _%$%target199746199767%_ '()))
              (_%$%g199743199760%_ _%$%g199744199764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g199743199760%_
                                             _%$%g199744199764%_)))))
                                (_%$%g199742199819%_
                                 (let ((__tmp200675
                                        (lambda (_%clause199823%_)
                                          (let* ((_%__stx200587200588%_
                                                  _%clause199823%_)
                                                 (_%$%g199827199854%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx200587200588%_)))))
                                            (let ((_%__kont200590200591%_
                                                   (lambda (_%$%g199829199939%_
                                                            _%$%g199830199941%_)
                                                     (cons _%$%g199830199941%_
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'syntax))
                               (cons _%$%g199829199939%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont200592200593%_
                                                   (lambda (_%$%g199837199891%_
                                                            _%$%g199838199893%_
                                                            _%$%g199839199894%_)
                                                     (cons _%$%g199839199894%_
                                                           (cons _%$%g199838199893%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'syntax))
                                     (cons _%$%g199837199891%_ '()))
                               '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%__stx200587200588%_))
                                                  (let ((_%$%e199831199919%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%__stx200587200588%_))))
                                                    (let ((_%$%tl199833199926%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e199831199919%_)))
                                                          (_%$%hd199832199923%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e199831199919%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl199833199926%_))
                                                          (let ((_%$%e199834199929%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl199833199926%_))))
                    (let ((_%$%tl199836199936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e199834199929%_)))
                          (_%$%hd199835199933%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e199834199929%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl199836199936%_))
                          (_%__kont200590200591%_
                           _%$%hd199835199933%_
                           _%$%hd199832199923%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199836199936%_))
                              (let ((_%$%e199846199881%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199836199936%_))))
                                (let ((_%$%tl199848199888%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199846199881%_)))
                                      (_%$%hd199847199885%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199846199881%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199848199888%_))
                                      (_%__kont200592200593%_
                                       _%$%hd199847199885%_
                                       _%$%hd199835199933%_
                                       _%$%hd199832199923%_)
                                      (_%$%g199827199854%_))))
                              (_%$%g199827199854%_)))))
                  (_%$%g199827199854%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g199827199854%_))))))
                                       (__tmp200673
                                        (let ((__tmp200674
                                               (lambda (_%$%g199957199960%_
                                                        _%$%g199958199963%_)
                                                 (cons _%$%g199957199960%_
                                                       _%$%g199958199963%_))))
                                          (declare (not safe))
                                          (foldr__0
                                           __tmp200674
                                           '()
                                           _%$%clause199661199719%_))))
                                   (declare (not safe))
                                   (gx#stx-map1 __tmp200675 __tmp200673))))
                              (_%$%g199643199667%_ _%$%g199644199671%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop199656199700%_
                                                   _%$%target199653199694%_
                                                   '()))
                                                (_%$%g199643199667%_
                                                 _%$%g199644199671%_)))))
                                      (_%$%g199643199667%_
                                       _%$%g199644199671%_))))
                              (_%$%g199643199667%_ _%$%g199644199671%_))))
                      (_%$%g199643199667%_ _%$%g199644199671%_)))))
          (_%$%g199642199966%_ _%stx199640%_))))
    (define |gxc[:0:]#symbol-table|
      (let ((__obj200637
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop~MOP-2#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200637
           'gxc#symbol-table::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 'symbol-table '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200637
           '(gensyms bindings)
           '6
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj200637
           '(gensyms bindings)
           '8
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 ':init! '13 '#f '#f))
        (let ((__tmp200676 |gxc[1]#_g200677_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 __tmp200676 '4 '#f '#f))
        (let ((__tmp200678 |gxc[1]#_g200679_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 __tmp200678 '14 '#f '#f))
        (let ((__tmp200680 |gxc[1]#_g200681_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 __tmp200680 '15 '#f '#f))
        (let ((__tmp200682
               (cons (cons 'gensyms |gxc[1]#_g200683_|)
                     (cons (cons 'bindings |gxc[1]#_g200684_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 __tmp200682 '16 '#f '#f))
        (let ((__tmp200685
               (cons (cons 'gensyms |gxc[1]#_g200686_|)
                     (cons (cons 'bindings |gxc[1]#_g200687_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 __tmp200685 '17 '#f '#f))
        (let ((__tmp200688
               (cons (cons 'gensyms |gxc[1]#_g200689_|)
                     (cons (cons 'bindings |gxc[1]#_g200690_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 __tmp200688 '18 '#f '#f))
        (let ((__tmp200691
               (cons (cons 'gensyms |gxc[1]#_g200692_|)
                     (cons (cons 'bindings |gxc[1]#_g200693_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 __tmp200691 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj200637 '() '21 '#f '#f))
        __obj200637))
    (define |gxc[:0:]#with-verbose-mutex|
      (lambda (_%$stx199972%_)
        (let* ((_%$%g199976199990%_
                (lambda (_%$%g199977199986%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g199977199986%_))))
               (_%$%g199975200031%_
                (lambda (_%$%g199977199994%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g199977199994%_))
                      (let ((_%$%e199979199997%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g199977199994%_))))
                        (let ((_%$%hd199980200001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e199979199997%_)))
                              (_%$%tl199981200004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e199979199997%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl199981200004%_))
                              (let ((_%$%e199982200007%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl199981200004%_))))
                                (let ((_%$%hd199983200011%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e199982200007%_)))
                                      (_%$%tl199984200014%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e199982200007%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl199984200014%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'with-lock))
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     '__verbose-mutex))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'lambda))
                      (cons '() (cons _%$%hd199983200011%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g199976199990%_
                                       _%$%g199977199994%_))))
                              (_%$%g199976199990%_ _%$%g199977199994%_))))
                      (_%$%g199976199990%_ _%$%g199977199994%_)))))
          (_%$%g199975200031%_ _%$stx199972%_))))
    (define |gxc[:0:]#go!|
      (lambda (_%$stx200035%_)
        (let* ((_%$%g200039200053%_
                (lambda (_%$%g200040200049%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g200040200049%_))))
               (_%$%g200038200094%_
                (lambda (_%$%g200040200057%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g200040200057%_))
                      (let ((_%$%e200042200060%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g200040200057%_))))
                        (let ((_%$%hd200043200064%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e200042200060%_)))
                              (_%$%tl200044200067%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e200042200060%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl200044200067%_))
                              (let ((_%$%e200045200070%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl200044200067%_))))
                                (let ((_%$%hd200046200074%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e200045200070%_)))
                                      (_%$%tl200047200077%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e200045200070%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl200047200077%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'spawn))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'lambda))
                                                        (cons '()
                                                              (cons _%$%hd200046200074%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '()))
                                      (_%$%g200039200053%_
                                       _%$%g200040200057%_))))
                              (_%$%g200039200053%_ _%$%g200040200057%_))))
                      (_%$%g200039200053%_ _%$%g200040200057%_)))))
          (_%$%g200038200094%_ _%$stx200035%_))))))
