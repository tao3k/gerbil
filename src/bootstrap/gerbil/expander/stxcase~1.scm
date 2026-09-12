(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g199812_|
    (##structure
     gx#syntax-quote::t
     'expander
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199814_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199816_|
    (##structure
     gx#syntax-quote::t
     'make-syntax-pattern
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199818_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199820_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199821_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199822_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199824_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199825_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199826_|
    (##structure
     gx#syntax-quote::t
     'syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199828_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199829_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199830_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199832_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-id-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199833_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-depth-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g199834_|
    (##structure
     gx#syntax-quote::t
     '&syntax-pattern-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#syntax-pattern|
      (let ((__obj199689
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
           __obj199689
           'gx#syntax-pattern::t
           '2
           '#f
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 'syntax-pattern '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '(id depth) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '(e id depth) '8 '#f '#f))
        (let ((__tmp199811 (cons |gx[1]#_g199812_| '())))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199811 '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '#f '13 '#f '#f))
        (let ((__tmp199813 |gx[1]#_g199814_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199813 '4 '#f '#f))
        (let ((__tmp199815 |gx[1]#_g199816_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199815 '14 '#f '#f))
        (let ((__tmp199817 |gx[1]#_g199818_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199817 '15 '#f '#f))
        (let ((__tmp199819
               (cons (cons 'id |gx[1]#_g199820_|)
                     (cons (cons 'depth |gx[1]#_g199821_|)
                           (cons (cons 'e |gx[1]#_g199822_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199819 '16 '#f '#f))
        (let ((__tmp199823
               (cons (cons 'id |gx[1]#_g199824_|)
                     (cons (cons 'depth |gx[1]#_g199825_|)
                           (cons (cons 'e |gx[1]#_g199826_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199823 '17 '#f '#f))
        (let ((__tmp199827
               (cons (cons 'id |gx[1]#_g199828_|)
                     (cons (cons 'depth |gx[1]#_g199829_|)
                           (cons (cons 'e |gx[1]#_g199830_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199827 '18 '#f '#f))
        (let ((__tmp199831
               (cons (cons 'id |gx[1]#_g199832_|)
                     (cons (cons 'depth |gx[1]#_g199833_|)
                           (cons (cons 'e |gx[1]#_g199834_|) '())))))
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 __tmp199831 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj199689 '() '21 '#f '#f))
        __obj199689))
    (define |gx[:0:]#syntax-split-splice*|
      (lambda (_%$stx198144%_)
        (let* ((_%$%g198148198170%_
                (lambda (_%$%g198149198166%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g198149198166%_))))
               (_%$%g198147198240%_
                (lambda (_%$%g198149198174%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g198149198174%_))
                      (let ((_%$%e198153198177%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%$%g198149198174%_))))
                        (let ((_%$%hd198154198181%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e198153198177%_)))
                              (_%$%tl198155198184%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e198153198177%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl198155198184%_))
                              (let ((_%$%e198156198187%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%$%tl198155198184%_))))
                                (let ((_%$%hd198157198191%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e198156198187%_)))
                                      (_%$%tl198158198194%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e198156198187%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl198158198194%_))
                                      (let ((_%$%e198159198197%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%$%tl198158198194%_))))
                                        (let ((_%$%hd198160198201%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e198159198197%_)))
                                              (_%$%tl198161198204%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e198159198197%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl198161198204%_))
                                              (let ((_%$%e198162198207%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%$%tl198161198204%_))))
                                                (let ((_%$%hd198163198211%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e198162198207%_)))
                                                      (_%$%tl198164198214%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e198162198207%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl198164198214%_))
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
                                            (cons _%$%hd198157198191%_ '()))
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
                                  (cons (cons (cons _%$%hd198160198201%_
                                                    (cons _%$%hd198160198201%_
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
                        (cons (cons _%$%hd198163198211%_
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
                                    (cons _%$%hd198160198201%_ '()))
                              (cons (cons (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'lp))
                                          (cons (cons (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'fx1-))
                                                      (cons _%$%hd198160198201%_
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
                                    (cons (cons _%$%hd198163198211%_
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
              (_%$%g198148198170%_ _%$%g198149198174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g198148198170%_
                                               _%$%g198149198174%_))))
                                      (_%$%g198148198170%_
                                       _%$%g198149198174%_))))
                              (_%$%g198148198170%_ _%$%g198149198174%_))))
                      (_%$%g198148198170%_ _%$%g198149198174%_)))))
          (_%$%g198147198240%_ _%$stx198144%_))))))
