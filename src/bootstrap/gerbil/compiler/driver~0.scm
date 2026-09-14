(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1789371549)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp275873 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp275873))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp275874 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp275874))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path275730%_ _%fun275731%_)
        (with-output-to-file
         (cons 'path: (cons _%path275730%_ gxc#scheme-file-settings))
         _%fun275731%_)))
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
      (lambda (_%gerbil-libdir275725%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir275725%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path275723%_)
        (let ((__tmp275875 (object->string _%path275723%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp275875 '")"))))
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
      (lambda (_%dir275721%_) (delete-file-or-directory _%dir275721%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath275664%_ _%opts275665%_)
        (if (string? _%srcpath275664%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath275664%_)))
        (let* ((_%outdir275667%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts275665%_)))
               (_%invoke-gsc?275669%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts275665%_)))
               (_%target275674%_
                (let ((_%$e275671%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts275665%_))))
                  (if _%$e275671%_ _%$e275671%_ 'C)))
               (_%gsc-options275679%_
                (append (cons '"-target"
                              (cons (symbol->string _%target275674%_) '()))
                        (let ((_%$e275676%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts275665%_))))
                          (if _%$e275676%_ _%$e275676%_ '()))))
               (_%keep-scm?275681%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts275665%_)))
               (_%verbosity275683%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts275665%_)))
               (_%optimize275685%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts275665%_)))
               (_%debug275687%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts275665%_)))
               (_%gen-ssxi275689%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts275665%_)))
               (_%parallel?275691%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts275665%_))))
          (if _%outdir275667%_
              (let ((__tmp275876
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir275667%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp275876))
              '#!void)
          (if _%optimize275685%_
              (let ((__tmp275877
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp275877))
              '#!void)
          (let ((__tmp275878
                 (lambda ()
                   (let ((__tmp275879
                          (lambda ()
                            (let ((__tmp275880
                                   (lambda ()
                                     (let ((__tmp275881
                                            (lambda ()
                                              (let ((__tmp275882
                                                     (lambda ()
                                                       (let ((__tmp275883
                                                              (lambda ()
                                                                (let ((__tmp275884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp275885
                                        (lambda ()
                                          (let ((__tmp275887
                                                 (lambda ()
                                                   (let ((__tmp275889
                                                          (lambda ()
                                                            (let ((__tmp275891
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp275892
                                    (lambda ()
                                      (let ((__tmp275893
                                             (lambda ()
                                               (let ((__tmp275894
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath275664%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp275895
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath275664%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp275895))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp275894
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp275893
                                         gx#current-compilation-target
                                         _%target275674%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp275892
                                gxc#current-compile-parallel
                                _%parallel?275691%_))))
                          (__tmp275890
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp275891
                       gxc#current-compile-identifiers
                       __tmp275890))))
                 (__tmp275888 (list (list 'compile-module _%srcpath275664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp275889
                                                      gxc#current-compile-context
                                                      __tmp275888))))
                                                (__tmp275886
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp275887
                                             gxc#current-compile-timestamp
                                             __tmp275886)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp275885
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi275689%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp275884
                           gxc#current-compile-debug
                           _%debug275687%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp275883
                  gxc#current-compile-optimize
                  _%optimize275685%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp275882
                                                 gxc#current-compile-verbose
                                                 _%verbosity275683%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp275881
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?275681%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp275880
                               gxc#current-compile-gsc-options
                               _%gsc-options275679%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp275879
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?275669%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp275878
             gxc#current-compile-output-dir
             _%outdir275667%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath275714%_)
        (let ((_%opts275716%_ '()))
          (gxc#compile-module__% _%srcpath275714%_ _%opts275716%_))))
    (define gxc#compile-module
      (lambda _g275896_
        (let ((_g275897_ (let () (declare (not safe)) (##length _g275896_))))
          (cond ((let () (declare (not safe)) (##fx= _g275897_ 1))
                 (apply gxc#compile-module__0 _g275896_))
                ((let () (declare (not safe)) (##fx= _g275897_ 2))
                 (apply gxc#compile-module__% _g275896_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g275896_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath275613%_ _%opts275614%_)
        (if (string? _%srcpath275613%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath275613%_)))
        (let* ((_%outdir275616%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts275614%_)))
               (_%invoke-gsc?275618%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts275614%_)))
               (_%target275623%_
                (let ((_%$e275620%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts275614%_))))
                  (if _%$e275620%_ _%$e275620%_ 'C)))
               (_%gsc-options275628%_
                (append (cons '"-target"
                              (cons (symbol->string _%target275623%_) '()))
                        (let ((_%$e275625%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts275614%_))))
                          (if _%$e275625%_ _%$e275625%_ '()))))
               (_%keep-scm?275630%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts275614%_)))
               (_%verbosity275632%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts275614%_)))
               (_%debug275634%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts275614%_)))
               (_%parallel?275636%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts275614%_))))
          (if _%outdir275616%_
              (let ((__tmp275898
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir275616%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp275898))
              '#!void)
          (let ((__tmp275899
                 (lambda ()
                   (let ((__tmp275900
                          (lambda ()
                            (let ((__tmp275901
                                   (lambda ()
                                     (let ((__tmp275902
                                            (lambda ()
                                              (let ((__tmp275903
                                                     (lambda ()
                                                       (let ((__tmp275904
                                                              (lambda ()
                                                                (let ((__tmp275905
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp275907
                                        (lambda ()
                                          (let ((__tmp275909
                                                 (lambda ()
                                                   (let ((__tmp275911
                                                          (lambda ()
                                                            (let ((__tmp275912
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp275913
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath275613%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp275914
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath275613%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp275914))
                                       _%opts275614%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp275913
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp275912
                       gxc#current-compile-parallel
                       _%parallel?275636%_))))
                 (__tmp275910
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp275911
                                                      gxc#current-compile-identifiers
                                                      __tmp275910))))
                                                (__tmp275908
                                                 (list (list 'compile-exe
                                                             _%srcpath275613%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp275909
                                             gxc#current-compile-context
                                             __tmp275908))))
                                       (__tmp275906 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp275907
                                    gxc#current-compile-timestamp
                                    __tmp275906)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp275905
                           gxc#current-compile-debug
                           _%debug275634%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp275904
                  gxc#current-compile-verbose
                  _%verbosity275632%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp275903
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?275630%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp275902
                                        gxc#current-compile-gsc-options
                                        _%gsc-options275628%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp275901
                               gx#current-compilation-target
                               _%target275623%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp275900
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?275618%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp275899
             gxc#current-compile-output-dir
             _%outdir275616%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath275656%_)
        (let ((_%opts275658%_ '()))
          (gxc#compile-exe__% _%srcpath275656%_ _%opts275658%_))))
    (define gxc#compile-exe
      (lambda _g275915_
        (let ((_g275916_ (let () (declare (not safe)) (##length _g275915_))))
          (cond ((let () (declare (not safe)) (##fx= _g275916_ 1))
                 (apply gxc#compile-exe__0 _g275915_))
                ((let () (declare (not safe)) (##fx= _g275916_ 2))
                 (apply gxc#compile-exe__% _g275915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g275915_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx275609%_ _%opts275610%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts275610%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx275609%_
             _%opts275610%_)
            (gxc#compile-executable-module/separate
             _%ctx275609%_
             _%opts275610%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx275335%_ _%opts275336%_)
        (letrec ((_%generate-stub275338%_
                  (lambda (_%builtin-modules275605%_)
                    (let ((_%mod-main275607%_
                           (gxc#find-runtime-symbol _%ctx275335%_ 'main)))
                      (let ((__tmp275917
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules275605%_))))
                        (declare (not safe))
                        (##write __tmp275917))
                      (let ((__tmp275918
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main275607%_
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
                        (##write __tmp275918))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts275339%_
                  (lambda (_%gerbil-libdir275603%_)
                    (let ((__tmp275919
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir275603%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp275919 read))))
                 (_%replace-extension275340%_
                  (lambda (_%path275600%_ _%ext275601%_)
                    (string-append
                     (path-strip-extension _%path275600%_)
                     _%ext275601%_)))
                 (_%replace-extension-with-c275341%_
                  (lambda (_%path275598%_)
                    (_%replace-extension275340%_ _%path275598%_ '".c")))
                 (_%replace-extension-with-object275342%_
                  (lambda (_%path275596%_)
                    (_%replace-extension275340%_
                     _%path275596%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?275343%_
                  (lambda (_%ctx275594%_)
                    (if (_%exclude-module?275345%_ _%ctx275594%_)
                        '#f
                        (not (_%libgerbil-module?275344%_ _%ctx275594%_)))))
                 (_%libgerbil-module?275344%_
                  (lambda (_%ctx275587%_)
                    (let ((_%id-str275589%_
                           (symbol->string
                            (##structure-ref
                             _%ctx275587%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?275345%_ _%id-str275589%_)
                          '#f
                          (let ((_%$e275591%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str275589%_))))
                            (if _%$e275591%_
                                _%$e275591%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str275589%_))))))))
                 (_%exclude-module?275345%_
                  (lambda (_%ctx-or-str275583%_)
                    (let ((_%str275585%_
                           (if (string? _%ctx-or-str275583%_)
                               _%ctx-or-str275583%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str275583%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str275585%_))))
                 (_%not-file-empty?275346%_
                  (lambda (_%path275581%_)
                    (not (gxc#file-empty? _%path275581%_))))
                 (_%fold-libgerbil-runtime-scm275347%_
                  (lambda (_%gerbil-staticdir275574%_ _%libgerbil-scm275575%_)
                    (let ((_%gerbil-runtime-scm275579%_
                           (let ((__tmp275920
                                  (lambda (_%rtm275577%_)
                                    (path-expand
                                     (let ((__tmp275921
                                            (let ((__tmp275922
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm275577%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp275922
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp275921 '".scm"))
                                     _%gerbil-staticdir275574%_))))
                             (declare (not safe))
                             (##map __tmp275920 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates275348%_
                       (append _%gerbil-runtime-scm275579%_
                               _%libgerbil-scm275575%_)))))
                 (_%remove-duplicates275348%_
                  (lambda (_%strlst275534%_)
                    (let _%loop275536%_ ((_%rest275538%_ _%strlst275534%_)
                                         (_%result275539%_ '()))
                      (let* ((_%$%rest275540275548%_ _%rest275538%_)
                             (_%$%else275542275556%_
                              (lambda () (reverse! _%result275539%_)))
                             (_%$%K275544275562%_
                              (lambda (_%rest275559%_ _%path275560%_)
                                (if (member _%path275560%_ _%result275539%_)
                                    (_%loop275536%_
                                     _%rest275559%_
                                     _%result275539%_)
                                    (_%loop275536%_
                                     _%rest275559%_
                                     (cons _%path275560%_
                                           _%result275539%_))))))
                        (if (pair? _%$%rest275540275548%_)
                            (let ((_%$%hd275545275565%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest275540275548%_)))
                                  (_%$%tl275546275567%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest275540275548%_))))
                              (let* ((_%path275570%_ _%$%hd275545275565%_)
                                     (_%rest275572%_ _%$%tl275546275567%_))
                                (_%$%K275544275562%_
                                 _%rest275572%_
                                 _%path275570%_)))
                            (_%$%else275542275556%_))))))
                 (_%compile-stub275349%_
                  (lambda (_%output-scm275356%_ _%output-bin275357%_)
                    (let* ((_%gerbil-home275359%_
                            (let ((__tmp275923
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp275923)))
                           (_%gerbil-libdir275361%_
                            (path-expand '"lib" _%gerbil-home275359%_))
                           (_%gerbil-staticdir275363%_
                            (path-expand '"static" _%gerbil-libdir275361%_))
                           (_%deps275365%_
                            (gxc#find-runtime-module-deps _%ctx275335%_))
                           (_%libgerbil-deps275367%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?275344%_
                               _%deps275365%_)))
                           (_%libgerbil-scm275369%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps275367%_)))
                           (_%libgerbil-scm275371%_
                            (_%fold-libgerbil-runtime-scm275347%_
                             _%gerbil-staticdir275363%_
                             _%libgerbil-scm275369%_))
                           (_%libgerbil-c275373%_
                            (map _%replace-extension-with-c275341%_
                                 _%libgerbil-scm275371%_))
                           (_%libgerbil-o275375%_
                            (map _%replace-extension-with-object275342%_
                                 _%libgerbil-scm275371%_))
                           (_%src-deps275377%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?275343%_
                               _%deps275365%_)))
                           (_%src-deps-scm275379%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps275377%_)))
                           (_%src-deps-scm275381%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?275346%_
                               _%src-deps-scm275379%_)))
                           (_%src-deps-scm275383%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm275381%_)))
                           (_%src-deps-c275385%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c275341%_
                                     _%src-deps-scm275383%_)))
                           (_%src-deps-o275387%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object275342%_
                                     _%src-deps-scm275383%_)))
                           (_%src-bin-scm275389%_
                            (gxc#find-static-module-file _%ctx275335%_))
                           (_%src-bin-scm275391%_
                            (path-expand _%src-bin-scm275389%_))
                           (_%src-bin-c275393%_
                            (_%replace-extension-with-c275341%_
                             _%src-bin-scm275391%_))
                           (_%src-bin-o275395%_
                            (_%replace-extension-with-object275342%_
                             _%src-bin-scm275391%_))
                           (_%output-bin275397%_
                            (path-expand _%output-bin275357%_))
                           (_%output-scm275399%_
                            (path-expand _%output-scm275356%_))
                           (_%output-c275401%_
                            (_%replace-extension-with-c275341%_
                             _%output-scm275399%_))
                           (_%output-o275403%_
                            (_%replace-extension-with-object275342%_
                             _%output-scm275399%_))
                           (_%output_-c275405%_
                            (_%replace-extension275340%_
                             _%output-scm275399%_
                             '"_.c"))
                           (_%output_-o275407%_
                            (_%replace-extension275340%_
                             _%output-scm275399%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts275409%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts275411%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts275413%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir275363%_))
                           (_%output-ld-opts275415%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts275417%_
                            (_%get-libgerbil-ld-opts275339%_
                             _%gerbil-libdir275361%_))
                           (_%rpath275419%_
                            (gxc#gerbil-rpath _%gerbil-libdir275361%_))
                           (_%builtin-modules275423%_
                            (_%remove-duplicates275348%_
                             (let ((__tmp275924
                                    (let ((__tmp275926
                                           (lambda (_%mod275421%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod275421%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp275925
                                           (cons _%ctx275335%_
                                                 _%deps275365%_)))
                                      (declare (not safe))
                                      (##map __tmp275926 __tmp275925))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp275924)))))
                      (letrec ((_%compile-obj275426%_
                                (lambda (_%scm-path275433%_ _%c-path275434%_)
                                  (let* ((_%o-path275436%_
                                          (_%replace-extension275340%_
                                           _%c-path275434%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock275438%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path275436%_
                                             '".lock")))
                                         (_%locked275440%_ '#f)
                                         (_%unlock275443%_
                                          (lambda ()
                                            (close-port _%locked275440%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock275438%_)))))
                                    (let _%retry275446%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock275438%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry275446%_))
                                          (begin
                                            (set! _%locked275440%_
                                                  (let* ((_%handler275449%_
                                                          false)
                                                         (_%thunk275453%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock275438%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler275458%_ _%handler275449%_)
                 (_%thunk275514%_ _%thunk275453%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler275458%_
                                                     _%thunk275514%_)))
                                            (if _%locked275440%_
                                                '#!void
                                                (_%retry275446%_)))))
                                    (let ((__tmp275928
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path275436%_)))
                                                     (not _%scm-path275433%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path275433%_
                                                        _%o-path275436%_)))
                                                 (let ((_%gsc-cc-opts275531%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp275929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp275930 (cons _%c-path275434%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts275413%_ __tmp275930))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts275531%_ __tmp275929)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp275927
                                           (lambda () (_%unlock275443%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp275928
                                       __tmp275927))))))
                        (let ((__tmp275931
                               (lambda ()
                                 (let ((__tmp275932
                                        (path-directory _%output-bin275397%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp275932)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp275931))
                        (gxc#with-output-to-scheme-file
                         _%output-scm275399%_
                         (lambda ()
                           (_%generate-stub275338%_
                            _%builtin-modules275423%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it275431%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp275933
                                                   (let ((__tmp275934
                                                          (let ((__tmp275935
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm275391%_
                               (cons _%output-scm275399%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm275383%_ __tmp275935))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c275373%_
                                                      __tmp275934))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts275409%_
                                               __tmp275933))))
                                     (let ((__tmp275938
                                            (let ((__tmp275939
                                                   (cons _%src-bin-scm275391%_
                                                         (cons _%output-scm275399%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm275383%_
                                               __tmp275939)))
                                           (__tmp275936
                                            (let ((__tmp275937
                                                   (cons _%src-bin-c275393%_
                                                         (cons _%output-c275401%_
                                                               (cons _%output_-c275405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c275385%_
                                               __tmp275937))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj275426%_
                                        __tmp275938
                                        __tmp275936))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin275397%_
                                                        (let ((__tmp275940
                                                               (cons _%src-bin-o275395%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o275403%_
                                   (cons _%output_-o275407%_
                                         (let ((__tmp275941
                                                (let ((__tmp275942
                                                       (let ((__tmp275944
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath275419%_ '())
                          '()))
                     (__tmp275943
                      (cons '"-L"
                            (cons _%gerbil-libdir275361%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts275417%_)))))
                 (declare (not safe))
                 (##append __tmp275944 __tmp275943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts275415%_
                                                   __tmp275942))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o275375%_
                                            __tmp275941)))))))
                  (declare (not safe))
                  (##append _%src-deps-o275387%_ __tmp275940))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp275945
                                            (cons _%output-c275401%_
                                                  (cons _%output_-c275405%_
                                                        (cons _%output-o275403%_
                                                              (cons _%output_-o275407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp275945)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it275431%_))
                                  (_%compile-it275431%_)))
                            '#!void))))))
          (let* ((_%output-bin275351%_
                  (gxc#compile-exe-output-file _%ctx275335%_ _%opts275336%_))
                 (_%output-scm275353%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin275351%_ '"__exe.scm"))))
            (_%compile-stub275349%_
             _%output-scm275353%_
             _%output-bin275351%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx275157%_ _%opts275158%_)
        (letrec ((_%reset-declare275160%_
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
                 (_%generate-stub275161%_
                  (lambda (_%deps275326%_)
                    (let ((_%mod-main275328%_
                           (gxc#find-runtime-symbol _%ctx275157%_ 'main))
                          (_%reset-decl275329%_ (_%reset-declare275160%_))
                          (_%user-decl275330%_ (_%user-declare275162%_)))
                      (for-each
                       (lambda (_%dep275332%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl275329%_))
                         (newline)
                         (if _%user-decl275330%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl275330%_))
                               (newline))
                             '#!void)
                         (let ((__tmp275946 (list 'include _%dep275332%_)))
                           (declare (not safe))
                           (##write __tmp275946))
                         (newline))
                       _%deps275326%_)
                      (let ((__tmp275947
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main275328%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp275947))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare275162%_
                  (lambda ()
                    (let* ((_%gsc-opts275231%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts275158%_)))
                           (_%gsc-prelude275233%_
                            (if _%gsc-opts275231%_
                                (member '"-prelude" _%gsc-opts275231%_)
                                '#f))
                           (_%gsc-prelude275235%_
                            (if _%gsc-prelude275233%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude275233%_)))
                                '#f)))
                      (let _%lp275238%_ ((_%rest275240%_
                                          (cons _%gsc-prelude275235%_ '()))
                                         (_%user-decls275241%_ '()))
                        (let* ((_%$%rest275242275250%_ _%rest275240%_)
                               (_%$%else275244275258%_
                                (lambda ()
                                  (if (null? _%user-decls275241%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls275241%_)))))
                               (_%$%K275246275314%_
                                (lambda (_%rest275261%_ _%expr275262%_)
                                  (let* ((_%$%expr275263275275%_
                                          _%expr275262%_)
                                         (_%$%else275266275283%_
                                          (lambda ()
                                            (_%lp275238%_
                                             _%rest275261%_
                                             _%user-decls275241%_))))
                                    (let ((_%$%K275271275304%_
                                           (lambda (_%decls275302%_)
                                             (_%lp275238%_
                                              _%rest275261%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls275241%_
                                                 _%decls275302%_)))))
                                          (_%$%K275268275289%_
                                           (lambda (_%exprs275287%_)
                                             (_%lp275238%_
                                              (append _%exprs275287%_
                                                      _%rest275261%_)
                                              _%user-decls275241%_))))
                                      (if (pair? _%$%expr275263275275%_)
                                          (let ((_%$%tl275273275309%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr275263275275%_)))
                                                (_%$%hd275272275307%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr275263275275%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd275272275307%_
                                                         'declare))
                                                (let ((_%decls275312%_
                                                       _%$%tl275273275309%_))
                                                  (_%$%K275271275304%_
                                                   _%decls275312%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd275272275307%_
                                                             'begin))
                                                    (let ((_%exprs275297%_
                                                           _%$%tl275273275309%_))
                                                      (_%$%K275268275289%_
                                                       _%exprs275297%_))
                                                    (_%$%else275266275283%_))))
                                          (_%$%else275266275283%_)))))))
                          (if (pair? _%$%rest275242275250%_)
                              (let ((_%$%hd275247275317%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest275242275250%_)))
                                    (_%$%tl275248275319%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest275242275250%_))))
                                (let* ((_%expr275322%_ _%$%hd275247275317%_)
                                       (_%rest275324%_ _%$%tl275248275319%_))
                                  (_%$%K275246275314%_
                                   _%rest275324%_
                                   _%expr275322%_)))
                              (_%$%else275244275258%_)))))))
                 (_%compile-stub275163%_
                  (lambda (_%output-scm275170%_ _%output-bin275171%_)
                    (let* ((_%gerbil-home275173%_
                            (let ((__tmp275948
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp275948)))
                           (_%gerbil-libdir275175%_
                            (path-expand '"lib" _%gerbil-home275173%_))
                           (_%runtime275177%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp275179%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home275173%_))
                           (_%include-gambit-sharp275181%_
                            (gxc#include-source _%gambit-sharp275179%_))
                           (_%bin-scm275183%_
                            (gxc#find-static-module-file _%ctx275157%_))
                           (_%deps275185%_
                            (gxc#find-runtime-module-deps _%ctx275157%_))
                           (_%deps275187%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps275185%_)))
                           (_%deps275192%_
                            (let ((__tmp275949
                                   (lambda (_%$obj275189%_)
                                     (not (gxc#file-empty? _%$obj275189%_)))))
                              (declare (not safe))
                              (##filter __tmp275949 _%deps275187%_)))
                           (_%deps275196%_
                            (let ((__tmp275950
                                   (lambda (_%f275194%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f275194%_
                                             _%runtime275177%_))))))
                              (declare (not safe))
                              (##filter __tmp275950 _%deps275192%_)))
                           (_%output-base275198%_
                            (let ((__tmp275951
                                   (path-strip-extension
                                    _%output-scm275170%_)))
                              (declare (not safe))
                              (##string-append __tmp275951)))
                           (_%output-c275200%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base275198%_ '".c")))
                           (_%output-o275202%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base275198%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_275204%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base275198%_ '"_.c")))
                           (_%output-o_275206%_
                            (let ((__tmp275952
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base275198%_
                               __tmp275952)))
                           (_%gsc-link-opts275208%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts275210%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts275212%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir275175%_)))
                           (_%output-ld-opts275214%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros275216%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp275181%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp275181%_
                                            '()))))
                           (_%gsc-link-opts275218%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts275208%_
                               _%gsc-gx-macros275216%_)))
                           (_%rpath275220%_
                            (gxc#gerbil-rpath _%gerbil-libdir275175%_))
                           (_%default-ld-options275222%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp275953
                             (lambda ()
                               (let ((__tmp275954
                                      (path-directory _%output-bin275171%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp275954)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp275953))
                      (gxc#with-output-to-scheme-file
                       _%output-scm275170%_
                       (lambda ()
                         (_%generate-stub275161%_
                          (let ((__tmp275955
                                 (let ((__tmp275956
                                        (cons _%bin-scm275183%_ '())))
                                   (declare (not safe))
                                   (##append _%deps275196%_ __tmp275956))))
                            (declare (not safe))
                            (##append _%runtime275177%_ __tmp275955)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it275228%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_275204%_
                                                      (let ((__tmp275957
                                                             (cons _%output-scm275170%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts275218%_ __tmp275957))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp275958
                                                 (let ((__tmp275959
                                                        (cons _%output-c275200%_
                                                              (cons _%output-c_275204%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts275212%_
                                                    __tmp275959))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts275210%_
                                             __tmp275958))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin275171%_
                                                      (cons _%output-o275202%_
                                                            (cons _%output-o_275206%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp275960
                                 (let ((__tmp275962
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath275220%_ '())
                                            '()))
                                       (__tmp275961
                                        (cons '"-L"
                                              (cons _%gerbil-libdir275175%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options275222%_)))))
                                   (declare (not safe))
                                   (##append __tmp275962 __tmp275961))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts275214%_
                             __tmp275960)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it275228%_))
                                (_%compile-it275228%_)))
                          '#!void)))))
          (let* ((_%output-bin275165%_
                  (gxc#compile-exe-output-file _%ctx275157%_ _%opts275158%_))
                 (_%output-scm275167%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin275165%_ '"__exe.scm"))))
            (_%compile-stub275163%_
             _%output-scm275167%_
             _%output-bin275165%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx275106%_ _%id275107%_)
        (let ((_%$e275153%_
               (let ((__tmp275964
                      (lambda (_%$%e275108275110%_)
                        (let* ((_%$%$%e275108275112275122%_
                                _%$%e275108275110%_)
                               (_%$%else275114275130%_ (lambda () '#f))
                               (_%$%K275116275134%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e275108275112275122%_
                                 'gx#module-export::t))
                              (let* ((_%$%e275117275137%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275108275112275122%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e275118275140%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275108275112275122%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e275119275143%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275108275112275122%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e275119275143%_ '0))
                                    (let ((_%$%e275120275146%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e275108275112275122%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e275120275146%_
                                               _%id275107%_)
                                          (_%$%K275116275134%_)
                                          (_%$%else275114275130%_)))
                                    (_%$%else275114275130%_)))
                              (_%$%else275114275130%_)))))
                     (__tmp275963
                      (##structure-ref
                       _%ctx275106%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp275964 __tmp275963))))
          (if _%$e275153%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e275153%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx275097%_ _%id275098%_)
        (let ((_%$e275100%_
               (gxc#find-export-binding _%ctx275097%_ _%id275098%_)))
          (if _%$e275100%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e275100%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id275098%_)))
                (##structure-ref _%$e275100%_ '1 gx#binding::t '#f))
              (let ((__tmp275965
                     (##structure-ref
                      _%ctx275097%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp275965
                 _%id275098%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx274963%_)
        (letrec* ((_%ht274965%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template274966%_
                   (lambda (_%in275042%_ _%phi275043%_)
                     (let ((_%iphi275045%_
                            (fx+ _%phi275043%_
                                 (##direct-structure-ref
                                  _%in275042%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports275046%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in275042%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp275048%_ ((_%rest275050%_ _%imports275046%_)
                                          (_%r275051%_ '()))
                         (let* ((_%$%rest275052275060%_ _%rest275050%_)
                                (_%$%else275054275068%_
                                 (lambda () _%r275051%_))
                                (_%$%K275056275085%_
                                 (lambda (_%rest275071%_ _%in275072%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in275072%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi275045%_))
                                           (_%lp275048%_
                                            _%rest275071%_
                                            (cons _%in275072%_ _%r275051%_))
                                           (_%lp275048%_
                                            _%rest275071%_
                                            _%r275051%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in275072%_
                                              'gx#module-import::t))
                                           (let ((_%iphi275076%_
                                                  (fx+ _%phi275043%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in275072%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi275076%_))
                                                 (_%lp275048%_
                                                  _%rest275071%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in275072%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r275051%_))
                                                 (_%lp275048%_
                                                  _%rest275071%_
                                                  _%r275051%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in275072%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi275079%_
                                                      (fx+ _%iphi275045%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in275072%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi275079%_))
                                                     (_%lp275048%_
                                                      _%rest275071%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in275072%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r275051%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi275079%_))
                                                         (_%lp275048%_
                                                          _%rest275071%_
                                                          (let ((__tmp275966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template274966%_
                          _%in275072%_
                          _%iphi275045%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r275051%_ __tmp275966)))
                 (_%lp275048%_ _%rest275071%_ _%r275051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp275048%_
                                                _%rest275071%_
                                                _%r275051%_)))))))
                           (if (pair? _%$%rest275052275060%_)
                               (let ((_%$%hd275057275088%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest275052275060%_)))
                                     (_%$%tl275058275090%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest275052275060%_))))
                                 (let* ((_%in275093%_ _%$%hd275057275088%_)
                                        (_%rest275095%_ _%$%tl275058275090%_))
                                   (_%$%K275056275085%_
                                    _%rest275095%_
                                    _%in275093%_)))
                               (_%$%else275054275068%_)))))))
                  (_%find-deps274967%_
                   (lambda (_%rest274975%_ _%deps274976%_)
                     (let* ((_%$%rest274977274985%_ _%rest274975%_)
                            (_%$%else274979274993%_ (lambda () _%deps274976%_))
                            (_%$%K274981275030%_
                             (lambda (_%rest274996%_ _%hd274997%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd274997%_
                                      'gx#module-context::t))
                                   (let ((_%id275000%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd274997%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports275001%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd274997%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht274965%_
                                            _%id275000%_))
                                         (_%find-deps274967%_
                                          _%rest274996%_
                                          _%deps274976%_)
                                         (let ((_%$e275004%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd274997%_))))
                                           (if _%$e275004%_
                                               (let ((_%xdeps275009%_
                                                      (_%find-deps274967%_
                                                       (cons _%$e275004%_
                                                             _%imports275001%_)
                                                       _%deps274976%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht274965%_
                                                    _%id275000%_
                                                    _%hd274997%_))
                                                 (_%find-deps274967%_
                                                  _%rest274996%_
                                                  (cons _%hd274997%_
                                                        _%xdeps275009%_)))
                                               (let ((_%xdeps275012%_
                                                      (_%find-deps274967%_
                                                       _%imports275001%_
                                                       _%deps274976%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht274965%_
                                                    _%id275000%_
                                                    _%hd274997%_))
                                                 (_%find-deps274967%_
                                                  _%rest274996%_
                                                  (cons _%hd274997%_
                                                        _%xdeps275012%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd274997%_
                                          'gx#prelude-context::t))
                                       (let ((_%id275015%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd274997%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht274965%_
                                                _%id275015%_))
                                             (_%find-deps274967%_
                                              _%rest274996%_
                                              _%deps274976%_)
                                             (let ((_%xdeps275019%_
                                                    (_%find-deps274967%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd274997%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps274976%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht274965%_
                                                      _%id275015%_))
                                                   (_%find-deps274967%_
                                                    _%rest274996%_
                                                    _%xdeps275019%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht274965%_
                                                        _%id275015%_
                                                        _%hd274997%_))
                                                     (_%find-deps274967%_
                                                      _%rest274996%_
                                                      (cons _%hd274997%_
                                                            _%xdeps275019%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd274997%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd274997%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps274967%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd274997%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest274996%_)
                                                _%deps274976%_)
                                               (_%find-deps274967%_
                                                _%rest274996%_
                                                _%deps274976%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd274997%_
                                                  'gx#module-export::t))
                                               (_%find-deps274967%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd274997%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest274996%_)
                                                _%deps274976%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd274997%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd274997%_ '2 '#f '#f)))
               (_%find-deps274967%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd274997%_ '1 '#f '#f))
                      _%rest274996%_)
                _%deps274976%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd274997%_ '2 '#f '#f)))
                   (let ((_%xdeps275026%_
                          (_%import-set-template274966%_ _%hd274997%_ '0)))
                     (_%find-deps274967%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest274996%_ _%xdeps275026%_))
                      _%deps274976%_))
                   (_%find-deps274967%_ _%rest274996%_ _%deps274976%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd274997%_))))))))))
                       (if (pair? _%$%rest274977274985%_)
                           (let ((_%$%hd274982275033%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest274977274985%_)))
                                 (_%$%tl274983275035%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest274977274985%_))))
                             (let* ((_%hd275038%_ _%$%hd274982275033%_)
                                    (_%rest275040%_ _%$%tl274983275035%_))
                               (_%$%K274981275030%_
                                _%rest275040%_
                                _%hd275038%_)))
                           (_%$%else274979274993%_))))))
          (let ((__tmp275967
                 (filter gx#expander-context-id
                         (_%find-deps274967%_
                          (let ((_%$e274969%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx274963%_))))
                            (if _%$e274969%_
                                (cons _%$e274969%_
                                      (##structure-ref
                                       _%ctx274963%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx274963%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp275967)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx274893%_)
        (let* ((_%context-id274895%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx274893%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx274893%_ '1 '#f '#f))
                    (string->symbol _%ctx274893%_)))
               (_%scm274897%_
                (let ((__tmp275968
                       (gxc#static-module-name _%context-id274895%_)))
                  (declare (not safe))
                  (##string-append __tmp275968 '".scm")))
               (_%dirs274899%_ (let () (declare (not safe)) (load-path)))
               (_%dirs274905%_
                (let ((_%user-libpath274901%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath274901%_
                      (let ((_%user-libpath274903%_
                             (path-expand '"lib" _%user-libpath274901%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath274903%_ _%dirs274899%_))
                            _%dirs274899%_
                            (cons _%user-libpath274903%_ _%dirs274899%_)))
                      _%dirs274899%_)))
               (_%dirs274915%_
                (let ((_%$e274907%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e274907%_
                      (cons _%$e274907%_ _%dirs274905%_)
                      _%dirs274905%_)))
               (_%dirs274921%_
                (let ((__tmp275969
                       (lambda (_%$%g274916274918%_)
                         (path-expand '"static" _%$%g274916274918%_))))
                  (declare (not safe))
                  (##map __tmp275969 _%dirs274915%_))))
          (let _%lp274924%_ ((_%rest274926%_ _%dirs274921%_))
            (let* ((_%$%rest274927274935%_ _%rest274926%_)
                   (_%$%else274929274943%_
                    (lambda ()
                      (let ((__tmp275970
                             (##structure-ref
                              _%ctx274893%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp275970
                         _%scm274897%_))))
                   (_%$%K274931274951%_
                    (lambda (_%rest274946%_ _%dir274947%_)
                      (let ((_%path274949%_
                             (path-expand _%scm274897%_ _%dir274947%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path274949%_))
                            _%path274949%_
                            (_%lp274924%_ _%rest274946%_))))))
              (if (pair? _%$%rest274927274935%_)
                  (let ((_%$%hd274932274954%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest274927274935%_)))
                        (_%$%tl274933274956%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest274927274935%_))))
                    (let* ((_%dir274959%_ _%$%hd274932274954%_)
                           (_%rest274961%_ _%$%tl274933274956%_))
                      (_%$%K274931274951%_ _%rest274961%_ _%dir274959%_)))
                  (_%$%else274929274943%_)))))))
    (define gxc#file-empty?
      (lambda (_%path274891%_)
        (zero? (let ((__tmp275971 (file-info _%path274891%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp275971)))))
    (define gxc#compile-top-module
      (lambda (_%ctx274882%_)
        (let ((__tmp275972
               (lambda ()
                 (let ((__tmp275973
                        (lambda ()
                          (let ((__tmp275974
                                 (lambda ()
                                   (let ((__tmp275976
                                          (lambda ()
                                            (let ((__tmp275978
                                                   (lambda ()
                                                     (let ((__tmp275980
                                                            (lambda ()
                                                              (let ((__tmp275981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx274882%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp275981))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp275982
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx274882%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp275982))
                          '#!void)
                      (gxc#collect-bindings _%ctx274882%_)
                      (gxc#compile-runtime-code _%ctx274882%_)
                      (gxc#compile-meta-code _%ctx274882%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx274882%_)
                          '#!void)))
                   (__tmp275979
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
                __tmp275980
                gxc#current-compile-runtime-names
                __tmp275979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp275977
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp275978
                                               gxc#current-compile-runtime-sections
                                               __tmp275977))))
                                         (__tmp275975
                                          (let ((__obj275871
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj275871))
                                            __obj275871)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp275976
                                      gxc#current-compile-symbol-table
                                      __tmp275975)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp275974
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp275973
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp275972
           gx#current-expander-context
           _%ctx274882%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx274880%_)
        (let ((__tmp275983
               (##structure-ref _%ctx274880%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp275983))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx274825%_)
        (letrec ((_%compile1274827%_
                  (lambda (_%ctx274869%_)
                    (let* ((_%code274871%_
                            (##structure-ref
                             _%ctx274869%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm274875%_
                            (let ((_%idstr274873%_
                                   (let ((__tmp275984
                                          (##structure-ref
                                           _%ctx274869%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp275984))))
                              (declare (not safe))
                              (##string-append _%idstr274873%_ '"~0")))
                           (_%rtc?274877%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code274871%_))))
                      (if _%rtc?274877%_
                          (let ((__tmp275985
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp275985
                             _%ctx274869%_
                             _%rtm274875%_))
                          '#!void)
                      (_%generate-runtime-code274829%_
                       _%ctx274869%_
                       _%code274871%_
                       (if _%rtc?274877%_ _%rtm274875%_ '#f)))))
                 (_%context-timestamp274828%_
                  (lambda (_%ctx274867%_)
                    (let ((__tmp275986
                           (let ((__tmp275987
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx274867%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp275987 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp275986))))
                 (_%generate-runtime-code274829%_
                  (lambda (_%ctx274836%_ _%code274837%_ _%rtm274838%_)
                    (let* ((_%runtime-code?274840%_ (if _%rtm274838%_ '#t '#f))
                           (_%lifts274842%_ (box '()))
                           (_%runtime-code274848%_
                            (if _%runtime-code?274840%_
                                (let ((__tmp275988
                                       (lambda ()
                                         (let ((__tmp275989
                                                (lambda ()
                                                  (let ((__tmp275990
                                                         (lambda ()
                                                           (let ((__tmp275992
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code274837%_))))
                         (__tmp275991
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp275992
                      gxc#current-compile-marks
                      __tmp275991)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp275990
                                                     gxc#current-compile-lift
                                                     _%lifts274842%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp275989
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp275988
                                   gx#current-expander-context
                                   _%ctx274836%_))
                                '#f))
                           (_%runtime-code274850%_
                            (if _%runtime-code?274840%_
                                (if (null? (unbox _%lifts274842%_))
                                    _%runtime-code274848%_
                                    (cons 'begin
                                          (let ((__tmp275994
                                                 (reverse (unbox _%lifts274842%_)))
                                                (__tmp275993
                                                 (cons _%runtime-code274848%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp275994
                                             __tmp275993))))
                                '#f))
                           (_%runtime-code274852%_
                            (if _%runtime-code?274840%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp274828%_
                                                   _%ctx274836%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code274850%_ '())))
                                '#f))
                           (_%loader-code274855%_
                            (let ((__tmp275995
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code274837%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp275995
                               gx#current-expander-context
                               _%ctx274836%_)))
                           (_%loader-code274857%_
                            (cons 'begin
                                  (cons _%loader-code274855%_
                                        (cons (if _%runtime-code?274840%_
                                                  (cons 'load-module
                                                        (cons _%rtm274838%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0274859%_
                            (gxc#compile-output-file _%ctx274836%_ '0 '".scm"))
                           (_%scmrt274861%_
                            (gxc#compile-output-file
                             _%ctx274836%_
                             '#f
                             '".scm"))
                           (_%scms274863%_
                            (gxc#compile-static-output-file _%ctx274836%_)))
                      (if _%runtime-code?274840%_
                          (gxc#compile-scm-file__0
                           _%scm0274859%_
                           _%runtime-code274852%_)
                          '#!void)
                      (let ((__tmp275996
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt274861%_
                                _%loader-code274857%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp275996
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms274863%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms274863%_))
                          '#!void)
                      (if _%runtime-code?274840%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0274859%_ _%scms274863%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms274863%_ void)))))))
          (let* ((_%all-modules274831%_
                  (cons _%ctx274825%_ (gxc#lift-nested-modules _%ctx274825%_)))
                 (__tmp275997
                  (lambda (_%ctx274833%_)
                    (let ((__tmp275998
                           (lambda () (_%compile1274827%_ _%ctx274833%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp275998
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp275997 _%all-modules274831%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx274724%_)
        (letrec ((_%compile-ssi274726%_
                  (lambda (_%code274793%_)
                    (let* ((_%path274795%_
                            (gxc#compile-output-file
                             _%ctx274724%_
                             '#f
                             '".ssi"))
                           (_%prelude274807%_
                            (let* ((_%super274797%_
                                    (##structure-ref
                                     _%ctx274724%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e274799%_
                                    (##structure-ref
                                     _%super274797%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e274799%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e274799%_))
                                  ':<root>)))
                           (_%ns274809%_
                            (##structure-ref
                             _%ctx274724%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr274811%_
                            (symbol->string
                             (##structure-ref
                              _%ctx274724%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg274819%_
                            (let ((_%$e274813%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr274811%_ '#\/))))
                              (if _%$e274813%_
                                  (let ((__tmp275999
                                         (substring
                                          _%idstr274811%_
                                          '0
                                          _%$e274813%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp275999))
                                  '#f)))
                           (_%rt274821%_
                            (let ((__tmp276000
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp276000 _%ctx274724%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path274795%_))
                      (gxc#with-output-to-scheme-file
                       _%path274795%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude274807%_))
                         (if _%pkg274819%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg274819%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns274809%_))
                         (newline)
                         (pretty-print _%code274793%_)
                         (if _%rt274821%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt274821%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi274727%_
                  (lambda (_%part274732%_)
                    (let* ((_%$%part274733274746%_ _%part274732%_)
                           (_%$%E274735274750%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part274733274746%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K274736274762%_
                            (lambda (_%code274753%_
                                     _%n274754%_
                                     _%phi274755%_
                                     _%phi-ctx274756%_)
                              (let ((_%code274760%_
                                     (let ((__tmp276001
                                            (lambda ()
                                              (let ((__tmp276002
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code274753%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp276002
                                                 gx#current-expander-phi
                                                 _%phi274755%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp276001
                                        gx#current-expander-context
                                        _%phi-ctx274756%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx274724%_
                                  _%n274754%_
                                  '".scm")
                                 _%code274760%_
                                 '#t)))))
                      (if (pair? _%$%part274733274746%_)
                          (let ((_%$%hd274737274765%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part274733274746%_)))
                                (_%$%tl274738274767%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part274733274746%_))))
                            (let ((_%phi-ctx274770%_ _%$%hd274737274765%_))
                              (if (pair? _%$%tl274738274767%_)
                                  (let ((_%$%hd274739274772%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274738274767%_)))
                                        (_%$%tl274740274774%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274738274767%_))))
                                    (let ((_%phi274777%_ _%$%hd274739274772%_))
                                      (if (pair? _%$%tl274740274774%_)
                                          (let ((_%$%hd274741274779%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl274740274774%_)))
                                                (_%$%tl274742274781%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl274740274774%_))))
                                            (let ((_%n274784%_
                                                   _%$%hd274741274779%_))
                                              (if (pair? _%$%tl274742274781%_)
                                                  (let ((_%$%hd274743274786%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl274742274781%_)))
                                                        (_%$%tl274744274788%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl274742274781%_))))
                                                    (let ((_%code274791%_
                                                           _%$%hd274743274786%_))
                                                      (if (null? _%$%tl274744274788%_)
                                                          (_%$%K274736274762%_
                                                           _%code274791%_
                                                           _%n274784%_
                                                           _%phi274777%_
                                                           _%phi-ctx274770%_)
                                                          (_%$%E274735274750%_))))
                                                  (_%$%E274735274750%_))))
                                          (_%$%E274735274750%_))))
                                  (_%$%E274735274750%_))))
                          (_%$%E274735274750%_))))))
          (let ((_g276003_ (gxc#generate-meta-code _%ctx274724%_)))
            (begin
              (let ((_g276004_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g276003_)
                           (##values-length _g276003_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g276004_ 2)))
                    (error "Context expects 2 values" _g276004_)))
              (let ((_%ssi-code274729%_
                     (let () (declare (not safe)) (##values-ref _g276003_ 0)))
                    (_%phi-code274730%_
                     (let () (declare (not safe)) (##values-ref _g276003_ 1))))
                (begin
                  (_%compile-ssi274726%_ _%ssi-code274729%_)
                  (for-each _%compile-phi274727%_ _%phi-code274730%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx274706%_)
        (let* ((_%path274708%_
                (gxc#compile-output-file _%ctx274706%_ '#f '".ssxi.ss"))
               (_%code274710%_
                (let ((__tmp276005
                       (##structure-ref
                        _%ctx274706%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp276005)))
               (_%idstr274712%_
                (symbol->string
                 (##structure-ref
                  _%ctx274706%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg274720%_
                (let ((_%$e274714%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr274712%_ '#\/))))
                  (if _%$e274714%_
                      (let ((__tmp276006
                             (substring _%idstr274712%_ '0 _%$e274714%_)))
                        (declare (not safe))
                        (##string->symbol __tmp276006))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path274708%_))
          (gxc#with-output-to-scheme-file
           _%path274708%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg274720%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg274720%_))
                 '#!void)
             (newline)
             (pretty-print _%code274710%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx274699%_)
        (let* ((_%state274701%_
                (let ((__obj275872
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj275872 _%ctx274699%_))
                  __obj275872))
               (_%ssi-code274703%_
                (let ((__tmp276007
                       (##structure-ref
                        _%ctx274699%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state274701%_
                   __tmp276007))))
          (values _%ssi-code274703%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state274701%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx274691%_)
        (let* ((_%lifts274693%_ (box '()))
               (__tmp276008
                (lambda ()
                  (let ((__tmp276010
                         (lambda ()
                           (let ((_%code274697%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx274691%_))))
                             (if (null? (unbox _%lifts274693%_))
                                 _%code274697%_
                                 (cons 'begin
                                       (let ((__tmp276012
                                              (reverse (unbox _%lifts274693%_)))
                                             (__tmp276011
                                              (cons _%code274697%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp276012
                                          __tmp276011)))))))
                        (__tmp276009
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp276010
                     gxc#current-compile-marks
                     __tmp276009)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp276008
           gxc#current-compile-lift
           _%lifts274693%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx274687%_)
        (let ((_%modules274689%_ (box '())))
          (let ((__tmp276013
                 (##structure-ref _%ctx274687%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules274689%_ __tmp276013))
          (reverse (unbox _%modules274689%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path274667%_ _%code274668%_ _%phi?274669%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path274667%_))
        (gxc#with-output-to-scheme-file
         _%path274667%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?274669%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code274668%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it274673%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path274667%_ _%phi?274669%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp276014 (list 'compile-file _%path274667%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it274673%_ __tmp276014))
                  (_%compile-it274673%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path274678%_ _%code274679%_)
        (let ((_%phi?274681%_ '#f))
          (gxc#compile-scm-file__%
           _%path274678%_
           _%code274679%_
           _%phi?274681%_))))
    (define gxc#compile-scm-file
      (lambda _g276015_
        (let ((_g276016_ (let () (declare (not safe)) (##length _g276015_))))
          (cond ((let () (declare (not safe)) (##fx= _g276016_ 2))
                 (apply gxc#compile-scm-file__0 _g276015_))
                ((let () (declare (not safe)) (##fx= _g276016_ 3))
                 (apply gxc#compile-scm-file__% _g276015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g276015_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?274568%_)
        (let _%lp274570%_ ((_%rest274572%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts274573%_ '()))
          (let* ((_%$%rest274574274594%_ _%rest274572%_)
                 (_%$%else274578274602%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts274573%_)))
                        (reverse _%opts274573%_)))))
            (let ((_%$%K274588274645%_
                   (lambda (_%rest274643%_)
                     (_%lp274570%_ _%rest274643%_ _%opts274573%_)))
                  (_%$%K274583274627%_
                   (lambda (_%rest274625%_)
                     (_%lp274570%_ _%rest274625%_ _%opts274573%_)))
                  (_%$%K274580274609%_
                   (lambda (_%rest274606%_ _%opt274607%_)
                     (_%lp274570%_
                      _%rest274606%_
                      (cons _%opt274607%_ _%opts274573%_)))))
              (if (pair? _%$%rest274574274594%_)
                  (let ((_%$%tl274590274650%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest274574274594%_)))
                        (_%$%hd274589274648%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest274574274594%_))))
                    (if (equal? _%$%hd274589274648%_ '"-cc-options")
                        (if (pair? _%$%tl274590274650%_)
                            (let* ((_%$%tl274592274653%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl274590274650%_)))
                                   (_%rest274656%_ _%$%tl274592274653%_))
                              (_%$%K274588274645%_ _%rest274656%_))
                            (let ((_%opt274617%_ _%$%hd274589274648%_)
                                  (_%rest274619%_ _%$%tl274590274650%_))
                              (_%$%K274580274609%_
                               _%rest274619%_
                               _%opt274617%_)))
                        (if (equal? _%$%hd274589274648%_ '"-ld-options")
                            (if (pair? _%$%tl274590274650%_)
                                (let* ((_%$%tl274587274635%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl274590274650%_)))
                                       (_%rest274638%_ _%$%tl274587274635%_))
                                  (_%$%K274583274627%_ _%rest274638%_))
                                (let ((_%opt274617%_ _%$%hd274589274648%_)
                                      (_%rest274619%_ _%$%tl274590274650%_))
                                  (_%$%K274580274609%_
                                   _%rest274619%_
                                   _%opt274617%_)))
                            (let ((_%opt274617%_ _%$%hd274589274648%_)
                                  (_%rest274619%_ _%$%tl274590274650%_))
                              (_%$%K274580274609%_
                               _%rest274619%_
                               _%opt274617%_)))))
                  (_%$%else274578274602%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?274662%_ '#f)) (gxc#gsc-link-options__% _%phi?274662%_))))
    (define gxc#gsc-link-options
      (lambda _g276017_
        (let ((_g276018_ (let () (declare (not safe)) (##length _g276017_))))
          (cond ((let () (declare (not safe)) (##fx= _g276018_ 0))
                 (apply gxc#gsc-link-options__0 _g276017_))
                ((let () (declare (not safe)) (##fx= _g276018_ 1))
                 (apply gxc#gsc-link-options__% _g276017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g276017_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords274418%_ _%$%static?274414274419%_ _%phi?274420%_)
        (let ((_%static?274422%_
               (if (eq? _%$%static?274414274419%_ absent-value)
                   '#f
                   _%$%static?274414274419%_)))
          (if _%phi?274420%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp274424%_ ((_%rest274426%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts274427%_ '()))
                (let* ((_%$%rest274428274454%_ _%rest274426%_)
                       (_%$%else274433274462%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts274427%_)))
                              (reverse! _%opts274427%_)))))
                  (let ((_%$%K274448274525%_
                         (lambda (_%rest274522%_ _%opt274523%_)
                           (if _%static?274422%_
                               (_%lp274424%_
                                _%rest274522%_
                                (cons _%opt274523%_
                                      (cons '"-cc-options" _%opts274427%_)))
                               (_%lp274424%_ _%rest274522%_ _%opts274427%_))))
                        (_%$%K274443274502%_
                         (lambda (_%rest274499%_ _%opt274500%_)
                           (_%lp274424%_
                            _%rest274499%_
                            (cons _%opt274500%_
                                  (cons '"-cc-options" _%opts274427%_)))))
                        (_%$%K274438274482%_
                         (lambda (_%rest274480%_)
                           (_%lp274424%_ _%rest274480%_ _%opts274427%_)))
                        (_%$%K274435274468%_
                         (lambda (_%rest274466%_)
                           (_%lp274424%_ _%rest274466%_ _%opts274427%_))))
                    (if (pair? _%$%rest274428274454%_)
                        (let ((_%$%tl274450274530%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest274428274454%_)))
                              (_%$%hd274449274528%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest274428274454%_))))
                          (if (equal? _%$%hd274449274528%_ '"-cc-options")
                              (if (pair? _%$%tl274450274530%_)
                                  (let ((_%$%tl274452274535%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274450274530%_)))
                                        (_%$%hd274451274533%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274450274530%_))))
                                    (if (equal? _%$%hd274451274533%_
                                                '"-Bstatic")
                                        (let ((_%opt274538%_
                                               _%$%hd274451274533%_)
                                              (_%rest274540%_
                                               _%$%tl274452274535%_))
                                          (_%$%K274448274525%_
                                           _%rest274540%_
                                           _%opt274538%_))
                                        (let ((_%opt274515%_
                                               _%$%hd274451274533%_)
                                              (_%rest274517%_
                                               _%$%tl274452274535%_))
                                          (_%$%K274443274502%_
                                           _%rest274517%_
                                           _%opt274515%_))))
                                  (let ((_%rest274474%_ _%$%tl274450274530%_))
                                    (_%$%K274435274468%_ _%rest274474%_)))
                              (if (equal? _%$%hd274449274528%_ '"-ld-options")
                                  (if (pair? _%$%tl274450274530%_)
                                      (let* ((_%$%tl274442274490%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl274450274530%_)))
                                             (_%rest274493%_
                                              _%$%tl274442274490%_))
                                        (_%$%K274438274482%_ _%rest274493%_))
                                      (let ((_%rest274474%_
                                             _%$%tl274450274530%_))
                                        (_%$%K274435274468%_ _%rest274474%_)))
                                  (let ((_%rest274474%_ _%$%tl274450274530%_))
                                    (_%$%K274435274468%_ _%rest274474%_)))))
                        (_%$%else274433274462%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords274545%_ _%$%static?274414274546%_)
        (let ((_%phi?274548%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords274545%_
           _%$%static?274414274546%_
           _%phi?274548%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g276019_
        (let ((_g276020_ (let () (declare (not safe)) (##length _g276019_))))
          (cond ((let () (declare (not safe)) (##fx= _g276020_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g276019_))
                ((let () (declare (not safe)) (##fx= _g276020_ 3))
                 (apply gxc#gsc-cc-options__%__% _g276019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g276019_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords274557%_ . _%args274558%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords274557%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274557%_
                  'static:
                  absent-value))
               _%args274558%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args274415274564%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args274415274564%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords274264%_ _%$%static?274260274265%_ _%phi?274266%_)
        (let ((_%static?274268%_
               (if (eq? _%$%static?274260274265%_ absent-value)
                   '#f
                   _%$%static?274260274265%_)))
          (if _%phi?274266%_
              '()
              (let _%lp274270%_ ((_%rest274272%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts274273%_ '()))
                (let* ((_%$%rest274274274300%_ _%rest274272%_)
                       (_%$%else274279274308%_
                        (lambda () (reverse! _%opts274273%_))))
                  (let ((_%$%K274294274371%_
                         (lambda (_%rest274368%_ _%opt274369%_)
                           (if _%static?274268%_
                               (_%lp274270%_
                                _%rest274368%_
                                (cons _%opt274369%_
                                      (cons '"-ld-options" _%opts274273%_)))
                               (_%lp274270%_ _%rest274368%_ _%opts274273%_))))
                        (_%$%K274289274348%_
                         (lambda (_%rest274345%_ _%opt274346%_)
                           (_%lp274270%_
                            _%rest274345%_
                            (cons _%opt274346%_
                                  (cons '"-ld-options" _%opts274273%_)))))
                        (_%$%K274284274328%_
                         (lambda (_%rest274326%_)
                           (_%lp274270%_ _%rest274326%_ _%opts274273%_)))
                        (_%$%K274281274314%_
                         (lambda (_%rest274312%_)
                           (_%lp274270%_ _%rest274312%_ _%opts274273%_))))
                    (if (pair? _%$%rest274274274300%_)
                        (let ((_%$%tl274296274376%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest274274274300%_)))
                              (_%$%hd274295274374%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest274274274300%_))))
                          (if (equal? _%$%hd274295274374%_ '"-ld-options")
                              (if (pair? _%$%tl274296274376%_)
                                  (let ((_%$%tl274298274381%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274296274376%_)))
                                        (_%$%hd274297274379%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274296274376%_))))
                                    (if (equal? _%$%hd274297274379%_
                                                '"-static")
                                        (let ((_%opt274384%_
                                               _%$%hd274297274379%_)
                                              (_%rest274386%_
                                               _%$%tl274298274381%_))
                                          (_%$%K274294274371%_
                                           _%rest274386%_
                                           _%opt274384%_))
                                        (let ((_%opt274361%_
                                               _%$%hd274297274379%_)
                                              (_%rest274363%_
                                               _%$%tl274298274381%_))
                                          (_%$%K274289274348%_
                                           _%rest274363%_
                                           _%opt274361%_))))
                                  (let ((_%rest274320%_ _%$%tl274296274376%_))
                                    (_%$%K274281274314%_ _%rest274320%_)))
                              (if (equal? _%$%hd274295274374%_ '"-cc-options")
                                  (if (pair? _%$%tl274296274376%_)
                                      (let* ((_%$%tl274288274336%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl274296274376%_)))
                                             (_%rest274339%_
                                              _%$%tl274288274336%_))
                                        (_%$%K274284274328%_ _%rest274339%_))
                                      (let ((_%rest274320%_
                                             _%$%tl274296274376%_))
                                        (_%$%K274281274314%_ _%rest274320%_)))
                                  (let ((_%rest274320%_ _%$%tl274296274376%_))
                                    (_%$%K274281274314%_ _%rest274320%_)))))
                        (_%$%else274279274308%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords274391%_ _%$%static?274260274392%_)
        (let ((_%phi?274394%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords274391%_
           _%$%static?274260274392%_
           _%phi?274394%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g276021_
        (let ((_g276022_ (let () (declare (not safe)) (##length _g276021_))))
          (cond ((let () (declare (not safe)) (##fx= _g276022_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g276021_))
                ((let () (declare (not safe)) (##fx= _g276022_ 3))
                 (apply gxc#gsc-ld-options__%__% _g276021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g276021_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords274403%_ . _%args274404%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords274403%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274403%_
                  'static:
                  absent-value))
               _%args274404%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args274261274410%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args274261274410%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir274255%_)
        (let ((_%user-staticdir274257%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir274255%_
                       '" -I "
                       _%user-staticdir274257%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp274167%_ ((_%rest274169%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts274170%_ '()))
          (let* ((_%$%rest274171274191%_ _%rest274169%_)
                 (_%$%else274175274199%_ (lambda () _%opts274170%_)))
            (let ((_%$%K274185274242%_
                   (lambda (_%rest274240%_)
                     (_%lp274167%_ _%rest274240%_ _%opts274170%_)))
                  (_%$%K274180274220%_
                   (lambda (_%rest274217%_ _%opt274218%_)
                     (_%lp274167%_
                      _%rest274217%_
                      (let ((__tmp276023
                             (let ((__tmp276024
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt274218%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp276024))))
                        (declare (not safe))
                        (##append _%opts274170%_ __tmp276023)))))
                  (_%$%K274177274205%_
                   (lambda (_%rest274203%_)
                     (_%lp274167%_ _%rest274203%_ _%opts274170%_))))
              (if (pair? _%$%rest274171274191%_)
                  (let ((_%$%tl274187274247%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest274171274191%_)))
                        (_%$%hd274186274245%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest274171274191%_))))
                    (if (equal? _%$%hd274186274245%_ '"-cc-options")
                        (if (pair? _%$%tl274187274247%_)
                            (let* ((_%$%tl274189274250%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl274187274247%_)))
                                   (_%rest274253%_ _%$%tl274189274250%_))
                              (_%$%K274185274242%_ _%rest274253%_))
                            (let ((_%rest274211%_ _%$%tl274187274247%_))
                              (_%$%K274177274205%_ _%rest274211%_)))
                        (if (equal? _%$%hd274186274245%_ '"-ld-options")
                            (if (pair? _%$%tl274187274247%_)
                                (let ((_%$%tl274184274230%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl274187274247%_)))
                                      (_%$%hd274183274228%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl274187274247%_))))
                                  (let ((_%opt274233%_ _%$%hd274183274228%_)
                                        (_%rest274235%_ _%$%tl274184274230%_))
                                    (_%$%K274180274220%_
                                     _%rest274235%_
                                     _%opt274233%_)))
                                (let ((_%rest274211%_ _%$%tl274187274247%_))
                                  (_%$%K274177274205%_ _%rest274211%_)))
                            (let ((_%rest274211%_ _%$%tl274187274247%_))
                              (_%$%K274177274205%_ _%rest274211%_)))))
                  (_%$%else274175274199%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str274164%_)
        (not (let () (declare (not safe)) (string-empty? _%str274164%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path274157%_ _%phi?274158%_)
        (let ((_%gsc-link-opts274160%_
               (gxc#gsc-link-options__% _%phi?274158%_))
              (_%gsc-cc-opts274161%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?274158%_))
              (_%gsc-ld-opts274162%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?274158%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp276025
                  (let ((__tmp276026
                         (let ((__tmp276027 (cons _%path274157%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts274160%_ __tmp276027))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts274162%_ __tmp276026))))
             (declare (not safe))
             (##append _%gsc-cc-opts274161%_ __tmp276025))))))
    (define gxc#compile-output-file
      (lambda (_%ctx274123%_ _%n274124%_ _%ext274125%_)
        (letrec ((_%module-relative-path274127%_
                  (lambda (_%ctx274155%_)
                    (path-strip-directory
                     (let ((__tmp276028
                            (##structure-ref
                             _%ctx274155%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp276028)))))
                 (_%module-source-directory274128%_
                  (lambda (_%ctx274151%_)
                    (path-directory
                     (let ((_%mpath274153%_
                            (##structure-ref
                             _%ctx274151%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath274153%_)
                           _%mpath274153%_
                           (last _%mpath274153%_))))))
                 (_%section-string274129%_
                  (lambda (_%n274145%_)
                    (if (number? _%n274145%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n274145%_))
                        (if (symbol? _%n274145%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n274145%_))
                            (if (string? _%n274145%_)
                                _%n274145%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n274145%_)))))))
                 (_%file-name274130%_
                  (lambda (_%path274143%_)
                    (if _%n274124%_
                        (string-append
                         _%path274143%_
                         '"~"
                         (_%section-string274129%_ _%n274124%_)
                         _%ext274125%_)
                        (string-append _%path274143%_ _%ext274125%_))))
                 (_%file-path274131%_
                  (lambda ()
                    (let ((_%$e274137%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e274137%_
                          (path-expand
                           (_%file-name274130%_
                            (let ((__tmp276029
                                   (##structure-ref
                                    _%ctx274123%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp276029)))
                           _%$e274137%_)
                          (path-expand
                           (_%file-name274130%_
                            (_%module-relative-path274127%_ _%ctx274123%_))
                           (_%module-source-directory274128%_
                            _%ctx274123%_)))))))
          (let ((_%path274133%_ (_%file-path274131%_)))
            (let ((__tmp276030
                   (lambda ()
                     (let ((__tmp276031 (path-directory _%path274133%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp276031)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp276030))
            _%path274133%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx274104%_)
        (letrec ((_%file-name274106%_
                  (lambda (_%id274121%_)
                    (let ((__tmp276032 (gxc#static-module-name _%id274121%_)))
                      (declare (not safe))
                      (##string-append __tmp276032 '".scm"))))
                 (_%file-path274107%_
                  (lambda ()
                    (let* ((_%file274113%_
                            (_%file-name274106%_
                             (##structure-ref
                              _%ctx274104%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e274115%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e274115%_
                          (path-expand
                           _%file274113%_
                           (path-expand '"static" _%$e274115%_))
                          (path-expand _%file274113%_ '"static"))))))
          (let ((_%path274109%_ (_%file-path274107%_)))
            (let ((__tmp276033
                   (lambda ()
                     (let ((__tmp276034 (path-directory _%path274109%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp276034)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp276033))
            _%path274109%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx274097%_ _%opts274098%_)
        (let ((_%$e274100%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts274098%_))))
          (if _%$e274100%_
              _%$e274100%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx274097%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr274087%_)
        (if (string? _%idstr274087%_)
            (let* ((_%str274090%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr274087%_)))
                   (_%strs274092%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str274090%_ '#\/))))
              (declare (not safe))
              (string-join _%strs274092%_ '"__"))
            (if (symbol? _%idstr274087%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr274087%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr274087%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp276035
               (let ((__tmp276036 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp276036 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp276035))))
    (define gxc#invoke__%
      (lambda (_%@@keywords274053%_
               _%$%stdout-redirection274049274054%_
               _%$%stderr-redirection274050274055%_
               _%program274056%_
               _%args274057%_)
        (let* ((_%stdout-redirection274059%_
                (if (eq? _%$%stdout-redirection274049274054%_ absent-value)
                    '#f
                    _%$%stdout-redirection274049274054%_))
               (_%stderr-redirection274061%_
                (if (eq? _%$%stderr-redirection274050274055%_ absent-value)
                    '#f
                    _%$%stderr-redirection274050274055%_)))
          (let ((__tmp276037 (cons _%program274056%_ _%args274057%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp276037))
          (let* ((_%proc274063%_
                  (open-process
                   (cons 'path:
                         (cons _%program274056%_
                               (cons 'arguments:
                                     (cons _%args274057%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection274059%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection274061%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output274068%_
                  (if (or _%stdout-redirection274059%_
                          _%stderr-redirection274061%_)
                      (read-line _%proc274063%_ '#f)
                      '#f))
                 (_%status274071%_ (process-status _%proc274063%_)))
            (let () (declare (not safe)) (##close-port _%proc274063%_))
            (if (zero? _%status274071%_)
                '#!void
                (begin
                  (display _%output274068%_)
                  (let ((__tmp276038 (cons _%program274056%_ _%args274057%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp276038
                     _%status274071%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords274076%_ . _%args274077%_)
        (apply gxc#invoke__%
               _%@@keywords274076%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274076%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274076%_
                  'stderr-redirection:
                  absent-value))
               _%args274077%_)))
    (define gxc#invoke
      (lambda _%$%args274051274083%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args274051274083%_)))))
