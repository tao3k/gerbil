(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g199608_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199610_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199612_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199614_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199616_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199617_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199618_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199620_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199621_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199622_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199624_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199625_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199626_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199628_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199629_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199630_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj199485
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
           __obj199485
           'gx#syntax-pattern::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 'syntax-pattern '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '(id depth) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '(e id depth) '8 '#f '#f))
        (let ((__tmp199607 (cons |gx[1]#_g199608_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199607 '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '#f '13 '#f '#f))
        (let ((__tmp199609 |gx[1]#_g199610_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199609 '4 '#f '#f))
        (let ((__tmp199611 |gx[1]#_g199612_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199611 '14 '#f '#f))
        (let ((__tmp199613 |gx[1]#_g199614_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199613 '15 '#f '#f))
        (let ((__tmp199615
               (cons (cons 'id |gx[1]#_g199616_|)
                     (cons (cons 'depth |gx[1]#_g199617_|)
                           (cons (cons 'e |gx[1]#_g199618_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199615 '16 '#f '#f))
        (let ((__tmp199619
               (cons (cons 'id |gx[1]#_g199620_|)
                     (cons (cons 'depth |gx[1]#_g199621_|)
                           (cons (cons 'e |gx[1]#_g199622_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199619 '17 '#f '#f))
        (let ((__tmp199623
               (cons (cons 'id |gx[1]#_g199624_|)
                     (cons (cons 'depth |gx[1]#_g199625_|)
                           (cons (cons 'e |gx[1]#_g199626_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199623 '18 '#f '#f))
        (let ((__tmp199627
               (cons (cons 'id |gx[1]#_g199628_|)
                     (cons (cons 'depth |gx[1]#_g199629_|)
                           (cons (cons 'e |gx[1]#_g199630_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 __tmp199627 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199485 '() '21 '#f '#f))
        __obj199485))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx197940%_)
        (let* ((_%$%g197944197966%_
                (lambda (_%$%g197945197962%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g197945197962%_))))
               (_%$%g197943198036%_
                (lambda (_%$%g197945197970%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g197945197970%_))
                      (let ((_%$%e197949197973%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g197945197970%_))))
                        (let ((_%$%hd197950197977%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e197949197973%_)))
                              (_%$%tl197951197980%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e197949197973%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl197951197980%_))
                              (let ((_%$%e197952197983%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl197951197980%_))))
                                (let ((_%$%hd197953197987%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e197952197983%_)))
                                      (_%$%tl197954197990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e197952197983%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl197954197990%_))
                                      (let ((_%$%e197955197993%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl197954197990%_))))
                                        (let ((_%$%hd197956197997%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e197955197993%_)))
                                              (_%$%tl197957198000%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e197955197993%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl197957198000%_))
                                              (let ((_%$%e197958198003%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl197957198000%_))))
                                                (let ((_%$%hd197959198007%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e197958198003%_)))
                                                      (_%$%tl197960198010%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e197958198003%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl197960198010%_))
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'let))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'lp))
                          (cons (cons (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'rest))
                                            (cons _%$%hd197953197987%_ '()))
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'r))
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f '@list))
                      '())
                '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))
                                (cons (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'if))
                                            (cons (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           'stx-pair?))
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'rest))
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (cons (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'match))
                      (cons (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'syntax-e))
                                  (cons (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'rest))
                                        '()))
                            (cons (cons (cons (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 '@list))
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'hd))
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rest))))
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'lp))
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'rest))
                                                          (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'cons))
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'hd))
                                    (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'r))
                                          '())))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))
                                  '())))
                (cons (cons (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'let))
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'lp))
                                  (cons (cons (cons _%$%hd197956197997%_
                                                    (cons _%$%hd197956197997%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'l))
                                                          (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'r))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'r))
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'rest))
                              '()))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'cond))
                                                    (cons (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'null?))
                              (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'l))
                                    '()))
                        (cons (cons _%$%hd197959198007%_
                                    (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'l))
                                          (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0 '#f 'r))
                                                '())))
                              '()))
                  (cons (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'fxpositive?))
                                    (cons _%$%hd197956197997%_ '()))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'lp))
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'fx1-))
                                                      (cons _%$%hd197956197997%_
                                                            '()))
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'cdr))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'l))
                          '()))
              (cons (cons (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'cons))
                          (cons (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'car))
                                      (cons (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0 '#f 'l))
                                            '()))
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'r))
                                      '())))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))
                        (cons (cons (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'else))
                                    (cons (cons _%$%hd197959198007%_
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'reverse!))
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'l))
                          '()))
              (cons (let () (declare (not safe)) (gx#datum->syntax__0 '#f 'r))
                    '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          '()))
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                      '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))
              (_%$%g197944197966%_ _%$%g197945197970%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g197944197966%_
                                               _%$%g197945197970%_))))
                                      (_%$%g197944197966%_
                                       _%$%g197945197970%_))))
                              (_%$%g197944197966%_ _%$%g197945197970%_))))
                      (_%$%g197944197966%_ _%$%g197945197970%_)))))
          (_%$%g197943198036%_ _%$stx197940%_))))))
