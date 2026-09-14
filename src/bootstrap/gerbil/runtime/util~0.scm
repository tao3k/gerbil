(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1789371518)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args119837%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args119837%_))
          (newline))))
    (define display*
      (lambda _%args119834%_
        (let () (declare (not safe)) (##for-each display _%args119834%_))))
    (define __file-newer?
      (lambda (_%file1119625%_ _%file2119626%_)
        (let* ((_%file1119629%_ _%file1119625%_)
               (_%file2119637%_ _%file2119626%_))
          (letrec ((_%__modification-time119781%_
                    (lambda (_%file119822%_)
                      (let* ((_%file119825%_ _%file119822%_)
                             (__tmp122717
                              (let ((__tmp122718
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file119825%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp122718))))
                        (declare (not safe))
                        (##time->seconds __tmp122717))))
                   (_%modification-time119782%_
                    (lambda (_%file119810%_)
                      (let ((_%file119813%_ _%file119810%_))
                        (_%__modification-time119781%_ _%file119813%_)))))
            (let ((__tmp122720
                   (let* ((_%file119784%_ _%file1119629%_)
                          (_%file119788%_ _%file119784%_))
                     (_%__modification-time119781%_ _%file119788%_)))
                  (__tmp122719
                   (let* ((_%file119797%_ _%file2119637%_)
                          (_%file119801%_ _%file119797%_))
                     (_%__modification-time119781%_ _%file119801%_))))
              (declare (not safe))
              (##fl> __tmp122720 __tmp122719))))))
    (define file-newer?
      (lambda (_%file1119600%_ _%file2119601%_)
        (if (string? _%file1119600%_)
            (let ((_%file1119605%_ _%file1119600%_))
              (if (string? _%file2119601%_)
                  (let ((_%file2119615%_ _%file2119601%_))
                    (__file-newer? _%file1119605%_ _%file2119615%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2119601%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1119600%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir119310%_ _%perms119311%_)
        (let* ((_%dir119314%_ _%dir119310%_) (_%perms119322%_ _%perms119311%_))
          (letrec ((_%__create1119466%_
                    (lambda (_%path119575%_)
                      (let ((_%path119578%_ _%path119575%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path119578%_))
                            (if (eq? (file-type _%path119578%_) 'directory)
                                '#!void
                                (begin
                                  (raise-contract-violation-error
                                   '"Path component is not a directory"
                                   'value:
                                   _%path119578%_)
                                  '#!void))
                            (if _%perms119322%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path119578%_
                                             (cons 'permissions:
                                                   (cons _%perms119322%_
                                                         '())))))
                                (create-directory _%path119578%_))))))
                   (_%create1119467%_
                    (lambda (_%path119563%_)
                      (let ((_%path119566%_ _%path119563%_))
                        (_%__create1119466%_ _%path119566%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir119314%_))
                '#!void
                (let _%lp119469%_ ((_%start119471%_ '0))
                  (let ((_%$e119528%_
                         (let* ((_%str119473%_ _%dir119314%_)
                                (_%criterion119476%_ '#\/)
                                (_%start119479%_ _%start119471%_)
                                (_%end119482%_ '#f)
                                (_%str119487%_ _%str119473%_))
                           (if (nonnegative-fixnum? _%start119479%_)
                               (let ((_%start119502%_ _%start119479%_))
                                 (if (let ((_%$e119514%_ '#t))
                                       (and _%$e119514%_ _%$e119514%_))
                                     (let ((_%end119518%_ _%end119482%_))
                                       (__string-index__%
                                        _%str119487%_
                                        _%criterion119476%_
                                        _%start119502%_
                                        _%end119518%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/util
                                        'contract:
                                        '(? (or not fixnum?))
                                        'value:
                                        _%end119482%_)
                                       '#!void)))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start119479%_)
                                 '#!void)))))
                    (if _%$e119528%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e119528%_ '0))
                              (let* ((_%path119533%_
                                      (substring
                                       _%dir119314%_
                                       '0
                                       _%$e119528%_))
                                     (_%path119537%_ _%path119533%_))
                                (_%__create1119466%_ _%path119537%_))
                              '#!void)
                          (_%lp119469%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e119528%_ '1))))
                        (let* ((_%path119549%_ _%dir119314%_)
                               (_%path119553%_ _%path119549%_))
                          (_%__create1119466%_ _%path119553%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir119593%_)
        (let ((_%perms119595%_ '493))
          (__create-directory*__% _%dir119593%_ _%perms119595%_))))
    (define __create-directory*
      (lambda _g122721_
        (let ((_g122722_ (let () (declare (not safe)) (##length _g122721_))))
          (cond ((let () (declare (not safe)) (##fx= _g122722_ 1))
                 (apply __create-directory*__0 _g122721_))
                ((let () (declare (not safe)) (##fx= _g122722_ 2))
                 (apply __create-directory*__% _g122721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g122721_))))))
    (define create-directory*__%
      (lambda (_%dir119274%_ _%perms119275%_)
        (if (string? _%dir119274%_)
            (let ((_%dir119279%_ _%dir119274%_))
              (if (fixnum? _%perms119275%_)
                  (let ((_%perms119289%_ _%perms119275%_))
                    (__create-directory*__% _%dir119279%_ _%perms119289%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms119275%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir119274%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir119302%_)
        (let ((_%perms119304%_ '493))
          (create-directory*__% _%dir119302%_ _%perms119304%_))))
    (define create-directory*
      (lambda _g122723_
        (let ((_g122724_ (let () (declare (not safe)) (##length _g122723_))))
          (cond ((let () (declare (not safe)) (##fx= _g122724_ 1))
                 (apply create-directory*__0 _g122723_))
                ((let () (declare (not safe)) (##fx= _g122724_ 2))
                 (apply create-directory*__% _g122723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g122723_))))))
    (define __move-file__%
      (lambda (_%src119217%_ _%dest119218%_ _%replace?119219%_)
        (let* ((_%src119222%_ _%src119217%_)
               (_%dest119230%_ _%dest119218%_)
               (_%replace?119238%_ _%replace?119219%_))
          (letrec ((_%force-move-it119247%_
                    (lambda ()
                      (let ((_%tmp119253%_
                             (if _%replace?119238%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest119230%_))
                                     (let ((__tmp122725
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest119230%_
                                        '"."
                                        __tmp122725))
                                     '#f)
                                 '#f)))
                        (if _%tmp119253%_
                            (let ()
                              (declare (not safe))
                              (##rename-file _%dest119230%_ _%tmp119253%_))
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e119255%_)
                           (if _%tmp119253%_
                               (let ()
                                 (declare (not safe))
                                 (##rename-file
                                  _%tmp119253%_
                                  _%dest119230%_
                                  '#t))
                               '#!void)
                           (raise _%e119255%_))
                         (lambda ()
                           (let ((_%fi119258%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src119222%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi119258%_))
                                      'symbolic-link)
                                 (let ((__tmp122726
                                        (path-normalize _%src119222%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp122726
                                    _%dest119230%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src119222%_
                                    _%dest119230%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src119222%_))
                           (if _%tmp119253%_
                               (with-exception-catcher
                                void
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (##delete-file _%tmp119253%_))))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e119249%_)
               (if (let () (declare (not safe)) (##file-exists? _%src119222%_))
                   (_%force-move-it119247%_)
                   (raise _%e119249%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src119222%_
                  _%dest119230%_
                  _%replace?119238%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src119264%_ _%dest119265%_)
        (let ((_%replace?119267%_ '#t))
          (__move-file__% _%src119264%_ _%dest119265%_ _%replace?119267%_))))
    (define __move-file
      (lambda _g122727_
        (let ((_g122728_ (let () (declare (not safe)) (##length _g122727_))))
          (cond ((let () (declare (not safe)) (##fx= _g122728_ 2))
                 (apply __move-file__0 _g122727_))
                ((let () (declare (not safe)) (##fx= _g122728_ 3))
                 (apply __move-file__% _g122727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g122727_))))))
    (define move-file__%
      (lambda (_%src119168%_ _%dest119169%_ _%replace?119170%_)
        (if (string? _%src119168%_)
            (let ((_%src119174%_ _%src119168%_))
              (if (string? _%dest119169%_)
                  (let ((_%dest119184%_ _%dest119169%_))
                    (if (boolean? _%replace?119170%_)
                        (let ((_%replace?119194%_ _%replace?119170%_))
                          (__move-file__%
                           _%src119174%_
                           _%dest119184%_
                           _%replace?119194%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@111.51-111.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?119170%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@111.34-111.38"
                     'contract:
                     'string?
                     'value:
                     _%dest119169%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@111.18-111.21"
               'contract:
               'string?
               'value:
               _%src119168%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src119207%_ _%dest119208%_)
        (let ((_%replace?119210%_ '#t))
          (move-file__% _%src119207%_ _%dest119208%_ _%replace?119210%_))))
    (define move-file
      (lambda _g122729_
        (let ((_g122730_ (let () (declare (not safe)) (##length _g122729_))))
          (cond ((let () (declare (not safe)) (##fx= _g122730_ 2))
                 (apply move-file__0 _g122729_))
                ((let () (declare (not safe)) (##fx= _g122730_ 3))
                 (apply move-file__% _g122729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g122729_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore119164%_ '#t))
    (define true? (lambda (_%obj119161%_) (eq? _%obj119161%_ '#t)))
    (define false (lambda _%ignore119158%_ '#f))
    (define void (lambda _%ignore119155%_ '#!void))
    (define void? (lambda (_%obj119152%_) (eq? _%obj119152%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj119149%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj119149%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj119146%_) (eq? _%obj119146%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj119143%_) (eq? _%obj119143%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj119140%_) (eq? _%obj119140%_ '#!optional)))
    (define immediate?
      (lambda (_%obj119137%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj119137%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj119134%_)
        (if (fixnum? _%obj119134%_)
            (let () (declare (not safe)) (##fx>= _%obj119134%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj119128%_)
        (let ((_%$e119131%_ (pair? _%obj119128%_)))
          (if _%$e119131%_ _%$e119131%_ (null? _%obj119128%_)))))
    (define values-count
      (lambda (_%obj119125%_)
        (if (let () (declare (not safe)) (##values? _%obj119125%_))
            (let () (declare (not safe)) (##values-length _%obj119125%_))
            '1)))
    (define __values-ref
      (lambda (_%obj119112%_ _%k119113%_)
        (let ((_%k119116%_ _%k119113%_))
          (if (let () (declare (not safe)) (##values? _%obj119112%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj119112%_ _%k119116%_))
              _%obj119112%_))))
    (define values-ref
      (lambda (_%obj119097%_ _%k119098%_)
        (if (fixnum? _%k119098%_)
            (let ((_%k119102%_ _%k119098%_))
              (__values-ref _%obj119097%_ _%k119102%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@245.23-245.24"
               'contract:
               'fixnum?
               'value:
               _%k119098%_)
              '#!void))))
    (define values->list
      (lambda (_%obj119094%_)
        (if (let () (declare (not safe)) (##values? _%obj119094%_))
            (let () (declare (not safe)) (##values->list _%obj119094%_))
            (list _%obj119094%_))))
    (define __foldl1
      (lambda (_%f119042%_ _%iv119043%_ _%lst119044%_)
        (let ((_%f119047%_ _%f119042%_))
          (let _%lp119056%_ ((_%rest119058%_ _%lst119044%_)
                             (_%r119059%_ _%iv119043%_))
            (let* ((_%$%rest119060119068%_ _%rest119058%_)
                   (_%$%else119062119076%_ (lambda () _%r119059%_))
                   (_%$%K119064119082%_
                    (lambda (_%rest119079%_ _%x119080%_)
                      (_%lp119056%_
                       _%rest119079%_
                       (let ()
                         (declare (not safe))
                         (_%f119047%_ _%x119080%_ _%r119059%_))))))
              (if (pair? _%$%rest119060119068%_)
                  (let ((_%$%hd119065119085%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest119060119068%_)))
                        (_%$%tl119066119087%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest119060119068%_))))
                    (let* ((_%x119090%_ _%$%hd119065119085%_)
                           (_%rest119092%_ _%$%tl119066119087%_))
                      (_%$%K119064119082%_ _%rest119092%_ _%x119090%_)))
                  (_%$%else119062119076%_)))))))
    (define foldl1
      (lambda (_%f119026%_ _%iv119027%_ _%lst119028%_)
        (if (procedure? _%f119026%_)
            (let ((_%f119032%_ _%f119026%_))
              (__foldl1 _%f119032%_ _%iv119027%_ _%lst119028%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@268.15-268.16"
               'contract:
               'procedure?
               'value:
               _%f119026%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f118939%_ _%iv118940%_ _%lst1118941%_ _%lst2118942%_)
        (let ((_%f118945%_ _%f118939%_))
          (let _%lp118954%_ ((_%rest1118956%_ _%lst1118941%_)
                             (_%rest2118957%_ _%lst2118942%_)
                             (_%r118958%_ _%iv118940%_))
            (let* ((_%$%rest1118959118967%_ _%rest1118956%_)
                   (_%$%else118961118975%_ (lambda () _%r118958%_))
                   (_%$%K118963119014%_
                    (lambda (_%rest1118978%_ _%x1118979%_)
                      (let* ((_%$%rest2118980118988%_ _%rest2118957%_)
                             (_%$%else118982118996%_ (lambda () _%r118958%_))
                             (_%$%K118984119002%_
                              (lambda (_%rest2118999%_ _%x2119000%_)
                                (_%lp118954%_
                                 _%rest1118978%_
                                 _%rest2118999%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f118945%_
                                    _%x1118979%_
                                    _%x2119000%_
                                    _%r118958%_))))))
                        (if (pair? _%$%rest2118980118988%_)
                            (let ((_%$%hd118985119005%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2118980118988%_)))
                                  (_%$%tl118986119007%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2118980118988%_))))
                              (let* ((_%x2119010%_ _%$%hd118985119005%_)
                                     (_%rest2119012%_ _%$%tl118986119007%_))
                                (_%$%K118984119002%_
                                 _%rest2119012%_
                                 _%x2119010%_)))
                            (_%$%else118982118996%_))))))
              (if (pair? _%$%rest1118959118967%_)
                  (let ((_%$%hd118964119017%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1118959118967%_)))
                        (_%$%tl118965119019%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1118959118967%_))))
                    (let* ((_%x1119022%_ _%$%hd118964119017%_)
                           (_%rest1119024%_ _%$%tl118965119019%_))
                      (_%$%K118963119014%_ _%rest1119024%_ _%x1119022%_)))
                  (_%$%else118961118975%_)))))))
    (define foldl2
      (lambda (_%f118922%_ _%iv118923%_ _%lst1118924%_ _%lst2118925%_)
        (if (procedure? _%f118922%_)
            (let ((_%f118929%_ _%f118922%_))
              (__foldl2
               _%f118929%_
               _%iv118923%_
               _%lst1118924%_
               _%lst2118925%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@275.15-275.16"
               'contract:
               'procedure?
               'value:
               _%f118922%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f118855%_ _%iv118856%_ _%lst118857%_)
        (let* ((_%f118859%_ _%f118855%_)
               (_%iv118862%_ _%iv118856%_)
               (_%lst118865%_ _%lst118857%_))
          (if (procedure? _%f118859%_)
              (let ((_%f118870%_ _%f118859%_))
                (__foldl1 _%f118870%_ _%iv118862%_ _%lst118865%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118859%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f118883%_ _%iv118884%_ _%lst1118885%_ _%lst2118886%_)
        (let* ((_%f118888%_ _%f118883%_)
               (_%iv118891%_ _%iv118884%_)
               (_%lst1118894%_ _%lst1118885%_)
               (_%lst2118897%_ _%lst2118886%_))
          (if (procedure? _%f118888%_)
              (let ((_%f118902%_ _%f118888%_))
                (__foldl2
                 _%f118902%_
                 _%iv118891%_
                 _%lst1118894%_
                 _%lst2118897%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118888%_)
                '#!void)))))
    (define foldl
      (lambda _g122731_
        (let ((_g122732_ (let () (declare (not safe)) (##length _g122731_))))
          (cond ((let () (declare (not safe)) (##fx= _g122732_ 3))
                 (apply foldl__0 _g122731_))
                ((let () (declare (not safe)) (##fx= _g122732_ 4))
                 (apply foldl__1 _g122731_))
                ((let () (declare (not safe)) (##fx>= _g122732_ 4))
                 (apply foldl* _g122731_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g122731_))))))
    (define __foldl*
      (lambda (_%f118786%_ _%iv118787%_ . _%rest118788%_)
        (let ((_%f118791%_ _%f118786%_))
          (let _%recur118800%_ ((_%iv118802%_ _%iv118787%_)
                                (_%rest118803%_ _%rest118788%_))
            (if (let* ((_%f118805%_ pair?)
                       (_%lst118808%_ _%rest118803%_)
                       (_%f118813%_ _%f118805%_))
                  (__andmap1 _%f118813%_ _%lst118808%_))
                (_%recur118800%_
                 (let ((__tmp122733
                        (let* ((_%f118832%_
                                (lambda (_%xs118829%_ _%r118830%_)
                                  (cons (car _%xs118829%_) _%r118830%_)))
                               (_%iv118835%_ (list _%iv118802%_))
                               (_%lst118838%_ _%rest118803%_)
                               (_%f118843%_ _%f118832%_))
                          (__foldr1 _%f118843%_ _%iv118835%_ _%lst118838%_))))
                   (declare (not safe))
                   (##apply _%f118791%_ __tmp122733))
                 (map cdr _%rest118803%_))
                _%iv118802%_)))))
    (define foldl*
      (lambda (_%f118770%_ _%iv118771%_ . _%rest118772%_)
        (if (procedure? _%f118770%_)
            (let ((_%f118776%_ _%f118770%_))
              (declare (not safe))
              (##apply __foldl* _%f118776%_ _%iv118771%_ _%rest118772%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@293.15-293.16"
               'contract:
               'procedure?
               'value:
               _%f118770%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f118719%_ _%iv118720%_ _%lst118721%_)
        (let ((_%f118724%_ _%f118719%_))
          (let _%recur118733%_ ((_%rest118735%_ _%lst118721%_))
            (let* ((_%$%rest118736118744%_ _%rest118735%_)
                   (_%$%else118738118752%_ (lambda () _%iv118720%_))
                   (_%$%K118740118758%_
                    (lambda (_%rest118755%_ _%x118756%_)
                      (let ((__tmp122734 (_%recur118733%_ _%rest118755%_)))
                        (declare (not safe))
                        (_%f118724%_ _%x118756%_ __tmp122734)))))
              (if (pair? _%$%rest118736118744%_)
                  (let ((_%$%hd118741118761%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest118736118744%_)))
                        (_%$%tl118742118763%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest118736118744%_))))
                    (let* ((_%x118766%_ _%$%hd118741118761%_)
                           (_%rest118768%_ _%$%tl118742118763%_))
                      (_%$%K118740118758%_ _%rest118768%_ _%x118766%_)))
                  (_%$%else118738118752%_)))))))
    (define foldr1
      (lambda (_%f118703%_ _%iv118704%_ _%lst118705%_)
        (if (procedure? _%f118703%_)
            (let ((_%f118709%_ _%f118703%_))
              (__foldr1 _%f118709%_ _%iv118704%_ _%lst118705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@303.15-303.16"
               'contract:
               'procedure?
               'value:
               _%f118703%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f118617%_ _%iv118618%_ _%lst1118619%_ _%lst2118620%_)
        (let ((_%f118623%_ _%f118617%_))
          (let _%recur118632%_ ((_%rest1118634%_ _%lst1118619%_)
                                (_%rest2118635%_ _%lst2118620%_))
            (let* ((_%$%rest1118636118644%_ _%rest1118634%_)
                   (_%$%else118638118652%_ (lambda () _%iv118618%_))
                   (_%$%K118640118691%_
                    (lambda (_%rest1118655%_ _%x1118656%_)
                      (let* ((_%$%rest2118657118665%_ _%rest2118635%_)
                             (_%$%else118659118673%_ (lambda () _%iv118618%_))
                             (_%$%K118661118679%_
                              (lambda (_%rest2118676%_ _%x2118677%_)
                                (let ((__tmp122735
                                       (_%recur118632%_
                                        _%rest1118655%_
                                        _%rest2118676%_)))
                                  (declare (not safe))
                                  (_%f118623%_
                                   _%x1118656%_
                                   _%x2118677%_
                                   __tmp122735)))))
                        (if (pair? _%$%rest2118657118665%_)
                            (let ((_%$%hd118662118682%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2118657118665%_)))
                                  (_%$%tl118663118684%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2118657118665%_))))
                              (let* ((_%x2118687%_ _%$%hd118662118682%_)
                                     (_%rest2118689%_ _%$%tl118663118684%_))
                                (_%$%K118661118679%_
                                 _%rest2118689%_
                                 _%x2118687%_)))
                            (_%$%else118659118673%_))))))
              (if (pair? _%$%rest1118636118644%_)
                  (let ((_%$%hd118641118694%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1118636118644%_)))
                        (_%$%tl118642118696%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1118636118644%_))))
                    (let* ((_%x1118699%_ _%$%hd118641118694%_)
                           (_%rest1118701%_ _%$%tl118642118696%_))
                      (_%$%K118640118691%_ _%rest1118701%_ _%x1118699%_)))
                  (_%$%else118638118652%_)))))))
    (define foldr2
      (lambda (_%f118600%_ _%iv118601%_ _%lst1118602%_ _%lst2118603%_)
        (if (procedure? _%f118600%_)
            (let ((_%f118607%_ _%f118600%_))
              (__foldr2
               _%f118607%_
               _%iv118601%_
               _%lst1118602%_
               _%lst2118603%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@310.15-310.16"
               'contract:
               'procedure?
               'value:
               _%f118600%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f118533%_ _%iv118534%_ _%lst118535%_)
        (let* ((_%f118537%_ _%f118533%_)
               (_%iv118540%_ _%iv118534%_)
               (_%lst118543%_ _%lst118535%_))
          (if (procedure? _%f118537%_)
              (let ((_%f118548%_ _%f118537%_))
                (__foldr1 _%f118548%_ _%iv118540%_ _%lst118543%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118537%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f118561%_ _%iv118562%_ _%lst1118563%_ _%lst2118564%_)
        (let* ((_%f118566%_ _%f118561%_)
               (_%iv118569%_ _%iv118562%_)
               (_%lst1118572%_ _%lst1118563%_)
               (_%lst2118575%_ _%lst2118564%_))
          (if (procedure? _%f118566%_)
              (let ((_%f118580%_ _%f118566%_))
                (__foldr2
                 _%f118580%_
                 _%iv118569%_
                 _%lst1118572%_
                 _%lst2118575%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118566%_)
                '#!void)))))
    (define foldr
      (lambda _g122736_
        (let ((_g122737_ (let () (declare (not safe)) (##length _g122736_))))
          (cond ((let () (declare (not safe)) (##fx= _g122737_ 3))
                 (apply foldr__0 _g122736_))
                ((let () (declare (not safe)) (##fx= _g122737_ 4))
                 (apply foldr__1 _g122736_))
                ((let () (declare (not safe)) (##fx>= _g122737_ 4))
                 (apply foldr* _g122736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g122736_))))))
    (define __foldr*
      (lambda (_%f118465%_ _%iv118466%_ . _%rest118467%_)
        (let ((_%f118470%_ _%f118465%_))
          (let _%recur118479%_ ((_%rest118481%_ _%rest118467%_))
            (if (let* ((_%f118483%_ pair?)
                       (_%lst118486%_ _%rest118481%_)
                       (_%f118491%_ _%f118483%_))
                  (__andmap1 _%f118491%_ _%lst118486%_))
                (let ((__tmp122738
                       (let* ((_%f118510%_
                               (lambda (_%xs118507%_ _%r118508%_)
                                 (cons (car _%xs118507%_) _%r118508%_)))
                              (_%iv118513%_
                               (list (_%recur118479%_
                                      (map cdr _%rest118481%_))))
                              (_%lst118516%_ _%rest118481%_)
                              (_%f118521%_ _%f118510%_))
                         (__foldr1 _%f118521%_ _%iv118513%_ _%lst118516%_))))
                  (declare (not safe))
                  (##apply _%f118470%_ __tmp122738))
                _%iv118466%_)))))
    (define foldr*
      (lambda (_%f118449%_ _%iv118450%_ . _%rest118451%_)
        (if (procedure? _%f118449%_)
            (let ((_%f118455%_ _%f118449%_))
              (declare (not safe))
              (##apply __foldr* _%f118455%_ _%iv118450%_ _%rest118451%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@328.15-328.16"
               'contract:
               'procedure?
               'value:
               _%f118449%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%lists118336%_)
        (letrec ((_%process-tails!118338%_
                  (lambda (_%previous-cell118393%_ _%rest118394%_)
                    (let* ((_%$%rest118395118408%_ _%rest118394%_)
                           (_%$%E118399118412%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest118395118408%_
                                     '([[] . r])
                                     '([_ . r])
                                     '(_))
                              '#!void)))
                      (let ((_%$%K118404118439%_
                             (lambda (_%r118437%_)
                               (let ((__tmp122740 _%previous-cell118393%_)
                                     (__tmp122739 (remove-nulls! _%r118437%_)))
                                 (declare (not safe))
                                 (##set-cdr! __tmp122740 __tmp122739))))
                            (_%$%K118401118426%_
                             (lambda (_%r118424%_)
                               (_%process-tails!118338%_
                                _%rest118394%_
                                _%r118424%_)))
                            (_%$%K118400118417%_ (lambda () '#!void)))
                        (if (pair? _%$%rest118395118408%_)
                            (let ((_%$%tl118406118444%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest118395118408%_)))
                                  (_%$%hd118405118442%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest118395118408%_))))
                              (if (null? _%$%hd118405118442%_)
                                  (let ((_%r118447%_ _%$%tl118406118444%_))
                                    (_%$%K118404118439%_ _%r118447%_))
                                  (let ((_%r118432%_ _%$%tl118406118444%_))
                                    (_%$%K118401118426%_ _%r118432%_))))
                            '#!void))))))
          (let* ((_%$%lists118339118352%_ _%lists118336%_)
                 (_%$%E118343118356%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%lists118339118352%_
                           '([[] . r])
                           '([_ . r])
                           '(_))
                    '#!void)))
            (let ((_%$%K118348118383%_
                   (lambda (_%r118381%_) (remove-nulls! _%r118381%_)))
                  (_%$%K118345118370%_
                   (lambda (_%r118368%_)
                     (_%process-tails!118338%_ _%lists118336%_ _%r118368%_)
                     _%lists118336%_))
                  (_%$%K118344118361%_ (lambda () _%lists118336%_)))
              (if (pair? _%$%lists118339118352%_)
                  (let ((_%$%tl118350118388%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%lists118339118352%_)))
                        (_%$%hd118349118386%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%lists118339118352%_))))
                    (if (null? _%$%hd118349118386%_)
                        (let ((_%r118391%_ _%$%tl118350118388%_))
                          (remove-nulls! _%r118391%_))
                        (let ((_%r118376%_ _%$%tl118350118388%_))
                          (_%$%K118345118370%_ _%r118376%_))))
                  (_%$%K118344118361%_)))))))
    (define append1!
      (lambda (_%l118321%_ _%x118322%_)
        (let ((_%l2118325%_ (cons _%x118322%_ '())))
          (if (pair? _%l118321%_)
              (let ((_%l118327%_ _%l118321%_))
                (let ((__tmp122741
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l118327%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp122741 _%l2118325%_))
                _%l118327%_)
              _%l2118325%_))))
    (define __append-reverse-until
      (lambda (_%pred118263%_ _%rhead118264%_ _%tail118265%_)
        (let ((_%pred118268%_ _%pred118263%_))
          (let _%loop118277%_ ((_%rhead118279%_ _%rhead118264%_)
                               (_%tail118280%_ _%tail118265%_))
            (let* ((_%$%rhead118282118291%_ _%rhead118279%_)
                   (_%$%E118285118295%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead118282118291%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K118289118318%_
                     (lambda () (values '() _%tail118280%_)))
                    (_%$%K118286118302%_
                     (lambda (_%r118299%_ _%a118300%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred118268%_ _%a118300%_))
                           (values _%rhead118279%_ _%tail118280%_)
                           (_%loop118277%_
                            _%r118299%_
                            (cons _%a118300%_ _%tail118280%_))))))
                (let ((_%$%try-match118284118314%_
                       (lambda ()
                         (if (pair? _%$%rhead118282118291%_)
                             (let ((_%$%tl118288118307%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead118282118291%_)))
                                   (_%$%hd118287118305%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead118282118291%_))))
                               (let ((_%a118310%_ _%$%hd118287118305%_)
                                     (_%r118312%_ _%$%tl118288118307%_))
                                 (_%$%K118286118302%_
                                  _%r118312%_
                                  _%a118310%_)))
                             (_%$%E118285118295%_)))))
                  (if (null? _%$%rhead118282118291%_)
                      (_%$%K118289118318%_)
                      (_%$%try-match118284118314%_)))))))))
    (define append-reverse-until
      (lambda (_%pred118247%_ _%rhead118248%_ _%tail118249%_)
        (if (procedure? _%pred118247%_)
            (let ((_%pred118253%_ _%pred118247%_))
              (__append-reverse-until
               _%pred118253%_
               _%rhead118248%_
               _%tail118249%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@366.29-366.33"
               'contract:
               'procedure?
               'value:
               _%pred118247%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f118196%_ _%lst118197%_)
        (let ((_%f118200%_ _%f118196%_))
          (let _%lp118209%_ ((_%rest118211%_ _%lst118197%_))
            (let* ((_%$%rest118213118221%_ _%rest118211%_)
                   (_%$%else118215118229%_ (lambda () '#t))
                   (_%$%K118217118235%_
                    (lambda (_%rest118232%_ _%x118233%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f118200%_ _%x118233%_))
                          (_%lp118209%_ _%rest118232%_)
                          '#f))))
              (if (pair? _%$%rest118213118221%_)
                  (let ((_%$%hd118218118238%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest118213118221%_)))
                        (_%$%tl118219118240%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest118213118221%_))))
                    (let* ((_%x118243%_ _%$%hd118218118238%_)
                           (_%rest118245%_ _%$%tl118219118240%_))
                      (_%$%K118217118235%_ _%rest118245%_ _%x118243%_)))
                  (_%$%else118215118229%_)))))))
    (define andmap1
      (lambda (_%f118181%_ _%lst118182%_)
        (if (procedure? _%f118181%_)
            (let ((_%f118186%_ _%f118181%_))
              (__andmap1 _%f118186%_ _%lst118182%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f118181%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f118095%_ _%lst1118096%_ _%lst2118097%_)
        (let ((_%f118100%_ _%f118095%_))
          (let _%lp118109%_ ((_%rest1118111%_ _%lst1118096%_)
                             (_%rest2118112%_ _%lst2118097%_))
            (let* ((_%$%rest1118114118122%_ _%rest1118111%_)
                   (_%$%else118116118130%_ (lambda () '#t))
                   (_%$%K118118118169%_
                    (lambda (_%rest1118133%_ _%x1118134%_)
                      (let* ((_%$%rest2118135118143%_ _%rest2118112%_)
                             (_%$%else118137118151%_ (lambda () '#t))
                             (_%$%K118139118157%_
                              (lambda (_%rest2118154%_ _%x2118155%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f118100%_ _%x1118134%_ _%x2118155%_))
                                    (_%lp118109%_
                                     _%rest1118133%_
                                     _%rest2118154%_)
                                    '#f))))
                        (if (pair? _%$%rest2118135118143%_)
                            (let ((_%$%hd118140118160%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2118135118143%_)))
                                  (_%$%tl118141118162%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2118135118143%_))))
                              (let* ((_%x2118165%_ _%$%hd118140118160%_)
                                     (_%rest2118167%_ _%$%tl118141118162%_))
                                (_%$%K118139118157%_
                                 _%rest2118167%_
                                 _%x2118165%_)))
                            (_%$%else118137118151%_))))))
              (if (pair? _%$%rest1118114118122%_)
                  (let ((_%$%hd118119118172%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1118114118122%_)))
                        (_%$%tl118120118174%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1118114118122%_))))
                    (let* ((_%x1118177%_ _%$%hd118119118172%_)
                           (_%rest1118179%_ _%$%tl118120118174%_))
                      (_%$%K118118118169%_ _%rest1118179%_ _%x1118177%_)))
                  (_%$%else118116118130%_)))))))
    (define andmap2
      (lambda (_%f118079%_ _%lst1118080%_ _%lst2118081%_)
        (if (procedure? _%f118079%_)
            (let ((_%f118085%_ _%f118079%_))
              (__andmap2 _%f118085%_ _%lst1118080%_ _%lst2118081%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@386.16-386.17"
               'contract:
               'procedure?
               'value:
               _%f118079%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f118023%_ _%lst118024%_)
        (let* ((_%f118026%_ _%f118023%_) (_%lst118029%_ _%lst118024%_))
          (if (procedure? _%f118026%_)
              (let ((_%f118034%_ _%f118026%_))
                (__andmap1 _%f118034%_ _%lst118029%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118026%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f118046%_ _%lst1118047%_ _%lst2118048%_)
        (let* ((_%f118050%_ _%f118046%_)
               (_%lst1118053%_ _%lst1118047%_)
               (_%lst2118056%_ _%lst2118048%_))
          (if (procedure? _%f118050%_)
              (let ((_%f118061%_ _%f118050%_))
                (__andmap2 _%f118061%_ _%lst1118053%_ _%lst2118056%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118050%_)
                '#!void)))))
    (define andmap
      (lambda _g122742_
        (let ((_g122743_ (let () (declare (not safe)) (##length _g122742_))))
          (cond ((let () (declare (not safe)) (##fx= _g122743_ 2))
                 (apply andmap__0 _g122742_))
                ((let () (declare (not safe)) (##fx= _g122743_ 3))
                 (apply andmap__1 _g122742_))
                ((let () (declare (not safe)) (##fx>= _g122743_ 3))
                 (apply andmap* _g122742_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g122742_))))))
    (define __andmap*
      (lambda (_%f117980%_ . _%rest117981%_)
        (let ((_%f117984%_ _%f117980%_))
          (let _%recur117993%_ ((_%rest117995%_ _%rest117981%_))
            (if (let* ((_%f117998%_ pair?)
                       (_%lst118001%_ _%rest117995%_)
                       (_%f118006%_ _%f117998%_))
                  (__andmap1 _%f118006%_ _%lst118001%_))
                (if (let ((__tmp122744 (map car _%rest117995%_)))
                      (declare (not safe))
                      (##apply _%f117984%_ __tmp122744))
                    (_%recur117993%_ (map cdr _%rest117995%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f117965%_ . _%rest117966%_)
        (if (procedure? _%f117965%_)
            (let ((_%f117970%_ _%f117965%_))
              (declare (not safe))
              (##apply __andmap* _%f117970%_ _%rest117966%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.16-406.17"
               'contract:
               'procedure?
               'value:
               _%f117965%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f117912%_ _%lst117913%_)
        (let ((_%f117916%_ _%f117912%_))
          (let _%lp117925%_ ((_%rest117927%_ _%lst117913%_))
            (let* ((_%$%rest117928117936%_ _%rest117927%_)
                   (_%$%else117930117944%_ (lambda () '#f))
                   (_%$%K117932117953%_
                    (lambda (_%rest117947%_ _%x117948%_)
                      (let ((_%$e117950%_
                             (let ()
                               (declare (not safe))
                               (_%f117916%_ _%x117948%_))))
                        (if _%$e117950%_
                            _%$e117950%_
                            (_%lp117925%_ _%rest117947%_))))))
              (if (pair? _%$%rest117928117936%_)
                  (let ((_%$%hd117933117956%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest117928117936%_)))
                        (_%$%tl117934117958%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest117928117936%_))))
                    (let* ((_%x117961%_ _%$%hd117933117956%_)
                           (_%rest117963%_ _%$%tl117934117958%_))
                      (_%$%K117932117953%_ _%rest117963%_ _%x117961%_)))
                  (_%$%else117930117944%_)))))))
    (define ormap1
      (lambda (_%f117897%_ _%lst117898%_)
        (if (procedure? _%f117897%_)
            (let ((_%f117902%_ _%f117897%_))
              (__ormap1 _%f117902%_ _%lst117898%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.15-415.16"
               'contract:
               'procedure?
               'value:
               _%f117897%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f117809%_ _%lst1117810%_ _%lst2117811%_)
        (let ((_%f117814%_ _%f117809%_))
          (let _%lp117823%_ ((_%rest1117825%_ _%lst1117810%_)
                             (_%rest2117826%_ _%lst2117811%_))
            (let* ((_%$%rest1117827117835%_ _%rest1117825%_)
                   (_%$%else117829117843%_ (lambda () '#f))
                   (_%$%K117831117885%_
                    (lambda (_%rest1117846%_ _%x1117847%_)
                      (let* ((_%$%rest2117848117856%_ _%rest2117826%_)
                             (_%$%else117850117864%_ (lambda () '#f))
                             (_%$%K117852117873%_
                              (lambda (_%rest2117867%_ _%x2117868%_)
                                (let ((_%$e117870%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f117814%_
                                          _%x1117847%_
                                          _%x2117868%_))))
                                  (if _%$e117870%_
                                      _%$e117870%_
                                      (_%lp117823%_
                                       _%rest1117846%_
                                       _%rest2117867%_))))))
                        (if (pair? _%$%rest2117848117856%_)
                            (let ((_%$%hd117853117876%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2117848117856%_)))
                                  (_%$%tl117854117878%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2117848117856%_))))
                              (let* ((_%x2117881%_ _%$%hd117853117876%_)
                                     (_%rest2117883%_ _%$%tl117854117878%_))
                                (_%$%K117852117873%_
                                 _%rest2117883%_
                                 _%x2117881%_)))
                            (_%$%else117850117864%_))))))
              (if (pair? _%$%rest1117827117835%_)
                  (let ((_%$%hd117832117888%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1117827117835%_)))
                        (_%$%tl117833117890%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1117827117835%_))))
                    (let* ((_%x1117893%_ _%$%hd117832117888%_)
                           (_%rest1117895%_ _%$%tl117833117890%_))
                      (_%$%K117831117885%_ _%rest1117895%_ _%x1117893%_)))
                  (_%$%else117829117843%_)))))))
    (define ormap2
      (lambda (_%f117793%_ _%lst1117794%_ _%lst2117795%_)
        (if (procedure? _%f117793%_)
            (let ((_%f117799%_ _%f117793%_))
              (__ormap2 _%f117799%_ _%lst1117794%_ _%lst2117795%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@422.15-422.16"
               'contract:
               'procedure?
               'value:
               _%f117793%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f117737%_ _%lst117738%_)
        (let* ((_%f117740%_ _%f117737%_) (_%lst117743%_ _%lst117738%_))
          (if (procedure? _%f117740%_)
              (let ((_%f117748%_ _%f117740%_))
                (__ormap1 _%f117748%_ _%lst117743%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117740%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f117760%_ _%lst1117761%_ _%lst2117762%_)
        (let* ((_%f117764%_ _%f117760%_)
               (_%lst1117767%_ _%lst1117761%_)
               (_%lst2117770%_ _%lst2117762%_))
          (if (procedure? _%f117764%_)
              (let ((_%f117775%_ _%f117764%_))
                (__ormap2 _%f117775%_ _%lst1117767%_ _%lst2117770%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117764%_)
                '#!void)))))
    (define ormap
      (lambda _g122745_
        (let ((_g122746_ (let () (declare (not safe)) (##length _g122745_))))
          (cond ((let () (declare (not safe)) (##fx= _g122746_ 2))
                 (apply ormap__0 _g122745_))
                ((let () (declare (not safe)) (##fx= _g122746_ 3))
                 (apply ormap__1 _g122745_))
                ((let () (declare (not safe)) (##fx>= _g122746_ 3))
                 (apply ormap* _g122745_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g122745_))))))
    (define __ormap*
      (lambda (_%f117693%_ . _%rest117694%_)
        (let ((_%f117697%_ _%f117693%_))
          (let _%recur117706%_ ((_%rest117708%_ _%rest117694%_))
            (if (let* ((_%f117710%_ pair?)
                       (_%lst117713%_ _%rest117708%_)
                       (_%f117718%_ _%f117710%_))
                  (__andmap1 _%f117718%_ _%lst117713%_))
                (let ((_%$e117734%_
                       (let ((__tmp122747 (map car _%rest117708%_)))
                         (declare (not safe))
                         (##apply _%f117697%_ __tmp122747))))
                  (if _%$e117734%_
                      _%$e117734%_
                      (_%recur117706%_ (map cdr _%rest117708%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f117678%_ . _%rest117679%_)
        (if (procedure? _%f117678%_)
            (let ((_%f117683%_ _%f117678%_))
              (declare (not safe))
              (##apply __ormap* _%f117683%_ _%rest117679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@440.15-440.16"
               'contract:
               'procedure?
               'value:
               _%f117678%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f117621%_ _%lst117622%_)
        (let ((_%f117625%_ _%f117621%_))
          (let _%recur117634%_ ((_%rest117636%_ _%lst117622%_))
            (let* ((_%$%rest117638117646%_ _%rest117636%_)
                   (_%$%else117640117654%_ (lambda () '()))
                   (_%$%K117642117666%_
                    (lambda (_%rest117657%_ _%x117658%_)
                      (let ((_%$e117660%_
                             (let ()
                               (declare (not safe))
                               (_%f117625%_ _%x117658%_))))
                        (if _%$e117660%_
                            (cons _%$e117660%_
                                  (_%recur117634%_ _%rest117657%_))
                            (_%recur117634%_ _%rest117657%_))))))
              (if (pair? _%$%rest117638117646%_)
                  (let ((_%$%hd117643117669%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest117638117646%_)))
                        (_%$%tl117644117671%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest117638117646%_))))
                    (let* ((_%x117674%_ _%$%hd117643117669%_)
                           (_%rest117676%_ _%$%tl117644117671%_))
                      (_%$%K117642117666%_ _%rest117676%_ _%x117674%_)))
                  (_%$%else117640117654%_)))))))
    (define filter-map1
      (lambda (_%f117606%_ _%lst117607%_)
        (if (procedure? _%f117606%_)
            (let ((_%f117611%_ _%f117606%_))
              (__filter-map1 _%f117611%_ _%lst117607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@447.20-447.21"
               'contract:
               'procedure?
               'value:
               _%f117606%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f117514%_ _%lst1117515%_ _%lst2117516%_)
        (let ((_%f117519%_ _%f117514%_))
          (let _%recur117528%_ ((_%rest1117530%_ _%lst1117515%_)
                                (_%rest2117531%_ _%lst2117516%_))
            (let* ((_%$%rest1117533117541%_ _%rest1117530%_)
                   (_%$%else117535117549%_ (lambda () '()))
                   (_%$%K117537117594%_
                    (lambda (_%rest1117552%_ _%x1117553%_)
                      (let* ((_%$%rest2117554117562%_ _%rest2117531%_)
                             (_%$%else117556117570%_ (lambda () '()))
                             (_%$%K117558117582%_
                              (lambda (_%rest2117573%_ _%x2117574%_)
                                (let ((_%$e117576%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f117519%_
                                          _%x1117553%_
                                          _%x2117574%_))))
                                  (if _%$e117576%_
                                      (cons _%$e117576%_
                                            (_%recur117528%_
                                             _%rest1117552%_
                                             _%rest2117573%_))
                                      (_%recur117528%_
                                       _%rest1117552%_
                                       _%rest2117573%_))))))
                        (if (pair? _%$%rest2117554117562%_)
                            (let ((_%$%hd117559117585%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2117554117562%_)))
                                  (_%$%tl117560117587%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2117554117562%_))))
                              (let* ((_%x2117590%_ _%$%hd117559117585%_)
                                     (_%rest2117592%_ _%$%tl117560117587%_))
                                (_%$%K117558117582%_
                                 _%rest2117592%_
                                 _%x2117590%_)))
                            (_%$%else117556117570%_))))))
              (if (pair? _%$%rest1117533117541%_)
                  (let ((_%$%hd117538117597%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1117533117541%_)))
                        (_%$%tl117539117599%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1117533117541%_))))
                    (let* ((_%x1117602%_ _%$%hd117538117597%_)
                           (_%rest1117604%_ _%$%tl117539117599%_))
                      (_%$%K117537117594%_ _%rest1117604%_ _%x1117602%_)))
                  (_%$%else117535117549%_)))))))
    (define filter-map2
      (lambda (_%f117498%_ _%lst1117499%_ _%lst2117500%_)
        (if (procedure? _%f117498%_)
            (let ((_%f117504%_ _%f117498%_))
              (__filter-map2 _%f117504%_ _%lst1117499%_ _%lst2117500%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@458.20-458.21"
               'contract:
               'procedure?
               'value:
               _%f117498%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f117442%_ _%lst117443%_)
        (let* ((_%f117445%_ _%f117442%_) (_%lst117448%_ _%lst117443%_))
          (if (procedure? _%f117445%_)
              (let ((_%f117453%_ _%f117445%_))
                (__filter-map1 _%f117453%_ _%lst117448%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117445%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f117465%_ _%lst1117466%_ _%lst2117467%_)
        (let* ((_%f117469%_ _%f117465%_)
               (_%lst1117472%_ _%lst1117466%_)
               (_%lst2117475%_ _%lst2117467%_))
          (if (procedure? _%f117469%_)
              (let ((_%f117480%_ _%f117469%_))
                (__filter-map2 _%f117480%_ _%lst1117472%_ _%lst2117475%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117469%_)
                '#!void)))))
    (define filter-map
      (lambda _g122748_
        (let ((_g122749_ (let () (declare (not safe)) (##length _g122748_))))
          (cond ((let () (declare (not safe)) (##fx= _g122749_ 2))
                 (apply filter-map__0 _g122748_))
                ((let () (declare (not safe)) (##fx= _g122749_ 3))
                 (apply filter-map__1 _g122748_))
                ((let () (declare (not safe)) (##fx>= _g122749_ 3))
                 (apply filter-map* _g122748_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g122748_))))))
    (define __filter-map*
      (lambda (_%f117393%_ . _%rest117394%_)
        (let ((_%f117397%_ _%f117393%_))
          (let _%recur117406%_ ((_%rest117408%_ _%rest117394%_))
            (if (let* ((_%f117411%_ pair?)
                       (_%lst117414%_ _%rest117408%_)
                       (_%f117419%_ _%f117411%_))
                  (__andmap1 _%f117419%_ _%lst117414%_))
                (let ((_%$e117436%_
                       (let ((__tmp122750 (map car _%rest117408%_)))
                         (declare (not safe))
                         (##apply _%f117397%_ __tmp122750))))
                  (if _%$e117436%_
                      (cons _%$e117436%_
                            (_%recur117406%_ (map cdr _%rest117408%_)))
                      (_%recur117406%_ (map cdr _%rest117408%_))))
                '())))))
    (define filter-map*
      (lambda (_%f117378%_ . _%rest117379%_)
        (if (procedure? _%f117378%_)
            (let ((_%f117383%_ _%f117378%_))
              (declare (not safe))
              (##apply __filter-map* _%f117383%_ _%rest117379%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@480.20-480.21"
               'contract:
               'procedure?
               'value:
               _%f117378%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key117354%_ _%lst117356%_ _%default117358%_)
        (let ((_%$e117361%_
               (if (pair? _%lst117356%_)
                   (assq _%key117354%_ _%lst117356%_)
                   '#f)))
          (if _%$e117361%_
              (cdr _%$e117361%_)
              (if (procedure? _%default117358%_)
                  (_%default117358%_ _%key117354%_)
                  _%default117358%_)))))
    (define agetq__0
      (lambda (_%key117369%_ _%lst117370%_)
        (let ((_%default117372%_ '#f))
          (agetq__% _%key117369%_ _%lst117370%_ _%default117372%_))))
    (define agetq
      (lambda _g122751_
        (let ((_g122752_ (let () (declare (not safe)) (##length _g122751_))))
          (cond ((let () (declare (not safe)) (##fx= _g122752_ 2))
                 (apply agetq__0 _g122751_))
                ((let () (declare (not safe)) (##fx= _g122752_ 3))
                 (apply agetq__% _g122751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g122751_))))))
    (define agetv__%
      (lambda (_%key117329%_ _%lst117331%_ _%default117333%_)
        (let ((_%$e117336%_
               (if (pair? _%lst117331%_)
                   (assv _%key117329%_ _%lst117331%_)
                   '#f)))
          (if _%$e117336%_
              (cdr _%$e117336%_)
              (if (procedure? _%default117333%_)
                  (_%default117333%_ _%key117329%_)
                  _%default117333%_)))))
    (define agetv__0
      (lambda (_%key117344%_ _%lst117345%_)
        (let ((_%default117347%_ '#f))
          (agetv__% _%key117344%_ _%lst117345%_ _%default117347%_))))
    (define agetv
      (lambda _g122753_
        (let ((_g122754_ (let () (declare (not safe)) (##length _g122753_))))
          (cond ((let () (declare (not safe)) (##fx= _g122754_ 2))
                 (apply agetv__0 _g122753_))
                ((let () (declare (not safe)) (##fx= _g122754_ 3))
                 (apply agetv__% _g122753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g122753_))))))
    (define aget__%
      (lambda (_%key117304%_ _%lst117306%_ _%default117308%_)
        (let ((_%$e117311%_
               (if (pair? _%lst117306%_)
                   (assoc _%key117304%_ _%lst117306%_)
                   '#f)))
          (if _%$e117311%_
              (cdr _%$e117311%_)
              (if (procedure? _%default117308%_)
                  (_%default117308%_ _%key117304%_)
                  _%default117308%_)))))
    (define aget__0
      (lambda (_%key117319%_ _%lst117320%_)
        (let ((_%default117322%_ '#f))
          (aget__% _%key117319%_ _%lst117320%_ _%default117322%_))))
    (define aget
      (lambda _g122755_
        (let ((_g122756_ (let () (declare (not safe)) (##length _g122755_))))
          (cond ((let () (declare (not safe)) (##fx= _g122756_ 2))
                 (apply aget__0 _g122755_))
                ((let () (declare (not safe)) (##fx= _g122756_ 3))
                 (apply aget__% _g122755_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g122755_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key117233%_ _%lst117235%_ _%default117237%_)
        (let _%lp117240%_ ((_%rest117243%_ _%lst117235%_))
          (let* ((_%$%rest117245117255%_ _%rest117243%_)
                 (_%$%else117247117263%_
                  (lambda ()
                    (if (procedure? _%default117237%_)
                        (_%default117237%_ _%key117233%_)
                        _%default117237%_)))
                 (_%$%K117249117272%_
                  (lambda (_%rest117266%_ _%v117267%_ _%k117269%_)
                    (if (eq? _%k117269%_ _%key117233%_)
                        _%v117267%_
                        (_%lp117240%_ _%rest117266%_)))))
            (if (pair? _%$%rest117245117255%_)
                (let ((_%$%hd117250117275%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117245117255%_)))
                      (_%$%tl117251117277%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117245117255%_))))
                  (let ((_%k117280%_ _%$%hd117250117275%_))
                    (if (pair? _%$%tl117251117277%_)
                        (let ((_%$%hd117252117282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl117251117277%_)))
                              (_%$%tl117253117284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl117251117277%_))))
                          (let* ((_%v117287%_ _%$%hd117252117282%_)
                                 (_%rest117289%_ _%$%tl117253117284%_))
                            (_%$%K117249117272%_
                             _%rest117289%_
                             _%v117287%_
                             _%k117280%_)))
                        (_%$%else117247117263%_))))
                (_%$%else117247117263%_))))))
    (define pgetq__0
      (lambda (_%key117294%_ _%lst117295%_)
        (let ((_%default117297%_ '#f))
          (pgetq__% _%key117294%_ _%lst117295%_ _%default117297%_))))
    (define pgetq
      (lambda _g122757_
        (let ((_g122758_ (let () (declare (not safe)) (##length _g122757_))))
          (cond ((let () (declare (not safe)) (##fx= _g122758_ 2))
                 (apply pgetq__0 _g122757_))
                ((let () (declare (not safe)) (##fx= _g122758_ 3))
                 (apply pgetq__% _g122757_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g122757_))))))
    (define pgetv__%
      (lambda (_%key117162%_ _%lst117164%_ _%default117166%_)
        (let _%lp117169%_ ((_%rest117172%_ _%lst117164%_))
          (let* ((_%$%rest117174117184%_ _%rest117172%_)
                 (_%$%else117176117192%_
                  (lambda ()
                    (if (procedure? _%default117166%_)
                        (_%default117166%_ _%key117162%_)
                        _%default117166%_)))
                 (_%$%K117178117201%_
                  (lambda (_%rest117195%_ _%v117196%_ _%k117198%_)
                    (if (eqv? _%k117198%_ _%key117162%_)
                        _%v117196%_
                        (_%lp117169%_ _%rest117195%_)))))
            (if (pair? _%$%rest117174117184%_)
                (let ((_%$%hd117179117204%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117174117184%_)))
                      (_%$%tl117180117206%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117174117184%_))))
                  (let ((_%k117209%_ _%$%hd117179117204%_))
                    (if (pair? _%$%tl117180117206%_)
                        (let ((_%$%hd117181117211%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl117180117206%_)))
                              (_%$%tl117182117213%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl117180117206%_))))
                          (let* ((_%v117216%_ _%$%hd117181117211%_)
                                 (_%rest117218%_ _%$%tl117182117213%_))
                            (_%$%K117178117201%_
                             _%rest117218%_
                             _%v117216%_
                             _%k117209%_)))
                        (_%$%else117176117192%_))))
                (_%$%else117176117192%_))))))
    (define pgetv__0
      (lambda (_%key117223%_ _%lst117224%_)
        (let ((_%default117226%_ '#f))
          (pgetv__% _%key117223%_ _%lst117224%_ _%default117226%_))))
    (define pgetv
      (lambda _g122759_
        (let ((_g122760_ (let () (declare (not safe)) (##length _g122759_))))
          (cond ((let () (declare (not safe)) (##fx= _g122760_ 2))
                 (apply pgetv__0 _g122759_))
                ((let () (declare (not safe)) (##fx= _g122760_ 3))
                 (apply pgetv__% _g122759_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g122759_))))))
    (define pget__%
      (lambda (_%key117091%_ _%lst117093%_ _%default117095%_)
        (let _%lp117098%_ ((_%rest117101%_ _%lst117093%_))
          (let* ((_%$%rest117103117113%_ _%rest117101%_)
                 (_%$%else117105117121%_
                  (lambda ()
                    (if (procedure? _%default117095%_)
                        (_%default117095%_ _%key117091%_)
                        _%default117095%_)))
                 (_%$%K117107117130%_
                  (lambda (_%rest117124%_ _%v117125%_ _%k117127%_)
                    (if (equal? _%k117127%_ _%key117091%_)
                        _%v117125%_
                        (_%lp117098%_ _%rest117124%_)))))
            (if (pair? _%$%rest117103117113%_)
                (let ((_%$%hd117108117133%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117103117113%_)))
                      (_%$%tl117109117135%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117103117113%_))))
                  (let ((_%k117138%_ _%$%hd117108117133%_))
                    (if (pair? _%$%tl117109117135%_)
                        (let ((_%$%hd117110117140%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl117109117135%_)))
                              (_%$%tl117111117142%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl117109117135%_))))
                          (let* ((_%v117145%_ _%$%hd117110117140%_)
                                 (_%rest117147%_ _%$%tl117111117142%_))
                            (_%$%K117107117130%_
                             _%rest117147%_
                             _%v117145%_
                             _%k117138%_)))
                        (_%$%else117105117121%_))))
                (_%$%else117105117121%_))))))
    (define pget__0
      (lambda (_%key117152%_ _%lst117153%_)
        (let ((_%default117155%_ '#f))
          (pget__% _%key117152%_ _%lst117153%_ _%default117155%_))))
    (define pget
      (lambda _g122761_
        (let ((_g122762_ (let () (declare (not safe)) (##length _g122761_))))
          (cond ((let () (declare (not safe)) (##fx= _g122762_ 2))
                 (apply pget__0 _g122761_))
                ((let () (declare (not safe)) (##fx= _g122762_ 3))
                 (apply pget__% _g122761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g122761_))))))
    (define __find
      (lambda (_%pred117051%_ _%lst117052%_)
        (let* ((_%pred117055%_ _%pred117051%_)
               (_%$e117086%_
                (let* ((_%proc117064%_ _%pred117055%_)
                       (_%lst117067%_ _%lst117052%_)
                       (_%proc117072%_ _%proc117064%_))
                  (__memf _%proc117072%_ _%lst117067%_))))
          (if _%$e117086%_
              (let () (declare (not safe)) (##car _%$e117086%_))
              '#f))))
    (define find
      (lambda (_%pred117036%_ _%lst117037%_)
        (if (procedure? _%pred117036%_)
            (let ((_%pred117041%_ _%pred117036%_))
              (__find _%pred117041%_ _%lst117037%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@526.13-526.17"
               'contract:
               'procedure?
               'value:
               _%pred117036%_)
              '#!void))))
    (define __memf
      (lambda (_%proc116986%_ _%lst116987%_)
        (let ((_%proc116990%_ _%proc116986%_))
          (let _%lp116999%_ ((_%rest117001%_ _%lst116987%_))
            (let* ((_%$%rest117002117010%_ _%rest117001%_)
                   (_%$%else117004117018%_ (lambda () '#f))
                   (_%$%K117006117024%_
                    (lambda (_%tl117021%_ _%hd117022%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc116990%_ _%hd117022%_))
                          _%rest117001%_
                          (_%lp116999%_ _%tl117021%_)))))
              (if (pair? _%$%rest117002117010%_)
                  (let ((_%$%hd117007117027%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest117002117010%_)))
                        (_%$%tl117008117029%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest117002117010%_))))
                    (let* ((_%hd117032%_ _%$%hd117007117027%_)
                           (_%tl117034%_ _%$%tl117008117029%_))
                      (_%$%K117006117024%_ _%tl117034%_ _%hd117032%_)))
                  (_%$%else117004117018%_)))))))
    (define memf
      (lambda (_%proc116971%_ _%lst116972%_)
        (if (procedure? _%proc116971%_)
            (let ((_%proc116976%_ _%proc116971%_))
              (__memf _%proc116976%_ _%lst116972%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@531.13-531.17"
               'contract:
               'procedure?
               'value:
               _%proc116971%_)
              '#!void))))
    (define remove1
      (lambda (_%el116894%_ _%lst116896%_)
        (let _%lp116899%_ ((_%rest116902%_ _%lst116896%_) (_%r116904%_ '()))
          (let* ((_%$%rest116906116914%_ _%rest116902%_)
                 (_%$%else116908116922%_ (lambda () _%lst116896%_))
                 (_%$%K116910116959%_
                  (lambda (_%rest116925%_ _%hd116926%_)
                    (if (equal? _%el116894%_ _%hd116926%_)
                        (let* ((_%f116929%_ cons)
                               (_%iv116932%_ _%rest116925%_)
                               (_%lst116935%_ _%r116904%_)
                               (_%f116940%_ _%f116929%_))
                          (__foldl1 _%f116940%_ _%iv116932%_ _%lst116935%_))
                        (_%lp116899%_
                         _%rest116925%_
                         (cons _%hd116926%_ _%r116904%_))))))
            (if (pair? _%$%rest116906116914%_)
                (let ((_%$%hd116911116962%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest116906116914%_)))
                      (_%$%tl116912116964%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest116906116914%_))))
                  (let* ((_%hd116967%_ _%$%hd116911116962%_)
                         (_%rest116969%_ _%$%tl116912116964%_))
                    (_%$%K116910116959%_ _%rest116969%_ _%hd116967%_)))
                (_%$%else116908116922%_))))))
    (define remv1
      (lambda (_%el116817%_ _%lst116819%_)
        (let _%lp116822%_ ((_%rest116825%_ _%lst116819%_) (_%r116827%_ '()))
          (let* ((_%$%rest116829116837%_ _%rest116825%_)
                 (_%$%else116831116845%_ (lambda () _%lst116819%_))
                 (_%$%K116833116882%_
                  (lambda (_%rest116848%_ _%hd116849%_)
                    (if (eqv? _%el116817%_ _%hd116849%_)
                        (let* ((_%f116852%_ cons)
                               (_%iv116855%_ _%rest116848%_)
                               (_%lst116858%_ _%r116827%_)
                               (_%f116863%_ _%f116852%_))
                          (__foldl1 _%f116863%_ _%iv116855%_ _%lst116858%_))
                        (_%lp116822%_
                         _%rest116848%_
                         (cons _%hd116849%_ _%r116827%_))))))
            (if (pair? _%$%rest116829116837%_)
                (let ((_%$%hd116834116885%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest116829116837%_)))
                      (_%$%tl116835116887%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest116829116837%_))))
                  (let* ((_%hd116890%_ _%$%hd116834116885%_)
                         (_%rest116892%_ _%$%tl116835116887%_))
                    (_%$%K116833116882%_ _%rest116892%_ _%hd116890%_)))
                (_%$%else116831116845%_))))))
    (define remq1
      (lambda (_%el116740%_ _%lst116742%_)
        (let _%lp116745%_ ((_%rest116748%_ _%lst116742%_) (_%r116750%_ '()))
          (let* ((_%$%rest116752116760%_ _%rest116748%_)
                 (_%$%else116754116768%_ (lambda () _%lst116742%_))
                 (_%$%K116756116805%_
                  (lambda (_%rest116771%_ _%hd116772%_)
                    (if (eq? _%el116740%_ _%hd116772%_)
                        (let* ((_%f116775%_ cons)
                               (_%iv116778%_ _%rest116771%_)
                               (_%lst116781%_ _%r116750%_)
                               (_%f116786%_ _%f116775%_))
                          (__foldl1 _%f116786%_ _%iv116778%_ _%lst116781%_))
                        (_%lp116745%_
                         _%rest116771%_
                         (cons _%hd116772%_ _%r116750%_))))))
            (if (pair? _%$%rest116752116760%_)
                (let ((_%$%hd116757116808%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest116752116760%_)))
                      (_%$%tl116758116810%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest116752116760%_))))
                  (let* ((_%hd116813%_ _%$%hd116757116808%_)
                         (_%rest116815%_ _%$%tl116758116810%_))
                    (_%$%K116756116805%_ _%rest116815%_ _%hd116813%_)))
                (_%$%else116754116768%_))))))
    (define __remf
      (lambda (_%proc116657%_ _%lst116658%_)
        (let ((_%proc116661%_ _%proc116657%_))
          (let _%lp116670%_ ((_%rest116672%_ _%lst116658%_) (_%r116673%_ '()))
            (let* ((_%$%rest116674116682%_ _%rest116672%_)
                   (_%$%else116676116690%_ (lambda () _%lst116658%_))
                   (_%$%K116678116728%_
                    (lambda (_%rest116693%_ _%hd116694%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc116661%_ _%hd116694%_))
                          (let* ((_%f116696%_ cons)
                                 (_%iv116699%_ _%rest116693%_)
                                 (_%lst116702%_ _%r116673%_)
                                 (_%f116707%_ _%f116696%_))
                            (__foldl1 _%f116707%_ _%iv116699%_ _%lst116702%_))
                          (_%lp116670%_
                           _%rest116693%_
                           (cons _%hd116694%_ _%r116673%_))))))
              (if (pair? _%$%rest116674116682%_)
                  (let ((_%$%hd116679116731%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest116674116682%_)))
                        (_%$%tl116680116733%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest116674116682%_))))
                    (let* ((_%hd116736%_ _%$%hd116679116731%_)
                           (_%rest116738%_ _%$%tl116680116733%_))
                      (_%$%K116678116728%_ _%rest116738%_ _%hd116736%_)))
                  (_%$%else116676116690%_)))))))
    (define remf
      (lambda (_%proc116642%_ _%lst116643%_)
        (if (procedure? _%proc116642%_)
            (let ((_%proc116647%_ _%proc116642%_))
              (__remf _%proc116647%_ _%lst116643%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.13-553.17"
               'contract:
               'procedure?
               'value:
               _%proc116642%_)
              '#!void))))
    (define __1+
      (lambda (_%x116630%_)
        (let ((_%x116633%_ _%x116630%_)) (+ _%x116633%_ '1))))
    (define 1+
      (lambda (_%x116616%_)
        (if (number? _%x116616%_)
            (let ((_%x116620%_ _%x116616%_)) (__1+ _%x116620%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@562.11-562.12"
               'contract:
               'number?
               'value:
               _%x116616%_)
              '#!void))))
    (define __1-
      (lambda (_%x116604%_)
        (let ((_%x116607%_ _%x116604%_)) (- _%x116607%_ '1))))
    (define 1-
      (lambda (_%x116590%_)
        (if (number? _%x116590%_)
            (let ((_%x116594%_ _%x116590%_)) (__1- _%x116594%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@570.11-570.12"
               'contract:
               'number?
               'value:
               _%x116590%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x116578%_)
        (let ((_%x116581%_ _%x116578%_))
          (declare (not safe))
          (##fx+ _%x116581%_ '1))))
    (define fx1+
      (lambda (_%x116564%_)
        (if (fixnum? _%x116564%_)
            (let ((_%x116568%_ _%x116564%_)) (__fx1+ _%x116568%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@578.13-578.14"
               'contract:
               'fixnum?
               'value:
               _%x116564%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x116552%_)
        (let ((_%x116555%_ _%x116552%_))
          (declare (not safe))
          (##fx- _%x116555%_ '1))))
    (define fx1-
      (lambda (_%x116538%_)
        (if (fixnum? _%x116538%_)
            (let ((_%x116542%_ _%x116538%_)) (__fx1- _%x116542%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.13-586.14"
               'contract:
               'fixnum?
               'value:
               _%x116538%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x116535%_)
        (if (fixnum? _%x116535%_)
            (let () (declare (not safe)) (##fx>= _%x116535%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x116532%_)
        (if (fixnum? _%x116532%_)
            (let () (declare (not safe)) (##fx> _%x116532%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x116529%_)
        (let () (declare (not safe)) (##fx= _%x116529%_ '0))))
    (define fx<0?
      (lambda (_%x116526%_)
        (if (fixnum? _%x116526%_)
            (let () (declare (not safe)) (##fx< _%x116526%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x116523%_)
        (if (fixnum? _%x116523%_)
            (let () (declare (not safe)) (##fx<= _%x116523%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x116520%_)
        (if (symbol? _%x116520%_) (not (uninterned-symbol? _%x116520%_)) '#f)))
    (define __display-as-string
      (lambda (_%x116414%_ _%port116415%_)
        (let ((_%port116418%_ _%port116415%_))
          (if (or (string? _%x116414%_)
                  (symbol? _%x116414%_)
                  (keyword? _%x116414%_)
                  (number? _%x116414%_)
                  (char? _%x116414%_))
              (display _%x116414%_ _%port116418%_)
              (if (pair? _%x116414%_)
                  (let ()
                    (let* ((_%x116441%_
                            (let () (declare (not safe)) (##car _%x116414%_)))
                           (_%port116444%_ _%port116418%_))
                      (if (output-port? _%port116444%_)
                          (let ((_%port116449%_ _%port116444%_))
                            (__display-as-string _%x116441%_ _%port116449%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port116444%_)
                            '#!void)))
                    (let* ((_%x116464%_
                            (let () (declare (not safe)) (##cdr _%x116414%_)))
                           (_%port116467%_ _%port116418%_))
                      (if (output-port? _%port116467%_)
                          (let ((_%port116472%_ _%port116467%_))
                            (__display-as-string _%x116464%_ _%port116472%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port116467%_)
                            '#!void))))
                  (if (vector? _%x116414%_)
                      (vector-for-each
                       (lambda (_%$%g116483116485%_)
                         (let* ((_%x116488%_ _%$%g116483116485%_)
                                (_%port116491%_ _%port116418%_))
                           (if (output-port? _%port116491%_)
                               (let ((_%port116496%_ _%port116491%_))
                                 (__display-as-string
                                  _%x116488%_
                                  _%port116496%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port116491%_)
                                 '#!void))))
                       _%x116414%_)
                      (if (or (null? _%x116414%_)
                              (eq? _%x116414%_ '#!void)
                              (eof-object? _%x116414%_)
                              (boolean? _%x116414%_))
                          '#!void
                          (let ()
                            (raise-contract-violation-error
                             '"cannot convert as string"
                             'value:
                             _%x116414%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x116399%_ _%port116400%_)
        (if (output-port? _%port116400%_)
            (let ((_%port116404%_ _%port116400%_))
              (__display-as-string _%x116399%_ _%port116404%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@616.28-616.32"
               'contract:
               'output-port?
               'value:
               _%port116400%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x116339%_)
        (if (string? _%x116339%_)
            _%x116339%_
            (if (symbol? _%x116339%_)
                (let () (declare (not safe)) (##symbol->string _%x116339%_))
                (if (keyword? _%x116339%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x116339%_))
                    (if (number? _%x116339%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x116339%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g116345116347%_)
                           (let* ((_%x116350%_ _%x116339%_)
                                  (_%port116353%_ _%$%g116345116347%_))
                             (if (output-port? _%port116353%_)
                                 (let ((_%port116358%_ _%port116353%_))
                                   (__display-as-string
                                    _%x116350%_
                                    _%port116358%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port116353%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args116372%_
        (call-with-output-string
         '()
         (lambda (_%$%g116373116375%_)
           (let* ((_%x116378%_ _%args116372%_)
                  (_%port116381%_ _%$%g116373116375%_))
             (if (output-port? _%port116381%_)
                 (let ((_%port116386%_ _%port116381%_))
                   (__display-as-string _%x116378%_ _%port116386%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port116381%_)
                   '#!void)))))))
    (define as-string
      (lambda _g122763_
        (let ((_g122764_ (let () (declare (not safe)) (##length _g122763_))))
          (cond ((let () (declare (not safe)) (##fx= _g122764_ 1))
                 (apply as-string__0 _g122763_))
                (#t
                 (apply (lambda _%args116372%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args116372%_)))
                        _g122763_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g122763_))))))
    (define make-symbol__0
      (lambda (_%x116335%_)
        (if (interned-symbol? _%x116335%_)
            _%x116335%_
            (let ((__tmp122765 (as-string__0 _%x116335%_)))
              (declare (not safe))
              (##string->symbol __tmp122765)))))
    (define make-symbol__1
      (lambda _%args116337%_
        (let ((__tmp122766
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args116337%_))))
          (declare (not safe))
          (##string->symbol __tmp122766))))
    (define make-symbol
      (lambda _g122767_
        (let ((_g122768_ (let () (declare (not safe)) (##length _g122767_))))
          (cond ((let () (declare (not safe)) (##fx= _g122768_ 1))
                 (apply make-symbol__0 _g122767_))
                (#t
                 (apply (lambda _%args116337%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args116337%_)))
                        _g122767_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g122767_))))))
    (define make-keyword__0
      (lambda (_%x116331%_)
        (if (interned-keyword? _%x116331%_)
            _%x116331%_
            (let ((__tmp122769 (as-string__0 _%x116331%_)))
              (declare (not safe))
              (##string->keyword __tmp122769)))))
    (define make-keyword__1
      (lambda _%args116333%_
        (let ((__tmp122770
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args116333%_))))
          (declare (not safe))
          (##string->keyword __tmp122770))))
    (define make-keyword
      (lambda _g122771_
        (let ((_g122772_ (let () (declare (not safe)) (##length _g122771_))))
          (cond ((let () (declare (not safe)) (##fx= _g122772_ 1))
                 (apply make-keyword__0 _g122771_))
                (#t
                 (apply (lambda _%args116333%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args116333%_)))
                        _g122771_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g122771_))))))
    (define interned-keyword?
      (lambda (_%x116328%_)
        (if (keyword? _%x116328%_)
            (not (uninterned-keyword? _%x116328%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym116316%_)
        (let ((_%sym116319%_ _%sym116316%_))
          (if (uninterned-symbol? _%sym116319%_)
              (let ((__tmp122773
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym116319%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp122773))
              (let ((__tmp122774
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym116319%_))))
                (declare (not safe))
                (##string->keyword __tmp122774))))))
    (define symbol->keyword
      (lambda (_%sym116302%_)
        (if (symbol? _%sym116302%_)
            (let ((_%sym116306%_ _%sym116302%_))
              (__symbol->keyword _%sym116306%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym116302%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym116290%_)
        (let ((_%sym116293%_ _%sym116290%_))
          (if (uninterned-keyword? _%sym116293%_)
              (let ((__tmp122775
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym116293%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp122775))
              (let ((__tmp122776
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym116293%_))))
                (declare (not safe))
                (##string->symbol __tmp122776))))))
    (define keyword->symbol
      (lambda (_%sym116276%_)
        (if (keyword? _%sym116276%_)
            (let ((_%sym116280%_ _%sym116276%_))
              (__keyword->symbol _%sym116280%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym116276%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr116236%_ _%enc116237%_)
        (let* ((_%bstr116240%_ _%bstr116236%_) (_%enc116248%_ _%enc116237%_))
          (if (eq? _%enc116248%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr116240%_))
              (let* ((_%in116257%_
                      (open-input-u8vector
                       (list 'char-encoding:
                             _%enc116248%_
                             'init:
                             _%bstr116240%_)))
                     (_%len116259%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr116240%_)))
                     (_%out116261%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len116259%_)))
                     (_%n116263%_
                      (read-substring
                       _%out116261%_
                       '0
                       _%len116259%_
                       _%in116257%_)))
                (string-shrink! _%out116261%_ _%n116263%_)
                _%out116261%_)))))
    (define __bytes->string__0
      (lambda (_%bstr116269%_)
        (let ((_%enc116271%_ 'UTF-8))
          (__bytes->string__% _%bstr116269%_ _%enc116271%_))))
    (define __bytes->string
      (lambda _g122777_
        (let ((_g122778_ (let () (declare (not safe)) (##length _g122777_))))
          (cond ((let () (declare (not safe)) (##fx= _g122778_ 1))
                 (apply __bytes->string__0 _g122777_))
                ((let () (declare (not safe)) (##fx= _g122778_ 2))
                 (apply __bytes->string__% _g122777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g122777_))))))
    (define bytes->string__%
      (lambda (_%bstr116200%_ _%enc116201%_)
        (if (u8vector? _%bstr116200%_)
            (let ((_%bstr116205%_ _%bstr116200%_))
              (if (symbol? _%enc116201%_)
                  (let ((_%enc116215%_ _%enc116201%_))
                    (__bytes->string__% _%bstr116205%_ _%enc116215%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc116201%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr116200%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr116228%_)
        (let ((_%enc116230%_ 'UTF-8))
          (bytes->string__% _%bstr116228%_ _%enc116230%_))))
    (define bytes->string
      (lambda _g122779_
        (let ((_g122780_ (let () (declare (not safe)) (##length _g122779_))))
          (cond ((let () (declare (not safe)) (##fx= _g122780_ 1))
                 (apply bytes->string__0 _g122779_))
                ((let () (declare (not safe)) (##fx= _g122780_ 2))
                 (apply bytes->string__% _g122779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g122779_))))))
    (define __string->bytes__%
      (lambda (_%str116118%_ _%enc116119%_)
        (let* ((_%str116122%_ _%str116118%_) (_%enc116130%_ _%enc116119%_))
          (if (eq? _%enc116130%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str116122%_))
              (let* ((_%str116139%_ _%str116122%_)
                     (_%start116142%_ '0)
                     (_%end116145%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str116122%_)))
                     (_%enc116148%_ _%enc116130%_)
                     (_%str116153%_ _%str116139%_))
                (if (nonnegative-fixnum? _%start116142%_)
                    (let ((_%start116169%_ _%start116142%_))
                      (if (nonnegative-fixnum? _%end116145%_)
                          (let ((_%end116179%_ _%end116145%_))
                            (__substring->bytes__%
                             _%str116153%_
                             _%start116169%_
                             _%end116179%_
                             _%enc116148%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end116145%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start116142%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str116192%_)
        (let ((_%enc116194%_ 'UTF-8))
          (__string->bytes__% _%str116192%_ _%enc116194%_))))
    (define __string->bytes
      (lambda _g122781_
        (let ((_g122782_ (let () (declare (not safe)) (##length _g122781_))))
          (cond ((let () (declare (not safe)) (##fx= _g122782_ 1))
                 (apply __string->bytes__0 _g122781_))
                ((let () (declare (not safe)) (##fx= _g122782_ 2))
                 (apply __string->bytes__% _g122781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g122781_))))))
    (define string->bytes__%
      (lambda (_%str116082%_ _%enc116083%_)
        (if (string? _%str116082%_)
            (let ((_%str116087%_ _%str116082%_))
              (if (symbol? _%enc116083%_)
                  (let ((_%enc116097%_ _%enc116083%_))
                    (__string->bytes__% _%str116087%_ _%enc116097%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc116083%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str116082%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str116110%_)
        (let ((_%enc116112%_ 'UTF-8))
          (string->bytes__% _%str116110%_ _%enc116112%_))))
    (define string->bytes
      (lambda _g122783_
        (let ((_g122784_ (let () (declare (not safe)) (##length _g122783_))))
          (cond ((let () (declare (not safe)) (##fx= _g122784_ 1))
                 (apply string->bytes__0 _g122783_))
                ((let () (declare (not safe)) (##fx= _g122784_ 2))
                 (apply string->bytes__% _g122783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g122783_))))))
    (define __substring->bytes__%
      (lambda (_%str116034%_ _%start116035%_ _%end116036%_ _%enc116037%_)
        (let* ((_%str116040%_ _%str116034%_)
               (_%start116048%_ _%start116035%_)
               (_%end116056%_ _%end116036%_))
          (if (eq? _%enc116037%_ 'UTF-8)
              (string->utf8 _%str116040%_ _%start116048%_ _%end116056%_)
              (let ((_%out116065%_
                     (open-output-u8vector
                      (list 'char-encoding: _%enc116037%_))))
                (write-substring
                 _%str116040%_
                 _%start116048%_
                 _%end116056%_
                 _%out116065%_)
                (get-output-u8vector _%out116065%_))))))
    (define __substring->bytes__0
      (lambda (_%str116070%_ _%start116071%_ _%end116072%_)
        (let ((_%enc116074%_ 'UTF-8))
          (__substring->bytes__%
           _%str116070%_
           _%start116071%_
           _%end116072%_
           _%enc116074%_))))
    (define __substring->bytes
      (lambda _g122785_
        (let ((_g122786_ (let () (declare (not safe)) (##length _g122785_))))
          (cond ((let () (declare (not safe)) (##fx= _g122786_ 3))
                 (apply __substring->bytes__0 _g122785_))
                ((let () (declare (not safe)) (##fx= _g122786_ 4))
                 (apply __substring->bytes__% _g122785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g122785_))))))
    (define substring->bytes__%
      (lambda (_%str115982%_ _%start115983%_ _%end115984%_ _%enc115985%_)
        (if (string? _%str115982%_)
            (let ((_%str115989%_ _%str115982%_))
              (if (nonnegative-fixnum? _%start115983%_)
                  (let ((_%start115999%_ _%start115983%_))
                    (if (nonnegative-fixnum? _%end115984%_)
                        (let ((_%end116009%_ _%end115984%_))
                          (__substring->bytes__%
                           _%str115989%_
                           _%start115999%_
                           _%end116009%_
                           _%enc115985%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end115984%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start115983%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str115982%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str116022%_ _%start116023%_ _%end116024%_)
        (let ((_%enc116026%_ 'UTF-8))
          (substring->bytes__%
           _%str116022%_
           _%start116023%_
           _%end116024%_
           _%enc116026%_))))
    (define substring->bytes
      (lambda _g122787_
        (let ((_g122788_ (let () (declare (not safe)) (##length _g122787_))))
          (cond ((let () (declare (not safe)) (##fx= _g122788_ 3))
                 (apply substring->bytes__0 _g122787_))
                ((let () (declare (not safe)) (##fx= _g122788_ 4))
                 (apply substring->bytes__% _g122787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g122787_))))))
    (define __string-empty?
      (lambda (_%str115969%_)
        (let* ((_%str115972%_ _%str115969%_)
               (__tmp122789
                (let () (declare (not safe)) (##string-length _%str115972%_))))
          (declare (not safe))
          (##fxzero? __tmp122789))))
    (define string-empty?
      (lambda (_%str115955%_)
        (if (string? _%str115955%_)
            (let ((_%str115959%_ _%str115955%_))
              (__string-empty? _%str115959%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str115955%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str115789%_ _%criterion115790%_ _%start115791%_ _%end115792%_)
        (let* ((_%str115795%_ _%str115789%_)
               (_%start115803%_ _%start115791%_)
               (_%end115811%_ _%end115792%_)
               (_%end115823%_
                (let ((_%$e115820%_ _%end115811%_))
                  (if _%$e115820%_
                      _%$e115820%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str115795%_))))))
          (if (< _%start115803%_ '0)
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-index"
                 'value:
                 (cons _%str115795%_ (cons _%start115803%_ '())))
                '#!void)
              (if (> _%end115823%_
                     (let ()
                       (declare (not safe))
                       (##string-length _%str115795%_)))
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-index"
                     'value:
                     (cons _%str115795%_ (cons _%end115823%_ '())))
                    '#!void)
                  (if (char? _%criterion115790%_)
                      (let* ((_%str115828%_ _%str115795%_)
                             (_%char115831%_ _%criterion115790%_)
                             (_%start115834%_ _%start115803%_)
                             (_%end115837%_ _%end115823%_)
                             (_%str115841%_ _%str115828%_)
                             (_%char115857%_ _%char115831%_)
                             (_%start115865%_ _%start115834%_)
                             (_%end115873%_ _%end115837%_))
                        (____string-index/char
                         _%str115841%_
                         _%char115857%_
                         _%start115865%_
                         _%end115873%_))
                      (if (procedure? _%criterion115790%_)
                          (let* ((_%str115883%_ _%str115795%_)
                                 (_%pred?115886%_ _%criterion115790%_)
                                 (_%start115889%_ _%start115803%_)
                                 (_%end115892%_ _%end115823%_)
                                 (_%str115896%_ _%str115883%_)
                                 (_%pred?115908%_ _%pred?115886%_)
                                 (_%start115916%_ _%start115889%_)
                                 (_%end115924%_ _%end115892%_))
                            (____string-index/pred
                             _%str115896%_
                             _%pred?115908%_
                             _%start115916%_
                             _%end115924%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-index criterion must be char or procedure"
                             'value:
                             _%criterion115790%_)
                            '#!void))))))))
    (define __string-index__0
      (lambda (_%str115937%_ _%criterion115938%_)
        (let* ((_%start115940%_ '0) (_%end115942%_ '#f))
          (__string-index__%
           _%str115937%_
           _%criterion115938%_
           _%start115940%_
           _%end115942%_))))
    (define __string-index__1
      (lambda (_%str115944%_ _%criterion115945%_ _%start115946%_)
        (let ((_%end115948%_ '#f))
          (__string-index__%
           _%str115944%_
           _%criterion115945%_
           _%start115946%_
           _%end115948%_))))
    (define __string-index
      (lambda _g122790_
        (let ((_g122791_ (let () (declare (not safe)) (##length _g122790_))))
          (cond ((let () (declare (not safe)) (##fx= _g122791_ 2))
                 (apply __string-index__0 _g122790_))
                ((let () (declare (not safe)) (##fx= _g122791_ 3))
                 (apply __string-index__1 _g122790_))
                ((let () (declare (not safe)) (##fx= _g122791_ 4))
                 (apply __string-index__% _g122790_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g122790_))))))
    (define string-index__%
      (lambda (_%str115724%_ _%criterion115725%_ _%start115726%_ _%end115727%_)
        (if (string? _%str115724%_)
            (let ((_%str115731%_ _%str115724%_))
              (if (nonnegative-fixnum? _%start115726%_)
                  (let ((_%start115741%_ _%start115726%_))
                    (if (or (not _%end115727%_) (fixnum? _%end115727%_))
                        (let ((_%end115757%_ _%end115727%_))
                          (__string-index__%
                           _%str115731%_
                           _%criterion115725%_
                           _%start115741%_
                           _%end115757%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@712.21-712.24"
                           'contract:
                           '(? (or not fixnum?))
                           'value:
                           _%end115727%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@711.21-711.26"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start115726%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@709.21-709.24"
               'contract:
               'string?
               'value:
               _%str115724%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str115770%_ _%criterion115771%_)
        (let* ((_%start115773%_ '0) (_%end115775%_ '#f))
          (string-index__%
           _%str115770%_
           _%criterion115771%_
           _%start115773%_
           _%end115775%_))))
    (define string-index__1
      (lambda (_%str115777%_ _%criterion115778%_ _%start115779%_)
        (let ((_%end115781%_ '#f))
          (string-index__%
           _%str115777%_
           _%criterion115778%_
           _%start115779%_
           _%end115781%_))))
    (define string-index
      (lambda _g122792_
        (let ((_g122793_ (let () (declare (not safe)) (##length _g122792_))))
          (cond ((let () (declare (not safe)) (##fx= _g122793_ 2))
                 (apply string-index__0 _g122792_))
                ((let () (declare (not safe)) (##fx= _g122793_ 3))
                 (apply string-index__1 _g122792_))
                ((let () (declare (not safe)) (##fx= _g122793_ 4))
                 (apply string-index__% _g122792_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g122792_))))))
    (define ____string-index/char
      (lambda (_%str115669%_ _%char115670%_ _%start115671%_ _%end115672%_)
        (let* ((_%str115675%_ _%str115669%_)
               (_%char115683%_ _%char115670%_)
               (_%start115691%_ _%start115671%_)
               (_%end115699%_ _%end115672%_))
          (let _%lp115708%_ ((_%k115710%_ _%start115691%_))
            (let ((_%k115712%_ _%k115710%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k115712%_ _%end115699%_))
                  (if (eq? _%char115683%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str115675%_ _%k115712%_)))
                      _%k115712%_
                      (_%lp115708%_
                       (let () (declare (not safe)) (##fx+ _%k115712%_ '1))))
                  '#f))))))
    (define __string-index/char
      (lambda (_%str115630%_ _%char115631%_ _%start115632%_ _%end115633%_)
        (let* ((_%str115636%_ _%str115630%_)
               (_%char115644%_ _%char115631%_)
               (_%start115652%_ _%start115632%_)
               (_%end115660%_ _%end115633%_))
          (____string-index/char
           _%str115636%_
           _%char115644%_
           _%start115652%_
           _%end115660%_))))
    (define ____string-index/pred
      (lambda (_%str115576%_ _%pred?115577%_ _%start115578%_ _%end115579%_)
        (let* ((_%str115582%_ _%str115576%_)
               (_%pred?115590%_ _%pred?115577%_)
               (_%start115598%_ _%start115578%_)
               (_%end115606%_ _%end115579%_))
          (let _%lp115615%_ ((_%k115617%_ _%start115598%_))
            (let ((_%k115619%_ _%k115617%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k115619%_ _%end115606%_))
                  (if (let ((__tmp122794
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str115582%_ _%k115619%_))))
                        (declare (not safe))
                        (_%pred?115590%_ __tmp122794))
                      _%k115619%_
                      (_%lp115615%_
                       (let () (declare (not safe)) (##fx+ _%k115619%_ '1))))
                  '#f))))))
    (define __string-index/pred
      (lambda (_%str115537%_ _%pred?115538%_ _%start115539%_ _%end115540%_)
        (let* ((_%str115543%_ _%str115537%_)
               (_%pred?115551%_ _%pred?115538%_)
               (_%start115559%_ _%start115539%_)
               (_%end115567%_ _%end115540%_))
          (____string-index/pred
           _%str115543%_
           _%pred?115551%_
           _%start115559%_
           _%end115567%_))))
    (define __string-rindex__%
      (lambda (_%str115377%_ _%criterion115378%_ _%start115379%_ _%end115380%_)
        (let* ((_%str115383%_ _%str115377%_)
               (_%start115391%_ _%start115379%_)
               (_%end115399%_ _%end115380%_))
          (if (>= _%start115391%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str115383%_)))
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-rindex"
                 'value:
                 (cons _%str115383%_ (cons _%start115391%_ '())))
                '#!void)
              (if (< _%end115399%_ '0)
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-rindex"
                     'value:
                     (cons _%str115383%_ (cons _%end115399%_ '())))
                    '#!void)
                  (if (char? _%criterion115378%_)
                      (let* ((_%str115411%_ _%str115383%_)
                             (_%char115414%_ _%criterion115378%_)
                             (_%start115417%_ _%start115391%_)
                             (_%end115420%_ _%end115399%_)
                             (_%str115424%_ _%str115411%_)
                             (_%char115439%_ _%char115414%_)
                             (_%start115447%_ _%start115417%_)
                             (_%end115455%_ _%end115420%_))
                        (____string-rindex/char
                         _%str115424%_
                         _%char115439%_
                         _%start115447%_
                         _%end115455%_))
                      (if (procedure? _%criterion115378%_)
                          (let* ((_%str115465%_ _%str115383%_)
                                 (_%pred?115468%_ _%criterion115378%_)
                                 (_%start115471%_ _%start115391%_)
                                 (_%end115474%_ _%end115399%_)
                                 (_%str115478%_ _%str115465%_)
                                 (_%pred?115490%_ _%pred?115468%_)
                                 (_%start115498%_ _%start115471%_)
                                 (_%end115506%_ _%end115474%_))
                            (____string-rindex/pred
                             _%str115478%_
                             _%pred?115490%_
                             _%start115498%_
                             _%end115506%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-rindex criterion must be char or procedure"
                             'value:
                             _%criterion115378%_)
                            '#!void))))))))
    (define __string-rindex__0
      (lambda (_%str115519%_ _%criterion115520%_)
        (let* ((_%start115522%_
                (let ((__tmp122795 (string-length _%str115519%_)))
                  (declare (not safe))
                  (##fx- __tmp122795 '1)))
               (_%end115524%_ '0))
          (__string-rindex__%
           _%str115519%_
           _%criterion115520%_
           _%start115522%_
           _%end115524%_))))
    (define __string-rindex__1
      (lambda (_%str115526%_ _%criterion115527%_ _%start115528%_)
        (let ((_%end115530%_ '0))
          (__string-rindex__%
           _%str115526%_
           _%criterion115527%_
           _%start115528%_
           _%end115530%_))))
    (define __string-rindex
      (lambda _g122796_
        (let ((_g122797_ (let () (declare (not safe)) (##length _g122796_))))
          (cond ((let () (declare (not safe)) (##fx= _g122797_ 2))
                 (apply __string-rindex__0 _g122796_))
                ((let () (declare (not safe)) (##fx= _g122797_ 3))
                 (apply __string-rindex__1 _g122796_))
                ((let () (declare (not safe)) (##fx= _g122797_ 4))
                 (apply __string-rindex__% _g122796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g122796_))))))
    (define string-rindex__%
      (lambda (_%str115318%_ _%criterion115319%_ _%start115320%_ _%end115321%_)
        (if (string? _%str115318%_)
            (let ((_%str115325%_ _%str115318%_))
              (if (fixnum? _%start115320%_)
                  (let ((_%start115335%_ _%start115320%_))
                    (if (fixnum? _%end115321%_)
                        (let ((_%end115345%_ _%end115321%_))
                          (__string-rindex__%
                           _%str115325%_
                           _%criterion115319%_
                           _%start115335%_
                           _%end115345%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.22-756.25"
                           'contract:
                           'fixnum?
                           'value:
                           _%end115321%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.22-755.27"
                     'contract:
                     'fixnum?
                     'value:
                     _%start115320%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@753.22-753.25"
               'contract:
               'string?
               'value:
               _%str115318%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str115358%_ _%criterion115359%_)
        (let* ((_%start115361%_
                (let ((__tmp122798 (string-length _%str115358%_)))
                  (declare (not safe))
                  (##fx- __tmp122798 '1)))
               (_%end115363%_ '0))
          (string-rindex__%
           _%str115358%_
           _%criterion115359%_
           _%start115361%_
           _%end115363%_))))
    (define string-rindex__1
      (lambda (_%str115365%_ _%criterion115366%_ _%start115367%_)
        (let ((_%end115369%_ '0))
          (string-rindex__%
           _%str115365%_
           _%criterion115366%_
           _%start115367%_
           _%end115369%_))))
    (define string-rindex
      (lambda _g122799_
        (let ((_g122800_ (let () (declare (not safe)) (##length _g122799_))))
          (cond ((let () (declare (not safe)) (##fx= _g122800_ 2))
                 (apply string-rindex__0 _g122799_))
                ((let () (declare (not safe)) (##fx= _g122800_ 3))
                 (apply string-rindex__1 _g122799_))
                ((let () (declare (not safe)) (##fx= _g122800_ 4))
                 (apply string-rindex__% _g122799_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g122799_))))))
    (define ____string-rindex/char
      (lambda (_%str115263%_ _%char115264%_ _%start115265%_ _%end115266%_)
        (let* ((_%str115269%_ _%str115263%_)
               (_%char115277%_ _%char115264%_)
               (_%start115285%_ _%start115265%_)
               (_%end115293%_ _%end115266%_))
          (let _%lp115302%_ ((_%k115304%_ _%start115285%_))
            (let ((_%k115306%_ _%k115304%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k115306%_ _%end115293%_))
                  (if (eq? _%char115277%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str115269%_ _%k115306%_)))
                      _%k115306%_
                      (_%lp115302%_
                       (let () (declare (not safe)) (##fx- _%k115306%_ '1))))
                  '#f))))))
    (define __string-rindex/char
      (lambda (_%str115224%_ _%char115225%_ _%start115226%_ _%end115227%_)
        (let* ((_%str115230%_ _%str115224%_)
               (_%char115238%_ _%char115225%_)
               (_%start115246%_ _%start115226%_)
               (_%end115254%_ _%end115227%_))
          (____string-rindex/char
           _%str115230%_
           _%char115238%_
           _%start115246%_
           _%end115254%_))))
    (define ____string-rindex/pred
      (lambda (_%str115170%_ _%pred?115171%_ _%start115172%_ _%end115173%_)
        (let* ((_%str115176%_ _%str115170%_)
               (_%pred?115184%_ _%pred?115171%_)
               (_%start115192%_ _%start115172%_)
               (_%end115200%_ _%end115173%_))
          (let _%lp115209%_ ((_%k115211%_ _%start115192%_))
            (let ((_%k115213%_ _%k115211%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k115213%_ _%end115200%_))
                  (if (let ((__tmp122801
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str115176%_ _%k115213%_))))
                        (declare (not safe))
                        (_%pred?115184%_ __tmp122801))
                      _%k115213%_
                      (_%lp115209%_
                       (let () (declare (not safe)) (##fx- _%k115213%_ '1))))
                  '#f))))))
    (define __string-rindex/pred
      (lambda (_%str115131%_ _%pred?115132%_ _%start115133%_ _%end115134%_)
        (let* ((_%str115137%_ _%str115131%_)
               (_%pred?115145%_ _%pred?115132%_)
               (_%start115153%_ _%start115133%_)
               (_%end115161%_ _%end115134%_))
          (____string-rindex/pred
           _%str115137%_
           _%pred?115145%_
           _%start115153%_
           _%end115161%_))))
    (define __string-split
      (lambda (_%str115019%_ _%char115020%_)
        (let* ((_%str115023%_ _%str115019%_)
               (_%char115031%_ _%char115020%_)
               (_%len115040%_
                (let () (declare (not safe)) (##string-length _%str115023%_))))
          (let _%lp115042%_ ((_%start115044%_ '0) (_%r115045%_ '()))
            (let* ((_%start115048%_ _%start115044%_)
                   (_%$e115116%_
                    (let* ((_%str115061%_ _%str115023%_)
                           (_%criterion115064%_ _%char115031%_)
                           (_%start115067%_ _%start115048%_)
                           (_%end115070%_ '#f)
                           (_%str115075%_ _%str115061%_))
                      (if (nonnegative-fixnum? _%start115067%_)
                          (let ((_%start115090%_ _%start115067%_))
                            (if (let ((_%$e115102%_ '#t))
                                  (and _%$e115102%_ _%$e115102%_))
                                (let ((_%end115106%_ _%end115070%_))
                                  (__string-index__%
                                   _%str115075%_
                                   _%criterion115064%_
                                   _%start115090%_
                                   _%end115106%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   '(? (or not fixnum?))
                                   'value:
                                   _%end115070%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start115067%_)
                            '#!void)))))
              (if _%$e115116%_
                  (let ((_%end115121%_ _%$e115116%_))
                    (_%lp115042%_
                     (let () (declare (not safe)) (##fx+ _%end115121%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str115023%_
                              _%start115048%_
                              _%end115121%_))
                           _%r115045%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start115048%_ _%len115040%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str115023%_
                                _%start115048%_
                                _%len115040%_)))
                       _%r115045%_)
                      (reverse! _%r115045%_))))))))
    (define string-split
      (lambda (_%str114994%_ _%char114995%_)
        (if (string? _%str114994%_)
            (let ((_%str114999%_ _%str114994%_))
              (if (char? _%char114995%_)
                  (let ((_%char115009%_ _%char114995%_))
                    (__string-split _%str114999%_ _%char115009%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@794.37-794.41"
                     'contract:
                     'char?
                     'value:
                     _%char114995%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@794.21-794.24"
               'contract:
               'string?
               'value:
               _%str114994%_)
              '#!void))))
    (define string-join
      (lambda (_%strs114844%_ _%join114845%_)
        (letrec ((_%join-length114848%_
                  (lambda (_%strs114932%_ _%jlen114933%_)
                    (let _%lp114935%_ ((_%rest114937%_ _%strs114932%_)
                                       (_%len114938%_ '0))
                      (let* ((_%len114940%_ _%len114938%_)
                             (_%$%rest114948114956%_ _%rest114937%_)
                             (_%$%else114950114964%_ (lambda () '0))
                             (_%$%K114952114982%_
                              (lambda (_%rest114967%_ _%hd114968%_)
                                (if (string? _%hd114968%_)
                                    (let ((_%hd114970%_ _%hd114968%_))
                                      (if (pair? _%rest114967%_)
                                          (_%lp114935%_
                                           _%rest114967%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd114970%_))
                                                _%jlen114933%_
                                                _%len114940%_))
                                          (let ((__tmp122802
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd114970%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp122802
                                                   _%len114940%_))))
                                    (begin
                                      (raise-contract-violation-error
                                       '"expected string"
                                       'value:
                                       _%hd114968%_)
                                      '#!void)))))
                        (if (pair? _%$%rest114948114956%_)
                            (let ((_%$%hd114953114985%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest114948114956%_)))
                                  (_%$%tl114954114987%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest114948114956%_))))
                              (let* ((_%hd114990%_ _%$%hd114953114985%_)
                                     (_%rest114992%_ _%$%tl114954114987%_))
                                (_%$%K114952114982%_
                                 _%rest114992%_
                                 _%hd114990%_)))
                            (_%$%else114950114964%_)))))))
          (let* ((_%join114853%_
                  (if (char? _%join114845%_)
                      (let () (declare (not safe)) (##string _%join114845%_))
                      (if (string? _%join114845%_)
                          _%join114845%_
                          (let ()
                            (raise-contract-violation-error
                             '"expected string or char"
                             'value:
                             _%join114845%_)
                            '#!void))))
                 (_%jlen114855%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join114853%_)))
                 (_%olen114857%_
                  (_%join-length114848%_ _%strs114844%_ _%jlen114855%_))
                 (_%ostr114859%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen114857%_))))
            (let _%lp114862%_ ((_%rest114864%_ _%strs114844%_)
                               (_%k114865%_ '0))
              (let* ((_%k114868%_ _%k114865%_)
                     (_%$%rest114884114892%_ _%rest114864%_)
                     (_%$%else114886114900%_ (lambda () '""))
                     (_%$%K114888114920%_
                      (lambda (_%rest114903%_ _%hd114904%_)
                        (let* ((_%hd114906%_ _%hd114904%_)
                               (_%hdlen114918%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd114906%_))))
                          (if (pair? _%rest114903%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd114906%_
                                   '0
                                   _%hdlen114918%_
                                   _%ostr114859%_
                                   _%k114868%_))
                                (let ((__tmp122803
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k114868%_ _%hdlen114918%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join114853%_
                                   '0
                                   _%jlen114855%_
                                   _%ostr114859%_
                                   __tmp122803))
                                (_%lp114862%_
                                 _%rest114903%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k114868%_
                                          _%hdlen114918%_
                                          _%jlen114855%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd114906%_
                                   '0
                                   _%hdlen114918%_
                                   _%ostr114859%_
                                   _%k114868%_))
                                _%ostr114859%_))))))
                (if (pair? _%$%rest114884114892%_)
                    (let ((_%$%hd114889114923%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest114884114892%_)))
                          (_%$%tl114890114925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest114884114892%_))))
                      (let* ((_%hd114928%_ _%$%hd114889114923%_)
                             (_%rest114930%_ _%$%tl114890114925%_))
                        (_%$%K114888114920%_ _%rest114930%_ _%hd114928%_)))
                    (_%$%else114886114900%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes114784%_ _%port114785%_ _%start114786%_ _%end114787%_)
        (let* ((_%bytes114790%_ _%bytes114784%_)
               (_%port114798%_ _%port114785%_)
               (_%start114806%_ _%start114786%_)
               (_%end114814%_ _%end114787%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes114790%_
           _%start114806%_
           _%end114814%_
           _%port114798%_))))
    (define __read-u8vector__0
      (lambda (_%bytes114826%_ _%port114827%_)
        (let* ((_%start114829%_ '0)
               (_%end114831%_ (u8vector-length _%bytes114826%_)))
          (__read-u8vector__%
           _%bytes114826%_
           _%port114827%_
           _%start114829%_
           _%end114831%_))))
    (define __read-u8vector__1
      (lambda (_%bytes114833%_ _%port114834%_ _%start114835%_)
        (let ((_%end114837%_ (u8vector-length _%bytes114833%_)))
          (__read-u8vector__%
           _%bytes114833%_
           _%port114834%_
           _%start114835%_
           _%end114837%_))))
    (define __read-u8vector
      (lambda _g122804_
        (let ((_g122805_ (let () (declare (not safe)) (##length _g122804_))))
          (cond ((let () (declare (not safe)) (##fx= _g122805_ 2))
                 (apply __read-u8vector__0 _g122804_))
                ((let () (declare (not safe)) (##fx= _g122805_ 3))
                 (apply __read-u8vector__1 _g122804_))
                ((let () (declare (not safe)) (##fx= _g122805_ 4))
                 (apply __read-u8vector__% _g122804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g122804_))))))
    (define read-u8vector__%
      (lambda (_%bytes114709%_ _%port114710%_ _%start114711%_ _%end114712%_)
        (if (u8vector? _%bytes114709%_)
            (let ((_%bytes114716%_ _%bytes114709%_))
              (if (input-port? _%port114710%_)
                  (let ((_%port114726%_ _%port114710%_))
                    (if (and (fixnum? _%start114711%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start114711%_ '0))
                             (let ((__tmp122806
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes114716%_))))
                               (declare (not safe))
                               (##fx< _%start114711%_ __tmp122806)))
                        (let ((_%start114739%_ _%start114711%_))
                          (if (and (fixnum? _%end114712%_)
                                   (let ((__tmp122807
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes114716%_))))
                                     (declare (not safe))
                                     (##fx<= _%start114739%_
                                             _%end114712%_
                                             __tmp122807)))
                              (let ((_%end114752%_ _%end114712%_))
                                (__read-u8vector__%
                                 _%bytes114716%_
                                 _%port114726%_
                                 _%start114739%_
                                 _%end114752%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/util.ss\"@863.22-863.25"
                                 'contract:
                                 '(in-range-inclusive?
                                   start
                                   (u8vector-length bytes))
                                 'value:
                                 _%end114712%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@861.22-861.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start114711%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@860.22-860.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port114710%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@859.22-859.27"
               'contract:
               'u8vector?
               'value:
               _%bytes114709%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes114765%_ _%port114766%_)
        (let* ((_%start114768%_ '0)
               (_%end114770%_ (u8vector-length _%bytes114765%_)))
          (read-u8vector__%
           _%bytes114765%_
           _%port114766%_
           _%start114768%_
           _%end114770%_))))
    (define read-u8vector__1
      (lambda (_%bytes114772%_ _%port114773%_ _%start114774%_)
        (let ((_%end114776%_ (u8vector-length _%bytes114772%_)))
          (read-u8vector__%
           _%bytes114772%_
           _%port114773%_
           _%start114774%_
           _%end114776%_))))
    (define read-u8vector
      (lambda _g122808_
        (let ((_g122809_ (let () (declare (not safe)) (##length _g122808_))))
          (cond ((let () (declare (not safe)) (##fx= _g122809_ 2))
                 (apply read-u8vector__0 _g122808_))
                ((let () (declare (not safe)) (##fx= _g122809_ 3))
                 (apply read-u8vector__1 _g122808_))
                ((let () (declare (not safe)) (##fx= _g122809_ 4))
                 (apply read-u8vector__% _g122808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g122808_))))))
    (define __write-u8vector__%
      (lambda (_%bytes114648%_ _%port114649%_ _%start114650%_ _%end114651%_)
        (let* ((_%bytes114654%_ _%bytes114648%_)
               (_%port114662%_ _%port114649%_)
               (_%start114670%_ _%start114650%_)
               (_%end114678%_ _%end114651%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes114654%_
           _%start114670%_
           _%end114678%_
           _%port114662%_))))
    (define __write-u8vector__0
      (lambda (_%bytes114690%_ _%port114691%_)
        (let* ((_%start114693%_ '0)
               (_%end114695%_ (u8vector-length _%bytes114690%_)))
          (__write-u8vector__%
           _%bytes114690%_
           _%port114691%_
           _%start114693%_
           _%end114695%_))))
    (define __write-u8vector__1
      (lambda (_%bytes114697%_ _%port114698%_ _%start114699%_)
        (let ((_%end114701%_ (u8vector-length _%bytes114697%_)))
          (__write-u8vector__%
           _%bytes114697%_
           _%port114698%_
           _%start114699%_
           _%end114701%_))))
    (define __write-u8vector
      (lambda _g122810_
        (let ((_g122811_ (let () (declare (not safe)) (##length _g122810_))))
          (cond ((let () (declare (not safe)) (##fx= _g122811_ 2))
                 (apply __write-u8vector__0 _g122810_))
                ((let () (declare (not safe)) (##fx= _g122811_ 3))
                 (apply __write-u8vector__1 _g122810_))
                ((let () (declare (not safe)) (##fx= _g122811_ 4))
                 (apply __write-u8vector__% _g122810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g122810_))))))
    (define write-u8vector__%
      (lambda (_%bytes114578%_ _%port114579%_ _%start114580%_ _%end114581%_)
        (if (u8vector? _%bytes114578%_)
            (let ((_%bytes114585%_ _%bytes114578%_))
              (if (output-port? _%port114579%_)
                  (let* ((_%port114595%_ _%port114579%_)
                         (_%start114604%_ _%start114580%_))
                    (if (and (fixnum? _%end114581%_)
                             (let ((__tmp122812
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes114585%_))))
                               (declare (not safe))
                               (##fx<= _%start114604%_
                                       _%end114581%_
                                       __tmp122812)))
                        (let ((_%end114616%_ _%end114581%_))
                          (__write-u8vector__%
                           _%bytes114585%_
                           _%port114595%_
                           _%start114604%_
                           _%end114616%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@872.23-872.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end114581%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@870.23-870.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port114579%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@869.23-869.28"
               'contract:
               'u8vector?
               'value:
               _%bytes114578%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes114629%_ _%port114630%_)
        (let* ((_%start114632%_ '0)
               (_%end114634%_ (u8vector-length _%bytes114629%_)))
          (write-u8vector__%
           _%bytes114629%_
           _%port114630%_
           _%start114632%_
           _%end114634%_))))
    (define write-u8vector__1
      (lambda (_%bytes114636%_ _%port114637%_ _%start114638%_)
        (let ((_%end114640%_ (u8vector-length _%bytes114636%_)))
          (write-u8vector__%
           _%bytes114636%_
           _%port114637%_
           _%start114638%_
           _%end114640%_))))
    (define write-u8vector
      (lambda _g122813_
        (let ((_g122814_ (let () (declare (not safe)) (##length _g122813_))))
          (cond ((let () (declare (not safe)) (##fx= _g122814_ 2))
                 (apply write-u8vector__0 _g122813_))
                ((let () (declare (not safe)) (##fx= _g122814_ 3))
                 (apply write-u8vector__1 _g122813_))
                ((let () (declare (not safe)) (##fx= _g122814_ 4))
                 (apply write-u8vector__% _g122813_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g122813_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag114546%_
               _%dbg-exprs114547%_
               _%dbg-thunks114548%_
               _%expr114549%_
               _%thunk114550%_)
        (letrec ((_%o114552%_ (current-output-port))
                 (_%e114553%_ (current-error-port))
                 (_%p114554%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f114555%_
                  (lambda ()
                    (force-output _%o114552%_)
                    (force-output _%e114553%_)))
                 (_%d114556%_
                  (lambda (_%x114563%_) (display _%x114563%_ _%e114553%_)))
                 (_%w114557%_
                  (lambda (_%x114565%_) (_%p114554%_ _%x114565%_ _%e114553%_)))
                 (_%n114558%_ (lambda () (newline _%e114553%_)))
                 (_%v114559%_
                  (lambda (_%l114568%_)
                    (for-each
                     (lambda (_%x114570%_)
                       (_%d114556%_ '" ")
                       (_%w114557%_ _%x114570%_))
                     _%l114568%_)
                    (_%n114558%_)))
                 (_%x114560%_
                  (lambda (_%expr114572%_ _%thunk114573%_)
                    (call-with-values
                     _%thunk114573%_
                     (lambda _%x114575%_
                       (_%f114555%_)
                       (_%d114556%_ '"  ")
                       (_%w114557%_ _%expr114572%_)
                       (_%d114556%_ '" =>")
                       (_%v114559%_ _%x114575%_)
                       (_%f114555%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x114575%_)))))))
          (if _%tag114546%_
              (begin
                (if (eq? _%tag114546%_ '#!void)
                    '#!void
                    (begin
                      (_%f114555%_)
                      (_%d114556%_ _%tag114546%_)
                      (_%n114558%_)))
                (for-each _%x114560%_ _%dbg-exprs114547%_ _%dbg-thunks114548%_)
                (if _%thunk114550%_
                    (_%x114560%_ _%expr114549%_ _%thunk114550%_)
                    '#!void))
              (if _%thunk114550%_ (_%thunk114550%_) '#!void)))))))
