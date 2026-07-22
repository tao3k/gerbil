(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/util::timestamp 1784461439)
  (begin
    (define raise-contract-violation-error error)
    (set! raise-contract-violation-error raise-contract-violation-error)
    (define displayln
      (lambda _%args118019%_
        (let ()
          (let () (declare (not safe)) (##for-each display _%args118019%_))
          (newline))))
    (define display*
      (lambda _%args118016%_
        (let () (declare (not safe)) (##for-each display _%args118016%_))))
    (define __file-newer?
      (lambda (_%file1117807%_ _%file2117808%_)
        (let* ((_%file1117811%_ _%file1117807%_)
               (_%file2117819%_ _%file2117808%_))
          (letrec ((_%__modification-time117963%_
                    (lambda (_%file118004%_)
                      (let* ((_%file118007%_ _%file118004%_)
                             (__tmp120899
                              (let ((__tmp120900
                                     (let ()
                                       (declare (not safe))
                                       (##file-info _%file118007%_ '#t))))
                                (declare (not safe))
                                (##file-info-last-modification-time
                                 __tmp120900))))
                        (declare (not safe))
                        (##time->seconds __tmp120899))))
                   (_%modification-time117964%_
                    (lambda (_%file117992%_)
                      (let ((_%file117995%_ _%file117992%_))
                        (_%__modification-time117963%_ _%file117995%_)))))
            (let ((__tmp120902
                   (let* ((_%file117966%_ _%file1117811%_)
                          (_%file117970%_ _%file117966%_))
                     (_%__modification-time117963%_ _%file117970%_)))
                  (__tmp120901
                   (let* ((_%file117979%_ _%file2117819%_)
                          (_%file117983%_ _%file117979%_))
                     (_%__modification-time117963%_ _%file117983%_))))
              (declare (not safe))
              (##fl> __tmp120902 __tmp120901))))))
    (define file-newer?
      (lambda (_%file1117782%_ _%file2117783%_)
        (if (string? _%file1117782%_)
            (let ((_%file1117787%_ _%file1117782%_))
              (if (string? _%file2117783%_)
                  (let ((_%file2117797%_ _%file2117783%_))
                    (__file-newer? _%file1117787%_ _%file2117797%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@75.20-75.25"
                     'contract:
                     'string?
                     'value:
                     _%file2117783%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@74.20-74.25"
               'contract:
               'string?
               'value:
               _%file1117782%_)
              '#!void))))
    (define __create-directory*__%
      (lambda (_%dir117492%_ _%perms117493%_)
        (let* ((_%dir117496%_ _%dir117492%_) (_%perms117504%_ _%perms117493%_))
          (letrec ((_%__create1117648%_
                    (lambda (_%path117757%_)
                      (let ((_%path117760%_ _%path117757%_))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path117760%_))
                            (if (eq? (file-type _%path117760%_) 'directory)
                                '#!void
                                (begin
                                  (raise-contract-violation-error
                                   '"Path component is not a directory"
                                   'value:
                                   _%path117760%_)
                                  '#!void))
                            (if _%perms117504%_
                                (create-directory
                                 (cons 'path:
                                       (cons _%path117760%_
                                             (cons 'permissions:
                                                   (cons _%perms117504%_
                                                         '())))))
                                (create-directory _%path117760%_))))))
                   (_%create1117649%_
                    (lambda (_%path117745%_)
                      (let ((_%path117748%_ _%path117745%_))
                        (_%__create1117648%_ _%path117748%_)))))
            (if (let () (declare (not safe)) (##file-exists? _%dir117496%_))
                '#!void
                (let _%lp117651%_ ((_%start117653%_ '0))
                  (let ((_%$e117710%_
                         (let* ((_%str117655%_ _%dir117496%_)
                                (_%criterion117658%_ '#\/)
                                (_%start117661%_ _%start117653%_)
                                (_%end117664%_ '#f)
                                (_%str117669%_ _%str117655%_))
                           (if (nonnegative-fixnum? _%start117661%_)
                               (let ((_%start117684%_ _%start117661%_))
                                 (if (let ((_%$e117696%_ '#t))
                                       (and _%$e117696%_ _%$e117696%_))
                                     (let ((_%end117700%_ _%end117664%_))
                                       (__string-index__%
                                        _%str117669%_
                                        _%criterion117658%_
                                        _%start117684%_
                                        _%end117700%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/util
                                        'contract:
                                        '(? (or not fixnum?))
                                        'value:
                                        _%end117664%_)
                                       '#!void)))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'nonnegative-fixnum?
                                  'value:
                                  _%start117661%_)
                                 '#!void)))))
                    (if _%$e117710%_
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (##fx> _%$e117710%_ '0))
                              (let* ((_%path117715%_
                                      (substring
                                       _%dir117496%_
                                       '0
                                       _%$e117710%_))
                                     (_%path117719%_ _%path117715%_))
                                (_%__create1117648%_ _%path117719%_))
                              '#!void)
                          (_%lp117651%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%$e117710%_ '1))))
                        (let* ((_%path117731%_ _%dir117496%_)
                               (_%path117735%_ _%path117731%_))
                          (_%__create1117648%_ _%path117735%_))))))
            '#!void))))
    (define __create-directory*__0
      (lambda (_%dir117775%_)
        (let ((_%perms117777%_ '493))
          (__create-directory*__% _%dir117775%_ _%perms117777%_))))
    (define __create-directory*
      (lambda _g120903_
        (let ((_g120904_ (let () (declare (not safe)) (##length _g120903_))))
          (cond ((let () (declare (not safe)) (##fx= _g120904_ 1))
                 (apply __create-directory*__0 _g120903_))
                ((let () (declare (not safe)) (##fx= _g120904_ 2))
                 (apply __create-directory*__% _g120903_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __create-directory*
                  _g120903_))))))
    (define create-directory*__%
      (lambda (_%dir117456%_ _%perms117457%_)
        (if (string? _%dir117456%_)
            (let ((_%dir117461%_ _%dir117456%_))
              (if (fixnum? _%perms117457%_)
                  (let ((_%perms117471%_ _%perms117457%_))
                    (__create-directory*__% _%dir117461%_ _%perms117471%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@86.26-86.31"
                     'contract:
                     'fixnum?
                     'value:
                     _%perms117457%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@85.26-85.29"
               'contract:
               'string?
               'value:
               _%dir117456%_)
              '#!void))))
    (define create-directory*__0
      (lambda (_%dir117484%_)
        (let ((_%perms117486%_ '493))
          (create-directory*__% _%dir117484%_ _%perms117486%_))))
    (define create-directory*
      (lambda _g120905_
        (let ((_g120906_ (let () (declare (not safe)) (##length _g120905_))))
          (cond ((let () (declare (not safe)) (##fx= _g120906_ 1))
                 (apply create-directory*__0 _g120905_))
                ((let () (declare (not safe)) (##fx= _g120906_ 2))
                 (apply create-directory*__% _g120905_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  create-directory*
                  _g120905_))))))
    (define __move-file__%
      (lambda (_%src117399%_ _%dest117400%_ _%replace?117401%_)
        (let* ((_%src117404%_ _%src117399%_)
               (_%dest117412%_ _%dest117400%_)
               (_%replace?117420%_ _%replace?117401%_))
          (letrec ((_%force-move-it117429%_
                    (lambda ()
                      (let ((_%tmp117435%_
                             (if _%replace?117420%_
                                 (if (let ()
                                       (declare (not safe))
                                       (##file-exists? _%dest117412%_))
                                     (let ((__tmp120907
                                            (number->string
                                             (let ()
                                               (declare (not safe))
                                               (##current-time-point)))))
                                       (declare (not safe))
                                       (##string-append
                                        _%dest117412%_
                                        '"."
                                        __tmp120907))
                                     '#f)
                                 '#f)))
                        (if _%tmp117435%_
                            (rename-file _%dest117412%_ _%tmp117435%_)
                            '#!void)
                        (with-exception-catcher
                         (lambda (_%e117437%_)
                           (if _%tmp117435%_
                               (rename-file _%tmp117435%_ _%dest117412%_ '#t)
                               '#!void)
                           (raise _%e117437%_))
                         (lambda ()
                           (let ((_%fi117440%_
                                  (let ()
                                    (declare (not safe))
                                    (##file-info _%src117404%_ '#f))))
                             (if (eq? (let ()
                                        (declare (not safe))
                                        (##file-info-type _%fi117440%_))
                                      'symbolic-link)
                                 (let ((__tmp120908
                                        (path-normalize _%src117404%_)))
                                   (declare (not safe))
                                   (##create-symbolic-link
                                    __tmp120908
                                    _%dest117412%_))
                                 (let ()
                                   (declare (not safe))
                                   (##copy-file
                                    _%src117404%_
                                    _%dest117412%_))))
                           (let ()
                             (declare (not safe))
                             (##delete-file _%src117404%_))
                           (if _%tmp117435%_
                               (with-exception-catcher
                                void
                                (lambda () (delete-file _%tmp117435%_)))
                               '#!void)))))))
            (with-exception-catcher
             (lambda (_%e117431%_)
               (if (let () (declare (not safe)) (##file-exists? _%src117404%_))
                   (_%force-move-it117429%_)
                   (raise _%e117431%_)))
             (lambda ()
               (let ()
                 (declare (not safe))
                 (##rename-file
                  _%src117404%_
                  _%dest117412%_
                  _%replace?117420%_))))
            '#!void))))
    (define __move-file__0
      (lambda (_%src117446%_ _%dest117447%_)
        (let ((_%replace?117449%_ '#t))
          (__move-file__% _%src117446%_ _%dest117447%_ _%replace?117449%_))))
    (define __move-file
      (lambda _g120909_
        (let ((_g120910_ (let () (declare (not safe)) (##length _g120909_))))
          (cond ((let () (declare (not safe)) (##fx= _g120910_ 2))
                 (apply __move-file__0 _g120909_))
                ((let () (declare (not safe)) (##fx= _g120910_ 3))
                 (apply __move-file__% _g120909_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __move-file
                  _g120909_))))))
    (define move-file__%
      (lambda (_%src117350%_ _%dest117351%_ _%replace?117352%_)
        (if (string? _%src117350%_)
            (let ((_%src117356%_ _%src117350%_))
              (if (string? _%dest117351%_)
                  (let ((_%dest117366%_ _%dest117351%_))
                    (if (boolean? _%replace?117352%_)
                        (let ((_%replace?117376%_ _%replace?117352%_))
                          (__move-file__%
                           _%src117356%_
                           _%dest117366%_
                           _%replace?117376%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@111.51-111.59"
                           'contract:
                           'boolean?
                           'value:
                           _%replace?117352%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@111.34-111.38"
                     'contract:
                     'string?
                     'value:
                     _%dest117351%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@111.18-111.21"
               'contract:
               'string?
               'value:
               _%src117350%_)
              '#!void))))
    (define move-file__0
      (lambda (_%src117389%_ _%dest117390%_)
        (let ((_%replace?117392%_ '#t))
          (move-file__% _%src117389%_ _%dest117390%_ _%replace?117392%_))))
    (define move-file
      (lambda _g120911_
        (let ((_g120912_ (let () (declare (not safe)) (##length _g120911_))))
          (cond ((let () (declare (not safe)) (##fx= _g120912_ 2))
                 (apply move-file__0 _g120911_))
                ((let () (declare (not safe)) (##fx= _g120912_ 3))
                 (apply move-file__% _g120911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  move-file
                  _g120911_))))))
    (define absent-obj (let () (declare (not safe)) (##absent-object)))
    (define absent-value '#(#!void))
    (define true (lambda _%ignore117346%_ '#t))
    (define true? (lambda (_%obj117343%_) (eq? _%obj117343%_ '#t)))
    (define false (lambda _%ignore117340%_ '#f))
    (define void (lambda _%ignore117337%_ '#!void))
    (define void? (lambda (_%obj117334%_) (eq? _%obj117334%_ '#!void)))
    (define dssl-object?
      (lambda (_%obj117331%_)
        (if (let ()
              (declare (not safe))
              (##memq _%obj117331%_ '(#!key #!rest #!optional)))
            '#t
            '#f)))
    (define dssl-key-object?
      (lambda (_%obj117328%_) (eq? _%obj117328%_ '#!key)))
    (define dssl-rest-object?
      (lambda (_%obj117325%_) (eq? _%obj117325%_ '#!rest)))
    (define dssl-optional-object?
      (lambda (_%obj117322%_) (eq? _%obj117322%_ '#!optional)))
    (define immediate?
      (lambda (_%obj117319%_)
        (not (let () (declare (not safe)) (##mem-allocated? _%obj117319%_)))))
    (define nonnegative-fixnum?
      (lambda (_%obj117316%_)
        (if (fixnum? _%obj117316%_)
            (let () (declare (not safe)) (##fx>= _%obj117316%_ '0))
            '#f)))
    (define pair-or-null?
      (lambda (_%obj117310%_)
        (let ((_%$e117313%_ (pair? _%obj117310%_)))
          (if _%$e117313%_ _%$e117313%_ (null? _%obj117310%_)))))
    (define values-count
      (lambda (_%obj117307%_)
        (if (let () (declare (not safe)) (##values? _%obj117307%_))
            (let () (declare (not safe)) (##values-length _%obj117307%_))
            '1)))
    (define __values-ref
      (lambda (_%obj117294%_ _%k117295%_)
        (let ((_%k117298%_ _%k117295%_))
          (if (let () (declare (not safe)) (##values? _%obj117294%_))
              (let ()
                (declare (not safe))
                (##values-ref _%obj117294%_ _%k117298%_))
              _%obj117294%_))))
    (define values-ref
      (lambda (_%obj117279%_ _%k117280%_)
        (if (fixnum? _%k117280%_)
            (let ((_%k117284%_ _%k117280%_))
              (__values-ref _%obj117279%_ _%k117284%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@245.23-245.24"
               'contract:
               'fixnum?
               'value:
               _%k117280%_)
              '#!void))))
    (define values->list
      (lambda (_%obj117276%_)
        (if (let () (declare (not safe)) (##values? _%obj117276%_))
            (let () (declare (not safe)) (##values->list _%obj117276%_))
            (list _%obj117276%_))))
    (define __foldl1
      (lambda (_%f117224%_ _%iv117225%_ _%lst117226%_)
        (let ((_%f117229%_ _%f117224%_))
          (let _%lp117238%_ ((_%rest117240%_ _%lst117226%_)
                             (_%r117241%_ _%iv117225%_))
            (let* ((_%$%rest117242117250%_ _%rest117240%_)
                   (_%$%else117244117258%_ (lambda () _%r117241%_))
                   (_%$%K117246117264%_
                    (lambda (_%rest117261%_ _%x117262%_)
                      (_%lp117238%_
                       _%rest117261%_
                       (let ()
                         (declare (not safe))
                         (_%f117229%_ _%x117262%_ _%r117241%_))))))
              (if (pair? _%$%rest117242117250%_)
                  (let ((_%$%hd117247117267%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest117242117250%_)))
                        (_%$%tl117248117269%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest117242117250%_))))
                    (let* ((_%x117272%_ _%$%hd117247117267%_)
                           (_%rest117274%_ _%$%tl117248117269%_))
                      (_%$%K117246117264%_ _%rest117274%_ _%x117272%_)))
                  (_%$%else117244117258%_)))))))
    (define foldl1
      (lambda (_%f117208%_ _%iv117209%_ _%lst117210%_)
        (if (procedure? _%f117208%_)
            (let ((_%f117214%_ _%f117208%_))
              (__foldl1 _%f117214%_ _%iv117209%_ _%lst117210%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@268.15-268.16"
               'contract:
               'procedure?
               'value:
               _%f117208%_)
              '#!void))))
    (define __foldl2
      (lambda (_%f117121%_ _%iv117122%_ _%lst1117123%_ _%lst2117124%_)
        (let ((_%f117127%_ _%f117121%_))
          (let _%lp117136%_ ((_%rest1117138%_ _%lst1117123%_)
                             (_%rest2117139%_ _%lst2117124%_)
                             (_%r117140%_ _%iv117122%_))
            (let* ((_%$%rest1117141117149%_ _%rest1117138%_)
                   (_%$%else117143117157%_ (lambda () _%r117140%_))
                   (_%$%K117145117196%_
                    (lambda (_%rest1117160%_ _%x1117161%_)
                      (let* ((_%$%rest2117162117170%_ _%rest2117139%_)
                             (_%$%else117164117178%_ (lambda () _%r117140%_))
                             (_%$%K117166117184%_
                              (lambda (_%rest2117181%_ _%x2117182%_)
                                (_%lp117136%_
                                 _%rest1117160%_
                                 _%rest2117181%_
                                 (let ()
                                   (declare (not safe))
                                   (_%f117127%_
                                    _%x1117161%_
                                    _%x2117182%_
                                    _%r117140%_))))))
                        (if (pair? _%$%rest2117162117170%_)
                            (let ((_%$%hd117167117187%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2117162117170%_)))
                                  (_%$%tl117168117189%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2117162117170%_))))
                              (let* ((_%x2117192%_ _%$%hd117167117187%_)
                                     (_%rest2117194%_ _%$%tl117168117189%_))
                                (_%$%K117166117184%_
                                 _%rest2117194%_
                                 _%x2117192%_)))
                            (_%$%else117164117178%_))))))
              (if (pair? _%$%rest1117141117149%_)
                  (let ((_%$%hd117146117199%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1117141117149%_)))
                        (_%$%tl117147117201%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1117141117149%_))))
                    (let* ((_%x1117204%_ _%$%hd117146117199%_)
                           (_%rest1117206%_ _%$%tl117147117201%_))
                      (_%$%K117145117196%_ _%rest1117206%_ _%x1117204%_)))
                  (_%$%else117143117157%_)))))))
    (define foldl2
      (lambda (_%f117104%_ _%iv117105%_ _%lst1117106%_ _%lst2117107%_)
        (if (procedure? _%f117104%_)
            (let ((_%f117111%_ _%f117104%_))
              (__foldl2
               _%f117111%_
               _%iv117105%_
               _%lst1117106%_
               _%lst2117107%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@275.15-275.16"
               'contract:
               'procedure?
               'value:
               _%f117104%_)
              '#!void))))
    (define foldl__0
      (lambda (_%f117037%_ _%iv117038%_ _%lst117039%_)
        (let* ((_%f117041%_ _%f117037%_)
               (_%iv117044%_ _%iv117038%_)
               (_%lst117047%_ _%lst117039%_))
          (if (procedure? _%f117041%_)
              (let ((_%f117052%_ _%f117041%_))
                (__foldl1 _%f117052%_ _%iv117044%_ _%lst117047%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117041%_)
                '#!void)))))
    (define foldl__1
      (lambda (_%f117065%_ _%iv117066%_ _%lst1117067%_ _%lst2117068%_)
        (let* ((_%f117070%_ _%f117065%_)
               (_%iv117073%_ _%iv117066%_)
               (_%lst1117076%_ _%lst1117067%_)
               (_%lst2117079%_ _%lst2117068%_))
          (if (procedure? _%f117070%_)
              (let ((_%f117084%_ _%f117070%_))
                (__foldl2
                 _%f117084%_
                 _%iv117073%_
                 _%lst1117076%_
                 _%lst2117079%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f117070%_)
                '#!void)))))
    (define foldl
      (lambda _g120913_
        (let ((_g120914_ (let () (declare (not safe)) (##length _g120913_))))
          (cond ((let () (declare (not safe)) (##fx= _g120914_ 3))
                 (apply foldl__0 _g120913_))
                ((let () (declare (not safe)) (##fx= _g120914_ 4))
                 (apply foldl__1 _g120913_))
                ((let () (declare (not safe)) (##fx>= _g120914_ 4))
                 (apply foldl* _g120913_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldl
                  _g120913_))))))
    (define __foldl*
      (lambda (_%f116968%_ _%iv116969%_ . _%rest116970%_)
        (let ((_%f116973%_ _%f116968%_))
          (let _%recur116982%_ ((_%iv116984%_ _%iv116969%_)
                                (_%rest116985%_ _%rest116970%_))
            (if (let* ((_%f116987%_ pair?)
                       (_%lst116990%_ _%rest116985%_)
                       (_%f116995%_ _%f116987%_))
                  (__andmap1 _%f116995%_ _%lst116990%_))
                (_%recur116982%_
                 (let ((__tmp120915
                        (let* ((_%f117014%_
                                (lambda (_%xs117011%_ _%r117012%_)
                                  (cons (car _%xs117011%_) _%r117012%_)))
                               (_%iv117017%_ (list _%iv116984%_))
                               (_%lst117020%_ _%rest116985%_)
                               (_%f117025%_ _%f117014%_))
                          (__foldr1 _%f117025%_ _%iv117017%_ _%lst117020%_))))
                   (declare (not safe))
                   (##apply _%f116973%_ __tmp120915))
                 (map cdr _%rest116985%_))
                _%iv116984%_)))))
    (define foldl*
      (lambda (_%f116952%_ _%iv116953%_ . _%rest116954%_)
        (if (procedure? _%f116952%_)
            (let ((_%f116958%_ _%f116952%_))
              (declare (not safe))
              (##apply __foldl* _%f116958%_ _%iv116953%_ _%rest116954%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@293.15-293.16"
               'contract:
               'procedure?
               'value:
               _%f116952%_)
              '#!void))))
    (define __foldr1
      (lambda (_%f116901%_ _%iv116902%_ _%lst116903%_)
        (let ((_%f116906%_ _%f116901%_))
          (let _%recur116915%_ ((_%rest116917%_ _%lst116903%_))
            (let* ((_%$%rest116918116926%_ _%rest116917%_)
                   (_%$%else116920116934%_ (lambda () _%iv116902%_))
                   (_%$%K116922116940%_
                    (lambda (_%rest116937%_ _%x116938%_)
                      (let ((__tmp120916 (_%recur116915%_ _%rest116937%_)))
                        (declare (not safe))
                        (_%f116906%_ _%x116938%_ __tmp120916)))))
              (if (pair? _%$%rest116918116926%_)
                  (let ((_%$%hd116923116943%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest116918116926%_)))
                        (_%$%tl116924116945%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest116918116926%_))))
                    (let* ((_%x116948%_ _%$%hd116923116943%_)
                           (_%rest116950%_ _%$%tl116924116945%_))
                      (_%$%K116922116940%_ _%rest116950%_ _%x116948%_)))
                  (_%$%else116920116934%_)))))))
    (define foldr1
      (lambda (_%f116885%_ _%iv116886%_ _%lst116887%_)
        (if (procedure? _%f116885%_)
            (let ((_%f116891%_ _%f116885%_))
              (__foldr1 _%f116891%_ _%iv116886%_ _%lst116887%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@303.15-303.16"
               'contract:
               'procedure?
               'value:
               _%f116885%_)
              '#!void))))
    (define __foldr2
      (lambda (_%f116799%_ _%iv116800%_ _%lst1116801%_ _%lst2116802%_)
        (let ((_%f116805%_ _%f116799%_))
          (let _%recur116814%_ ((_%rest1116816%_ _%lst1116801%_)
                                (_%rest2116817%_ _%lst2116802%_))
            (let* ((_%$%rest1116818116826%_ _%rest1116816%_)
                   (_%$%else116820116834%_ (lambda () _%iv116800%_))
                   (_%$%K116822116873%_
                    (lambda (_%rest1116837%_ _%x1116838%_)
                      (let* ((_%$%rest2116839116847%_ _%rest2116817%_)
                             (_%$%else116841116855%_ (lambda () _%iv116800%_))
                             (_%$%K116843116861%_
                              (lambda (_%rest2116858%_ _%x2116859%_)
                                (let ((__tmp120917
                                       (_%recur116814%_
                                        _%rest1116837%_
                                        _%rest2116858%_)))
                                  (declare (not safe))
                                  (_%f116805%_
                                   _%x1116838%_
                                   _%x2116859%_
                                   __tmp120917)))))
                        (if (pair? _%$%rest2116839116847%_)
                            (let ((_%$%hd116844116864%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2116839116847%_)))
                                  (_%$%tl116845116866%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2116839116847%_))))
                              (let* ((_%x2116869%_ _%$%hd116844116864%_)
                                     (_%rest2116871%_ _%$%tl116845116866%_))
                                (_%$%K116843116861%_
                                 _%rest2116871%_
                                 _%x2116869%_)))
                            (_%$%else116841116855%_))))))
              (if (pair? _%$%rest1116818116826%_)
                  (let ((_%$%hd116823116876%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1116818116826%_)))
                        (_%$%tl116824116878%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1116818116826%_))))
                    (let* ((_%x1116881%_ _%$%hd116823116876%_)
                           (_%rest1116883%_ _%$%tl116824116878%_))
                      (_%$%K116822116873%_ _%rest1116883%_ _%x1116881%_)))
                  (_%$%else116820116834%_)))))))
    (define foldr2
      (lambda (_%f116782%_ _%iv116783%_ _%lst1116784%_ _%lst2116785%_)
        (if (procedure? _%f116782%_)
            (let ((_%f116789%_ _%f116782%_))
              (__foldr2
               _%f116789%_
               _%iv116783%_
               _%lst1116784%_
               _%lst2116785%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@310.15-310.16"
               'contract:
               'procedure?
               'value:
               _%f116782%_)
              '#!void))))
    (define foldr__0
      (lambda (_%f116715%_ _%iv116716%_ _%lst116717%_)
        (let* ((_%f116719%_ _%f116715%_)
               (_%iv116722%_ _%iv116716%_)
               (_%lst116725%_ _%lst116717%_))
          (if (procedure? _%f116719%_)
              (let ((_%f116730%_ _%f116719%_))
                (__foldr1 _%f116730%_ _%iv116722%_ _%lst116725%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116719%_)
                '#!void)))))
    (define foldr__1
      (lambda (_%f116743%_ _%iv116744%_ _%lst1116745%_ _%lst2116746%_)
        (let* ((_%f116748%_ _%f116743%_)
               (_%iv116751%_ _%iv116744%_)
               (_%lst1116754%_ _%lst1116745%_)
               (_%lst2116757%_ _%lst2116746%_))
          (if (procedure? _%f116748%_)
              (let ((_%f116762%_ _%f116748%_))
                (__foldr2
                 _%f116762%_
                 _%iv116751%_
                 _%lst1116754%_
                 _%lst2116757%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116748%_)
                '#!void)))))
    (define foldr
      (lambda _g120918_
        (let ((_g120919_ (let () (declare (not safe)) (##length _g120918_))))
          (cond ((let () (declare (not safe)) (##fx= _g120919_ 3))
                 (apply foldr__0 _g120918_))
                ((let () (declare (not safe)) (##fx= _g120919_ 4))
                 (apply foldr__1 _g120918_))
                ((let () (declare (not safe)) (##fx>= _g120919_ 4))
                 (apply foldr* _g120918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  foldr
                  _g120918_))))))
    (define __foldr*
      (lambda (_%f116647%_ _%iv116648%_ . _%rest116649%_)
        (let ((_%f116652%_ _%f116647%_))
          (let _%recur116661%_ ((_%rest116663%_ _%rest116649%_))
            (if (let* ((_%f116665%_ pair?)
                       (_%lst116668%_ _%rest116663%_)
                       (_%f116673%_ _%f116665%_))
                  (__andmap1 _%f116673%_ _%lst116668%_))
                (let ((__tmp120920
                       (let* ((_%f116692%_
                               (lambda (_%xs116689%_ _%r116690%_)
                                 (cons (car _%xs116689%_) _%r116690%_)))
                              (_%iv116695%_
                               (list (_%recur116661%_
                                      (map cdr _%rest116663%_))))
                              (_%lst116698%_ _%rest116663%_)
                              (_%f116703%_ _%f116692%_))
                         (__foldr1 _%f116703%_ _%iv116695%_ _%lst116698%_))))
                  (declare (not safe))
                  (##apply _%f116652%_ __tmp120920))
                _%iv116648%_)))))
    (define foldr*
      (lambda (_%f116631%_ _%iv116632%_ . _%rest116633%_)
        (if (procedure? _%f116631%_)
            (let ((_%f116637%_ _%f116631%_))
              (declare (not safe))
              (##apply __foldr* _%f116637%_ _%iv116632%_ _%rest116633%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@328.15-328.16"
               'contract:
               'procedure?
               'value:
               _%f116631%_)
              '#!void))))
    (define remove-nulls!
      (lambda (_%lists116518%_)
        (letrec ((_%process-tails!116520%_
                  (lambda (_%previous-cell116575%_ _%rest116576%_)
                    (let* ((_%$%rest116577116590%_ _%rest116576%_)
                           (_%$%E116581116594%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rest116577116590%_
                                     '([[] . r])
                                     '([_ . r])
                                     '(_))
                              '#!void)))
                      (let ((_%$%K116586116621%_
                             (lambda (_%r116619%_)
                               (let ((__tmp120922 _%previous-cell116575%_)
                                     (__tmp120921 (remove-nulls! _%r116619%_)))
                                 (declare (not safe))
                                 (##set-cdr! __tmp120922 __tmp120921))))
                            (_%$%K116583116608%_
                             (lambda (_%r116606%_)
                               (_%process-tails!116520%_
                                _%rest116576%_
                                _%r116606%_)))
                            (_%$%K116582116599%_ (lambda () '#!void)))
                        (if (pair? _%$%rest116577116590%_)
                            (let ((_%$%tl116588116626%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest116577116590%_)))
                                  (_%$%hd116587116624%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest116577116590%_))))
                              (if (null? _%$%hd116587116624%_)
                                  (let ((_%r116629%_ _%$%tl116588116626%_))
                                    (_%$%K116586116621%_ _%r116629%_))
                                  (let ((_%r116614%_ _%$%tl116588116626%_))
                                    (_%$%K116583116608%_ _%r116614%_))))
                            '#!void))))))
          (let* ((_%$%lists116521116534%_ _%lists116518%_)
                 (_%$%E116525116538%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%lists116521116534%_
                           '([[] . r])
                           '([_ . r])
                           '(_))
                    '#!void)))
            (let ((_%$%K116530116565%_
                   (lambda (_%r116563%_) (remove-nulls! _%r116563%_)))
                  (_%$%K116527116552%_
                   (lambda (_%r116550%_)
                     (_%process-tails!116520%_ _%lists116518%_ _%r116550%_)
                     _%lists116518%_))
                  (_%$%K116526116543%_ (lambda () _%lists116518%_)))
              (if (pair? _%$%lists116521116534%_)
                  (let ((_%$%tl116532116570%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%lists116521116534%_)))
                        (_%$%hd116531116568%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%lists116521116534%_))))
                    (if (null? _%$%hd116531116568%_)
                        (let ((_%r116573%_ _%$%tl116532116570%_))
                          (remove-nulls! _%r116573%_))
                        (let ((_%r116558%_ _%$%tl116532116570%_))
                          (_%$%K116527116552%_ _%r116558%_))))
                  (_%$%K116526116543%_)))))))
    (define append1!
      (lambda (_%l116503%_ _%x116504%_)
        (let ((_%l2116507%_ (cons _%x116504%_ '())))
          (if (pair? _%l116503%_)
              (let ((_%l116509%_ _%l116503%_))
                (let ((__tmp120923
                       (let ()
                         (declare (not safe))
                         (##last-pair _%l116509%_))))
                  (declare (not safe))
                  (##set-cdr! __tmp120923 _%l2116507%_))
                _%l116509%_)
              _%l2116507%_))))
    (define __append-reverse-until
      (lambda (_%pred116445%_ _%rhead116446%_ _%tail116447%_)
        (let ((_%pred116450%_ _%pred116445%_))
          (let _%loop116459%_ ((_%rhead116461%_ _%rhead116446%_)
                               (_%tail116462%_ _%tail116447%_))
            (let* ((_%$%rhead116464116473%_ _%rhead116461%_)
                   (_%$%E116467116477%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rhead116464116473%_
                             '([])
                             '([a :: r]))
                      '#!void)))
              (let ((_%$%K116471116500%_
                     (lambda () (values '() _%tail116462%_)))
                    (_%$%K116468116484%_
                     (lambda (_%r116481%_ _%a116482%_)
                       (if (let ()
                             (declare (not safe))
                             (_%pred116450%_ _%a116482%_))
                           (values _%rhead116461%_ _%tail116462%_)
                           (_%loop116459%_
                            _%r116481%_
                            (cons _%a116482%_ _%tail116462%_))))))
                (let ((_%$%try-match116466116496%_
                       (lambda ()
                         (if (pair? _%$%rhead116464116473%_)
                             (let ((_%$%tl116470116489%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%rhead116464116473%_)))
                                   (_%$%hd116469116487%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%rhead116464116473%_))))
                               (let ((_%a116492%_ _%$%hd116469116487%_)
                                     (_%r116494%_ _%$%tl116470116489%_))
                                 (_%$%K116468116484%_
                                  _%r116494%_
                                  _%a116492%_)))
                             (_%$%E116467116477%_)))))
                  (if (null? _%$%rhead116464116473%_)
                      (_%$%K116471116500%_)
                      (_%$%try-match116466116496%_)))))))))
    (define append-reverse-until
      (lambda (_%pred116429%_ _%rhead116430%_ _%tail116431%_)
        (if (procedure? _%pred116429%_)
            (let ((_%pred116435%_ _%pred116429%_))
              (__append-reverse-until
               _%pred116435%_
               _%rhead116430%_
               _%tail116431%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@366.29-366.33"
               'contract:
               'procedure?
               'value:
               _%pred116429%_)
              '#!void))))
    (define __andmap1
      (lambda (_%f116378%_ _%lst116379%_)
        (let ((_%f116382%_ _%f116378%_))
          (let _%lp116391%_ ((_%rest116393%_ _%lst116379%_))
            (let* ((_%$%rest116395116403%_ _%rest116393%_)
                   (_%$%else116397116411%_ (lambda () '#t))
                   (_%$%K116399116417%_
                    (lambda (_%rest116414%_ _%x116415%_)
                      (if (let ()
                            (declare (not safe))
                            (_%f116382%_ _%x116415%_))
                          (_%lp116391%_ _%rest116414%_)
                          '#f))))
              (if (pair? _%$%rest116395116403%_)
                  (let ((_%$%hd116400116420%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest116395116403%_)))
                        (_%$%tl116401116422%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest116395116403%_))))
                    (let* ((_%x116425%_ _%$%hd116400116420%_)
                           (_%rest116427%_ _%$%tl116401116422%_))
                      (_%$%K116399116417%_ _%rest116427%_ _%x116425%_)))
                  (_%$%else116397116411%_)))))))
    (define andmap1
      (lambda (_%f116363%_ _%lst116364%_)
        (if (procedure? _%f116363%_)
            (let ((_%f116368%_ _%f116363%_))
              (__andmap1 _%f116368%_ _%lst116364%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@377.16-377.17"
               'contract:
               'procedure?
               'value:
               _%f116363%_)
              '#!void))))
    (define __andmap2
      (lambda (_%f116277%_ _%lst1116278%_ _%lst2116279%_)
        (let ((_%f116282%_ _%f116277%_))
          (let _%lp116291%_ ((_%rest1116293%_ _%lst1116278%_)
                             (_%rest2116294%_ _%lst2116279%_))
            (let* ((_%$%rest1116296116304%_ _%rest1116293%_)
                   (_%$%else116298116312%_ (lambda () '#t))
                   (_%$%K116300116351%_
                    (lambda (_%rest1116315%_ _%x1116316%_)
                      (let* ((_%$%rest2116317116325%_ _%rest2116294%_)
                             (_%$%else116319116333%_ (lambda () '#t))
                             (_%$%K116321116339%_
                              (lambda (_%rest2116336%_ _%x2116337%_)
                                (if (let ()
                                      (declare (not safe))
                                      (_%f116282%_ _%x1116316%_ _%x2116337%_))
                                    (_%lp116291%_
                                     _%rest1116315%_
                                     _%rest2116336%_)
                                    '#f))))
                        (if (pair? _%$%rest2116317116325%_)
                            (let ((_%$%hd116322116342%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2116317116325%_)))
                                  (_%$%tl116323116344%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2116317116325%_))))
                              (let* ((_%x2116347%_ _%$%hd116322116342%_)
                                     (_%rest2116349%_ _%$%tl116323116344%_))
                                (_%$%K116321116339%_
                                 _%rest2116349%_
                                 _%x2116347%_)))
                            (_%$%else116319116333%_))))))
              (if (pair? _%$%rest1116296116304%_)
                  (let ((_%$%hd116301116354%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1116296116304%_)))
                        (_%$%tl116302116356%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1116296116304%_))))
                    (let* ((_%x1116359%_ _%$%hd116301116354%_)
                           (_%rest1116361%_ _%$%tl116302116356%_))
                      (_%$%K116300116351%_ _%rest1116361%_ _%x1116359%_)))
                  (_%$%else116298116312%_)))))))
    (define andmap2
      (lambda (_%f116261%_ _%lst1116262%_ _%lst2116263%_)
        (if (procedure? _%f116261%_)
            (let ((_%f116267%_ _%f116261%_))
              (__andmap2 _%f116267%_ _%lst1116262%_ _%lst2116263%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@386.16-386.17"
               'contract:
               'procedure?
               'value:
               _%f116261%_)
              '#!void))))
    (define andmap__0
      (lambda (_%f116205%_ _%lst116206%_)
        (let* ((_%f116208%_ _%f116205%_) (_%lst116211%_ _%lst116206%_))
          (if (procedure? _%f116208%_)
              (let ((_%f116216%_ _%f116208%_))
                (__andmap1 _%f116216%_ _%lst116211%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116208%_)
                '#!void)))))
    (define andmap__1
      (lambda (_%f116228%_ _%lst1116229%_ _%lst2116230%_)
        (let* ((_%f116232%_ _%f116228%_)
               (_%lst1116235%_ _%lst1116229%_)
               (_%lst2116238%_ _%lst2116230%_))
          (if (procedure? _%f116232%_)
              (let ((_%f116243%_ _%f116232%_))
                (__andmap2 _%f116243%_ _%lst1116235%_ _%lst2116238%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f116232%_)
                '#!void)))))
    (define andmap
      (lambda _g120924_
        (let ((_g120925_ (let () (declare (not safe)) (##length _g120924_))))
          (cond ((let () (declare (not safe)) (##fx= _g120925_ 2))
                 (apply andmap__0 _g120924_))
                ((let () (declare (not safe)) (##fx= _g120925_ 3))
                 (apply andmap__1 _g120924_))
                ((let () (declare (not safe)) (##fx>= _g120925_ 3))
                 (apply andmap* _g120924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  andmap
                  _g120924_))))))
    (define __andmap*
      (lambda (_%f116162%_ . _%rest116163%_)
        (let ((_%f116166%_ _%f116162%_))
          (let _%recur116175%_ ((_%rest116177%_ _%rest116163%_))
            (if (let* ((_%f116180%_ pair?)
                       (_%lst116183%_ _%rest116177%_)
                       (_%f116188%_ _%f116180%_))
                  (__andmap1 _%f116188%_ _%lst116183%_))
                (if (let ((__tmp120926 (map car _%rest116177%_)))
                      (declare (not safe))
                      (##apply _%f116166%_ __tmp120926))
                    (_%recur116175%_ (map cdr _%rest116177%_))
                    '#f)
                '#t)))))
    (define andmap*
      (lambda (_%f116147%_ . _%rest116148%_)
        (if (procedure? _%f116147%_)
            (let ((_%f116152%_ _%f116147%_))
              (declare (not safe))
              (##apply __andmap* _%f116152%_ _%rest116148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@406.16-406.17"
               'contract:
               'procedure?
               'value:
               _%f116147%_)
              '#!void))))
    (define __ormap1
      (lambda (_%f116094%_ _%lst116095%_)
        (let ((_%f116098%_ _%f116094%_))
          (let _%lp116107%_ ((_%rest116109%_ _%lst116095%_))
            (let* ((_%$%rest116110116118%_ _%rest116109%_)
                   (_%$%else116112116126%_ (lambda () '#f))
                   (_%$%K116114116135%_
                    (lambda (_%rest116129%_ _%x116130%_)
                      (let ((_%$e116132%_
                             (let ()
                               (declare (not safe))
                               (_%f116098%_ _%x116130%_))))
                        (if _%$e116132%_
                            _%$e116132%_
                            (_%lp116107%_ _%rest116129%_))))))
              (if (pair? _%$%rest116110116118%_)
                  (let ((_%$%hd116115116138%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest116110116118%_)))
                        (_%$%tl116116116140%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest116110116118%_))))
                    (let* ((_%x116143%_ _%$%hd116115116138%_)
                           (_%rest116145%_ _%$%tl116116116140%_))
                      (_%$%K116114116135%_ _%rest116145%_ _%x116143%_)))
                  (_%$%else116112116126%_)))))))
    (define ormap1
      (lambda (_%f116079%_ _%lst116080%_)
        (if (procedure? _%f116079%_)
            (let ((_%f116084%_ _%f116079%_))
              (__ormap1 _%f116084%_ _%lst116080%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@415.15-415.16"
               'contract:
               'procedure?
               'value:
               _%f116079%_)
              '#!void))))
    (define __ormap2
      (lambda (_%f115991%_ _%lst1115992%_ _%lst2115993%_)
        (let ((_%f115996%_ _%f115991%_))
          (let _%lp116005%_ ((_%rest1116007%_ _%lst1115992%_)
                             (_%rest2116008%_ _%lst2115993%_))
            (let* ((_%$%rest1116009116017%_ _%rest1116007%_)
                   (_%$%else116011116025%_ (lambda () '#f))
                   (_%$%K116013116067%_
                    (lambda (_%rest1116028%_ _%x1116029%_)
                      (let* ((_%$%rest2116030116038%_ _%rest2116008%_)
                             (_%$%else116032116046%_ (lambda () '#f))
                             (_%$%K116034116055%_
                              (lambda (_%rest2116049%_ _%x2116050%_)
                                (let ((_%$e116052%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f115996%_
                                          _%x1116029%_
                                          _%x2116050%_))))
                                  (if _%$e116052%_
                                      _%$e116052%_
                                      (_%lp116005%_
                                       _%rest1116028%_
                                       _%rest2116049%_))))))
                        (if (pair? _%$%rest2116030116038%_)
                            (let ((_%$%hd116035116058%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2116030116038%_)))
                                  (_%$%tl116036116060%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2116030116038%_))))
                              (let* ((_%x2116063%_ _%$%hd116035116058%_)
                                     (_%rest2116065%_ _%$%tl116036116060%_))
                                (_%$%K116034116055%_
                                 _%rest2116065%_
                                 _%x2116063%_)))
                            (_%$%else116032116046%_))))))
              (if (pair? _%$%rest1116009116017%_)
                  (let ((_%$%hd116014116070%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1116009116017%_)))
                        (_%$%tl116015116072%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1116009116017%_))))
                    (let* ((_%x1116075%_ _%$%hd116014116070%_)
                           (_%rest1116077%_ _%$%tl116015116072%_))
                      (_%$%K116013116067%_ _%rest1116077%_ _%x1116075%_)))
                  (_%$%else116011116025%_)))))))
    (define ormap2
      (lambda (_%f115975%_ _%lst1115976%_ _%lst2115977%_)
        (if (procedure? _%f115975%_)
            (let ((_%f115981%_ _%f115975%_))
              (__ormap2 _%f115981%_ _%lst1115976%_ _%lst2115977%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@422.15-422.16"
               'contract:
               'procedure?
               'value:
               _%f115975%_)
              '#!void))))
    (define ormap__0
      (lambda (_%f115919%_ _%lst115920%_)
        (let* ((_%f115922%_ _%f115919%_) (_%lst115925%_ _%lst115920%_))
          (if (procedure? _%f115922%_)
              (let ((_%f115930%_ _%f115922%_))
                (__ormap1 _%f115930%_ _%lst115925%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115922%_)
                '#!void)))))
    (define ormap__1
      (lambda (_%f115942%_ _%lst1115943%_ _%lst2115944%_)
        (let* ((_%f115946%_ _%f115942%_)
               (_%lst1115949%_ _%lst1115943%_)
               (_%lst2115952%_ _%lst2115944%_))
          (if (procedure? _%f115946%_)
              (let ((_%f115957%_ _%f115946%_))
                (__ormap2 _%f115957%_ _%lst1115949%_ _%lst2115952%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115946%_)
                '#!void)))))
    (define ormap
      (lambda _g120927_
        (let ((_g120928_ (let () (declare (not safe)) (##length _g120927_))))
          (cond ((let () (declare (not safe)) (##fx= _g120928_ 2))
                 (apply ormap__0 _g120927_))
                ((let () (declare (not safe)) (##fx= _g120928_ 3))
                 (apply ormap__1 _g120927_))
                ((let () (declare (not safe)) (##fx>= _g120928_ 3))
                 (apply ormap* _g120927_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  ormap
                  _g120927_))))))
    (define __ormap*
      (lambda (_%f115875%_ . _%rest115876%_)
        (let ((_%f115879%_ _%f115875%_))
          (let _%recur115888%_ ((_%rest115890%_ _%rest115876%_))
            (if (let* ((_%f115892%_ pair?)
                       (_%lst115895%_ _%rest115890%_)
                       (_%f115900%_ _%f115892%_))
                  (__andmap1 _%f115900%_ _%lst115895%_))
                (let ((_%$e115916%_
                       (let ((__tmp120929 (map car _%rest115890%_)))
                         (declare (not safe))
                         (##apply _%f115879%_ __tmp120929))))
                  (if _%$e115916%_
                      _%$e115916%_
                      (_%recur115888%_ (map cdr _%rest115890%_))))
                '#f)))))
    (define ormap*
      (lambda (_%f115860%_ . _%rest115861%_)
        (if (procedure? _%f115860%_)
            (let ((_%f115865%_ _%f115860%_))
              (declare (not safe))
              (##apply __ormap* _%f115865%_ _%rest115861%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@440.15-440.16"
               'contract:
               'procedure?
               'value:
               _%f115860%_)
              '#!void))))
    (define __filter-map1
      (lambda (_%f115803%_ _%lst115804%_)
        (let ((_%f115807%_ _%f115803%_))
          (let _%recur115816%_ ((_%rest115818%_ _%lst115804%_))
            (let* ((_%$%rest115820115828%_ _%rest115818%_)
                   (_%$%else115822115836%_ (lambda () '()))
                   (_%$%K115824115848%_
                    (lambda (_%rest115839%_ _%x115840%_)
                      (let ((_%$e115842%_
                             (let ()
                               (declare (not safe))
                               (_%f115807%_ _%x115840%_))))
                        (if _%$e115842%_
                            (cons _%$e115842%_
                                  (_%recur115816%_ _%rest115839%_))
                            (_%recur115816%_ _%rest115839%_))))))
              (if (pair? _%$%rest115820115828%_)
                  (let ((_%$%hd115825115851%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest115820115828%_)))
                        (_%$%tl115826115853%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest115820115828%_))))
                    (let* ((_%x115856%_ _%$%hd115825115851%_)
                           (_%rest115858%_ _%$%tl115826115853%_))
                      (_%$%K115824115848%_ _%rest115858%_ _%x115856%_)))
                  (_%$%else115822115836%_)))))))
    (define filter-map1
      (lambda (_%f115788%_ _%lst115789%_)
        (if (procedure? _%f115788%_)
            (let ((_%f115793%_ _%f115788%_))
              (__filter-map1 _%f115793%_ _%lst115789%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@447.20-447.21"
               'contract:
               'procedure?
               'value:
               _%f115788%_)
              '#!void))))
    (define __filter-map2
      (lambda (_%f115696%_ _%lst1115697%_ _%lst2115698%_)
        (let ((_%f115701%_ _%f115696%_))
          (let _%recur115710%_ ((_%rest1115712%_ _%lst1115697%_)
                                (_%rest2115713%_ _%lst2115698%_))
            (let* ((_%$%rest1115715115723%_ _%rest1115712%_)
                   (_%$%else115717115731%_ (lambda () '()))
                   (_%$%K115719115776%_
                    (lambda (_%rest1115734%_ _%x1115735%_)
                      (let* ((_%$%rest2115736115744%_ _%rest2115713%_)
                             (_%$%else115738115752%_ (lambda () '()))
                             (_%$%K115740115764%_
                              (lambda (_%rest2115755%_ _%x2115756%_)
                                (let ((_%$e115758%_
                                       (let ()
                                         (declare (not safe))
                                         (_%f115701%_
                                          _%x1115735%_
                                          _%x2115756%_))))
                                  (if _%$e115758%_
                                      (cons _%$e115758%_
                                            (_%recur115710%_
                                             _%rest1115734%_
                                             _%rest2115755%_))
                                      (_%recur115710%_
                                       _%rest1115734%_
                                       _%rest2115755%_))))))
                        (if (pair? _%$%rest2115736115744%_)
                            (let ((_%$%hd115741115767%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest2115736115744%_)))
                                  (_%$%tl115742115769%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest2115736115744%_))))
                              (let* ((_%x2115772%_ _%$%hd115741115767%_)
                                     (_%rest2115774%_ _%$%tl115742115769%_))
                                (_%$%K115740115764%_
                                 _%rest2115774%_
                                 _%x2115772%_)))
                            (_%$%else115738115752%_))))))
              (if (pair? _%$%rest1115715115723%_)
                  (let ((_%$%hd115720115779%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest1115715115723%_)))
                        (_%$%tl115721115781%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest1115715115723%_))))
                    (let* ((_%x1115784%_ _%$%hd115720115779%_)
                           (_%rest1115786%_ _%$%tl115721115781%_))
                      (_%$%K115719115776%_ _%rest1115786%_ _%x1115784%_)))
                  (_%$%else115717115731%_)))))))
    (define filter-map2
      (lambda (_%f115680%_ _%lst1115681%_ _%lst2115682%_)
        (if (procedure? _%f115680%_)
            (let ((_%f115686%_ _%f115680%_))
              (__filter-map2 _%f115686%_ _%lst1115681%_ _%lst2115682%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@458.20-458.21"
               'contract:
               'procedure?
               'value:
               _%f115680%_)
              '#!void))))
    (define filter-map__0
      (lambda (_%f115624%_ _%lst115625%_)
        (let* ((_%f115627%_ _%f115624%_) (_%lst115630%_ _%lst115625%_))
          (if (procedure? _%f115627%_)
              (let ((_%f115635%_ _%f115627%_))
                (__filter-map1 _%f115635%_ _%lst115630%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115627%_)
                '#!void)))))
    (define filter-map__1
      (lambda (_%f115647%_ _%lst1115648%_ _%lst2115649%_)
        (let* ((_%f115651%_ _%f115647%_)
               (_%lst1115654%_ _%lst1115648%_)
               (_%lst2115657%_ _%lst2115649%_))
          (if (procedure? _%f115651%_)
              (let ((_%f115662%_ _%f115651%_))
                (__filter-map2 _%f115662%_ _%lst1115654%_ _%lst2115657%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/util
                 'contract:
                 'procedure?
                 'value:
                 _%f115651%_)
                '#!void)))))
    (define filter-map
      (lambda _g120930_
        (let ((_g120931_ (let () (declare (not safe)) (##length _g120930_))))
          (cond ((let () (declare (not safe)) (##fx= _g120931_ 2))
                 (apply filter-map__0 _g120930_))
                ((let () (declare (not safe)) (##fx= _g120931_ 3))
                 (apply filter-map__1 _g120930_))
                ((let () (declare (not safe)) (##fx>= _g120931_ 3))
                 (apply filter-map* _g120930_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  filter-map
                  _g120930_))))))
    (define __filter-map*
      (lambda (_%f115575%_ . _%rest115576%_)
        (let ((_%f115579%_ _%f115575%_))
          (let _%recur115588%_ ((_%rest115590%_ _%rest115576%_))
            (if (let* ((_%f115593%_ pair?)
                       (_%lst115596%_ _%rest115590%_)
                       (_%f115601%_ _%f115593%_))
                  (__andmap1 _%f115601%_ _%lst115596%_))
                (let ((_%$e115618%_
                       (let ((__tmp120932 (map car _%rest115590%_)))
                         (declare (not safe))
                         (##apply _%f115579%_ __tmp120932))))
                  (if _%$e115618%_
                      (cons _%$e115618%_
                            (_%recur115588%_ (map cdr _%rest115590%_)))
                      (_%recur115588%_ (map cdr _%rest115590%_))))
                '())))))
    (define filter-map*
      (lambda (_%f115560%_ . _%rest115561%_)
        (if (procedure? _%f115560%_)
            (let ((_%f115565%_ _%f115560%_))
              (declare (not safe))
              (##apply __filter-map* _%f115565%_ _%rest115561%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@480.20-480.21"
               'contract:
               'procedure?
               'value:
               _%f115560%_)
              '#!void))))
    (define agetq__%
      (lambda (_%key115536%_ _%lst115538%_ _%default115540%_)
        (let ((_%$e115543%_
               (if (pair? _%lst115538%_)
                   (assq _%key115536%_ _%lst115538%_)
                   '#f)))
          (if _%$e115543%_
              (cdr _%$e115543%_)
              (if (procedure? _%default115540%_)
                  (_%default115540%_ _%key115536%_)
                  _%default115540%_)))))
    (define agetq__0
      (lambda (_%key115551%_ _%lst115552%_)
        (let ((_%default115554%_ '#f))
          (agetq__% _%key115551%_ _%lst115552%_ _%default115554%_))))
    (define agetq
      (lambda _g120933_
        (let ((_g120934_ (let () (declare (not safe)) (##length _g120933_))))
          (cond ((let () (declare (not safe)) (##fx= _g120934_ 2))
                 (apply agetq__0 _g120933_))
                ((let () (declare (not safe)) (##fx= _g120934_ 3))
                 (apply agetq__% _g120933_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetq
                  _g120933_))))))
    (define agetv__%
      (lambda (_%key115511%_ _%lst115513%_ _%default115515%_)
        (let ((_%$e115518%_
               (if (pair? _%lst115513%_)
                   (assv _%key115511%_ _%lst115513%_)
                   '#f)))
          (if _%$e115518%_
              (cdr _%$e115518%_)
              (if (procedure? _%default115515%_)
                  (_%default115515%_ _%key115511%_)
                  _%default115515%_)))))
    (define agetv__0
      (lambda (_%key115526%_ _%lst115527%_)
        (let ((_%default115529%_ '#f))
          (agetv__% _%key115526%_ _%lst115527%_ _%default115529%_))))
    (define agetv
      (lambda _g120935_
        (let ((_g120936_ (let () (declare (not safe)) (##length _g120935_))))
          (cond ((let () (declare (not safe)) (##fx= _g120936_ 2))
                 (apply agetv__0 _g120935_))
                ((let () (declare (not safe)) (##fx= _g120936_ 3))
                 (apply agetv__% _g120935_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  agetv
                  _g120935_))))))
    (define aget__%
      (lambda (_%key115486%_ _%lst115488%_ _%default115490%_)
        (let ((_%$e115493%_
               (if (pair? _%lst115488%_)
                   (assoc _%key115486%_ _%lst115488%_)
                   '#f)))
          (if _%$e115493%_
              (cdr _%$e115493%_)
              (if (procedure? _%default115490%_)
                  (_%default115490%_ _%key115486%_)
                  _%default115490%_)))))
    (define aget__0
      (lambda (_%key115501%_ _%lst115502%_)
        (let ((_%default115504%_ '#f))
          (aget__% _%key115501%_ _%lst115502%_ _%default115504%_))))
    (define aget
      (lambda _g120937_
        (let ((_g120938_ (let () (declare (not safe)) (##length _g120937_))))
          (cond ((let () (declare (not safe)) (##fx= _g120938_ 2))
                 (apply aget__0 _g120937_))
                ((let () (declare (not safe)) (##fx= _g120938_ 3))
                 (apply aget__% _g120937_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  aget
                  _g120937_))))))
    (define assgetq agetq)
    (define assgetv agetv)
    (define assget aget)
    (define pgetq__%
      (lambda (_%key115415%_ _%lst115417%_ _%default115419%_)
        (let _%lp115422%_ ((_%rest115425%_ _%lst115417%_))
          (let* ((_%$%rest115427115437%_ _%rest115425%_)
                 (_%$%else115429115445%_
                  (lambda ()
                    (if (procedure? _%default115419%_)
                        (_%default115419%_ _%key115415%_)
                        _%default115419%_)))
                 (_%$%K115431115454%_
                  (lambda (_%rest115448%_ _%v115449%_ _%k115451%_)
                    (if (eq? _%k115451%_ _%key115415%_)
                        _%v115449%_
                        (_%lp115422%_ _%rest115448%_)))))
            (if (pair? _%$%rest115427115437%_)
                (let ((_%$%hd115432115457%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115427115437%_)))
                      (_%$%tl115433115459%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115427115437%_))))
                  (let ((_%k115462%_ _%$%hd115432115457%_))
                    (if (pair? _%$%tl115433115459%_)
                        (let ((_%$%hd115434115464%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl115433115459%_)))
                              (_%$%tl115435115466%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl115433115459%_))))
                          (let* ((_%v115469%_ _%$%hd115434115464%_)
                                 (_%rest115471%_ _%$%tl115435115466%_))
                            (_%$%K115431115454%_
                             _%rest115471%_
                             _%v115469%_
                             _%k115462%_)))
                        (_%$%else115429115445%_))))
                (_%$%else115429115445%_))))))
    (define pgetq__0
      (lambda (_%key115476%_ _%lst115477%_)
        (let ((_%default115479%_ '#f))
          (pgetq__% _%key115476%_ _%lst115477%_ _%default115479%_))))
    (define pgetq
      (lambda _g120939_
        (let ((_g120940_ (let () (declare (not safe)) (##length _g120939_))))
          (cond ((let () (declare (not safe)) (##fx= _g120940_ 2))
                 (apply pgetq__0 _g120939_))
                ((let () (declare (not safe)) (##fx= _g120940_ 3))
                 (apply pgetq__% _g120939_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetq
                  _g120939_))))))
    (define pgetv__%
      (lambda (_%key115344%_ _%lst115346%_ _%default115348%_)
        (let _%lp115351%_ ((_%rest115354%_ _%lst115346%_))
          (let* ((_%$%rest115356115366%_ _%rest115354%_)
                 (_%$%else115358115374%_
                  (lambda ()
                    (if (procedure? _%default115348%_)
                        (_%default115348%_ _%key115344%_)
                        _%default115348%_)))
                 (_%$%K115360115383%_
                  (lambda (_%rest115377%_ _%v115378%_ _%k115380%_)
                    (if (eqv? _%k115380%_ _%key115344%_)
                        _%v115378%_
                        (_%lp115351%_ _%rest115377%_)))))
            (if (pair? _%$%rest115356115366%_)
                (let ((_%$%hd115361115386%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115356115366%_)))
                      (_%$%tl115362115388%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115356115366%_))))
                  (let ((_%k115391%_ _%$%hd115361115386%_))
                    (if (pair? _%$%tl115362115388%_)
                        (let ((_%$%hd115363115393%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl115362115388%_)))
                              (_%$%tl115364115395%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl115362115388%_))))
                          (let* ((_%v115398%_ _%$%hd115363115393%_)
                                 (_%rest115400%_ _%$%tl115364115395%_))
                            (_%$%K115360115383%_
                             _%rest115400%_
                             _%v115398%_
                             _%k115391%_)))
                        (_%$%else115358115374%_))))
                (_%$%else115358115374%_))))))
    (define pgetv__0
      (lambda (_%key115405%_ _%lst115406%_)
        (let ((_%default115408%_ '#f))
          (pgetv__% _%key115405%_ _%lst115406%_ _%default115408%_))))
    (define pgetv
      (lambda _g120941_
        (let ((_g120942_ (let () (declare (not safe)) (##length _g120941_))))
          (cond ((let () (declare (not safe)) (##fx= _g120942_ 2))
                 (apply pgetv__0 _g120941_))
                ((let () (declare (not safe)) (##fx= _g120942_ 3))
                 (apply pgetv__% _g120941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pgetv
                  _g120941_))))))
    (define pget__%
      (lambda (_%key115273%_ _%lst115275%_ _%default115277%_)
        (let _%lp115280%_ ((_%rest115283%_ _%lst115275%_))
          (let* ((_%$%rest115285115295%_ _%rest115283%_)
                 (_%$%else115287115303%_
                  (lambda ()
                    (if (procedure? _%default115277%_)
                        (_%default115277%_ _%key115273%_)
                        _%default115277%_)))
                 (_%$%K115289115312%_
                  (lambda (_%rest115306%_ _%v115307%_ _%k115309%_)
                    (if (equal? _%k115309%_ _%key115273%_)
                        _%v115307%_
                        (_%lp115280%_ _%rest115306%_)))))
            (if (pair? _%$%rest115285115295%_)
                (let ((_%$%hd115290115315%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115285115295%_)))
                      (_%$%tl115291115317%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115285115295%_))))
                  (let ((_%k115320%_ _%$%hd115290115315%_))
                    (if (pair? _%$%tl115291115317%_)
                        (let ((_%$%hd115292115322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl115291115317%_)))
                              (_%$%tl115293115324%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl115291115317%_))))
                          (let* ((_%v115327%_ _%$%hd115292115322%_)
                                 (_%rest115329%_ _%$%tl115293115324%_))
                            (_%$%K115289115312%_
                             _%rest115329%_
                             _%v115327%_
                             _%k115320%_)))
                        (_%$%else115287115303%_))))
                (_%$%else115287115303%_))))))
    (define pget__0
      (lambda (_%key115334%_ _%lst115335%_)
        (let ((_%default115337%_ '#f))
          (pget__% _%key115334%_ _%lst115335%_ _%default115337%_))))
    (define pget
      (lambda _g120943_
        (let ((_g120944_ (let () (declare (not safe)) (##length _g120943_))))
          (cond ((let () (declare (not safe)) (##fx= _g120944_ 2))
                 (apply pget__0 _g120943_))
                ((let () (declare (not safe)) (##fx= _g120944_ 3))
                 (apply pget__% _g120943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  pget
                  _g120943_))))))
    (define __find
      (lambda (_%pred115233%_ _%lst115234%_)
        (let* ((_%pred115237%_ _%pred115233%_)
               (_%$e115268%_
                (let* ((_%proc115246%_ _%pred115237%_)
                       (_%lst115249%_ _%lst115234%_)
                       (_%proc115254%_ _%proc115246%_))
                  (__memf _%proc115254%_ _%lst115249%_))))
          (if _%$e115268%_
              (let () (declare (not safe)) (##car _%$e115268%_))
              '#f))))
    (define find
      (lambda (_%pred115218%_ _%lst115219%_)
        (if (procedure? _%pred115218%_)
            (let ((_%pred115223%_ _%pred115218%_))
              (__find _%pred115223%_ _%lst115219%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@526.13-526.17"
               'contract:
               'procedure?
               'value:
               _%pred115218%_)
              '#!void))))
    (define __memf
      (lambda (_%proc115168%_ _%lst115169%_)
        (let ((_%proc115172%_ _%proc115168%_))
          (let _%lp115181%_ ((_%rest115183%_ _%lst115169%_))
            (let* ((_%$%rest115184115192%_ _%rest115183%_)
                   (_%$%else115186115200%_ (lambda () '#f))
                   (_%$%K115188115206%_
                    (lambda (_%tl115203%_ _%hd115204%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc115172%_ _%hd115204%_))
                          _%rest115183%_
                          (_%lp115181%_ _%tl115203%_)))))
              (if (pair? _%$%rest115184115192%_)
                  (let ((_%$%hd115189115209%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest115184115192%_)))
                        (_%$%tl115190115211%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest115184115192%_))))
                    (let* ((_%hd115214%_ _%$%hd115189115209%_)
                           (_%tl115216%_ _%$%tl115190115211%_))
                      (_%$%K115188115206%_ _%tl115216%_ _%hd115214%_)))
                  (_%$%else115186115200%_)))))))
    (define memf
      (lambda (_%proc115153%_ _%lst115154%_)
        (if (procedure? _%proc115153%_)
            (let ((_%proc115158%_ _%proc115153%_))
              (__memf _%proc115158%_ _%lst115154%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@531.13-531.17"
               'contract:
               'procedure?
               'value:
               _%proc115153%_)
              '#!void))))
    (define remove1
      (lambda (_%el115076%_ _%lst115078%_)
        (let _%lp115081%_ ((_%rest115084%_ _%lst115078%_) (_%r115086%_ '()))
          (let* ((_%$%rest115088115096%_ _%rest115084%_)
                 (_%$%else115090115104%_ (lambda () _%lst115078%_))
                 (_%$%K115092115141%_
                  (lambda (_%rest115107%_ _%hd115108%_)
                    (if (equal? _%el115076%_ _%hd115108%_)
                        (let* ((_%f115111%_ cons)
                               (_%iv115114%_ _%rest115107%_)
                               (_%lst115117%_ _%r115086%_)
                               (_%f115122%_ _%f115111%_))
                          (__foldl1 _%f115122%_ _%iv115114%_ _%lst115117%_))
                        (_%lp115081%_
                         _%rest115107%_
                         (cons _%hd115108%_ _%r115086%_))))))
            (if (pair? _%$%rest115088115096%_)
                (let ((_%$%hd115093115144%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115088115096%_)))
                      (_%$%tl115094115146%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115088115096%_))))
                  (let* ((_%hd115149%_ _%$%hd115093115144%_)
                         (_%rest115151%_ _%$%tl115094115146%_))
                    (_%$%K115092115141%_ _%rest115151%_ _%hd115149%_)))
                (_%$%else115090115104%_))))))
    (define remv1
      (lambda (_%el114999%_ _%lst115001%_)
        (let _%lp115004%_ ((_%rest115007%_ _%lst115001%_) (_%r115009%_ '()))
          (let* ((_%$%rest115011115019%_ _%rest115007%_)
                 (_%$%else115013115027%_ (lambda () _%lst115001%_))
                 (_%$%K115015115064%_
                  (lambda (_%rest115030%_ _%hd115031%_)
                    (if (eqv? _%el114999%_ _%hd115031%_)
                        (let* ((_%f115034%_ cons)
                               (_%iv115037%_ _%rest115030%_)
                               (_%lst115040%_ _%r115009%_)
                               (_%f115045%_ _%f115034%_))
                          (__foldl1 _%f115045%_ _%iv115037%_ _%lst115040%_))
                        (_%lp115004%_
                         _%rest115030%_
                         (cons _%hd115031%_ _%r115009%_))))))
            (if (pair? _%$%rest115011115019%_)
                (let ((_%$%hd115016115067%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest115011115019%_)))
                      (_%$%tl115017115069%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest115011115019%_))))
                  (let* ((_%hd115072%_ _%$%hd115016115067%_)
                         (_%rest115074%_ _%$%tl115017115069%_))
                    (_%$%K115015115064%_ _%rest115074%_ _%hd115072%_)))
                (_%$%else115013115027%_))))))
    (define remq1
      (lambda (_%el114922%_ _%lst114924%_)
        (let _%lp114927%_ ((_%rest114930%_ _%lst114924%_) (_%r114932%_ '()))
          (let* ((_%$%rest114934114942%_ _%rest114930%_)
                 (_%$%else114936114950%_ (lambda () _%lst114924%_))
                 (_%$%K114938114987%_
                  (lambda (_%rest114953%_ _%hd114954%_)
                    (if (eq? _%el114922%_ _%hd114954%_)
                        (let* ((_%f114957%_ cons)
                               (_%iv114960%_ _%rest114953%_)
                               (_%lst114963%_ _%r114932%_)
                               (_%f114968%_ _%f114957%_))
                          (__foldl1 _%f114968%_ _%iv114960%_ _%lst114963%_))
                        (_%lp114927%_
                         _%rest114953%_
                         (cons _%hd114954%_ _%r114932%_))))))
            (if (pair? _%$%rest114934114942%_)
                (let ((_%$%hd114939114990%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest114934114942%_)))
                      (_%$%tl114940114992%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest114934114942%_))))
                  (let* ((_%hd114995%_ _%$%hd114939114990%_)
                         (_%rest114997%_ _%$%tl114940114992%_))
                    (_%$%K114938114987%_ _%rest114997%_ _%hd114995%_)))
                (_%$%else114936114950%_))))))
    (define __remf
      (lambda (_%proc114839%_ _%lst114840%_)
        (let ((_%proc114843%_ _%proc114839%_))
          (let _%lp114852%_ ((_%rest114854%_ _%lst114840%_) (_%r114855%_ '()))
            (let* ((_%$%rest114856114864%_ _%rest114854%_)
                   (_%$%else114858114872%_ (lambda () _%lst114840%_))
                   (_%$%K114860114910%_
                    (lambda (_%rest114875%_ _%hd114876%_)
                      (if (let ()
                            (declare (not safe))
                            (_%proc114843%_ _%hd114876%_))
                          (let* ((_%f114878%_ cons)
                                 (_%iv114881%_ _%rest114875%_)
                                 (_%lst114884%_ _%r114855%_)
                                 (_%f114889%_ _%f114878%_))
                            (__foldl1 _%f114889%_ _%iv114881%_ _%lst114884%_))
                          (_%lp114852%_
                           _%rest114875%_
                           (cons _%hd114876%_ _%r114855%_))))))
              (if (pair? _%$%rest114856114864%_)
                  (let ((_%$%hd114861114913%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest114856114864%_)))
                        (_%$%tl114862114915%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest114856114864%_))))
                    (let* ((_%hd114918%_ _%$%hd114861114913%_)
                           (_%rest114920%_ _%$%tl114862114915%_))
                      (_%$%K114860114910%_ _%rest114920%_ _%hd114918%_)))
                  (_%$%else114858114872%_)))))))
    (define remf
      (lambda (_%proc114824%_ _%lst114825%_)
        (if (procedure? _%proc114824%_)
            (let ((_%proc114829%_ _%proc114824%_))
              (__remf _%proc114829%_ _%lst114825%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@553.13-553.17"
               'contract:
               'procedure?
               'value:
               _%proc114824%_)
              '#!void))))
    (define __1+
      (lambda (_%x114812%_)
        (let ((_%x114815%_ _%x114812%_)) (+ _%x114815%_ '1))))
    (define 1+
      (lambda (_%x114798%_)
        (if (number? _%x114798%_)
            (let ((_%x114802%_ _%x114798%_)) (__1+ _%x114802%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@562.11-562.12"
               'contract:
               'number?
               'value:
               _%x114798%_)
              '#!void))))
    (define __1-
      (lambda (_%x114786%_)
        (let ((_%x114789%_ _%x114786%_)) (- _%x114789%_ '1))))
    (define 1-
      (lambda (_%x114772%_)
        (if (number? _%x114772%_)
            (let ((_%x114776%_ _%x114772%_)) (__1- _%x114776%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@570.11-570.12"
               'contract:
               'number?
               'value:
               _%x114772%_)
              '#!void))))
    (define __fx1+
      (lambda (_%x114760%_)
        (let ((_%x114763%_ _%x114760%_))
          (declare (not safe))
          (##fx+ _%x114763%_ '1))))
    (define fx1+
      (lambda (_%x114746%_)
        (if (fixnum? _%x114746%_)
            (let ((_%x114750%_ _%x114746%_)) (__fx1+ _%x114750%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@578.13-578.14"
               'contract:
               'fixnum?
               'value:
               _%x114746%_)
              '#!void))))
    (define __fx1-
      (lambda (_%x114734%_)
        (let ((_%x114737%_ _%x114734%_))
          (declare (not safe))
          (##fx- _%x114737%_ '1))))
    (define fx1-
      (lambda (_%x114720%_)
        (if (fixnum? _%x114720%_)
            (let ((_%x114724%_ _%x114720%_)) (__fx1- _%x114724%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@586.13-586.14"
               'contract:
               'fixnum?
               'value:
               _%x114720%_)
              '#!void))))
    (define fxshift fxarithmetic-shift)
    (define fx/ fxquotient)
    (define fx% fxremainder)
    (define fx>=0?
      (lambda (_%x114717%_)
        (if (fixnum? _%x114717%_)
            (let () (declare (not safe)) (##fx>= _%x114717%_ '0))
            '#f)))
    (define fx>0?
      (lambda (_%x114714%_)
        (if (fixnum? _%x114714%_)
            (let () (declare (not safe)) (##fx> _%x114714%_ '0))
            '#f)))
    (define fx=0?
      (lambda (_%x114711%_)
        (let () (declare (not safe)) (##fx= _%x114711%_ '0))))
    (define fx<0?
      (lambda (_%x114708%_)
        (if (fixnum? _%x114708%_)
            (let () (declare (not safe)) (##fx< _%x114708%_ '0))
            '#f)))
    (define fx<=0?
      (lambda (_%x114705%_)
        (if (fixnum? _%x114705%_)
            (let () (declare (not safe)) (##fx<= _%x114705%_ '0))
            '#f)))
    (define interned-symbol?
      (lambda (_%x114702%_)
        (if (symbol? _%x114702%_) (not (uninterned-symbol? _%x114702%_)) '#f)))
    (define __display-as-string
      (lambda (_%x114596%_ _%port114597%_)
        (let ((_%port114600%_ _%port114597%_))
          (if (or (string? _%x114596%_)
                  (symbol? _%x114596%_)
                  (keyword? _%x114596%_)
                  (number? _%x114596%_)
                  (char? _%x114596%_))
              (display _%x114596%_ _%port114600%_)
              (if (pair? _%x114596%_)
                  (let ()
                    (let* ((_%x114623%_
                            (let () (declare (not safe)) (##car _%x114596%_)))
                           (_%port114626%_ _%port114600%_))
                      (if (output-port? _%port114626%_)
                          (let ((_%port114631%_ _%port114626%_))
                            (__display-as-string _%x114623%_ _%port114631%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port114626%_)
                            '#!void)))
                    (let* ((_%x114646%_
                            (let () (declare (not safe)) (##cdr _%x114596%_)))
                           (_%port114649%_ _%port114600%_))
                      (if (output-port? _%port114649%_)
                          (let ((_%port114654%_ _%port114649%_))
                            (__display-as-string _%x114646%_ _%port114654%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'output-port?
                             'value:
                             _%port114649%_)
                            '#!void))))
                  (if (vector? _%x114596%_)
                      (vector-for-each
                       (lambda (_%$%g114665114667%_)
                         (let* ((_%x114670%_ _%$%g114665114667%_)
                                (_%port114673%_ _%port114600%_))
                           (if (output-port? _%port114673%_)
                               (let ((_%port114678%_ _%port114673%_))
                                 (__display-as-string
                                  _%x114670%_
                                  _%port114678%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/util
                                  'contract:
                                  'output-port?
                                  'value:
                                  _%port114673%_)
                                 '#!void))))
                       _%x114596%_)
                      (if (or (null? _%x114596%_)
                              (eq? _%x114596%_ '#!void)
                              (eof-object? _%x114596%_)
                              (boolean? _%x114596%_))
                          '#!void
                          (let ()
                            (raise-contract-violation-error
                             '"cannot convert as string"
                             'value:
                             _%x114596%_)
                            '#!void))))))))
    (define display-as-string
      (lambda (_%x114581%_ _%port114582%_)
        (if (output-port? _%port114582%_)
            (let ((_%port114586%_ _%port114582%_))
              (__display-as-string _%x114581%_ _%port114586%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@616.28-616.32"
               'contract:
               'output-port?
               'value:
               _%port114582%_)
              '#!void))))
    (define as-string__0
      (lambda (_%x114521%_)
        (if (string? _%x114521%_)
            _%x114521%_
            (if (symbol? _%x114521%_)
                (let () (declare (not safe)) (##symbol->string _%x114521%_))
                (if (keyword? _%x114521%_)
                    (let ()
                      (declare (not safe))
                      (##keyword->string _%x114521%_))
                    (if (number? _%x114521%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%x114521%_))
                        (call-with-output-string
                         '()
                         (lambda (_%$%g114527114529%_)
                           (let* ((_%x114532%_ _%x114521%_)
                                  (_%port114535%_ _%$%g114527114529%_))
                             (if (output-port? _%port114535%_)
                                 (let ((_%port114540%_ _%port114535%_))
                                   (__display-as-string
                                    _%x114532%_
                                    _%port114540%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/util
                                    'contract:
                                    'output-port?
                                    'value:
                                    _%port114535%_)
                                   '#!void)))))))))))
    (define as-string__1
      (lambda _%args114554%_
        (call-with-output-string
         '()
         (lambda (_%$%g114555114557%_)
           (let* ((_%x114560%_ _%args114554%_)
                  (_%port114563%_ _%$%g114555114557%_))
             (if (output-port? _%port114563%_)
                 (let ((_%port114568%_ _%port114563%_))
                   (__display-as-string _%x114560%_ _%port114568%_))
                 (begin
                   (raise-contract-violation-error
                    '"contract violation"
                    'context:
                    'gerbil/runtime/util
                    'contract:
                    'output-port?
                    'value:
                    _%port114563%_)
                   '#!void)))))))
    (define as-string
      (lambda _g120945_
        (let ((_g120946_ (let () (declare (not safe)) (##length _g120945_))))
          (cond ((let () (declare (not safe)) (##fx= _g120946_ 1))
                 (apply as-string__0 _g120945_))
                (#t
                 (apply (lambda _%args114554%_
                          (let ()
                            (declare (not safe))
                            (##apply as-string__1 _%args114554%_)))
                        _g120945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  as-string
                  _g120945_))))))
    (define make-symbol__0
      (lambda (_%x114517%_)
        (if (interned-symbol? _%x114517%_)
            _%x114517%_
            (let ((__tmp120947 (as-string__0 _%x114517%_)))
              (declare (not safe))
              (##string->symbol __tmp120947)))))
    (define make-symbol__1
      (lambda _%args114519%_
        (let ((__tmp120948
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args114519%_))))
          (declare (not safe))
          (##string->symbol __tmp120948))))
    (define make-symbol
      (lambda _g120949_
        (let ((_g120950_ (let () (declare (not safe)) (##length _g120949_))))
          (cond ((let () (declare (not safe)) (##fx= _g120950_ 1))
                 (apply make-symbol__0 _g120949_))
                (#t
                 (apply (lambda _%args114519%_
                          (let ()
                            (declare (not safe))
                            (##apply make-symbol__1 _%args114519%_)))
                        _g120949_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-symbol
                  _g120949_))))))
    (define make-keyword__0
      (lambda (_%x114513%_)
        (if (interned-keyword? _%x114513%_)
            _%x114513%_
            (let ((__tmp120951 (as-string__0 _%x114513%_)))
              (declare (not safe))
              (##string->keyword __tmp120951)))))
    (define make-keyword__1
      (lambda _%args114515%_
        (let ((__tmp120952
               (let ()
                 (declare (not safe))
                 (##apply as-string _%args114515%_))))
          (declare (not safe))
          (##string->keyword __tmp120952))))
    (define make-keyword
      (lambda _g120953_
        (let ((_g120954_ (let () (declare (not safe)) (##length _g120953_))))
          (cond ((let () (declare (not safe)) (##fx= _g120954_ 1))
                 (apply make-keyword__0 _g120953_))
                (#t
                 (apply (lambda _%args114515%_
                          (let ()
                            (declare (not safe))
                            (##apply make-keyword__1 _%args114515%_)))
                        _g120953_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-keyword
                  _g120953_))))))
    (define interned-keyword?
      (lambda (_%x114510%_)
        (if (keyword? _%x114510%_)
            (not (uninterned-keyword? _%x114510%_))
            '#f)))
    (define __symbol->keyword
      (lambda (_%sym114498%_)
        (let ((_%sym114501%_ _%sym114498%_))
          (if (uninterned-symbol? _%sym114501%_)
              (let ((__tmp120955
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym114501%_))))
                (declare (not safe))
                (##string->uninterned-keyword __tmp120955))
              (let ((__tmp120956
                     (let ()
                       (declare (not safe))
                       (##symbol->string _%sym114501%_))))
                (declare (not safe))
                (##string->keyword __tmp120956))))))
    (define symbol->keyword
      (lambda (_%sym114484%_)
        (if (symbol? _%sym114484%_)
            (let ((_%sym114488%_ _%sym114484%_))
              (__symbol->keyword _%sym114488%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@660.24-660.27"
               'contract:
               'symbol?
               'value:
               _%sym114484%_)
              '#!void))))
    (define __keyword->symbol
      (lambda (_%sym114472%_)
        (let ((_%sym114475%_ _%sym114472%_))
          (if (uninterned-keyword? _%sym114475%_)
              (let ((__tmp120957
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym114475%_))))
                (declare (not safe))
                (##string->uninterned-symbol __tmp120957))
              (let ((__tmp120958
                     (let ()
                       (declare (not safe))
                       (##keyword->string _%sym114475%_))))
                (declare (not safe))
                (##string->symbol __tmp120958))))))
    (define keyword->symbol
      (lambda (_%sym114458%_)
        (if (keyword? _%sym114458%_)
            (let ((_%sym114462%_ _%sym114458%_))
              (__keyword->symbol _%sym114462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@666.24-666.27"
               'contract:
               'keyword?
               'value:
               _%sym114458%_)
              '#!void))))
    (define __bytes->string__%
      (lambda (_%bstr114418%_ _%enc114419%_)
        (let* ((_%bstr114422%_ _%bstr114418%_) (_%enc114430%_ _%enc114419%_))
          (if (eq? _%enc114430%_ 'UTF-8)
              (let () (declare (not safe)) (##utf8->string _%bstr114422%_))
              (let* ((_%in114439%_
                      (open-input-u8vector
                       (list 'char-encoding:
                             _%enc114430%_
                             'init:
                             _%bstr114422%_)))
                     (_%len114441%_
                      (let ()
                        (declare (not safe))
                        (##u8vector-length _%bstr114422%_)))
                     (_%out114443%_
                      (let ()
                        (declare (not safe))
                        (##make-string _%len114441%_)))
                     (_%n114445%_
                      (read-substring
                       _%out114443%_
                       '0
                       _%len114441%_
                       _%in114439%_)))
                (string-shrink! _%out114443%_ _%n114445%_)
                _%out114443%_)))))
    (define __bytes->string__0
      (lambda (_%bstr114451%_)
        (let ((_%enc114453%_ 'UTF-8))
          (__bytes->string__% _%bstr114451%_ _%enc114453%_))))
    (define __bytes->string
      (lambda _g120959_
        (let ((_g120960_ (let () (declare (not safe)) (##length _g120959_))))
          (cond ((let () (declare (not safe)) (##fx= _g120960_ 1))
                 (apply __bytes->string__0 _g120959_))
                ((let () (declare (not safe)) (##fx= _g120960_ 2))
                 (apply __bytes->string__% _g120959_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bytes->string
                  _g120959_))))))
    (define bytes->string__%
      (lambda (_%bstr114382%_ _%enc114383%_)
        (if (u8vector? _%bstr114382%_)
            (let ((_%bstr114387%_ _%bstr114382%_))
              (if (symbol? _%enc114383%_)
                  (let ((_%enc114397%_ _%enc114383%_))
                    (__bytes->string__% _%bstr114387%_ _%enc114397%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@673.25-673.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc114383%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@672.22-672.26"
               'contract:
               'u8vector?
               'value:
               _%bstr114382%_)
              '#!void))))
    (define bytes->string__0
      (lambda (_%bstr114410%_)
        (let ((_%enc114412%_ 'UTF-8))
          (bytes->string__% _%bstr114410%_ _%enc114412%_))))
    (define bytes->string
      (lambda _g120961_
        (let ((_g120962_ (let () (declare (not safe)) (##length _g120961_))))
          (cond ((let () (declare (not safe)) (##fx= _g120962_ 1))
                 (apply bytes->string__0 _g120961_))
                ((let () (declare (not safe)) (##fx= _g120962_ 2))
                 (apply bytes->string__% _g120961_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bytes->string
                  _g120961_))))))
    (define __string->bytes__%
      (lambda (_%str114300%_ _%enc114301%_)
        (let* ((_%str114304%_ _%str114300%_) (_%enc114312%_ _%enc114301%_))
          (if (eq? _%enc114312%_ 'UTF-8)
              (let () (declare (not safe)) (##string->utf8 _%str114304%_))
              (let* ((_%str114321%_ _%str114304%_)
                     (_%start114324%_ '0)
                     (_%end114327%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str114304%_)))
                     (_%enc114330%_ _%enc114312%_)
                     (_%str114335%_ _%str114321%_))
                (if (nonnegative-fixnum? _%start114324%_)
                    (let ((_%start114351%_ _%start114324%_))
                      (if (nonnegative-fixnum? _%end114327%_)
                          (let ((_%end114361%_ _%end114327%_))
                            (__substring->bytes__%
                             _%str114335%_
                             _%start114351%_
                             _%end114361%_
                             _%enc114330%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%end114327%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/util
                       'contract:
                       'nonnegative-fixnum?
                       'value:
                       _%start114324%_)
                      '#!void)))))))
    (define __string->bytes__0
      (lambda (_%str114374%_)
        (let ((_%enc114376%_ 'UTF-8))
          (__string->bytes__% _%str114374%_ _%enc114376%_))))
    (define __string->bytes
      (lambda _g120963_
        (let ((_g120964_ (let () (declare (not safe)) (##length _g120963_))))
          (cond ((let () (declare (not safe)) (##fx= _g120964_ 1))
                 (apply __string->bytes__0 _g120963_))
                ((let () (declare (not safe)) (##fx= _g120964_ 2))
                 (apply __string->bytes__% _g120963_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string->bytes
                  _g120963_))))))
    (define string->bytes__%
      (lambda (_%str114264%_ _%enc114265%_)
        (if (string? _%str114264%_)
            (let ((_%str114269%_ _%str114264%_))
              (if (symbol? _%enc114265%_)
                  (let ((_%enc114279%_ _%enc114265%_))
                    (__string->bytes__% _%str114269%_ _%enc114279%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@685.25-685.28"
                     'contract:
                     'symbol?
                     'value:
                     _%enc114265%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@684.22-684.25"
               'contract:
               'string?
               'value:
               _%str114264%_)
              '#!void))))
    (define string->bytes__0
      (lambda (_%str114292%_)
        (let ((_%enc114294%_ 'UTF-8))
          (string->bytes__% _%str114292%_ _%enc114294%_))))
    (define string->bytes
      (lambda _g120965_
        (let ((_g120966_ (let () (declare (not safe)) (##length _g120965_))))
          (cond ((let () (declare (not safe)) (##fx= _g120966_ 1))
                 (apply string->bytes__0 _g120965_))
                ((let () (declare (not safe)) (##fx= _g120966_ 2))
                 (apply string->bytes__% _g120965_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string->bytes
                  _g120965_))))))
    (define __substring->bytes__%
      (lambda (_%str114216%_ _%start114217%_ _%end114218%_ _%enc114219%_)
        (let* ((_%str114222%_ _%str114216%_)
               (_%start114230%_ _%start114217%_)
               (_%end114238%_ _%end114218%_))
          (if (eq? _%enc114219%_ 'UTF-8)
              (string->utf8 _%str114222%_ _%start114230%_ _%end114238%_)
              (let ((_%out114247%_
                     (open-output-u8vector
                      (list 'char-encoding: _%enc114219%_))))
                (write-substring
                 _%str114222%_
                 _%start114230%_
                 _%end114238%_
                 _%out114247%_)
                (get-output-u8vector _%out114247%_))))))
    (define __substring->bytes__0
      (lambda (_%str114252%_ _%start114253%_ _%end114254%_)
        (let ((_%enc114256%_ 'UTF-8))
          (__substring->bytes__%
           _%str114252%_
           _%start114253%_
           _%end114254%_
           _%enc114256%_))))
    (define __substring->bytes
      (lambda _g120967_
        (let ((_g120968_ (let () (declare (not safe)) (##length _g120967_))))
          (cond ((let () (declare (not safe)) (##fx= _g120968_ 3))
                 (apply __substring->bytes__0 _g120967_))
                ((let () (declare (not safe)) (##fx= _g120968_ 4))
                 (apply __substring->bytes__% _g120967_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __substring->bytes
                  _g120967_))))))
    (define substring->bytes__%
      (lambda (_%str114164%_ _%start114165%_ _%end114166%_ _%enc114167%_)
        (if (string? _%str114164%_)
            (let ((_%str114171%_ _%str114164%_))
              (if (nonnegative-fixnum? _%start114165%_)
                  (let ((_%start114181%_ _%start114165%_))
                    (if (nonnegative-fixnum? _%end114166%_)
                        (let ((_%end114191%_ _%end114166%_))
                          (__substring->bytes__%
                           _%str114171%_
                           _%start114181%_
                           _%end114191%_
                           _%enc114167%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@693.25-693.28"
                           'contract:
                           'nonnegative-fixnum?
                           'value:
                           _%end114166%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@692.25-692.30"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start114165%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@691.25-691.28"
               'contract:
               'string?
               'value:
               _%str114164%_)
              '#!void))))
    (define substring->bytes__0
      (lambda (_%str114204%_ _%start114205%_ _%end114206%_)
        (let ((_%enc114208%_ 'UTF-8))
          (substring->bytes__%
           _%str114204%_
           _%start114205%_
           _%end114206%_
           _%enc114208%_))))
    (define substring->bytes
      (lambda _g120969_
        (let ((_g120970_ (let () (declare (not safe)) (##length _g120969_))))
          (cond ((let () (declare (not safe)) (##fx= _g120970_ 3))
                 (apply substring->bytes__0 _g120969_))
                ((let () (declare (not safe)) (##fx= _g120970_ 4))
                 (apply substring->bytes__% _g120969_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  substring->bytes
                  _g120969_))))))
    (define __string-empty?
      (lambda (_%str114151%_)
        (let* ((_%str114154%_ _%str114151%_)
               (__tmp120971
                (let () (declare (not safe)) (##string-length _%str114154%_))))
          (declare (not safe))
          (##fxzero? __tmp120971))))
    (define string-empty?
      (lambda (_%str114137%_)
        (if (string? _%str114137%_)
            (let ((_%str114141%_ _%str114137%_))
              (__string-empty? _%str114141%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@702.22-702.25"
               'contract:
               'string?
               'value:
               _%str114137%_)
              '#!void))))
    (define __string-index__%
      (lambda (_%str113971%_ _%criterion113972%_ _%start113973%_ _%end113974%_)
        (let* ((_%str113977%_ _%str113971%_)
               (_%start113985%_ _%start113973%_)
               (_%end113993%_ _%end113974%_)
               (_%end114005%_
                (let ((_%$e114002%_ _%end113993%_))
                  (if _%$e114002%_
                      _%$e114002%_
                      (let ()
                        (declare (not safe))
                        (##string-length _%str113977%_))))))
          (if (< _%start113985%_ '0)
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-index"
                 'value:
                 (cons _%str113977%_ (cons _%start113985%_ '())))
                '#!void)
              (if (> _%end114005%_
                     (let ()
                       (declare (not safe))
                       (##string-length _%str113977%_)))
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-index"
                     'value:
                     (cons _%str113977%_ (cons _%end114005%_ '())))
                    '#!void)
                  (if (char? _%criterion113972%_)
                      (let* ((_%str114010%_ _%str113977%_)
                             (_%char114013%_ _%criterion113972%_)
                             (_%start114016%_ _%start113985%_)
                             (_%end114019%_ _%end114005%_)
                             (_%str114023%_ _%str114010%_)
                             (_%char114039%_ _%char114013%_)
                             (_%start114047%_ _%start114016%_)
                             (_%end114055%_ _%end114019%_))
                        (____string-index/char
                         _%str114023%_
                         _%char114039%_
                         _%start114047%_
                         _%end114055%_))
                      (if (procedure? _%criterion113972%_)
                          (let* ((_%str114065%_ _%str113977%_)
                                 (_%pred?114068%_ _%criterion113972%_)
                                 (_%start114071%_ _%start113985%_)
                                 (_%end114074%_ _%end114005%_)
                                 (_%str114078%_ _%str114065%_)
                                 (_%pred?114090%_ _%pred?114068%_)
                                 (_%start114098%_ _%start114071%_)
                                 (_%end114106%_ _%end114074%_))
                            (____string-index/pred
                             _%str114078%_
                             _%pred?114090%_
                             _%start114098%_
                             _%end114106%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-index criterion must be char or procedure"
                             'value:
                             _%criterion113972%_)
                            '#!void))))))))
    (define __string-index__0
      (lambda (_%str114119%_ _%criterion114120%_)
        (let* ((_%start114122%_ '0) (_%end114124%_ '#f))
          (__string-index__%
           _%str114119%_
           _%criterion114120%_
           _%start114122%_
           _%end114124%_))))
    (define __string-index__1
      (lambda (_%str114126%_ _%criterion114127%_ _%start114128%_)
        (let ((_%end114130%_ '#f))
          (__string-index__%
           _%str114126%_
           _%criterion114127%_
           _%start114128%_
           _%end114130%_))))
    (define __string-index
      (lambda _g120972_
        (let ((_g120973_ (let () (declare (not safe)) (##length _g120972_))))
          (cond ((let () (declare (not safe)) (##fx= _g120973_ 2))
                 (apply __string-index__0 _g120972_))
                ((let () (declare (not safe)) (##fx= _g120973_ 3))
                 (apply __string-index__1 _g120972_))
                ((let () (declare (not safe)) (##fx= _g120973_ 4))
                 (apply __string-index__% _g120972_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-index
                  _g120972_))))))
    (define string-index__%
      (lambda (_%str113906%_ _%criterion113907%_ _%start113908%_ _%end113909%_)
        (if (string? _%str113906%_)
            (let ((_%str113913%_ _%str113906%_))
              (if (nonnegative-fixnum? _%start113908%_)
                  (let ((_%start113923%_ _%start113908%_))
                    (if (or (not _%end113909%_) (fixnum? _%end113909%_))
                        (let ((_%end113939%_ _%end113909%_))
                          (__string-index__%
                           _%str113913%_
                           _%criterion113907%_
                           _%start113923%_
                           _%end113939%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@712.21-712.24"
                           'contract:
                           '(? (or not fixnum?))
                           'value:
                           _%end113909%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@711.21-711.26"
                     'contract:
                     'nonnegative-fixnum?
                     'value:
                     _%start113908%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@709.21-709.24"
               'contract:
               'string?
               'value:
               _%str113906%_)
              '#!void))))
    (define string-index__0
      (lambda (_%str113952%_ _%criterion113953%_)
        (let* ((_%start113955%_ '0) (_%end113957%_ '#f))
          (string-index__%
           _%str113952%_
           _%criterion113953%_
           _%start113955%_
           _%end113957%_))))
    (define string-index__1
      (lambda (_%str113959%_ _%criterion113960%_ _%start113961%_)
        (let ((_%end113963%_ '#f))
          (string-index__%
           _%str113959%_
           _%criterion113960%_
           _%start113961%_
           _%end113963%_))))
    (define string-index
      (lambda _g120974_
        (let ((_g120975_ (let () (declare (not safe)) (##length _g120974_))))
          (cond ((let () (declare (not safe)) (##fx= _g120975_ 2))
                 (apply string-index__0 _g120974_))
                ((let () (declare (not safe)) (##fx= _g120975_ 3))
                 (apply string-index__1 _g120974_))
                ((let () (declare (not safe)) (##fx= _g120975_ 4))
                 (apply string-index__% _g120974_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-index
                  _g120974_))))))
    (define ____string-index/char
      (lambda (_%str113851%_ _%char113852%_ _%start113853%_ _%end113854%_)
        (let* ((_%str113857%_ _%str113851%_)
               (_%char113865%_ _%char113852%_)
               (_%start113873%_ _%start113853%_)
               (_%end113881%_ _%end113854%_))
          (let _%lp113890%_ ((_%k113892%_ _%start113873%_))
            (let ((_%k113894%_ _%k113892%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k113894%_ _%end113881%_))
                  (if (eq? _%char113865%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str113857%_ _%k113894%_)))
                      _%k113894%_
                      (_%lp113890%_
                       (let () (declare (not safe)) (##fx+ _%k113894%_ '1))))
                  '#f))))))
    (define __string-index/char
      (lambda (_%str113812%_ _%char113813%_ _%start113814%_ _%end113815%_)
        (let* ((_%str113818%_ _%str113812%_)
               (_%char113826%_ _%char113813%_)
               (_%start113834%_ _%start113814%_)
               (_%end113842%_ _%end113815%_))
          (____string-index/char
           _%str113818%_
           _%char113826%_
           _%start113834%_
           _%end113842%_))))
    (define ____string-index/pred
      (lambda (_%str113758%_ _%pred?113759%_ _%start113760%_ _%end113761%_)
        (let* ((_%str113764%_ _%str113758%_)
               (_%pred?113772%_ _%pred?113759%_)
               (_%start113780%_ _%start113760%_)
               (_%end113788%_ _%end113761%_))
          (let _%lp113797%_ ((_%k113799%_ _%start113780%_))
            (let ((_%k113801%_ _%k113799%_))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%k113801%_ _%end113788%_))
                  (if (let ((__tmp120976
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str113764%_ _%k113801%_))))
                        (declare (not safe))
                        (_%pred?113772%_ __tmp120976))
                      _%k113801%_
                      (_%lp113797%_
                       (let () (declare (not safe)) (##fx+ _%k113801%_ '1))))
                  '#f))))))
    (define __string-index/pred
      (lambda (_%str113719%_ _%pred?113720%_ _%start113721%_ _%end113722%_)
        (let* ((_%str113725%_ _%str113719%_)
               (_%pred?113733%_ _%pred?113720%_)
               (_%start113741%_ _%start113721%_)
               (_%end113749%_ _%end113722%_))
          (____string-index/pred
           _%str113725%_
           _%pred?113733%_
           _%start113741%_
           _%end113749%_))))
    (define __string-rindex__%
      (lambda (_%str113559%_ _%criterion113560%_ _%start113561%_ _%end113562%_)
        (let* ((_%str113565%_ _%str113559%_)
               (_%start113573%_ _%start113561%_)
               (_%end113581%_ _%end113562%_))
          (if (>= _%start113573%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%str113565%_)))
              (let ()
                (raise-contract-violation-error
                 '"invalid start for string-rindex"
                 'value:
                 (cons _%str113565%_ (cons _%start113573%_ '())))
                '#!void)
              (if (< _%end113581%_ '0)
                  (let ()
                    (raise-contract-violation-error
                     '"invalid end for string-rindex"
                     'value:
                     (cons _%str113565%_ (cons _%end113581%_ '())))
                    '#!void)
                  (if (char? _%criterion113560%_)
                      (let* ((_%str113593%_ _%str113565%_)
                             (_%char113596%_ _%criterion113560%_)
                             (_%start113599%_ _%start113573%_)
                             (_%end113602%_ _%end113581%_)
                             (_%str113606%_ _%str113593%_)
                             (_%char113621%_ _%char113596%_)
                             (_%start113629%_ _%start113599%_)
                             (_%end113637%_ _%end113602%_))
                        (____string-rindex/char
                         _%str113606%_
                         _%char113621%_
                         _%start113629%_
                         _%end113637%_))
                      (if (procedure? _%criterion113560%_)
                          (let* ((_%str113647%_ _%str113565%_)
                                 (_%pred?113650%_ _%criterion113560%_)
                                 (_%start113653%_ _%start113573%_)
                                 (_%end113656%_ _%end113581%_)
                                 (_%str113660%_ _%str113647%_)
                                 (_%pred?113672%_ _%pred?113650%_)
                                 (_%start113680%_ _%start113653%_)
                                 (_%end113688%_ _%end113656%_))
                            (____string-rindex/pred
                             _%str113660%_
                             _%pred?113672%_
                             _%start113680%_
                             _%end113688%_))
                          (let ()
                            (raise-contract-violation-error
                             '"string-rindex criterion must be char or procedure"
                             'value:
                             _%criterion113560%_)
                            '#!void))))))))
    (define __string-rindex__0
      (lambda (_%str113701%_ _%criterion113702%_)
        (let* ((_%start113704%_
                (let ((__tmp120977 (string-length _%str113701%_)))
                  (declare (not safe))
                  (##fx- __tmp120977 '1)))
               (_%end113706%_ '0))
          (__string-rindex__%
           _%str113701%_
           _%criterion113702%_
           _%start113704%_
           _%end113706%_))))
    (define __string-rindex__1
      (lambda (_%str113708%_ _%criterion113709%_ _%start113710%_)
        (let ((_%end113712%_ '0))
          (__string-rindex__%
           _%str113708%_
           _%criterion113709%_
           _%start113710%_
           _%end113712%_))))
    (define __string-rindex
      (lambda _g120978_
        (let ((_g120979_ (let () (declare (not safe)) (##length _g120978_))))
          (cond ((let () (declare (not safe)) (##fx= _g120979_ 2))
                 (apply __string-rindex__0 _g120978_))
                ((let () (declare (not safe)) (##fx= _g120979_ 3))
                 (apply __string-rindex__1 _g120978_))
                ((let () (declare (not safe)) (##fx= _g120979_ 4))
                 (apply __string-rindex__% _g120978_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __string-rindex
                  _g120978_))))))
    (define string-rindex__%
      (lambda (_%str113500%_ _%criterion113501%_ _%start113502%_ _%end113503%_)
        (if (string? _%str113500%_)
            (let ((_%str113507%_ _%str113500%_))
              (if (fixnum? _%start113502%_)
                  (let ((_%start113517%_ _%start113502%_))
                    (if (fixnum? _%end113503%_)
                        (let ((_%end113527%_ _%end113503%_))
                          (__string-rindex__%
                           _%str113507%_
                           _%criterion113501%_
                           _%start113517%_
                           _%end113527%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@756.22-756.25"
                           'contract:
                           'fixnum?
                           'value:
                           _%end113503%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@755.22-755.27"
                     'contract:
                     'fixnum?
                     'value:
                     _%start113502%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@753.22-753.25"
               'contract:
               'string?
               'value:
               _%str113500%_)
              '#!void))))
    (define string-rindex__0
      (lambda (_%str113540%_ _%criterion113541%_)
        (let* ((_%start113543%_
                (let ((__tmp120980 (string-length _%str113540%_)))
                  (declare (not safe))
                  (##fx- __tmp120980 '1)))
               (_%end113545%_ '0))
          (string-rindex__%
           _%str113540%_
           _%criterion113541%_
           _%start113543%_
           _%end113545%_))))
    (define string-rindex__1
      (lambda (_%str113547%_ _%criterion113548%_ _%start113549%_)
        (let ((_%end113551%_ '0))
          (string-rindex__%
           _%str113547%_
           _%criterion113548%_
           _%start113549%_
           _%end113551%_))))
    (define string-rindex
      (lambda _g120981_
        (let ((_g120982_ (let () (declare (not safe)) (##length _g120981_))))
          (cond ((let () (declare (not safe)) (##fx= _g120982_ 2))
                 (apply string-rindex__0 _g120981_))
                ((let () (declare (not safe)) (##fx= _g120982_ 3))
                 (apply string-rindex__1 _g120981_))
                ((let () (declare (not safe)) (##fx= _g120982_ 4))
                 (apply string-rindex__% _g120981_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  string-rindex
                  _g120981_))))))
    (define ____string-rindex/char
      (lambda (_%str113445%_ _%char113446%_ _%start113447%_ _%end113448%_)
        (let* ((_%str113451%_ _%str113445%_)
               (_%char113459%_ _%char113446%_)
               (_%start113467%_ _%start113447%_)
               (_%end113475%_ _%end113448%_))
          (let _%lp113484%_ ((_%k113486%_ _%start113467%_))
            (let ((_%k113488%_ _%k113486%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k113488%_ _%end113475%_))
                  (if (eq? _%char113459%_
                           (let ()
                             (declare (not safe))
                             (##string-ref _%str113451%_ _%k113488%_)))
                      _%k113488%_
                      (_%lp113484%_
                       (let () (declare (not safe)) (##fx- _%k113488%_ '1))))
                  '#f))))))
    (define __string-rindex/char
      (lambda (_%str113406%_ _%char113407%_ _%start113408%_ _%end113409%_)
        (let* ((_%str113412%_ _%str113406%_)
               (_%char113420%_ _%char113407%_)
               (_%start113428%_ _%start113408%_)
               (_%end113436%_ _%end113409%_))
          (____string-rindex/char
           _%str113412%_
           _%char113420%_
           _%start113428%_
           _%end113436%_))))
    (define ____string-rindex/pred
      (lambda (_%str113352%_ _%pred?113353%_ _%start113354%_ _%end113355%_)
        (let* ((_%str113358%_ _%str113352%_)
               (_%pred?113366%_ _%pred?113353%_)
               (_%start113374%_ _%start113354%_)
               (_%end113382%_ _%end113355%_))
          (let _%lp113391%_ ((_%k113393%_ _%start113374%_))
            (let ((_%k113395%_ _%k113393%_))
              (if (let ()
                    (declare (not safe))
                    (##fx>= _%k113395%_ _%end113382%_))
                  (if (let ((__tmp120983
                             (let ()
                               (declare (not safe))
                               (##string-ref _%str113358%_ _%k113395%_))))
                        (declare (not safe))
                        (_%pred?113366%_ __tmp120983))
                      _%k113395%_
                      (_%lp113391%_
                       (let () (declare (not safe)) (##fx- _%k113395%_ '1))))
                  '#f))))))
    (define __string-rindex/pred
      (lambda (_%str113313%_ _%pred?113314%_ _%start113315%_ _%end113316%_)
        (let* ((_%str113319%_ _%str113313%_)
               (_%pred?113327%_ _%pred?113314%_)
               (_%start113335%_ _%start113315%_)
               (_%end113343%_ _%end113316%_))
          (____string-rindex/pred
           _%str113319%_
           _%pred?113327%_
           _%start113335%_
           _%end113343%_))))
    (define __string-split
      (lambda (_%str113201%_ _%char113202%_)
        (let* ((_%str113205%_ _%str113201%_)
               (_%char113213%_ _%char113202%_)
               (_%len113222%_
                (let () (declare (not safe)) (##string-length _%str113205%_))))
          (let _%lp113224%_ ((_%start113226%_ '0) (_%r113227%_ '()))
            (let* ((_%start113230%_ _%start113226%_)
                   (_%$e113298%_
                    (let* ((_%str113243%_ _%str113205%_)
                           (_%criterion113246%_ _%char113213%_)
                           (_%start113249%_ _%start113230%_)
                           (_%end113252%_ '#f)
                           (_%str113257%_ _%str113243%_))
                      (if (nonnegative-fixnum? _%start113249%_)
                          (let ((_%start113272%_ _%start113249%_))
                            (if (let ((_%$e113284%_ '#t))
                                  (and _%$e113284%_ _%$e113284%_))
                                (let ((_%end113288%_ _%end113252%_))
                                  (__string-index__%
                                   _%str113257%_
                                   _%criterion113246%_
                                   _%start113272%_
                                   _%end113288%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/util
                                   'contract:
                                   '(? (or not fixnum?))
                                   'value:
                                   _%end113252%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/util
                             'contract:
                             'nonnegative-fixnum?
                             'value:
                             _%start113249%_)
                            '#!void)))))
              (if _%$e113298%_
                  (let ((_%end113303%_ _%$e113298%_))
                    (_%lp113224%_
                     (let () (declare (not safe)) (##fx+ _%end113303%_ '1))
                     (cons (let ()
                             (declare (not safe))
                             (##substring
                              _%str113205%_
                              _%start113230%_
                              _%end113303%_))
                           _%r113227%_)))
                  (if (let ()
                        (declare (not safe))
                        (##fx< _%start113230%_ _%len113222%_))
                      (foldl__0
                       cons
                       (list (let ()
                               (declare (not safe))
                               (##substring
                                _%str113205%_
                                _%start113230%_
                                _%len113222%_)))
                       _%r113227%_)
                      (reverse! _%r113227%_))))))))
    (define string-split
      (lambda (_%str113176%_ _%char113177%_)
        (if (string? _%str113176%_)
            (let ((_%str113181%_ _%str113176%_))
              (if (char? _%char113177%_)
                  (let ((_%char113191%_ _%char113177%_))
                    (__string-split _%str113181%_ _%char113191%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@794.37-794.41"
                     'contract:
                     'char?
                     'value:
                     _%char113177%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@794.21-794.24"
               'contract:
               'string?
               'value:
               _%str113176%_)
              '#!void))))
    (define string-join
      (lambda (_%strs113026%_ _%join113027%_)
        (letrec ((_%join-length113030%_
                  (lambda (_%strs113114%_ _%jlen113115%_)
                    (let _%lp113117%_ ((_%rest113119%_ _%strs113114%_)
                                       (_%len113120%_ '0))
                      (let* ((_%len113122%_ _%len113120%_)
                             (_%$%rest113130113138%_ _%rest113119%_)
                             (_%$%else113132113146%_ (lambda () '0))
                             (_%$%K113134113164%_
                              (lambda (_%rest113149%_ _%hd113150%_)
                                (if (string? _%hd113150%_)
                                    (let ((_%hd113152%_ _%hd113150%_))
                                      (if (pair? _%rest113149%_)
                                          (_%lp113117%_
                                           _%rest113149%_
                                           (fx+ (let ()
                                                  (declare (not safe))
                                                  (##string-length
                                                   _%hd113152%_))
                                                _%jlen113115%_
                                                _%len113122%_))
                                          (let ((__tmp120984
                                                 (let ()
                                                   (declare (not safe))
                                                   (##string-length
                                                    _%hd113152%_))))
                                            (declare (not safe))
                                            (##fx+ __tmp120984
                                                   _%len113122%_))))
                                    (begin
                                      (raise-contract-violation-error
                                       '"expected string"
                                       'value:
                                       _%hd113150%_)
                                      '#!void)))))
                        (if (pair? _%$%rest113130113138%_)
                            (let ((_%$%hd113135113167%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest113130113138%_)))
                                  (_%$%tl113136113169%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest113130113138%_))))
                              (let* ((_%hd113172%_ _%$%hd113135113167%_)
                                     (_%rest113174%_ _%$%tl113136113169%_))
                                (_%$%K113134113164%_
                                 _%rest113174%_
                                 _%hd113172%_)))
                            (_%$%else113132113146%_)))))))
          (let* ((_%join113035%_
                  (if (char? _%join113027%_)
                      (let () (declare (not safe)) (##string _%join113027%_))
                      (if (string? _%join113027%_)
                          _%join113027%_
                          (let ()
                            (raise-contract-violation-error
                             '"expected string or char"
                             'value:
                             _%join113027%_)
                            '#!void))))
                 (_%jlen113037%_
                  (let ()
                    (declare (not safe))
                    (##string-length _%join113035%_)))
                 (_%olen113039%_
                  (_%join-length113030%_ _%strs113026%_ _%jlen113037%_))
                 (_%ostr113041%_
                  (let ()
                    (declare (not safe))
                    (##make-string _%olen113039%_))))
            (let _%lp113044%_ ((_%rest113046%_ _%strs113026%_)
                               (_%k113047%_ '0))
              (let* ((_%k113050%_ _%k113047%_)
                     (_%$%rest113066113074%_ _%rest113046%_)
                     (_%$%else113068113082%_ (lambda () '""))
                     (_%$%K113070113102%_
                      (lambda (_%rest113085%_ _%hd113086%_)
                        (let* ((_%hd113088%_ _%hd113086%_)
                               (_%hdlen113100%_
                                (let ()
                                  (declare (not safe))
                                  (##string-length _%hd113088%_))))
                          (if (pair? _%rest113085%_)
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd113088%_
                                   '0
                                   _%hdlen113100%_
                                   _%ostr113041%_
                                   _%k113050%_))
                                (let ((__tmp120985
                                       (let ()
                                         (declare (not safe))
                                         (##fx+ _%k113050%_ _%hdlen113100%_))))
                                  (declare (not safe))
                                  (##substring-move!
                                   _%join113035%_
                                   '0
                                   _%jlen113037%_
                                   _%ostr113041%_
                                   __tmp120985))
                                (_%lp113044%_
                                 _%rest113085%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%k113050%_
                                          _%hdlen113100%_
                                          _%jlen113037%_))))
                              (begin
                                (let ()
                                  (declare (not safe))
                                  (##substring-move!
                                   _%hd113088%_
                                   '0
                                   _%hdlen113100%_
                                   _%ostr113041%_
                                   _%k113050%_))
                                _%ostr113041%_))))))
                (if (pair? _%$%rest113066113074%_)
                    (let ((_%$%hd113071113105%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest113066113074%_)))
                          (_%$%tl113072113107%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest113066113074%_))))
                      (let* ((_%hd113110%_ _%$%hd113071113105%_)
                             (_%rest113112%_ _%$%tl113072113107%_))
                        (_%$%K113070113102%_ _%rest113112%_ _%hd113110%_)))
                    (_%$%else113068113082%_))))))))
    (define __read-u8vector__%
      (lambda (_%bytes112966%_ _%port112967%_ _%start112968%_ _%end112969%_)
        (let* ((_%bytes112972%_ _%bytes112966%_)
               (_%port112980%_ _%port112967%_)
               (_%start112988%_ _%start112968%_)
               (_%end112996%_ _%end112969%_))
          (declare (not safe))
          (##read-subu8vector
           _%bytes112972%_
           _%start112988%_
           _%end112996%_
           _%port112980%_))))
    (define __read-u8vector__0
      (lambda (_%bytes113008%_ _%port113009%_)
        (let* ((_%start113011%_ '0)
               (_%end113013%_ (u8vector-length _%bytes113008%_)))
          (__read-u8vector__%
           _%bytes113008%_
           _%port113009%_
           _%start113011%_
           _%end113013%_))))
    (define __read-u8vector__1
      (lambda (_%bytes113015%_ _%port113016%_ _%start113017%_)
        (let ((_%end113019%_ (u8vector-length _%bytes113015%_)))
          (__read-u8vector__%
           _%bytes113015%_
           _%port113016%_
           _%start113017%_
           _%end113019%_))))
    (define __read-u8vector
      (lambda _g120986_
        (let ((_g120987_ (let () (declare (not safe)) (##length _g120986_))))
          (cond ((let () (declare (not safe)) (##fx= _g120987_ 2))
                 (apply __read-u8vector__0 _g120986_))
                ((let () (declare (not safe)) (##fx= _g120987_ 3))
                 (apply __read-u8vector__1 _g120986_))
                ((let () (declare (not safe)) (##fx= _g120987_ 4))
                 (apply __read-u8vector__% _g120986_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __read-u8vector
                  _g120986_))))))
    (define read-u8vector__%
      (lambda (_%bytes112891%_ _%port112892%_ _%start112893%_ _%end112894%_)
        (if (u8vector? _%bytes112891%_)
            (let ((_%bytes112898%_ _%bytes112891%_))
              (if (input-port? _%port112892%_)
                  (let ((_%port112908%_ _%port112892%_))
                    (if (and (fixnum? _%start112893%_)
                             (let ()
                               (declare (not safe))
                               (##fx>= _%start112893%_ '0))
                             (let ((__tmp120988
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes112898%_))))
                               (declare (not safe))
                               (##fx< _%start112893%_ __tmp120988)))
                        (let ((_%start112921%_ _%start112893%_))
                          (if (and (fixnum? _%end112894%_)
                                   (let ((__tmp120989
                                          (let ()
                                            (declare (not safe))
                                            (##u8vector-length
                                             _%bytes112898%_))))
                                     (declare (not safe))
                                     (##fx<= _%start112921%_
                                             _%end112894%_
                                             __tmp120989)))
                              (let ((_%end112934%_ _%end112894%_))
                                (__read-u8vector__%
                                 _%bytes112898%_
                                 _%port112908%_
                                 _%start112921%_
                                 _%end112934%_))
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
                                 _%end112894%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@861.22-861.27"
                           'contract:
                           '(in-range? 0 (u8vector-length bytes))
                           'value:
                           _%start112893%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@860.22-860.26"
                     'contract:
                     'input-port?
                     'value:
                     _%port112892%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@859.22-859.27"
               'contract:
               'u8vector?
               'value:
               _%bytes112891%_)
              '#!void))))
    (define read-u8vector__0
      (lambda (_%bytes112947%_ _%port112948%_)
        (let* ((_%start112950%_ '0)
               (_%end112952%_ (u8vector-length _%bytes112947%_)))
          (read-u8vector__%
           _%bytes112947%_
           _%port112948%_
           _%start112950%_
           _%end112952%_))))
    (define read-u8vector__1
      (lambda (_%bytes112954%_ _%port112955%_ _%start112956%_)
        (let ((_%end112958%_ (u8vector-length _%bytes112954%_)))
          (read-u8vector__%
           _%bytes112954%_
           _%port112955%_
           _%start112956%_
           _%end112958%_))))
    (define read-u8vector
      (lambda _g120990_
        (let ((_g120991_ (let () (declare (not safe)) (##length _g120990_))))
          (cond ((let () (declare (not safe)) (##fx= _g120991_ 2))
                 (apply read-u8vector__0 _g120990_))
                ((let () (declare (not safe)) (##fx= _g120991_ 3))
                 (apply read-u8vector__1 _g120990_))
                ((let () (declare (not safe)) (##fx= _g120991_ 4))
                 (apply read-u8vector__% _g120990_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-u8vector
                  _g120990_))))))
    (define __write-u8vector__%
      (lambda (_%bytes112830%_ _%port112831%_ _%start112832%_ _%end112833%_)
        (let* ((_%bytes112836%_ _%bytes112830%_)
               (_%port112844%_ _%port112831%_)
               (_%start112852%_ _%start112832%_)
               (_%end112860%_ _%end112833%_))
          (declare (not safe))
          (##write-subu8vector
           _%bytes112836%_
           _%start112852%_
           _%end112860%_
           _%port112844%_))))
    (define __write-u8vector__0
      (lambda (_%bytes112872%_ _%port112873%_)
        (let* ((_%start112875%_ '0)
               (_%end112877%_ (u8vector-length _%bytes112872%_)))
          (__write-u8vector__%
           _%bytes112872%_
           _%port112873%_
           _%start112875%_
           _%end112877%_))))
    (define __write-u8vector__1
      (lambda (_%bytes112879%_ _%port112880%_ _%start112881%_)
        (let ((_%end112883%_ (u8vector-length _%bytes112879%_)))
          (__write-u8vector__%
           _%bytes112879%_
           _%port112880%_
           _%start112881%_
           _%end112883%_))))
    (define __write-u8vector
      (lambda _g120992_
        (let ((_g120993_ (let () (declare (not safe)) (##length _g120992_))))
          (cond ((let () (declare (not safe)) (##fx= _g120993_ 2))
                 (apply __write-u8vector__0 _g120992_))
                ((let () (declare (not safe)) (##fx= _g120993_ 3))
                 (apply __write-u8vector__1 _g120992_))
                ((let () (declare (not safe)) (##fx= _g120993_ 4))
                 (apply __write-u8vector__% _g120992_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __write-u8vector
                  _g120992_))))))
    (define write-u8vector__%
      (lambda (_%bytes112760%_ _%port112761%_ _%start112762%_ _%end112763%_)
        (if (u8vector? _%bytes112760%_)
            (let ((_%bytes112767%_ _%bytes112760%_))
              (if (output-port? _%port112761%_)
                  (let* ((_%port112777%_ _%port112761%_)
                         (_%start112786%_ _%start112762%_))
                    (if (and (fixnum? _%end112763%_)
                             (let ((__tmp120994
                                    (let ()
                                      (declare (not safe))
                                      (##u8vector-length _%bytes112767%_))))
                               (declare (not safe))
                               (##fx<= _%start112786%_
                                       _%end112763%_
                                       __tmp120994)))
                        (let ((_%end112798%_ _%end112763%_))
                          (__write-u8vector__%
                           _%bytes112767%_
                           _%port112777%_
                           _%start112786%_
                           _%end112798%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/util.ss\"@872.23-872.26"
                           'contract:
                           '(in-range-inclusive? start (u8vector-length bytes))
                           'value:
                           _%end112763%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/util.ss\"@870.23-870.27"
                     'contract:
                     'output-port?
                     'value:
                     _%port112761%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/util.ss\"@869.23-869.28"
               'contract:
               'u8vector?
               'value:
               _%bytes112760%_)
              '#!void))))
    (define write-u8vector__0
      (lambda (_%bytes112811%_ _%port112812%_)
        (let* ((_%start112814%_ '0)
               (_%end112816%_ (u8vector-length _%bytes112811%_)))
          (write-u8vector__%
           _%bytes112811%_
           _%port112812%_
           _%start112814%_
           _%end112816%_))))
    (define write-u8vector__1
      (lambda (_%bytes112818%_ _%port112819%_ _%start112820%_)
        (let ((_%end112822%_ (u8vector-length _%bytes112818%_)))
          (write-u8vector__%
           _%bytes112818%_
           _%port112819%_
           _%start112820%_
           _%end112822%_))))
    (define write-u8vector
      (lambda _g120995_
        (let ((_g120996_ (let () (declare (not safe)) (##length _g120995_))))
          (cond ((let () (declare (not safe)) (##fx= _g120996_ 2))
                 (apply write-u8vector__0 _g120995_))
                ((let () (declare (not safe)) (##fx= _g120996_ 3))
                 (apply write-u8vector__1 _g120995_))
                ((let () (declare (not safe)) (##fx= _g120996_ 4))
                 (apply write-u8vector__% _g120995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  write-u8vector
                  _g120995_))))))
    (define DBG-printer (make-parameter write))
    (define DBG-helper
      (lambda (_%tag112728%_
               _%dbg-exprs112729%_
               _%dbg-thunks112730%_
               _%expr112731%_
               _%thunk112732%_)
        (letrec ((_%o112734%_ (current-output-port))
                 (_%e112735%_ (current-error-port))
                 (_%p112736%_ (let () (declare (not safe)) (DBG-printer)))
                 (_%f112737%_
                  (lambda ()
                    (force-output _%o112734%_)
                    (force-output _%e112735%_)))
                 (_%d112738%_
                  (lambda (_%x112745%_) (display _%x112745%_ _%e112735%_)))
                 (_%w112739%_
                  (lambda (_%x112747%_) (_%p112736%_ _%x112747%_ _%e112735%_)))
                 (_%n112740%_ (lambda () (newline _%e112735%_)))
                 (_%v112741%_
                  (lambda (_%l112750%_)
                    (for-each
                     (lambda (_%x112752%_)
                       (_%d112738%_ '" ")
                       (_%w112739%_ _%x112752%_))
                     _%l112750%_)
                    (_%n112740%_)))
                 (_%x112742%_
                  (lambda (_%expr112754%_ _%thunk112755%_)
                    (call-with-values
                     _%thunk112755%_
                     (lambda _%x112757%_
                       (_%f112737%_)
                       (_%d112738%_ '"  ")
                       (_%w112739%_ _%expr112754%_)
                       (_%d112738%_ '" =>")
                       (_%v112741%_ _%x112757%_)
                       (_%f112737%_)
                       (let ()
                         (declare (not safe))
                         (##apply values _%x112757%_)))))))
          (if _%tag112728%_
              (begin
                (if (eq? _%tag112728%_ '#!void)
                    '#!void
                    (begin
                      (_%f112737%_)
                      (_%d112738%_ _%tag112728%_)
                      (_%n112740%_)))
                (for-each _%x112742%_ _%dbg-exprs112729%_ _%dbg-thunks112730%_)
                (if _%thunk112732%_
                    (_%x112742%_ _%expr112731%_ _%thunk112732%_)
                    '#!void))
              (if _%thunk112732%_ (_%thunk112732%_) '#!void)))))))
