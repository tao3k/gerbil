(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g181829_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181831_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181833_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181835_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181836_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181838_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181839_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181841_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181842_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181844_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181845_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g181847_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj181825
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
          (##unchecked-structure-set! __obj181825 'gerbil#AST::t '2 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 'syntax '3 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '(e source) '6 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '(e source) '8 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '() '5 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '#t '9 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '#f '10 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '#f '12 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '#f '13 '#f '#f))
        (let ((__tmp181828 |gx[1]#_g181829_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 __tmp181828 '4 '#f '#f))
        (let ((__tmp181830 |gx[1]#_g181831_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 __tmp181830 '14 '#f '#f))
        (let ((__tmp181832 |gx[1]#_g181833_|))
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 __tmp181832 '15 '#f '#f))
        (let ((__tmp181834
               (cons (cons 'e |gx[1]#_g181835_|)
                     (cons (cons 'source |gx[1]#_g181836_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 __tmp181834 '16 '#f '#f))
        (let ((__tmp181837
               (cons (cons 'e |gx[1]#_g181838_|)
                     (cons (cons 'source |gx[1]#_g181839_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 __tmp181837 '17 '#f '#f))
        (let ((__tmp181840
               (cons (cons 'e |gx[1]#_g181841_|)
                     (cons (cons 'source |gx[1]#_g181842_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 __tmp181840 '18 '#f '#f))
        (let ((__tmp181843
               (cons (cons 'e |gx[1]#_g181844_|)
                     (cons (cons 'source |gx[1]#_g181845_|) '()))))
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 __tmp181843 '19 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '() '20 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '() '22 '#f '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set! __obj181825 '() '21 '#f '#f))
        __obj181825))
    (define |gx[:0:]#check-procedure|
      (lambda (_%$stx180422%_)
        (let* ((_%$%g180426180440%_
                (lambda (_%$%g180427180436%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g180427180436%_)))
               (_%$%g180425180482%_
                (lambda (_%$%g180427180444%_)
                  (if (gx#stx-pair? _%$%g180427180444%_)
                      (let ((_%$%e180429180447%_
                             (gx#syntax-e _%$%g180427180444%_)))
                        (let ((_%$%hd180430180451%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e180429180447%_)))
                              (_%$%tl180431180454%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e180429180447%_))))
                          (if (gx#stx-pair? _%$%tl180431180454%_)
                              (let ((_%$%e180432180457%_
                                     (gx#syntax-e _%$%tl180431180454%_)))
                                (let ((_%$%hd180433180461%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e180432180457%_)))
                                      (_%$%tl180434180464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e180432180457%_))))
                                  (if (gx#stx-null? _%$%tl180434180464%_)
                                      (cons (gx#datum->syntax '#f 'unless)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         'procedure?)
                                                        (cons _%$%hd180433180461%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'error)
                                                              (cons '"expected procedure"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%$%hd180433180461%_ '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%g180426180440%_
                                       _%$%g180427180444%_))))
                              (_%$%g180426180440%_ _%$%g180427180444%_))))
                      (_%$%g180426180440%_ _%$%g180427180444%_)))))
          (_%$%g180425180482%_ _%$stx180422%_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_%stx180486%_)
        (letrec ((_%generate180489%_
                  (lambda (_%tgt180638%_ _%kws180640%_ _%clauses180641%_)
                    (letrec ((_%generate-clause180643%_
                              (lambda (_%hd181576%_ _%E181578%_)
                                (let* ((_%__stx181728181729%_ _%hd181576%_)
                                       (_%$%g181582181609%_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%__stx181728181729%_))))
                                  (let ((_%__kont181731181732%_
                                         (lambda (_%$%g181584181705%_
                                                  _%$%g181585181707%_)
                                           (_%generate1180645%_
                                            _%hd181576%_
                                            _%$%g181585181707%_
                                            '#t
                                            _%$%g181584181705%_
                                            _%E181578%_)))
                                        (_%__kont181733181734%_
                                         (lambda (_%$%g181592181657%_
                                                  _%$%g181593181659%_
                                                  _%$%g181594181660%_)
                                           (_%generate1180645%_
                                            _%hd181576%_
                                            _%$%g181594181660%_
                                            _%$%g181593181659%_
                                            _%$%g181592181657%_
                                            _%E181578%_)))
                                        (_%__kont181735181736%_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _%stx180486%_
                                            _%hd181576%_))))
                                    (if (gx#stx-pair? _%__stx181728181729%_)
                                        (let ((_%$%e181586181685%_
                                               (gx#syntax-e
                                                _%__stx181728181729%_)))
                                          (let ((_%$%tl181588181692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e181586181685%_)))
                                                (_%$%hd181587181689%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e181586181685%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl181588181692%_)
                                                (let ((_%$%e181589181695%_
                                                       (gx#syntax-e
                                                        _%$%tl181588181692%_)))
                                                  (let ((_%$%tl181591181702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e181589181695%_)))
                                                        (_%$%hd181590181699%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e181589181695%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl181591181702%_)
                                                        (_%__kont181731181732%_
                                                         _%$%hd181590181699%_
                                                         _%$%hd181587181689%_)
                                                        (if (gx#stx-pair?
                                                             _%$%tl181591181702%_)
                                                            (let ((_%$%e181601181647%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%tl181591181702%_)))
                      (let ((_%$%tl181603181654%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e181601181647%_)))
                            (_%$%hd181602181651%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e181601181647%_))))
                        (if (gx#stx-null? _%$%tl181603181654%_)
                            (_%__kont181733181734%_
                             _%$%hd181602181651%_
                             _%$%hd181590181699%_
                             _%$%hd181587181689%_)
                            (_%__kont181735181736%_))))
                    (_%__kont181735181736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont181735181736%_))))
                                        (_%__kont181735181736%_))))))
                             (_%generate1180645%_
                              (lambda (_%where181029%_
                                       _%hd181031%_
                                       _%fender181032%_
                                       _%body181033%_
                                       _%E181034%_)
                                (letrec ((_%recur181036%_
                                          (lambda (_%hd181039%_
                                                   _%tgt181041%_
                                                   _%K181042%_)
                                            (let* ((_%__stx181774181775%_
                                                    _%hd181039%_)
                                                   (_%$%g181045181057%_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%__stx181774181775%_))))
                                              (let ((_%__kont181777181778%_
                                                     (lambda (_%$%g181047181366%_
                                                              _%$%g181048181368%_)
                                                       (let* ((_%$%g181379181387%_
                                                               (lambda (_%$%g181380181383%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g181380181383%_)))
                      (_%$%g181378181568%_
                       (lambda (_%$%g181380181391%_)
                         (let* ((_%$%g181406181414%_
                                 (lambda (_%$%g181407181410%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g181407181410%_)))
                                (_%$%g181405181564%_
                                 (lambda (_%$%g181407181418%_)
                                   (let* ((_%$%g181434181442%_
                                           (lambda (_%$%g181435181438%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g181435181438%_)))
                                          (_%$%g181433181560%_
                                           (lambda (_%$%g181435181446%_)
                                             (let* ((_%$%g181462181470%_
                                                     (lambda (_%$%g181463181466%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g181463181466%_)))
                                                    (_%$%g181461181556%_
                                                     (lambda (_%$%g181463181474%_)
                                                       (let* ((_%$%g181490181498%_
                                                               (lambda (_%$%g181491181494%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g181491181494%_)))
                      (_%$%g181489181552%_
                       (lambda (_%$%g181491181502%_)
                         (let* ((_%$%g181518181526%_
                                 (lambda (_%$%g181519181522%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g181519181522%_)))
                                (_%$%g181517181548%_
                                 (lambda (_%$%g181519181530%_)
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'stx-pair?)
                                                     (cons _%$%g181380181391%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'let)
                                                           (cons (cons (cons _%$%g181407181418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons (cons (gx#datum->syntax
                                                  '#f
                                                  'syntax-e)
                                                 (cons _%$%g181380181391%_
                                                       '()))
                                           '()))
                               '())
                         (cons (cons (gx#datum->syntax '#f 'let)
                                     (cons (cons (cons _%$%g181435181446%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##car)
                           (cons _%$%g181407181418%_ '()))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g181463181474%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '##cdr)
                                 (cons _%$%g181407181418%_ '()))
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g181491181502%_ '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g181519181530%_
                                                           '())))))))
                           (_%$%g181517181548%_ _%E181034%_)))))
                 (_%$%g181489181552%_
                  (_%recur181036%_
                   _%$%g181048181368%_
                   _%$%g181435181446%_
                   (_%recur181036%_
                    _%$%g181047181366%_
                    _%$%g181463181474%_
                    _%K181042%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g181461181556%_
                                                (gx#genident 'tl))))))
                                     (_%$%g181433181560%_
                                      (gx#genident 'hd))))))
                           (_%$%g181405181564%_ (gx#genident 'e))))))
                 (_%$%g181378181568%_ _%tgt181041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181779181780%_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _%hd181039%_)
                                                           (if (gx#underscore?
                                                                _%hd181039%_)
                                                               _%K181042%_
                                                               (if (let ((__tmp181846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_%$%g181071181073%_)
                                    (gx#bound-identifier=?
                                     _%$%g181071181073%_
                                     _%hd181039%_))))
                             (declare (not safe))
                             (__find __tmp181846 _%kws180640%_))
                           (let* ((_%$%g181079181094%_
                                   (lambda (_%$%g181080181090%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g181080181090%_)))
                                  (_%$%g181078181147%_
                                   (lambda (_%$%g181080181098%_)
                                     (if (gx#stx-pair? _%$%g181080181098%_)
                                         (let ((_%$%e181083181101%_
                                                (gx#syntax-e
                                                 _%$%g181080181098%_)))
                                           (let ((_%$%hd181084181105%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e181083181101%_)))
                                                 (_%$%tl181085181108%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e181083181101%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl181085181108%_)
                                                 (let ((_%$%e181086181111%_
                                                        (gx#syntax-e
                                                         _%$%tl181085181108%_)))
                                                   (let ((_%$%hd181087181115%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e181086181111%_)))
                                                         (_%$%tl181088181118%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e181086181111%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl181088181118%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'if)
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'and)
                                   (cons (cons (gx#datum->syntax
                                                '#f
                                                'identifier?)
                                               (cons _%$%hd181084181105%_ '()))
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'core-identifier=?)
                                                     (cons _%$%hd181084181105%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons _%$%hd181087181115%_ '()))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons _%K181042%_ (cons _%E181034%_ '()))))
                 (_%$%g181079181094%_ _%$%g181080181098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g181079181094%_
                                                  _%$%g181080181098%_))))
                                         (_%$%g181079181094%_
                                          _%$%g181080181098%_)))))
                             (_%$%g181078181147%_
                              (list _%tgt181041%_ _%hd181039%_)))
                           (let* ((_%$%g181153181168%_
                                   (lambda (_%$%g181154181164%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g181154181164%_)))
                                  (_%$%g181152181213%_
                                   (lambda (_%$%g181154181172%_)
                                     (if (gx#stx-pair? _%$%g181154181172%_)
                                         (let ((_%$%e181157181175%_
                                                (gx#syntax-e
                                                 _%$%g181154181172%_)))
                                           (let ((_%$%hd181158181179%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e181157181175%_)))
                                                 (_%$%tl181159181182%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e181157181175%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl181159181182%_)
                                                 (let ((_%$%e181160181185%_
                                                        (gx#syntax-e
                                                         _%$%tl181159181182%_)))
                                                   (let ((_%$%hd181161181189%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e181160181185%_)))
                                                         (_%$%tl181162181192%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e181160181185%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl181162181192%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons _%$%hd181161181189%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%hd181158181179%_ '()))
                                   '())
                             (cons _%K181042%_ '())))
                 (_%$%g181153181168%_ _%$%g181154181172%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g181153181168%_
                                                  _%$%g181154181172%_))))
                                         (_%$%g181153181168%_
                                          _%$%g181154181172%_)))))
                             (_%$%g181152181213%_
                              (list _%tgt181041%_ _%hd181039%_)))))
                   (if (gx#stx-null? _%hd181039%_)
                       (let* ((_%$%g181219181227%_
                               (lambda (_%$%g181220181223%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%$%g181220181223%_)))
                              (_%$%g181218181246%_
                               (lambda (_%$%g181220181231%_)
                                 (cons (gx#datum->syntax '#f 'if)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-null?)
                                                   (cons _%$%g181220181231%_
                                                         '()))
                                             (cons _%K181042%_
                                                   (cons _%E181034%_ '())))))))
                         (_%$%g181218181246%_ _%tgt181041%_))
                       (if (gx#stx-datum? _%hd181039%_)
                           (let* ((_%$%g181252181271%_
                                   (lambda (_%$%g181253181267%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g181253181267%_)))
                                  (_%$%g181251181330%_
                                   (lambda (_%$%g181253181275%_)
                                     (if (gx#stx-pair? _%$%g181253181275%_)
                                         (let ((_%$%e181257181278%_
                                                (gx#syntax-e
                                                 _%$%g181253181275%_)))
                                           (let ((_%$%hd181258181282%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e181257181278%_)))
                                                 (_%$%tl181259181285%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e181257181278%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl181259181285%_)
                                                 (let ((_%$%e181260181288%_
                                                        (gx#syntax-e
                                                         _%$%tl181259181285%_)))
                                                   (let ((_%$%hd181261181292%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e181260181288%_)))
                                                         (_%$%tl181262181295%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e181260181288%_))))
                                                     (if (gx#stx-pair?
                                                          _%$%tl181262181295%_)
                                                         (let ((_%$%e181263181298%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl181262181295%_)))
                   (let ((_%$%hd181264181302%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e181263181298%_)))
                         (_%$%tl181265181305%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e181263181298%_))))
                     (if (gx#stx-null? _%$%tl181265181305%_)
                         (cons (gx#datum->syntax '#f 'if)
                               (cons (cons _%$%hd181264181302%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-e)
                                                       (cons _%$%hd181258181282%_
                                                             '()))
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd181261181292%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (cons _%K181042%_
                                           (cons _%E181034%_ '()))))
                         (_%$%g181252181271%_ _%$%g181253181275%_))))
                 (_%$%g181252181271%_ _%$%g181253181275%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g181252181271%_
                                                  _%$%g181253181275%_))))
                                         (_%$%g181252181271%_
                                          _%$%g181253181275%_)))))
                             (_%$%g181251181330%_
                              (list _%tgt181041%_
                                    _%hd181039%_
                                    (let ((_%e181334%_
                                           (gx#stx-e _%hd181039%_)))
                                      (if (or (keyword? _%e181334%_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _%e181334%_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (number? _%e181334%_)
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _%stx180486%_
                            _%where181029%_
                            _%hd181039%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     _%__stx181774181775%_)
                                                    (let ((_%$%e181049181356%_
                                                           (gx#syntax-e
                                                            _%__stx181774181775%_)))
                                                      (let ((_%$%tl181051181363%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e181049181356%_)))
                    (_%$%hd181050181360%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e181049181356%_))))
                (_%__kont181777181778%_
                 _%$%tl181051181363%_
                 _%$%hd181050181360%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont181779181780%_)))))))
                                  (_%recur181036%_
                                   _%hd181031%_
                                   _%tgt180638%_
                                   (cons (gx#datum->syntax '#f 'if)
                                         (cons _%fender181032%_
                                               (cons _%body181033%_
                                                     (cons _%E181034%_
                                                           '()))))))))
                             (_%generate-clauses180646%_
                              (lambda (_%clauses180767%_)
                                (let _%lp180770%_ ((_%rest180773%_
                                                    _%clauses180767%_)
                                                   (_%E180775%_
                                                    (gx#genident 'E))
                                                   (_%r180776%_ '()))
                                  (let* ((_%__stx181810181811%_ _%rest180773%_)
                                         (_%$%g180779180791%_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%__stx181810181811%_))))
                                    (let ((_%__kont181813181814%_
                                           (lambda (_%$%g180781180856%_
                                                    _%$%g180782180858%_)
                                             (let* ((_%__stx181790181791%_
                                                     _%$%g180782180858%_)
                                                    (_%$%g180870180881%_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%__stx181790181791%_))))
                                               (let ((_%__kont181793181794%_
                                                      (lambda (_%$%g180872181010%_)
                                                        (if (gx#stx-null?
                                                             _%$%g180781180856%_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g180872181010%_)
                             (not (gx#stx-null? _%$%g180872181010%_)))
                        (cons (cons _%E180775%_
                                    (cons (gx#stx-wrap-source
                                           (cons (gx#datum->syntax '#f 'lambda)
                                                 (cons '()
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin)
                           _%$%g180872181010%_)
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (gx#stx-source _%$%g180782180858%_))
                                          '()))
                              _%r180776%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _%stx180486%_
                         _%$%g180782180858%_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _%stx180486%_
                     _%$%g180782180858%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181795181796%_
                                                      (lambda ()
                                                        (let* ((_%$%g180892180900%_
                                                                (lambda (_%$%g180893180896%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g180893180896%_)))
                       (_%$%g180891180989%_
                        (lambda (_%$%g180893180904%_)
                          (let* ((_%$%g180923180931%_
                                  (lambda (_%$%g180924180927%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g180924180927%_)))
                                 (_%$%g180922180985%_
                                  (lambda (_%$%g180924180935%_)
                                    (let* ((_%$%g180951180959%_
                                            (lambda (_%$%g180952180955%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g180952180955%_)))
                                           (_%$%g180950180981%_
                                            (lambda (_%$%g180952180963%_)
                                              (_%lp180770%_
                                               _%$%g180781180856%_
                                               _%$%g180893180904%_
                                               (cons (cons _%E180775%_
                                                           (cons _%$%g180952180963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r180776%_)))))
                                      (_%$%g180950180981%_
                                       (gx#stx-wrap-source
                                        (cons (gx#datum->syntax '#f 'lambda)
                                              (cons '()
                                                    (cons _%$%g180924180935%_
                                                          '())))
                                        (gx#stx-source
                                         _%$%g180782180858%_)))))))
                            (_%$%g180922180985%_
                             (_%generate-clause180643%_
                              _%$%g180782180858%_
                              (cons _%$%g180893180904%_ '())))))))
                  (_%$%g180891180989%_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      _%__stx181790181791%_)
                                                     (let ((_%$%e180873181000%_
                                                            (gx#syntax-e
                                                             _%__stx181790181791%_)))
                                                       (let ((_%$%tl180875181007%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e180873181000%_)))
                     (_%$%hd180874181004%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e180873181000%_))))
                 (if (gx#identifier? _%$%hd180874181004%_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g181847_|
                          _%$%hd180874181004%_)
                         (_%__kont181793181794%_ _%$%tl180875181007%_)
                         (_%__kont181795181796%_))
                     (_%__kont181795181796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont181795181796%_))))))
                                          (_%__kont181815181816%_
                                           (lambda ()
                                             (let* ((_%$%g180802180810%_
                                                     (lambda (_%$%g180803180806%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g180803180806%_)))
                                                    (_%$%g180801180835%_
                                                     (lambda (_%$%g180803180814%_)
                                                       (cons (cons _%E180775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (gx#stx-wrap-source
                                  (cons (gx#datum->syntax '#f 'lambda)
                                        (cons '()
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'raise-syntax-error)
                                                          (cons '#f
                                                                (cons '"Bad syntax; invalid syntax-case clause"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$%g180803180814%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  (gx#stx-source _%stx180486%_))
                                 '()))
                     _%r180776%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g180801180835%_
                                                _%tgt180638%_)))))
                                      (if (gx#stx-pair? _%__stx181810181811%_)
                                          (let ((_%$%e180783180846%_
                                                 (gx#syntax-e
                                                  _%__stx181810181811%_)))
                                            (let ((_%$%tl180785180853%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e180783180846%_)))
                                                  (_%$%hd180784180850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e180783180846%_))))
                                              (_%__kont181813181814%_
                                               _%$%tl180785180853%_
                                               _%$%hd180784180850%_)))
                                          (_%__kont181815181816%_))))))))
                      (let* ((_%bind180648%_
                              (_%generate-clauses180646%_ _%clauses180641%_))
                             (_%$%g180651180668%_
                              (lambda (_%$%g180652180664%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g180652180664%_)))
                             (_%$%g180650180763%_
                              (lambda (_%$%g180652180672%_)
                                (if (gx#stx-pair/null? _%$%g180652180672%_)
                                    (let ((_g181848_
                                           (gx#syntax-split-splice
                                            _%$%g180652180672%_
                                            '0)))
                                      (begin
                                        (let ((_g181849_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g181848_)
                                                     (##values-length
                                                      _g181848_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g181849_ 2)))
                                              (error "Context expects 2 values"
                                                     _g181849_)))
                                        (let ((_%$%target180654180675%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181848_ 0)))
                                              (_%$%tl180656180678%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g181848_ 1))))
                                          (if (gx#stx-null?
                                               _%$%tl180656180678%_)
                                              (letrec ((_%$%loop180657180681%_
                                                        (lambda (_%$%hd180655180685%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%bind-try180661180688%_)
                  (if (gx#stx-pair? _%$%hd180655180685%_)
                      (let ((_%$%e180658180690%_
                             (gx#syntax-e _%$%hd180655180685%_)))
                        (let ((_%$%lp-hd180659180694%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e180658180690%_)))
                              (_%$%lp-tl180660180697%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e180658180690%_))))
                          (_%$%loop180657180681%_
                           _%$%lp-tl180660180697%_
                           (cons _%$%lp-hd180659180694%_
                                 _%$%bind-try180661180688%_))))
                      (let* ((_%$%bind-try180662180700%_
                              (reverse _%$%bind-try180661180688%_))
                             (_%$%g180721180729%_
                              (lambda (_%$%g180722180725%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g180722180725%_)))
                             (_%$%g180720180759%_
                              (lambda (_%$%g180722180733%_)
                                (cons (gx#datum->syntax '#f 'let*)
                                      (cons (let ((__tmp181850
                                                   (lambda (_%$%g180750180753%_
                                                            _%$%g180751180756%_)
                                                     (cons _%$%g180750180753%_
                                                           _%$%g180751180756%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp181850
                                               '()
                                               _%$%bind-try180662180700%_))
                                            (cons (cons _%$%g180722180733%_
                                                        '())
                                                  '()))))))
                        (_%$%g180720180759%_ (car (last _%bind180648%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop180657180681%_
                                                 _%$%target180654180675%_
                                                 '()))
                                              (_%$%g180651180668%_
                                               _%$%g180652180672%_)))))
                                    (_%$%g180651180668%_
                                     _%$%g180652180672%_)))))
                        (_%$%g180650180763%_ _%bind180648%_))))))
          (let* ((_%$%g180492180511%_
                  (lambda (_%$%g180493180507%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g180493180507%_)))
                 (_%$%g180491180634%_
                  (lambda (_%$%g180493180515%_)
                    (if (gx#stx-pair? _%$%g180493180515%_)
                        (let ((_%$%e180497180518%_
                               (gx#syntax-e _%$%g180493180515%_)))
                          (let ((_%$%hd180498180522%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e180497180518%_)))
                                (_%$%tl180499180525%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e180497180518%_))))
                            (if (gx#stx-pair? _%$%tl180499180525%_)
                                (let ((_%$%e180500180528%_
                                       (gx#syntax-e _%$%tl180499180525%_)))
                                  (let ((_%$%hd180501180532%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e180500180528%_)))
                                        (_%$%tl180502180535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e180500180528%_))))
                                    (if (gx#stx-pair? _%$%tl180502180535%_)
                                        (let ((_%$%e180503180538%_
                                               (gx#syntax-e
                                                _%$%tl180502180535%_)))
                                          (let ((_%$%hd180504180542%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e180503180538%_)))
                                                (_%$%tl180505180545%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e180503180538%_))))
                                            (if (and (gx#identifier-list?
                                                      _%$%hd180504180542%_)
                                                     (gx#stx-list?
                                                      _%$%tl180505180545%_))
                                                (let* ((_%$%g180569180577%_
                                                        (lambda (_%$%g180570180573%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g180570180573%_)))
                                                       (_%$%g180568180630%_
                                                        (lambda (_%$%g180570180581%_)
                                                          (let* ((_%$%g180596180604%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%g180597180600%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g180597180600%_)))
                         (_%$%g180595180626%_
                          (lambda (_%$%g180597180608%_)
                            (cons (gx#datum->syntax '#f 'let)
                                  (cons (cons (cons _%$%g180570180581%_
                                                    (cons _%$%hd180501180532%_
                                                          '()))
                                              '())
                                        (cons _%$%g180597180608%_ '()))))))
                    (_%$%g180595180626%_
                     (_%generate180489%_
                      _%$%g180570180581%_
                      (gx#syntax->list _%$%hd180504180542%_)
                      _%$%tl180505180545%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g180568180630%_
                                                   (gx#genident 'e)))
                                                (_%$%g180492180511%_
                                                 _%$%g180493180515%_))))
                                        (_%$%g180492180511%_
                                         _%$%g180493180515%_))))
                                (_%$%g180492180511%_ _%$%g180493180515%_))))
                        (_%$%g180492180511%_ _%$%g180493180515%_)))))
            (_%$%g180491180634%_ _%stx180486%_)))))))
