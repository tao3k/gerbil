(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1784461452)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp273874 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp273874))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp273875 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp273875))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path273731%_ _%fun273732%_)
        (with-output-to-file
         (cons 'path: (cons _%path273731%_ gxc#scheme-file-settings))
         _%fun273732%_)))
    (define gxc#+gerbil-gsc+ '#f)
    (define gxc#gerbil-gsc
      (lambda ()
        (if gxc#+gerbil-gsc+
            '#!void
            (set! gxc#+gerbil-gsc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GSC" gxc#default-gerbil-gsc))))
        gxc#+gerbil-gsc+))
    (define gxc#+gerbil-gcc+ '#f)
    (define gxc#gerbil-gcc
      (lambda ()
        (if gxc#+gerbil-gcc+
            '#!void
            (set! gxc#+gerbil-gcc+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_GCC" gxc#default-gerbil-gcc))))
        gxc#+gerbil-gcc+))
    (define gxc#+gerbil-ar+ '#f)
    (define gxc#gerbil-ar
      (lambda ()
        (if gxc#+gerbil-ar+
            '#!void
            (set! gxc#+gerbil-ar+
                  (let ()
                    (declare (not safe))
                    (##getenv '"GERBIL_AR" gxc#default-gerbil-ar))))
        gxc#+gerbil-ar+))
    (define gxc#gerbil-rpath
      (lambda (_%gerbil-libdir273726%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir273726%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path273724%_)
        (let ((__tmp273876 (object->string _%path273724%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp273876 '")"))))
    (define gxc#gerbil-runtime-modules
      '("gerbil/runtime/gambit"
        "gerbil/runtime/util"
        "gerbil/runtime/table"
        "gerbil/runtime/control"
        "gerbil/runtime/system"
        "gerbil/runtime/c3"
        "gerbil/runtime/mop"
        "gerbil/runtime/mop-system-classes"
        "gerbil/runtime/error"
        "gerbil/runtime/interface"
        "gerbil/runtime/hash"
        "gerbil/runtime/thread"
        "gerbil/runtime/syntax"
        "gerbil/runtime/eval"
        "gerbil/runtime/repl"
        "gerbil/runtime/loader"
        "gerbil/runtime/init"
        "gerbil/runtime"))
    (define gxc#delete-directory*
      (lambda (_%dir273722%_) (delete-file-or-directory _%dir273722%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath273665%_ _%opts273666%_)
        (if (string? _%srcpath273665%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath273665%_)))
        (let* ((_%outdir273668%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts273666%_)))
               (_%invoke-gsc?273670%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts273666%_)))
               (_%target273675%_
                (let ((_%$e273672%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts273666%_))))
                  (if _%$e273672%_ _%$e273672%_ 'C)))
               (_%gsc-options273680%_
                (append (cons '"-target"
                              (cons (symbol->string _%target273675%_) '()))
                        (let ((_%$e273677%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts273666%_))))
                          (if _%$e273677%_ _%$e273677%_ '()))))
               (_%keep-scm?273682%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts273666%_)))
               (_%verbosity273684%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts273666%_)))
               (_%optimize273686%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts273666%_)))
               (_%debug273688%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts273666%_)))
               (_%gen-ssxi273690%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts273666%_)))
               (_%parallel?273692%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts273666%_))))
          (if _%outdir273668%_
              (let ((__tmp273877
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir273668%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp273877))
              '#!void)
          (if _%optimize273686%_
              (let ((__tmp273878
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp273878))
              '#!void)
          (let ((__tmp273879
                 (lambda ()
                   (let ((__tmp273880
                          (lambda ()
                            (let ((__tmp273881
                                   (lambda ()
                                     (let ((__tmp273882
                                            (lambda ()
                                              (let ((__tmp273883
                                                     (lambda ()
                                                       (let ((__tmp273884
                                                              (lambda ()
                                                                (let ((__tmp273885
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp273886
                                        (lambda ()
                                          (let ((__tmp273888
                                                 (lambda ()
                                                   (let ((__tmp273890
                                                          (lambda ()
                                                            (let ((__tmp273892
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp273893
                                    (lambda ()
                                      (let ((__tmp273894
                                             (lambda ()
                                               (let ((__tmp273895
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath273665%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp273896
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath273665%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp273896))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp273895
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp273894
                                         gx#current-compilation-target
                                         _%target273675%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp273893
                                gxc#current-compile-parallel
                                _%parallel?273692%_))))
                          (__tmp273891
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp273892
                       gxc#current-compile-identifiers
                       __tmp273891))))
                 (__tmp273889 (list (list 'compile-module _%srcpath273665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp273890
                                                      gxc#current-compile-context
                                                      __tmp273889))))
                                                (__tmp273887
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp273888
                                             gxc#current-compile-timestamp
                                             __tmp273887)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp273886
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi273690%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp273885
                           gxc#current-compile-debug
                           _%debug273688%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp273884
                  gxc#current-compile-optimize
                  _%optimize273686%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp273883
                                                 gxc#current-compile-verbose
                                                 _%verbosity273684%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp273882
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?273682%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp273881
                               gxc#current-compile-gsc-options
                               _%gsc-options273680%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp273880
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?273670%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp273879
             gxc#current-compile-output-dir
             _%outdir273668%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath273715%_)
        (let ((_%opts273717%_ '()))
          (gxc#compile-module__% _%srcpath273715%_ _%opts273717%_))))
    (define gxc#compile-module
      (lambda _g273897_
        (let ((_g273898_ (let () (declare (not safe)) (##length _g273897_))))
          (cond ((let () (declare (not safe)) (##fx= _g273898_ 1))
                 (apply gxc#compile-module__0 _g273897_))
                ((let () (declare (not safe)) (##fx= _g273898_ 2))
                 (apply gxc#compile-module__% _g273897_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g273897_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath273614%_ _%opts273615%_)
        (if (string? _%srcpath273614%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath273614%_)))
        (let* ((_%outdir273617%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts273615%_)))
               (_%invoke-gsc?273619%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts273615%_)))
               (_%target273624%_
                (let ((_%$e273621%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts273615%_))))
                  (if _%$e273621%_ _%$e273621%_ 'C)))
               (_%gsc-options273629%_
                (append (cons '"-target"
                              (cons (symbol->string _%target273624%_) '()))
                        (let ((_%$e273626%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts273615%_))))
                          (if _%$e273626%_ _%$e273626%_ '()))))
               (_%keep-scm?273631%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts273615%_)))
               (_%verbosity273633%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts273615%_)))
               (_%debug273635%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts273615%_)))
               (_%parallel?273637%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts273615%_))))
          (if _%outdir273617%_
              (let ((__tmp273899
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir273617%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp273899))
              '#!void)
          (let ((__tmp273900
                 (lambda ()
                   (let ((__tmp273901
                          (lambda ()
                            (let ((__tmp273902
                                   (lambda ()
                                     (let ((__tmp273903
                                            (lambda ()
                                              (let ((__tmp273904
                                                     (lambda ()
                                                       (let ((__tmp273905
                                                              (lambda ()
                                                                (let ((__tmp273906
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp273908
                                        (lambda ()
                                          (let ((__tmp273910
                                                 (lambda ()
                                                   (let ((__tmp273912
                                                          (lambda ()
                                                            (let ((__tmp273913
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp273914
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath273614%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp273915
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath273614%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp273915))
                                       _%opts273615%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp273914
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp273913
                       gxc#current-compile-parallel
                       _%parallel?273637%_))))
                 (__tmp273911
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp273912
                                                      gxc#current-compile-identifiers
                                                      __tmp273911))))
                                                (__tmp273909
                                                 (list (list 'compile-exe
                                                             _%srcpath273614%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp273910
                                             gxc#current-compile-context
                                             __tmp273909))))
                                       (__tmp273907 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp273908
                                    gxc#current-compile-timestamp
                                    __tmp273907)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp273906
                           gxc#current-compile-debug
                           _%debug273635%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp273905
                  gxc#current-compile-verbose
                  _%verbosity273633%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp273904
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?273631%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp273903
                                        gxc#current-compile-gsc-options
                                        _%gsc-options273629%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp273902
                               gx#current-compilation-target
                               _%target273624%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp273901
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?273619%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp273900
             gxc#current-compile-output-dir
             _%outdir273617%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath273657%_)
        (let ((_%opts273659%_ '()))
          (gxc#compile-exe__% _%srcpath273657%_ _%opts273659%_))))
    (define gxc#compile-exe
      (lambda _g273916_
        (let ((_g273917_ (let () (declare (not safe)) (##length _g273916_))))
          (cond ((let () (declare (not safe)) (##fx= _g273917_ 1))
                 (apply gxc#compile-exe__0 _g273916_))
                ((let () (declare (not safe)) (##fx= _g273917_ 2))
                 (apply gxc#compile-exe__% _g273916_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g273916_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx273610%_ _%opts273611%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts273611%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx273610%_
             _%opts273611%_)
            (gxc#compile-executable-module/separate
             _%ctx273610%_
             _%opts273611%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx273336%_ _%opts273337%_)
        (letrec ((_%generate-stub273339%_
                  (lambda (_%builtin-modules273606%_)
                    (let ((_%mod-main273608%_
                           (gxc#find-runtime-symbol _%ctx273336%_ 'main)))
                      (let ((__tmp273918
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules273606%_))))
                        (declare (not safe))
                        (##write __tmp273918))
                      (let ((__tmp273919
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main273608%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '((cdr (command-line))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '((lambda ()
                                                   (with-catch
                                                    void
                                                    (lambda ()
                                                      (force-output
                                                       (current-output-port))))
                                                   (with-catch
                                                    void
                                                    (lambda ()
                                                      (force-output
                                                       (current-error-port)))))))))))
                        (declare (not safe))
                        (##write __tmp273919))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts273340%_
                  (lambda (_%gerbil-libdir273604%_)
                    (let ((__tmp273920
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir273604%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp273920 read))))
                 (_%replace-extension273341%_
                  (lambda (_%path273601%_ _%ext273602%_)
                    (string-append
                     (path-strip-extension _%path273601%_)
                     _%ext273602%_)))
                 (_%replace-extension-with-c273342%_
                  (lambda (_%path273599%_)
                    (_%replace-extension273341%_ _%path273599%_ '".c")))
                 (_%replace-extension-with-object273343%_
                  (lambda (_%path273597%_)
                    (_%replace-extension273341%_
                     _%path273597%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?273344%_
                  (lambda (_%ctx273595%_)
                    (if (_%exclude-module?273346%_ _%ctx273595%_)
                        '#f
                        (not (_%libgerbil-module?273345%_ _%ctx273595%_)))))
                 (_%libgerbil-module?273345%_
                  (lambda (_%ctx273588%_)
                    (let ((_%id-str273590%_
                           (symbol->string
                            (##structure-ref
                             _%ctx273588%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?273346%_ _%id-str273590%_)
                          '#f
                          (let ((_%$e273592%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str273590%_))))
                            (if _%$e273592%_
                                _%$e273592%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str273590%_))))))))
                 (_%exclude-module?273346%_
                  (lambda (_%ctx-or-str273584%_)
                    (let ((_%str273586%_
                           (if (string? _%ctx-or-str273584%_)
                               _%ctx-or-str273584%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str273584%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str273586%_))))
                 (_%not-file-empty?273347%_
                  (lambda (_%path273582%_)
                    (not (gxc#file-empty? _%path273582%_))))
                 (_%fold-libgerbil-runtime-scm273348%_
                  (lambda (_%gerbil-staticdir273575%_ _%libgerbil-scm273576%_)
                    (let ((_%gerbil-runtime-scm273580%_
                           (let ((__tmp273921
                                  (lambda (_%rtm273578%_)
                                    (path-expand
                                     (let ((__tmp273922
                                            (let ((__tmp273923
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm273578%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp273923
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp273922 '".scm"))
                                     _%gerbil-staticdir273575%_))))
                             (declare (not safe))
                             (##map __tmp273921 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates273349%_
                       (append _%gerbil-runtime-scm273580%_
                               _%libgerbil-scm273576%_)))))
                 (_%remove-duplicates273349%_
                  (lambda (_%strlst273535%_)
                    (let _%loop273537%_ ((_%rest273539%_ _%strlst273535%_)
                                         (_%result273540%_ '()))
                      (let* ((_%$%rest273541273549%_ _%rest273539%_)
                             (_%$%else273543273557%_
                              (lambda () (reverse! _%result273540%_)))
                             (_%$%K273545273563%_
                              (lambda (_%rest273560%_ _%path273561%_)
                                (if (member _%path273561%_ _%result273540%_)
                                    (_%loop273537%_
                                     _%rest273560%_
                                     _%result273540%_)
                                    (_%loop273537%_
                                     _%rest273560%_
                                     (cons _%path273561%_
                                           _%result273540%_))))))
                        (if (pair? _%$%rest273541273549%_)
                            (let ((_%$%hd273546273566%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest273541273549%_)))
                                  (_%$%tl273547273568%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest273541273549%_))))
                              (let* ((_%path273571%_ _%$%hd273546273566%_)
                                     (_%rest273573%_ _%$%tl273547273568%_))
                                (_%$%K273545273563%_
                                 _%rest273573%_
                                 _%path273571%_)))
                            (_%$%else273543273557%_))))))
                 (_%compile-stub273350%_
                  (lambda (_%output-scm273357%_ _%output-bin273358%_)
                    (let* ((_%gerbil-home273360%_
                            (let ((__tmp273924
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp273924)))
                           (_%gerbil-libdir273362%_
                            (path-expand '"lib" _%gerbil-home273360%_))
                           (_%gerbil-staticdir273364%_
                            (path-expand '"static" _%gerbil-libdir273362%_))
                           (_%deps273366%_
                            (gxc#find-runtime-module-deps _%ctx273336%_))
                           (_%libgerbil-deps273368%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?273345%_
                               _%deps273366%_)))
                           (_%libgerbil-scm273370%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps273368%_)))
                           (_%libgerbil-scm273372%_
                            (_%fold-libgerbil-runtime-scm273348%_
                             _%gerbil-staticdir273364%_
                             _%libgerbil-scm273370%_))
                           (_%libgerbil-c273374%_
                            (map _%replace-extension-with-c273342%_
                                 _%libgerbil-scm273372%_))
                           (_%libgerbil-o273376%_
                            (map _%replace-extension-with-object273343%_
                                 _%libgerbil-scm273372%_))
                           (_%src-deps273378%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?273344%_
                               _%deps273366%_)))
                           (_%src-deps-scm273380%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps273378%_)))
                           (_%src-deps-scm273382%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?273347%_
                               _%src-deps-scm273380%_)))
                           (_%src-deps-scm273384%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm273382%_)))
                           (_%src-deps-c273386%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c273342%_
                                     _%src-deps-scm273384%_)))
                           (_%src-deps-o273388%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object273343%_
                                     _%src-deps-scm273384%_)))
                           (_%src-bin-scm273390%_
                            (gxc#find-static-module-file _%ctx273336%_))
                           (_%src-bin-scm273392%_
                            (path-expand _%src-bin-scm273390%_))
                           (_%src-bin-c273394%_
                            (_%replace-extension-with-c273342%_
                             _%src-bin-scm273392%_))
                           (_%src-bin-o273396%_
                            (_%replace-extension-with-object273343%_
                             _%src-bin-scm273392%_))
                           (_%output-bin273398%_
                            (path-expand _%output-bin273358%_))
                           (_%output-scm273400%_
                            (path-expand _%output-scm273357%_))
                           (_%output-c273402%_
                            (_%replace-extension-with-c273342%_
                             _%output-scm273400%_))
                           (_%output-o273404%_
                            (_%replace-extension-with-object273343%_
                             _%output-scm273400%_))
                           (_%output_-c273406%_
                            (_%replace-extension273341%_
                             _%output-scm273400%_
                             '"_.c"))
                           (_%output_-o273408%_
                            (_%replace-extension273341%_
                             _%output-scm273400%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts273410%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts273412%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts273414%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir273364%_))
                           (_%output-ld-opts273416%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts273418%_
                            (_%get-libgerbil-ld-opts273340%_
                             _%gerbil-libdir273362%_))
                           (_%rpath273420%_
                            (gxc#gerbil-rpath _%gerbil-libdir273362%_))
                           (_%builtin-modules273424%_
                            (_%remove-duplicates273349%_
                             (let ((__tmp273925
                                    (let ((__tmp273927
                                           (lambda (_%mod273422%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod273422%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp273926
                                           (cons _%ctx273336%_
                                                 _%deps273366%_)))
                                      (declare (not safe))
                                      (##map __tmp273927 __tmp273926))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp273925)))))
                      (letrec ((_%compile-obj273427%_
                                (lambda (_%scm-path273434%_ _%c-path273435%_)
                                  (let* ((_%o-path273437%_
                                          (_%replace-extension273341%_
                                           _%c-path273435%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock273439%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path273437%_
                                             '".lock")))
                                         (_%locked273441%_ '#f)
                                         (_%unlock273444%_
                                          (lambda ()
                                            (close-port _%locked273441%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock273439%_)))))
                                    (let _%retry273447%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock273439%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry273447%_))
                                          (begin
                                            (set! _%locked273441%_
                                                  (let* ((_%handler273450%_
                                                          false)
                                                         (_%thunk273454%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock273439%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler273459%_ _%handler273450%_)
                 (_%thunk273515%_ _%thunk273454%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler273459%_
                                                     _%thunk273515%_)))
                                            (if _%locked273441%_
                                                '#!void
                                                (_%retry273447%_)))))
                                    (let ((__tmp273929
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path273437%_)))
                                                     (not _%scm-path273434%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path273434%_
                                                        _%o-path273437%_)))
                                                 (let ((_%gsc-cc-opts273532%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp273930
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp273931 (cons _%c-path273435%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts273414%_ __tmp273931))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts273532%_ __tmp273930)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp273928
                                           (lambda () (_%unlock273444%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp273929
                                       __tmp273928))))))
                        (let ((__tmp273932
                               (lambda ()
                                 (let ((__tmp273933
                                        (path-directory _%output-bin273398%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp273933)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp273932))
                        (gxc#with-output-to-scheme-file
                         _%output-scm273400%_
                         (lambda ()
                           (_%generate-stub273339%_
                            _%builtin-modules273424%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it273432%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp273934
                                                   (let ((__tmp273935
                                                          (let ((__tmp273936
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm273392%_
                               (cons _%output-scm273400%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm273384%_ __tmp273936))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c273374%_
                                                      __tmp273935))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts273410%_
                                               __tmp273934))))
                                     (let ((__tmp273939
                                            (let ((__tmp273940
                                                   (cons _%src-bin-scm273392%_
                                                         (cons _%output-scm273400%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm273384%_
                                               __tmp273940)))
                                           (__tmp273937
                                            (let ((__tmp273938
                                                   (cons _%src-bin-c273394%_
                                                         (cons _%output-c273402%_
                                                               (cons _%output_-c273406%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c273386%_
                                               __tmp273938))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj273427%_
                                        __tmp273939
                                        __tmp273937))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin273398%_
                                                        (let ((__tmp273941
                                                               (cons _%src-bin-o273396%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o273404%_
                                   (cons _%output_-o273408%_
                                         (let ((__tmp273942
                                                (let ((__tmp273943
                                                       (let ((__tmp273945
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath273420%_ '())
                          '()))
                     (__tmp273944
                      (cons '"-L"
                            (cons _%gerbil-libdir273362%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts273418%_)))))
                 (declare (not safe))
                 (##append __tmp273945 __tmp273944))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts273416%_
                                                   __tmp273943))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o273376%_
                                            __tmp273942)))))))
                  (declare (not safe))
                  (##append _%src-deps-o273388%_ __tmp273941))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp273946
                                            (cons _%output-c273402%_
                                                  (cons _%output_-c273406%_
                                                        (cons _%output-o273404%_
                                                              (cons _%output_-o273408%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp273946)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it273432%_))
                                  (_%compile-it273432%_)))
                            '#!void))))))
          (let* ((_%output-bin273352%_
                  (gxc#compile-exe-output-file _%ctx273336%_ _%opts273337%_))
                 (_%output-scm273354%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin273352%_ '"__exe.scm"))))
            (_%compile-stub273350%_
             _%output-scm273354%_
             _%output-bin273352%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx273158%_ _%opts273159%_)
        (letrec ((_%reset-declare273161%_
                  (lambda ()
                    '(declare
                       (gambit-scheme)
                       (block)
                       (core)
                       (inline)
                       (inline-primitives)
                       (inlining-limit 350)
                       (constant-fold)
                       (lambda-lift)
                       (standard-bindings)
                       (extended-bindings)
                       (run-time-bindings)
                       (safe)
                       (interrupts-enabled)
                       (proper-tail-calls)
                       (not generative-lambda)
                       (optimize-dead-local-variables)
                       (optimize-dead-definitions)
                       (generic)
                       (mostly-fixnum-flonum))))
                 (_%generate-stub273162%_
                  (lambda (_%deps273327%_)
                    (let ((_%mod-main273329%_
                           (gxc#find-runtime-symbol _%ctx273158%_ 'main))
                          (_%reset-decl273330%_ (_%reset-declare273161%_))
                          (_%user-decl273331%_ (_%user-declare273163%_)))
                      (for-each
                       (lambda (_%dep273333%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl273330%_))
                         (newline)
                         (if _%user-decl273331%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl273331%_))
                               (newline))
                             '#!void)
                         (let ((__tmp273947 (list 'include _%dep273333%_)))
                           (declare (not safe))
                           (##write __tmp273947))
                         (newline))
                       _%deps273327%_)
                      (let ((__tmp273948
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main273329%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp273948))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare273163%_
                  (lambda ()
                    (let* ((_%gsc-opts273232%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts273159%_)))
                           (_%gsc-prelude273234%_
                            (if _%gsc-opts273232%_
                                (member '"-prelude" _%gsc-opts273232%_)
                                '#f))
                           (_%gsc-prelude273236%_
                            (if _%gsc-prelude273234%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude273234%_)))
                                '#f)))
                      (let _%lp273239%_ ((_%rest273241%_
                                          (cons _%gsc-prelude273236%_ '()))
                                         (_%user-decls273242%_ '()))
                        (let* ((_%$%rest273243273251%_ _%rest273241%_)
                               (_%$%else273245273259%_
                                (lambda ()
                                  (if (null? _%user-decls273242%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls273242%_)))))
                               (_%$%K273247273315%_
                                (lambda (_%rest273262%_ _%expr273263%_)
                                  (let* ((_%$%expr273264273276%_
                                          _%expr273263%_)
                                         (_%$%else273267273284%_
                                          (lambda ()
                                            (_%lp273239%_
                                             _%rest273262%_
                                             _%user-decls273242%_))))
                                    (let ((_%$%K273272273305%_
                                           (lambda (_%decls273303%_)
                                             (_%lp273239%_
                                              _%rest273262%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls273242%_
                                                 _%decls273303%_)))))
                                          (_%$%K273269273290%_
                                           (lambda (_%exprs273288%_)
                                             (_%lp273239%_
                                              (append _%exprs273288%_
                                                      _%rest273262%_)
                                              _%user-decls273242%_))))
                                      (if (pair? _%$%expr273264273276%_)
                                          (let ((_%$%tl273274273310%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr273264273276%_)))
                                                (_%$%hd273273273308%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr273264273276%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd273273273308%_
                                                         'declare))
                                                (let ((_%decls273313%_
                                                       _%$%tl273274273310%_))
                                                  (_%$%K273272273305%_
                                                   _%decls273313%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd273273273308%_
                                                             'begin))
                                                    (let ((_%exprs273298%_
                                                           _%$%tl273274273310%_))
                                                      (_%$%K273269273290%_
                                                       _%exprs273298%_))
                                                    (_%$%else273267273284%_))))
                                          (_%$%else273267273284%_)))))))
                          (if (pair? _%$%rest273243273251%_)
                              (let ((_%$%hd273248273318%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest273243273251%_)))
                                    (_%$%tl273249273320%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest273243273251%_))))
                                (let* ((_%expr273323%_ _%$%hd273248273318%_)
                                       (_%rest273325%_ _%$%tl273249273320%_))
                                  (_%$%K273247273315%_
                                   _%rest273325%_
                                   _%expr273323%_)))
                              (_%$%else273245273259%_)))))))
                 (_%compile-stub273164%_
                  (lambda (_%output-scm273171%_ _%output-bin273172%_)
                    (let* ((_%gerbil-home273174%_
                            (let ((__tmp273949
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp273949)))
                           (_%gerbil-libdir273176%_
                            (path-expand '"lib" _%gerbil-home273174%_))
                           (_%runtime273178%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp273180%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home273174%_))
                           (_%include-gambit-sharp273182%_
                            (gxc#include-source _%gambit-sharp273180%_))
                           (_%bin-scm273184%_
                            (gxc#find-static-module-file _%ctx273158%_))
                           (_%deps273186%_
                            (gxc#find-runtime-module-deps _%ctx273158%_))
                           (_%deps273188%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps273186%_)))
                           (_%deps273193%_
                            (let ((__tmp273950
                                   (lambda (_%$obj273190%_)
                                     (not (gxc#file-empty? _%$obj273190%_)))))
                              (declare (not safe))
                              (##filter __tmp273950 _%deps273188%_)))
                           (_%deps273197%_
                            (let ((__tmp273951
                                   (lambda (_%f273195%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f273195%_
                                             _%runtime273178%_))))))
                              (declare (not safe))
                              (##filter __tmp273951 _%deps273193%_)))
                           (_%output-base273199%_
                            (let ((__tmp273952
                                   (path-strip-extension
                                    _%output-scm273171%_)))
                              (declare (not safe))
                              (##string-append __tmp273952)))
                           (_%output-c273201%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base273199%_ '".c")))
                           (_%output-o273203%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base273199%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_273205%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base273199%_ '"_.c")))
                           (_%output-o_273207%_
                            (let ((__tmp273953
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base273199%_
                               __tmp273953)))
                           (_%gsc-link-opts273209%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts273211%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts273213%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir273176%_)))
                           (_%output-ld-opts273215%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros273217%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp273182%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp273182%_
                                            '()))))
                           (_%gsc-link-opts273219%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts273209%_
                               _%gsc-gx-macros273217%_)))
                           (_%rpath273221%_
                            (gxc#gerbil-rpath _%gerbil-libdir273176%_))
                           (_%default-ld-options273223%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp273954
                             (lambda ()
                               (let ((__tmp273955
                                      (path-directory _%output-bin273172%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp273955)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp273954))
                      (gxc#with-output-to-scheme-file
                       _%output-scm273171%_
                       (lambda ()
                         (_%generate-stub273162%_
                          (let ((__tmp273956
                                 (let ((__tmp273957
                                        (cons _%bin-scm273184%_ '())))
                                   (declare (not safe))
                                   (##append _%deps273197%_ __tmp273957))))
                            (declare (not safe))
                            (##append _%runtime273178%_ __tmp273956)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it273229%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_273205%_
                                                      (let ((__tmp273958
                                                             (cons _%output-scm273171%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts273219%_ __tmp273958))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp273959
                                                 (let ((__tmp273960
                                                        (cons _%output-c273201%_
                                                              (cons _%output-c_273205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts273213%_
                                                    __tmp273960))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts273211%_
                                             __tmp273959))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin273172%_
                                                      (cons _%output-o273203%_
                                                            (cons _%output-o_273207%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp273961
                                 (let ((__tmp273963
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath273221%_ '())
                                            '()))
                                       (__tmp273962
                                        (cons '"-L"
                                              (cons _%gerbil-libdir273176%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options273223%_)))))
                                   (declare (not safe))
                                   (##append __tmp273963 __tmp273962))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts273215%_
                             __tmp273961)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it273229%_))
                                (_%compile-it273229%_)))
                          '#!void)))))
          (let* ((_%output-bin273166%_
                  (gxc#compile-exe-output-file _%ctx273158%_ _%opts273159%_))
                 (_%output-scm273168%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin273166%_ '"__exe.scm"))))
            (_%compile-stub273164%_
             _%output-scm273168%_
             _%output-bin273166%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx273107%_ _%id273108%_)
        (let ((_%$e273154%_
               (let ((__tmp273965
                      (lambda (_%$%e273109273111%_)
                        (let* ((_%$%$%e273109273113273123%_
                                _%$%e273109273111%_)
                               (_%$%else273115273131%_ (lambda () '#f))
                               (_%$%K273117273135%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e273109273113273123%_
                                 'gx#module-export::t))
                              (let* ((_%$%e273118273138%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273109273113273123%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e273119273141%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273109273113273123%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e273120273144%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273109273113273123%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e273120273144%_ '0))
                                    (let ((_%$%e273121273147%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e273109273113273123%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e273121273147%_
                                               _%id273108%_)
                                          (_%$%K273117273135%_)
                                          (_%$%else273115273131%_)))
                                    (_%$%else273115273131%_)))
                              (_%$%else273115273131%_)))))
                     (__tmp273964
                      (##structure-ref
                       _%ctx273107%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp273965 __tmp273964))))
          (if _%$e273154%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e273154%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx273098%_ _%id273099%_)
        (let ((_%$e273101%_
               (gxc#find-export-binding _%ctx273098%_ _%id273099%_)))
          (if _%$e273101%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e273101%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id273099%_)))
                (##structure-ref _%$e273101%_ '1 gx#binding::t '#f))
              (let ((__tmp273966
                     (##structure-ref
                      _%ctx273098%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp273966
                 _%id273099%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx272964%_)
        (letrec* ((_%ht272966%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template272967%_
                   (lambda (_%in273043%_ _%phi273044%_)
                     (let ((_%iphi273046%_
                            (fx+ _%phi273044%_
                                 (##direct-structure-ref
                                  _%in273043%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports273047%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in273043%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp273049%_ ((_%rest273051%_ _%imports273047%_)
                                          (_%r273052%_ '()))
                         (let* ((_%$%rest273053273061%_ _%rest273051%_)
                                (_%$%else273055273069%_
                                 (lambda () _%r273052%_))
                                (_%$%K273057273086%_
                                 (lambda (_%rest273072%_ _%in273073%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in273073%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi273046%_))
                                           (_%lp273049%_
                                            _%rest273072%_
                                            (cons _%in273073%_ _%r273052%_))
                                           (_%lp273049%_
                                            _%rest273072%_
                                            _%r273052%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in273073%_
                                              'gx#module-import::t))
                                           (let ((_%iphi273077%_
                                                  (fx+ _%phi273044%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in273073%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi273077%_))
                                                 (_%lp273049%_
                                                  _%rest273072%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in273073%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r273052%_))
                                                 (_%lp273049%_
                                                  _%rest273072%_
                                                  _%r273052%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in273073%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi273080%_
                                                      (fx+ _%iphi273046%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in273073%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi273080%_))
                                                     (_%lp273049%_
                                                      _%rest273072%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in273073%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r273052%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi273080%_))
                                                         (_%lp273049%_
                                                          _%rest273072%_
                                                          (let ((__tmp273967
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template272967%_
                          _%in273073%_
                          _%iphi273046%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r273052%_ __tmp273967)))
                 (_%lp273049%_ _%rest273072%_ _%r273052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp273049%_
                                                _%rest273072%_
                                                _%r273052%_)))))))
                           (if (pair? _%$%rest273053273061%_)
                               (let ((_%$%hd273058273089%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest273053273061%_)))
                                     (_%$%tl273059273091%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest273053273061%_))))
                                 (let* ((_%in273094%_ _%$%hd273058273089%_)
                                        (_%rest273096%_ _%$%tl273059273091%_))
                                   (_%$%K273057273086%_
                                    _%rest273096%_
                                    _%in273094%_)))
                               (_%$%else273055273069%_)))))))
                  (_%find-deps272968%_
                   (lambda (_%rest272976%_ _%deps272977%_)
                     (let* ((_%$%rest272978272986%_ _%rest272976%_)
                            (_%$%else272980272994%_ (lambda () _%deps272977%_))
                            (_%$%K272982273031%_
                             (lambda (_%rest272997%_ _%hd272998%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd272998%_
                                      'gx#module-context::t))
                                   (let ((_%id273001%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd272998%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports273002%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd272998%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht272966%_
                                            _%id273001%_))
                                         (_%find-deps272968%_
                                          _%rest272997%_
                                          _%deps272977%_)
                                         (let ((_%$e273005%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd272998%_))))
                                           (if _%$e273005%_
                                               (let ((_%xdeps273010%_
                                                      (_%find-deps272968%_
                                                       (cons _%$e273005%_
                                                             _%imports273002%_)
                                                       _%deps272977%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht272966%_
                                                    _%id273001%_
                                                    _%hd272998%_))
                                                 (_%find-deps272968%_
                                                  _%rest272997%_
                                                  (cons _%hd272998%_
                                                        _%xdeps273010%_)))
                                               (let ((_%xdeps273013%_
                                                      (_%find-deps272968%_
                                                       _%imports273002%_
                                                       _%deps272977%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht272966%_
                                                    _%id273001%_
                                                    _%hd272998%_))
                                                 (_%find-deps272968%_
                                                  _%rest272997%_
                                                  (cons _%hd272998%_
                                                        _%xdeps273013%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd272998%_
                                          'gx#prelude-context::t))
                                       (let ((_%id273016%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd272998%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht272966%_
                                                _%id273016%_))
                                             (_%find-deps272968%_
                                              _%rest272997%_
                                              _%deps272977%_)
                                             (let ((_%xdeps273020%_
                                                    (_%find-deps272968%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd272998%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps272977%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht272966%_
                                                      _%id273016%_))
                                                   (_%find-deps272968%_
                                                    _%rest272997%_
                                                    _%xdeps273020%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht272966%_
                                                        _%id273016%_
                                                        _%hd272998%_))
                                                     (_%find-deps272968%_
                                                      _%rest272997%_
                                                      (cons _%hd272998%_
                                                            _%xdeps273020%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd272998%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd272998%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps272968%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd272998%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest272997%_)
                                                _%deps272977%_)
                                               (_%find-deps272968%_
                                                _%rest272997%_
                                                _%deps272977%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd272998%_
                                                  'gx#module-export::t))
                                               (_%find-deps272968%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd272998%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest272997%_)
                                                _%deps272977%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd272998%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd272998%_ '2 '#f '#f)))
               (_%find-deps272968%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd272998%_ '1 '#f '#f))
                      _%rest272997%_)
                _%deps272977%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd272998%_ '2 '#f '#f)))
                   (let ((_%xdeps273027%_
                          (_%import-set-template272967%_ _%hd272998%_ '0)))
                     (_%find-deps272968%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest272997%_ _%xdeps273027%_))
                      _%deps272977%_))
                   (_%find-deps272968%_ _%rest272997%_ _%deps272977%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd272998%_))))))))))
                       (if (pair? _%$%rest272978272986%_)
                           (let ((_%$%hd272983273034%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest272978272986%_)))
                                 (_%$%tl272984273036%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest272978272986%_))))
                             (let* ((_%hd273039%_ _%$%hd272983273034%_)
                                    (_%rest273041%_ _%$%tl272984273036%_))
                               (_%$%K272982273031%_
                                _%rest273041%_
                                _%hd273039%_)))
                           (_%$%else272980272994%_))))))
          (let ((__tmp273968
                 (filter gx#expander-context-id
                         (_%find-deps272968%_
                          (let ((_%$e272970%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx272964%_))))
                            (if _%$e272970%_
                                (cons _%$e272970%_
                                      (##structure-ref
                                       _%ctx272964%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx272964%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp273968)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx272894%_)
        (let* ((_%context-id272896%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx272894%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx272894%_ '1 '#f '#f))
                    (string->symbol _%ctx272894%_)))
               (_%scm272898%_
                (let ((__tmp273969
                       (gxc#static-module-name _%context-id272896%_)))
                  (declare (not safe))
                  (##string-append __tmp273969 '".scm")))
               (_%dirs272900%_ (let () (declare (not safe)) (load-path)))
               (_%dirs272906%_
                (let ((_%user-libpath272902%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath272902%_
                      (let ((_%user-libpath272904%_
                             (path-expand '"lib" _%user-libpath272902%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath272904%_ _%dirs272900%_))
                            _%dirs272900%_
                            (cons _%user-libpath272904%_ _%dirs272900%_)))
                      _%dirs272900%_)))
               (_%dirs272916%_
                (let ((_%$e272908%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e272908%_
                      (cons _%$e272908%_ _%dirs272906%_)
                      _%dirs272906%_)))
               (_%dirs272922%_
                (let ((__tmp273970
                       (lambda (_%$%g272917272919%_)
                         (path-expand '"static" _%$%g272917272919%_))))
                  (declare (not safe))
                  (##map __tmp273970 _%dirs272916%_))))
          (let _%lp272925%_ ((_%rest272927%_ _%dirs272922%_))
            (let* ((_%$%rest272928272936%_ _%rest272927%_)
                   (_%$%else272930272944%_
                    (lambda ()
                      (let ((__tmp273971
                             (##structure-ref
                              _%ctx272894%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp273971
                         _%scm272898%_))))
                   (_%$%K272932272952%_
                    (lambda (_%rest272947%_ _%dir272948%_)
                      (let ((_%path272950%_
                             (path-expand _%scm272898%_ _%dir272948%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path272950%_))
                            _%path272950%_
                            (_%lp272925%_ _%rest272947%_))))))
              (if (pair? _%$%rest272928272936%_)
                  (let ((_%$%hd272933272955%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest272928272936%_)))
                        (_%$%tl272934272957%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest272928272936%_))))
                    (let* ((_%dir272960%_ _%$%hd272933272955%_)
                           (_%rest272962%_ _%$%tl272934272957%_))
                      (_%$%K272932272952%_ _%rest272962%_ _%dir272960%_)))
                  (_%$%else272930272944%_)))))))
    (define gxc#file-empty?
      (lambda (_%path272892%_)
        (zero? (let ((__tmp273972 (file-info _%path272892%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp273972)))))
    (define gxc#compile-top-module
      (lambda (_%ctx272883%_)
        (let ((__tmp273973
               (lambda ()
                 (let ((__tmp273974
                        (lambda ()
                          (let ((__tmp273975
                                 (lambda ()
                                   (let ((__tmp273977
                                          (lambda ()
                                            (let ((__tmp273979
                                                   (lambda ()
                                                     (let ((__tmp273981
                                                            (lambda ()
                                                              (let ((__tmp273982
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx272883%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp273982))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp273983
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx272883%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp273983))
                          '#!void)
                      (gxc#collect-bindings _%ctx272883%_)
                      (gxc#compile-runtime-code _%ctx272883%_)
                      (gxc#compile-meta-code _%ctx272883%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx272883%_)
                          '#!void)))
                   (__tmp273980
                    (let ()
                      (declare (not safe))
                      (make-hash-table__%
                       '#f
                       absent-value
                       absent-value
                       absent-value
                       absent-value
                       absent-value
                       absent-value
                       absent-value
                       absent-value))))
               (declare (not safe))
               (call-with-parameters__1
                __tmp273981
                gxc#current-compile-runtime-names
                __tmp273980))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp273978
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp273979
                                               gxc#current-compile-runtime-sections
                                               __tmp273978))))
                                         (__tmp273976
                                          (let ((__obj273872
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj273872))
                                            __obj273872)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp273977
                                      gxc#current-compile-symbol-table
                                      __tmp273976)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp273975
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp273974
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp273973
           gx#current-expander-context
           _%ctx272883%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx272881%_)
        (let ((__tmp273984
               (##structure-ref _%ctx272881%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp273984))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx272826%_)
        (letrec ((_%compile1272828%_
                  (lambda (_%ctx272870%_)
                    (let* ((_%code272872%_
                            (##structure-ref
                             _%ctx272870%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm272876%_
                            (let ((_%idstr272874%_
                                   (let ((__tmp273985
                                          (##structure-ref
                                           _%ctx272870%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp273985))))
                              (declare (not safe))
                              (##string-append _%idstr272874%_ '"~0")))
                           (_%rtc?272878%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code272872%_))))
                      (if _%rtc?272878%_
                          (let ((__tmp273986
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp273986
                             _%ctx272870%_
                             _%rtm272876%_))
                          '#!void)
                      (_%generate-runtime-code272830%_
                       _%ctx272870%_
                       _%code272872%_
                       (if _%rtc?272878%_ _%rtm272876%_ '#f)))))
                 (_%context-timestamp272829%_
                  (lambda (_%ctx272868%_)
                    (let ((__tmp273987
                           (let ((__tmp273988
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx272868%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp273988 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp273987))))
                 (_%generate-runtime-code272830%_
                  (lambda (_%ctx272837%_ _%code272838%_ _%rtm272839%_)
                    (let* ((_%runtime-code?272841%_ (if _%rtm272839%_ '#t '#f))
                           (_%lifts272843%_ (box '()))
                           (_%runtime-code272849%_
                            (if _%runtime-code?272841%_
                                (let ((__tmp273989
                                       (lambda ()
                                         (let ((__tmp273990
                                                (lambda ()
                                                  (let ((__tmp273991
                                                         (lambda ()
                                                           (let ((__tmp273993
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code272838%_))))
                         (__tmp273992
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp273993
                      gxc#current-compile-marks
                      __tmp273992)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp273991
                                                     gxc#current-compile-lift
                                                     _%lifts272843%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp273990
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp273989
                                   gx#current-expander-context
                                   _%ctx272837%_))
                                '#f))
                           (_%runtime-code272851%_
                            (if _%runtime-code?272841%_
                                (if (null? (unbox _%lifts272843%_))
                                    _%runtime-code272849%_
                                    (cons 'begin
                                          (let ((__tmp273995
                                                 (reverse (unbox _%lifts272843%_)))
                                                (__tmp273994
                                                 (cons _%runtime-code272849%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp273995
                                             __tmp273994))))
                                '#f))
                           (_%runtime-code272853%_
                            (if _%runtime-code?272841%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp272829%_
                                                   _%ctx272837%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code272851%_ '())))
                                '#f))
                           (_%loader-code272856%_
                            (let ((__tmp273996
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code272838%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp273996
                               gx#current-expander-context
                               _%ctx272837%_)))
                           (_%loader-code272858%_
                            (cons 'begin
                                  (cons _%loader-code272856%_
                                        (cons (if _%runtime-code?272841%_
                                                  (cons 'load-module
                                                        (cons _%rtm272839%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0272860%_
                            (gxc#compile-output-file _%ctx272837%_ '0 '".scm"))
                           (_%scmrt272862%_
                            (gxc#compile-output-file
                             _%ctx272837%_
                             '#f
                             '".scm"))
                           (_%scms272864%_
                            (gxc#compile-static-output-file _%ctx272837%_)))
                      (if _%runtime-code?272841%_
                          (gxc#compile-scm-file__0
                           _%scm0272860%_
                           _%runtime-code272853%_)
                          '#!void)
                      (let ((__tmp273997
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt272862%_
                                _%loader-code272858%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp273997
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms272864%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms272864%_))
                          '#!void)
                      (if _%runtime-code?272841%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0272860%_ _%scms272864%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms272864%_ void)))))))
          (let* ((_%all-modules272832%_
                  (cons _%ctx272826%_ (gxc#lift-nested-modules _%ctx272826%_)))
                 (__tmp273998
                  (lambda (_%ctx272834%_)
                    (let ((__tmp273999
                           (lambda () (_%compile1272828%_ _%ctx272834%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp273999
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp273998 _%all-modules272832%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx272725%_)
        (letrec ((_%compile-ssi272727%_
                  (lambda (_%code272794%_)
                    (let* ((_%path272796%_
                            (gxc#compile-output-file
                             _%ctx272725%_
                             '#f
                             '".ssi"))
                           (_%prelude272808%_
                            (let* ((_%super272798%_
                                    (##structure-ref
                                     _%ctx272725%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e272800%_
                                    (##structure-ref
                                     _%super272798%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e272800%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e272800%_))
                                  ':<root>)))
                           (_%ns272810%_
                            (##structure-ref
                             _%ctx272725%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr272812%_
                            (symbol->string
                             (##structure-ref
                              _%ctx272725%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg272820%_
                            (let ((_%$e272814%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr272812%_ '#\/))))
                              (if _%$e272814%_
                                  (let ((__tmp274000
                                         (substring
                                          _%idstr272812%_
                                          '0
                                          _%$e272814%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp274000))
                                  '#f)))
                           (_%rt272822%_
                            (let ((__tmp274001
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp274001 _%ctx272725%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path272796%_))
                      (gxc#with-output-to-scheme-file
                       _%path272796%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude272808%_))
                         (if _%pkg272820%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg272820%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns272810%_))
                         (newline)
                         (pretty-print _%code272794%_)
                         (if _%rt272822%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt272822%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi272728%_
                  (lambda (_%part272733%_)
                    (let* ((_%$%part272734272747%_ _%part272733%_)
                           (_%$%E272736272751%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part272734272747%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K272737272763%_
                            (lambda (_%code272754%_
                                     _%n272755%_
                                     _%phi272756%_
                                     _%phi-ctx272757%_)
                              (let ((_%code272761%_
                                     (let ((__tmp274002
                                            (lambda ()
                                              (let ((__tmp274003
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code272754%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp274003
                                                 gx#current-expander-phi
                                                 _%phi272756%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp274002
                                        gx#current-expander-context
                                        _%phi-ctx272757%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx272725%_
                                  _%n272755%_
                                  '".scm")
                                 _%code272761%_
                                 '#t)))))
                      (if (pair? _%$%part272734272747%_)
                          (let ((_%$%hd272738272766%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part272734272747%_)))
                                (_%$%tl272739272768%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part272734272747%_))))
                            (let ((_%phi-ctx272771%_ _%$%hd272738272766%_))
                              (if (pair? _%$%tl272739272768%_)
                                  (let ((_%$%hd272740272773%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272739272768%_)))
                                        (_%$%tl272741272775%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272739272768%_))))
                                    (let ((_%phi272778%_ _%$%hd272740272773%_))
                                      (if (pair? _%$%tl272741272775%_)
                                          (let ((_%$%hd272742272780%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl272741272775%_)))
                                                (_%$%tl272743272782%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl272741272775%_))))
                                            (let ((_%n272785%_
                                                   _%$%hd272742272780%_))
                                              (if (pair? _%$%tl272743272782%_)
                                                  (let ((_%$%hd272744272787%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl272743272782%_)))
                                                        (_%$%tl272745272789%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl272743272782%_))))
                                                    (let ((_%code272792%_
                                                           _%$%hd272744272787%_))
                                                      (if (null? _%$%tl272745272789%_)
                                                          (_%$%K272737272763%_
                                                           _%code272792%_
                                                           _%n272785%_
                                                           _%phi272778%_
                                                           _%phi-ctx272771%_)
                                                          (_%$%E272736272751%_))))
                                                  (_%$%E272736272751%_))))
                                          (_%$%E272736272751%_))))
                                  (_%$%E272736272751%_))))
                          (_%$%E272736272751%_))))))
          (let ((_g274004_ (gxc#generate-meta-code _%ctx272725%_)))
            (begin
              (let ((_g274005_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g274004_)
                           (##values-length _g274004_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g274005_ 2)))
                    (error "Context expects 2 values" _g274005_)))
              (let ((_%ssi-code272730%_
                     (let () (declare (not safe)) (##values-ref _g274004_ 0)))
                    (_%phi-code272731%_
                     (let () (declare (not safe)) (##values-ref _g274004_ 1))))
                (begin
                  (_%compile-ssi272727%_ _%ssi-code272730%_)
                  (for-each _%compile-phi272728%_ _%phi-code272731%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx272707%_)
        (let* ((_%path272709%_
                (gxc#compile-output-file _%ctx272707%_ '#f '".ssxi.ss"))
               (_%code272711%_
                (let ((__tmp274006
                       (##structure-ref
                        _%ctx272707%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp274006)))
               (_%idstr272713%_
                (symbol->string
                 (##structure-ref
                  _%ctx272707%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg272721%_
                (let ((_%$e272715%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr272713%_ '#\/))))
                  (if _%$e272715%_
                      (let ((__tmp274007
                             (substring _%idstr272713%_ '0 _%$e272715%_)))
                        (declare (not safe))
                        (##string->symbol __tmp274007))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path272709%_))
          (gxc#with-output-to-scheme-file
           _%path272709%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg272721%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg272721%_))
                 '#!void)
             (newline)
             (pretty-print _%code272711%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx272700%_)
        (let* ((_%state272702%_
                (let ((__obj273873
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj273873 _%ctx272700%_))
                  __obj273873))
               (_%ssi-code272704%_
                (let ((__tmp274008
                       (##structure-ref
                        _%ctx272700%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state272702%_
                   __tmp274008))))
          (values _%ssi-code272704%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state272702%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx272692%_)
        (let* ((_%lifts272694%_ (box '()))
               (__tmp274009
                (lambda ()
                  (let ((__tmp274011
                         (lambda ()
                           (let ((_%code272698%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx272692%_))))
                             (if (null? (unbox _%lifts272694%_))
                                 _%code272698%_
                                 (cons 'begin
                                       (let ((__tmp274013
                                              (reverse (unbox _%lifts272694%_)))
                                             (__tmp274012
                                              (cons _%code272698%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp274013
                                          __tmp274012)))))))
                        (__tmp274010
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp274011
                     gxc#current-compile-marks
                     __tmp274010)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274009
           gxc#current-compile-lift
           _%lifts272694%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx272688%_)
        (let ((_%modules272690%_ (box '())))
          (let ((__tmp274014
                 (##structure-ref _%ctx272688%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules272690%_ __tmp274014))
          (reverse (unbox _%modules272690%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path272668%_ _%code272669%_ _%phi?272670%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path272668%_))
        (gxc#with-output-to-scheme-file
         _%path272668%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?272670%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code272669%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it272674%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path272668%_ _%phi?272670%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp274015 (list 'compile-file _%path272668%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it272674%_ __tmp274015))
                  (_%compile-it272674%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path272679%_ _%code272680%_)
        (let ((_%phi?272682%_ '#f))
          (gxc#compile-scm-file__%
           _%path272679%_
           _%code272680%_
           _%phi?272682%_))))
    (define gxc#compile-scm-file
      (lambda _g274016_
        (let ((_g274017_ (let () (declare (not safe)) (##length _g274016_))))
          (cond ((let () (declare (not safe)) (##fx= _g274017_ 2))
                 (apply gxc#compile-scm-file__0 _g274016_))
                ((let () (declare (not safe)) (##fx= _g274017_ 3))
                 (apply gxc#compile-scm-file__% _g274016_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g274016_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?272569%_)
        (let _%lp272571%_ ((_%rest272573%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts272574%_ '()))
          (let* ((_%$%rest272575272595%_ _%rest272573%_)
                 (_%$%else272579272603%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts272574%_)))
                        (reverse _%opts272574%_)))))
            (let ((_%$%K272589272646%_
                   (lambda (_%rest272644%_)
                     (_%lp272571%_ _%rest272644%_ _%opts272574%_)))
                  (_%$%K272584272628%_
                   (lambda (_%rest272626%_)
                     (_%lp272571%_ _%rest272626%_ _%opts272574%_)))
                  (_%$%K272581272610%_
                   (lambda (_%rest272607%_ _%opt272608%_)
                     (_%lp272571%_
                      _%rest272607%_
                      (cons _%opt272608%_ _%opts272574%_)))))
              (if (pair? _%$%rest272575272595%_)
                  (let ((_%$%tl272591272651%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest272575272595%_)))
                        (_%$%hd272590272649%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest272575272595%_))))
                    (if (equal? _%$%hd272590272649%_ '"-cc-options")
                        (if (pair? _%$%tl272591272651%_)
                            (let* ((_%$%tl272593272654%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl272591272651%_)))
                                   (_%rest272657%_ _%$%tl272593272654%_))
                              (_%$%K272589272646%_ _%rest272657%_))
                            (let ((_%opt272618%_ _%$%hd272590272649%_)
                                  (_%rest272620%_ _%$%tl272591272651%_))
                              (_%$%K272581272610%_
                               _%rest272620%_
                               _%opt272618%_)))
                        (if (equal? _%$%hd272590272649%_ '"-ld-options")
                            (if (pair? _%$%tl272591272651%_)
                                (let* ((_%$%tl272588272636%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl272591272651%_)))
                                       (_%rest272639%_ _%$%tl272588272636%_))
                                  (_%$%K272584272628%_ _%rest272639%_))
                                (let ((_%opt272618%_ _%$%hd272590272649%_)
                                      (_%rest272620%_ _%$%tl272591272651%_))
                                  (_%$%K272581272610%_
                                   _%rest272620%_
                                   _%opt272618%_)))
                            (let ((_%opt272618%_ _%$%hd272590272649%_)
                                  (_%rest272620%_ _%$%tl272591272651%_))
                              (_%$%K272581272610%_
                               _%rest272620%_
                               _%opt272618%_)))))
                  (_%$%else272579272603%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?272663%_ '#f)) (gxc#gsc-link-options__% _%phi?272663%_))))
    (define gxc#gsc-link-options
      (lambda _g274018_
        (let ((_g274019_ (let () (declare (not safe)) (##length _g274018_))))
          (cond ((let () (declare (not safe)) (##fx= _g274019_ 0))
                 (apply gxc#gsc-link-options__0 _g274018_))
                ((let () (declare (not safe)) (##fx= _g274019_ 1))
                 (apply gxc#gsc-link-options__% _g274018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g274018_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords272419%_ _%$%static?272415272420%_ _%phi?272421%_)
        (let ((_%static?272423%_
               (if (eq? _%$%static?272415272420%_ absent-value)
                   '#f
                   _%$%static?272415272420%_)))
          (if _%phi?272421%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp272425%_ ((_%rest272427%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts272428%_ '()))
                (let* ((_%$%rest272429272455%_ _%rest272427%_)
                       (_%$%else272434272463%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts272428%_)))
                              (reverse! _%opts272428%_)))))
                  (let ((_%$%K272449272526%_
                         (lambda (_%rest272523%_ _%opt272524%_)
                           (if _%static?272423%_
                               (_%lp272425%_
                                _%rest272523%_
                                (cons _%opt272524%_
                                      (cons '"-cc-options" _%opts272428%_)))
                               (_%lp272425%_ _%rest272523%_ _%opts272428%_))))
                        (_%$%K272444272503%_
                         (lambda (_%rest272500%_ _%opt272501%_)
                           (_%lp272425%_
                            _%rest272500%_
                            (cons _%opt272501%_
                                  (cons '"-cc-options" _%opts272428%_)))))
                        (_%$%K272439272483%_
                         (lambda (_%rest272481%_)
                           (_%lp272425%_ _%rest272481%_ _%opts272428%_)))
                        (_%$%K272436272469%_
                         (lambda (_%rest272467%_)
                           (_%lp272425%_ _%rest272467%_ _%opts272428%_))))
                    (if (pair? _%$%rest272429272455%_)
                        (let ((_%$%tl272451272531%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest272429272455%_)))
                              (_%$%hd272450272529%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest272429272455%_))))
                          (if (equal? _%$%hd272450272529%_ '"-cc-options")
                              (if (pair? _%$%tl272451272531%_)
                                  (let ((_%$%tl272453272536%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272451272531%_)))
                                        (_%$%hd272452272534%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272451272531%_))))
                                    (if (equal? _%$%hd272452272534%_
                                                '"-Bstatic")
                                        (let ((_%opt272539%_
                                               _%$%hd272452272534%_)
                                              (_%rest272541%_
                                               _%$%tl272453272536%_))
                                          (_%$%K272449272526%_
                                           _%rest272541%_
                                           _%opt272539%_))
                                        (let ((_%opt272516%_
                                               _%$%hd272452272534%_)
                                              (_%rest272518%_
                                               _%$%tl272453272536%_))
                                          (_%$%K272444272503%_
                                           _%rest272518%_
                                           _%opt272516%_))))
                                  (let ((_%rest272475%_ _%$%tl272451272531%_))
                                    (_%$%K272436272469%_ _%rest272475%_)))
                              (if (equal? _%$%hd272450272529%_ '"-ld-options")
                                  (if (pair? _%$%tl272451272531%_)
                                      (let* ((_%$%tl272443272491%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl272451272531%_)))
                                             (_%rest272494%_
                                              _%$%tl272443272491%_))
                                        (_%$%K272439272483%_ _%rest272494%_))
                                      (let ((_%rest272475%_
                                             _%$%tl272451272531%_))
                                        (_%$%K272436272469%_ _%rest272475%_)))
                                  (let ((_%rest272475%_ _%$%tl272451272531%_))
                                    (_%$%K272436272469%_ _%rest272475%_)))))
                        (_%$%else272434272463%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords272546%_ _%$%static?272415272547%_)
        (let ((_%phi?272549%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords272546%_
           _%$%static?272415272547%_
           _%phi?272549%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g274020_
        (let ((_g274021_ (let () (declare (not safe)) (##length _g274020_))))
          (cond ((let () (declare (not safe)) (##fx= _g274021_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g274020_))
                ((let () (declare (not safe)) (##fx= _g274021_ 3))
                 (apply gxc#gsc-cc-options__%__% _g274020_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g274020_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords272558%_ . _%args272559%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords272558%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272558%_
                  'static:
                  absent-value))
               _%args272559%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args272416272565%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args272416272565%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords272265%_ _%$%static?272261272266%_ _%phi?272267%_)
        (let ((_%static?272269%_
               (if (eq? _%$%static?272261272266%_ absent-value)
                   '#f
                   _%$%static?272261272266%_)))
          (if _%phi?272267%_
              '()
              (let _%lp272271%_ ((_%rest272273%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts272274%_ '()))
                (let* ((_%$%rest272275272301%_ _%rest272273%_)
                       (_%$%else272280272309%_
                        (lambda () (reverse! _%opts272274%_))))
                  (let ((_%$%K272295272372%_
                         (lambda (_%rest272369%_ _%opt272370%_)
                           (if _%static?272269%_
                               (_%lp272271%_
                                _%rest272369%_
                                (cons _%opt272370%_
                                      (cons '"-ld-options" _%opts272274%_)))
                               (_%lp272271%_ _%rest272369%_ _%opts272274%_))))
                        (_%$%K272290272349%_
                         (lambda (_%rest272346%_ _%opt272347%_)
                           (_%lp272271%_
                            _%rest272346%_
                            (cons _%opt272347%_
                                  (cons '"-ld-options" _%opts272274%_)))))
                        (_%$%K272285272329%_
                         (lambda (_%rest272327%_)
                           (_%lp272271%_ _%rest272327%_ _%opts272274%_)))
                        (_%$%K272282272315%_
                         (lambda (_%rest272313%_)
                           (_%lp272271%_ _%rest272313%_ _%opts272274%_))))
                    (if (pair? _%$%rest272275272301%_)
                        (let ((_%$%tl272297272377%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest272275272301%_)))
                              (_%$%hd272296272375%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest272275272301%_))))
                          (if (equal? _%$%hd272296272375%_ '"-ld-options")
                              (if (pair? _%$%tl272297272377%_)
                                  (let ((_%$%tl272299272382%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272297272377%_)))
                                        (_%$%hd272298272380%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272297272377%_))))
                                    (if (equal? _%$%hd272298272380%_
                                                '"-static")
                                        (let ((_%opt272385%_
                                               _%$%hd272298272380%_)
                                              (_%rest272387%_
                                               _%$%tl272299272382%_))
                                          (_%$%K272295272372%_
                                           _%rest272387%_
                                           _%opt272385%_))
                                        (let ((_%opt272362%_
                                               _%$%hd272298272380%_)
                                              (_%rest272364%_
                                               _%$%tl272299272382%_))
                                          (_%$%K272290272349%_
                                           _%rest272364%_
                                           _%opt272362%_))))
                                  (let ((_%rest272321%_ _%$%tl272297272377%_))
                                    (_%$%K272282272315%_ _%rest272321%_)))
                              (if (equal? _%$%hd272296272375%_ '"-cc-options")
                                  (if (pair? _%$%tl272297272377%_)
                                      (let* ((_%$%tl272289272337%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl272297272377%_)))
                                             (_%rest272340%_
                                              _%$%tl272289272337%_))
                                        (_%$%K272285272329%_ _%rest272340%_))
                                      (let ((_%rest272321%_
                                             _%$%tl272297272377%_))
                                        (_%$%K272282272315%_ _%rest272321%_)))
                                  (let ((_%rest272321%_ _%$%tl272297272377%_))
                                    (_%$%K272282272315%_ _%rest272321%_)))))
                        (_%$%else272280272309%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords272392%_ _%$%static?272261272393%_)
        (let ((_%phi?272395%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords272392%_
           _%$%static?272261272393%_
           _%phi?272395%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g274022_
        (let ((_g274023_ (let () (declare (not safe)) (##length _g274022_))))
          (cond ((let () (declare (not safe)) (##fx= _g274023_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g274022_))
                ((let () (declare (not safe)) (##fx= _g274023_ 3))
                 (apply gxc#gsc-ld-options__%__% _g274022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g274022_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords272404%_ . _%args272405%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords272404%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272404%_
                  'static:
                  absent-value))
               _%args272405%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args272262272411%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args272262272411%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir272256%_)
        (let ((_%user-staticdir272258%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir272256%_
                       '" -I "
                       _%user-staticdir272258%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp272168%_ ((_%rest272170%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts272171%_ '()))
          (let* ((_%$%rest272172272192%_ _%rest272170%_)
                 (_%$%else272176272200%_ (lambda () _%opts272171%_)))
            (let ((_%$%K272186272243%_
                   (lambda (_%rest272241%_)
                     (_%lp272168%_ _%rest272241%_ _%opts272171%_)))
                  (_%$%K272181272221%_
                   (lambda (_%rest272218%_ _%opt272219%_)
                     (_%lp272168%_
                      _%rest272218%_
                      (let ((__tmp274024
                             (let ((__tmp274025
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt272219%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp274025))))
                        (declare (not safe))
                        (##append _%opts272171%_ __tmp274024)))))
                  (_%$%K272178272206%_
                   (lambda (_%rest272204%_)
                     (_%lp272168%_ _%rest272204%_ _%opts272171%_))))
              (if (pair? _%$%rest272172272192%_)
                  (let ((_%$%tl272188272248%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest272172272192%_)))
                        (_%$%hd272187272246%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest272172272192%_))))
                    (if (equal? _%$%hd272187272246%_ '"-cc-options")
                        (if (pair? _%$%tl272188272248%_)
                            (let* ((_%$%tl272190272251%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl272188272248%_)))
                                   (_%rest272254%_ _%$%tl272190272251%_))
                              (_%$%K272186272243%_ _%rest272254%_))
                            (let ((_%rest272212%_ _%$%tl272188272248%_))
                              (_%$%K272178272206%_ _%rest272212%_)))
                        (if (equal? _%$%hd272187272246%_ '"-ld-options")
                            (if (pair? _%$%tl272188272248%_)
                                (let ((_%$%tl272185272231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl272188272248%_)))
                                      (_%$%hd272184272229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl272188272248%_))))
                                  (let ((_%opt272234%_ _%$%hd272184272229%_)
                                        (_%rest272236%_ _%$%tl272185272231%_))
                                    (_%$%K272181272221%_
                                     _%rest272236%_
                                     _%opt272234%_)))
                                (let ((_%rest272212%_ _%$%tl272188272248%_))
                                  (_%$%K272178272206%_ _%rest272212%_)))
                            (let ((_%rest272212%_ _%$%tl272188272248%_))
                              (_%$%K272178272206%_ _%rest272212%_)))))
                  (_%$%else272176272200%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str272165%_)
        (not (let () (declare (not safe)) (string-empty? _%str272165%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path272158%_ _%phi?272159%_)
        (let ((_%gsc-link-opts272161%_
               (gxc#gsc-link-options__% _%phi?272159%_))
              (_%gsc-cc-opts272162%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?272159%_))
              (_%gsc-ld-opts272163%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?272159%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp274026
                  (let ((__tmp274027
                         (let ((__tmp274028 (cons _%path272158%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts272161%_ __tmp274028))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts272163%_ __tmp274027))))
             (declare (not safe))
             (##append _%gsc-cc-opts272162%_ __tmp274026))))))
    (define gxc#compile-output-file
      (lambda (_%ctx272124%_ _%n272125%_ _%ext272126%_)
        (letrec ((_%module-relative-path272128%_
                  (lambda (_%ctx272156%_)
                    (path-strip-directory
                     (let ((__tmp274029
                            (##structure-ref
                             _%ctx272156%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp274029)))))
                 (_%module-source-directory272129%_
                  (lambda (_%ctx272152%_)
                    (path-directory
                     (let ((_%mpath272154%_
                            (##structure-ref
                             _%ctx272152%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath272154%_)
                           _%mpath272154%_
                           (last _%mpath272154%_))))))
                 (_%section-string272130%_
                  (lambda (_%n272146%_)
                    (if (number? _%n272146%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n272146%_))
                        (if (symbol? _%n272146%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n272146%_))
                            (if (string? _%n272146%_)
                                _%n272146%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n272146%_)))))))
                 (_%file-name272131%_
                  (lambda (_%path272144%_)
                    (if _%n272125%_
                        (string-append
                         _%path272144%_
                         '"~"
                         (_%section-string272130%_ _%n272125%_)
                         _%ext272126%_)
                        (string-append _%path272144%_ _%ext272126%_))))
                 (_%file-path272132%_
                  (lambda ()
                    (let ((_%$e272138%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e272138%_
                          (path-expand
                           (_%file-name272131%_
                            (let ((__tmp274030
                                   (##structure-ref
                                    _%ctx272124%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp274030)))
                           _%$e272138%_)
                          (path-expand
                           (_%file-name272131%_
                            (_%module-relative-path272128%_ _%ctx272124%_))
                           (_%module-source-directory272129%_
                            _%ctx272124%_)))))))
          (let ((_%path272134%_ (_%file-path272132%_)))
            (let ((__tmp274031
                   (lambda ()
                     (let ((__tmp274032 (path-directory _%path272134%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp274032)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp274031))
            _%path272134%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx272105%_)
        (letrec ((_%file-name272107%_
                  (lambda (_%id272122%_)
                    (let ((__tmp274033 (gxc#static-module-name _%id272122%_)))
                      (declare (not safe))
                      (##string-append __tmp274033 '".scm"))))
                 (_%file-path272108%_
                  (lambda ()
                    (let* ((_%file272114%_
                            (_%file-name272107%_
                             (##structure-ref
                              _%ctx272105%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e272116%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e272116%_
                          (path-expand
                           _%file272114%_
                           (path-expand '"static" _%$e272116%_))
                          (path-expand _%file272114%_ '"static"))))))
          (let ((_%path272110%_ (_%file-path272108%_)))
            (let ((__tmp274034
                   (lambda ()
                     (let ((__tmp274035 (path-directory _%path272110%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp274035)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp274034))
            _%path272110%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx272098%_ _%opts272099%_)
        (let ((_%$e272101%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts272099%_))))
          (if _%$e272101%_
              _%$e272101%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx272098%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr272088%_)
        (if (string? _%idstr272088%_)
            (let* ((_%str272091%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr272088%_)))
                   (_%strs272093%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str272091%_ '#\/))))
              (declare (not safe))
              (string-join _%strs272093%_ '"__"))
            (if (symbol? _%idstr272088%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr272088%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr272088%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp274036
               (let ((__tmp274037 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp274037 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp274036))))
    (define gxc#invoke__%
      (lambda (_%@@keywords272054%_
               _%$%stdout-redirection272050272055%_
               _%$%stderr-redirection272051272056%_
               _%program272057%_
               _%args272058%_)
        (let* ((_%stdout-redirection272060%_
                (if (eq? _%$%stdout-redirection272050272055%_ absent-value)
                    '#f
                    _%$%stdout-redirection272050272055%_))
               (_%stderr-redirection272062%_
                (if (eq? _%$%stderr-redirection272051272056%_ absent-value)
                    '#f
                    _%$%stderr-redirection272051272056%_)))
          (let ((__tmp274038 (cons _%program272057%_ _%args272058%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp274038))
          (let* ((_%proc272064%_
                  (open-process
                   (cons 'path:
                         (cons _%program272057%_
                               (cons 'arguments:
                                     (cons _%args272058%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection272060%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection272062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output272069%_
                  (if (or _%stdout-redirection272060%_
                          _%stderr-redirection272062%_)
                      (read-line _%proc272064%_ '#f)
                      '#f))
                 (_%status272072%_ (process-status _%proc272064%_)))
            (let () (declare (not safe)) (##close-port _%proc272064%_))
            (if (zero? _%status272072%_)
                '#!void
                (begin
                  (display _%output272069%_)
                  (let ((__tmp274039 (cons _%program272057%_ _%args272058%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp274039
                     _%status272072%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords272077%_ . _%args272078%_)
        (apply gxc#invoke__%
               _%@@keywords272077%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272077%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272077%_
                  'stderr-redirection:
                  absent-value))
               _%args272078%_)))
    (define gxc#invoke
      (lambda _%$%args272052272084%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args272052272084%_)))))
