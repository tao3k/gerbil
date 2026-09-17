(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1789552498)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp275966 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp275966))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp275967 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp275967))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path275823%_ _%fun275824%_)
        (with-output-to-file
         (cons 'path: (cons _%path275823%_ gxc#scheme-file-settings))
         _%fun275824%_)))
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
      (lambda (_%gerbil-libdir275818%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir275818%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path275816%_)
        (let ((__tmp275968 (object->string _%path275816%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp275968 '")"))))
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
      (lambda (_%dir275814%_) (delete-file-or-directory _%dir275814%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath275757%_ _%opts275758%_)
        (if (string? _%srcpath275757%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath275757%_)))
        (let* ((_%outdir275760%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts275758%_)))
               (_%invoke-gsc?275762%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts275758%_)))
               (_%target275767%_
                (let ((_%$e275764%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts275758%_))))
                  (if _%$e275764%_ _%$e275764%_ 'C)))
               (_%gsc-options275772%_
                (append (cons '"-target"
                              (cons (symbol->string _%target275767%_) '()))
                        (let ((_%$e275769%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts275758%_))))
                          (if _%$e275769%_ _%$e275769%_ '()))))
               (_%keep-scm?275774%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts275758%_)))
               (_%verbosity275776%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts275758%_)))
               (_%optimize275778%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts275758%_)))
               (_%debug275780%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts275758%_)))
               (_%gen-ssxi275782%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts275758%_)))
               (_%parallel?275784%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts275758%_))))
          (if _%outdir275760%_
              (let ((__tmp275969
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir275760%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp275969))
              '#!void)
          (if _%optimize275778%_
              (let ((__tmp275970
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp275970))
              '#!void)
          (let ((__tmp275971
                 (lambda ()
                   (let ((__tmp275972
                          (lambda ()
                            (let ((__tmp275973
                                   (lambda ()
                                     (let ((__tmp275974
                                            (lambda ()
                                              (let ((__tmp275975
                                                     (lambda ()
                                                       (let ((__tmp275976
                                                              (lambda ()
                                                                (let ((__tmp275977
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp275978
                                        (lambda ()
                                          (let ((__tmp275980
                                                 (lambda ()
                                                   (let ((__tmp275982
                                                          (lambda ()
                                                            (let ((__tmp275984
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp275985
                                    (lambda ()
                                      (let ((__tmp275986
                                             (lambda ()
                                               (let ((__tmp275987
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath275757%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp275988
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath275757%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp275988))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp275987
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp275986
                                         gx#current-compilation-target
                                         _%target275767%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp275985
                                gxc#current-compile-parallel
                                _%parallel?275784%_))))
                          (__tmp275983
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp275984
                       gxc#current-compile-identifiers
                       __tmp275983))))
                 (__tmp275981 (list (list 'compile-module _%srcpath275757%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp275982
                                                      gxc#current-compile-context
                                                      __tmp275981))))
                                                (__tmp275979
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp275980
                                             gxc#current-compile-timestamp
                                             __tmp275979)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp275978
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi275782%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp275977
                           gxc#current-compile-debug
                           _%debug275780%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp275976
                  gxc#current-compile-optimize
                  _%optimize275778%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp275975
                                                 gxc#current-compile-verbose
                                                 _%verbosity275776%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp275974
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?275774%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp275973
                               gxc#current-compile-gsc-options
                               _%gsc-options275772%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp275972
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?275762%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp275971
             gxc#current-compile-output-dir
             _%outdir275760%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath275807%_)
        (let ((_%opts275809%_ '()))
          (gxc#compile-module__% _%srcpath275807%_ _%opts275809%_))))
    (define gxc#compile-module
      (lambda _g275989_
        (let ((_g275990_ (let () (declare (not safe)) (##length _g275989_))))
          (cond ((let () (declare (not safe)) (##fx= _g275990_ 1))
                 (apply gxc#compile-module__0 _g275989_))
                ((let () (declare (not safe)) (##fx= _g275990_ 2))
                 (apply gxc#compile-module__% _g275989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g275989_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath275706%_ _%opts275707%_)
        (if (string? _%srcpath275706%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath275706%_)))
        (let* ((_%outdir275709%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts275707%_)))
               (_%invoke-gsc?275711%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts275707%_)))
               (_%target275716%_
                (let ((_%$e275713%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts275707%_))))
                  (if _%$e275713%_ _%$e275713%_ 'C)))
               (_%gsc-options275721%_
                (append (cons '"-target"
                              (cons (symbol->string _%target275716%_) '()))
                        (let ((_%$e275718%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts275707%_))))
                          (if _%$e275718%_ _%$e275718%_ '()))))
               (_%keep-scm?275723%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts275707%_)))
               (_%verbosity275725%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts275707%_)))
               (_%debug275727%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts275707%_)))
               (_%parallel?275729%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts275707%_))))
          (if _%outdir275709%_
              (let ((__tmp275991
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir275709%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp275991))
              '#!void)
          (let ((__tmp275992
                 (lambda ()
                   (let ((__tmp275993
                          (lambda ()
                            (let ((__tmp275994
                                   (lambda ()
                                     (let ((__tmp275995
                                            (lambda ()
                                              (let ((__tmp275996
                                                     (lambda ()
                                                       (let ((__tmp275997
                                                              (lambda ()
                                                                (let ((__tmp275998
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp276000
                                        (lambda ()
                                          (let ((__tmp276002
                                                 (lambda ()
                                                   (let ((__tmp276004
                                                          (lambda ()
                                                            (let ((__tmp276005
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp276006
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath275706%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp276007
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath275706%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp276007))
                                       _%opts275707%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp276006
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp276005
                       gxc#current-compile-parallel
                       _%parallel?275729%_))))
                 (__tmp276003
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp276004
                                                      gxc#current-compile-identifiers
                                                      __tmp276003))))
                                                (__tmp276001
                                                 (list (list 'compile-exe
                                                             _%srcpath275706%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp276002
                                             gxc#current-compile-context
                                             __tmp276001))))
                                       (__tmp275999 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp276000
                                    gxc#current-compile-timestamp
                                    __tmp275999)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp275998
                           gxc#current-compile-debug
                           _%debug275727%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp275997
                  gxc#current-compile-verbose
                  _%verbosity275725%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp275996
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?275723%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp275995
                                        gxc#current-compile-gsc-options
                                        _%gsc-options275721%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp275994
                               gx#current-compilation-target
                               _%target275716%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp275993
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?275711%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp275992
             gxc#current-compile-output-dir
             _%outdir275709%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath275749%_)
        (let ((_%opts275751%_ '()))
          (gxc#compile-exe__% _%srcpath275749%_ _%opts275751%_))))
    (define gxc#compile-exe
      (lambda _g276008_
        (let ((_g276009_ (let () (declare (not safe)) (##length _g276008_))))
          (cond ((let () (declare (not safe)) (##fx= _g276009_ 1))
                 (apply gxc#compile-exe__0 _g276008_))
                ((let () (declare (not safe)) (##fx= _g276009_ 2))
                 (apply gxc#compile-exe__% _g276008_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g276008_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx275702%_ _%opts275703%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts275703%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx275702%_
             _%opts275703%_)
            (gxc#compile-executable-module/separate
             _%ctx275702%_
             _%opts275703%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx275428%_ _%opts275429%_)
        (letrec ((_%generate-stub275431%_
                  (lambda (_%builtin-modules275698%_)
                    (let ((_%mod-main275700%_
                           (gxc#find-runtime-symbol _%ctx275428%_ 'main)))
                      (let ((__tmp276010
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules275698%_))))
                        (declare (not safe))
                        (##write __tmp276010))
                      (let ((__tmp276011
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main275700%_
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
                        (##write __tmp276011))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts275432%_
                  (lambda (_%gerbil-libdir275696%_)
                    (let ((__tmp276012
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir275696%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp276012 read))))
                 (_%replace-extension275433%_
                  (lambda (_%path275693%_ _%ext275694%_)
                    (string-append
                     (path-strip-extension _%path275693%_)
                     _%ext275694%_)))
                 (_%replace-extension-with-c275434%_
                  (lambda (_%path275691%_)
                    (_%replace-extension275433%_ _%path275691%_ '".c")))
                 (_%replace-extension-with-object275435%_
                  (lambda (_%path275689%_)
                    (_%replace-extension275433%_
                     _%path275689%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?275436%_
                  (lambda (_%ctx275687%_)
                    (if (_%exclude-module?275438%_ _%ctx275687%_)
                        '#f
                        (not (_%libgerbil-module?275437%_ _%ctx275687%_)))))
                 (_%libgerbil-module?275437%_
                  (lambda (_%ctx275680%_)
                    (let ((_%id-str275682%_
                           (symbol->string
                            (##structure-ref
                             _%ctx275680%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?275438%_ _%id-str275682%_)
                          '#f
                          (let ((_%$e275684%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str275682%_))))
                            (if _%$e275684%_
                                _%$e275684%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str275682%_))))))))
                 (_%exclude-module?275438%_
                  (lambda (_%ctx-or-str275676%_)
                    (let ((_%str275678%_
                           (if (string? _%ctx-or-str275676%_)
                               _%ctx-or-str275676%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str275676%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str275678%_))))
                 (_%not-file-empty?275439%_
                  (lambda (_%path275674%_)
                    (not (gxc#file-empty? _%path275674%_))))
                 (_%fold-libgerbil-runtime-scm275440%_
                  (lambda (_%gerbil-staticdir275667%_ _%libgerbil-scm275668%_)
                    (let ((_%gerbil-runtime-scm275672%_
                           (let ((__tmp276013
                                  (lambda (_%rtm275670%_)
                                    (path-expand
                                     (let ((__tmp276014
                                            (let ((__tmp276015
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm275670%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp276015
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp276014 '".scm"))
                                     _%gerbil-staticdir275667%_))))
                             (declare (not safe))
                             (##map __tmp276013 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates275441%_
                       (append _%gerbil-runtime-scm275672%_
                               _%libgerbil-scm275668%_)))))
                 (_%remove-duplicates275441%_
                  (lambda (_%strlst275627%_)
                    (let _%loop275629%_ ((_%rest275631%_ _%strlst275627%_)
                                         (_%result275632%_ '()))
                      (let* ((_%$%rest275633275641%_ _%rest275631%_)
                             (_%$%else275635275649%_
                              (lambda () (reverse! _%result275632%_)))
                             (_%$%K275637275655%_
                              (lambda (_%rest275652%_ _%path275653%_)
                                (if (member _%path275653%_ _%result275632%_)
                                    (_%loop275629%_
                                     _%rest275652%_
                                     _%result275632%_)
                                    (_%loop275629%_
                                     _%rest275652%_
                                     (cons _%path275653%_
                                           _%result275632%_))))))
                        (if (pair? _%$%rest275633275641%_)
                            (let ((_%$%hd275638275658%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest275633275641%_)))
                                  (_%$%tl275639275660%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest275633275641%_))))
                              (let* ((_%path275663%_ _%$%hd275638275658%_)
                                     (_%rest275665%_ _%$%tl275639275660%_))
                                (_%$%K275637275655%_
                                 _%rest275665%_
                                 _%path275663%_)))
                            (_%$%else275635275649%_))))))
                 (_%compile-stub275442%_
                  (lambda (_%output-scm275449%_ _%output-bin275450%_)
                    (let* ((_%gerbil-home275452%_
                            (let ((__tmp276016
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp276016)))
                           (_%gerbil-libdir275454%_
                            (path-expand '"lib" _%gerbil-home275452%_))
                           (_%gerbil-staticdir275456%_
                            (path-expand '"static" _%gerbil-libdir275454%_))
                           (_%deps275458%_
                            (gxc#find-runtime-module-deps _%ctx275428%_))
                           (_%libgerbil-deps275460%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?275437%_
                               _%deps275458%_)))
                           (_%libgerbil-scm275462%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps275460%_)))
                           (_%libgerbil-scm275464%_
                            (_%fold-libgerbil-runtime-scm275440%_
                             _%gerbil-staticdir275456%_
                             _%libgerbil-scm275462%_))
                           (_%libgerbil-c275466%_
                            (map _%replace-extension-with-c275434%_
                                 _%libgerbil-scm275464%_))
                           (_%libgerbil-o275468%_
                            (map _%replace-extension-with-object275435%_
                                 _%libgerbil-scm275464%_))
                           (_%src-deps275470%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?275436%_
                               _%deps275458%_)))
                           (_%src-deps-scm275472%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps275470%_)))
                           (_%src-deps-scm275474%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?275439%_
                               _%src-deps-scm275472%_)))
                           (_%src-deps-scm275476%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm275474%_)))
                           (_%src-deps-c275478%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c275434%_
                                     _%src-deps-scm275476%_)))
                           (_%src-deps-o275480%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object275435%_
                                     _%src-deps-scm275476%_)))
                           (_%src-bin-scm275482%_
                            (gxc#find-static-module-file _%ctx275428%_))
                           (_%src-bin-scm275484%_
                            (path-expand _%src-bin-scm275482%_))
                           (_%src-bin-c275486%_
                            (_%replace-extension-with-c275434%_
                             _%src-bin-scm275484%_))
                           (_%src-bin-o275488%_
                            (_%replace-extension-with-object275435%_
                             _%src-bin-scm275484%_))
                           (_%output-bin275490%_
                            (path-expand _%output-bin275450%_))
                           (_%output-scm275492%_
                            (path-expand _%output-scm275449%_))
                           (_%output-c275494%_
                            (_%replace-extension-with-c275434%_
                             _%output-scm275492%_))
                           (_%output-o275496%_
                            (_%replace-extension-with-object275435%_
                             _%output-scm275492%_))
                           (_%output_-c275498%_
                            (_%replace-extension275433%_
                             _%output-scm275492%_
                             '"_.c"))
                           (_%output_-o275500%_
                            (_%replace-extension275433%_
                             _%output-scm275492%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts275502%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts275504%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts275506%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir275456%_))
                           (_%output-ld-opts275508%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts275510%_
                            (_%get-libgerbil-ld-opts275432%_
                             _%gerbil-libdir275454%_))
                           (_%rpath275512%_
                            (gxc#gerbil-rpath _%gerbil-libdir275454%_))
                           (_%builtin-modules275516%_
                            (_%remove-duplicates275441%_
                             (let ((__tmp276017
                                    (let ((__tmp276019
                                           (lambda (_%mod275514%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod275514%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp276018
                                           (cons _%ctx275428%_
                                                 _%deps275458%_)))
                                      (declare (not safe))
                                      (##map __tmp276019 __tmp276018))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp276017)))))
                      (letrec ((_%compile-obj275519%_
                                (lambda (_%scm-path275526%_ _%c-path275527%_)
                                  (let* ((_%o-path275529%_
                                          (_%replace-extension275433%_
                                           _%c-path275527%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock275531%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path275529%_
                                             '".lock")))
                                         (_%locked275533%_ '#f)
                                         (_%unlock275536%_
                                          (lambda ()
                                            (close-port _%locked275533%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock275531%_)))))
                                    (let _%retry275539%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock275531%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry275539%_))
                                          (begin
                                            (set! _%locked275533%_
                                                  (let* ((_%handler275542%_
                                                          false)
                                                         (_%thunk275546%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock275531%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler275551%_ _%handler275542%_)
                 (_%thunk275607%_ _%thunk275546%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler275551%_
                                                     _%thunk275607%_)))
                                            (if _%locked275533%_
                                                '#!void
                                                (_%retry275539%_)))))
                                    (let ((__tmp276021
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path275529%_)))
                                                     (not _%scm-path275526%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path275526%_
                                                        _%o-path275529%_)))
                                                 (let ((_%gsc-cc-opts275624%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp276022
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp276023 (cons _%c-path275527%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts275506%_ __tmp276023))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts275624%_ __tmp276022)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp276020
                                           (lambda () (_%unlock275536%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp276021
                                       __tmp276020))))))
                        (let ((__tmp276024
                               (lambda ()
                                 (let ((__tmp276025
                                        (path-directory _%output-bin275490%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp276025)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp276024))
                        (gxc#with-output-to-scheme-file
                         _%output-scm275492%_
                         (lambda ()
                           (_%generate-stub275431%_
                            _%builtin-modules275516%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it275524%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp276026
                                                   (let ((__tmp276027
                                                          (let ((__tmp276028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm275484%_
                               (cons _%output-scm275492%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm275476%_ __tmp276028))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c275466%_
                                                      __tmp276027))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts275502%_
                                               __tmp276026))))
                                     (let ((__tmp276031
                                            (let ((__tmp276032
                                                   (cons _%src-bin-scm275484%_
                                                         (cons _%output-scm275492%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm275476%_
                                               __tmp276032)))
                                           (__tmp276029
                                            (let ((__tmp276030
                                                   (cons _%src-bin-c275486%_
                                                         (cons _%output-c275494%_
                                                               (cons _%output_-c275498%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c275478%_
                                               __tmp276030))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj275519%_
                                        __tmp276031
                                        __tmp276029))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin275490%_
                                                        (let ((__tmp276033
                                                               (cons _%src-bin-o275488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o275496%_
                                   (cons _%output_-o275500%_
                                         (let ((__tmp276034
                                                (let ((__tmp276035
                                                       (let ((__tmp276037
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath275512%_ '())
                          '()))
                     (__tmp276036
                      (cons '"-L"
                            (cons _%gerbil-libdir275454%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts275510%_)))))
                 (declare (not safe))
                 (##append __tmp276037 __tmp276036))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts275508%_
                                                   __tmp276035))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o275468%_
                                            __tmp276034)))))))
                  (declare (not safe))
                  (##append _%src-deps-o275480%_ __tmp276033))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp276038
                                            (cons _%output-c275494%_
                                                  (cons _%output_-c275498%_
                                                        (cons _%output-o275496%_
                                                              (cons _%output_-o275500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp276038)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it275524%_))
                                  (_%compile-it275524%_)))
                            '#!void))))))
          (let* ((_%output-bin275444%_
                  (gxc#compile-exe-output-file _%ctx275428%_ _%opts275429%_))
                 (_%output-scm275446%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin275444%_ '"__exe.scm"))))
            (_%compile-stub275442%_
             _%output-scm275446%_
             _%output-bin275444%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx275250%_ _%opts275251%_)
        (letrec ((_%reset-declare275253%_
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
                 (_%generate-stub275254%_
                  (lambda (_%deps275419%_)
                    (let ((_%mod-main275421%_
                           (gxc#find-runtime-symbol _%ctx275250%_ 'main))
                          (_%reset-decl275422%_ (_%reset-declare275253%_))
                          (_%user-decl275423%_ (_%user-declare275255%_)))
                      (for-each
                       (lambda (_%dep275425%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl275422%_))
                         (newline)
                         (if _%user-decl275423%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl275423%_))
                               (newline))
                             '#!void)
                         (let ((__tmp276039 (list 'include _%dep275425%_)))
                           (declare (not safe))
                           (##write __tmp276039))
                         (newline))
                       _%deps275419%_)
                      (let ((__tmp276040
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main275421%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp276040))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare275255%_
                  (lambda ()
                    (let* ((_%gsc-opts275324%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts275251%_)))
                           (_%gsc-prelude275326%_
                            (if _%gsc-opts275324%_
                                (member '"-prelude" _%gsc-opts275324%_)
                                '#f))
                           (_%gsc-prelude275328%_
                            (if _%gsc-prelude275326%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude275326%_)))
                                '#f)))
                      (let _%lp275331%_ ((_%rest275333%_
                                          (cons _%gsc-prelude275328%_ '()))
                                         (_%user-decls275334%_ '()))
                        (let* ((_%$%rest275335275343%_ _%rest275333%_)
                               (_%$%else275337275351%_
                                (lambda ()
                                  (if (null? _%user-decls275334%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls275334%_)))))
                               (_%$%K275339275407%_
                                (lambda (_%rest275354%_ _%expr275355%_)
                                  (let* ((_%$%expr275356275368%_
                                          _%expr275355%_)
                                         (_%$%else275359275376%_
                                          (lambda ()
                                            (_%lp275331%_
                                             _%rest275354%_
                                             _%user-decls275334%_))))
                                    (let ((_%$%K275364275397%_
                                           (lambda (_%decls275395%_)
                                             (_%lp275331%_
                                              _%rest275354%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls275334%_
                                                 _%decls275395%_)))))
                                          (_%$%K275361275382%_
                                           (lambda (_%exprs275380%_)
                                             (_%lp275331%_
                                              (append _%exprs275380%_
                                                      _%rest275354%_)
                                              _%user-decls275334%_))))
                                      (if (pair? _%$%expr275356275368%_)
                                          (let ((_%$%tl275366275402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr275356275368%_)))
                                                (_%$%hd275365275400%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr275356275368%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd275365275400%_
                                                         'declare))
                                                (let ((_%decls275405%_
                                                       _%$%tl275366275402%_))
                                                  (_%$%K275364275397%_
                                                   _%decls275405%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd275365275400%_
                                                             'begin))
                                                    (let ((_%exprs275390%_
                                                           _%$%tl275366275402%_))
                                                      (_%$%K275361275382%_
                                                       _%exprs275390%_))
                                                    (_%$%else275359275376%_))))
                                          (_%$%else275359275376%_)))))))
                          (if (pair? _%$%rest275335275343%_)
                              (let ((_%$%hd275340275410%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest275335275343%_)))
                                    (_%$%tl275341275412%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest275335275343%_))))
                                (let* ((_%expr275415%_ _%$%hd275340275410%_)
                                       (_%rest275417%_ _%$%tl275341275412%_))
                                  (_%$%K275339275407%_
                                   _%rest275417%_
                                   _%expr275415%_)))
                              (_%$%else275337275351%_)))))))
                 (_%compile-stub275256%_
                  (lambda (_%output-scm275263%_ _%output-bin275264%_)
                    (let* ((_%gerbil-home275266%_
                            (let ((__tmp276041
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp276041)))
                           (_%gerbil-libdir275268%_
                            (path-expand '"lib" _%gerbil-home275266%_))
                           (_%runtime275270%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp275272%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home275266%_))
                           (_%include-gambit-sharp275274%_
                            (gxc#include-source _%gambit-sharp275272%_))
                           (_%bin-scm275276%_
                            (gxc#find-static-module-file _%ctx275250%_))
                           (_%deps275278%_
                            (gxc#find-runtime-module-deps _%ctx275250%_))
                           (_%deps275280%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps275278%_)))
                           (_%deps275285%_
                            (let ((__tmp276042
                                   (lambda (_%$obj275282%_)
                                     (not (gxc#file-empty? _%$obj275282%_)))))
                              (declare (not safe))
                              (##filter __tmp276042 _%deps275280%_)))
                           (_%deps275289%_
                            (let ((__tmp276043
                                   (lambda (_%f275287%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f275287%_
                                             _%runtime275270%_))))))
                              (declare (not safe))
                              (##filter __tmp276043 _%deps275285%_)))
                           (_%output-base275291%_
                            (let ((__tmp276044
                                   (path-strip-extension
                                    _%output-scm275263%_)))
                              (declare (not safe))
                              (##string-append __tmp276044)))
                           (_%output-c275293%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base275291%_ '".c")))
                           (_%output-o275295%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base275291%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_275297%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base275291%_ '"_.c")))
                           (_%output-o_275299%_
                            (let ((__tmp276045
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base275291%_
                               __tmp276045)))
                           (_%gsc-link-opts275301%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts275303%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts275305%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir275268%_)))
                           (_%output-ld-opts275307%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros275309%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp275274%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp275274%_
                                            '()))))
                           (_%gsc-link-opts275311%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts275301%_
                               _%gsc-gx-macros275309%_)))
                           (_%rpath275313%_
                            (gxc#gerbil-rpath _%gerbil-libdir275268%_))
                           (_%default-ld-options275315%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp276046
                             (lambda ()
                               (let ((__tmp276047
                                      (path-directory _%output-bin275264%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp276047)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp276046))
                      (gxc#with-output-to-scheme-file
                       _%output-scm275263%_
                       (lambda ()
                         (_%generate-stub275254%_
                          (let ((__tmp276048
                                 (let ((__tmp276049
                                        (cons _%bin-scm275276%_ '())))
                                   (declare (not safe))
                                   (##append _%deps275289%_ __tmp276049))))
                            (declare (not safe))
                            (##append _%runtime275270%_ __tmp276048)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it275321%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_275297%_
                                                      (let ((__tmp276050
                                                             (cons _%output-scm275263%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts275311%_ __tmp276050))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp276051
                                                 (let ((__tmp276052
                                                        (cons _%output-c275293%_
                                                              (cons _%output-c_275297%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts275305%_
                                                    __tmp276052))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts275303%_
                                             __tmp276051))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin275264%_
                                                      (cons _%output-o275295%_
                                                            (cons _%output-o_275299%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp276053
                                 (let ((__tmp276055
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath275313%_ '())
                                            '()))
                                       (__tmp276054
                                        (cons '"-L"
                                              (cons _%gerbil-libdir275268%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options275315%_)))))
                                   (declare (not safe))
                                   (##append __tmp276055 __tmp276054))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts275307%_
                             __tmp276053)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it275321%_))
                                (_%compile-it275321%_)))
                          '#!void)))))
          (let* ((_%output-bin275258%_
                  (gxc#compile-exe-output-file _%ctx275250%_ _%opts275251%_))
                 (_%output-scm275260%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin275258%_ '"__exe.scm"))))
            (_%compile-stub275256%_
             _%output-scm275260%_
             _%output-bin275258%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx275199%_ _%id275200%_)
        (let ((_%$e275246%_
               (let ((__tmp276057
                      (lambda (_%$%e275201275203%_)
                        (let* ((_%$%$%e275201275205275215%_
                                _%$%e275201275203%_)
                               (_%$%else275207275223%_ (lambda () '#f))
                               (_%$%K275209275227%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e275201275205275215%_
                                 'gx#module-export::t))
                              (let* ((_%$%e275210275230%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275201275205275215%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e275211275233%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275201275205275215%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e275212275236%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275201275205275215%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e275212275236%_ '0))
                                    (let ((_%$%e275213275239%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e275201275205275215%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e275213275239%_
                                               _%id275200%_)
                                          (_%$%K275209275227%_)
                                          (_%$%else275207275223%_)))
                                    (_%$%else275207275223%_)))
                              (_%$%else275207275223%_)))))
                     (__tmp276056
                      (##structure-ref
                       _%ctx275199%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp276057 __tmp276056))))
          (if _%$e275246%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e275246%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx275190%_ _%id275191%_)
        (let ((_%$e275193%_
               (gxc#find-export-binding _%ctx275190%_ _%id275191%_)))
          (if _%$e275193%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e275193%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id275191%_)))
                (##structure-ref _%$e275193%_ '1 gx#binding::t '#f))
              (let ((__tmp276058
                     (##structure-ref
                      _%ctx275190%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp276058
                 _%id275191%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx275056%_)
        (letrec* ((_%ht275058%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template275059%_
                   (lambda (_%in275135%_ _%phi275136%_)
                     (let ((_%iphi275138%_
                            (fx+ _%phi275136%_
                                 (##direct-structure-ref
                                  _%in275135%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports275139%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in275135%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp275141%_ ((_%rest275143%_ _%imports275139%_)
                                          (_%r275144%_ '()))
                         (let* ((_%$%rest275145275153%_ _%rest275143%_)
                                (_%$%else275147275161%_
                                 (lambda () _%r275144%_))
                                (_%$%K275149275178%_
                                 (lambda (_%rest275164%_ _%in275165%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in275165%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi275138%_))
                                           (_%lp275141%_
                                            _%rest275164%_
                                            (cons _%in275165%_ _%r275144%_))
                                           (_%lp275141%_
                                            _%rest275164%_
                                            _%r275144%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in275165%_
                                              'gx#module-import::t))
                                           (let ((_%iphi275169%_
                                                  (fx+ _%phi275136%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in275165%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi275169%_))
                                                 (_%lp275141%_
                                                  _%rest275164%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in275165%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r275144%_))
                                                 (_%lp275141%_
                                                  _%rest275164%_
                                                  _%r275144%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in275165%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi275172%_
                                                      (fx+ _%iphi275138%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in275165%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi275172%_))
                                                     (_%lp275141%_
                                                      _%rest275164%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in275165%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r275144%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi275172%_))
                                                         (_%lp275141%_
                                                          _%rest275164%_
                                                          (let ((__tmp276059
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template275059%_
                          _%in275165%_
                          _%iphi275138%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r275144%_ __tmp276059)))
                 (_%lp275141%_ _%rest275164%_ _%r275144%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp275141%_
                                                _%rest275164%_
                                                _%r275144%_)))))))
                           (if (pair? _%$%rest275145275153%_)
                               (let ((_%$%hd275150275181%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest275145275153%_)))
                                     (_%$%tl275151275183%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest275145275153%_))))
                                 (let* ((_%in275186%_ _%$%hd275150275181%_)
                                        (_%rest275188%_ _%$%tl275151275183%_))
                                   (_%$%K275149275178%_
                                    _%rest275188%_
                                    _%in275186%_)))
                               (_%$%else275147275161%_)))))))
                  (_%find-deps275060%_
                   (lambda (_%rest275068%_ _%deps275069%_)
                     (let* ((_%$%rest275070275078%_ _%rest275068%_)
                            (_%$%else275072275086%_ (lambda () _%deps275069%_))
                            (_%$%K275074275123%_
                             (lambda (_%rest275089%_ _%hd275090%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd275090%_
                                      'gx#module-context::t))
                                   (let ((_%id275093%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd275090%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports275094%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd275090%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht275058%_
                                            _%id275093%_))
                                         (_%find-deps275060%_
                                          _%rest275089%_
                                          _%deps275069%_)
                                         (let ((_%$e275097%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd275090%_))))
                                           (if _%$e275097%_
                                               (let ((_%xdeps275102%_
                                                      (_%find-deps275060%_
                                                       (cons _%$e275097%_
                                                             _%imports275094%_)
                                                       _%deps275069%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht275058%_
                                                    _%id275093%_
                                                    _%hd275090%_))
                                                 (_%find-deps275060%_
                                                  _%rest275089%_
                                                  (cons _%hd275090%_
                                                        _%xdeps275102%_)))
                                               (let ((_%xdeps275105%_
                                                      (_%find-deps275060%_
                                                       _%imports275094%_
                                                       _%deps275069%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht275058%_
                                                    _%id275093%_
                                                    _%hd275090%_))
                                                 (_%find-deps275060%_
                                                  _%rest275089%_
                                                  (cons _%hd275090%_
                                                        _%xdeps275105%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd275090%_
                                          'gx#prelude-context::t))
                                       (let ((_%id275108%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd275090%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht275058%_
                                                _%id275108%_))
                                             (_%find-deps275060%_
                                              _%rest275089%_
                                              _%deps275069%_)
                                             (let ((_%xdeps275112%_
                                                    (_%find-deps275060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd275090%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps275069%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht275058%_
                                                      _%id275108%_))
                                                   (_%find-deps275060%_
                                                    _%rest275089%_
                                                    _%xdeps275112%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht275058%_
                                                        _%id275108%_
                                                        _%hd275090%_))
                                                     (_%find-deps275060%_
                                                      _%rest275089%_
                                                      (cons _%hd275090%_
                                                            _%xdeps275112%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd275090%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd275090%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps275060%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd275090%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest275089%_)
                                                _%deps275069%_)
                                               (_%find-deps275060%_
                                                _%rest275089%_
                                                _%deps275069%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd275090%_
                                                  'gx#module-export::t))
                                               (_%find-deps275060%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd275090%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest275089%_)
                                                _%deps275069%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd275090%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd275090%_ '2 '#f '#f)))
               (_%find-deps275060%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd275090%_ '1 '#f '#f))
                      _%rest275089%_)
                _%deps275069%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd275090%_ '2 '#f '#f)))
                   (let ((_%xdeps275119%_
                          (_%import-set-template275059%_ _%hd275090%_ '0)))
                     (_%find-deps275060%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest275089%_ _%xdeps275119%_))
                      _%deps275069%_))
                   (_%find-deps275060%_ _%rest275089%_ _%deps275069%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd275090%_))))))))))
                       (if (pair? _%$%rest275070275078%_)
                           (let ((_%$%hd275075275126%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest275070275078%_)))
                                 (_%$%tl275076275128%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest275070275078%_))))
                             (let* ((_%hd275131%_ _%$%hd275075275126%_)
                                    (_%rest275133%_ _%$%tl275076275128%_))
                               (_%$%K275074275123%_
                                _%rest275133%_
                                _%hd275131%_)))
                           (_%$%else275072275086%_))))))
          (let ((__tmp276060
                 (filter gx#expander-context-id
                         (_%find-deps275060%_
                          (let ((_%$e275062%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx275056%_))))
                            (if _%$e275062%_
                                (cons _%$e275062%_
                                      (##structure-ref
                                       _%ctx275056%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx275056%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp276060)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx274986%_)
        (let* ((_%context-id274988%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx274986%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx274986%_ '1 '#f '#f))
                    (string->symbol _%ctx274986%_)))
               (_%scm274990%_
                (let ((__tmp276061
                       (gxc#static-module-name _%context-id274988%_)))
                  (declare (not safe))
                  (##string-append __tmp276061 '".scm")))
               (_%dirs274992%_ (let () (declare (not safe)) (load-path)))
               (_%dirs274998%_
                (let ((_%user-libpath274994%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath274994%_
                      (let ((_%user-libpath274996%_
                             (path-expand '"lib" _%user-libpath274994%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath274996%_ _%dirs274992%_))
                            _%dirs274992%_
                            (cons _%user-libpath274996%_ _%dirs274992%_)))
                      _%dirs274992%_)))
               (_%dirs275008%_
                (let ((_%$e275000%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e275000%_
                      (cons _%$e275000%_ _%dirs274998%_)
                      _%dirs274998%_)))
               (_%dirs275014%_
                (let ((__tmp276062
                       (lambda (_%$%g275009275011%_)
                         (path-expand '"static" _%$%g275009275011%_))))
                  (declare (not safe))
                  (##map __tmp276062 _%dirs275008%_))))
          (let _%lp275017%_ ((_%rest275019%_ _%dirs275014%_))
            (let* ((_%$%rest275020275028%_ _%rest275019%_)
                   (_%$%else275022275036%_
                    (lambda ()
                      (let ((__tmp276063
                             (##structure-ref
                              _%ctx274986%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp276063
                         _%scm274990%_))))
                   (_%$%K275024275044%_
                    (lambda (_%rest275039%_ _%dir275040%_)
                      (let ((_%path275042%_
                             (path-expand _%scm274990%_ _%dir275040%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path275042%_))
                            _%path275042%_
                            (_%lp275017%_ _%rest275039%_))))))
              (if (pair? _%$%rest275020275028%_)
                  (let ((_%$%hd275025275047%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest275020275028%_)))
                        (_%$%tl275026275049%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest275020275028%_))))
                    (let* ((_%dir275052%_ _%$%hd275025275047%_)
                           (_%rest275054%_ _%$%tl275026275049%_))
                      (_%$%K275024275044%_ _%rest275054%_ _%dir275052%_)))
                  (_%$%else275022275036%_)))))))
    (define gxc#file-empty?
      (lambda (_%path274984%_)
        (zero? (let ((__tmp276064 (file-info _%path274984%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp276064)))))
    (define gxc#compile-top-module
      (lambda (_%ctx274975%_)
        (let ((__tmp276065
               (lambda ()
                 (let ((__tmp276066
                        (lambda ()
                          (let ((__tmp276067
                                 (lambda ()
                                   (let ((__tmp276069
                                          (lambda ()
                                            (let ((__tmp276071
                                                   (lambda ()
                                                     (let ((__tmp276073
                                                            (lambda ()
                                                              (let ((__tmp276074
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx274975%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp276074))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp276075
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx274975%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp276075))
                          '#!void)
                      (gxc#collect-bindings _%ctx274975%_)
                      (gxc#compile-runtime-code _%ctx274975%_)
                      (gxc#compile-meta-code _%ctx274975%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx274975%_)
                          '#!void)))
                   (__tmp276072
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
                __tmp276073
                gxc#current-compile-runtime-names
                __tmp276072))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp276070
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp276071
                                               gxc#current-compile-runtime-sections
                                               __tmp276070))))
                                         (__tmp276068
                                          (let ((__obj275964
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj275964))
                                            __obj275964)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp276069
                                      gxc#current-compile-symbol-table
                                      __tmp276068)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp276067
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp276066
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp276065
           gx#current-expander-context
           _%ctx274975%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx274973%_)
        (let ((__tmp276076
               (##structure-ref _%ctx274973%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp276076))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx274918%_)
        (letrec ((_%compile1274920%_
                  (lambda (_%ctx274962%_)
                    (let* ((_%code274964%_
                            (##structure-ref
                             _%ctx274962%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm274968%_
                            (let ((_%idstr274966%_
                                   (let ((__tmp276077
                                          (##structure-ref
                                           _%ctx274962%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp276077))))
                              (declare (not safe))
                              (##string-append _%idstr274966%_ '"~0")))
                           (_%rtc?274970%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code274964%_))))
                      (if _%rtc?274970%_
                          (let ((__tmp276078
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp276078
                             _%ctx274962%_
                             _%rtm274968%_))
                          '#!void)
                      (_%generate-runtime-code274922%_
                       _%ctx274962%_
                       _%code274964%_
                       (if _%rtc?274970%_ _%rtm274968%_ '#f)))))
                 (_%context-timestamp274921%_
                  (lambda (_%ctx274960%_)
                    (let ((__tmp276079
                           (let ((__tmp276080
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx274960%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp276080 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp276079))))
                 (_%generate-runtime-code274922%_
                  (lambda (_%ctx274929%_ _%code274930%_ _%rtm274931%_)
                    (let* ((_%runtime-code?274933%_ (if _%rtm274931%_ '#t '#f))
                           (_%lifts274935%_ (box '()))
                           (_%runtime-code274941%_
                            (if _%runtime-code?274933%_
                                (let ((__tmp276081
                                       (lambda ()
                                         (let ((__tmp276082
                                                (lambda ()
                                                  (let ((__tmp276083
                                                         (lambda ()
                                                           (let ((__tmp276085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code274930%_))))
                         (__tmp276084
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp276085
                      gxc#current-compile-marks
                      __tmp276084)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp276083
                                                     gxc#current-compile-lift
                                                     _%lifts274935%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp276082
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp276081
                                   gx#current-expander-context
                                   _%ctx274929%_))
                                '#f))
                           (_%runtime-code274943%_
                            (if _%runtime-code?274933%_
                                (if (null? (unbox _%lifts274935%_))
                                    _%runtime-code274941%_
                                    (cons 'begin
                                          (let ((__tmp276087
                                                 (reverse (unbox _%lifts274935%_)))
                                                (__tmp276086
                                                 (cons _%runtime-code274941%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp276087
                                             __tmp276086))))
                                '#f))
                           (_%runtime-code274945%_
                            (if _%runtime-code?274933%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp274921%_
                                                   _%ctx274929%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code274943%_ '())))
                                '#f))
                           (_%loader-code274948%_
                            (let ((__tmp276088
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code274930%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp276088
                               gx#current-expander-context
                               _%ctx274929%_)))
                           (_%loader-code274950%_
                            (cons 'begin
                                  (cons _%loader-code274948%_
                                        (cons (if _%runtime-code?274933%_
                                                  (cons 'load-module
                                                        (cons _%rtm274931%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0274952%_
                            (gxc#compile-output-file _%ctx274929%_ '0 '".scm"))
                           (_%scmrt274954%_
                            (gxc#compile-output-file
                             _%ctx274929%_
                             '#f
                             '".scm"))
                           (_%scms274956%_
                            (gxc#compile-static-output-file _%ctx274929%_)))
                      (if _%runtime-code?274933%_
                          (gxc#compile-scm-file__0
                           _%scm0274952%_
                           _%runtime-code274945%_)
                          '#!void)
                      (let ((__tmp276089
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt274954%_
                                _%loader-code274950%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp276089
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms274956%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms274956%_))
                          '#!void)
                      (if _%runtime-code?274933%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0274952%_ _%scms274956%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms274956%_ void)))))))
          (let* ((_%all-modules274924%_
                  (cons _%ctx274918%_ (gxc#lift-nested-modules _%ctx274918%_)))
                 (__tmp276090
                  (lambda (_%ctx274926%_)
                    (let ((__tmp276091
                           (lambda () (_%compile1274920%_ _%ctx274926%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp276091
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp276090 _%all-modules274924%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx274817%_)
        (letrec ((_%compile-ssi274819%_
                  (lambda (_%code274886%_)
                    (let* ((_%path274888%_
                            (gxc#compile-output-file
                             _%ctx274817%_
                             '#f
                             '".ssi"))
                           (_%prelude274900%_
                            (let* ((_%super274890%_
                                    (##structure-ref
                                     _%ctx274817%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e274892%_
                                    (##structure-ref
                                     _%super274890%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e274892%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e274892%_))
                                  ':<root>)))
                           (_%ns274902%_
                            (##structure-ref
                             _%ctx274817%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr274904%_
                            (symbol->string
                             (##structure-ref
                              _%ctx274817%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg274912%_
                            (let ((_%$e274906%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr274904%_ '#\/))))
                              (if _%$e274906%_
                                  (let ((__tmp276092
                                         (substring
                                          _%idstr274904%_
                                          '0
                                          _%$e274906%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp276092))
                                  '#f)))
                           (_%rt274914%_
                            (let ((__tmp276093
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp276093 _%ctx274817%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path274888%_))
                      (gxc#with-output-to-scheme-file
                       _%path274888%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude274900%_))
                         (if _%pkg274912%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg274912%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns274902%_))
                         (newline)
                         (pretty-print _%code274886%_)
                         (if _%rt274914%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt274914%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi274820%_
                  (lambda (_%part274825%_)
                    (let* ((_%$%part274826274839%_ _%part274825%_)
                           (_%$%E274828274843%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part274826274839%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K274829274855%_
                            (lambda (_%code274846%_
                                     _%n274847%_
                                     _%phi274848%_
                                     _%phi-ctx274849%_)
                              (let ((_%code274853%_
                                     (let ((__tmp276094
                                            (lambda ()
                                              (let ((__tmp276095
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code274846%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp276095
                                                 gx#current-expander-phi
                                                 _%phi274848%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp276094
                                        gx#current-expander-context
                                        _%phi-ctx274849%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx274817%_
                                  _%n274847%_
                                  '".scm")
                                 _%code274853%_
                                 '#t)))))
                      (if (pair? _%$%part274826274839%_)
                          (let ((_%$%hd274830274858%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part274826274839%_)))
                                (_%$%tl274831274860%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part274826274839%_))))
                            (let ((_%phi-ctx274863%_ _%$%hd274830274858%_))
                              (if (pair? _%$%tl274831274860%_)
                                  (let ((_%$%hd274832274865%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274831274860%_)))
                                        (_%$%tl274833274867%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274831274860%_))))
                                    (let ((_%phi274870%_ _%$%hd274832274865%_))
                                      (if (pair? _%$%tl274833274867%_)
                                          (let ((_%$%hd274834274872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl274833274867%_)))
                                                (_%$%tl274835274874%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl274833274867%_))))
                                            (let ((_%n274877%_
                                                   _%$%hd274834274872%_))
                                              (if (pair? _%$%tl274835274874%_)
                                                  (let ((_%$%hd274836274879%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl274835274874%_)))
                                                        (_%$%tl274837274881%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl274835274874%_))))
                                                    (let ((_%code274884%_
                                                           _%$%hd274836274879%_))
                                                      (if (null? _%$%tl274837274881%_)
                                                          (_%$%K274829274855%_
                                                           _%code274884%_
                                                           _%n274877%_
                                                           _%phi274870%_
                                                           _%phi-ctx274863%_)
                                                          (_%$%E274828274843%_))))
                                                  (_%$%E274828274843%_))))
                                          (_%$%E274828274843%_))))
                                  (_%$%E274828274843%_))))
                          (_%$%E274828274843%_))))))
          (let ((_g276096_ (gxc#generate-meta-code _%ctx274817%_)))
            (begin
              (let ((_g276097_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g276096_)
                           (##values-length _g276096_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g276097_ 2)))
                    (error "Context expects 2 values" _g276097_)))
              (let ((_%ssi-code274822%_
                     (let () (declare (not safe)) (##values-ref _g276096_ 0)))
                    (_%phi-code274823%_
                     (let () (declare (not safe)) (##values-ref _g276096_ 1))))
                (begin
                  (_%compile-ssi274819%_ _%ssi-code274822%_)
                  (for-each _%compile-phi274820%_ _%phi-code274823%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx274799%_)
        (let* ((_%path274801%_
                (gxc#compile-output-file _%ctx274799%_ '#f '".ssxi.ss"))
               (_%code274803%_
                (let ((__tmp276098
                       (##structure-ref
                        _%ctx274799%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp276098)))
               (_%idstr274805%_
                (symbol->string
                 (##structure-ref
                  _%ctx274799%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg274813%_
                (let ((_%$e274807%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr274805%_ '#\/))))
                  (if _%$e274807%_
                      (let ((__tmp276099
                             (substring _%idstr274805%_ '0 _%$e274807%_)))
                        (declare (not safe))
                        (##string->symbol __tmp276099))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path274801%_))
          (gxc#with-output-to-scheme-file
           _%path274801%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg274813%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg274813%_))
                 '#!void)
             (newline)
             (pretty-print _%code274803%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx274792%_)
        (let* ((_%state274794%_
                (let ((__obj275965
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj275965 _%ctx274792%_))
                  __obj275965))
               (_%ssi-code274796%_
                (let ((__tmp276100
                       (##structure-ref
                        _%ctx274792%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state274794%_
                   __tmp276100))))
          (values _%ssi-code274796%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state274794%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx274784%_)
        (let* ((_%lifts274786%_ (box '()))
               (__tmp276101
                (lambda ()
                  (let ((__tmp276103
                         (lambda ()
                           (let ((_%code274790%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx274784%_))))
                             (if (null? (unbox _%lifts274786%_))
                                 _%code274790%_
                                 (cons 'begin
                                       (let ((__tmp276105
                                              (reverse (unbox _%lifts274786%_)))
                                             (__tmp276104
                                              (cons _%code274790%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp276105
                                          __tmp276104)))))))
                        (__tmp276102
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp276103
                     gxc#current-compile-marks
                     __tmp276102)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp276101
           gxc#current-compile-lift
           _%lifts274786%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx274780%_)
        (let ((_%modules274782%_ (box '())))
          (let ((__tmp276106
                 (##structure-ref _%ctx274780%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules274782%_ __tmp276106))
          (reverse (unbox _%modules274782%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path274760%_ _%code274761%_ _%phi?274762%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path274760%_))
        (gxc#with-output-to-scheme-file
         _%path274760%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?274762%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code274761%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it274766%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path274760%_ _%phi?274762%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp276107 (list 'compile-file _%path274760%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it274766%_ __tmp276107))
                  (_%compile-it274766%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path274771%_ _%code274772%_)
        (let ((_%phi?274774%_ '#f))
          (gxc#compile-scm-file__%
           _%path274771%_
           _%code274772%_
           _%phi?274774%_))))
    (define gxc#compile-scm-file
      (lambda _g276108_
        (let ((_g276109_ (let () (declare (not safe)) (##length _g276108_))))
          (cond ((let () (declare (not safe)) (##fx= _g276109_ 2))
                 (apply gxc#compile-scm-file__0 _g276108_))
                ((let () (declare (not safe)) (##fx= _g276109_ 3))
                 (apply gxc#compile-scm-file__% _g276108_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g276108_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?274661%_)
        (let _%lp274663%_ ((_%rest274665%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts274666%_ '()))
          (let* ((_%$%rest274667274687%_ _%rest274665%_)
                 (_%$%else274671274695%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts274666%_)))
                        (reverse _%opts274666%_)))))
            (let ((_%$%K274681274738%_
                   (lambda (_%rest274736%_)
                     (_%lp274663%_ _%rest274736%_ _%opts274666%_)))
                  (_%$%K274676274720%_
                   (lambda (_%rest274718%_)
                     (_%lp274663%_ _%rest274718%_ _%opts274666%_)))
                  (_%$%K274673274702%_
                   (lambda (_%rest274699%_ _%opt274700%_)
                     (_%lp274663%_
                      _%rest274699%_
                      (cons _%opt274700%_ _%opts274666%_)))))
              (if (pair? _%$%rest274667274687%_)
                  (let ((_%$%tl274683274743%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest274667274687%_)))
                        (_%$%hd274682274741%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest274667274687%_))))
                    (if (equal? _%$%hd274682274741%_ '"-cc-options")
                        (if (pair? _%$%tl274683274743%_)
                            (let* ((_%$%tl274685274746%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl274683274743%_)))
                                   (_%rest274749%_ _%$%tl274685274746%_))
                              (_%$%K274681274738%_ _%rest274749%_))
                            (let ((_%opt274710%_ _%$%hd274682274741%_)
                                  (_%rest274712%_ _%$%tl274683274743%_))
                              (_%$%K274673274702%_
                               _%rest274712%_
                               _%opt274710%_)))
                        (if (equal? _%$%hd274682274741%_ '"-ld-options")
                            (if (pair? _%$%tl274683274743%_)
                                (let* ((_%$%tl274680274728%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl274683274743%_)))
                                       (_%rest274731%_ _%$%tl274680274728%_))
                                  (_%$%K274676274720%_ _%rest274731%_))
                                (let ((_%opt274710%_ _%$%hd274682274741%_)
                                      (_%rest274712%_ _%$%tl274683274743%_))
                                  (_%$%K274673274702%_
                                   _%rest274712%_
                                   _%opt274710%_)))
                            (let ((_%opt274710%_ _%$%hd274682274741%_)
                                  (_%rest274712%_ _%$%tl274683274743%_))
                              (_%$%K274673274702%_
                               _%rest274712%_
                               _%opt274710%_)))))
                  (_%$%else274671274695%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?274755%_ '#f)) (gxc#gsc-link-options__% _%phi?274755%_))))
    (define gxc#gsc-link-options
      (lambda _g276110_
        (let ((_g276111_ (let () (declare (not safe)) (##length _g276110_))))
          (cond ((let () (declare (not safe)) (##fx= _g276111_ 0))
                 (apply gxc#gsc-link-options__0 _g276110_))
                ((let () (declare (not safe)) (##fx= _g276111_ 1))
                 (apply gxc#gsc-link-options__% _g276110_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g276110_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords274511%_ _%$%static?274507274512%_ _%phi?274513%_)
        (let ((_%static?274515%_
               (if (eq? _%$%static?274507274512%_ absent-value)
                   '#f
                   _%$%static?274507274512%_)))
          (if _%phi?274513%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp274517%_ ((_%rest274519%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts274520%_ '()))
                (let* ((_%$%rest274521274547%_ _%rest274519%_)
                       (_%$%else274526274555%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts274520%_)))
                              (reverse! _%opts274520%_)))))
                  (let ((_%$%K274541274618%_
                         (lambda (_%rest274615%_ _%opt274616%_)
                           (if _%static?274515%_
                               (_%lp274517%_
                                _%rest274615%_
                                (cons _%opt274616%_
                                      (cons '"-cc-options" _%opts274520%_)))
                               (_%lp274517%_ _%rest274615%_ _%opts274520%_))))
                        (_%$%K274536274595%_
                         (lambda (_%rest274592%_ _%opt274593%_)
                           (_%lp274517%_
                            _%rest274592%_
                            (cons _%opt274593%_
                                  (cons '"-cc-options" _%opts274520%_)))))
                        (_%$%K274531274575%_
                         (lambda (_%rest274573%_)
                           (_%lp274517%_ _%rest274573%_ _%opts274520%_)))
                        (_%$%K274528274561%_
                         (lambda (_%rest274559%_)
                           (_%lp274517%_ _%rest274559%_ _%opts274520%_))))
                    (if (pair? _%$%rest274521274547%_)
                        (let ((_%$%tl274543274623%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest274521274547%_)))
                              (_%$%hd274542274621%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest274521274547%_))))
                          (if (equal? _%$%hd274542274621%_ '"-cc-options")
                              (if (pair? _%$%tl274543274623%_)
                                  (let ((_%$%tl274545274628%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274543274623%_)))
                                        (_%$%hd274544274626%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274543274623%_))))
                                    (if (equal? _%$%hd274544274626%_
                                                '"-Bstatic")
                                        (let ((_%opt274631%_
                                               _%$%hd274544274626%_)
                                              (_%rest274633%_
                                               _%$%tl274545274628%_))
                                          (_%$%K274541274618%_
                                           _%rest274633%_
                                           _%opt274631%_))
                                        (let ((_%opt274608%_
                                               _%$%hd274544274626%_)
                                              (_%rest274610%_
                                               _%$%tl274545274628%_))
                                          (_%$%K274536274595%_
                                           _%rest274610%_
                                           _%opt274608%_))))
                                  (let ((_%rest274567%_ _%$%tl274543274623%_))
                                    (_%$%K274528274561%_ _%rest274567%_)))
                              (if (equal? _%$%hd274542274621%_ '"-ld-options")
                                  (if (pair? _%$%tl274543274623%_)
                                      (let* ((_%$%tl274535274583%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl274543274623%_)))
                                             (_%rest274586%_
                                              _%$%tl274535274583%_))
                                        (_%$%K274531274575%_ _%rest274586%_))
                                      (let ((_%rest274567%_
                                             _%$%tl274543274623%_))
                                        (_%$%K274528274561%_ _%rest274567%_)))
                                  (let ((_%rest274567%_ _%$%tl274543274623%_))
                                    (_%$%K274528274561%_ _%rest274567%_)))))
                        (_%$%else274526274555%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords274638%_ _%$%static?274507274639%_)
        (let ((_%phi?274641%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords274638%_
           _%$%static?274507274639%_
           _%phi?274641%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g276112_
        (let ((_g276113_ (let () (declare (not safe)) (##length _g276112_))))
          (cond ((let () (declare (not safe)) (##fx= _g276113_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g276112_))
                ((let () (declare (not safe)) (##fx= _g276113_ 3))
                 (apply gxc#gsc-cc-options__%__% _g276112_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g276112_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords274650%_ . _%args274651%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords274650%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274650%_
                  'static:
                  absent-value))
               _%args274651%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args274508274657%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args274508274657%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords274357%_ _%$%static?274353274358%_ _%phi?274359%_)
        (let ((_%static?274361%_
               (if (eq? _%$%static?274353274358%_ absent-value)
                   '#f
                   _%$%static?274353274358%_)))
          (if _%phi?274359%_
              '()
              (let _%lp274363%_ ((_%rest274365%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts274366%_ '()))
                (let* ((_%$%rest274367274393%_ _%rest274365%_)
                       (_%$%else274372274401%_
                        (lambda () (reverse! _%opts274366%_))))
                  (let ((_%$%K274387274464%_
                         (lambda (_%rest274461%_ _%opt274462%_)
                           (if _%static?274361%_
                               (_%lp274363%_
                                _%rest274461%_
                                (cons _%opt274462%_
                                      (cons '"-ld-options" _%opts274366%_)))
                               (_%lp274363%_ _%rest274461%_ _%opts274366%_))))
                        (_%$%K274382274441%_
                         (lambda (_%rest274438%_ _%opt274439%_)
                           (_%lp274363%_
                            _%rest274438%_
                            (cons _%opt274439%_
                                  (cons '"-ld-options" _%opts274366%_)))))
                        (_%$%K274377274421%_
                         (lambda (_%rest274419%_)
                           (_%lp274363%_ _%rest274419%_ _%opts274366%_)))
                        (_%$%K274374274407%_
                         (lambda (_%rest274405%_)
                           (_%lp274363%_ _%rest274405%_ _%opts274366%_))))
                    (if (pair? _%$%rest274367274393%_)
                        (let ((_%$%tl274389274469%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest274367274393%_)))
                              (_%$%hd274388274467%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest274367274393%_))))
                          (if (equal? _%$%hd274388274467%_ '"-ld-options")
                              (if (pair? _%$%tl274389274469%_)
                                  (let ((_%$%tl274391274474%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274389274469%_)))
                                        (_%$%hd274390274472%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274389274469%_))))
                                    (if (equal? _%$%hd274390274472%_
                                                '"-static")
                                        (let ((_%opt274477%_
                                               _%$%hd274390274472%_)
                                              (_%rest274479%_
                                               _%$%tl274391274474%_))
                                          (_%$%K274387274464%_
                                           _%rest274479%_
                                           _%opt274477%_))
                                        (let ((_%opt274454%_
                                               _%$%hd274390274472%_)
                                              (_%rest274456%_
                                               _%$%tl274391274474%_))
                                          (_%$%K274382274441%_
                                           _%rest274456%_
                                           _%opt274454%_))))
                                  (let ((_%rest274413%_ _%$%tl274389274469%_))
                                    (_%$%K274374274407%_ _%rest274413%_)))
                              (if (equal? _%$%hd274388274467%_ '"-cc-options")
                                  (if (pair? _%$%tl274389274469%_)
                                      (let* ((_%$%tl274381274429%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl274389274469%_)))
                                             (_%rest274432%_
                                              _%$%tl274381274429%_))
                                        (_%$%K274377274421%_ _%rest274432%_))
                                      (let ((_%rest274413%_
                                             _%$%tl274389274469%_))
                                        (_%$%K274374274407%_ _%rest274413%_)))
                                  (let ((_%rest274413%_ _%$%tl274389274469%_))
                                    (_%$%K274374274407%_ _%rest274413%_)))))
                        (_%$%else274372274401%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords274484%_ _%$%static?274353274485%_)
        (let ((_%phi?274487%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords274484%_
           _%$%static?274353274485%_
           _%phi?274487%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g276114_
        (let ((_g276115_ (let () (declare (not safe)) (##length _g276114_))))
          (cond ((let () (declare (not safe)) (##fx= _g276115_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g276114_))
                ((let () (declare (not safe)) (##fx= _g276115_ 3))
                 (apply gxc#gsc-ld-options__%__% _g276114_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g276114_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords274496%_ . _%args274497%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords274496%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274496%_
                  'static:
                  absent-value))
               _%args274497%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args274354274503%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args274354274503%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir274348%_)
        (let ((_%user-staticdir274350%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir274348%_
                       '" -I "
                       _%user-staticdir274350%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp274260%_ ((_%rest274262%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts274263%_ '()))
          (let* ((_%$%rest274264274284%_ _%rest274262%_)
                 (_%$%else274268274292%_ (lambda () _%opts274263%_)))
            (let ((_%$%K274278274335%_
                   (lambda (_%rest274333%_)
                     (_%lp274260%_ _%rest274333%_ _%opts274263%_)))
                  (_%$%K274273274313%_
                   (lambda (_%rest274310%_ _%opt274311%_)
                     (_%lp274260%_
                      _%rest274310%_
                      (let ((__tmp276116
                             (let ((__tmp276117
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt274311%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp276117))))
                        (declare (not safe))
                        (##append _%opts274263%_ __tmp276116)))))
                  (_%$%K274270274298%_
                   (lambda (_%rest274296%_)
                     (_%lp274260%_ _%rest274296%_ _%opts274263%_))))
              (if (pair? _%$%rest274264274284%_)
                  (let ((_%$%tl274280274340%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest274264274284%_)))
                        (_%$%hd274279274338%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest274264274284%_))))
                    (if (equal? _%$%hd274279274338%_ '"-cc-options")
                        (if (pair? _%$%tl274280274340%_)
                            (let* ((_%$%tl274282274343%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl274280274340%_)))
                                   (_%rest274346%_ _%$%tl274282274343%_))
                              (_%$%K274278274335%_ _%rest274346%_))
                            (let ((_%rest274304%_ _%$%tl274280274340%_))
                              (_%$%K274270274298%_ _%rest274304%_)))
                        (if (equal? _%$%hd274279274338%_ '"-ld-options")
                            (if (pair? _%$%tl274280274340%_)
                                (let ((_%$%tl274277274323%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl274280274340%_)))
                                      (_%$%hd274276274321%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl274280274340%_))))
                                  (let ((_%opt274326%_ _%$%hd274276274321%_)
                                        (_%rest274328%_ _%$%tl274277274323%_))
                                    (_%$%K274273274313%_
                                     _%rest274328%_
                                     _%opt274326%_)))
                                (let ((_%rest274304%_ _%$%tl274280274340%_))
                                  (_%$%K274270274298%_ _%rest274304%_)))
                            (let ((_%rest274304%_ _%$%tl274280274340%_))
                              (_%$%K274270274298%_ _%rest274304%_)))))
                  (_%$%else274268274292%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str274257%_)
        (not (let () (declare (not safe)) (string-empty? _%str274257%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path274250%_ _%phi?274251%_)
        (let ((_%gsc-link-opts274253%_
               (gxc#gsc-link-options__% _%phi?274251%_))
              (_%gsc-cc-opts274254%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?274251%_))
              (_%gsc-ld-opts274255%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?274251%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp276118
                  (let ((__tmp276119
                         (let ((__tmp276120 (cons _%path274250%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts274253%_ __tmp276120))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts274255%_ __tmp276119))))
             (declare (not safe))
             (##append _%gsc-cc-opts274254%_ __tmp276118))))))
    (define gxc#compile-output-file
      (lambda (_%ctx274216%_ _%n274217%_ _%ext274218%_)
        (letrec ((_%module-relative-path274220%_
                  (lambda (_%ctx274248%_)
                    (path-strip-directory
                     (let ((__tmp276121
                            (##structure-ref
                             _%ctx274248%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp276121)))))
                 (_%module-source-directory274221%_
                  (lambda (_%ctx274244%_)
                    (path-directory
                     (let ((_%mpath274246%_
                            (##structure-ref
                             _%ctx274244%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath274246%_)
                           _%mpath274246%_
                           (last _%mpath274246%_))))))
                 (_%section-string274222%_
                  (lambda (_%n274238%_)
                    (if (number? _%n274238%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n274238%_))
                        (if (symbol? _%n274238%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n274238%_))
                            (if (string? _%n274238%_)
                                _%n274238%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n274238%_)))))))
                 (_%file-name274223%_
                  (lambda (_%path274236%_)
                    (if _%n274217%_
                        (string-append
                         _%path274236%_
                         '"~"
                         (_%section-string274222%_ _%n274217%_)
                         _%ext274218%_)
                        (string-append _%path274236%_ _%ext274218%_))))
                 (_%file-path274224%_
                  (lambda ()
                    (let ((_%$e274230%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e274230%_
                          (path-expand
                           (_%file-name274223%_
                            (let ((__tmp276122
                                   (##structure-ref
                                    _%ctx274216%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp276122)))
                           _%$e274230%_)
                          (path-expand
                           (_%file-name274223%_
                            (_%module-relative-path274220%_ _%ctx274216%_))
                           (_%module-source-directory274221%_
                            _%ctx274216%_)))))))
          (let ((_%path274226%_ (_%file-path274224%_)))
            (let ((__tmp276123
                   (lambda ()
                     (let ((__tmp276124 (path-directory _%path274226%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp276124)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp276123))
            _%path274226%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx274197%_)
        (letrec ((_%file-name274199%_
                  (lambda (_%id274214%_)
                    (let ((__tmp276125 (gxc#static-module-name _%id274214%_)))
                      (declare (not safe))
                      (##string-append __tmp276125 '".scm"))))
                 (_%file-path274200%_
                  (lambda ()
                    (let* ((_%file274206%_
                            (_%file-name274199%_
                             (##structure-ref
                              _%ctx274197%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e274208%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e274208%_
                          (path-expand
                           _%file274206%_
                           (path-expand '"static" _%$e274208%_))
                          (path-expand _%file274206%_ '"static"))))))
          (let ((_%path274202%_ (_%file-path274200%_)))
            (let ((__tmp276126
                   (lambda ()
                     (let ((__tmp276127 (path-directory _%path274202%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp276127)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp276126))
            _%path274202%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx274190%_ _%opts274191%_)
        (let ((_%$e274193%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts274191%_))))
          (if _%$e274193%_
              _%$e274193%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx274190%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr274180%_)
        (if (string? _%idstr274180%_)
            (let* ((_%str274183%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr274180%_)))
                   (_%strs274185%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str274183%_ '#\/))))
              (declare (not safe))
              (string-join _%strs274185%_ '"__"))
            (if (symbol? _%idstr274180%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr274180%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr274180%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp276128
               (let ((__tmp276129 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp276129 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp276128))))
    (define gxc#invoke__%
      (lambda (_%@@keywords274146%_
               _%$%stdout-redirection274142274147%_
               _%$%stderr-redirection274143274148%_
               _%program274149%_
               _%args274150%_)
        (let* ((_%stdout-redirection274152%_
                (if (eq? _%$%stdout-redirection274142274147%_ absent-value)
                    '#f
                    _%$%stdout-redirection274142274147%_))
               (_%stderr-redirection274154%_
                (if (eq? _%$%stderr-redirection274143274148%_ absent-value)
                    '#f
                    _%$%stderr-redirection274143274148%_)))
          (let ((__tmp276130 (cons _%program274149%_ _%args274150%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp276130))
          (let* ((_%proc274156%_
                  (open-process
                   (cons 'path:
                         (cons _%program274149%_
                               (cons 'arguments:
                                     (cons _%args274150%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection274152%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection274154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output274161%_
                  (if (or _%stdout-redirection274152%_
                          _%stderr-redirection274154%_)
                      (read-line _%proc274156%_ '#f)
                      '#f))
                 (_%status274164%_ (process-status _%proc274156%_)))
            (let () (declare (not safe)) (##close-port _%proc274156%_))
            (if (zero? _%status274164%_)
                '#!void
                (begin
                  (display _%output274161%_)
                  (let ((__tmp276131 (cons _%program274149%_ _%args274150%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp276131
                     _%status274164%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords274169%_ . _%args274170%_)
        (apply gxc#invoke__%
               _%@@keywords274169%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274169%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274169%_
                  'stderr-redirection:
                  absent-value))
               _%args274170%_)))
    (define gxc#invoke
      (lambda _%$%args274144274176%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args274144274176%_)))))
