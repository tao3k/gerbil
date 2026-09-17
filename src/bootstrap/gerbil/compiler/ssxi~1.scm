(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g282677_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282684_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282686_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282688_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282690_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282692_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282704_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282706_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282708_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282710_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g282712_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx276135%_)
        (let* ((_%$%g276139276157%_
                (lambda (_%$%g276140276153%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276140276153%_))))
               (_%$%g276138276212%_
                (lambda (_%$%g276140276161%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276140276161%_))
                      (let ((_%$%e276143276164%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276140276161%_))))
                        (let ((_%$%hd276144276168%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276143276164%_)))
                              (_%$%tl276145276171%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276143276164%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276145276171%_))
                              (let ((_%$%e276146276174%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276145276171%_))))
                                (let ((_%$%hd276147276178%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276146276174%_)))
                                      (_%$%tl276148276181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276146276174%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276148276181%_))
                                      (let ((_%$%e276149276184%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276148276181%_))))
                                        (let ((_%$%hd276150276188%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276149276184%_)))
                                              (_%$%tl276151276191%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276149276184%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276151276191%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276147276178%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-type!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd276147276178%_ '()))
                      (cons _%$%hd276150276188%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g276139276157%_
                                                   _%$%g276140276161%_))
                                              (_%$%g276139276157%_
                                               _%$%g276140276161%_))))
                                      (_%$%g276139276157%_
                                       _%$%g276140276161%_))))
                              (_%$%g276139276157%_ _%$%g276140276161%_))))
                      (_%$%g276139276157%_ _%$%g276140276161%_)))))
          (_%$%g276138276212%_ _%$stx276135%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx276216%_)
        (let* ((_%$%g276220276238%_
                (lambda (_%$%g276221276234%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276221276234%_))))
               (_%$%g276219276293%_
                (lambda (_%$%g276221276242%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276221276242%_))
                      (let ((_%$%e276224276245%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276221276242%_))))
                        (let ((_%$%hd276225276249%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276224276245%_)))
                              (_%$%tl276226276252%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276224276245%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276226276252%_))
                              (let ((_%$%e276227276255%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276226276252%_))))
                                (let ((_%$%hd276228276259%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276227276255%_)))
                                      (_%$%tl276229276262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276227276255%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl276229276262%_))
                                      (let ((_%$%e276230276265%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl276229276262%_))))
                                        (let ((_%$%hd276231276269%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e276230276265%_)))
                                              (_%$%tl276232276272%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e276230276265%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl276232276272%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd276228276259%_))
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'optimizer-declare-class!))
                                                        (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd276228276259%_ '()))
                      (cons _%$%hd276231276269%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g276220276238%_
                                                   _%$%g276221276242%_))
                                              (_%$%g276220276238%_
                                               _%$%g276221276242%_))))
                                      (_%$%g276220276238%_
                                       _%$%g276221276242%_))))
                              (_%$%g276220276238%_ _%$%g276221276242%_))))
                      (_%$%g276220276238%_ _%$%g276221276242%_)))))
          (_%$%g276219276293%_ _%$stx276216%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx276297%_)
        (let* ((_%$%g276301276330%_
                (lambda (_%$%g276302276326%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276302276326%_))))
               (_%$%g276300276426%_
                (lambda (_%$%g276302276334%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276302276334%_))
                      (let ((_%$%e276305276337%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276302276334%_))))
                        (let ((_%$%hd276306276341%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276305276337%_)))
                              (_%$%tl276307276344%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276305276337%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276307276344%_))
                              (let ((_g282655_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276307276344%_
                                        '0))))
                                (begin
                                  (let ((_g282656_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282655_)
                                               (##values-length _g282655_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282656_ 2)))
                                        (error "Context expects 2 values"
                                               _g282656_)))
                                  (let ((_%$%target276308276347%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282655_ 0)))
                                        (_%$%tl276310276350%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282655_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276310276350%_))
                                        (letrec ((_%$%loop276311276353%_
                                                  (lambda (_%$%hd276309276357%_
                                                           _%$%type276315276360%_
                                                           _%$%symbol276316276361%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276309276357%_))
                                                        (let ((_%$%e276312276363%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276309276357%_))))
                  (let ((_%$%lp-hd276313276367%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276312276363%_)))
                        (_%$%lp-tl276314276370%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276312276363%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276313276367%_))
                        (let ((_%$%e276319276373%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276313276367%_))))
                          (let ((_%$%hd276320276377%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276319276373%_)))
                                (_%$%tl276321276380%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276319276373%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276321276380%_))
                                (let ((_%$%e276322276383%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276321276380%_))))
                                  (let ((_%$%hd276323276387%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276322276383%_)))
                                        (_%$%tl276324276390%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276322276383%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276324276390%_))
                                        (_%$%loop276311276353%_
                                         _%$%lp-tl276314276370%_
                                         (cons _%$%hd276323276387%_
                                               _%$%type276315276360%_)
                                         (cons _%$%hd276320276377%_
                                               _%$%symbol276316276361%_))
                                        (_%$%g276301276330%_
                                         _%$%g276302276334%_))))
                                (_%$%g276301276330%_ _%$%g276302276334%_))))
                        (_%$%g276301276330%_ _%$%g276302276334%_))))
                (let ((_%$%type276317276393%_ (reverse _%$%type276315276360%_))
                      (_%$%symbol276318276395%_
                       (reverse _%$%symbol276316276361%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%type276317276393%_
                             _%$%symbol276318276395%_))
                          (let ((__tmp282657
                                 (lambda (_%$%g276414276418%_
                                          _%$%g276415276421%_
                                          _%$%g276416276423%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%$%g276415276421%_
                                                     (cons _%$%g276414276418%_
                                                           '())))
                                         _%$%g276416276423%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp282657
                             '()
                             _%$%type276317276393%_
                             _%$%symbol276318276395%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276311276353%_
                                           _%$%target276308276347%_
                                           '()
                                           '()))
                                        (_%$%g276301276330%_
                                         _%$%g276302276334%_)))))
                              (_%$%g276301276330%_ _%$%g276302276334%_))))
                      (_%$%g276301276330%_ _%$%g276302276334%_)))))
          (_%$%g276300276426%_ _%$stx276297%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx276431%_)
        (let* ((_%__stx281966281967%_ _%$stx276431%_)
               (_%$%g276436276478%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx281966281967%_)))))
          (let ((_%__kont281969281970%_
                 (lambda (_%$%g276438276606%_
                          _%$%g276439276608%_
                          _%$%g276440276609%_
                          _%$%g276441276610%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g276441276610%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g276440276609%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%g276439276608%_
                                                       '()))
                                           (cons _%$%g276438276606%_ '())))))))
                (_%__kont281971281972%_
                 (lambda (_%$%g276457276525%_
                          _%$%g276458276527%_
                          _%$%g276459276528%_
                          _%$%g276460276529%_)
                   (cons _%$%g276460276529%_
                         (cons _%$%g276459276528%_
                               (cons _%$%g276458276527%_
                                     (cons _%$%g276457276525%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match282005282006%_
                   (lambda (_%$%e276442276556%_
                            _%$%hd276443276560%_
                            _%$%tl276444276563%_
                            _%$%e276445276566%_
                            _%$%hd276446276570%_
                            _%$%tl276447276573%_
                            _%$%e276448276576%_
                            _%$%hd276449276580%_
                            _%$%tl276450276583%_
                            _%$%e276451276586%_
                            _%$%hd276452276590%_
                            _%$%tl276453276593%_
                            _%$%e276454276596%_
                            _%$%hd276455276600%_
                            _%$%tl276456276603%_)
                     (let ((_%$%g276438276606%_ _%$%hd276455276600%_)
                           (_%$%g276439276608%_ _%$%hd276452276590%_)
                           (_%$%g276440276609%_ _%$%hd276449276580%_)
                           (_%$%g276441276610%_ _%$%hd276446276570%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276441276610%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276440276609%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%g276439276608%_)))
                           (_%__kont281969281970%_
                            _%$%g276438276606%_
                            _%$%g276439276608%_
                            _%$%g276440276609%_
                            _%$%g276441276610%_)
                           (let ()
                             (declare (not safe))
                             (_%$%g276436276478%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx281966281967%_))
                  (let ((_%$%e276442276556%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx281966281967%_))))
                    (let ((_%$%tl276444276563%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e276442276556%_)))
                          (_%$%hd276443276560%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e276442276556%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl276444276563%_))
                          (let ((_%$%e276445276566%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl276444276563%_))))
                            (let ((_%$%tl276447276573%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e276445276566%_)))
                                  (_%$%hd276446276570%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e276445276566%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl276447276573%_))
                                  (let ((_%$%e276448276576%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl276447276573%_))))
                                    (let ((_%$%tl276450276583%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e276448276576%_)))
                                          (_%$%hd276449276580%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e276448276576%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl276450276583%_))
                                          (let ((_%$%e276451276586%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl276450276583%_))))
                                            (let ((_%$%tl276453276593%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e276451276586%_)))
                                                  (_%$%hd276452276590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e276451276586%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl276453276593%_))
                                                  (let ((_%$%e276454276596%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl276453276593%_))))
                                                    (let ((_%$%tl276456276603%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e276454276596%_)))
                                                          (_%$%hd276455276600%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e276454276596%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl276456276603%_))
                                                          (_%__match282005282006%_
                                                           _%$%e276442276556%_
                                                           _%$%hd276443276560%_
                                                           _%$%tl276444276563%_
                                                           _%$%e276445276566%_
                                                           _%$%hd276446276570%_
                                                           _%$%tl276447276573%_
                                                           _%$%e276448276576%_
                                                           _%$%hd276449276580%_
                                                           _%$%tl276450276583%_
                                                           _%$%e276451276586%_
                                                           _%$%hd276452276590%_
                                                           _%$%tl276453276593%_
                                                           _%$%e276454276596%_
                                                           _%$%hd276455276600%_
                                                           _%$%tl276456276603%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g276436276478%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl276453276593%_))
                                                      (_%__kont281971281972%_
                                                       _%$%hd276452276590%_
                                                       _%$%hd276449276580%_
                                                       _%$%hd276446276570%_
                                                       _%$%hd276443276560%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g276436276478%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g276436276478%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g276436276478%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g276436276478%_)))))
                  (let () (declare (not safe)) (_%$%g276436276478%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx276635%_)
        (let* ((_%$%g276639276674%_
                (lambda (_%$%g276640276670%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276640276670%_))))
               (_%$%g276638276787%_
                (lambda (_%$%g276640276678%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276640276678%_))
                      (let ((_%$%e276644276681%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276640276678%_))))
                        (let ((_%$%hd276645276685%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276644276681%_)))
                              (_%$%tl276646276688%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276644276681%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl276646276688%_))
                              (let ((_g282658_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl276646276688%_
                                        '0))))
                                (begin
                                  (let ((_g282659_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282658_)
                                               (##values-length _g282658_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282659_ 2)))
                                        (error "Context expects 2 values"
                                               _g282659_)))
                                  (let ((_%$%target276647276691%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282658_ 0)))
                                        (_%$%tl276649276694%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282658_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl276649276694%_))
                                        (letrec ((_%$%loop276650276697%_
                                                  (lambda (_%$%hd276648276701%_
                                                           _%$%symbol276654276704%_
                                                           _%$%method276655276705%_
                                                           _%$%type-t276656276706%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd276648276701%_))
                                                        (let ((_%$%e276651276708%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd276648276701%_))))
                  (let ((_%$%lp-hd276652276712%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e276651276708%_)))
                        (_%$%lp-tl276653276715%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e276651276708%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd276652276712%_))
                        (let ((_%$%e276660276718%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd276652276712%_))))
                          (let ((_%$%hd276661276722%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276660276718%_)))
                                (_%$%tl276662276725%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276660276718%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl276662276725%_))
                                (let ((_%$%e276663276728%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl276662276725%_))))
                                  (let ((_%$%hd276664276732%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276663276728%_)))
                                        (_%$%tl276665276735%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276663276728%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl276665276735%_))
                                        (let ((_%$%e276666276738%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl276665276735%_))))
                                          (let ((_%$%hd276667276742%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e276666276738%_)))
                                                (_%$%tl276668276745%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e276666276738%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276668276745%_))
                                                (_%$%loop276650276697%_
                                                 _%$%lp-tl276653276715%_
                                                 (cons _%$%hd276667276742%_
                                                       _%$%symbol276654276704%_)
                                                 (cons _%$%hd276664276732%_
                                                       _%$%method276655276705%_)
                                                 (cons _%$%hd276661276722%_
                                                       _%$%type-t276656276706%_))
                                                (_%$%g276639276674%_
                                                 _%$%g276640276678%_))))
                                        (_%$%g276639276674%_
                                         _%$%g276640276678%_))))
                                (_%$%g276639276674%_ _%$%g276640276678%_))))
                        (_%$%g276639276674%_ _%$%g276640276678%_))))
                (let ((_%$%symbol276657276748%_
                       (reverse _%$%symbol276654276704%_))
                      (_%$%method276658276750%_
                       (reverse _%$%method276655276705%_))
                      (_%$%type-t276659276751%_
                       (reverse _%$%type-t276656276706%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%symbol276657276748%_
                             _%$%method276658276750%_
                             _%$%type-t276659276751%_))
                          (let ((__tmp282660
                                 (lambda (_%$%g276772276777%_
                                          _%$%g276773276780%_
                                          _%$%g276774276782%_
                                          _%$%g276775276784%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-method))
                                               (cons _%$%g276774276782%_
                                                     (cons _%$%g276773276780%_
                                                           (cons _%$%g276772276777%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%g276775276784%_))))
                            (declare (not safe))
                            (__foldr*
                             __tmp282660
                             '()
                             _%$%symbol276657276748%_
                             _%$%method276658276750%_
                             _%$%type-t276659276751%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop276650276697%_
                                           _%$%target276647276691%_
                                           '()
                                           '()
                                           '()))
                                        (_%$%g276639276674%_
                                         _%$%g276640276678%_)))))
                              (_%$%g276639276674%_ _%$%g276640276678%_))))
                      (_%$%g276639276674%_ _%$%g276640276678%_)))))
          (_%$%g276638276787%_ _%$stx276635%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx276792%_)
        (let* ((_%$%g276796276829%_
                (lambda (_%$%g276797276825%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276797276825%_))))
               (_%$%g276795276939%_
                (lambda (_%$%g276797276833%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276797276833%_))
                      (let ((_%$%e276801276836%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276797276833%_))))
                        (let ((_%$%hd276802276840%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276801276836%_)))
                              (_%$%tl276803276843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276801276836%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276803276843%_))
                              (let ((_%$%e276804276846%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276803276843%_))))
                                (let ((_%$%hd276805276850%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276804276846%_)))
                                      (_%$%tl276806276853%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276804276846%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl276806276853%_))
                                      (let ((_g282661_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl276806276853%_
                                                '0))))
                                        (begin
                                          (let ((_g282662_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282661_)
                                                       (##values-length
                                                        _g282661_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282662_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282662_)))
                                          (let ((_%$%target276807276856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282661_ 0)))
                                                (_%$%tl276809276859%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282661_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276809276859%_))
                                                (letrec ((_%$%loop276810276862%_
                                                          (lambda (_%$%hd276808276866%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%symbol276814276869%_
                           _%$%method276815276870%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd276808276866%_))
                        (let ((_%$%e276811276872%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd276808276866%_))))
                          (let ((_%$%lp-hd276812276876%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e276811276872%_)))
                                (_%$%lp-tl276813276879%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e276811276872%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%lp-hd276812276876%_))
                                (let ((_%$%e276818276882%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e
                                          _%$%lp-hd276812276876%_))))
                                  (let ((_%$%hd276819276886%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e276818276882%_)))
                                        (_%$%tl276820276889%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e276818276882%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl276820276889%_))
                                        (let ((_%$%e276821276892%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl276820276889%_))))
                                          (let ((_%$%hd276822276896%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e276821276892%_)))
                                                (_%$%tl276823276899%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e276821276892%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl276823276899%_))
                                                (_%$%loop276810276862%_
                                                 _%$%lp-tl276813276879%_
                                                 (cons _%$%hd276822276896%_
                                                       _%$%symbol276814276869%_)
                                                 (cons _%$%hd276819276886%_
                                                       _%$%method276815276870%_))
                                                (_%$%g276796276829%_
                                                 _%$%g276797276833%_))))
                                        (_%$%g276796276829%_
                                         _%$%g276797276833%_))))
                                (_%$%g276796276829%_ _%$%g276797276833%_))))
                        (let ((_%$%symbol276816276902%_
                               (reverse _%$%symbol276814276869%_))
                              (_%$%method276817276904%_
                               (reverse _%$%method276815276870%_)))
                          (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'begin))
                                (begin
                                  (let ()
                                    (declare (not safe))
                                    (gx#syntax-check-splice-targets
                                     _%$%symbol276816276902%_
                                     _%$%method276817276904%_))
                                  (let ((__tmp282663
                                         (lambda (_%$%g276927276931%_
                                                  _%$%g276928276934%_
                                                  _%$%g276929276936%_)
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method))
                                                       (cons _%$%hd276805276850%_
                                                             (cons _%$%g276928276934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g276927276931%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g276929276936%_))))
                                    (declare (not safe))
                                    (foldr__1
                                     __tmp282663
                                     '()
                                     _%$%symbol276816276902%_
                                     _%$%method276817276904%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop276810276862%_
                                                   _%$%target276807276856%_
                                                   '()
                                                   '()))
                                                (_%$%g276796276829%_
                                                 _%$%g276797276833%_)))))
                                      (_%$%g276796276829%_
                                       _%$%g276797276833%_))))
                              (_%$%g276796276829%_ _%$%g276797276833%_))))
                      (_%$%g276796276829%_ _%$%g276797276833%_)))))
          (_%$%g276795276939%_ _%$stx276792%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx276944%_)
        (let* ((_%$%g276948276962%_
                (lambda (_%$%g276949276958%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g276949276958%_))))
               (_%$%g276947277003%_
                (lambda (_%$%g276949276966%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g276949276966%_))
                      (let ((_%$%e276951276969%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g276949276966%_))))
                        (let ((_%$%hd276952276973%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e276951276969%_)))
                              (_%$%tl276953276976%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e276951276969%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl276953276976%_))
                              (let ((_%$%e276954276979%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl276953276976%_))))
                                (let ((_%$%hd276955276983%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e276954276979%_)))
                                      (_%$%tl276956276986%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e276954276979%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl276956276986%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!alias))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd276955276983%_
                                                              '()))
                                                  '()))
                                      (_%$%g276948276962%_
                                       _%$%g276949276966%_))))
                              (_%$%g276948276962%_ _%$%g276949276966%_))))
                      (_%$%g276948276962%_ _%$%g276949276966%_)))))
          (_%$%g276947277003%_ _%$stx276944%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx277007%_)
        (let* ((_%$%g277011277065%_
                (lambda (_%$%g277012277061%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277012277061%_))))
               (_%$%g277010277246%_
                (lambda (_%$%g277012277069%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277012277069%_))
                      (let ((_%$%e277024277072%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277012277069%_))))
                        (let ((_%$%hd277025277076%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277024277072%_)))
                              (_%$%tl277026277079%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277024277072%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277026277079%_))
                              (let ((_%$%e277027277082%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277026277079%_))))
                                (let ((_%$%hd277028277086%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277027277082%_)))
                                      (_%$%tl277029277089%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277027277082%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277029277089%_))
                                      (let ((_%$%e277030277092%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277029277089%_))))
                                        (let ((_%$%hd277031277096%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277030277092%_)))
                                              (_%$%tl277032277099%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277030277092%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277032277099%_))
                                              (let ((_%$%e277033277102%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277032277099%_))))
                                                (let ((_%$%hd277034277106%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277033277102%_)))
                                                      (_%$%tl277035277109%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277033277102%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl277035277109%_))
                                                      (let ((_%$%e277036277112%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl277035277109%_))))
                (let ((_%$%hd277037277116%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e277036277112%_)))
                      (_%$%tl277038277119%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e277036277112%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277038277119%_))
                      (let ((_%$%e277039277122%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277038277119%_))))
                        (let ((_%$%hd277040277126%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277039277122%_)))
                              (_%$%tl277041277129%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277039277122%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277041277129%_))
                              (let ((_%$%e277042277132%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277041277129%_))))
                                (let ((_%$%hd277043277136%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277042277132%_)))
                                      (_%$%tl277044277139%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277042277132%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277044277139%_))
                                      (let ((_%$%e277045277142%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277044277139%_))))
                                        (let ((_%$%hd277046277146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277045277142%_)))
                                              (_%$%tl277047277149%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277045277142%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277047277149%_))
                                              (let ((_%$%e277048277152%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277047277149%_))))
                                                (let ((_%$%hd277049277156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277048277152%_)))
                                                      (_%$%tl277050277159%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277048277152%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl277050277159%_))
                                                      (let ((_%$%e277051277162%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl277050277159%_))))
                (let ((_%$%hd277052277166%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e277051277162%_)))
                      (_%$%tl277053277169%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e277051277162%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277053277169%_))
                      (let ((_%$%e277054277172%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277053277169%_))))
                        (let ((_%$%hd277055277176%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277054277172%_)))
                              (_%$%tl277056277179%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277054277172%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277056277179%_))
                              (let ((_%$%e277057277182%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277056277179%_))))
                                (let ((_%$%hd277058277186%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277057277182%_)))
                                      (_%$%tl277059277189%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277057277182%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277059277189%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!class))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277028277086%_
                                                              '()))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'quote))
                      (cons _%$%hd277031277096%_ '()))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote))
                            (cons _%$%hd277034277106%_ '()))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote))
                                  (cons _%$%hd277037277116%_ '()))
                            (cons (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote))
                                        (cons _%$%hd277040277126%_ '()))
                                  (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'quote))
                                              (cons _%$%hd277043277136%_ '()))
                                        (cons _%$%hd277046277146%_
                                              (cons _%$%hd277049277156%_
                                                    (cons _%$%hd277052277166%_
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd277055277176%_ '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd277058277186%_ '()))
                              '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g277011277065%_
                                       _%$%g277012277069%_))))
                              (_%$%g277011277065%_ _%$%g277012277069%_))))
                      (_%$%g277011277065%_ _%$%g277012277069%_))))
              (_%$%g277011277065%_ _%$%g277012277069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277011277065%_
                                               _%$%g277012277069%_))))
                                      (_%$%g277011277065%_
                                       _%$%g277012277069%_))))
                              (_%$%g277011277065%_ _%$%g277012277069%_))))
                      (_%$%g277011277065%_ _%$%g277012277069%_))))
              (_%$%g277011277065%_ _%$%g277012277069%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277011277065%_
                                               _%$%g277012277069%_))))
                                      (_%$%g277011277065%_
                                       _%$%g277012277069%_))))
                              (_%$%g277011277065%_ _%$%g277012277069%_))))
                      (_%$%g277011277065%_ _%$%g277012277069%_)))))
          (_%$%g277010277246%_ _%$stx277007%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx277250%_)
        (let* ((_%$%g277254277268%_
                (lambda (_%$%g277255277264%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277255277264%_))))
               (_%$%g277253277309%_
                (lambda (_%$%g277255277272%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277255277272%_))
                      (let ((_%$%e277257277275%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277255277272%_))))
                        (let ((_%$%hd277258277279%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277257277275%_)))
                              (_%$%tl277259277282%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277257277275%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277259277282%_))
                              (let ((_%$%e277260277285%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277259277282%_))))
                                (let ((_%$%hd277261277289%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277260277285%_)))
                                      (_%$%tl277262277292%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277260277285%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277262277292%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277261277289%_
                                                              '()))
                                                  '()))
                                      (_%$%g277254277268%_
                                       _%$%g277255277272%_))))
                              (_%$%g277254277268%_ _%$%g277255277272%_))))
                      (_%$%g277254277268%_ _%$%g277255277272%_)))))
          (_%$%g277253277309%_ _%$stx277250%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx277313%_)
        (let* ((_%$%g277317277331%_
                (lambda (_%$%g277318277327%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277318277327%_))))
               (_%$%g277316277372%_
                (lambda (_%$%g277318277335%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277318277335%_))
                      (let ((_%$%e277320277338%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277318277335%_))))
                        (let ((_%$%hd277321277342%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277320277338%_)))
                              (_%$%tl277322277345%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277320277338%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277322277345%_))
                              (let ((_%$%e277323277348%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277322277345%_))))
                                (let ((_%$%hd277324277352%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277323277348%_)))
                                      (_%$%tl277325277355%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277323277348%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277325277355%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!constructor))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277324277352%_
                                                              '()))
                                                  '()))
                                      (_%$%g277317277331%_
                                       _%$%g277318277335%_))))
                              (_%$%g277317277331%_ _%$%g277318277335%_))))
                      (_%$%g277317277331%_ _%$%g277318277335%_)))))
          (_%$%g277316277372%_ _%$stx277313%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx277376%_)
        (let* ((_%$%g277380277402%_
                (lambda (_%$%g277381277398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277381277398%_))))
               (_%$%g277379277471%_
                (lambda (_%$%g277381277406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277381277406%_))
                      (let ((_%$%e277385277409%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277381277406%_))))
                        (let ((_%$%hd277386277413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277385277409%_)))
                              (_%$%tl277387277416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277385277409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277387277416%_))
                              (let ((_%$%e277388277419%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277387277416%_))))
                                (let ((_%$%hd277389277423%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277388277419%_)))
                                      (_%$%tl277390277426%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277388277419%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277390277426%_))
                                      (let ((_%$%e277391277429%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277390277426%_))))
                                        (let ((_%$%hd277392277433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277391277429%_)))
                                              (_%$%tl277393277436%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277391277429%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277393277436%_))
                                              (let ((_%$%e277394277439%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277393277436%_))))
                                                (let ((_%$%hd277395277443%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277394277439%_)))
                                                      (_%$%tl277396277446%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277394277439%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277396277446%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!accessor))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd277389277423%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd277392277433%_ '()))
                                (cons _%$%hd277395277443%_ '()))))
              (_%$%g277380277402%_ _%$%g277381277406%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277380277402%_
                                               _%$%g277381277406%_))))
                                      (_%$%g277380277402%_
                                       _%$%g277381277406%_))))
                              (_%$%g277380277402%_ _%$%g277381277406%_))))
                      (_%$%g277380277402%_ _%$%g277381277406%_)))))
          (_%$%g277379277471%_ _%$stx277376%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx277475%_)
        (let* ((_%$%g277479277501%_
                (lambda (_%$%g277480277497%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277480277497%_))))
               (_%$%g277478277570%_
                (lambda (_%$%g277480277505%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277480277505%_))
                      (let ((_%$%e277484277508%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277480277505%_))))
                        (let ((_%$%hd277485277512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277484277508%_)))
                              (_%$%tl277486277515%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277484277508%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277486277515%_))
                              (let ((_%$%e277487277518%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277486277515%_))))
                                (let ((_%$%hd277488277522%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277487277518%_)))
                                      (_%$%tl277489277525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277487277518%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277489277525%_))
                                      (let ((_%$%e277490277528%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277489277525%_))))
                                        (let ((_%$%hd277491277532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277490277528%_)))
                                              (_%$%tl277492277535%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277490277528%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl277492277535%_))
                                              (let ((_%$%e277493277538%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl277492277535%_))))
                                                (let ((_%$%hd277494277542%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e277493277538%_)))
                                                      (_%$%tl277495277545%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e277493277538%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl277495277545%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!mutator))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd277488277522%_ '()))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote))
                                      (cons _%$%hd277491277532%_ '()))
                                (cons _%$%hd277494277542%_ '()))))
              (_%$%g277479277501%_ _%$%g277480277505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277479277501%_
                                               _%$%g277480277505%_))))
                                      (_%$%g277479277501%_
                                       _%$%g277480277505%_))))
                              (_%$%g277479277501%_ _%$%g277480277505%_))))
                      (_%$%g277479277501%_ _%$%g277480277505%_)))))
          (_%$%g277478277570%_ _%$stx277475%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx277574%_)
        (let* ((_%$%g277578277592%_
                (lambda (_%$%g277579277588%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277579277588%_))))
               (_%$%g277577277633%_
                (lambda (_%$%g277579277596%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277579277596%_))
                      (let ((_%$%e277581277599%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277579277596%_))))
                        (let ((_%$%hd277582277603%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277581277599%_)))
                              (_%$%tl277583277606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277581277599%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277583277606%_))
                              (let ((_%$%e277584277609%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277583277606%_))))
                                (let ((_%$%hd277585277613%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277584277609%_)))
                                      (_%$%tl277586277616%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277584277609%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl277586277616%_))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'make-!primitive-predicate))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'quote))
                                                        (cons _%$%hd277585277613%_
                                                              '()))
                                                  '()))
                                      (_%$%g277578277592%_
                                       _%$%g277579277596%_))))
                              (_%$%g277578277592%_ _%$%g277579277596%_))))
                      (_%$%g277578277592%_ _%$%g277579277596%_)))))
          (_%$%g277577277633%_ _%$stx277574%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx277637%_)
        (let* ((_%$%g277641277659%_
                (lambda (_%$%g277642277655%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g277642277655%_))))
               (_%$%g277640277714%_
                (lambda (_%$%g277642277663%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g277642277663%_))
                      (let ((_%$%e277645277666%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g277642277663%_))))
                        (let ((_%$%hd277646277670%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277645277666%_)))
                              (_%$%tl277647277673%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277645277666%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl277647277673%_))
                              (let ((_%$%e277648277676%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl277647277673%_))))
                                (let ((_%$%hd277649277680%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e277648277676%_)))
                                      (_%$%tl277650277683%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e277648277676%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl277650277683%_))
                                      (let ((_%$%e277651277686%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl277650277683%_))))
                                        (let ((_%$%hd277652277690%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e277651277686%_)))
                                              (_%$%tl277653277693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e277651277686%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl277653277693%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!interface))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd277649277680%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd277652277690%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g277641277659%_
                                               _%$%g277642277663%_))))
                                      (_%$%g277641277659%_
                                       _%$%g277642277663%_))))
                              (_%$%g277641277659%_ _%$%g277642277663%_))))
                      (_%$%g277641277659%_ _%$%g277642277663%_)))))
          (_%$%g277640277714%_ _%$stx277637%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx277718%_)
        (let* ((_%__stx282034282035%_ _%$stx277718%_)
               (_%$%g277725277786%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282034282035%_)))))
          (let ((_%__kont282037282038%_
                 (lambda (_%$%g277727278024%_ _%$%g277728278026%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g277728278026%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g277727278024%_ '()))
                                     '())))))
                (_%__kont282039282040%_
                 (lambda (_%$%g277738277963%_
                          _%$%g277739277965%_
                          _%$%g277740277966%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g277740277966%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%$%g277739277965%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%$%g277738277963%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont282041282042%_
                 (lambda (_%$%g277757277887%_ _%$%g277758277889%_)
                   (cons _%$%g277758277889%_
                         (cons _%$%g277757277887%_ (cons '#f '())))))
                (_%__kont282043282044%_
                 (lambda (_%$%g277765277837%_
                          _%$%g277766277839%_
                          _%$%g277767277840%_)
                   (cons _%$%g277767277840%_
                         (cons _%$%g277766277839%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%$%g277765277837%_
                                                 '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282034282035%_))
                (let ((_%$%e277729277994%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282034282035%_))))
                  (let ((_%$%tl277731278001%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e277729277994%_)))
                        (_%$%hd277730277998%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e277729277994%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl277731278001%_))
                        (let ((_%$%e277732278004%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl277731278001%_))))
                          (let ((_%$%tl277734278011%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e277732278004%_)))
                                (_%$%hd277733278008%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e277732278004%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl277734278011%_))
                                (let ((_%$%e277735278014%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl277734278011%_))))
                                  (let ((_%$%tl277737278021%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e277735278014%_)))
                                        (_%$%hd277736278018%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e277735278014%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl277737278021%_))
                                        (_%__kont282037282038%_
                                         _%$%hd277736278018%_
                                         _%$%hd277733278008%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl277737278021%_))
                                            (let ((_%$%e277750277939%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl277737278021%_))))
                                              (let ((_%$%tl277752277946%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e277750277939%_)))
                                                    (_%$%hd277751277943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e277750277939%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd277751277943%_))
                                                    (let ((_%$%e277753277949%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd277751277943%_))))
                                                      (if (equal? _%$%e277753277949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl277752277946%_))
                      (let ((_%$%e277754277953%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl277752277946%_))))
                        (let ((_%$%tl277756277960%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e277754277953%_)))
                              (_%$%hd277755277957%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e277754277953%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl277756277960%_))
                              (_%__kont282039282040%_
                               _%$%hd277755277957%_
                               _%$%hd277736278018%_
                               _%$%hd277733278008%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%$%hd277736278018%_))
                                  (let ((_%$%e277777277823%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd277736278018%_))))
                                    (declare (not safe))
                                    (_%$%g277725277786%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g277725277786%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd277736278018%_))
                          (let ((_%$%e277777277823%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd277736278018%_))))
                            (if (equal? _%$%e277777277823%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl277752277946%_))
                                    (_%__kont282043282044%_
                                     _%$%hd277751277943%_
                                     _%$%hd277733278008%_
                                     _%$%hd277730277998%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277725277786%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277725277786%_))))
                          (let () (declare (not safe)) (_%$%g277725277786%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%$%hd277736278018%_))
                      (let ((_%$%e277777277823%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd277736278018%_))))
                        (if (equal? _%$%e277777277823%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl277752277946%_))
                                (_%__kont282043282044%_
                                 _%$%hd277751277943%_
                                 _%$%hd277733278008%_
                                 _%$%hd277730277998%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g277725277786%_)))
                            (let ()
                              (declare (not safe))
                              (_%$%g277725277786%_))))
                      (let () (declare (not safe)) (_%$%g277725277786%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%$%hd277736278018%_))
                                                        (let ((_%$%e277777277823%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%$%hd277736278018%_))))
                  (if (equal? _%$%e277777277823%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl277752277946%_))
                          (_%__kont282043282044%_
                           _%$%hd277751277943%_
                           _%$%hd277733278008%_
                           _%$%hd277730277998%_)
                          (let () (declare (not safe)) (_%$%g277725277786%_)))
                      (let () (declare (not safe)) (_%$%g277725277786%_))))
                (let () (declare (not safe)) (_%$%g277725277786%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%$%hd277736278018%_))
                                                (let ((_%$%e277777277823%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%hd277736278018%_))))
                                                  (declare (not safe))
                                                  (_%$%g277725277786%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g277725277786%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl277734278011%_))
                                    (_%__kont282041282042%_
                                     _%$%hd277733278008%_
                                     _%$%hd277730277998%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g277725277786%_))))))
                        (let () (declare (not safe)) (_%$%g277725277786%_)))))
                (let () (declare (not safe)) (_%$%g277725277786%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx278045%_)
        (let* ((_%$%g278049278078%_
                (lambda (_%$%g278050278074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278050278074%_))))
               (_%$%g278048278183%_
                (lambda (_%$%g278050278082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278050278082%_))
                      (let ((_%$%e278052278085%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278050278082%_))))
                        (let ((_%$%hd278053278089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278052278085%_)))
                              (_%$%tl278054278092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278052278085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl278054278092%_))
                              (let ((_g282664_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl278054278092%_
                                        '0))))
                                (begin
                                  (let ((_g282665_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282664_)
                                               (##values-length _g282664_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282665_ 2)))
                                        (error "Context expects 2 values"
                                               _g282665_)))
                                  (let ((_%$%target278055278095%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282664_ 0)))
                                        (_%$%tl278057278098%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282664_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278057278098%_))
                                        (letrec ((_%$%loop278058278101%_
                                                  (lambda (_%$%hd278056278105%_
                                                           _%$%clause278062278108%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd278056278105%_))
                                                        (let ((_%$%e278059278110%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd278056278105%_))))
                  (let ((_%$%lp-hd278060278114%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278059278110%_)))
                        (_%$%lp-tl278061278117%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278059278110%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%$%lp-hd278060278114%_))
                        (let ((_g282666_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%$%lp-hd278060278114%_
                                  '0))))
                          (begin
                            (let ((_g282667_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g282666_)
                                         (##values-length _g282666_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g282667_ 2)))
                                  (error "Context expects 2 values"
                                         _g282667_)))
                            (let ((_%$%target278064278120%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g282666_ 0)))
                                  (_%$%tl278066278123%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g282666_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl278066278123%_))
                                  (letrec ((_%$%loop278067278126%_
                                            (lambda (_%$%hd278065278130%_
                                                     _%$%clause278071278133%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd278065278130%_))
                                                  (let ((_%$%e278068278135%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd278065278130%_))))
                                                    (let ((_%$%lp-hd278069278139%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e278068278135%_)))
                                                          (_%$%lp-tl278070278142%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e278068278135%_))))
                                                      (_%$%loop278067278126%_
                                                       _%$%lp-tl278070278142%_
                                                       (cons _%$%lp-hd278069278139%_
                                                             _%$%clause278071278133%_))))
                                                  (let ((_%$%clause278072278145%_
                                                         (reverse _%$%clause278071278133%_)))
                                                    (_%$%loop278058278101%_
                                                     _%$%lp-tl278061278117%_
                                                     (cons _%$%clause278072278145%_
                                                           _%$%clause278062278108%_)))))))
                                    (_%$%loop278067278126%_
                                     _%$%target278064278120%_
                                     '()))
                                  (_%$%g278049278078%_ _%$%g278050278082%_)))))
                        (_%$%g278049278078%_ _%$%g278050278082%_))))
                (let ((_%$%clause278063278148%_
                       (reverse _%$%clause278062278108%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f '@list))
                                    (let ((__tmp282668
                                           (lambda (_%$%g278166278171%_
                                                    _%$%g278167278174%_)
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            '@lambda))
                                                         (let ((__tmp282669
                                                                (lambda (_%$%g278168278177%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g278169278180%_)
                          (cons _%$%g278168278177%_ _%$%g278169278180%_))))
                   (declare (not safe))
                   (foldr__0 __tmp282669 '() _%$%g278166278171%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _%$%g278167278174%_))))
                                      (declare (not safe))
                                      (foldr__0
                                       __tmp282668
                                       '()
                                       _%$%clause278063278148%_)))
                              '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop278058278101%_
                                           _%$%target278055278095%_
                                           '()))
                                        (_%$%g278049278078%_
                                         _%$%g278050278082%_)))))
                              (_%$%g278049278078%_ _%$%g278050278082%_))))
                      (_%$%g278049278078%_ _%$%g278050278082%_)))))
          (_%$%g278048278183%_ _%$stx278045%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx278189%_)
        (let* ((_%$%g278193278211%_
                (lambda (_%$%g278194278207%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278194278207%_))))
               (_%$%g278192278266%_
                (lambda (_%$%g278194278215%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278194278215%_))
                      (let ((_%$%e278197278218%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278194278215%_))))
                        (let ((_%$%hd278198278222%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278197278218%_)))
                              (_%$%tl278199278225%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278197278218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278199278225%_))
                              (let ((_%$%e278200278228%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278199278225%_))))
                                (let ((_%$%hd278201278232%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278200278228%_)))
                                      (_%$%tl278202278235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278200278228%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278202278235%_))
                                      (let ((_%$%e278203278238%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278202278235%_))))
                                        (let ((_%$%hd278204278242%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278203278238%_)))
                                              (_%$%tl278205278245%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278203278238%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278205278245%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd278201278232%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd278204278242%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278193278211%_
                                               _%$%g278194278215%_))))
                                      (_%$%g278193278211%_
                                       _%$%g278194278215%_))))
                              (_%$%g278193278211%_ _%$%g278194278215%_))))
                      (_%$%g278193278211%_ _%$%g278194278215%_)))))
          (_%$%g278192278266%_ _%$stx278189%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx278270%_)
        (let* ((_%$%g278274278292%_
                (lambda (_%$%g278275278288%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278275278288%_))))
               (_%$%g278273278347%_
                (lambda (_%$%g278275278296%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278275278296%_))
                      (let ((_%$%e278278278299%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278275278296%_))))
                        (let ((_%$%hd278279278303%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278278278299%_)))
                              (_%$%tl278280278306%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278278278299%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278280278306%_))
                              (let ((_%$%e278281278309%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278280278306%_))))
                                (let ((_%$%hd278282278313%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278281278309%_)))
                                      (_%$%tl278283278316%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278281278309%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278283278316%_))
                                      (let ((_%$%e278284278319%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278283278316%_))))
                                        (let ((_%$%hd278285278323%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278284278319%_)))
                                              (_%$%tl278286278326%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278284278319%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278286278326%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'make-!kw-lambda-primary))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd278282278313%_ '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'quote))
                              (cons _%$%hd278285278323%_ '()))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278274278292%_
                                               _%$%g278275278296%_))))
                                      (_%$%g278274278292%_
                                       _%$%g278275278296%_))))
                              (_%$%g278274278292%_ _%$%g278275278296%_))))
                      (_%$%g278274278292%_ _%$%g278275278296%_)))))
          (_%$%g278273278347%_ _%$stx278270%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx278351%_)
        (let* ((_%$%g278355278384%_
                (lambda (_%$%g278356278380%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278356278380%_))))
               (_%$%g278354278480%_
                (lambda (_%$%g278356278388%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278356278388%_))
                      (let ((_%$%e278359278391%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278356278388%_))))
                        (let ((_%$%hd278360278395%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278359278391%_)))
                              (_%$%tl278361278398%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278359278391%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl278361278398%_))
                              (let ((_g282670_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl278361278398%_
                                        '0))))
                                (begin
                                  (let ((_g282671_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282670_)
                                               (##values-length _g282670_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282671_ 2)))
                                        (error "Context expects 2 values"
                                               _g282671_)))
                                  (let ((_%$%target278362278401%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282670_ 0)))
                                        (_%$%tl278364278404%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282670_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278364278404%_))
                                        (letrec ((_%$%loop278365278407%_
                                                  (lambda (_%$%hd278363278411%_
                                                           _%$%rule278369278414%_
                                                           _%$%proc278370278415%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd278363278411%_))
                                                        (let ((_%$%e278366278417%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd278363278411%_))))
                  (let ((_%$%lp-hd278367278421%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278366278417%_)))
                        (_%$%lp-tl278368278424%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278366278417%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%lp-hd278367278421%_))
                        (let ((_%$%e278373278427%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%lp-hd278367278421%_))))
                          (let ((_%$%hd278374278431%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e278373278427%_)))
                                (_%$%tl278375278434%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e278373278427%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl278375278434%_))
                                (let ((_%$%e278376278437%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl278375278434%_))))
                                  (let ((_%$%hd278377278441%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e278376278437%_)))
                                        (_%$%tl278378278444%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e278376278437%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl278378278444%_))
                                        (_%$%loop278365278407%_
                                         _%$%lp-tl278368278424%_
                                         (cons _%$%hd278377278441%_
                                               _%$%rule278369278414%_)
                                         (cons _%$%hd278374278431%_
                                               _%$%proc278370278415%_))
                                        (_%$%g278355278384%_
                                         _%$%g278356278388%_))))
                                (_%$%g278355278384%_ _%$%g278356278388%_))))
                        (_%$%g278355278384%_ _%$%g278356278388%_))))
                (let ((_%$%rule278371278447%_ (reverse _%$%rule278369278414%_))
                      (_%$%proc278372278449%_
                       (reverse _%$%proc278370278415%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (begin
                          (let ()
                            (declare (not safe))
                            (gx#syntax-check-splice-targets
                             _%$%rule278371278447%_
                             _%$%proc278372278449%_))
                          (let ((__tmp282672
                                 (lambda (_%$%g278468278472%_
                                          _%$%g278469278475%_
                                          _%$%g278470278477%_)
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-inline-rule!))
                                               (cons _%$%g278469278475%_
                                                     (cons _%$%g278468278472%_
                                                           '())))
                                         _%$%g278470278477%_))))
                            (declare (not safe))
                            (foldr__1
                             __tmp282672
                             '()
                             _%$%rule278371278447%_
                             _%$%proc278372278449%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop278365278407%_
                                           _%$%target278362278401%_
                                           '()
                                           '()))
                                        (_%$%g278355278384%_
                                         _%$%g278356278388%_)))))
                              (_%$%g278355278384%_ _%$%g278356278388%_))))
                      (_%$%g278355278384%_ _%$%g278356278388%_)))))
          (_%$%g278354278480%_ _%$stx278351%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx278485%_)
        (let* ((_%$%g278489278507%_
                (lambda (_%$%g278490278503%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g278490278503%_))))
               (_%$%g278488278562%_
                (lambda (_%$%g278490278511%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g278490278511%_))
                      (let ((_%$%e278493278514%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g278490278511%_))))
                        (let ((_%$%hd278494278518%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e278493278514%_)))
                              (_%$%tl278495278521%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e278493278514%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278495278521%_))
                              (let ((_%$%e278496278524%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278495278521%_))))
                                (let ((_%$%hd278497278528%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278496278524%_)))
                                      (_%$%tl278498278531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278496278524%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl278498278531%_))
                                      (let ((_%$%e278499278534%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl278498278531%_))))
                                        (let ((_%$%hd278500278538%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278499278534%_)))
                                              (_%$%tl278501278541%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278499278534%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278501278541%_))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'let))
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'type))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'optimizer-lookup-type))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd278497278528%_
                                                      '()))
                                          '()))
                              '()))
                  (cons (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'if))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             '!lambda?))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'type))
                                                '()))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'set!))
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '!lambda-inline))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'type))
                          '()))
              (cons _%$%hd278500278538%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'displayln))
                                                      (cons '"*** WARNING unknown procedure "
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd278497278528%_ '()))
                          (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g278489278507%_
                                               _%$%g278490278511%_))))
                                      (_%$%g278489278507%_
                                       _%$%g278490278511%_))))
                              (_%$%g278489278507%_ _%$%g278490278511%_))))
                      (_%$%g278489278507%_ _%$%g278490278511%_)))))
          (_%$%g278488278562%_ _%$stx278485%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx278566%_)
        (let* ((_%__stx282152282153%_ _%$stx278566%_)
               (_%$%g278571278596%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282152282153%_)))))
          (let ((_%__kont282155282156%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont282157282158%_
                 (lambda (_%$%g278576278643%_
                          _%$%g278577278645%_
                          _%$%g278578278646%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%$%g278578278646%_
                                           (cons _%$%g278577278645%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%$%g278576278643%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282152282153%_))
                (let ((_%$%e278573278672%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282152282153%_))))
                  (let ((_%$%tl278575278679%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e278573278672%_)))
                        (_%$%hd278574278676%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e278573278672%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl278575278679%_))
                        (_%__kont282155282156%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl278575278679%_))
                            (let ((_%$%e278582278613%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl278575278679%_))))
                              (let ((_%$%tl278584278620%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e278582278613%_)))
                                    (_%$%hd278583278617%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e278582278613%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd278583278617%_))
                                    (let ((_%$%e278585278623%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd278583278617%_))))
                                      (let ((_%$%tl278587278630%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e278585278623%_)))
                                            (_%$%hd278586278627%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e278585278623%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl278587278630%_))
                                            (let ((_%$%e278588278633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl278587278630%_))))
                                              (let ((_%$%tl278590278640%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e278588278633%_)))
                                                    (_%$%hd278589278637%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e278588278633%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl278590278640%_))
                                                    (_%__kont282157282158%_
                                                     _%$%tl278584278620%_
                                                     _%$%hd278589278637%_
                                                     _%$%hd278586278627%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g278571278596%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g278571278596%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g278571278596%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g278571278596%_))))))
                (let () (declare (not safe)) (_%$%g278571278596%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx278690%_)
        (let* ((_%__stx282196282197%_ _%$stx278690%_)
               (_%$%g278695278726%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282196282197%_)))))
          (let ((_%__kont282199282200%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont282201282202%_
                 (lambda (_%$%g278700278791%_
                          _%$%g278701278793%_
                          _%$%g278702278794%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%$%g278702278794%_
                                           (let ((__tmp282673
                                                  (lambda (_%$%g278814278817%_
                                                           _%$%g278815278820%_)
                                                    (cons _%$%g278814278817%_
                                                          _%$%g278815278820%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp282673
                                              '()
                                              _%$%g278701278793%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%$%g278700278791%_)
                                     '()))))))
            (let ((_%__match282239282240%_
                   (lambda (_%$%e278703278733%_
                            _%$%hd278704278737%_
                            _%$%tl278705278740%_
                            _%$%e278706278743%_
                            _%$%hd278707278747%_
                            _%$%tl278708278750%_
                            _%$%e278709278753%_
                            _%$%hd278710278757%_
                            _%$%tl278711278760%_
                            _%__splice282203282204%_
                            _%$%target278712278763%_
                            _%$%tl278714278766%_)
                     (letrec ((_%$%loop278715278769%_
                               (lambda (_%$%hd278713278773%_
                                        _%$%sig278719278776%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd278713278773%_))
                                     (let ((_%$%e278716278778%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%hd278713278773%_))))
                                       (let ((_%$%lp-tl278718278785%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e278716278778%_)))
                                             (_%$%lp-hd278717278782%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e278716278778%_))))
                                         (_%$%loop278715278769%_
                                          _%$%lp-tl278718278785%_
                                          (cons _%$%lp-hd278717278782%_
                                                _%$%sig278719278776%_))))
                                     (let ((_%$%sig278720278788%_
                                            (reverse _%$%sig278719278776%_)))
                                       (_%__kont282201282202%_
                                        _%$%tl278708278750%_
                                        _%$%sig278720278788%_
                                        _%$%hd278710278757%_))))))
                       (_%$%loop278715278769%_
                        _%$%target278712278763%_
                        '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282196282197%_))
                  (let ((_%$%e278697278830%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282196282197%_))))
                    (let ((_%$%tl278699278837%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e278697278830%_)))
                          (_%$%hd278698278834%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e278697278830%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl278699278837%_))
                          (_%__kont282199282200%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl278699278837%_))
                              (let ((_%$%e278706278743%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl278699278837%_))))
                                (let ((_%$%tl278708278750%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e278706278743%_)))
                                      (_%$%hd278707278747%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e278706278743%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd278707278747%_))
                                      (let ((_%$%e278709278753%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd278707278747%_))))
                                        (let ((_%$%tl278711278760%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278709278753%_)))
                                              (_%$%hd278710278757%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278709278753%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl278711278760%_))
                                              (let ((_%__splice282203282204%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl278711278760%_
                                                        '0))))
                                                (let ((_%$%tl278714278766%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282203282204%_
                                                          '1)))
                                                      (_%$%target278712278763%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282203282204%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278714278766%_))
                                                      (_%__match282239282240%_
                                                       _%$%e278697278830%_
                                                       _%$%hd278698278834%_
                                                       _%$%tl278699278837%_
                                                       _%$%e278706278743%_
                                                       _%$%hd278707278747%_
                                                       _%$%tl278708278750%_
                                                       _%$%e278709278753%_
                                                       _%$%hd278710278757%_
                                                       _%$%tl278711278760%_
                                                       _%__splice282203282204%_
                                                       _%$%target278712278763%_
                                                       _%$%tl278714278766%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g278695278726%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g278695278726%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g278695278726%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g278695278726%_))))))
                  (let () (declare (not safe)) (_%$%g278695278726%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx278849%_)
        (let* ((_%__stx282242282243%_ _%$stx278849%_)
               (_%$%g278854278901%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282242282243%_)))))
          (let ((_%__kont282245282246%_
                 (lambda (_%$%g278856279059%_ _%$%g278857279061%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%$%g278857279061%_
                               (let ((__tmp282674
                                      (lambda (_%$%g279081279084%_
                                               _%$%g279082279087%_)
                                        (cons _%$%g279081279084%_
                                              _%$%g279082279087%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp282674
                                  '()
                                  _%$%g278856279059%_))))))
                (_%__kont282249282250%_
                 (lambda (_%$%g278879278956%_ _%$%g278880278958%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%$%g278880278958%_
                               (let ((__tmp282675
                                      (lambda (_%$%g278975278978%_
                                               _%$%g278976278981%_)
                                        (cons _%$%g278975278978%_
                                              _%$%g278976278981%_))))
                                 (declare (not safe))
                                 (foldr__0
                                  __tmp282675
                                  '()
                                  _%$%g278879278956%_)))))))
            (let* ((_%__match282309282310%_
                    (lambda (_%$%e278881278908%_
                             _%$%hd278882278912%_
                             _%$%tl278883278915%_
                             _%$%e278884278918%_
                             _%$%hd278885278922%_
                             _%$%tl278886278925%_
                             _%__splice282251282252%_
                             _%$%target278887278928%_
                             _%$%tl278889278931%_)
                      (letrec ((_%$%loop278890278934%_
                                (lambda (_%$%hd278888278938%_
                                         _%$%sig278894278941%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd278888278938%_))
                                      (let ((_%$%e278891278943%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd278888278938%_))))
                                        (let ((_%$%lp-tl278893278950%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278891278943%_)))
                                              (_%$%lp-hd278892278947%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278891278943%_))))
                                          (_%$%loop278890278934%_
                                           _%$%lp-tl278893278950%_
                                           (cons _%$%lp-hd278892278947%_
                                                 _%$%sig278894278941%_))))
                                      (let ((_%$%sig278895278953%_
                                             (reverse _%$%sig278894278941%_)))
                                        (_%__kont282249282250%_
                                         _%$%sig278895278953%_
                                         _%$%hd278885278922%_))))))
                        (_%$%loop278890278934%_
                         _%$%target278887278928%_
                         '()))))
                   (_%__match282301282302%_
                    (lambda (_%$%e278881278908%_
                             _%$%hd278882278912%_
                             _%$%tl278883278915%_
                             _%$%e278884278918%_
                             _%$%hd278885278922%_
                             _%$%tl278886278925%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%$%tl278886278925%_))
                          (let ((_%__splice282251282252%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice->vector
                                    _%$%tl278886278925%_
                                    '0))))
                            (let ((_%$%tl278889278931%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice282251282252%_
                                      '1)))
                                  (_%$%target278887278928%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice282251282252%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl278889278931%_))
                                  (_%__match282309282310%_
                                   _%$%e278881278908%_
                                   _%$%hd278882278912%_
                                   _%$%tl278883278915%_
                                   _%$%e278884278918%_
                                   _%$%hd278885278922%_
                                   _%$%tl278886278925%_
                                   _%__splice282251282252%_
                                   _%$%target278887278928%_
                                   _%$%tl278889278931%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g278854278901%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g278854278901%_)))))
                   (_%__match282289282290%_
                    (lambda (_%$%e278858278991%_
                             _%$%hd278859278995%_
                             _%$%tl278860278998%_
                             _%$%e278861279001%_
                             _%$%hd278862279005%_
                             _%$%tl278863279008%_
                             _%$%e278864279011%_
                             _%$%hd278865279015%_
                             _%$%tl278866279018%_
                             _%$%e278867279021%_
                             _%$%hd278868279025%_
                             _%$%tl278869279028%_
                             _%__splice282247282248%_
                             _%$%target278870279031%_
                             _%$%tl278872279034%_)
                      (letrec ((_%$%loop278873279037%_
                                (lambda (_%$%hd278871279041%_
                                         _%$%sig278877279044%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd278871279041%_))
                                      (let ((_%$%e278874279046%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%hd278871279041%_))))
                                        (let ((_%$%lp-tl278876279053%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e278874279046%_)))
                                              (_%$%lp-hd278875279050%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e278874279046%_))))
                                          (_%$%loop278873279037%_
                                           _%$%lp-tl278876279053%_
                                           (cons _%$%lp-hd278875279050%_
                                                 _%$%sig278877279044%_))))
                                      (let ((_%$%sig278878279056%_
                                             (reverse _%$%sig278877279044%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl278866279018%_))
                                            (_%__kont282245282246%_
                                             _%$%sig278878279056%_
                                             _%$%hd278862279005%_)
                                            (_%__match282301282302%_
                                             _%$%e278858278991%_
                                             _%$%hd278859278995%_
                                             _%$%tl278860278998%_
                                             _%$%e278861279001%_
                                             _%$%hd278862279005%_
                                             _%$%tl278863279008%_)))))))
                        (_%$%loop278873279037%_
                         _%$%target278870279031%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282242282243%_))
                  (let ((_%$%e278858278991%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282242282243%_))))
                    (let ((_%$%tl278860278998%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e278858278991%_)))
                          (_%$%hd278859278995%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e278858278991%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl278860278998%_))
                          (let ((_%$%e278861279001%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl278860278998%_))))
                            (let ((_%$%tl278863279008%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e278861279001%_)))
                                  (_%$%hd278862279005%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e278861279001%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl278863279008%_))
                                  (let ((_%$%e278864279011%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl278863279008%_))))
                                    (let ((_%$%tl278866279018%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e278864279011%_)))
                                          (_%$%hd278865279015%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e278864279011%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%hd278865279015%_))
                                          (let ((_%$%e278867279021%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%hd278865279015%_))))
                                            (let ((_%$%tl278869279028%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e278867279021%_)))
                                                  (_%$%hd278868279025%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e278867279021%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%$%hd278868279025%_))
                                                  (if (let ((__tmp282676
                                                             |gxc[1]#_g282677_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp282676
                                                         _%$%hd278868279025%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%$%tl278869279028%_))
                                                          (let ((_%__splice282247282248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl278869279028%_
                            '0))))
                    (let ((_%$%tl278872279034%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282247282248%_ '1)))
                          (_%$%target278870279031%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282247282248%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl278872279034%_))
                          (_%__match282289282290%_
                           _%$%e278858278991%_
                           _%$%hd278859278995%_
                           _%$%tl278860278998%_
                           _%$%e278861279001%_
                           _%$%hd278862279005%_
                           _%$%tl278863279008%_
                           _%$%e278864279011%_
                           _%$%hd278865279015%_
                           _%$%tl278866279018%_
                           _%$%e278867279021%_
                           _%$%hd278868279025%_
                           _%$%tl278869279028%_
                           _%__splice282247282248%_
                           _%$%target278870279031%_
                           _%$%tl278872279034%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl278863279008%_))
                              (let ((_%__splice282251282252%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice->vector
                                        _%$%tl278863279008%_
                                        '0))))
                                (let ((_%$%tl278889278931%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice282251282252%_
                                          '1)))
                                      (_%$%target278887278928%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice282251282252%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl278889278931%_))
                                      (_%__match282309282310%_
                                       _%$%e278858278991%_
                                       _%$%hd278859278995%_
                                       _%$%tl278860278998%_
                                       _%$%e278861279001%_
                                       _%$%hd278862279005%_
                                       _%$%tl278863279008%_
                                       _%__splice282251282252%_
                                       _%$%target278887278928%_
                                       _%$%tl278889278931%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g278854278901%_)))))
                              (let ()
                                (declare (not safe))
                                (_%$%g278854278901%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%$%tl278863279008%_))
                      (let ((_%__splice282251282252%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice->vector
                                _%$%tl278863279008%_
                                '0))))
                        (let ((_%$%tl278889278931%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice282251282252%_ '1)))
                              (_%$%target278887278928%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice282251282252%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl278889278931%_))
                              (_%__match282309282310%_
                               _%$%e278858278991%_
                               _%$%hd278859278995%_
                               _%$%tl278860278998%_
                               _%$%e278861279001%_
                               _%$%hd278862279005%_
                               _%$%tl278863279008%_
                               _%__splice282251282252%_
                               _%$%target278887278928%_
                               _%$%tl278889278931%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g278854278901%_)))))
                      (let () (declare (not safe)) (_%$%g278854278901%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%$%tl278863279008%_))
                  (let ((_%__splice282251282252%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice->vector
                            _%$%tl278863279008%_
                            '0))))
                    (let ((_%$%tl278889278931%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282251282252%_ '1)))
                          (_%$%target278887278928%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice282251282252%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl278889278931%_))
                          (_%__match282309282310%_
                           _%$%e278858278991%_
                           _%$%hd278859278995%_
                           _%$%tl278860278998%_
                           _%$%e278861279001%_
                           _%$%hd278862279005%_
                           _%$%tl278863279008%_
                           _%__splice282251282252%_
                           _%$%target278887278928%_
                           _%$%tl278889278931%_)
                          (let ()
                            (declare (not safe))
                            (_%$%g278854278901%_)))))
                  (let () (declare (not safe)) (_%$%g278854278901%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl278863279008%_))
                                                      (let ((_%__splice282251282252%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl278863279008%_
                        '0))))
                (let ((_%$%tl278889278931%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice282251282252%_ '1)))
                      (_%$%target278887278928%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice282251282252%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl278889278931%_))
                      (_%__match282309282310%_
                       _%$%e278858278991%_
                       _%$%hd278859278995%_
                       _%$%tl278860278998%_
                       _%$%e278861279001%_
                       _%$%hd278862279005%_
                       _%$%tl278863279008%_
                       _%__splice282251282252%_
                       _%$%target278887278928%_
                       _%$%tl278889278931%_)
                      (let () (declare (not safe)) (_%$%g278854278901%_)))))
              (let () (declare (not safe)) (_%$%g278854278901%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%$%tl278863279008%_))
                                              (let ((_%__splice282251282252%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice->vector
                                                        _%$%tl278863279008%_
                                                        '0))))
                                                (let ((_%$%tl278889278931%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282251282252%_
                                                          '1)))
                                                      (_%$%target278887278928%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice282251282252%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl278889278931%_))
                                                      (_%__match282309282310%_
                                                       _%$%e278858278991%_
                                                       _%$%hd278859278995%_
                                                       _%$%tl278860278998%_
                                                       _%$%e278861279001%_
                                                       _%$%hd278862279005%_
                                                       _%$%tl278863279008%_
                                                       _%__splice282251282252%_
                                                       _%$%target278887278928%_
                                                       _%$%tl278889278931%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%$%g278854278901%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g278854278901%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl278863279008%_))
                                      (let ((_%__splice282251282252%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl278863279008%_
                                                '0))))
                                        (let ((_%$%tl278889278931%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice282251282252%_
                                                  '1)))
                                              (_%$%target278887278928%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice282251282252%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl278889278931%_))
                                              (_%__match282309282310%_
                                               _%$%e278858278991%_
                                               _%$%hd278859278995%_
                                               _%$%tl278860278998%_
                                               _%$%e278861279001%_
                                               _%$%hd278862279005%_
                                               _%$%tl278863279008%_
                                               _%__splice282251282252%_
                                               _%$%target278887278928%_
                                               _%$%tl278889278931%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g278854278901%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g278854278901%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g278854278901%_)))))
                  (let () (declare (not safe)) (_%$%g278854278901%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx280244%_ _%id280246%_)
        (let ((_%proc280250%_
               (let ((__tmp282678
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id280246%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp282678))))
          (if (procedure? _%proc280250%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx280244%_
                 _%id280246%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx280235%_ _%id280237%_)
        (let ((_%klass280241%_
               (let ((__tmp282679
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id280237%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp282679))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass280241%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx280235%_
                 _%id280237%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx279485%_ _%proc279487%_ _%sig279488%_)
        (letrec ((_%signature-arity279490%_
                  (lambda (_%args280167%_)
                    (let _%loop280170%_ ((_%rest280173%_ _%args280167%_)
                                         (_%count280175%_ '0))
                      (let* ((_%$%rest280176280187%_ _%rest280173%_)
                             (_%$%E280180280193%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%$%rest280176280187%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%$%K280183280224%_
                               (lambda (_%rest280221%_)
                                 (_%loop280170%_
                                  _%rest280221%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count280175%_ '1)))))
                              (_%$%K280182280213%_ (lambda () _%count280175%_))
                              (_%$%K280181280201%_
                               (lambda () (cons _%count280175%_ '()))))
                          (let ((_%$%try-match280178280217%_
                                 (lambda ()
                                   (if (null? _%$%rest280176280187%_)
                                       (_%$%K280182280213%_)
                                       (_%$%K280181280201%_)))))
                            (if (pair? _%$%rest280176280187%_)
                                (let* ((_%$%tl280185280228%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%rest280176280187%_)))
                                       (_%rest280232%_ _%$%tl280185280228%_))
                                  (_%$%K280183280224%_ _%rest280232%_))
                                (_%$%try-match280178280217%_))))))))
                 (_%make-signature279492%_
                  (lambda (_%args280049%_
                           _%return280051%_
                           _%effect280052%_
                           _%unchecked280053%_)
                    (let ((__tmp282680
                           (lambda (_%$%g280054280056%_)
                             (|gxc[1]#verify-class!|
                              _%ctx279485%_
                              _%$%g280054280056%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp282680 _%args280049%_))
                    (|gxc[1]#verify-class!| _%ctx279485%_ _%return280051%_)
                    (if _%unchecked280053%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx279485%_
                         _%unchecked280053%_)
                        '#!void)
                    (let ((_%arity280060%_
                           (_%signature-arity279490%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args280049%_)))))
                      (if _%effect280052%_
                          (let ((_%effect280063%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect280052%_))))
                            (if (and (list? _%effect280063%_)
                                     (let ()
                                       (declare (not safe))
                                       (andmap__0 symbol? _%effect280063%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx279485%_
                                   _%proc279487%_
                                   _%effect280063%_))))
                          '#!void)
                      (cons _%arity280060%_
                            (cons (let* ((_%$%g280066280089%_
                                          (lambda (_%$%g280067280085%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g280067280085%_))))
                                         (_%$%g280065280163%_
                                          (lambda (_%$%g280067280093%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g280067280093%_))
                                                (let ((_%$%e280072280096%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%g280067280093%_))))
                                                  (let ((_%$%hd280073280100%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e280072280096%_)))
                                                        (_%$%tl280074280103%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e280072280096%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl280074280103%_))
                                                        (let ((_%$%e280075280106%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl280074280103%_))))
                  (let ((_%$%hd280076280110%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e280075280106%_)))
                        (_%$%tl280077280113%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e280075280106%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl280077280113%_))
                        (let ((_%$%e280078280116%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl280077280113%_))))
                          (let ((_%$%hd280079280120%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280078280116%_)))
                                (_%$%tl280080280123%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280078280116%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl280080280123%_))
                                (let ((_%$%e280081280126%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl280080280123%_))))
                                  (let ((_%$%hd280082280130%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e280081280126%_)))
                                        (_%$%tl280083280133%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e280081280126%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl280083280133%_))
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!signature))
                                              (cons 'arguments:
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'quote))
                        (cons _%$%hd280073280100%_ '()))
                  (cons 'return:
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote))
                                    (cons _%$%hd280076280110%_ '()))
                              (cons 'effect:
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd280079280120%_
                                                      '()))
                                          (cons 'unchecked:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd280082280130%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'builtin))
                                      '()))
                          '())))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_%$%g280066280089%_
                                         _%$%g280067280093%_))))
                                (_%$%g280066280089%_ _%$%g280067280093%_))))
                        (_%$%g280066280089%_ _%$%g280067280093%_))))
                (_%$%g280066280089%_ _%$%g280067280093%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g280066280089%_
                                                 _%$%g280067280093%_)))))
                                    (_%$%g280065280163%_
                                     (list _%args280049%_
                                           _%return280051%_
                                           _%effect280052%_
                                           _%unchecked280053%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx279485%_ _%proc279487%_)
          (let* ((_%__stx282320282321%_ _%sig279488%_)
                 (_%$%g279499279602%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx282320282321%_)))))
            (let ((_%__kont282323282324%_
                   (lambda (_%$%g279501280030%_ _%$%g279502280032%_)
                     (_%make-signature279492%_
                      _%$%g279502280032%_
                      _%$%g279501280030%_
                      '#f
                      '#f)))
                  (_%__kont282325282326%_
                   (lambda (_%$%g279509279981%_
                            _%$%g279510279983%_
                            _%$%g279511279984%_)
                     (_%make-signature279492%_
                      _%$%g279511279984%_
                      _%$%g279510279983%_
                      _%$%g279509279981%_
                      '#f)))
                  (_%__kont282327282328%_
                   (lambda (_%$%g279525279905%_
                            _%$%g279526279907%_
                            _%$%g279527279908%_)
                     (_%make-signature279492%_
                      _%$%g279527279908%_
                      _%$%g279526279907%_
                      _%$%g279525279905%_
                      (let ((__tmp282681
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc279487%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp282681)))))
                  (_%__kont282329282330%_
                   (lambda (_%$%g279545279811%_
                            _%$%g279546279813%_
                            _%$%g279547279814%_
                            _%$%g279548279815%_)
                     (_%make-signature279492%_
                      _%$%g279548279815%_
                      _%$%g279547279814%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g279545279811%_)))))
                  (_%__kont282331282332%_
                   (lambda (_%$%g279569279718%_ _%$%g279570279720%_)
                     (_%make-signature279492%_
                      _%$%g279570279720%_
                      _%$%g279569279718%_
                      '#f
                      (let ((__tmp282682
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc279487%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp282682)))))
                  (_%__kont282333282334%_
                   (lambda (_%$%g279581279653%_
                            _%$%g279582279655%_
                            _%$%g279583279656%_)
                     (_%make-signature279492%_
                      _%$%g279583279656%_
                      _%$%g279582279655%_
                      '#f
                      (let ()
                        (declare (not safe))
                        (gx#stx-e _%$%g279581279653%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx282320282321%_))
                  (let ((_%$%e279503280010%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx282320282321%_))))
                    (let ((_%$%tl279505280017%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279503280010%_)))
                          (_%$%hd279504280014%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279503280010%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl279505280017%_))
                          (let ((_%$%e279506280020%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl279505280017%_))))
                            (let ((_%$%tl279508280027%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e279506280020%_)))
                                  (_%$%hd279507280024%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e279506280020%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl279508280027%_))
                                  (_%__kont282323282324%_
                                   _%$%hd279507280024%_
                                   _%$%hd279504280014%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl279508280027%_))
                                      (let ((_%$%e279518279957%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl279508280027%_))))
                                        (let ((_%$%tl279520279964%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e279518279957%_)))
                                              (_%$%hd279519279961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e279518279957%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd279519279961%_))
                                              (let ((_%$%e279521279967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd279519279961%_))))
                                                (if (equal? _%$%e279521279967%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl279520279964%_))
                                                        (let ((_%$%e279522279971%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl279520279964%_))))
                  (let ((_%$%tl279524279978%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279522279971%_)))
                        (_%$%hd279523279975%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279522279971%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl279524279978%_))
                        (_%__kont282325282326%_
                         _%$%hd279523279975%_
                         _%$%hd279507280024%_
                         _%$%hd279504280014%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl279524279978%_))
                            (let ((_%$%e279541279891%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl279524279978%_))))
                              (let ((_%$%tl279543279898%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e279541279891%_)))
                                    (_%$%hd279542279895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e279541279891%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%$%hd279542279895%_))
                                    (let ((_%$%e279544279901%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd279542279895%_))))
                                      (if (equal? _%$%e279544279901%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl279543279898%_))
                                              (_%__kont282327282328%_
                                               _%$%hd279523279975%_
                                               _%$%hd279507280024%_
                                               _%$%hd279504280014%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279543279898%_))
                                                  (let ((_%$%e279566279801%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279543279898%_))))
                                                    (let ((_%$%tl279568279808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279566279801%_)))
                                                          (_%$%hd279567279805%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279566279801%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl279568279808%_))
                                                          (_%__kont282329282330%_
                                                           _%$%hd279567279805%_
                                                           _%$%hd279523279975%_
                                                           _%$%hd279507280024%_
                                                           _%$%hd279504280014%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g279499279602%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g279499279602%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g279499279602%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g279499279602%_)))))
                            (let ()
                              (declare (not safe))
                              (_%$%g279499279602%_))))))
                (let () (declare (not safe)) (_%$%g279499279602%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%$%e279521279967%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl279520279964%_))
                                                            (_%__kont282331282332%_
                                                             _%$%hd279507280024%_
                                                             _%$%hd279504280014%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279520279964%_))
                        (let ((_%$%e279594279643%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279520279964%_))))
                          (let ((_%$%tl279596279650%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279594279643%_)))
                                (_%$%hd279595279647%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279594279643%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl279596279650%_))
                                (_%__kont282333282334%_
                                 _%$%hd279595279647%_
                                 _%$%hd279507280024%_
                                 _%$%hd279504280014%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g279499279602%_)))))
                        (let () (declare (not safe)) (_%$%g279499279602%_))))
                (let () (declare (not safe)) (_%$%g279499279602%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g279499279602%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%$%g279499279602%_))))))
                          (let ()
                            (declare (not safe))
                            (_%$%g279499279602%_)))))
                  (let () (declare (not safe)) (_%$%g279499279602%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig279096%_)
        (let* ((_%$%g279099279179%_
                (lambda (_%$%g279100279175%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g279100279175%_))))
               (_%$%g279098279481%_
                (lambda (_%$%g279100279183%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g279100279183%_))
                      (let ((_%$%e279106279186%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g279100279183%_))))
                        (let ((_%$%hd279107279190%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279106279186%_)))
                              (_%$%tl279108279193%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279106279186%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl279108279193%_))
                              (let ((_%$%e279109279196%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl279108279193%_))))
                                (let ((_%$%hd279110279200%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e279109279196%_)))
                                      (_%$%tl279111279203%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e279109279196%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%$%hd279110279200%_))
                                      (let ((_%$%e279112279206%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd279110279200%_))))
                                        (if (equal? _%$%e279112279206%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl279111279203%_))
                                                (let ((_%$%e279113279210%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl279111279203%_))))
                                                  (let ((_%$%hd279114279214%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279113279210%_)))
                                                        (_%$%tl279115279217%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279113279210%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd279114279214%_))
                                                        (let ((_%$%e279116279220%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd279114279214%_))))
                  (let ((_%$%hd279117279224%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e279116279220%_)))
                        (_%$%tl279118279227%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e279116279220%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%$%hd279117279224%_))
                        (if (let ((__tmp282683 |gxc[1]#_g282684_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp282683
                               _%$%hd279117279224%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl279118279227%_))
                                (let ((_%$%e279119279230%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl279118279227%_))))
                                  (let ((_%$%hd279120279234%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279119279230%_)))
                                        (_%$%tl279121279237%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279119279230%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl279121279237%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl279115279217%_))
                                            (let ((_%$%e279122279240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%tl279115279217%_))))
                                              (let ((_%$%hd279123279244%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e279122279240%_)))
                                                    (_%$%tl279124279247%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e279122279240%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%$%hd279123279244%_))
                                                    (let ((_%$%e279125279250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd279123279244%_))))
                                                      (if (equal? _%$%e279125279250%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl279124279247%_))
                      (let ((_%$%e279126279254%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl279124279247%_))))
                        (let ((_%$%hd279127279258%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e279126279254%_)))
                              (_%$%tl279128279261%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e279126279254%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd279127279258%_))
                              (let ((_%$%e279129279264%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd279127279258%_))))
                                (let ((_%$%hd279130279268%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e279129279264%_)))
                                      (_%$%tl279131279271%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e279129279264%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd279130279268%_))
                                      (if (let ((__tmp282685
                                                 |gxc[1]#_g282686_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp282685
                                             _%$%hd279130279268%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279131279271%_))
                                              (let ((_%$%e279132279274%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279131279271%_))))
                                                (let ((_%$%hd279133279278%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279132279274%_)))
                                                      (_%$%tl279134279281%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279132279274%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl279134279281%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl279128279261%_))
                                                          (let ((_%$%e279135279284%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl279128279261%_))))
                    (let ((_%$%hd279136279288%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279135279284%_)))
                          (_%$%tl279137279291%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279135279284%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%$%hd279136279288%_))
                          (let ((_%$%e279138279294%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd279136279288%_))))
                            (if (equal? _%$%e279138279294%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl279137279291%_))
                                    (let ((_%$%e279139279298%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl279137279291%_))))
                                      (let ((_%$%hd279140279302%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e279139279298%_)))
                                            (_%$%tl279141279305%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e279139279298%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%hd279140279302%_))
                                            (let ((_%$%e279142279308%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%hd279140279302%_))))
                                              (let ((_%$%hd279143279312%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e279142279308%_)))
                                                    (_%$%tl279144279315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e279142279308%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%$%hd279143279312%_))
                                                    (if (let ((__tmp282687
                                                               |gxc[1]#_g282688_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp282687
                                                           _%$%hd279143279312%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl279144279315%_))
                                                            (let ((_%$%e279145279318%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%$%tl279144279315%_))))
                      (let ((_%$%hd279146279322%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e279145279318%_)))
                            (_%$%tl279147279325%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e279145279318%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl279147279325%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl279141279305%_))
                                (let ((_%$%e279148279328%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%tl279141279305%_))))
                                  (let ((_%$%hd279149279332%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279148279328%_)))
                                        (_%$%tl279150279335%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279148279328%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%$%hd279149279332%_))
                                        (let ((_%$%e279151279338%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd279149279332%_))))
                                          (if (equal? _%$%e279151279338%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl279150279335%_))
                                                  (let ((_%$%e279152279342%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl279150279335%_))))
                                                    (let ((_%$%hd279153279346%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e279152279342%_)))
                                                          (_%$%tl279154279349%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e279152279342%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd279153279346%_))
                                                          (let ((_%$%e279155279352%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%hd279153279346%_))))
                    (let ((_%$%hd279156279356%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e279155279352%_)))
                          (_%$%tl279157279359%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e279155279352%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd279156279356%_))
                          (if (let ((__tmp282689 |gxc[1]#_g282690_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp282689
                                 _%$%hd279156279356%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl279157279359%_))
                                  (let ((_%$%e279158279362%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e
                                            _%$%tl279157279359%_))))
                                    (let ((_%$%hd279159279366%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e279158279362%_)))
                                          (_%$%tl279160279369%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e279158279362%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl279160279369%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl279154279349%_))
                                              (let ((_%$%e279161279372%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl279154279349%_))))
                                                (let ((_%$%hd279162279376%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e279161279372%_)))
                                                      (_%$%tl279163279379%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e279161279372%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%$%hd279162279376%_))
                                                      (let ((_%$%e279164279382%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%hd279162279376%_))))
                (if (equal? _%$%e279164279382%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl279163279379%_))
                        (let ((_%$%e279165279386%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl279163279379%_))))
                          (let ((_%$%hd279166279390%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e279165279386%_)))
                                (_%$%tl279167279393%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e279165279386%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd279166279390%_))
                                (let ((_%$%e279168279396%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%$%hd279166279390%_))))
                                  (let ((_%$%hd279169279400%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e279168279396%_)))
                                        (_%$%tl279170279403%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e279168279396%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd279169279400%_))
                                        (if (let ((__tmp282691
                                                   |gxc[1]#_g282692_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp282691
                                               _%$%hd279169279400%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl279170279403%_))
                                                (let ((_%$%e279171279406%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%tl279170279403%_))))
                                                  (let ((_%$%hd279172279410%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e279171279406%_)))
                                                        (_%$%tl279173279413%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e279171279406%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl279173279413%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%$%tl279167279393%_))
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd279159279366%_))
                        (cons _%$%hd279159279366%_
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0
                                             '#f
                                             'make-!signature))
                                          (cons 'return:
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote))
                                                            (cons _%$%hd279133279278%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons 'origin:
                    (cons (cons (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%$%hd279172279410%_ '()))
                          '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        '#f)
                    (_%$%g279099279179%_ _%$%g279100279183%_))
                (_%$%g279099279179%_ _%$%g279100279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279099279179%_
                                                 _%$%g279100279183%_))
                                            (_%$%g279099279179%_
                                             _%$%g279100279183%_))
                                        (_%$%g279099279179%_
                                         _%$%g279100279183%_))))
                                (_%$%g279099279179%_ _%$%g279100279183%_))))
                        (_%$%g279099279179%_ _%$%g279100279183%_))
                    (_%$%g279099279179%_ _%$%g279100279183%_)))
              (_%$%g279099279179%_ _%$%g279100279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279099279179%_
                                               _%$%g279100279183%_))
                                          (_%$%g279099279179%_
                                           _%$%g279100279183%_))))
                                  (_%$%g279099279179%_ _%$%g279100279183%_))
                              (_%$%g279099279179%_ _%$%g279100279183%_))
                          (_%$%g279099279179%_ _%$%g279100279183%_))))
                  (_%$%g279099279179%_ _%$%g279100279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g279099279179%_
                                                   _%$%g279100279183%_))
                                              (_%$%g279099279179%_
                                               _%$%g279100279183%_)))
                                        (_%$%g279099279179%_
                                         _%$%g279100279183%_))))
                                (_%$%g279099279179%_ _%$%g279100279183%_))
                            (_%$%g279099279179%_ _%$%g279100279183%_))))
                    (_%$%g279099279179%_ _%$%g279100279183%_))
                (_%$%g279099279179%_ _%$%g279100279183%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279099279179%_
                                                     _%$%g279100279183%_))))
                                            (_%$%g279099279179%_
                                             _%$%g279100279183%_))))
                                    (_%$%g279099279179%_ _%$%g279100279183%_))
                                (_%$%g279099279179%_ _%$%g279100279183%_)))
                          (_%$%g279099279179%_ _%$%g279100279183%_))))
                  (_%$%g279099279179%_ _%$%g279100279183%_))
              (_%$%g279099279179%_ _%$%g279100279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g279099279179%_
                                               _%$%g279100279183%_))
                                          (_%$%g279099279179%_
                                           _%$%g279100279183%_))
                                      (_%$%g279099279179%_
                                       _%$%g279100279183%_))))
                              (_%$%g279099279179%_ _%$%g279100279183%_))))
                      (_%$%g279099279179%_ _%$%g279100279183%_))
                  (_%$%g279099279179%_ _%$%g279100279183%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g279099279179%_
                                                     _%$%g279100279183%_))))
                                            (_%$%g279099279179%_
                                             _%$%g279100279183%_))
                                        (_%$%g279099279179%_
                                         _%$%g279100279183%_))))
                                (_%$%g279099279179%_ _%$%g279100279183%_))
                            (_%$%g279099279179%_ _%$%g279100279183%_))
                        (_%$%g279099279179%_ _%$%g279100279183%_))))
                (_%$%g279099279179%_ _%$%g279100279183%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g279099279179%_
                                                 _%$%g279100279183%_))
                                            (_%$%g279099279179%_
                                             _%$%g279100279183%_)))
                                      (_%$%g279099279179%_
                                       _%$%g279100279183%_))))
                              (_%$%g279099279179%_ _%$%g279100279183%_))))
                      (_%$%g279099279179%_ _%$%g279100279183%_)))))
          (_%$%g279098279481%_ _%sig279096%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx280253%_)
        (let* ((_%$%g280256280274%_
                (lambda (_%$%g280257280270%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280257280270%_))))
               (_%$%g280255280329%_
                (lambda (_%$%g280257280278%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280257280278%_))
                      (let ((_%$%e280260280281%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280257280278%_))))
                        (let ((_%$%hd280261280285%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280260280281%_)))
                              (_%$%tl280262280288%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280260280281%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280262280288%_))
                              (let ((_%$%e280263280291%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280262280288%_))))
                                (let ((_%$%hd280264280295%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280263280291%_)))
                                      (_%$%tl280265280298%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280263280291%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl280265280298%_))
                                      (let ((_%$%e280266280301%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl280265280298%_))))
                                        (let ((_%$%hd280267280305%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280266280301%_)))
                                              (_%$%tl280268280308%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280266280301%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl280268280308%_))
                                              (if (and (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd280264280295%_))
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#identifier?
                                                          _%$%hd280267280305%_)))
                                                  (begin
                                                    (|gxc[1]#verify-procedure!|
                                                     _%stx280253%_
                                                     _%$%hd280264280295%_)
                                                    (|gxc[1]#verify-class!|
                                                     _%stx280253%_
                                                     _%$%hd280267280305%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-type))
                                                          (cons _%$%hd280264280295%_
                                                                (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      (declare (not safe))
                                      (gx#datum->syntax__0
                                       '#f
                                       'make-!primitive-predicate))
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote))
                                                (cons _%$%hd280267280305%_
                                                      '()))
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280256280274%_
                                                   _%$%g280257280278%_))
                                              (_%$%g280256280274%_
                                               _%$%g280257280278%_))))
                                      (_%$%g280256280274%_
                                       _%$%g280257280278%_))))
                              (_%$%g280256280274%_ _%$%g280257280278%_))))
                      (_%$%g280256280274%_ _%$%g280257280278%_)))))
          (_%$%g280255280329%_ _%stx280253%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx280333%_)
        (let* ((_%$%g280336280360%_
                (lambda (_%$%g280337280356%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280337280356%_))))
               (_%$%g280335280641%_
                (lambda (_%$%g280337280364%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280337280364%_))
                      (let ((_%$%e280340280367%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280337280364%_))))
                        (let ((_%$%hd280341280371%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280340280367%_)))
                              (_%$%tl280342280374%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280340280367%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280342280374%_))
                              (let ((_%$%e280343280377%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280342280374%_))))
                                (let ((_%$%hd280344280381%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280343280377%_)))
                                      (_%$%tl280345280384%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280343280377%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl280345280384%_))
                                      (let ((_g282693_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl280345280384%_
                                                '0))))
                                        (begin
                                          (let ((_g282694_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282693_)
                                                       (##values-length
                                                        _g282693_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282694_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282694_)))
                                          (let ((_%$%target280346280387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282693_ 0)))
                                                (_%$%tl280348280390%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282693_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl280348280390%_))
                                                (letrec ((_%$%loop280349280393%_
                                                          (lambda (_%$%hd280347280397%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%signature280353280400%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd280347280397%_))
                        (let ((_%$%e280350280402%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd280347280397%_))))
                          (let ((_%$%lp-hd280351280406%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280350280402%_)))
                                (_%$%lp-tl280352280409%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280350280402%_))))
                            (_%$%loop280349280393%_
                             _%$%lp-tl280352280409%_
                             (cons _%$%lp-hd280351280406%_
                                   _%$%signature280353280400%_))))
                        (let ((_%$%signature280354280412%_
                               (reverse _%$%signature280353280400%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd280344280381%_))
                              (let* ((_%$%g280435280450%_
                                      (lambda (_%$%g280436280446%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280436280446%_))))
                                     (_%$%g280434280629%_
                                      (lambda (_%$%g280436280454%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%g280436280454%_))
                                            (let ((_%$%e280439280457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%$%g280436280454%_))))
                                              (let ((_%$%hd280440280461%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e280439280457%_)))
                                                    (_%$%tl280441280464%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e280439280457%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl280441280464%_))
                                                    (let ((_%$%e280442280467%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl280441280464%_))))
                                                      (let ((_%$%hd280443280471%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e280442280467%_)))
                    (_%$%tl280444280474%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e280442280467%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl280444280474%_))
                    (let* ((_%$%g280495280503%_
                            (lambda (_%$%g280496280499%_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g280496280499%_))))
                           (_%$%g280494280625%_
                            (lambda (_%$%g280496280507%_)
                              (let* ((_%unchecked280523%_
                                      (|gxc[1]#signature->unchecked-signature|
                                       _%$%hd280443280471%_))
                                     (_%$%g280526280534%_
                                      (lambda (_%$%g280527280530%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280527280530%_))))
                                     (_%$%g280525280557%_
                                      (lambda (_%$%g280527280538%_)
                                        (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'begin))
                                              (cons _%$%g280496280507%_
                                                    (cons _%$%g280527280538%_
                                                          '()))))))
                                (_%$%g280525280557%_
                                 (if _%unchecked280523%_
                                     (let* ((_%$%g280561280576%_
                                             (lambda (_%$%g280562280572%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g280562280572%_))))
                                            (_%$%g280560280621%_
                                             (lambda (_%$%g280562280580%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g280562280580%_))
                                                   (let ((_%$%e280565280583%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%$%g280562280580%_))))
                                                     (let ((_%$%hd280566280587%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e280565280583%_)))
                                                           (_%$%tl280567280590%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e280565280583%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl280567280590%_))
                                                           (let ((_%$%e280568280593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%$%tl280567280590%_))))
                     (let ((_%$%hd280569280597%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e280568280593%_)))
                           (_%$%tl280570280600%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e280568280593%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl280570280600%_))
                           (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'declare-type))
                                 (cons _%$%hd280566280587%_
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'make-!primitive-lambda))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%$%hd280440280461%_ '()))
                 (cons '#f
                       (cons 'signature: (cons _%$%hd280569280597%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           (_%$%g280561280576%_ _%$%g280562280580%_))))
                   (_%$%g280561280576%_ _%$%g280562280580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g280561280576%_
                                                    _%$%g280562280580%_)))))
                                       (_%$%g280560280621%_
                                        _%unchecked280523%_))
                                     '(begin)))))))
                      (_%$%g280494280625%_
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'declare-type))
                             (cons _%$%hd280344280381%_
                                   (cons (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-lambda))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%$%hd280440280461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '#f
                                                           (cons 'signature:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%hd280443280471%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         '())))))
                    (_%$%g280435280450%_ _%$%g280436280454%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280435280450%_
                                                     _%$%g280436280454%_))))
                                            (_%$%g280435280450%_
                                             _%$%g280436280454%_)))))
                                (_%$%g280434280629%_
                                 (|gxc[1]#parse-signature|
                                  _%stx280333%_
                                  _%$%hd280344280381%_
                                  (let ((__tmp282695
                                         (lambda (_%$%g280632280635%_
                                                  _%$%g280633280638%_)
                                           (cons _%$%g280632280635%_
                                                 _%$%g280633280638%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp282695
                                     '()
                                     _%$%signature280354280412%_)))))
                              (_%$%g280336280360%_ _%$%g280337280364%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop280349280393%_
                                                   _%$%target280346280387%_
                                                   '()))
                                                (_%$%g280336280360%_
                                                 _%$%g280337280364%_)))))
                                      (_%$%g280336280360%_
                                       _%$%g280337280364%_))))
                              (_%$%g280336280360%_ _%$%g280337280364%_))))
                      (_%$%g280336280360%_ _%$%g280337280364%_)))))
          (_%$%g280335280641%_ _%stx280333%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx280646%_)
        (let* ((_%$%g280649280673%_
                (lambda (_%$%g280650280669%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g280650280669%_))))
               (_%$%g280648281548%_
                (lambda (_%$%g280650280677%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g280650280677%_))
                      (let ((_%$%e280653280680%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g280650280677%_))))
                        (let ((_%$%hd280654280684%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280653280680%_)))
                              (_%$%tl280655280687%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280653280680%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl280655280687%_))
                              (let ((_%$%e280656280690%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl280655280687%_))))
                                (let ((_%$%hd280657280694%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280656280690%_)))
                                      (_%$%tl280658280697%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280656280690%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl280658280697%_))
                                      (let ((_g282696_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%$%tl280658280697%_
                                                '0))))
                                        (begin
                                          (let ((_g282697_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g282696_)
                                                       (##values-length
                                                        _g282696_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g282697_ 2)))
                                                (error "Context expects 2 values"
                                                       _g282697_)))
                                          (let ((_%$%target280659280700%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g282696_ 0)))
                                                (_%$%tl280661280703%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref
                                                    _g282696_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl280661280703%_))
                                                (letrec ((_%$%loop280662280706%_
                                                          (lambda (_%$%hd280660280710%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%case-signature280666280713%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd280660280710%_))
                        (let ((_%$%e280663280715%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd280660280710%_))))
                          (let ((_%$%lp-hd280664280719%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280663280715%_)))
                                (_%$%lp-tl280665280722%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280663280715%_))))
                            (_%$%loop280662280706%_
                             _%$%lp-tl280665280722%_
                             (cons _%$%lp-hd280664280719%_
                                   _%$%case-signature280666280713%_))))
                        (let ((_%$%case-signature280667280725%_
                               (reverse _%$%case-signature280666280713%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd280657280694%_))
                              (let* ((_%signatures280761%_
                                      (map (lambda (_%$%g280747280749%_)
                                             (|gxc[1]#parse-signature|
                                              _%stx280646%_
                                              _%$%hd280657280694%_
                                              _%$%g280747280749%_))
                                           (let ((__tmp282698
                                                  (lambda (_%$%g280752280755%_
                                                           _%$%g280753280758%_)
                                                    (cons _%$%g280752280755%_
                                                          _%$%g280753280758%_))))
                                             (declare (not safe))
                                             (foldr__0
                                              __tmp282698
                                              '()
                                              _%$%case-signature280667280725%_))))
                                     (_%$%g280764280790%_
                                      (lambda (_%$%g280765280786%_)
                                        (let ()
                                          (declare (not safe))
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g280765280786%_))))
                                     (_%$%g280763281544%_
                                      (lambda (_%$%g280765280794%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _%$%g280765280794%_))
                                            (let ((_g282699_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _%$%g280765280794%_
                                                      '0))))
                                              (begin
                                                (let ((_g282700_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g282699_)
                                                             (##values-length
                                                              _g282699_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g282700_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g282700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target280768280797%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g282699_
                                                          0)))
                                                      (_%$%tl280770280800%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g282699_
                                                          1))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl280770280800%_))
                                                      (letrec ((_%$%loop280771280803%_
                                                                (lambda (_%$%hd280769280807%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%sig280775280810%_
                                 _%$%arity280776280811%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd280769280807%_))
                              (let ((_%$%e280772280813%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%hd280769280807%_))))
                                (let ((_%$%lp-hd280773280817%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e280772280813%_)))
                                      (_%$%lp-tl280774280820%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e280772280813%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%lp-hd280773280817%_))
                                      (let ((_%$%e280779280823%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%lp-hd280773280817%_))))
                                        (let ((_%$%hd280780280827%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280779280823%_)))
                                              (_%$%tl280781280830%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280779280823%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl280781280830%_))
                                              (let ((_%$%e280782280833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl280781280830%_))))
                                                (let ((_%$%hd280783280837%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e280782280833%_)))
                                                      (_%$%tl280784280840%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e280782280833%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl280784280840%_))
                                                      (_%$%loop280771280803%_
                                                       _%$%lp-tl280774280820%_
                                                       (cons _%$%hd280783280837%_
                                                             _%$%sig280775280810%_)
                                                       (cons _%$%hd280780280827%_
                                                             _%$%arity280776280811%_))
                                                      (_%$%g280764280790%_
                                                       _%$%g280765280794%_))))
                                              (_%$%g280764280790%_
                                               _%$%g280765280794%_))))
                                      (_%$%g280764280790%_
                                       _%$%g280765280794%_))))
                              (let ((_%$%sig280777280843%_
                                     (reverse _%$%sig280775280810%_))
                                    (_%$%arity280778280845%_
                                     (reverse _%$%arity280776280811%_)))
                                (let* ((_%$%g280866280874%_
                                        (lambda (_%$%g280867280870%_)
                                          (let ()
                                            (declare (not safe))
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g280867280870%_))))
                                       (_%$%g280865281529%_
                                        (lambda (_%$%g280867280878%_)
                                          (let* ((_%$%g280894280902%_
                                                  (lambda (_%$%g280895280898%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g280895280898%_))))
                                                 (_%$%g280893280924%_
                                                  (lambda (_%$%g280895280906%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%$%g280867280878%_
                                                                (cons _%$%g280895280906%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g280893280924%_
                                             (let ((_g282701_
                                                    (let _%loop280928%_ ((_%rest280931%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _%signatures280761%_)
                                 (_%unchecked-proc280933%_ '#f)
                                 (_%unchecked-clauses280934%_ '()))
              (let* ((_%$%rest280935280943%_ _%rest280931%_)
                     (_%$%else280937280955%_
                      (lambda ()
                        (values _%unchecked-proc280933%_
                                (reverse! _%unchecked-clauses280934%_))))
                     (_%$%K280939281396%_
                      (lambda (_%rest280959%_ _%hd280961%_)
                        (let* ((_%$%g280963281050%_
                                (lambda (_%$%g280964281046%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g280964281046%_))))
                               (_%$%g280962281392%_
                                (lambda (_%$%g280964281054%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%g280964281054%_))
                                      (let ((_%$%e280971281057%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%g280964281054%_))))
                                        (let ((_%$%hd280972281061%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e280971281057%_)))
                                              (_%$%tl280973281064%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e280971281057%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl280973281064%_))
                                              (let ((_%$%e280974281067%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl280973281064%_))))
                                                (let ((_%$%hd280975281071%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e280974281067%_)))
                                                      (_%$%tl280976281074%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e280974281067%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%hd280975281071%_))
                                                      (let ((_%$%e280977281077%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%hd280975281071%_))))
                (let ((_%$%hd280978281081%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e280977281077%_)))
                      (_%$%tl280979281084%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e280977281077%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl280979281084%_))
                      (let ((_%$%e280980281087%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl280979281084%_))))
                        (let ((_%$%hd280981281091%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e280980281087%_)))
                              (_%$%tl280982281094%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e280980281087%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-datum? _%$%hd280981281091%_))
                              (let ((_%$%e280983281097%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd280981281091%_))))
                                (if (equal? _%$%e280983281097%_ 'arguments:)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl280982281094%_))
                                        (let ((_%$%e280984281101%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl280982281094%_))))
                                          (let ((_%$%hd280985281105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e280984281101%_)))
                                                (_%$%tl280986281108%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e280984281101%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%hd280985281105%_))
                                                (let ((_%$%e280987281111%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%$%hd280985281105%_))))
                                                  (let ((_%$%hd280988281115%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e280987281111%_)))
                                                        (_%$%tl280989281118%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e280987281111%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#identifier?
                                                           _%$%hd280988281115%_))
                                                        (if (let ((__tmp282703
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gxc[1]#_g282704_|))
                      (declare (not safe))
                      (gx#free-identifier=? __tmp282703 _%$%hd280988281115%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl280989281118%_))
                        (let ((_%$%e280990281121%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl280989281118%_))))
                          (let ((_%$%hd280991281125%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e280990281121%_)))
                                (_%$%tl280992281128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e280990281121%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl280992281128%_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl280986281108%_))
                                    (let ((_%$%e280993281131%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%tl280986281108%_))))
                                      (let ((_%$%hd280994281135%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e280993281131%_)))
                                            (_%$%tl280995281138%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e280993281131%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-datum?
                                               _%$%hd280994281135%_))
                                            (let ((_%$%e280996281141%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%hd280994281135%_))))
                                              (if (equal? _%$%e280996281141%_
                                                          'return:)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl280995281138%_))
                                                      (let ((_%$%e280997281145%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl280995281138%_))))
                (let ((_%$%hd280998281149%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e280997281145%_)))
                      (_%$%tl280999281152%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e280997281145%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd280998281149%_))
                      (let ((_%$%e281000281155%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%hd280998281149%_))))
                        (let ((_%$%hd281001281159%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281000281155%_)))
                              (_%$%tl281002281162%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281000281155%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd281001281159%_))
                              (if (let ((__tmp282705 |gxc[1]#_g282706_|))
                                    (declare (not safe))
                                    (gx#free-identifier=?
                                     __tmp282705
                                     _%$%hd281001281159%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl281002281162%_))
                                      (let ((_%$%e281003281165%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl281002281162%_))))
                                        (let ((_%$%hd281004281169%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e281003281165%_)))
                                              (_%$%tl281005281172%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e281003281165%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl281005281172%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl280999281152%_))
                                                  (let ((_%$%e281006281175%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl280999281152%_))))
                                                    (let ((_%$%hd281007281179%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281006281175%_)))
                                                          (_%$%tl281008281182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281006281175%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-datum?
                                                             _%$%hd281007281179%_))
                                                          (let ((_%$%e281009281185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd281007281179%_))))
                    (if (equal? _%$%e281009281185%_ 'effect:)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl281008281182%_))
                            (let ((_%$%e281010281189%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%$%tl281008281182%_))))
                              (let ((_%$%hd281011281193%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e281010281189%_)))
                                    (_%$%tl281012281196%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e281010281189%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd281011281193%_))
                                    (let ((_%$%e281013281199%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%$%hd281011281193%_))))
                                      (let ((_%$%hd281014281203%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e281013281199%_)))
                                            (_%$%tl281015281206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e281013281199%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd281014281203%_))
                                            (if (let ((__tmp282707
                                                       |gxc[1]#_g282708_|))
                                                  (declare (not safe))
                                                  (gx#free-identifier=?
                                                   __tmp282707
                                                   _%$%hd281014281203%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl281015281206%_))
                                                    (let ((_%$%e281016281209%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _%$%tl281015281206%_))))
                                                      (let ((_%$%hd281017281213%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e281016281209%_)))
                    (_%$%tl281018281216%_
                     (let ()
                       (declare (not safe))
                       (##cdr _%$%e281016281209%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl281018281216%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl281012281196%_))
                        (let ((_%$%e281019281219%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl281012281196%_))))
                          (let ((_%$%hd281020281223%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281019281219%_)))
                                (_%$%tl281021281226%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281019281219%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd281020281223%_))
                                (let ((_%$%e281022281229%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd281020281223%_))))
                                  (if (equal? _%$%e281022281229%_ 'unchecked:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl281021281226%_))
                                          (let ((_%$%e281023281233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl281021281226%_))))
                                            (let ((_%$%hd281024281237%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e281023281233%_)))
                                                  (_%$%tl281025281240%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e281023281233%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd281024281237%_))
                                                  (let ((_%$%e281026281243%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%hd281024281237%_))))
                                                    (let ((_%$%hd281027281247%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281026281243%_)))
                                                          (_%$%tl281028281250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281026281243%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd281027281247%_))
                                                          (if (let ((__tmp282709
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             |gxc[1]#_g282710_|))
                        (declare (not safe))
                        (gx#free-identifier=?
                         __tmp282709
                         _%$%hd281027281247%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl281028281250%_))
                          (let ((_%$%e281029281253%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl281028281250%_))))
                            (let ((_%$%hd281030281257%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e281029281253%_)))
                                  (_%$%tl281031281260%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e281029281253%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl281031281260%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl281025281240%_))
                                      (let ((_%$%e281032281263%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl281025281240%_))))
                                        (let ((_%$%hd281033281267%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e281032281263%_)))
                                              (_%$%tl281034281270%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e281032281263%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%$%hd281033281267%_))
                                              (let ((_%$%e281035281273%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%hd281033281267%_))))
                                                (if (equal? _%$%e281035281273%_
                                                            'origin:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%tl281034281270%_))
                                                        (let ((_%$%e281036281277%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%tl281034281270%_))))
                  (let ((_%$%hd281037281281%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e281036281277%_)))
                        (_%$%tl281038281284%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e281036281277%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%hd281037281281%_))
                        (let ((_%$%e281039281287%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%hd281037281281%_))))
                          (let ((_%$%hd281040281291%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281039281287%_)))
                                (_%$%tl281041281294%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281039281287%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%$%hd281040281291%_))
                                (if (let ((__tmp282711 |gxc[1]#_g282712_|))
                                      (declare (not safe))
                                      (gx#free-identifier=?
                                       __tmp282711
                                       _%$%hd281040281291%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%tl281041281294%_))
                                        (let ((_%$%e281042281297%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%$%tl281041281294%_))))
                                          (let ((_%$%hd281043281301%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e281042281297%_)))
                                                (_%$%tl281044281304%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e281042281297%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl281044281304%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl281038281284%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl280976281074%_))
                                                        (let ((_%clause281384%_
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0
                                '#f
                                'make-!primitive-lambda))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%$%hd280972281061%_ '()))
                                   (cons '#f
                                         (cons 'signature:
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!signature))
                                                           (cons 'return:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%hd281004281169%_ '()))
                               (cons 'origin:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%$%hd281043281301%_
                                                       '()))
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                      (_%unchecked281386%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%$%hd281030281257%_))))
                  (_%loop280928%_
                   _%rest280959%_
                   (let ((_%$e281388%_ _%unchecked281386%_))
                     (if _%$e281388%_ _%$e281388%_ _%unchecked-proc280933%_))
                   (cons _%clause281384%_ _%unchecked-clauses280934%_)))
                (_%$%g280963281050%_ _%$%g280964281054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280963281050%_
                                                     _%$%g280964281054%_))
                                                (_%$%g280963281050%_
                                                 _%$%g280964281054%_))))
                                        (_%$%g280963281050%_
                                         _%$%g280964281054%_))
                                    (_%$%g280963281050%_ _%$%g280964281054%_))
                                (_%$%g280963281050%_ _%$%g280964281054%_))))
                        (_%$%g280963281050%_ _%$%g280964281054%_))))
                (_%$%g280963281050%_ _%$%g280964281054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280963281050%_
                                                     _%$%g280964281054%_)))
                                              (_%$%g280963281050%_
                                               _%$%g280964281054%_))))
                                      (_%$%g280963281050%_
                                       _%$%g280964281054%_))
                                  (_%$%g280963281050%_ _%$%g280964281054%_))))
                          (_%$%g280963281050%_ _%$%g280964281054%_))
                      (_%$%g280963281050%_ _%$%g280964281054%_))
                  (_%$%g280963281050%_ _%$%g280964281054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280963281050%_
                                                   _%$%g280964281054%_))))
                                          (_%$%g280963281050%_
                                           _%$%g280964281054%_))
                                      (_%$%g280963281050%_
                                       _%$%g280964281054%_)))
                                (_%$%g280963281050%_ _%$%g280964281054%_))))
                        (_%$%g280963281050%_ _%$%g280964281054%_))
                    (_%$%g280963281050%_ _%$%g280964281054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g280963281050%_
                                                     _%$%g280964281054%_))
                                                (_%$%g280963281050%_
                                                 _%$%g280964281054%_))
                                            (_%$%g280963281050%_
                                             _%$%g280964281054%_))))
                                    (_%$%g280963281050%_
                                     _%$%g280964281054%_))))
                            (_%$%g280963281050%_ _%$%g280964281054%_))
                        (_%$%g280963281050%_ _%$%g280964281054%_)))
                  (_%$%g280963281050%_ _%$%g280964281054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280963281050%_
                                                   _%$%g280964281054%_))
                                              (_%$%g280963281050%_
                                               _%$%g280964281054%_))))
                                      (_%$%g280963281050%_
                                       _%$%g280964281054%_))
                                  (_%$%g280963281050%_ _%$%g280964281054%_))
                              (_%$%g280963281050%_ _%$%g280964281054%_))))
                      (_%$%g280963281050%_ _%$%g280964281054%_))))
              (_%$%g280963281050%_ _%$%g280964281054%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g280963281050%_
                                                   _%$%g280964281054%_)))
                                            (_%$%g280963281050%_
                                             _%$%g280964281054%_))))
                                    (_%$%g280963281050%_ _%$%g280964281054%_))
                                (_%$%g280963281050%_ _%$%g280964281054%_))))
                        (_%$%g280963281050%_ _%$%g280964281054%_))
                    (_%$%g280963281050%_ _%$%g280964281054%_))
                (_%$%g280963281050%_ _%$%g280964281054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g280963281050%_
                                                 _%$%g280964281054%_))))
                                        (_%$%g280963281050%_
                                         _%$%g280964281054%_))
                                    (_%$%g280963281050%_ _%$%g280964281054%_)))
                              (_%$%g280963281050%_ _%$%g280964281054%_))))
                      (_%$%g280963281050%_ _%$%g280964281054%_))))
              (_%$%g280963281050%_ _%$%g280964281054%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g280963281050%_
                                               _%$%g280964281054%_))))
                                      (_%$%g280963281050%_
                                       _%$%g280964281054%_)))))
                          (_%$%g280962281392%_ _%hd280961%_)))))
                (if (pair? _%$%rest280935280943%_)
                    (let ((_%$%hd280940281400%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest280935280943%_)))
                          (_%$%tl280941281403%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest280935280943%_))))
                      (let* ((_%hd281406%_ _%$%hd280940281400%_)
                             (_%rest281409%_ _%$%tl280941281403%_))
                        (_%$%K280939281396%_ _%rest281409%_ _%hd281406%_)))
                    (_%$%else280937280955%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (begin
                                                 (let ((_g282702_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g282701_)
                                                              (##values-length
                                                               _g282701_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g282702_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g282702_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%unchecked-proc281412%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282701_
                                                           0)))
                                                       (_%unchecked-clauses281414%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282701_
                                                           1))))
                                                   (if _%unchecked-proc281412%_
                                                       (let* ((_%$%g281416281440%_
                                                               (lambda (_%$%g281417281436%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%$%g281417281436%_))))
                      (_%$%g281415281525%_
                       (lambda (_%$%g281417281444%_)
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%g281417281444%_))
                             (let ((_%$%e281420281447%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-e _%$%g281417281444%_))))
                               (let ((_%$%hd281421281451%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e281420281447%_)))
                                     (_%$%tl281422281454%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e281420281447%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%tl281422281454%_))
                                     (let ((_%$%e281423281457%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%$%tl281422281454%_))))
                                       (let ((_%$%hd281424281461%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e281423281457%_)))
                                             (_%$%tl281425281464%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e281423281457%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair/null?
                                                _%$%hd281424281461%_))
                                             (let ((_g282713_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-split-splice
                                                       _%$%hd281424281461%_
                                                       '0))))
                                               (begin
                                                 (let ((_g282714_
                                                        (let ()
                                                          (declare (not safe))
                                                          (if (##values?
                                                               _g282713_)
                                                              (##values-length
                                                               _g282713_)
                                                              1))))
                                                   (if (not (let ()
                                                              (declare
                                                                (not safe))
                                                              (##fx= _g282714_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2)))
               (error "Context expects 2 values" _g282714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((_%$%target281426281467%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282713_
                                                           0)))
                                                       (_%$%tl281428281470%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##values-ref
                                                           _g282713_
                                                           1))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl281428281470%_))
                                                       (letrec ((_%$%loop281429281473%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%$%hd281427281477%_
                                  _%$%clause281433281480%_)
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd281427281477%_))
                               (let ((_%$%e281430281482%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%$%hd281427281477%_))))
                                 (let ((_%$%lp-hd281431281486%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e281430281482%_)))
                                       (_%$%lp-tl281432281489%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e281430281482%_))))
                                   (_%$%loop281429281473%_
                                    _%$%lp-tl281432281489%_
                                    (cons _%$%lp-hd281431281486%_
                                          _%$%clause281433281480%_))))
                               (let ((_%$%clause281434281492%_
                                      (reverse _%$%clause281433281480%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl281425281464%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-type))
                                           (cons _%$%hd281421281451%_
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!primitive-case-lambda))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f '@list))
                                 (let ((__tmp282715
                                        (lambda (_%$%g281516281519%_
                                                 _%$%g281517281522%_)
                                          (cons _%$%g281516281519%_
                                                _%$%g281517281522%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp282715
                                    '()
                                    _%$%clause281434281492%_)))
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (_%$%g281416281440%_
                                      _%$%g281417281444%_)))))))
                 (_%$%loop281429281473%_ _%$%target281426281467%_ '()))
               (_%$%g281416281440%_ _%$%g281417281444%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g281416281440%_
                                              _%$%g281417281444%_))))
                                     (_%$%g281416281440%_
                                      _%$%g281417281444%_))))
                             (_%$%g281416281440%_ _%$%g281417281444%_)))))
                 (_%$%g281415281525%_
                  (list _%unchecked-proc281412%_ _%unchecked-clauses281414%_)))
               '(begin))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g280865281529%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'declare-type))
                                         (cons _%$%hd280657280694%_
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'make-!primitive-case-lambda))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f '@list))
                               (begin
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-check-splice-targets
                                    _%$%sig280777280843%_
                                    _%$%arity280778280845%_))
                                 (let ((__tmp282716
                                        (lambda (_%$%g281532281536%_
                                                 _%$%g281533281539%_
                                                 _%$%g281534281541%_)
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!primitive-lambda))
                                                      (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote))
                          (cons _%$%g281533281539%_ '()))
                    (cons '#f
                          (cons 'signature: (cons _%$%g281532281536%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%$%g281534281541%_))))
                                   (declare (not safe))
                                   (foldr__1
                                    __tmp282716
                                    '()
                                    _%$%sig280777280843%_
                                    _%$%arity280778280845%_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))))))
                (_%$%loop280771280803%_ _%$%target280768280797%_ '() '()))
              (_%$%g280764280790%_ _%$%g280765280794%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g280764280790%_
                                             _%$%g280765280794%_)))))
                                (_%$%g280763281544%_ _%signatures280761%_))
                              (_%$%g280649280673%_ _%$%g280650280677%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop280662280706%_
                                                   _%$%target280659280700%_
                                                   '()))
                                                (_%$%g280649280673%_
                                                 _%$%g280650280677%_)))))
                                      (_%$%g280649280673%_
                                       _%$%g280650280677%_))))
                              (_%$%g280649280673%_ _%$%g280650280677%_))))
                      (_%$%g280649280673%_ _%$%g280650280677%_)))))
          (_%$%g280648281548%_ _%stx280646%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx281556%_)
        (let* ((_%__stx282536282537%_ _%$stx281556%_)
               (_%$%g281562281622%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx282536282537%_)))))
          (let ((_%__kont282539282540%_
                 (lambda (_%$%g281564281844%_ _%$%g281565281846%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281565281846%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g281565281846%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281564281844%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont282541282542%_
                 (lambda (_%$%g281579281769%_
                          _%$%g281580281771%_
                          _%$%g281581281772%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281581281772%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g281581281772%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281580281771%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g281579281769%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont282543282544%_
                 (lambda (_%$%g281598281683%_
                          _%$%g281599281685%_
                          _%$%g281600281686%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%$%g281600281686%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%$%g281600281686%_
                                                             '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%$%g281599281685%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%$%g281598281683%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx282536282537%_))
                (let ((_%$%e281566281800%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx282536282537%_))))
                  (let ((_%$%tl281568281807%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e281566281800%_)))
                        (_%$%hd281567281804%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e281566281800%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl281568281807%_))
                        (let ((_%$%e281569281810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%$%tl281568281807%_))))
                          (let ((_%$%tl281571281817%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e281569281810%_)))
                                (_%$%hd281570281814%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e281569281810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%$%hd281570281814%_))
                                (let ((_%$%e281572281820%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd281570281814%_))))
                                  (if (equal? _%$%e281572281820%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl281571281817%_))
                                          (let ((_%$%e281573281824%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%$%tl281571281817%_))))
                                            (let ((_%$%tl281575281831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e281573281824%_)))
                                                  (_%$%hd281574281828%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e281573281824%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl281575281831%_))
                                                  (let ((_%$%e281576281834%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl281575281831%_))))
                                                    (let ((_%$%tl281578281841%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281576281834%_)))
                                                          (_%$%hd281577281838%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281576281834%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl281578281841%_))
                                                          (_%__kont282539282540%_
                                                           _%$%hd281577281838%_
                                                           _%$%hd281574281828%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%$%g281562281622%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g281562281622%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%$%g281562281622%_)))
                                      (if (equal? _%$%e281572281820%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl281571281817%_))
                                              (let ((_%$%e281589281739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl281571281817%_))))
                                                (let ((_%$%tl281591281746%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e281589281739%_)))
                                                      (_%$%hd281590281743%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e281589281739%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl281591281746%_))
                                                      (let ((_%$%e281592281749%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%$%tl281591281746%_))))
                (let ((_%$%tl281594281756%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e281592281749%_)))
                      (_%$%hd281593281753%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e281592281749%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%tl281594281756%_))
                      (let ((_%$%e281595281759%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%tl281594281756%_))))
                        (let ((_%$%tl281597281766%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281595281759%_)))
                              (_%$%hd281596281763%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281595281759%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%$%tl281597281766%_))
                              (_%__kont282541282542%_
                               _%$%hd281596281763%_
                               _%$%hd281593281753%_
                               _%$%hd281590281743%_)
                              (let ()
                                (declare (not safe))
                                (_%$%g281562281622%_)))))
                      (let () (declare (not safe)) (_%$%g281562281622%_)))))
              (let () (declare (not safe)) (_%$%g281562281622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g281562281622%_)))
                                          (if (equal? _%$%e281572281820%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl281571281817%_))
                                                  (let ((_%$%e281608281653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%$%tl281571281817%_))))
                                                    (let ((_%$%tl281610281660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e281608281653%_)))
                                                          (_%$%hd281609281657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e281608281653%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl281610281660%_))
                                                          (let ((_%$%e281611281663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%$%tl281610281660%_))))
                    (let ((_%$%tl281613281670%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e281611281663%_)))
                          (_%$%hd281612281667%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e281611281663%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl281613281670%_))
                          (let ((_%$%e281614281673%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%$%tl281613281670%_))))
                            (let ((_%$%tl281616281680%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e281614281673%_)))
                                  (_%$%hd281615281677%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e281614281673%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl281616281680%_))
                                  (_%__kont282543282544%_
                                   _%$%hd281615281677%_
                                   _%$%hd281612281667%_
                                   _%$%hd281609281657%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%$%g281562281622%_)))))
                          (let ()
                            (declare (not safe))
                            (_%$%g281562281622%_)))))
                  (let () (declare (not safe)) (_%$%g281562281622%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%$%g281562281622%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%$%g281562281622%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%$%g281562281622%_)))))
                        (let () (declare (not safe)) (_%$%g281562281622%_)))))
                (let () (declare (not safe)) (_%$%g281562281622%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx281868%_)
        (let* ((_%$%g281872281892%_
                (lambda (_%$%g281873281888%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g281873281888%_))))
               (_%$%g281871281961%_
                (lambda (_%$%g281873281896%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g281873281896%_))
                      (let ((_%$%e281875281899%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g281873281896%_))))
                        (let ((_%$%hd281876281903%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e281875281899%_)))
                              (_%$%tl281877281906%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e281875281899%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%$%tl281877281906%_))
                              (let ((_g282717_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%$%tl281877281906%_
                                        '0))))
                                (begin
                                  (let ((_g282718_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g282717_)
                                               (##values-length _g282717_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g282718_ 2)))
                                        (error "Context expects 2 values"
                                               _g282718_)))
                                  (let ((_%$%target281878281909%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282717_ 0)))
                                        (_%$%tl281880281912%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g282717_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl281880281912%_))
                                        (letrec ((_%$%loop281881281915%_
                                                  (lambda (_%$%hd281879281919%_
                                                           _%$%decl281885281922%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%$%hd281879281919%_))
                                                        (let ((_%$%e281882281924%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%$%hd281879281919%_))))
                  (let ((_%$%lp-hd281883281928%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e281882281924%_)))
                        (_%$%lp-tl281884281931%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e281882281924%_))))
                    (_%$%loop281881281915%_
                     _%$%lp-tl281884281931%_
                     (cons _%$%lp-hd281883281928%_ _%$%decl281885281922%_))))
                (let ((_%$%decl281886281934%_
                       (reverse _%$%decl281885281922%_)))
                  (cons (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'begin))
                        (let ((__tmp282719
                               (lambda (_%$%g281952281955%_
                                        _%$%g281953281958%_)
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-builtin-class))
                                             _%$%g281952281955%_)
                                       _%$%g281953281958%_))))
                          (declare (not safe))
                          (foldr__0
                           __tmp282719
                           '()
                           _%$%decl281886281934%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop281881281915%_
                                           _%$%target281878281909%_
                                           '()))
                                        (_%$%g281872281892%_
                                         _%$%g281873281896%_)))))
                              (_%$%g281872281892%_ _%$%g281873281896%_))))
                      (_%$%g281872281892%_ _%$%g281873281896%_)))))
          (_%$%g281871281961%_ _%$stx281868%_))))))
