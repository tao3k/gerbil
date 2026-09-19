(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1789839221)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args119999%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args119999%_))
          (newline))))
    (define display*
      (lambda _%args119996%_
        (let () (declare (not safe)) (##for-each display _%args119996%_))))
    (define __file-newer?
      (lambda (_%file1119787%_ _%file2119788%_)
        (let* ((_%file1119791%_ _%file1119787%_)
               (_%file2119799%_ _%file2119788%_))
          (letrec ((_%__modification-time119943%_
                    (lambda (_%file119984%_)
                      (let* ((_%file119987%_ _%file119984%_)
                             (__tmp122879
                              (let ((__tmp122880
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file119987%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp122880))))
                        (declare (not safe))
                        (##time->seconds __tmp122879))))
                   (_%modification-time119944%_
                    (lambda (_%file119972%_)
                      (let ((_%file119975%_ _%file119972%_))
                        (_%__modification-time119943%_ _%file119975%_)))))
            (let ((__tmp122882
                   (let* ((_%file119946%_ _%file1119791%_)
                          (_%file119950%_ _%file119946%_))
                     (_%__modification-time119943%_ _%file119950%_)))
                  (__tmp122881
                   (let* ((_%file119959%_ _%file2119799%_)
                          (_%file119963%_ _%file119959%_))
                     (_%__modification-time119943%_ _%file119963%_))))
              (declare (not safe))
              (##fl> __tmp122882 __tmp122881))))))
    (define file-newer?
      (lambda (_%file1119762%_ _%file2119763%_)
        (if (string? _%file1119762%_)
            (let ((_%file1119767%_ _%file1119762%_))
              (if (string? _%file2119763%_)
                  (let ((_%file2119777%_ _%file2119763%_))
                    (__file-newer? _%file1119767%_ _%file2119777%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2119763%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1119762%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir119472%_ _%perms119473%_)
        (let* ((_%dir119476%_ _%dir119472%_) (_%perms119484%_ _%perms119473%_))
          (letrec ((_%__create1119628%_
                    (lambda (_%path119737%_)
                      (let ((_%path119740%_ _%path119737%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path119740%_))
                            (if (eq? (file-type _%path119740%_) 'directory)
                                '#!void
                                (begin
                                  (raise-contract-violation-error
                                   '"Path component is not a directory"
                                   'value:
                                   _%path119740%_)
                                  '#!void))
                            (if _%perms119484%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path119740%_
                                             (cons 'permissions:
                                                   (cons _%perms119484%_
                                                         '())))))
                                (create-directory _%path119740%_))))))
                   (_%create1119629%_
                    (lambda (_%path119725%_)
                      (let ((_%path119728%_ _%path119725%_))
                        (_%__create1119628%_ _%path119728%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir119476%_))
                '#!void
                (let _%lp119631%_ ((_%start119633%_ '0))
                  (let ((_%$e119690%_
                         (let* ((_%str119635%_ _%dir119476%_)
                                (_%criterion119638%_ '#\/)
                                (_%start119641%_ _%start119633%_)
                                (_%end119644%_ '#f)
                                (_%str119649%_ _%str119635%_))
                           (if (nonnegative-fixnum? _%start119641%_)
                               (let ((_%start119664%_ _%start119641%_))
                                 (if (let ((_%$e119676%_ '#t))
                                       (and _%$e119676%_ _%$e119676%_))
                                     (let ((_%end119680%_ _%end119644%_))
                                       (__string-index__%
                                        _%str119649%_
                                        _%criterion119638%_
                                        _%start119664%_
                                        _%end119680%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/util
                                        'contract:
                                        '(? (or not fixnum?))
                                        'value:
                                        _%end119644%_)
                                       '#!void)))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start119641%_)
                                 '#!void)))))
                    (if _%$e119690%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e119690%_ '0))
                              (let* ((_%path119695%_
                                      (substring
                                       _%dir119476%_
                                       '0
                                       _%$e119690%_))
                                     (_%path119699%_ _%path119695%_))
                                (_%__create1119628%_ _%path119699%_))
                              '#!void)
                          (_%lp119631%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e119690%_ '1))))
                        (let* ((_%path119711%_ _%dir119476%_)
                               (_%path119715%_ _%path119711%_))
                          (_%__create1119628%_ _%path119715%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir119755%_)
        (let ((_%perms119757%_ '493))
          (__create-directory*__% _%dir119755%_ _%perms119757%_))))
    (define __create-directory*
      (lambda _g122883_
        (let ((_g122884_ (let () (declare (not safe)) (##length _g122883_))))
          (cond ((let () (declare (not safe)) (##fx= _g122884_ 1))
                 (apply __create-directory*__0 _g122883_))
                ((let () (declare (not safe)) (##fx= _g122884_ 2))
                 (apply __create-directory*__% _g122883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g122883_))))))
    (define create-directory*__%
      (lambda (_%dir119436%_ _%perms119437%_)
        (if (string? _%dir119436%_)
            (let ((_%dir119441%_ _%dir119436%_))
              (if (fixnum? _%perms119437%_)
                  (let ((_%perms119451%_ _%perms119437%_))
                    (__create-directory*__% _%dir119441%_ _%perms119451%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms119437%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir119436%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir119464%_)
        (let ((_%perms119466%_ '493))
          (create-directory*__% _%dir119464%_ _%perms119466%_))))
    (define create-directory*
      (lambda _g122885_
        (let ((_g122886_ (let () (declare (not safe)) (##length _g122885_))))
          (cond ((let () (declare (not safe)) (##fx= _g122886_ 1))
                 (apply create-directory*__0 _g122885_))
                ((let () (declare (not safe)) (##fx= _g122886_ 2))
                 (apply create-directory*__% _g122885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g122885_))))))
    (define __move-file__%
      (lambda (_%src119379%_ _%dest119380%_ _%replace?119381%_)
        (let* ((_%src119384%_ _%src119379%_)
               (_%dest119392%_ _%dest119380%_)
               (_%replace?119400%_ _%replace?119381%_))
          (letrec ((_%force-move-it119409%_
                    (lambda ()
                      (let ((_%tmp119415%_
                             (if _%replace?119400%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest119392%_))
                                     (let ((__tmp122887
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest119392%_
                                        '"."
                                        __tmp122887))
                                     '#f)
                                 '#f)))
                        (if _%tmp119415%_
                            (let ()
                              (declare (not safe))
                              (##rename-file _%dest119392%_ _%tmp119415%_))
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e119417%_)
                           (if _%tmp119415%_
                               (let ()
                                 (declare (not safe))
                                 (##rename-file
                                  _%tmp119415%_
                                  _%dest119392%_
                                  '#t))
                               '#!void)
                           (raise _%e119417%_))
                         (lambda ()
                           (let ((_%fi119420%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src119384%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi119420%_))
                                      'symbolic-link)
                                 (let ((__tmp122888
                                        (path-normalize _%src119384%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp122888
                                    _%dest119392%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src119384%_
                                    _%dest119392%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src119384%_))
                           (if _%tmp119415%_
                               (with-exception-catcher
                                void
                                (lambda ()
                                  (let ()
                                    (declare (not safe))
                                    (##delete-file _%tmp119415%_))))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e119411%_)
               (if (let () (declare (not safe)) (##file-exists? _%src119384%_))
                   (_%force-move-it119409%_)
                   (raise _%e119411%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src119384%_
                  _%dest119392%_
                  _%replace?119400%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src119426%_ _%dest119427%_)
        (let ((_%replace?119429%_ '#t))
          (__move-file__% _%src119426%_ _%dest119427%_ _%replace?119429%_))))
    (define __move-file
      (lambda _g122889_
        (let ((_g122890_ (let () (declare (not safe)) (##length _g122889_))))
          (cond ((let () (declare (not safe)) (##fx= _g122890_ 2))
                 (apply __move-file__0 _g122889_))
                ((let () (declare (not safe)) (##fx= _g122890_ 3))
                 (apply __move-file__% _g122889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g122889_))))))
    (define move-file__%
      (lambda (_%src119330%_ _%dest119331%_ _%replace?119332%_)
        (if (string? _%src119330%_)
            (let ((_%src119336%_ _%src119330%_))
              (if (string? _%dest119331%_)
                  (let ((_%dest119346%_ _%dest119331%_))
                    (if (boolean? _%replace?119332%_)
                        (let ((_%replace?119356%_ _%replace?119332%_))
                          (__move-file__%
                           _%src119336%_
                           _%dest119346%_
                           _%replace?119356%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@111.51-111.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?119332%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@111.34-111.38"
                     'contract:
                     'string?
                     'value:
                     _%dest119331%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@111.18-111.21"
               'contract:
               'string?
               'value:
               _%src119330%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src119369%_ _%dest119370%_)
        (let ((_%replace?119372%_ '#t))
          (move-file__% _%src119369%_ _%dest119370%_ _%replace?119372%_))))
    (define move-file
      (lambda _g122891_
        (let ((_g122892_ (let () (declare (not safe)) (##length _g122891_))))
          (cond ((let () (declare (not safe)) (##fx= _g122892_ 2))
                 (apply move-file__0 _g122891_))
                ((let () (declare (not safe)) (##fx= _g122892_ 3))
                 (apply move-file__% _g122891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g122891_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore119326%_ '#t))
    (define true? (lambda (_%obj119323%_) (eq? _%obj119323%_ '#t)))
    (define false (lambda _%ignore119320%_ '#f))
    (define void (lambda _%ignore119317%_ '#!void))
    (define void? (lambda (_%obj119314%_) (eq? _%obj119314%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj119311%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj119311%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj119308%_) (eq? _%obj119308%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj119305%_) (eq? _%obj119305%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj119302%_) (eq? _%obj119302%_ '#!optional)))
    (define immediate?
      (lambda (_%obj119299%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj119299%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj119296%_)
        (if (fixnum? _%obj119296%_)
            (let () (declare (not safe)) (##fx>= _%obj119296%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj119290%_)
        (let ((_%$e119293%_ (pair? _%obj119290%_)))
          (if _%$e119293%_ _%$e119293%_ (null? _%obj119290%_)))))
    (define values-count
      (lambda (_%obj119287%_)
        (if (let () (declare (not safe)) (##values? _%obj119287%_))
            (let () (declare (not safe)) (##values-length _%obj119287%_))
            '1)))
    (define __values-ref
      (lambda (_%obj119274%_ _%k119275%_)
        (let ((_%k119278%_ _%k119275%_))
          (if (let () (declare (not safe)) (##values? _%obj119274%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj119274%_ _%k119278%_))
              _%obj119274%_))))
    (define values-ref
      (lambda (_%obj119259%_ _%k119260%_)
        (if (fixnum? _%k119260%_)
            (let ((_%k119264%_ _%k119260%_))
              (__values-ref _%obj119259%_ _%k119264%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@245.23-245.24"
               'contract:
               'fixnum?
               'value:
               _%k119260%_)
              '#!void))))
    (define values->list
      (lambda (_%obj119256%_)
        (if (let () (declare (not safe)) (##values? _%obj119256%_))
            (let () (declare (not safe)) (##values->list _%obj119256%_))
            (list _%obj119256%_))))
    (define __foldl1
      (lambda (_%f119204%_ _%iv119205%_ _%lst119206%_)
        (let ((_%f119209%_ _%f119204%_))
          (let _%lp119218%_ ((_%rest119220%_ _%lst119206%_)
                             (_%r119221%_ _%iv119205%_))
            (let* ((_%$%rest119222119230%_ _%rest119220%_)
                   (_%$%else119224119238%_ (lambda () _%r119221%_))
                   (_%$%K119226119244%_
                    (lambda (_%rest119241%_ _%x119242%_)
                      (_%lp119218%_
                       _%rest119241%_
                       (let ()
                         (declare (not safe))
                         (_%f119209%_ _%x119242%_ _%r119221%_))))))
              (if (pair? _%$%rest119222119230%_)
                  (let ((_%$%hd119227119247%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest119222119230%_)))
                        (_%$%tl119228119249%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest119222119230%_))))
                    (let* ((_%x119252%_ _%$%hd119227119247%_)
                           (_%rest119254%_ _%$%tl119228119249%_))
                      (_%$%K119226119244%_ _%rest119254%_ _%x119252%_)))
                  (_%$%else119224119238%_)))))))
    (define foldl1
      (lambda (_%f119188%_ _%iv119189%_ _%lst119190%_)
        (if (procedure? _%f119188%_)
            (let ((_%f119194%_ _%f119188%_))
              (__foldl1 _%f119194%_ _%iv119189%_ _%lst119190%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@268.15-268.16"
               'contract:
               'procedure?
               'value:
               _%f119188%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f119101%_ _%iv119102%_ _%lst1119103%_ _%lst2119104%_)
        (let ((_%f119107%_ _%f119101%_))
          (let _%lp119116%_ ((_%rest1119118%_ _%lst1119103%_)
                             (_%rest2119119%_ _%lst2119104%_)
                             (_%r119120%_ _%iv119102%_))
            (let* ((_%$%rest1119121119129%_ _%rest1119118%_)
                   (_%$%else119123119137%_ (lambda () _%r119120%_))
                   (_%$%K119125119176%_
                    (lambda (_%rest1119140%_ _%x1119141%_)
                      (let* ((_%$%rest2119142119150%_ _%rest2119119%_)
                             (_%$%else119144119158%_ (lambda () _%r119120%_))
                             (_%$%K119146119164%_
                              (lambda (_%rest2119161%_ _%x2119162%_)
                                (_%lp119116%_
                                 _%rest1119140%_
                                 _%rest2119161%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f119107%_
                                    _%x1119141%_
                                    _%x2119162%_
                                    _%r119120%_))))))
                        (if (pair? _%$%rest2119142119150%_)
                            (let ((_%$%hd119147119167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2119142119150%_)))
                                  (_%$%tl119148119169%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2119142119150%_))))
                              (let* ((_%x2119172%_ _%$%hd119147119167%_)
                                     (_%rest2119174%_ _%$%tl119148119169%_))
                                (_%$%K119146119164%_
                                 _%rest2119174%_
                                 _%x2119172%_)))
                            (_%$%else119144119158%_))))))
              (if (pair? _%$%rest1119121119129%_)
                  (let ((_%$%hd119126119179%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1119121119129%_)))
                        (_%$%tl119127119181%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1119121119129%_))))
                    (let* ((_%x1119184%_ _%$%hd119126119179%_)
                           (_%rest1119186%_ _%$%tl119127119181%_))
                      (_%$%K119125119176%_ _%rest1119186%_ _%x1119184%_)))
                  (_%$%else119123119137%_)))))))
    (define foldl2
      (lambda (_%f119084%_ _%iv119085%_ _%lst1119086%_ _%lst2119087%_)
        (if (procedure? _%f119084%_)
            (let ((_%f119091%_ _%f119084%_))
              (__foldl2
               _%f119091%_
               _%iv119085%_
               _%lst1119086%_
               _%lst2119087%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@275.15-275.16"
               'contract:
               'procedure?
               'value:
               _%f119084%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f119017%_ _%iv119018%_ _%lst119019%_)
        (let* ((_%f119021%_ _%f119017%_)
               (_%iv119024%_ _%iv119018%_)
               (_%lst119027%_ _%lst119019%_))
          (if (procedure? _%f119021%_)
              (let ((_%f119032%_ _%f119021%_))
                (__foldl1 _%f119032%_ _%iv119024%_ _%lst119027%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119021%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f119045%_ _%iv119046%_ _%lst1119047%_ _%lst2119048%_)
        (let* ((_%f119050%_ _%f119045%_)
               (_%iv119053%_ _%iv119046%_)
               (_%lst1119056%_ _%lst1119047%_)
               (_%lst2119059%_ _%lst2119048%_))
          (if (procedure? _%f119050%_)
              (let ((_%f119064%_ _%f119050%_))
                (__foldl2
                 _%f119064%_
                 _%iv119053%_
                 _%lst1119056%_
                 _%lst2119059%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f119050%_)
                '#!void)))))
    (define foldl
      (lambda _g122893_
        (let ((_g122894_ (let () (declare (not safe)) (##length _g122893_))))
          (cond ((let () (declare (not safe)) (##fx= _g122894_ 3))
                 (apply foldl__0 _g122893_))
                ((let () (declare (not safe)) (##fx= _g122894_ 4))
                 (apply foldl__1 _g122893_))
                ((let () (declare (not safe)) (##fx>= _g122894_ 4))
                 (apply foldl* _g122893_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g122893_))))))
    (define __foldl*
      (lambda (_%f118948%_ _%iv118949%_ . _%rest118950%_)
        (let ((_%f118953%_ _%f118948%_))
          (let _%recur118962%_ ((_%iv118964%_ _%iv118949%_)
                                (_%rest118965%_ _%rest118950%_))
            (if (let* ((_%f118967%_ pair?)
                       (_%lst118970%_ _%rest118965%_)
                       (_%f118975%_ _%f118967%_))
                  (__andmap1 _%f118975%_ _%lst118970%_))
                (_%recur118962%_
                 (let ((__tmp122895
                        (let* ((_%f118994%_
                                (lambda (_%xs118991%_ _%r118992%_)
                                  (cons (car _%xs118991%_) _%r118992%_)))
                               (_%iv118997%_ (list _%iv118964%_))
                               (_%lst119000%_ _%rest118965%_)
                               (_%f119005%_ _%f118994%_))
                          (__foldr1 _%f119005%_ _%iv118997%_ _%lst119000%_))))
                   (declare (not safe))
                   (##apply _%f118953%_ __tmp122895))
                 (map cdr _%rest118965%_))
                _%iv118964%_)))))
    (define foldl*
      (lambda (_%f118932%_ _%iv118933%_ . _%rest118934%_)
        (if (procedure? _%f118932%_)
            (let ((_%f118938%_ _%f118932%_))
              (declare (not safe))
              (##apply __foldl* _%f118938%_ _%iv118933%_ _%rest118934%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@293.15-293.16"
               'contract:
               'procedure?
               'value:
               _%f118932%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f118881%_ _%iv118882%_ _%lst118883%_)
        (let ((_%f118886%_ _%f118881%_))
          (let _%recur118895%_ ((_%rest118897%_ _%lst118883%_))
            (let* ((_%$%rest118898118906%_ _%rest118897%_)
                   (_%$%else118900118914%_ (lambda () _%iv118882%_))
                   (_%$%K118902118920%_
                    (lambda (_%rest118917%_ _%x118918%_)
                      (let ((__tmp122896 (_%recur118895%_ _%rest118917%_)))
                        (declare (not safe))
                        (_%f118886%_ _%x118918%_ __tmp122896)))))
              (if (pair? _%$%rest118898118906%_)
                  (let ((_%$%hd118903118923%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest118898118906%_)))
                        (_%$%tl118904118925%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest118898118906%_))))
                    (let* ((_%x118928%_ _%$%hd118903118923%_)
                           (_%rest118930%_ _%$%tl118904118925%_))
                      (_%$%K118902118920%_ _%rest118930%_ _%x118928%_)))
                  (_%$%else118900118914%_)))))))
    (define foldr1
      (lambda (_%f118865%_ _%iv118866%_ _%lst118867%_)
        (if (procedure? _%f118865%_)
            (let ((_%f118871%_ _%f118865%_))
              (__foldr1 _%f118871%_ _%iv118866%_ _%lst118867%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@303.15-303.16"
               'contract:
               'procedure?
               'value:
               _%f118865%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f118779%_ _%iv118780%_ _%lst1118781%_ _%lst2118782%_)
        (let ((_%f118785%_ _%f118779%_))
          (let _%recur118794%_ ((_%rest1118796%_ _%lst1118781%_)
                                (_%rest2118797%_ _%lst2118782%_))
            (let* ((_%$%rest1118798118806%_ _%rest1118796%_)
                   (_%$%else118800118814%_ (lambda () _%iv118780%_))
                   (_%$%K118802118853%_
                    (lambda (_%rest1118817%_ _%x1118818%_)
                      (let* ((_%$%rest2118819118827%_ _%rest2118797%_)
                             (_%$%else118821118835%_ (lambda () _%iv118780%_))
                             (_%$%K118823118841%_
                              (lambda (_%rest2118838%_ _%x2118839%_)
                                (let ((__tmp122897
                                       (_%recur118794%_
                                        _%rest1118817%_
                                        _%rest2118838%_)))
                                  (declare (not safe))
                                  (_%f118785%_
                                   _%x1118818%_
                                   _%x2118839%_
                                   __tmp122897)))))
                        (if (pair? _%$%rest2118819118827%_)
                            (let ((_%$%hd118824118844%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2118819118827%_)))
                                  (_%$%tl118825118846%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2118819118827%_))))
                              (let* ((_%x2118849%_ _%$%hd118824118844%_)
                                     (_%rest2118851%_ _%$%tl118825118846%_))
                                (_%$%K118823118841%_
                                 _%rest2118851%_
                                 _%x2118849%_)))
                            (_%$%else118821118835%_))))))
              (if (pair? _%$%rest1118798118806%_)
                  (let ((_%$%hd118803118856%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1118798118806%_)))
                        (_%$%tl118804118858%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1118798118806%_))))
                    (let* ((_%x1118861%_ _%$%hd118803118856%_)
                           (_%rest1118863%_ _%$%tl118804118858%_))
                      (_%$%K118802118853%_ _%rest1118863%_ _%x1118861%_)))
                  (_%$%else118800118814%_)))))))
    (define foldr2
      (lambda (_%f118762%_ _%iv118763%_ _%lst1118764%_ _%lst2118765%_)
        (if (procedure? _%f118762%_)
            (let ((_%f118769%_ _%f118762%_))
              (__foldr2
               _%f118769%_
               _%iv118763%_
               _%lst1118764%_
               _%lst2118765%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@310.15-310.16"
               'contract:
               'procedure?
               'value:
               _%f118762%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f118695%_ _%iv118696%_ _%lst118697%_)
        (let* ((_%f118699%_ _%f118695%_)
               (_%iv118702%_ _%iv118696%_)
               (_%lst118705%_ _%lst118697%_))
          (if (procedure? _%f118699%_)
              (let ((_%f118710%_ _%f118699%_))
                (__foldr1 _%f118710%_ _%iv118702%_ _%lst118705%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118699%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f118723%_ _%iv118724%_ _%lst1118725%_ _%lst2118726%_)
        (let* ((_%f118728%_ _%f118723%_)
               (_%iv118731%_ _%iv118724%_)
               (_%lst1118734%_ _%lst1118725%_)
               (_%lst2118737%_ _%lst2118726%_))
          (if (procedure? _%f118728%_)
              (let ((_%f118742%_ _%f118728%_))
                (__foldr2
                 _%f118742%_
                 _%iv118731%_
                 _%lst1118734%_
                 _%lst2118737%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118728%_)
                '#!void)))))
    (define foldr
      (lambda _g122898_
        (let ((_g122899_ (let () (declare (not safe)) (##length _g122898_))))
          (cond ((let () (declare (not safe)) (##fx= _g122899_ 3))
                 (apply foldr__0 _g122898_))
                ((let () (declare (not safe)) (##fx= _g122899_ 4))
                 (apply foldr__1 _g122898_))
                ((let () (declare (not safe)) (##fx>= _g122899_ 4))
                 (apply foldr* _g122898_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g122898_))))))
    (define __foldr*
      (lambda (_%f118627%_ _%iv118628%_ . _%rest118629%_)
        (let ((_%f118632%_ _%f118627%_))
          (let _%recur118641%_ ((_%rest118643%_ _%rest118629%_))
            (if (let* ((_%f118645%_ pair?)
                       (_%lst118648%_ _%rest118643%_)
                       (_%f118653%_ _%f118645%_))
                  (__andmap1 _%f118653%_ _%lst118648%_))
                (let ((__tmp122900
                       (let* ((_%f118672%_
                               (lambda (_%xs118669%_ _%r118670%_)
                                 (cons (car _%xs118669%_) _%r118670%_)))
                              (_%iv118675%_
                               (list (_%recur118641%_
                                      (map cdr _%rest118643%_))))
                              (_%lst118678%_ _%rest118643%_)
                              (_%f118683%_ _%f118672%_))
                         (__foldr1 _%f118683%_ _%iv118675%_ _%lst118678%_))))
                  (declare (not safe))
                  (##apply _%f118632%_ __tmp122900))
                _%iv118628%_)))))
    (define foldr*
      (lambda (_%f118611%_ _%iv118612%_ . _%rest118613%_)
        (if (procedure? _%f118611%_)
            (let ((_%f118617%_ _%f118611%_))
              (declare (not safe))
              (##apply __foldr* _%f118617%_ _%iv118612%_ _%rest118613%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@328.15-328.16"
               'contract:
               'procedure?
               'value:
               _%f118611%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%lists118498%_)
        (letrec ((_%process-tails!118500%_
                  (lambda (_%previous-cell118555%_ _%rest118556%_)
                    (let* ((_%$%rest118557118570%_ _%rest118556%_)
                           (_%$%E118561118574%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest118557118570%_
                                     '([[] . r])
                                     '([_ . r])
                                     '(_))
                              '#!void)))
                      (let ((_%$%K118566118601%_
                             (lambda (_%r118599%_)
                               (let ((__tmp122902 _%previous-cell118555%_)
                                     (__tmp122901 (remove-nulls! _%r118599%_)))
                                 (declare (not safe))
                                 (##set-cdr! __tmp122902 __tmp122901))))
                            (_%$%K118563118588%_
                             (lambda (_%r118586%_)
                               (_%process-tails!118500%_
                                _%rest118556%_
                                _%r118586%_)))
                            (_%$%K118562118579%_ (lambda () '#!void)))
                        (if (pair? _%$%rest118557118570%_)
                            (let ((_%$%tl118568118606%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest118557118570%_)))
                                  (_%$%hd118567118604%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest118557118570%_))))
                              (if (null? _%$%hd118567118604%_)
                                  (let ((_%r118609%_ _%$%tl118568118606%_))
                                    (_%$%K118566118601%_ _%r118609%_))
                                  (let ((_%r118594%_ _%$%tl118568118606%_))
                                    (_%$%K118563118588%_ _%r118594%_))))
                            '#!void))))))
          (let* ((_%$%lists118501118514%_ _%lists118498%_)
                 (_%$%E118505118518%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%lists118501118514%_
                           '([[] . r])
                           '([_ . r])
                           '(_))
                    '#!void)))
            (let ((_%$%K118510118545%_
                   (lambda (_%r118543%_) (remove-nulls! _%r118543%_)))
                  (_%$%K118507118532%_
                   (lambda (_%r118530%_)
                     (_%process-tails!118500%_ _%lists118498%_ _%r118530%_)
                     _%lists118498%_))
                  (_%$%K118506118523%_ (lambda () _%lists118498%_)))
              (if (pair? _%$%lists118501118514%_)
                  (let ((_%$%tl118512118550%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%lists118501118514%_)))
                        (_%$%hd118511118548%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%lists118501118514%_))))
                    (if (null? _%$%hd118511118548%_)
                        (let ((_%r118553%_ _%$%tl118512118550%_))
                          (remove-nulls! _%r118553%_))
                        (let ((_%r118538%_ _%$%tl118512118550%_))
                          (_%$%K118507118532%_ _%r118538%_))))
                  (_%$%K118506118523%_)))))))
    (define append1!
      (lambda (_%l118483%_ _%x118484%_)
        (let ((_%l2118487%_ (cons _%x118484%_ '())))
          (if (pair? _%l118483%_)
              (let ((_%l118489%_ _%l118483%_))
                (let ((__tmp122903
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l118489%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp122903 _%l2118487%_))
                _%l118489%_)
              _%l2118487%_))))
    (define __append-reverse-until
      (lambda (_%pred118425%_ _%rhead118426%_ _%tail118427%_)
        (let ((_%pred118430%_ _%pred118425%_))
          (let _%loop118439%_ ((_%rhead118441%_ _%rhead118426%_)
                               (_%tail118442%_ _%tail118427%_))
            (let* ((_%$%rhead118444118453%_ _%rhead118441%_)
                   (_%$%E118447118457%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead118444118453%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K118451118480%_
                     (lambda () (values '() _%tail118442%_)))
                    (_%$%K118448118464%_
                     (lambda (_%r118461%_ _%a118462%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred118430%_ _%a118462%_))
                           (values _%rhead118441%_ _%tail118442%_)
                           (_%loop118439%_
                            _%r118461%_
                            (cons _%a118462%_ _%tail118442%_))))))
                (let ((_%$%try-match118446118476%_
                       (lambda ()
                         (if (pair? _%$%rhead118444118453%_)
                             (let ((_%$%tl118450118469%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead118444118453%_)))
                                   (_%$%hd118449118467%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead118444118453%_))))
                               (let ((_%a118472%_ _%$%hd118449118467%_)
                                     (_%r118474%_ _%$%tl118450118469%_))
                                 (_%$%K118448118464%_
                                  _%r118474%_
                                  _%a118472%_)))
                             (_%$%E118447118457%_)))))
                  (if (null? _%$%rhead118444118453%_)
                      (_%$%K118451118480%_)
                      (_%$%try-match118446118476%_)))))))))
    (define append-reverse-until
      (lambda (_%pred118409%_ _%rhead118410%_ _%tail118411%_)
        (if (procedure? _%pred118409%_)
            (let ((_%pred118415%_ _%pred118409%_))
              (__append-reverse-until
               _%pred118415%_
               _%rhead118410%_
               _%tail118411%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@366.29-366.33"
               'contract:
               'procedure?
               'value:
               _%pred118409%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f118358%_ _%lst118359%_)
        (let ((_%f118362%_ _%f118358%_))
          (let _%lp118371%_ ((_%rest118373%_ _%lst118359%_))
            (let* ((_%$%rest118375118383%_ _%rest118373%_)
                   (_%$%else118377118391%_ (lambda () '#t))
                   (_%$%K118379118397%_
                    (lambda (_%rest118394%_ _%x118395%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f118362%_ _%x118395%_))
                          (_%lp118371%_ _%rest118394%_)
                          '#f))))
              (if (pair? _%$%rest118375118383%_)
                  (let ((_%$%hd118380118400%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest118375118383%_)))
                        (_%$%tl118381118402%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest118375118383%_))))
                    (let* ((_%x118405%_ _%$%hd118380118400%_)
                           (_%rest118407%_ _%$%tl118381118402%_))
                      (_%$%K118379118397%_ _%rest118407%_ _%x118405%_)))
                  (_%$%else118377118391%_)))))))
    (define andmap1
      (lambda (_%f118343%_ _%lst118344%_)
        (if (procedure? _%f118343%_)
            (let ((_%f118348%_ _%f118343%_))
              (__andmap1 _%f118348%_ _%lst118344%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f118343%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f118257%_ _%lst1118258%_ _%lst2118259%_)
        (let ((_%f118262%_ _%f118257%_))
          (let _%lp118271%_ ((_%rest1118273%_ _%lst1118258%_)
                             (_%rest2118274%_ _%lst2118259%_))
            (let* ((_%$%rest1118276118284%_ _%rest1118273%_)
                   (_%$%else118278118292%_ (lambda () '#t))
                   (_%$%K118280118331%_
                    (lambda (_%rest1118295%_ _%x1118296%_)
                      (let* ((_%$%rest2118297118305%_ _%rest2118274%_)
                             (_%$%else118299118313%_ (lambda () '#t))
                             (_%$%K118301118319%_
                              (lambda (_%rest2118316%_ _%x2118317%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f118262%_ _%x1118296%_ _%x2118317%_))
                                    (_%lp118271%_
                                     _%rest1118295%_
                                     _%rest2118316%_)
                                    '#f))))
                        (if (pair? _%$%rest2118297118305%_)
                            (let ((_%$%hd118302118322%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2118297118305%_)))
                                  (_%$%tl118303118324%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2118297118305%_))))
                              (let* ((_%x2118327%_ _%$%hd118302118322%_)
                                     (_%rest2118329%_ _%$%tl118303118324%_))
                                (_%$%K118301118319%_
                                 _%rest2118329%_
                                 _%x2118327%_)))
                            (_%$%else118299118313%_))))))
              (if (pair? _%$%rest1118276118284%_)
                  (let ((_%$%hd118281118334%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1118276118284%_)))
                        (_%$%tl118282118336%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1118276118284%_))))
                    (let* ((_%x1118339%_ _%$%hd118281118334%_)
                           (_%rest1118341%_ _%$%tl118282118336%_))
                      (_%$%K118280118331%_ _%rest1118341%_ _%x1118339%_)))
                  (_%$%else118278118292%_)))))))
    (define andmap2
      (lambda (_%f118241%_ _%lst1118242%_ _%lst2118243%_)
        (if (procedure? _%f118241%_)
            (let ((_%f118247%_ _%f118241%_))
              (__andmap2 _%f118247%_ _%lst1118242%_ _%lst2118243%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@386.16-386.17"
               'contract:
               'procedure?
               'value:
               _%f118241%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f118185%_ _%lst118186%_)
        (let* ((_%f118188%_ _%f118185%_) (_%lst118191%_ _%lst118186%_))
          (if (procedure? _%f118188%_)
              (let ((_%f118196%_ _%f118188%_))
                (__andmap1 _%f118196%_ _%lst118191%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118188%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f118208%_ _%lst1118209%_ _%lst2118210%_)
        (let* ((_%f118212%_ _%f118208%_)
               (_%lst1118215%_ _%lst1118209%_)
               (_%lst2118218%_ _%lst2118210%_))
          (if (procedure? _%f118212%_)
              (let ((_%f118223%_ _%f118212%_))
                (__andmap2 _%f118223%_ _%lst1118215%_ _%lst2118218%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f118212%_)
                '#!void)))))
    (define andmap
      (lambda _g122904_
        (let ((_g122905_ (let () (declare (not safe)) (##length _g122904_))))
          (cond ((let () (declare (not safe)) (##fx= _g122905_ 2))
                 (apply andmap__0 _g122904_))
                ((let () (declare (not safe)) (##fx= _g122905_ 3))
                 (apply andmap__1 _g122904_))
                ((let () (declare (not safe)) (##fx>= _g122905_ 3))
                 (apply andmap* _g122904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g122904_))))))
    (define __andmap*
      (lambda (_%f118142%_ . _%rest118143%_)
        (let ((_%f118146%_ _%f118142%_))
          (let _%recur118155%_ ((_%rest118157%_ _%rest118143%_))
            (if (let* ((_%f118160%_ pair?)
                       (_%lst118163%_ _%rest118157%_)
                       (_%f118168%_ _%f118160%_))
                  (__andmap1 _%f118168%_ _%lst118163%_))
                (if (let ((__tmp122906 (map car _%rest118157%_)))
                      (declare (not safe))
                      (##apply _%f118146%_ __tmp122906))
                    (_%recur118155%_ (map cdr _%rest118157%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f118127%_ . _%rest118128%_)
        (if (procedure? _%f118127%_)
            (let ((_%f118132%_ _%f118127%_))
              (declare (not safe))
              (##apply __andmap* _%f118132%_ _%rest118128%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.16-406.17"
               'contract:
               'procedure?
               'value:
               _%f118127%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f118074%_ _%lst118075%_)
        (let ((_%f118078%_ _%f118074%_))
          (let _%lp118087%_ ((_%rest118089%_ _%lst118075%_))
            (let* ((_%$%rest118090118098%_ _%rest118089%_)
                   (_%$%else118092118106%_ (lambda () '#f))
                   (_%$%K118094118115%_
                    (lambda (_%rest118109%_ _%x118110%_)
                      (let ((_%$e118112%_
                             (let ()
                               (declare (not safe))
                               (_%f118078%_ _%x118110%_))))
                        (if _%$e118112%_
                            _%$e118112%_
                            (_%lp118087%_ _%rest118109%_))))))
              (if (pair? _%$%rest118090118098%_)
                  (let ((_%$%hd118095118118%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest118090118098%_)))
                        (_%$%tl118096118120%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest118090118098%_))))
                    (let* ((_%x118123%_ _%$%hd118095118118%_)
                           (_%rest118125%_ _%$%tl118096118120%_))
                      (_%$%K118094118115%_ _%rest118125%_ _%x118123%_)))
                  (_%$%else118092118106%_)))))))
    (define ormap1
      (lambda (_%f118059%_ _%lst118060%_)
        (if (procedure? _%f118059%_)
            (let ((_%f118064%_ _%f118059%_))
              (__ormap1 _%f118064%_ _%lst118060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.15-415.16"
               'contract:
               'procedure?
               'value:
               _%f118059%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f117971%_ _%lst1117972%_ _%lst2117973%_)
        (let ((_%f117976%_ _%f117971%_))
          (let _%lp117985%_ ((_%rest1117987%_ _%lst1117972%_)
                             (_%rest2117988%_ _%lst2117973%_))
            (let* ((_%$%rest1117989117997%_ _%rest1117987%_)
                   (_%$%else117991118005%_ (lambda () '#f))
                   (_%$%K117993118047%_
                    (lambda (_%rest1118008%_ _%x1118009%_)
                      (let* ((_%$%rest2118010118018%_ _%rest2117988%_)
                             (_%$%else118012118026%_ (lambda () '#f))
                             (_%$%K118014118035%_
                              (lambda (_%rest2118029%_ _%x2118030%_)
                                (let ((_%$e118032%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f117976%_
                                          _%x1118009%_
                                          _%x2118030%_))))
                                  (if _%$e118032%_
                                      _%$e118032%_
                                      (_%lp117985%_
                                       _%rest1118008%_
                                       _%rest2118029%_))))))
                        (if (pair? _%$%rest2118010118018%_)
                            (let ((_%$%hd118015118038%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2118010118018%_)))
                                  (_%$%tl118016118040%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2118010118018%_))))
                              (let* ((_%x2118043%_ _%$%hd118015118038%_)
                                     (_%rest2118045%_ _%$%tl118016118040%_))
                                (_%$%K118014118035%_
                                 _%rest2118045%_
                                 _%x2118043%_)))
                            (_%$%else118012118026%_))))))
              (if (pair? _%$%rest1117989117997%_)
                  (let ((_%$%hd117994118050%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1117989117997%_)))
                        (_%$%tl117995118052%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1117989117997%_))))
                    (let* ((_%x1118055%_ _%$%hd117994118050%_)
                           (_%rest1118057%_ _%$%tl117995118052%_))
                      (_%$%K117993118047%_ _%rest1118057%_ _%x1118055%_)))
                  (_%$%else117991118005%_)))))))
    (define ormap2
      (lambda (_%f117955%_ _%lst1117956%_ _%lst2117957%_)
        (if (procedure? _%f117955%_)
            (let ((_%f117961%_ _%f117955%_))
              (__ormap2 _%f117961%_ _%lst1117956%_ _%lst2117957%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@422.15-422.16"
               'contract:
               'procedure?
               'value:
               _%f117955%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f117899%_ _%lst117900%_)
        (let* ((_%f117902%_ _%f117899%_) (_%lst117905%_ _%lst117900%_))
          (if (procedure? _%f117902%_)
              (let ((_%f117910%_ _%f117902%_))
                (__ormap1 _%f117910%_ _%lst117905%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117902%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f117922%_ _%lst1117923%_ _%lst2117924%_)
        (let* ((_%f117926%_ _%f117922%_)
               (_%lst1117929%_ _%lst1117923%_)
               (_%lst2117932%_ _%lst2117924%_))
          (if (procedure? _%f117926%_)
              (let ((_%f117937%_ _%f117926%_))
                (__ormap2 _%f117937%_ _%lst1117929%_ _%lst2117932%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117926%_)
                '#!void)))))
    (define ormap
      (lambda _g122907_
        (let ((_g122908_ (let () (declare (not safe)) (##length _g122907_))))
          (cond ((let () (declare (not safe)) (##fx= _g122908_ 2))
                 (apply ormap__0 _g122907_))
                ((let () (declare (not safe)) (##fx= _g122908_ 3))
                 (apply ormap__1 _g122907_))
                ((let () (declare (not safe)) (##fx>= _g122908_ 3))
                 (apply ormap* _g122907_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g122907_))))))
    (define __ormap*
      (lambda (_%f117855%_ . _%rest117856%_)
        (let ((_%f117859%_ _%f117855%_))
          (let _%recur117868%_ ((_%rest117870%_ _%rest117856%_))
            (if (let* ((_%f117872%_ pair?)
                       (_%lst117875%_ _%rest117870%_)
                       (_%f117880%_ _%f117872%_))
                  (__andmap1 _%f117880%_ _%lst117875%_))
                (let ((_%$e117896%_
                       (let ((__tmp122909 (map car _%rest117870%_)))
                         (declare (not safe))
                         (##apply _%f117859%_ __tmp122909))))
                  (if _%$e117896%_
                      _%$e117896%_
                      (_%recur117868%_ (map cdr _%rest117870%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f117840%_ . _%rest117841%_)
        (if (procedure? _%f117840%_)
            (let ((_%f117845%_ _%f117840%_))
              (declare (not safe))
              (##apply __ormap* _%f117845%_ _%rest117841%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@440.15-440.16"
               'contract:
               'procedure?
               'value:
               _%f117840%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f117783%_ _%lst117784%_)
        (let ((_%f117787%_ _%f117783%_))
          (let _%recur117796%_ ((_%rest117798%_ _%lst117784%_))
            (let* ((_%$%rest117800117808%_ _%rest117798%_)
                   (_%$%else117802117816%_ (lambda () '()))
                   (_%$%K117804117828%_
                    (lambda (_%rest117819%_ _%x117820%_)
                      (let ((_%$e117822%_
                             (let ()
                               (declare (not safe))
                               (_%f117787%_ _%x117820%_))))
                        (if _%$e117822%_
                            (cons _%$e117822%_
                                  (_%recur117796%_ _%rest117819%_))
                            (_%recur117796%_ _%rest117819%_))))))
              (if (pair? _%$%rest117800117808%_)
                  (let ((_%$%hd117805117831%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest117800117808%_)))
                        (_%$%tl117806117833%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest117800117808%_))))
                    (let* ((_%x117836%_ _%$%hd117805117831%_)
                           (_%rest117838%_ _%$%tl117806117833%_))
                      (_%$%K117804117828%_ _%rest117838%_ _%x117836%_)))
                  (_%$%else117802117816%_)))))))
    (define filter-map1
      (lambda (_%f117768%_ _%lst117769%_)
        (if (procedure? _%f117768%_)
            (let ((_%f117773%_ _%f117768%_))
              (__filter-map1 _%f117773%_ _%lst117769%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@447.20-447.21"
               'contract:
               'procedure?
               'value:
               _%f117768%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f117676%_ _%lst1117677%_ _%lst2117678%_)
        (let ((_%f117681%_ _%f117676%_))
          (let _%recur117690%_ ((_%rest1117692%_ _%lst1117677%_)
                                (_%rest2117693%_ _%lst2117678%_))
            (let* ((_%$%rest1117695117703%_ _%rest1117692%_)
                   (_%$%else117697117711%_ (lambda () '()))
                   (_%$%K117699117756%_
                    (lambda (_%rest1117714%_ _%x1117715%_)
                      (let* ((_%$%rest2117716117724%_ _%rest2117693%_)
                             (_%$%else117718117732%_ (lambda () '()))
                             (_%$%K117720117744%_
                              (lambda (_%rest2117735%_ _%x2117736%_)
                                (let ((_%$e117738%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f117681%_
                                          _%x1117715%_
                                          _%x2117736%_))))
                                  (if _%$e117738%_
                                      (cons _%$e117738%_
                                            (_%recur117690%_
                                             _%rest1117714%_
                                             _%rest2117735%_))
                                      (_%recur117690%_
                                       _%rest1117714%_
                                       _%rest2117735%_))))))
                        (if (pair? _%$%rest2117716117724%_)
                            (let ((_%$%hd117721117747%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2117716117724%_)))
                                  (_%$%tl117722117749%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2117716117724%_))))
                              (let* ((_%x2117752%_ _%$%hd117721117747%_)
                                     (_%rest2117754%_ _%$%tl117722117749%_))
                                (_%$%K117720117744%_
                                 _%rest2117754%_
                                 _%x2117752%_)))
                            (_%$%else117718117732%_))))))
              (if (pair? _%$%rest1117695117703%_)
                  (let ((_%$%hd117700117759%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1117695117703%_)))
                        (_%$%tl117701117761%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1117695117703%_))))
                    (let* ((_%x1117764%_ _%$%hd117700117759%_)
                           (_%rest1117766%_ _%$%tl117701117761%_))
                      (_%$%K117699117756%_ _%rest1117766%_ _%x1117764%_)))
                  (_%$%else117697117711%_)))))))
    (define filter-map2
      (lambda (_%f117660%_ _%lst1117661%_ _%lst2117662%_)
        (if (procedure? _%f117660%_)
            (let ((_%f117666%_ _%f117660%_))
              (__filter-map2 _%f117666%_ _%lst1117661%_ _%lst2117662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@458.20-458.21"
               'contract:
               'procedure?
               'value:
               _%f117660%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f117604%_ _%lst117605%_)
        (let* ((_%f117607%_ _%f117604%_) (_%lst117610%_ _%lst117605%_))
          (if (procedure? _%f117607%_)
              (let ((_%f117615%_ _%f117607%_))
                (__filter-map1 _%f117615%_ _%lst117610%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117607%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f117627%_ _%lst1117628%_ _%lst2117629%_)
        (let* ((_%f117631%_ _%f117627%_)
               (_%lst1117634%_ _%lst1117628%_)
               (_%lst2117637%_ _%lst2117629%_))
          (if (procedure? _%f117631%_)
              (let ((_%f117642%_ _%f117631%_))
                (__filter-map2 _%f117642%_ _%lst1117634%_ _%lst2117637%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117631%_)
                '#!void)))))
    (define filter-map
      (lambda _g122910_
        (let ((_g122911_ (let () (declare (not safe)) (##length _g122910_))))
          (cond ((let () (declare (not safe)) (##fx= _g122911_ 2))
                 (apply filter-map__0 _g122910_))
                ((let () (declare (not safe)) (##fx= _g122911_ 3))
                 (apply filter-map__1 _g122910_))
                ((let () (declare (not safe)) (##fx>= _g122911_ 3))
                 (apply filter-map* _g122910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g122910_))))))
    (define __filter-map*
      (lambda (_%f117555%_ . _%rest117556%_)
        (let ((_%f117559%_ _%f117555%_))
          (let _%recur117568%_ ((_%rest117570%_ _%rest117556%_))
            (if (let* ((_%f117573%_ pair?)
                       (_%lst117576%_ _%rest117570%_)
                       (_%f117581%_ _%f117573%_))
                  (__andmap1 _%f117581%_ _%lst117576%_))
                (let ((_%$e117598%_
                       (let ((__tmp122912 (map car _%rest117570%_)))
                         (declare (not safe))
                         (##apply _%f117559%_ __tmp122912))))
                  (if _%$e117598%_
                      (cons _%$e117598%_
                            (_%recur117568%_ (map cdr _%rest117570%_)))
                      (_%recur117568%_ (map cdr _%rest117570%_))))
                '())))))
    (define filter-map*
      (lambda (_%f117540%_ . _%rest117541%_)
        (if (procedure? _%f117540%_)
            (let ((_%f117545%_ _%f117540%_))
              (declare (not safe))
              (##apply __filter-map* _%f117545%_ _%rest117541%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@480.20-480.21"
               'contract:
               'procedure?
               'value:
               _%f117540%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key117516%_ _%lst117518%_ _%default117520%_)
        (let ((_%$e117523%_
               (if (pair? _%lst117518%_)
                   (assq _%key117516%_ _%lst117518%_)
                   '#f)))
          (if _%$e117523%_
              (cdr _%$e117523%_)
              (if (procedure? _%default117520%_)
                  (_%default117520%_ _%key117516%_)
                  _%default117520%_)))))
    (define agetq__0
      (lambda (_%key117531%_ _%lst117532%_)
        (let ((_%default117534%_ '#f))
          (agetq__% _%key117531%_ _%lst117532%_ _%default117534%_))))
    (define agetq
      (lambda _g122913_
        (let ((_g122914_ (let () (declare (not safe)) (##length _g122913_))))
          (cond ((let () (declare (not safe)) (##fx= _g122914_ 2))
                 (apply agetq__0 _g122913_))
                ((let () (declare (not safe)) (##fx= _g122914_ 3))
                 (apply agetq__% _g122913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g122913_))))))
    (define agetv__%
      (lambda (_%key117491%_ _%lst117493%_ _%default117495%_)
        (let ((_%$e117498%_
               (if (pair? _%lst117493%_)
                   (assv _%key117491%_ _%lst117493%_)
                   '#f)))
          (if _%$e117498%_
              (cdr _%$e117498%_)
              (if (procedure? _%default117495%_)
                  (_%default117495%_ _%key117491%_)
                  _%default117495%_)))))
    (define agetv__0
      (lambda (_%key117506%_ _%lst117507%_)
        (let ((_%default117509%_ '#f))
          (agetv__% _%key117506%_ _%lst117507%_ _%default117509%_))))
    (define agetv
      (lambda _g122915_
        (let ((_g122916_ (let () (declare (not safe)) (##length _g122915_))))
          (cond ((let () (declare (not safe)) (##fx= _g122916_ 2))
                 (apply agetv__0 _g122915_))
                ((let () (declare (not safe)) (##fx= _g122916_ 3))
                 (apply agetv__% _g122915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g122915_))))))
    (define aget__%
      (lambda (_%key117466%_ _%lst117468%_ _%default117470%_)
        (let ((_%$e117473%_
               (if (pair? _%lst117468%_)
                   (assoc _%key117466%_ _%lst117468%_)
                   '#f)))
          (if _%$e117473%_
              (cdr _%$e117473%_)
              (if (procedure? _%default117470%_)
                  (_%default117470%_ _%key117466%_)
                  _%default117470%_)))))
    (define aget__0
      (lambda (_%key117481%_ _%lst117482%_)
        (let ((_%default117484%_ '#f))
          (aget__% _%key117481%_ _%lst117482%_ _%default117484%_))))
    (define aget
      (lambda _g122917_
        (let ((_g122918_ (let () (declare (not safe)) (##length _g122917_))))
          (cond ((let () (declare (not safe)) (##fx= _g122918_ 2))
                 (apply aget__0 _g122917_))
                ((let () (declare (not safe)) (##fx= _g122918_ 3))
                 (apply aget__% _g122917_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g122917_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key117395%_ _%lst117397%_ _%default117399%_)
        (let _%lp117402%_ ((_%rest117405%_ _%lst117397%_))
          (let* ((_%$%rest117407117417%_ _%rest117405%_)
                 (_%$%else117409117425%_
                  (lambda ()
                    (if (procedure? _%default117399%_)
                        (_%default117399%_ _%key117395%_)
                        _%default117399%_)))
                 (_%$%K117411117434%_
                  (lambda (_%rest117428%_ _%v117429%_ _%k117431%_)
                    (if (eq? _%k117431%_ _%key117395%_)
                        _%v117429%_
                        (_%lp117402%_ _%rest117428%_)))))
            (if (pair? _%$%rest117407117417%_)
                (let ((_%$%hd117412117437%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117407117417%_)))
                      (_%$%tl117413117439%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117407117417%_))))
                  (let ((_%k117442%_ _%$%hd117412117437%_))
                    (if (pair? _%$%tl117413117439%_)
                        (let ((_%$%hd117414117444%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl117413117439%_)))
                              (_%$%tl117415117446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl117413117439%_))))
                          (let* ((_%v117449%_ _%$%hd117414117444%_)
                                 (_%rest117451%_ _%$%tl117415117446%_))
                            (_%$%K117411117434%_
                             _%rest117451%_
                             _%v117449%_
                             _%k117442%_)))
                        (_%$%else117409117425%_))))
                (_%$%else117409117425%_))))))
    (define pgetq__0
      (lambda (_%key117456%_ _%lst117457%_)
        (let ((_%default117459%_ '#f))
          (pgetq__% _%key117456%_ _%lst117457%_ _%default117459%_))))
    (define pgetq
      (lambda _g122919_
        (let ((_g122920_ (let () (declare (not safe)) (##length _g122919_))))
          (cond ((let () (declare (not safe)) (##fx= _g122920_ 2))
                 (apply pgetq__0 _g122919_))
                ((let () (declare (not safe)) (##fx= _g122920_ 3))
                 (apply pgetq__% _g122919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g122919_))))))
    (define pgetv__%
      (lambda (_%key117324%_ _%lst117326%_ _%default117328%_)
        (let _%lp117331%_ ((_%rest117334%_ _%lst117326%_))
          (let* ((_%$%rest117336117346%_ _%rest117334%_)
                 (_%$%else117338117354%_
                  (lambda ()
                    (if (procedure? _%default117328%_)
                        (_%default117328%_ _%key117324%_)
                        _%default117328%_)))
                 (_%$%K117340117363%_
                  (lambda (_%rest117357%_ _%v117358%_ _%k117360%_)
                    (if (eqv? _%k117360%_ _%key117324%_)
                        _%v117358%_
                        (_%lp117331%_ _%rest117357%_)))))
            (if (pair? _%$%rest117336117346%_)
                (let ((_%$%hd117341117366%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117336117346%_)))
                      (_%$%tl117342117368%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117336117346%_))))
                  (let ((_%k117371%_ _%$%hd117341117366%_))
                    (if (pair? _%$%tl117342117368%_)
                        (let ((_%$%hd117343117373%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl117342117368%_)))
                              (_%$%tl117344117375%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl117342117368%_))))
                          (let* ((_%v117378%_ _%$%hd117343117373%_)
                                 (_%rest117380%_ _%$%tl117344117375%_))
                            (_%$%K117340117363%_
                             _%rest117380%_
                             _%v117378%_
                             _%k117371%_)))
                        (_%$%else117338117354%_))))
                (_%$%else117338117354%_))))))
    (define pgetv__0
      (lambda (_%key117385%_ _%lst117386%_)
        (let ((_%default117388%_ '#f))
          (pgetv__% _%key117385%_ _%lst117386%_ _%default117388%_))))
    (define pgetv
      (lambda _g122921_
        (let ((_g122922_ (let () (declare (not safe)) (##length _g122921_))))
          (cond ((let () (declare (not safe)) (##fx= _g122922_ 2))
                 (apply pgetv__0 _g122921_))
                ((let () (declare (not safe)) (##fx= _g122922_ 3))
                 (apply pgetv__% _g122921_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g122921_))))))
    (define pget__%
      (lambda (_%key117253%_ _%lst117255%_ _%default117257%_)
        (let _%lp117260%_ ((_%rest117263%_ _%lst117255%_))
          (let* ((_%$%rest117265117275%_ _%rest117263%_)
                 (_%$%else117267117283%_
                  (lambda ()
                    (if (procedure? _%default117257%_)
                        (_%default117257%_ _%key117253%_)
                        _%default117257%_)))
                 (_%$%K117269117292%_
                  (lambda (_%rest117286%_ _%v117287%_ _%k117289%_)
                    (if (equal? _%k117289%_ _%key117253%_)
                        _%v117287%_
                        (_%lp117260%_ _%rest117286%_)))))
            (if (pair? _%$%rest117265117275%_)
                (let ((_%$%hd117270117295%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117265117275%_)))
                      (_%$%tl117271117297%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117265117275%_))))
                  (let ((_%k117300%_ _%$%hd117270117295%_))
                    (if (pair? _%$%tl117271117297%_)
                        (let ((_%$%hd117272117302%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl117271117297%_)))
                              (_%$%tl117273117304%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl117271117297%_))))
                          (let* ((_%v117307%_ _%$%hd117272117302%_)
                                 (_%rest117309%_ _%$%tl117273117304%_))
                            (_%$%K117269117292%_
                             _%rest117309%_
                             _%v117307%_
                             _%k117300%_)))
                        (_%$%else117267117283%_))))
                (_%$%else117267117283%_))))))
    (define pget__0
      (lambda (_%key117314%_ _%lst117315%_)
        (let ((_%default117317%_ '#f))
          (pget__% _%key117314%_ _%lst117315%_ _%default117317%_))))
    (define pget
      (lambda _g122923_
        (let ((_g122924_ (let () (declare (not safe)) (##length _g122923_))))
          (cond ((let () (declare (not safe)) (##fx= _g122924_ 2))
                 (apply pget__0 _g122923_))
                ((let () (declare (not safe)) (##fx= _g122924_ 3))
                 (apply pget__% _g122923_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g122923_))))))
    (define __find
      (lambda (_%pred117213%_ _%lst117214%_)
        (let* ((_%pred117217%_ _%pred117213%_)
               (_%$e117248%_
                (let* ((_%proc117226%_ _%pred117217%_)
                       (_%lst117229%_ _%lst117214%_)
                       (_%proc117234%_ _%proc117226%_))
                  (__memf _%proc117234%_ _%lst117229%_))))
          (if _%$e117248%_
              (let () (declare (not safe)) (##car _%$e117248%_))
              '#f))))
    (define find
      (lambda (_%pred117198%_ _%lst117199%_)
        (if (procedure? _%pred117198%_)
            (let ((_%pred117203%_ _%pred117198%_))
              (__find _%pred117203%_ _%lst117199%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@526.13-526.17"
               'contract:
               'procedure?
               'value:
               _%pred117198%_)
              '#!void))))
    (define __memf
      (lambda (_%proc117148%_ _%lst117149%_)
        (let ((_%proc117152%_ _%proc117148%_))
          (let _%lp117161%_ ((_%rest117163%_ _%lst117149%_))
            (let* ((_%$%rest117164117172%_ _%rest117163%_)
                   (_%$%else117166117180%_ (lambda () '#f))
                   (_%$%K117168117186%_
                    (lambda (_%tl117183%_ _%hd117184%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc117152%_ _%hd117184%_))
                          _%rest117163%_
                          (_%lp117161%_ _%tl117183%_)))))
              (if (pair? _%$%rest117164117172%_)
                  (let ((_%$%hd117169117189%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest117164117172%_)))
                        (_%$%tl117170117191%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest117164117172%_))))
                    (let* ((_%hd117194%_ _%$%hd117169117189%_)
                           (_%tl117196%_ _%$%tl117170117191%_))
                      (_%$%K117168117186%_ _%tl117196%_ _%hd117194%_)))
                  (_%$%else117166117180%_)))))))
    (define memf
      (lambda (_%proc117133%_ _%lst117134%_)
        (if (procedure? _%proc117133%_)
            (let ((_%proc117138%_ _%proc117133%_))
              (__memf _%proc117138%_ _%lst117134%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@531.13-531.17"
               'contract:
               'procedure?
               'value:
               _%proc117133%_)
              '#!void))))
    (define remove1
      (lambda (_%el117056%_ _%lst117058%_)
        (let _%lp117061%_ ((_%rest117064%_ _%lst117058%_) (_%r117066%_ '()))
          (let* ((_%$%rest117068117076%_ _%rest117064%_)
                 (_%$%else117070117084%_ (lambda () _%lst117058%_))
                 (_%$%K117072117121%_
                  (lambda (_%rest117087%_ _%hd117088%_)
                    (if (equal? _%el117056%_ _%hd117088%_)
                        (let* ((_%f117091%_ cons)
                               (_%iv117094%_ _%rest117087%_)
                               (_%lst117097%_ _%r117066%_)
                               (_%f117102%_ _%f117091%_))
                          (__foldl1 _%f117102%_ _%iv117094%_ _%lst117097%_))
                        (_%lp117061%_
                         _%rest117087%_
                         (cons _%hd117088%_ _%r117066%_))))))
            (if (pair? _%$%rest117068117076%_)
                (let ((_%$%hd117073117124%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117068117076%_)))
                      (_%$%tl117074117126%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117068117076%_))))
                  (let* ((_%hd117129%_ _%$%hd117073117124%_)
                         (_%rest117131%_ _%$%tl117074117126%_))
                    (_%$%K117072117121%_ _%rest117131%_ _%hd117129%_)))
                (_%$%else117070117084%_))))))
    (define remv1
      (lambda (_%el116979%_ _%lst116981%_)
        (let _%lp116984%_ ((_%rest116987%_ _%lst116981%_) (_%r116989%_ '()))
          (let* ((_%$%rest116991116999%_ _%rest116987%_)
                 (_%$%else116993117007%_ (lambda () _%lst116981%_))
                 (_%$%K116995117044%_
                  (lambda (_%rest117010%_ _%hd117011%_)
                    (if (eqv? _%el116979%_ _%hd117011%_)
                        (let* ((_%f117014%_ cons)
                               (_%iv117017%_ _%rest117010%_)
                               (_%lst117020%_ _%r116989%_)
                               (_%f117025%_ _%f117014%_))
                          (__foldl1 _%f117025%_ _%iv117017%_ _%lst117020%_))
                        (_%lp116984%_
                         _%rest117010%_
                         (cons _%hd117011%_ _%r116989%_))))))
            (if (pair? _%$%rest116991116999%_)
                (let ((_%$%hd116996117047%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest116991116999%_)))
                      (_%$%tl116997117049%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest116991116999%_))))
                  (let* ((_%hd117052%_ _%$%hd116996117047%_)
                         (_%rest117054%_ _%$%tl116997117049%_))
                    (_%$%K116995117044%_ _%rest117054%_ _%hd117052%_)))
                (_%$%else116993117007%_))))))
    (define remq1
      (lambda (_%el116902%_ _%lst116904%_)
        (let _%lp116907%_ ((_%rest116910%_ _%lst116904%_) (_%r116912%_ '()))
          (let* ((_%$%rest116914116922%_ _%rest116910%_)
                 (_%$%else116916116930%_ (lambda () _%lst116904%_))
                 (_%$%K116918116967%_
                  (lambda (_%rest116933%_ _%hd116934%_)
                    (if (eq? _%el116902%_ _%hd116934%_)
                        (let* ((_%f116937%_ cons)
                               (_%iv116940%_ _%rest116933%_)
                               (_%lst116943%_ _%r116912%_)
                               (_%f116948%_ _%f116937%_))
                          (__foldl1 _%f116948%_ _%iv116940%_ _%lst116943%_))
                        (_%lp116907%_
                         _%rest116933%_
                         (cons _%hd116934%_ _%r116912%_))))))
            (if (pair? _%$%rest116914116922%_)
                (let ((_%$%hd116919116970%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest116914116922%_)))
                      (_%$%tl116920116972%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest116914116922%_))))
                  (let* ((_%hd116975%_ _%$%hd116919116970%_)
                         (_%rest116977%_ _%$%tl116920116972%_))
                    (_%$%K116918116967%_ _%rest116977%_ _%hd116975%_)))
                (_%$%else116916116930%_))))))
    (define __remf
      (lambda (_%proc116819%_ _%lst116820%_)
        (let ((_%proc116823%_ _%proc116819%_))
          (let _%lp116832%_ ((_%rest116834%_ _%lst116820%_) (_%r116835%_ '()))
            (let* ((_%$%rest116836116844%_ _%rest116834%_)
                   (_%$%else116838116852%_ (lambda () _%lst116820%_))
                   (_%$%K116840116890%_
                    (lambda (_%rest116855%_ _%hd116856%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc116823%_ _%hd116856%_))
                          (let* ((_%f116858%_ cons)
                                 (_%iv116861%_ _%rest116855%_)
                                 (_%lst116864%_ _%r116835%_)
                                 (_%f116869%_ _%f116858%_))
                            (__foldl1 _%f116869%_ _%iv116861%_ _%lst116864%_))
                          (_%lp116832%_
                           _%rest116855%_
                           (cons _%hd116856%_ _%r116835%_))))))
              (if (pair? _%$%rest116836116844%_)
                  (let ((_%$%hd116841116893%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest116836116844%_)))
                        (_%$%tl116842116895%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest116836116844%_))))
                    (let* ((_%hd116898%_ _%$%hd116841116893%_)
                           (_%rest116900%_ _%$%tl116842116895%_))
                      (_%$%K116840116890%_ _%rest116900%_ _%hd116898%_)))
                  (_%$%else116838116852%_)))))))
    (define remf
      (lambda (_%proc116804%_ _%lst116805%_)
        (if (procedure? _%proc116804%_)
            (let ((_%proc116809%_ _%proc116804%_))
              (__remf _%proc116809%_ _%lst116805%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.13-553.17"
               'contract:
               'procedure?
               'value:
               _%proc116804%_)
              '#!void))))
    (define __1+
      (lambda (_%x116792%_)
        (let ((_%x116795%_ _%x116792%_)) (+ _%x116795%_ '1))))
    (define 1+
      (lambda (_%x116778%_)
        (if (number? _%x116778%_)
            (let ((_%x116782%_ _%x116778%_)) (__1+ _%x116782%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@562.11-562.12"
               'contract:
               'number?
               'value:
               _%x116778%_)
              '#!void))))
    (define __1-
      (lambda (_%x116766%_)
        (let ((_%x116769%_ _%x116766%_)) (- _%x116769%_ '1))))
    (define 1-
      (lambda (_%x116752%_)
        (if (number? _%x116752%_)
            (let ((_%x116756%_ _%x116752%_)) (__1- _%x116756%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@570.11-570.12"
               'contract:
               'number?
               'value:
               _%x116752%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x116740%_)
        (let ((_%x116743%_ _%x116740%_))
          (declare (not safe))
          (##fx+ _%x116743%_ '1))))
    (define fx1+
      (lambda (_%x116726%_)
        (if (fixnum? _%x116726%_)
            (let ((_%x116730%_ _%x116726%_)) (__fx1+ _%x116730%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@578.13-578.14"
               'contract:
               'fixnum?
               'value:
               _%x116726%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x116714%_)
        (let ((_%x116717%_ _%x116714%_))
          (declare (not safe))
          (##fx- _%x116717%_ '1))))
    (define fx1-
      (lambda (_%x116700%_)
        (if (fixnum? _%x116700%_)
            (let ((_%x116704%_ _%x116700%_)) (__fx1- _%x116704%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.13-586.14"
               'contract:
               'fixnum?
               'value:
               _%x116700%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x116697%_)
        (if (fixnum? _%x116697%_)
            (let () (declare (not safe)) (##fx>= _%x116697%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x116694%_)
        (if (fixnum? _%x116694%_)
            (let () (declare (not safe)) (##fx> _%x116694%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x116691%_)
        (let () (declare (not safe)) (##fx= _%x116691%_ '0))))
    (define fx<0?
      (lambda (_%x116688%_)
        (if (fixnum? _%x116688%_)
            (let () (declare (not safe)) (##fx< _%x116688%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x116685%_)
        (if (fixnum? _%x116685%_)
            (let () (declare (not safe)) (##fx<= _%x116685%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x116682%_)
        (if (symbol? _%x116682%_) (not (uninterned-symbol? _%x116682%_)) '#f)))
    (define __display-as-string
      (lambda (_%x116576%_ _%port116577%_)
        (let ((_%port116580%_ _%port116577%_))
          (if (or (string? _%x116576%_)
                  (symbol? _%x116576%_)
                  (keyword? _%x116576%_)
                  (number? _%x116576%_)
                  (char? _%x116576%_))
              (display _%x116576%_ _%port116580%_)
              (if (pair? _%x116576%_)
                  (let ()
                    (let* ((_%x116603%_
                            (let () (declare (not safe)) (##car _%x116576%_)))
                           (_%port116606%_ _%port116580%_))
                      (if (output-port? _%port116606%_)
                          (let ((_%port116611%_ _%port116606%_))
                            (__display-as-string _%x116603%_ _%port116611%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port116606%_)
                            '#!void)))
                    (let* ((_%x116626%_
                            (let () (declare (not safe)) (##cdr _%x116576%_)))
                           (_%port116629%_ _%port116580%_))
                      (if (output-port? _%port116629%_)
                          (let ((_%port116634%_ _%port116629%_))
                            (__display-as-string _%x116626%_ _%port116634%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port116629%_)
                            '#!void))))
                  (if (vector? _%x116576%_)
                      (vector-for-each
                       (lambda (_%$%g116645116647%_)
                         (let* ((_%x116650%_ _%$%g116645116647%_)
                                (_%port116653%_ _%port116580%_))
                           (if (output-port? _%port116653%_)
                               (let ((_%port116658%_ _%port116653%_))
                                 (__display-as-string
                                  _%x116650%_
                                  _%port116658%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port116653%_)
                                 '#!void))))
                       _%x116576%_)
                      (if (or (null? _%x116576%_)
                              (eq? _%x116576%_ '#!void)
                              (eof-object? _%x116576%_)
                              (boolean? _%x116576%_))
                          '#!void
                          (let ()
                            (raise-contract-violation-error
                             '"cannot convert as string"
                             'value:
                             _%x116576%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x116561%_ _%port116562%_)
        (if (output-port? _%port116562%_)
            (let ((_%port116566%_ _%port116562%_))
              (__display-as-string _%x116561%_ _%port116566%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@616.28-616.32"
               'contract:
               'output-port?
               'value:
               _%port116562%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x116501%_)
        (if (string? _%x116501%_)
            _%x116501%_
            (if (symbol? _%x116501%_)
                (let () (declare (not safe)) (##symbol->string _%x116501%_))
                (if (keyword? _%x116501%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x116501%_))
                    (if (number? _%x116501%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x116501%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g116507116509%_)
                           (let* ((_%x116512%_ _%x116501%_)
                                  (_%port116515%_ _%$%g116507116509%_))
                             (if (output-port? _%port116515%_)
                                 (let ((_%port116520%_ _%port116515%_))
                                   (__display-as-string
                                    _%x116512%_
                                    _%port116520%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port116515%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args116534%_
        (call-with-output-string
         '()
         (lambda (_%$%g116535116537%_)
           (let* ((_%x116540%_ _%args116534%_)
                  (_%port116543%_ _%$%g116535116537%_))
             (if (output-port? _%port116543%_)
                 (let ((_%port116548%_ _%port116543%_))
                   (__display-as-string _%x116540%_ _%port116548%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port116543%_)
                   '#!void)))))))
    (define as-string
      (lambda _g122925_
        (let ((_g122926_ (let () (declare (not safe)) (##length _g122925_))))
          (cond ((let () (declare (not safe)) (##fx= _g122926_ 1))
                 (apply as-string__0 _g122925_))
                (#t
                 (apply (lambda _%args116534%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args116534%_)))
                        _g122925_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g122925_))))))
    (define make-symbol__0
      (lambda (_%x116497%_)
        (if (interned-symbol? _%x116497%_)
            _%x116497%_
            (let ((__tmp122927 (as-string__0 _%x116497%_)))
              (declare (not safe))
              (##string->symbol __tmp122927)))))
    (define make-symbol__1
      (lambda _%args116499%_
        (let ((__tmp122928
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args116499%_))))
          (declare (not safe))
          (##string->symbol __tmp122928))))
    (define make-symbol
      (lambda _g122929_
        (let ((_g122930_ (let () (declare (not safe)) (##length _g122929_))))
          (cond ((let () (declare (not safe)) (##fx= _g122930_ 1))
                 (apply make-symbol__0 _g122929_))
                (#t
                 (apply (lambda _%args116499%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args116499%_)))
                        _g122929_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g122929_))))))
    (define make-keyword__0
      (lambda (_%x116493%_)
        (if (interned-keyword? _%x116493%_)
            _%x116493%_
            (let ((__tmp122931 (as-string__0 _%x116493%_)))
              (declare (not safe))
              (##string->keyword __tmp122931)))))
    (define make-keyword__1
      (lambda _%args116495%_
        (let ((__tmp122932
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args116495%_))))
          (declare (not safe))
          (##string->keyword __tmp122932))))
    (define make-keyword
      (lambda _g122933_
        (let ((_g122934_ (let () (declare (not safe)) (##length _g122933_))))
          (cond ((let () (declare (not safe)) (##fx= _g122934_ 1))
                 (apply make-keyword__0 _g122933_))
                (#t
                 (apply (lambda _%args116495%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args116495%_)))
                        _g122933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g122933_))))))
    (define interned-keyword?
      (lambda (_%x116490%_)
        (if (keyword? _%x116490%_)
            (not (uninterned-keyword? _%x116490%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym116478%_)
        (let ((_%sym116481%_ _%sym116478%_))
          (if (uninterned-symbol? _%sym116481%_)
              (let ((__tmp122935
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym116481%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp122935))
              (let ((__tmp122936
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym116481%_))))
                (declare (not safe))
                (##string->keyword __tmp122936))))))
    (define symbol->keyword
      (lambda (_%sym116464%_)
        (if (symbol? _%sym116464%_)
            (let ((_%sym116468%_ _%sym116464%_))
              (__symbol->keyword _%sym116468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym116464%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym116452%_)
        (let ((_%sym116455%_ _%sym116452%_))
          (if (uninterned-keyword? _%sym116455%_)
              (let ((__tmp122937
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym116455%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp122937))
              (let ((__tmp122938
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym116455%_))))
                (declare (not safe))
                (##string->symbol __tmp122938))))))
    (define keyword->symbol
      (lambda (_%sym116438%_)
        (if (keyword? _%sym116438%_)
            (let ((_%sym116442%_ _%sym116438%_))
              (__keyword->symbol _%sym116442%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym116438%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr116398%_ _%enc116399%_)
        (let* ((_%bstr116402%_ _%bstr116398%_) (_%enc116410%_ _%enc116399%_))
          (if (eq? _%enc116410%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr116402%_))
              (let* ((_%in116419%_
                      (open-input-u8vector
                       (list 'char-encoding:
                             _%enc116410%_
                             'init:
                             _%bstr116402%_)))
                     (_%len116421%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr116402%_)))
                     (_%out116423%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len116421%_)))
                     (_%n116425%_
                      (read-substring
                       _%out116423%_
                       '0
                       _%len116421%_
                       _%in116419%_)))
                (string-shrink! _%out116423%_ _%n116425%_)
                _%out116423%_)))))
    (define __bytes->string__0
      (lambda (_%bstr116431%_)
        (let ((_%enc116433%_ 'UTF-8))
          (__bytes->string__% _%bstr116431%_ _%enc116433%_))))
    (define __bytes->string
      (lambda _g122939_
        (let ((_g122940_ (let () (declare (not safe)) (##length _g122939_))))
          (cond ((let () (declare (not safe)) (##fx= _g122940_ 1))
                 (apply __bytes->string__0 _g122939_))
                ((let () (declare (not safe)) (##fx= _g122940_ 2))
                 (apply __bytes->string__% _g122939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g122939_))))))
    (define bytes->string__%
      (lambda (_%bstr116362%_ _%enc116363%_)
        (if (u8vector? _%bstr116362%_)
            (let ((_%bstr116367%_ _%bstr116362%_))
              (if (symbol? _%enc116363%_)
                  (let ((_%enc116377%_ _%enc116363%_))
                    (__bytes->string__% _%bstr116367%_ _%enc116377%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc116363%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr116362%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr116390%_)
        (let ((_%enc116392%_ 'UTF-8))
          (bytes->string__% _%bstr116390%_ _%enc116392%_))))
    (define bytes->string
      (lambda _g122941_
        (let ((_g122942_ (let () (declare (not safe)) (##length _g122941_))))
          (cond ((let () (declare (not safe)) (##fx= _g122942_ 1))
                 (apply bytes->string__0 _g122941_))
                ((let () (declare (not safe)) (##fx= _g122942_ 2))
                 (apply bytes->string__% _g122941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g122941_))))))
    (define __string->bytes__%
      (lambda (_%str116280%_ _%enc116281%_)
        (let* ((_%str116284%_ _%str116280%_) (_%enc116292%_ _%enc116281%_))
          (if (eq? _%enc116292%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str116284%_))
              (let* ((_%str116301%_ _%str116284%_)
                     (_%start116304%_ '0)
                     (_%end116307%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str116284%_)))
                     (_%enc116310%_ _%enc116292%_)
                     (_%str116315%_ _%str116301%_))
                (if (nonnegative-fixnum? _%start116304%_)
                    (let ((_%start116331%_ _%start116304%_))
                      (if (nonnegative-fixnum? _%end116307%_)
                          (let ((_%end116341%_ _%end116307%_))
                            (__substring->bytes__%
                             _%str116315%_
                             _%start116331%_
                             _%end116341%_
                             _%enc116310%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end116307%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start116304%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str116354%_)
        (let ((_%enc116356%_ 'UTF-8))
          (__string->bytes__% _%str116354%_ _%enc116356%_))))
    (define __string->bytes
      (lambda _g122943_
        (let ((_g122944_ (let () (declare (not safe)) (##length _g122943_))))
          (cond ((let () (declare (not safe)) (##fx= _g122944_ 1))
                 (apply __string->bytes__0 _g122943_))
                ((let () (declare (not safe)) (##fx= _g122944_ 2))
                 (apply __string->bytes__% _g122943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g122943_))))))
    (define string->bytes__%
      (lambda (_%str116244%_ _%enc116245%_)
        (if (string? _%str116244%_)
            (let ((_%str116249%_ _%str116244%_))
              (if (symbol? _%enc116245%_)
                  (let ((_%enc116259%_ _%enc116245%_))
                    (__string->bytes__% _%str116249%_ _%enc116259%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc116245%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str116244%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str116272%_)
        (let ((_%enc116274%_ 'UTF-8))
          (string->bytes__% _%str116272%_ _%enc116274%_))))
    (define string->bytes
      (lambda _g122945_
        (let ((_g122946_ (let () (declare (not safe)) (##length _g122945_))))
          (cond ((let () (declare (not safe)) (##fx= _g122946_ 1))
                 (apply string->bytes__0 _g122945_))
                ((let () (declare (not safe)) (##fx= _g122946_ 2))
                 (apply string->bytes__% _g122945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g122945_))))))
    (define __substring->bytes__%
      (lambda (_%str116196%_ _%start116197%_ _%end116198%_ _%enc116199%_)
        (let* ((_%str116202%_ _%str116196%_)
               (_%start116210%_ _%start116197%_)
               (_%end116218%_ _%end116198%_))
          (if (eq? _%enc116199%_ 'UTF-8)
              (string->utf8 _%str116202%_ _%start116210%_ _%end116218%_)
              (let ((_%out116227%_
                     (open-output-u8vector
                      (list 'char-encoding: _%enc116199%_))))
                (write-substring
                 _%str116202%_
                 _%start116210%_
                 _%end116218%_
                 _%out116227%_)
                (get-output-u8vector _%out116227%_))))))
    (define __substring->bytes__0
      (lambda (_%str116232%_ _%start116233%_ _%end116234%_)
        (let ((_%enc116236%_ 'UTF-8))
          (__substring->bytes__%
           _%str116232%_
           _%start116233%_
           _%end116234%_
           _%enc116236%_))))
    (define __substring->bytes
      (lambda _g122947_
        (let ((_g122948_ (let () (declare (not safe)) (##length _g122947_))))
          (cond ((let () (declare (not safe)) (##fx= _g122948_ 3))
                 (apply __substring->bytes__0 _g122947_))
                ((let () (declare (not safe)) (##fx= _g122948_ 4))
                 (apply __substring->bytes__% _g122947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g122947_))))))
    (define substring->bytes__%
      (lambda (_%str116144%_ _%start116145%_ _%end116146%_ _%enc116147%_)
        (if (string? _%str116144%_)
            (let ((_%str116151%_ _%str116144%_))
              (if (nonnegative-fixnum? _%start116145%_)
                  (let ((_%start116161%_ _%start116145%_))
                    (if (nonnegative-fixnum? _%end116146%_)
                        (let ((_%end116171%_ _%end116146%_))
                          (__substring->bytes__%
                           _%str116151%_
                           _%start116161%_
                           _%end116171%_
                           _%enc116147%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end116146%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start116145%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str116144%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str116184%_ _%start116185%_ _%end116186%_)
        (let ((_%enc116188%_ 'UTF-8))
          (substring->bytes__%
           _%str116184%_
           _%start116185%_
           _%end116186%_
           _%enc116188%_))))
    (define substring->bytes
      (lambda _g122949_
        (let ((_g122950_ (let () (declare (not safe)) (##length _g122949_))))
          (cond ((let () (declare (not safe)) (##fx= _g122950_ 3))
                 (apply substring->bytes__0 _g122949_))
                ((let () (declare (not safe)) (##fx= _g122950_ 4))
                 (apply substring->bytes__% _g122949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g122949_))))))
    (define __string-empty?
      (lambda (_%str116131%_)
        (let* ((_%str116134%_ _%str116131%_)
               (__tmp122951
                (let () (declare (not safe)) (##string-length _%str116134%_))))
          (declare (not safe))
          (##fxzero? __tmp122951))))
    (define string-empty?
      (lambda (_%str116117%_)
        (if (string? _%str116117%_)
            (let ((_%str116121%_ _%str116117%_))
              (__string-empty? _%str116121%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str116117%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str115951%_ _%criterion115952%_ _%start115953%_ _%end115954%_)
        (let* ((_%str115957%_ _%str115951%_)
               (_%start115965%_ _%start115953%_)
               (_%end115973%_ _%end115954%_)
               (_%end115985%_
                (let ((_%$e115982%_ _%end115973%_))
                  (if _%$e115982%_
                      _%$e115982%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str115957%_))))))
          (if (< _%start115965%_ '0)
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-index"
                 'value:
                 (cons _%str115957%_ (cons _%start115965%_ '())))
                '#!void)
              (if (> _%end115985%_
                     (let ()
                       (declare (not safe))
                       (##string-length _%str115957%_)))
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-index"
                     'value:
                     (cons _%str115957%_ (cons _%end115985%_ '())))
                    '#!void)
                  (if (char? _%criterion115952%_)
                      (let* ((_%str115990%_ _%str115957%_)
                             (_%char115993%_ _%criterion115952%_)
                             (_%start115996%_ _%start115965%_)
                             (_%end115999%_ _%end115985%_)
                             (_%str116003%_ _%str115990%_)
                             (_%char116019%_ _%char115993%_)
                             (_%start116027%_ _%start115996%_)
                             (_%end116035%_ _%end115999%_))
                        (____string-index/char
                         _%str116003%_
                         _%char116019%_
                         _%start116027%_
                         _%end116035%_))
                      (if (procedure? _%criterion115952%_)
                          (let* ((_%str116045%_ _%str115957%_)
                                 (_%pred?116048%_ _%criterion115952%_)
                                 (_%start116051%_ _%start115965%_)
                                 (_%end116054%_ _%end115985%_)
                                 (_%str116058%_ _%str116045%_)
                                 (_%pred?116070%_ _%pred?116048%_)
                                 (_%start116078%_ _%start116051%_)
                                 (_%end116086%_ _%end116054%_))
                            (____string-index/pred
                             _%str116058%_
                             _%pred?116070%_
                             _%start116078%_
                             _%end116086%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-index criterion must be char or procedure"
                             'value:
                             _%criterion115952%_)
                            '#!void))))))))
    (define __string-index__0
      (lambda (_%str116099%_ _%criterion116100%_)
        (let* ((_%start116102%_ '0) (_%end116104%_ '#f))
          (__string-index__%
           _%str116099%_
           _%criterion116100%_
           _%start116102%_
           _%end116104%_))))
    (define __string-index__1
      (lambda (_%str116106%_ _%criterion116107%_ _%start116108%_)
        (let ((_%end116110%_ '#f))
          (__string-index__%
           _%str116106%_
           _%criterion116107%_
           _%start116108%_
           _%end116110%_))))
    (define __string-index
      (lambda _g122952_
        (let ((_g122953_ (let () (declare (not safe)) (##length _g122952_))))
          (cond ((let () (declare (not safe)) (##fx= _g122953_ 2))
                 (apply __string-index__0 _g122952_))
                ((let () (declare (not safe)) (##fx= _g122953_ 3))
                 (apply __string-index__1 _g122952_))
                ((let () (declare (not safe)) (##fx= _g122953_ 4))
                 (apply __string-index__% _g122952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g122952_))))))
    (define string-index__%
      (lambda (_%str115886%_ _%criterion115887%_ _%start115888%_ _%end115889%_)
        (if (string? _%str115886%_)
            (let ((_%str115893%_ _%str115886%_))
              (if (nonnegative-fixnum? _%start115888%_)
                  (let ((_%start115903%_ _%start115888%_))
                    (if (or (not _%end115889%_) (fixnum? _%end115889%_))
                        (let ((_%end115919%_ _%end115889%_))
                          (__string-index__%
                           _%str115893%_
                           _%criterion115887%_
                           _%start115903%_
                           _%end115919%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@712.21-712.24"
                           'contract:
                           '(? (or not fixnum?))
                           'value:
                           _%end115889%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@711.21-711.26"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start115888%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@709.21-709.24"
               'contract:
               'string?
               'value:
               _%str115886%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str115932%_ _%criterion115933%_)
        (let* ((_%start115935%_ '0) (_%end115937%_ '#f))
          (string-index__%
           _%str115932%_
           _%criterion115933%_
           _%start115935%_
           _%end115937%_))))
    (define string-index__1
      (lambda (_%str115939%_ _%criterion115940%_ _%start115941%_)
        (let ((_%end115943%_ '#f))
          (string-index__%
           _%str115939%_
           _%criterion115940%_
           _%start115941%_
           _%end115943%_))))
    (define string-index
      (lambda _g122954_
        (let ((_g122955_ (let () (declare (not safe)) (##length _g122954_))))
          (cond ((let () (declare (not safe)) (##fx= _g122955_ 2))
                 (apply string-index__0 _g122954_))
                ((let () (declare (not safe)) (##fx= _g122955_ 3))
                 (apply string-index__1 _g122954_))
                ((let () (declare (not safe)) (##fx= _g122955_ 4))
                 (apply string-index__% _g122954_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g122954_))))))
    (define ____string-index/char
      (lambda (_%str115831%_ _%char115832%_ _%start115833%_ _%end115834%_)
        (let* ((_%str115837%_ _%str115831%_)
               (_%char115845%_ _%char115832%_)
               (_%start115853%_ _%start115833%_)
               (_%end115861%_ _%end115834%_))
          (let _%lp115870%_ ((_%k115872%_ _%start115853%_))
            (let ((_%k115874%_ _%k115872%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k115874%_ _%end115861%_))
                  (if (eq? _%char115845%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str115837%_ _%k115874%_)))
                      _%k115874%_
                      (_%lp115870%_
                       (let () (declare (not safe)) (##fx+ _%k115874%_ '1))))
                  '#f))))))
    (define __string-index/char
      (lambda (_%str115792%_ _%char115793%_ _%start115794%_ _%end115795%_)
        (let* ((_%str115798%_ _%str115792%_)
               (_%char115806%_ _%char115793%_)
               (_%start115814%_ _%start115794%_)
               (_%end115822%_ _%end115795%_))
          (____string-index/char
           _%str115798%_
           _%char115806%_
           _%start115814%_
           _%end115822%_))))
    (define ____string-index/pred
      (lambda (_%str115738%_ _%pred?115739%_ _%start115740%_ _%end115741%_)
        (let* ((_%str115744%_ _%str115738%_)
               (_%pred?115752%_ _%pred?115739%_)
               (_%start115760%_ _%start115740%_)
               (_%end115768%_ _%end115741%_))
          (let _%lp115777%_ ((_%k115779%_ _%start115760%_))
            (let ((_%k115781%_ _%k115779%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k115781%_ _%end115768%_))
                  (if (let ((__tmp122956
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str115744%_ _%k115781%_))))
                        (declare (not safe))
                        (_%pred?115752%_ __tmp122956))
                      _%k115781%_
                      (_%lp115777%_
                       (let () (declare (not safe)) (##fx+ _%k115781%_ '1))))
                  '#f))))))
    (define __string-index/pred
      (lambda (_%str115699%_ _%pred?115700%_ _%start115701%_ _%end115702%_)
        (let* ((_%str115705%_ _%str115699%_)
               (_%pred?115713%_ _%pred?115700%_)
               (_%start115721%_ _%start115701%_)
               (_%end115729%_ _%end115702%_))
          (____string-index/pred
           _%str115705%_
           _%pred?115713%_
           _%start115721%_
           _%end115729%_))))
    (define __string-rindex__%
      (lambda (_%str115539%_ _%criterion115540%_ _%start115541%_ _%end115542%_)
        (let* ((_%str115545%_ _%str115539%_)
               (_%start115553%_ _%start115541%_)
               (_%end115561%_ _%end115542%_))
          (if (>= _%start115553%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str115545%_)))
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-rindex"
                 'value:
                 (cons _%str115545%_ (cons _%start115553%_ '())))
                '#!void)
              (if (< _%end115561%_ '0)
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-rindex"
                     'value:
                     (cons _%str115545%_ (cons _%end115561%_ '())))
                    '#!void)
                  (if (char? _%criterion115540%_)
                      (let* ((_%str115573%_ _%str115545%_)
                             (_%char115576%_ _%criterion115540%_)
                             (_%start115579%_ _%start115553%_)
                             (_%end115582%_ _%end115561%_)
                             (_%str115586%_ _%str115573%_)
                             (_%char115601%_ _%char115576%_)
                             (_%start115609%_ _%start115579%_)
                             (_%end115617%_ _%end115582%_))
                        (____string-rindex/char
                         _%str115586%_
                         _%char115601%_
                         _%start115609%_
                         _%end115617%_))
                      (if (procedure? _%criterion115540%_)
                          (let* ((_%str115627%_ _%str115545%_)
                                 (_%pred?115630%_ _%criterion115540%_)
                                 (_%start115633%_ _%start115553%_)
                                 (_%end115636%_ _%end115561%_)
                                 (_%str115640%_ _%str115627%_)
                                 (_%pred?115652%_ _%pred?115630%_)
                                 (_%start115660%_ _%start115633%_)
                                 (_%end115668%_ _%end115636%_))
                            (____string-rindex/pred
                             _%str115640%_
                             _%pred?115652%_
                             _%start115660%_
                             _%end115668%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-rindex criterion must be char or procedure"
                             'value:
                             _%criterion115540%_)
                            '#!void))))))))
    (define __string-rindex__0
      (lambda (_%str115681%_ _%criterion115682%_)
        (let* ((_%start115684%_
                (let ((__tmp122957 (string-length _%str115681%_)))
                  (declare (not safe))
                  (##fx- __tmp122957 '1)))
               (_%end115686%_ '0))
          (__string-rindex__%
           _%str115681%_
           _%criterion115682%_
           _%start115684%_
           _%end115686%_))))
    (define __string-rindex__1
      (lambda (_%str115688%_ _%criterion115689%_ _%start115690%_)
        (let ((_%end115692%_ '0))
          (__string-rindex__%
           _%str115688%_
           _%criterion115689%_
           _%start115690%_
           _%end115692%_))))
    (define __string-rindex
      (lambda _g122958_
        (let ((_g122959_ (let () (declare (not safe)) (##length _g122958_))))
          (cond ((let () (declare (not safe)) (##fx= _g122959_ 2))
                 (apply __string-rindex__0 _g122958_))
                ((let () (declare (not safe)) (##fx= _g122959_ 3))
                 (apply __string-rindex__1 _g122958_))
                ((let () (declare (not safe)) (##fx= _g122959_ 4))
                 (apply __string-rindex__% _g122958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g122958_))))))
    (define string-rindex__%
      (lambda (_%str115480%_ _%criterion115481%_ _%start115482%_ _%end115483%_)
        (if (string? _%str115480%_)
            (let ((_%str115487%_ _%str115480%_))
              (if (fixnum? _%start115482%_)
                  (let ((_%start115497%_ _%start115482%_))
                    (if (fixnum? _%end115483%_)
                        (let ((_%end115507%_ _%end115483%_))
                          (__string-rindex__%
                           _%str115487%_
                           _%criterion115481%_
                           _%start115497%_
                           _%end115507%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.22-756.25"
                           'contract:
                           'fixnum?
                           'value:
                           _%end115483%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.22-755.27"
                     'contract:
                     'fixnum?
                     'value:
                     _%start115482%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@753.22-753.25"
               'contract:
               'string?
               'value:
               _%str115480%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str115520%_ _%criterion115521%_)
        (let* ((_%start115523%_
                (let ((__tmp122960 (string-length _%str115520%_)))
                  (declare (not safe))
                  (##fx- __tmp122960 '1)))
               (_%end115525%_ '0))
          (string-rindex__%
           _%str115520%_
           _%criterion115521%_
           _%start115523%_
           _%end115525%_))))
    (define string-rindex__1
      (lambda (_%str115527%_ _%criterion115528%_ _%start115529%_)
        (let ((_%end115531%_ '0))
          (string-rindex__%
           _%str115527%_
           _%criterion115528%_
           _%start115529%_
           _%end115531%_))))
    (define string-rindex
      (lambda _g122961_
        (let ((_g122962_ (let () (declare (not safe)) (##length _g122961_))))
          (cond ((let () (declare (not safe)) (##fx= _g122962_ 2))
                 (apply string-rindex__0 _g122961_))
                ((let () (declare (not safe)) (##fx= _g122962_ 3))
                 (apply string-rindex__1 _g122961_))
                ((let () (declare (not safe)) (##fx= _g122962_ 4))
                 (apply string-rindex__% _g122961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g122961_))))))
    (define ____string-rindex/char
      (lambda (_%str115425%_ _%char115426%_ _%start115427%_ _%end115428%_)
        (let* ((_%str115431%_ _%str115425%_)
               (_%char115439%_ _%char115426%_)
               (_%start115447%_ _%start115427%_)
               (_%end115455%_ _%end115428%_))
          (let _%lp115464%_ ((_%k115466%_ _%start115447%_))
            (let ((_%k115468%_ _%k115466%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k115468%_ _%end115455%_))
                  (if (eq? _%char115439%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str115431%_ _%k115468%_)))
                      _%k115468%_
                      (_%lp115464%_
                       (let () (declare (not safe)) (##fx- _%k115468%_ '1))))
                  '#f))))))
    (define __string-rindex/char
      (lambda (_%str115386%_ _%char115387%_ _%start115388%_ _%end115389%_)
        (let* ((_%str115392%_ _%str115386%_)
               (_%char115400%_ _%char115387%_)
               (_%start115408%_ _%start115388%_)
               (_%end115416%_ _%end115389%_))
          (____string-rindex/char
           _%str115392%_
           _%char115400%_
           _%start115408%_
           _%end115416%_))))
    (define ____string-rindex/pred
      (lambda (_%str115332%_ _%pred?115333%_ _%start115334%_ _%end115335%_)
        (let* ((_%str115338%_ _%str115332%_)
               (_%pred?115346%_ _%pred?115333%_)
               (_%start115354%_ _%start115334%_)
               (_%end115362%_ _%end115335%_))
          (let _%lp115371%_ ((_%k115373%_ _%start115354%_))
            (let ((_%k115375%_ _%k115373%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k115375%_ _%end115362%_))
                  (if (let ((__tmp122963
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str115338%_ _%k115375%_))))
                        (declare (not safe))
                        (_%pred?115346%_ __tmp122963))
                      _%k115375%_
                      (_%lp115371%_
                       (let () (declare (not safe)) (##fx- _%k115375%_ '1))))
                  '#f))))))
    (define __string-rindex/pred
      (lambda (_%str115293%_ _%pred?115294%_ _%start115295%_ _%end115296%_)
        (let* ((_%str115299%_ _%str115293%_)
               (_%pred?115307%_ _%pred?115294%_)
               (_%start115315%_ _%start115295%_)
               (_%end115323%_ _%end115296%_))
          (____string-rindex/pred
           _%str115299%_
           _%pred?115307%_
           _%start115315%_
           _%end115323%_))))
    (define __string-split
      (lambda (_%str115181%_ _%char115182%_)
        (let* ((_%str115185%_ _%str115181%_)
               (_%char115193%_ _%char115182%_)
               (_%len115202%_
                (let () (declare (not safe)) (##string-length _%str115185%_))))
          (let _%lp115204%_ ((_%start115206%_ '0) (_%r115207%_ '()))
            (let* ((_%start115210%_ _%start115206%_)
                   (_%$e115278%_
                    (let* ((_%str115223%_ _%str115185%_)
                           (_%criterion115226%_ _%char115193%_)
                           (_%start115229%_ _%start115210%_)
                           (_%end115232%_ '#f)
                           (_%str115237%_ _%str115223%_))
                      (if (nonnegative-fixnum? _%start115229%_)
                          (let ((_%start115252%_ _%start115229%_))
                            (if (let ((_%$e115264%_ '#t))
                                  (and _%$e115264%_ _%$e115264%_))
                                (let ((_%end115268%_ _%end115232%_))
                                  (__string-index__%
                                   _%str115237%_
                                   _%criterion115226%_
                                   _%start115252%_
                                   _%end115268%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   '(? (or not fixnum?))
                                   'value:
                                   _%end115232%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start115229%_)
                            '#!void)))))
              (if _%$e115278%_
                  (let ((_%end115283%_ _%$e115278%_))
                    (_%lp115204%_
                     (let () (declare (not safe)) (##fx+ _%end115283%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str115185%_
                              _%start115210%_
                              _%end115283%_))
                           _%r115207%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start115210%_ _%len115202%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str115185%_
                                _%start115210%_
                                _%len115202%_)))
                       _%r115207%_)
                      (reverse! _%r115207%_))))))))
    (define string-split
      (lambda (_%str115156%_ _%char115157%_)
        (if (string? _%str115156%_)
            (let ((_%str115161%_ _%str115156%_))
              (if (char? _%char115157%_)
                  (let ((_%char115171%_ _%char115157%_))
                    (__string-split _%str115161%_ _%char115171%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@794.37-794.41"
                     'contract:
                     'char?
                     'value:
                     _%char115157%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@794.21-794.24"
               'contract:
               'string?
               'value:
               _%str115156%_)
              '#!void))))
    (define string-join
      (lambda (_%strs115006%_ _%join115007%_)
        (letrec ((_%join-length115010%_
                  (lambda (_%strs115094%_ _%jlen115095%_)
                    (let _%lp115097%_ ((_%rest115099%_ _%strs115094%_)
                                       (_%len115100%_ '0))
                      (let* ((_%len115102%_ _%len115100%_)
                             (_%$%rest115110115118%_ _%rest115099%_)
                             (_%$%else115112115126%_ (lambda () '0))
                             (_%$%K115114115144%_
                              (lambda (_%rest115129%_ _%hd115130%_)
                                (if (string? _%hd115130%_)
                                    (let ((_%hd115132%_ _%hd115130%_))
                                      (if (pair? _%rest115129%_)
                                          (_%lp115097%_
                                           _%rest115129%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd115132%_))
                                                _%jlen115095%_
                                                _%len115102%_))
                                          (let ((__tmp122964
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd115132%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp122964
                                                   _%len115102%_))))
                                    (begin
                                      (raise-contract-violation-error
                                       '"expected string"
                                       'value:
                                       _%hd115130%_)
                                      '#!void)))))
                        (if (pair? _%$%rest115110115118%_)
                            (let ((_%$%hd115115115147%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest115110115118%_)))
                                  (_%$%tl115116115149%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest115110115118%_))))
                              (let* ((_%hd115152%_ _%$%hd115115115147%_)
                                     (_%rest115154%_ _%$%tl115116115149%_))
                                (_%$%K115114115144%_
                                 _%rest115154%_
                                 _%hd115152%_)))
                            (_%$%else115112115126%_)))))))
          (let* ((_%join115015%_
                  (if (char? _%join115007%_)
                      (let () (declare (not safe)) (##string _%join115007%_))
                      (if (string? _%join115007%_)
                          _%join115007%_
                          (let ()
                            (raise-contract-violation-error
                             '"expected string or char"
                             'value:
                             _%join115007%_)
                            '#!void))))
                 (_%jlen115017%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join115015%_)))
                 (_%olen115019%_
                  (_%join-length115010%_ _%strs115006%_ _%jlen115017%_))
                 (_%ostr115021%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen115019%_))))
            (let _%lp115024%_ ((_%rest115026%_ _%strs115006%_)
                               (_%k115027%_ '0))
              (let* ((_%k115030%_ _%k115027%_)
                     (_%$%rest115046115054%_ _%rest115026%_)
                     (_%$%else115048115062%_ (lambda () '""))
                     (_%$%K115050115082%_
                      (lambda (_%rest115065%_ _%hd115066%_)
                        (let* ((_%hd115068%_ _%hd115066%_)
                               (_%hdlen115080%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd115068%_))))
                          (if (pair? _%rest115065%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd115068%_
                                   '0
                                   _%hdlen115080%_
                                   _%ostr115021%_
                                   _%k115030%_))
                                (let ((__tmp122965
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k115030%_ _%hdlen115080%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join115015%_
                                   '0
                                   _%jlen115017%_
                                   _%ostr115021%_
                                   __tmp122965))
                                (_%lp115024%_
                                 _%rest115065%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k115030%_
                                          _%hdlen115080%_
                                          _%jlen115017%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd115068%_
                                   '0
                                   _%hdlen115080%_
                                   _%ostr115021%_
                                   _%k115030%_))
                                _%ostr115021%_))))))
                (if (pair? _%$%rest115046115054%_)
                    (let ((_%$%hd115051115085%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest115046115054%_)))
                          (_%$%tl115052115087%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest115046115054%_))))
                      (let* ((_%hd115090%_ _%$%hd115051115085%_)
                             (_%rest115092%_ _%$%tl115052115087%_))
                        (_%$%K115050115082%_ _%rest115092%_ _%hd115090%_)))
                    (_%$%else115048115062%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes114946%_ _%port114947%_ _%start114948%_ _%end114949%_)
        (let* ((_%bytes114952%_ _%bytes114946%_)
               (_%port114960%_ _%port114947%_)
               (_%start114968%_ _%start114948%_)
               (_%end114976%_ _%end114949%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes114952%_
           _%start114968%_
           _%end114976%_
           _%port114960%_))))
    (define __read-u8vector__0
      (lambda (_%bytes114988%_ _%port114989%_)
        (let* ((_%start114991%_ '0)
               (_%end114993%_ (u8vector-length _%bytes114988%_)))
          (__read-u8vector__%
           _%bytes114988%_
           _%port114989%_
           _%start114991%_
           _%end114993%_))))
    (define __read-u8vector__1
      (lambda (_%bytes114995%_ _%port114996%_ _%start114997%_)
        (let ((_%end114999%_ (u8vector-length _%bytes114995%_)))
          (__read-u8vector__%
           _%bytes114995%_
           _%port114996%_
           _%start114997%_
           _%end114999%_))))
    (define __read-u8vector
      (lambda _g122966_
        (let ((_g122967_ (let () (declare (not safe)) (##length _g122966_))))
          (cond ((let () (declare (not safe)) (##fx= _g122967_ 2))
                 (apply __read-u8vector__0 _g122966_))
                ((let () (declare (not safe)) (##fx= _g122967_ 3))
                 (apply __read-u8vector__1 _g122966_))
                ((let () (declare (not safe)) (##fx= _g122967_ 4))
                 (apply __read-u8vector__% _g122966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g122966_))))))
    (define read-u8vector__%
      (lambda (_%bytes114871%_ _%port114872%_ _%start114873%_ _%end114874%_)
        (if (u8vector? _%bytes114871%_)
            (let ((_%bytes114878%_ _%bytes114871%_))
              (if (input-port? _%port114872%_)
                  (let ((_%port114888%_ _%port114872%_))
                    (if (and (fixnum? _%start114873%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start114873%_ '0))
                             (let ((__tmp122968
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes114878%_))))
                               (declare (not safe))
                               (##fx< _%start114873%_ __tmp122968)))
                        (let ((_%start114901%_ _%start114873%_))
                          (if (and (fixnum? _%end114874%_)
                                   (let ((__tmp122969
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes114878%_))))
                                     (declare (not safe))
                                     (##fx<= _%start114901%_
                                             _%end114874%_
                                             __tmp122969)))
                              (let ((_%end114914%_ _%end114874%_))
                                (__read-u8vector__%
                                 _%bytes114878%_
                                 _%port114888%_
                                 _%start114901%_
                                 _%end114914%_))
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
                                 _%end114874%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@861.22-861.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start114873%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@860.22-860.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port114872%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@859.22-859.27"
               'contract:
               'u8vector?
               'value:
               _%bytes114871%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes114927%_ _%port114928%_)
        (let* ((_%start114930%_ '0)
               (_%end114932%_ (u8vector-length _%bytes114927%_)))
          (read-u8vector__%
           _%bytes114927%_
           _%port114928%_
           _%start114930%_
           _%end114932%_))))
    (define read-u8vector__1
      (lambda (_%bytes114934%_ _%port114935%_ _%start114936%_)
        (let ((_%end114938%_ (u8vector-length _%bytes114934%_)))
          (read-u8vector__%
           _%bytes114934%_
           _%port114935%_
           _%start114936%_
           _%end114938%_))))
    (define read-u8vector
      (lambda _g122970_
        (let ((_g122971_ (let () (declare (not safe)) (##length _g122970_))))
          (cond ((let () (declare (not safe)) (##fx= _g122971_ 2))
                 (apply read-u8vector__0 _g122970_))
                ((let () (declare (not safe)) (##fx= _g122971_ 3))
                 (apply read-u8vector__1 _g122970_))
                ((let () (declare (not safe)) (##fx= _g122971_ 4))
                 (apply read-u8vector__% _g122970_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g122970_))))))
    (define __write-u8vector__%
      (lambda (_%bytes114810%_ _%port114811%_ _%start114812%_ _%end114813%_)
        (let* ((_%bytes114816%_ _%bytes114810%_)
               (_%port114824%_ _%port114811%_)
               (_%start114832%_ _%start114812%_)
               (_%end114840%_ _%end114813%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes114816%_
           _%start114832%_
           _%end114840%_
           _%port114824%_))))
    (define __write-u8vector__0
      (lambda (_%bytes114852%_ _%port114853%_)
        (let* ((_%start114855%_ '0)
               (_%end114857%_ (u8vector-length _%bytes114852%_)))
          (__write-u8vector__%
           _%bytes114852%_
           _%port114853%_
           _%start114855%_
           _%end114857%_))))
    (define __write-u8vector__1
      (lambda (_%bytes114859%_ _%port114860%_ _%start114861%_)
        (let ((_%end114863%_ (u8vector-length _%bytes114859%_)))
          (__write-u8vector__%
           _%bytes114859%_
           _%port114860%_
           _%start114861%_
           _%end114863%_))))
    (define __write-u8vector
      (lambda _g122972_
        (let ((_g122973_ (let () (declare (not safe)) (##length _g122972_))))
          (cond ((let () (declare (not safe)) (##fx= _g122973_ 2))
                 (apply __write-u8vector__0 _g122972_))
                ((let () (declare (not safe)) (##fx= _g122973_ 3))
                 (apply __write-u8vector__1 _g122972_))
                ((let () (declare (not safe)) (##fx= _g122973_ 4))
                 (apply __write-u8vector__% _g122972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g122972_))))))
    (define write-u8vector__%
      (lambda (_%bytes114740%_ _%port114741%_ _%start114742%_ _%end114743%_)
        (if (u8vector? _%bytes114740%_)
            (let ((_%bytes114747%_ _%bytes114740%_))
              (if (output-port? _%port114741%_)
                  (let* ((_%port114757%_ _%port114741%_)
                         (_%start114766%_ _%start114742%_))
                    (if (and (fixnum? _%end114743%_)
                             (let ((__tmp122974
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes114747%_))))
                               (declare (not safe))
                               (##fx<= _%start114766%_
                                       _%end114743%_
                                       __tmp122974)))
                        (let ((_%end114778%_ _%end114743%_))
                          (__write-u8vector__%
                           _%bytes114747%_
                           _%port114757%_
                           _%start114766%_
                           _%end114778%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@872.23-872.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end114743%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@870.23-870.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port114741%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@869.23-869.28"
               'contract:
               'u8vector?
               'value:
               _%bytes114740%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes114791%_ _%port114792%_)
        (let* ((_%start114794%_ '0)
               (_%end114796%_ (u8vector-length _%bytes114791%_)))
          (write-u8vector__%
           _%bytes114791%_
           _%port114792%_
           _%start114794%_
           _%end114796%_))))
    (define write-u8vector__1
      (lambda (_%bytes114798%_ _%port114799%_ _%start114800%_)
        (let ((_%end114802%_ (u8vector-length _%bytes114798%_)))
          (write-u8vector__%
           _%bytes114798%_
           _%port114799%_
           _%start114800%_
           _%end114802%_))))
    (define write-u8vector
      (lambda _g122975_
        (let ((_g122976_ (let () (declare (not safe)) (##length _g122975_))))
          (cond ((let () (declare (not safe)) (##fx= _g122976_ 2))
                 (apply write-u8vector__0 _g122975_))
                ((let () (declare (not safe)) (##fx= _g122976_ 3))
                 (apply write-u8vector__1 _g122975_))
                ((let () (declare (not safe)) (##fx= _g122976_ 4))
                 (apply write-u8vector__% _g122975_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g122975_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag114708%_
               _%dbg-exprs114709%_
               _%dbg-thunks114710%_
               _%expr114711%_
               _%thunk114712%_)
        (letrec ((_%o114714%_ (current-output-port))
                 (_%e114715%_ (current-error-port))
                 (_%p114716%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f114717%_
                  (lambda ()
                    (force-output _%o114714%_)
                    (force-output _%e114715%_)))
                 (_%d114718%_
                  (lambda (_%x114725%_) (display _%x114725%_ _%e114715%_)))
                 (_%w114719%_
                  (lambda (_%x114727%_) (_%p114716%_ _%x114727%_ _%e114715%_)))
                 (_%n114720%_ (lambda () (newline _%e114715%_)))
                 (_%v114721%_
                  (lambda (_%l114730%_)
                    (for-each
                     (lambda (_%x114732%_)
                       (_%d114718%_ '" ")
                       (_%w114719%_ _%x114732%_))
                     _%l114730%_)
                    (_%n114720%_)))
                 (_%x114722%_
                  (lambda (_%expr114734%_ _%thunk114735%_)
                    (call-with-values
                     _%thunk114735%_
                     (lambda _%x114737%_
                       (_%f114717%_)
                       (_%d114718%_ '"  ")
                       (_%w114719%_ _%expr114734%_)
                       (_%d114718%_ '" =>")
                       (_%v114721%_ _%x114737%_)
                       (_%f114717%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x114737%_)))))))
          (if _%tag114708%_
              (begin
                (if (eq? _%tag114708%_ '#!void)
                    '#!void
                    (begin
                      (_%f114717%_)
                      (_%d114718%_ _%tag114708%_)
                      (_%n114720%_)))
                (for-each _%x114722%_ _%dbg-exprs114709%_ _%dbg-thunks114710%_)
                (if _%thunk114712%_
                    (_%x114722%_ _%expr114711%_ _%thunk114712%_)
                    '#!void))
              (if _%thunk114712%_ (_%thunk114712%_) '#!void)))))))
