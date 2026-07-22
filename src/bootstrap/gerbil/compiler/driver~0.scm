(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1784758133)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp274095 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp274095))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp274096 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp274096))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path273952%_ _%fun273953%_)
        (with-output-to-file
         (cons 'path: (cons _%path273952%_ gxc#scheme-file-settings))
         _%fun273953%_)))
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
      (lambda (_%gerbil-libdir273947%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir273947%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path273945%_)
        (let ((__tmp274097 (object->string _%path273945%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp274097 '")"))))
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
      (lambda (_%dir273943%_) (delete-file-or-directory _%dir273943%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath273886%_ _%opts273887%_)
        (if (string? _%srcpath273886%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath273886%_)))
        (let* ((_%outdir273889%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts273887%_)))
               (_%invoke-gsc?273891%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts273887%_)))
               (_%target273896%_
                (let ((_%$e273893%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts273887%_))))
                  (if _%$e273893%_ _%$e273893%_ 'C)))
               (_%gsc-options273901%_
                (append (cons '"-target"
                              (cons (symbol->string _%target273896%_) '()))
                        (let ((_%$e273898%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts273887%_))))
                          (if _%$e273898%_ _%$e273898%_ '()))))
               (_%keep-scm?273903%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts273887%_)))
               (_%verbosity273905%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts273887%_)))
               (_%optimize273907%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts273887%_)))
               (_%debug273909%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts273887%_)))
               (_%gen-ssxi273911%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts273887%_)))
               (_%parallel?273913%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts273887%_))))
          (if _%outdir273889%_
              (let ((__tmp274098
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir273889%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp274098))
              '#!void)
          (if _%optimize273907%_
              (let ((__tmp274099
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp274099))
              '#!void)
          (let ((__tmp274100
                 (lambda ()
                   (let ((__tmp274101
                          (lambda ()
                            (let ((__tmp274102
                                   (lambda ()
                                     (let ((__tmp274103
                                            (lambda ()
                                              (let ((__tmp274104
                                                     (lambda ()
                                                       (let ((__tmp274105
                                                              (lambda ()
                                                                (let ((__tmp274106
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp274107
                                        (lambda ()
                                          (let ((__tmp274109
                                                 (lambda ()
                                                   (let ((__tmp274111
                                                          (lambda ()
                                                            (let ((__tmp274113
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp274114
                                    (lambda ()
                                      (let ((__tmp274115
                                             (lambda ()
                                               (let ((__tmp274116
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath273886%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp274117
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath273886%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp274117))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp274116
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp274115
                                         gx#current-compilation-target
                                         _%target273896%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp274114
                                gxc#current-compile-parallel
                                _%parallel?273913%_))))
                          (__tmp274112
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp274113
                       gxc#current-compile-identifiers
                       __tmp274112))))
                 (__tmp274110 (list (list 'compile-module _%srcpath273886%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp274111
                                                      gxc#current-compile-context
                                                      __tmp274110))))
                                                (__tmp274108
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp274109
                                             gxc#current-compile-timestamp
                                             __tmp274108)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp274107
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi273911%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp274106
                           gxc#current-compile-debug
                           _%debug273909%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp274105
                  gxc#current-compile-optimize
                  _%optimize273907%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp274104
                                                 gxc#current-compile-verbose
                                                 _%verbosity273905%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp274103
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?273903%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp274102
                               gxc#current-compile-gsc-options
                               _%gsc-options273901%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp274101
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?273891%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp274100
             gxc#current-compile-output-dir
             _%outdir273889%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath273936%_)
        (let ((_%opts273938%_ '()))
          (gxc#compile-module__% _%srcpath273936%_ _%opts273938%_))))
    (define gxc#compile-module
      (lambda _g274118_
        (let ((_g274119_ (let () (declare (not safe)) (##length _g274118_))))
          (cond ((let () (declare (not safe)) (##fx= _g274119_ 1))
                 (apply gxc#compile-module__0 _g274118_))
                ((let () (declare (not safe)) (##fx= _g274119_ 2))
                 (apply gxc#compile-module__% _g274118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g274118_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath273835%_ _%opts273836%_)
        (if (string? _%srcpath273835%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath273835%_)))
        (let* ((_%outdir273838%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts273836%_)))
               (_%invoke-gsc?273840%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts273836%_)))
               (_%target273845%_
                (let ((_%$e273842%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts273836%_))))
                  (if _%$e273842%_ _%$e273842%_ 'C)))
               (_%gsc-options273850%_
                (append (cons '"-target"
                              (cons (symbol->string _%target273845%_) '()))
                        (let ((_%$e273847%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts273836%_))))
                          (if _%$e273847%_ _%$e273847%_ '()))))
               (_%keep-scm?273852%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts273836%_)))
               (_%verbosity273854%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts273836%_)))
               (_%debug273856%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts273836%_)))
               (_%parallel?273858%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts273836%_))))
          (if _%outdir273838%_
              (let ((__tmp274120
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir273838%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp274120))
              '#!void)
          (let ((__tmp274121
                 (lambda ()
                   (let ((__tmp274122
                          (lambda ()
                            (let ((__tmp274123
                                   (lambda ()
                                     (let ((__tmp274124
                                            (lambda ()
                                              (let ((__tmp274125
                                                     (lambda ()
                                                       (let ((__tmp274126
                                                              (lambda ()
                                                                (let ((__tmp274127
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp274129
                                        (lambda ()
                                          (let ((__tmp274131
                                                 (lambda ()
                                                   (let ((__tmp274133
                                                          (lambda ()
                                                            (let ((__tmp274134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp274135
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath273835%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp274136
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath273835%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp274136))
                                       _%opts273836%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp274135
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp274134
                       gxc#current-compile-parallel
                       _%parallel?273858%_))))
                 (__tmp274132
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp274133
                                                      gxc#current-compile-identifiers
                                                      __tmp274132))))
                                                (__tmp274130
                                                 (list (list 'compile-exe
                                                             _%srcpath273835%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp274131
                                             gxc#current-compile-context
                                             __tmp274130))))
                                       (__tmp274128 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp274129
                                    gxc#current-compile-timestamp
                                    __tmp274128)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp274127
                           gxc#current-compile-debug
                           _%debug273856%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp274126
                  gxc#current-compile-verbose
                  _%verbosity273854%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp274125
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?273852%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp274124
                                        gxc#current-compile-gsc-options
                                        _%gsc-options273850%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp274123
                               gx#current-compilation-target
                               _%target273845%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp274122
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?273840%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp274121
             gxc#current-compile-output-dir
             _%outdir273838%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath273878%_)
        (let ((_%opts273880%_ '()))
          (gxc#compile-exe__% _%srcpath273878%_ _%opts273880%_))))
    (define gxc#compile-exe
      (lambda _g274137_
        (let ((_g274138_ (let () (declare (not safe)) (##length _g274137_))))
          (cond ((let () (declare (not safe)) (##fx= _g274138_ 1))
                 (apply gxc#compile-exe__0 _g274137_))
                ((let () (declare (not safe)) (##fx= _g274138_ 2))
                 (apply gxc#compile-exe__% _g274137_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g274137_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx273831%_ _%opts273832%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts273832%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx273831%_
             _%opts273832%_)
            (gxc#compile-executable-module/separate
             _%ctx273831%_
             _%opts273832%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx273557%_ _%opts273558%_)
        (letrec ((_%generate-stub273560%_
                  (lambda (_%builtin-modules273827%_)
                    (let ((_%mod-main273829%_
                           (gxc#find-runtime-symbol _%ctx273557%_ 'main)))
                      (let ((__tmp274139
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules273827%_))))
                        (declare (not safe))
                        (##write __tmp274139))
                      (let ((__tmp274140
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main273829%_
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
                        (##write __tmp274140))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts273561%_
                  (lambda (_%gerbil-libdir273825%_)
                    (let ((__tmp274141
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir273825%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp274141 read))))
                 (_%replace-extension273562%_
                  (lambda (_%path273822%_ _%ext273823%_)
                    (string-append
                     (path-strip-extension _%path273822%_)
                     _%ext273823%_)))
                 (_%replace-extension-with-c273563%_
                  (lambda (_%path273820%_)
                    (_%replace-extension273562%_ _%path273820%_ '".c")))
                 (_%replace-extension-with-object273564%_
                  (lambda (_%path273818%_)
                    (_%replace-extension273562%_
                     _%path273818%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?273565%_
                  (lambda (_%ctx273816%_)
                    (if (_%exclude-module?273567%_ _%ctx273816%_)
                        '#f
                        (not (_%libgerbil-module?273566%_ _%ctx273816%_)))))
                 (_%libgerbil-module?273566%_
                  (lambda (_%ctx273809%_)
                    (let ((_%id-str273811%_
                           (symbol->string
                            (##structure-ref
                             _%ctx273809%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?273567%_ _%id-str273811%_)
                          '#f
                          (let ((_%$e273813%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str273811%_))))
                            (if _%$e273813%_
                                _%$e273813%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str273811%_))))))))
                 (_%exclude-module?273567%_
                  (lambda (_%ctx-or-str273805%_)
                    (let ((_%str273807%_
                           (if (string? _%ctx-or-str273805%_)
                               _%ctx-or-str273805%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str273805%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str273807%_))))
                 (_%not-file-empty?273568%_
                  (lambda (_%path273803%_)
                    (not (gxc#file-empty? _%path273803%_))))
                 (_%fold-libgerbil-runtime-scm273569%_
                  (lambda (_%gerbil-staticdir273796%_ _%libgerbil-scm273797%_)
                    (let ((_%gerbil-runtime-scm273801%_
                           (let ((__tmp274142
                                  (lambda (_%rtm273799%_)
                                    (path-expand
                                     (let ((__tmp274143
                                            (let ((__tmp274144
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm273799%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp274144
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp274143 '".scm"))
                                     _%gerbil-staticdir273796%_))))
                             (declare (not safe))
                             (##map __tmp274142 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates273570%_
                       (append _%gerbil-runtime-scm273801%_
                               _%libgerbil-scm273797%_)))))
                 (_%remove-duplicates273570%_
                  (lambda (_%strlst273756%_)
                    (let _%loop273758%_ ((_%rest273760%_ _%strlst273756%_)
                                         (_%result273761%_ '()))
                      (let* ((_%$%rest273762273770%_ _%rest273760%_)
                             (_%$%else273764273778%_
                              (lambda () (reverse! _%result273761%_)))
                             (_%$%K273766273784%_
                              (lambda (_%rest273781%_ _%path273782%_)
                                (if (member _%path273782%_ _%result273761%_)
                                    (_%loop273758%_
                                     _%rest273781%_
                                     _%result273761%_)
                                    (_%loop273758%_
                                     _%rest273781%_
                                     (cons _%path273782%_
                                           _%result273761%_))))))
                        (if (pair? _%$%rest273762273770%_)
                            (let ((_%$%hd273767273787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest273762273770%_)))
                                  (_%$%tl273768273789%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest273762273770%_))))
                              (let* ((_%path273792%_ _%$%hd273767273787%_)
                                     (_%rest273794%_ _%$%tl273768273789%_))
                                (_%$%K273766273784%_
                                 _%rest273794%_
                                 _%path273792%_)))
                            (_%$%else273764273778%_))))))
                 (_%compile-stub273571%_
                  (lambda (_%output-scm273578%_ _%output-bin273579%_)
                    (let* ((_%gerbil-home273581%_
                            (let ((__tmp274145
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp274145)))
                           (_%gerbil-libdir273583%_
                            (path-expand '"lib" _%gerbil-home273581%_))
                           (_%gerbil-staticdir273585%_
                            (path-expand '"static" _%gerbil-libdir273583%_))
                           (_%deps273587%_
                            (gxc#find-runtime-module-deps _%ctx273557%_))
                           (_%libgerbil-deps273589%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?273566%_
                               _%deps273587%_)))
                           (_%libgerbil-scm273591%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps273589%_)))
                           (_%libgerbil-scm273593%_
                            (_%fold-libgerbil-runtime-scm273569%_
                             _%gerbil-staticdir273585%_
                             _%libgerbil-scm273591%_))
                           (_%libgerbil-c273595%_
                            (map _%replace-extension-with-c273563%_
                                 _%libgerbil-scm273593%_))
                           (_%libgerbil-o273597%_
                            (map _%replace-extension-with-object273564%_
                                 _%libgerbil-scm273593%_))
                           (_%src-deps273599%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?273565%_
                               _%deps273587%_)))
                           (_%src-deps-scm273601%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps273599%_)))
                           (_%src-deps-scm273603%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?273568%_
                               _%src-deps-scm273601%_)))
                           (_%src-deps-scm273605%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm273603%_)))
                           (_%src-deps-c273607%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c273563%_
                                     _%src-deps-scm273605%_)))
                           (_%src-deps-o273609%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object273564%_
                                     _%src-deps-scm273605%_)))
                           (_%src-bin-scm273611%_
                            (gxc#find-static-module-file _%ctx273557%_))
                           (_%src-bin-scm273613%_
                            (path-expand _%src-bin-scm273611%_))
                           (_%src-bin-c273615%_
                            (_%replace-extension-with-c273563%_
                             _%src-bin-scm273613%_))
                           (_%src-bin-o273617%_
                            (_%replace-extension-with-object273564%_
                             _%src-bin-scm273613%_))
                           (_%output-bin273619%_
                            (path-expand _%output-bin273579%_))
                           (_%output-scm273621%_
                            (path-expand _%output-scm273578%_))
                           (_%output-c273623%_
                            (_%replace-extension-with-c273563%_
                             _%output-scm273621%_))
                           (_%output-o273625%_
                            (_%replace-extension-with-object273564%_
                             _%output-scm273621%_))
                           (_%output_-c273627%_
                            (_%replace-extension273562%_
                             _%output-scm273621%_
                             '"_.c"))
                           (_%output_-o273629%_
                            (_%replace-extension273562%_
                             _%output-scm273621%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts273631%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts273633%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts273635%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir273585%_))
                           (_%output-ld-opts273637%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts273639%_
                            (_%get-libgerbil-ld-opts273561%_
                             _%gerbil-libdir273583%_))
                           (_%rpath273641%_
                            (gxc#gerbil-rpath _%gerbil-libdir273583%_))
                           (_%builtin-modules273645%_
                            (_%remove-duplicates273570%_
                             (let ((__tmp274146
                                    (let ((__tmp274148
                                           (lambda (_%mod273643%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod273643%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp274147
                                           (cons _%ctx273557%_
                                                 _%deps273587%_)))
                                      (declare (not safe))
                                      (##map __tmp274148 __tmp274147))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp274146)))))
                      (letrec ((_%compile-obj273648%_
                                (lambda (_%scm-path273655%_ _%c-path273656%_)
                                  (let* ((_%o-path273658%_
                                          (_%replace-extension273562%_
                                           _%c-path273656%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock273660%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path273658%_
                                             '".lock")))
                                         (_%locked273662%_ '#f)
                                         (_%unlock273665%_
                                          (lambda ()
                                            (close-port _%locked273662%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock273660%_)))))
                                    (let _%retry273668%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock273660%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry273668%_))
                                          (begin
                                            (set! _%locked273662%_
                                                  (let* ((_%handler273671%_
                                                          false)
                                                         (_%thunk273675%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock273660%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler273680%_ _%handler273671%_)
                 (_%thunk273736%_ _%thunk273675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler273680%_
                                                     _%thunk273736%_)))
                                            (if _%locked273662%_
                                                '#!void
                                                (_%retry273668%_)))))
                                    (let ((__tmp274150
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path273658%_)))
                                                     (not _%scm-path273655%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path273655%_
                                                        _%o-path273658%_)))
                                                 (let ((_%gsc-cc-opts273753%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp274151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp274152 (cons _%c-path273656%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts273635%_ __tmp274152))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts273753%_ __tmp274151)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp274149
                                           (lambda () (_%unlock273665%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp274150
                                       __tmp274149))))))
                        (let ((__tmp274153
                               (lambda ()
                                 (let ((__tmp274154
                                        (path-directory _%output-bin273619%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp274154)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp274153))
                        (gxc#with-output-to-scheme-file
                         _%output-scm273621%_
                         (lambda ()
                           (_%generate-stub273560%_
                            _%builtin-modules273645%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it273653%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp274155
                                                   (let ((__tmp274156
                                                          (let ((__tmp274157
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm273613%_
                               (cons _%output-scm273621%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm273605%_ __tmp274157))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c273595%_
                                                      __tmp274156))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts273631%_
                                               __tmp274155))))
                                     (let ((__tmp274160
                                            (let ((__tmp274161
                                                   (cons _%src-bin-scm273613%_
                                                         (cons _%output-scm273621%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm273605%_
                                               __tmp274161)))
                                           (__tmp274158
                                            (let ((__tmp274159
                                                   (cons _%src-bin-c273615%_
                                                         (cons _%output-c273623%_
                                                               (cons _%output_-c273627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c273607%_
                                               __tmp274159))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj273648%_
                                        __tmp274160
                                        __tmp274158))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin273619%_
                                                        (let ((__tmp274162
                                                               (cons _%src-bin-o273617%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o273625%_
                                   (cons _%output_-o273629%_
                                         (let ((__tmp274163
                                                (let ((__tmp274164
                                                       (let ((__tmp274166
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath273641%_ '())
                          '()))
                     (__tmp274165
                      (cons '"-L"
                            (cons _%gerbil-libdir273583%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts273639%_)))))
                 (declare (not safe))
                 (##append __tmp274166 __tmp274165))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts273637%_
                                                   __tmp274164))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o273597%_
                                            __tmp274163)))))))
                  (declare (not safe))
                  (##append _%src-deps-o273609%_ __tmp274162))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp274167
                                            (cons _%output-c273623%_
                                                  (cons _%output_-c273627%_
                                                        (cons _%output-o273625%_
                                                              (cons _%output_-o273629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp274167)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it273653%_))
                                  (_%compile-it273653%_)))
                            '#!void))))))
          (let* ((_%output-bin273573%_
                  (gxc#compile-exe-output-file _%ctx273557%_ _%opts273558%_))
                 (_%output-scm273575%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin273573%_ '"__exe.scm"))))
            (_%compile-stub273571%_
             _%output-scm273575%_
             _%output-bin273573%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx273379%_ _%opts273380%_)
        (letrec ((_%reset-declare273382%_
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
                 (_%generate-stub273383%_
                  (lambda (_%deps273548%_)
                    (let ((_%mod-main273550%_
                           (gxc#find-runtime-symbol _%ctx273379%_ 'main))
                          (_%reset-decl273551%_ (_%reset-declare273382%_))
                          (_%user-decl273552%_ (_%user-declare273384%_)))
                      (for-each
                       (lambda (_%dep273554%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl273551%_))
                         (newline)
                         (if _%user-decl273552%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl273552%_))
                               (newline))
                             '#!void)
                         (let ((__tmp274168 (list 'include _%dep273554%_)))
                           (declare (not safe))
                           (##write __tmp274168))
                         (newline))
                       _%deps273548%_)
                      (let ((__tmp274169
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main273550%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp274169))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare273384%_
                  (lambda ()
                    (let* ((_%gsc-opts273453%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts273380%_)))
                           (_%gsc-prelude273455%_
                            (if _%gsc-opts273453%_
                                (member '"-prelude" _%gsc-opts273453%_)
                                '#f))
                           (_%gsc-prelude273457%_
                            (if _%gsc-prelude273455%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude273455%_)))
                                '#f)))
                      (let _%lp273460%_ ((_%rest273462%_
                                          (cons _%gsc-prelude273457%_ '()))
                                         (_%user-decls273463%_ '()))
                        (let* ((_%$%rest273464273472%_ _%rest273462%_)
                               (_%$%else273466273480%_
                                (lambda ()
                                  (if (null? _%user-decls273463%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls273463%_)))))
                               (_%$%K273468273536%_
                                (lambda (_%rest273483%_ _%expr273484%_)
                                  (let* ((_%$%expr273485273497%_
                                          _%expr273484%_)
                                         (_%$%else273488273505%_
                                          (lambda ()
                                            (_%lp273460%_
                                             _%rest273483%_
                                             _%user-decls273463%_))))
                                    (let ((_%$%K273493273526%_
                                           (lambda (_%decls273524%_)
                                             (_%lp273460%_
                                              _%rest273483%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls273463%_
                                                 _%decls273524%_)))))
                                          (_%$%K273490273511%_
                                           (lambda (_%exprs273509%_)
                                             (_%lp273460%_
                                              (append _%exprs273509%_
                                                      _%rest273483%_)
                                              _%user-decls273463%_))))
                                      (if (pair? _%$%expr273485273497%_)
                                          (let ((_%$%tl273495273531%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr273485273497%_)))
                                                (_%$%hd273494273529%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr273485273497%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd273494273529%_
                                                         'declare))
                                                (let ((_%decls273534%_
                                                       _%$%tl273495273531%_))
                                                  (_%$%K273493273526%_
                                                   _%decls273534%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd273494273529%_
                                                             'begin))
                                                    (let ((_%exprs273519%_
                                                           _%$%tl273495273531%_))
                                                      (_%$%K273490273511%_
                                                       _%exprs273519%_))
                                                    (_%$%else273488273505%_))))
                                          (_%$%else273488273505%_)))))))
                          (if (pair? _%$%rest273464273472%_)
                              (let ((_%$%hd273469273539%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest273464273472%_)))
                                    (_%$%tl273470273541%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest273464273472%_))))
                                (let* ((_%expr273544%_ _%$%hd273469273539%_)
                                       (_%rest273546%_ _%$%tl273470273541%_))
                                  (_%$%K273468273536%_
                                   _%rest273546%_
                                   _%expr273544%_)))
                              (_%$%else273466273480%_)))))))
                 (_%compile-stub273385%_
                  (lambda (_%output-scm273392%_ _%output-bin273393%_)
                    (let* ((_%gerbil-home273395%_
                            (let ((__tmp274170
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp274170)))
                           (_%gerbil-libdir273397%_
                            (path-expand '"lib" _%gerbil-home273395%_))
                           (_%runtime273399%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp273401%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home273395%_))
                           (_%include-gambit-sharp273403%_
                            (gxc#include-source _%gambit-sharp273401%_))
                           (_%bin-scm273405%_
                            (gxc#find-static-module-file _%ctx273379%_))
                           (_%deps273407%_
                            (gxc#find-runtime-module-deps _%ctx273379%_))
                           (_%deps273409%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps273407%_)))
                           (_%deps273414%_
                            (let ((__tmp274171
                                   (lambda (_%$obj273411%_)
                                     (not (gxc#file-empty? _%$obj273411%_)))))
                              (declare (not safe))
                              (##filter __tmp274171 _%deps273409%_)))
                           (_%deps273418%_
                            (let ((__tmp274172
                                   (lambda (_%f273416%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f273416%_
                                             _%runtime273399%_))))))
                              (declare (not safe))
                              (##filter __tmp274172 _%deps273414%_)))
                           (_%output-base273420%_
                            (let ((__tmp274173
                                   (path-strip-extension
                                    _%output-scm273392%_)))
                              (declare (not safe))
                              (##string-append __tmp274173)))
                           (_%output-c273422%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base273420%_ '".c")))
                           (_%output-o273424%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base273420%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_273426%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base273420%_ '"_.c")))
                           (_%output-o_273428%_
                            (let ((__tmp274174
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base273420%_
                               __tmp274174)))
                           (_%gsc-link-opts273430%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts273432%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts273434%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir273397%_)))
                           (_%output-ld-opts273436%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros273438%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp273403%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp273403%_
                                            '()))))
                           (_%gsc-link-opts273440%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts273430%_
                               _%gsc-gx-macros273438%_)))
                           (_%rpath273442%_
                            (gxc#gerbil-rpath _%gerbil-libdir273397%_))
                           (_%default-ld-options273444%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp274175
                             (lambda ()
                               (let ((__tmp274176
                                      (path-directory _%output-bin273393%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp274176)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp274175))
                      (gxc#with-output-to-scheme-file
                       _%output-scm273392%_
                       (lambda ()
                         (_%generate-stub273383%_
                          (let ((__tmp274177
                                 (let ((__tmp274178
                                        (cons _%bin-scm273405%_ '())))
                                   (declare (not safe))
                                   (##append _%deps273418%_ __tmp274178))))
                            (declare (not safe))
                            (##append _%runtime273399%_ __tmp274177)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it273450%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_273426%_
                                                      (let ((__tmp274179
                                                             (cons _%output-scm273392%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts273440%_ __tmp274179))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp274180
                                                 (let ((__tmp274181
                                                        (cons _%output-c273422%_
                                                              (cons _%output-c_273426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts273434%_
                                                    __tmp274181))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts273432%_
                                             __tmp274180))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin273393%_
                                                      (cons _%output-o273424%_
                                                            (cons _%output-o_273428%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp274182
                                 (let ((__tmp274184
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath273442%_ '())
                                            '()))
                                       (__tmp274183
                                        (cons '"-L"
                                              (cons _%gerbil-libdir273397%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options273444%_)))))
                                   (declare (not safe))
                                   (##append __tmp274184 __tmp274183))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts273436%_
                             __tmp274182)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it273450%_))
                                (_%compile-it273450%_)))
                          '#!void)))))
          (let* ((_%output-bin273387%_
                  (gxc#compile-exe-output-file _%ctx273379%_ _%opts273380%_))
                 (_%output-scm273389%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin273387%_ '"__exe.scm"))))
            (_%compile-stub273385%_
             _%output-scm273389%_
             _%output-bin273387%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx273328%_ _%id273329%_)
        (let ((_%$e273375%_
               (let ((__tmp274186
                      (lambda (_%$%e273330273332%_)
                        (let* ((_%$%$%e273330273334273344%_
                                _%$%e273330273332%_)
                               (_%$%else273336273352%_ (lambda () '#f))
                               (_%$%K273338273356%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e273330273334273344%_
                                 'gx#module-export::t))
                              (let* ((_%$%e273339273359%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273330273334273344%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e273340273362%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273330273334273344%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e273341273365%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273330273334273344%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e273341273365%_ '0))
                                    (let ((_%$%e273342273368%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e273330273334273344%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e273342273368%_
                                               _%id273329%_)
                                          (_%$%K273338273356%_)
                                          (_%$%else273336273352%_)))
                                    (_%$%else273336273352%_)))
                              (_%$%else273336273352%_)))))
                     (__tmp274185
                      (##structure-ref
                       _%ctx273328%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp274186 __tmp274185))))
          (if _%$e273375%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e273375%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx273319%_ _%id273320%_)
        (let ((_%$e273322%_
               (gxc#find-export-binding _%ctx273319%_ _%id273320%_)))
          (if _%$e273322%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e273322%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id273320%_)))
                (##structure-ref _%$e273322%_ '1 gx#binding::t '#f))
              (let ((__tmp274187
                     (##structure-ref
                      _%ctx273319%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp274187
                 _%id273320%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx273185%_)
        (letrec* ((_%ht273187%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template273188%_
                   (lambda (_%in273264%_ _%phi273265%_)
                     (let ((_%iphi273267%_
                            (fx+ _%phi273265%_
                                 (##direct-structure-ref
                                  _%in273264%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports273268%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in273264%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp273270%_ ((_%rest273272%_ _%imports273268%_)
                                          (_%r273273%_ '()))
                         (let* ((_%$%rest273274273282%_ _%rest273272%_)
                                (_%$%else273276273290%_
                                 (lambda () _%r273273%_))
                                (_%$%K273278273307%_
                                 (lambda (_%rest273293%_ _%in273294%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in273294%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi273267%_))
                                           (_%lp273270%_
                                            _%rest273293%_
                                            (cons _%in273294%_ _%r273273%_))
                                           (_%lp273270%_
                                            _%rest273293%_
                                            _%r273273%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in273294%_
                                              'gx#module-import::t))
                                           (let ((_%iphi273298%_
                                                  (fx+ _%phi273265%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in273294%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi273298%_))
                                                 (_%lp273270%_
                                                  _%rest273293%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in273294%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r273273%_))
                                                 (_%lp273270%_
                                                  _%rest273293%_
                                                  _%r273273%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in273294%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi273301%_
                                                      (fx+ _%iphi273267%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in273294%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi273301%_))
                                                     (_%lp273270%_
                                                      _%rest273293%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in273294%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r273273%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi273301%_))
                                                         (_%lp273270%_
                                                          _%rest273293%_
                                                          (let ((__tmp274188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template273188%_
                          _%in273294%_
                          _%iphi273267%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r273273%_ __tmp274188)))
                 (_%lp273270%_ _%rest273293%_ _%r273273%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp273270%_
                                                _%rest273293%_
                                                _%r273273%_)))))))
                           (if (pair? _%$%rest273274273282%_)
                               (let ((_%$%hd273279273310%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest273274273282%_)))
                                     (_%$%tl273280273312%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest273274273282%_))))
                                 (let* ((_%in273315%_ _%$%hd273279273310%_)
                                        (_%rest273317%_ _%$%tl273280273312%_))
                                   (_%$%K273278273307%_
                                    _%rest273317%_
                                    _%in273315%_)))
                               (_%$%else273276273290%_)))))))
                  (_%find-deps273189%_
                   (lambda (_%rest273197%_ _%deps273198%_)
                     (let* ((_%$%rest273199273207%_ _%rest273197%_)
                            (_%$%else273201273215%_ (lambda () _%deps273198%_))
                            (_%$%K273203273252%_
                             (lambda (_%rest273218%_ _%hd273219%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd273219%_
                                      'gx#module-context::t))
                                   (let ((_%id273222%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd273219%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports273223%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd273219%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht273187%_
                                            _%id273222%_))
                                         (_%find-deps273189%_
                                          _%rest273218%_
                                          _%deps273198%_)
                                         (let ((_%$e273226%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd273219%_))))
                                           (if _%$e273226%_
                                               (let ((_%xdeps273231%_
                                                      (_%find-deps273189%_
                                                       (cons _%$e273226%_
                                                             _%imports273223%_)
                                                       _%deps273198%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht273187%_
                                                    _%id273222%_
                                                    _%hd273219%_))
                                                 (_%find-deps273189%_
                                                  _%rest273218%_
                                                  (cons _%hd273219%_
                                                        _%xdeps273231%_)))
                                               (let ((_%xdeps273234%_
                                                      (_%find-deps273189%_
                                                       _%imports273223%_
                                                       _%deps273198%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht273187%_
                                                    _%id273222%_
                                                    _%hd273219%_))
                                                 (_%find-deps273189%_
                                                  _%rest273218%_
                                                  (cons _%hd273219%_
                                                        _%xdeps273234%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd273219%_
                                          'gx#prelude-context::t))
                                       (let ((_%id273237%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd273219%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht273187%_
                                                _%id273237%_))
                                             (_%find-deps273189%_
                                              _%rest273218%_
                                              _%deps273198%_)
                                             (let ((_%xdeps273241%_
                                                    (_%find-deps273189%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd273219%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps273198%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht273187%_
                                                      _%id273237%_))
                                                   (_%find-deps273189%_
                                                    _%rest273218%_
                                                    _%xdeps273241%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht273187%_
                                                        _%id273237%_
                                                        _%hd273219%_))
                                                     (_%find-deps273189%_
                                                      _%rest273218%_
                                                      (cons _%hd273219%_
                                                            _%xdeps273241%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd273219%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd273219%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps273189%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd273219%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest273218%_)
                                                _%deps273198%_)
                                               (_%find-deps273189%_
                                                _%rest273218%_
                                                _%deps273198%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd273219%_
                                                  'gx#module-export::t))
                                               (_%find-deps273189%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd273219%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest273218%_)
                                                _%deps273198%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd273219%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd273219%_ '2 '#f '#f)))
               (_%find-deps273189%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd273219%_ '1 '#f '#f))
                      _%rest273218%_)
                _%deps273198%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd273219%_ '2 '#f '#f)))
                   (let ((_%xdeps273248%_
                          (_%import-set-template273188%_ _%hd273219%_ '0)))
                     (_%find-deps273189%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest273218%_ _%xdeps273248%_))
                      _%deps273198%_))
                   (_%find-deps273189%_ _%rest273218%_ _%deps273198%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd273219%_))))))))))
                       (if (pair? _%$%rest273199273207%_)
                           (let ((_%$%hd273204273255%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest273199273207%_)))
                                 (_%$%tl273205273257%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest273199273207%_))))
                             (let* ((_%hd273260%_ _%$%hd273204273255%_)
                                    (_%rest273262%_ _%$%tl273205273257%_))
                               (_%$%K273203273252%_
                                _%rest273262%_
                                _%hd273260%_)))
                           (_%$%else273201273215%_))))))
          (let ((__tmp274189
                 (filter gx#expander-context-id
                         (_%find-deps273189%_
                          (let ((_%$e273191%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx273185%_))))
                            (if _%$e273191%_
                                (cons _%$e273191%_
                                      (##structure-ref
                                       _%ctx273185%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx273185%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp274189)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx273115%_)
        (let* ((_%context-id273117%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx273115%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx273115%_ '1 '#f '#f))
                    (string->symbol _%ctx273115%_)))
               (_%scm273119%_
                (let ((__tmp274190
                       (gxc#static-module-name _%context-id273117%_)))
                  (declare (not safe))
                  (##string-append __tmp274190 '".scm")))
               (_%dirs273121%_ (let () (declare (not safe)) (load-path)))
               (_%dirs273127%_
                (let ((_%user-libpath273123%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath273123%_
                      (let ((_%user-libpath273125%_
                             (path-expand '"lib" _%user-libpath273123%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath273125%_ _%dirs273121%_))
                            _%dirs273121%_
                            (cons _%user-libpath273125%_ _%dirs273121%_)))
                      _%dirs273121%_)))
               (_%dirs273137%_
                (let ((_%$e273129%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e273129%_
                      (cons _%$e273129%_ _%dirs273127%_)
                      _%dirs273127%_)))
               (_%dirs273143%_
                (let ((__tmp274191
                       (lambda (_%$%g273138273140%_)
                         (path-expand '"static" _%$%g273138273140%_))))
                  (declare (not safe))
                  (##map __tmp274191 _%dirs273137%_))))
          (let _%lp273146%_ ((_%rest273148%_ _%dirs273143%_))
            (let* ((_%$%rest273149273157%_ _%rest273148%_)
                   (_%$%else273151273165%_
                    (lambda ()
                      (let ((__tmp274192
                             (##structure-ref
                              _%ctx273115%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp274192
                         _%scm273119%_))))
                   (_%$%K273153273173%_
                    (lambda (_%rest273168%_ _%dir273169%_)
                      (let ((_%path273171%_
                             (path-expand _%scm273119%_ _%dir273169%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path273171%_))
                            _%path273171%_
                            (_%lp273146%_ _%rest273168%_))))))
              (if (pair? _%$%rest273149273157%_)
                  (let ((_%$%hd273154273176%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest273149273157%_)))
                        (_%$%tl273155273178%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest273149273157%_))))
                    (let* ((_%dir273181%_ _%$%hd273154273176%_)
                           (_%rest273183%_ _%$%tl273155273178%_))
                      (_%$%K273153273173%_ _%rest273183%_ _%dir273181%_)))
                  (_%$%else273151273165%_)))))))
    (define gxc#file-empty?
      (lambda (_%path273113%_)
        (zero? (let ((__tmp274193 (file-info _%path273113%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp274193)))))
    (define gxc#compile-top-module
      (lambda (_%ctx273104%_)
        (let ((__tmp274194
               (lambda ()
                 (let ((__tmp274195
                        (lambda ()
                          (let ((__tmp274196
                                 (lambda ()
                                   (let ((__tmp274198
                                          (lambda ()
                                            (let ((__tmp274200
                                                   (lambda ()
                                                     (let ((__tmp274202
                                                            (lambda ()
                                                              (let ((__tmp274203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx273104%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp274203))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp274204
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx273104%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp274204))
                          '#!void)
                      (gxc#collect-bindings _%ctx273104%_)
                      (gxc#compile-runtime-code _%ctx273104%_)
                      (gxc#compile-meta-code _%ctx273104%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx273104%_)
                          '#!void)))
                   (__tmp274201
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
                __tmp274202
                gxc#current-compile-runtime-names
                __tmp274201))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp274199
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp274200
                                               gxc#current-compile-runtime-sections
                                               __tmp274199))))
                                         (__tmp274197
                                          (let ((__obj274093
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj274093))
                                            __obj274093)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp274198
                                      gxc#current-compile-symbol-table
                                      __tmp274197)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp274196
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp274195
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274194
           gx#current-expander-context
           _%ctx273104%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx273102%_)
        (let ((__tmp274205
               (##structure-ref _%ctx273102%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp274205))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx273047%_)
        (letrec ((_%compile1273049%_
                  (lambda (_%ctx273091%_)
                    (let* ((_%code273093%_
                            (##structure-ref
                             _%ctx273091%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm273097%_
                            (let ((_%idstr273095%_
                                   (let ((__tmp274206
                                          (##structure-ref
                                           _%ctx273091%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp274206))))
                              (declare (not safe))
                              (##string-append _%idstr273095%_ '"~0")))
                           (_%rtc?273099%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code273093%_))))
                      (if _%rtc?273099%_
                          (let ((__tmp274207
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp274207
                             _%ctx273091%_
                             _%rtm273097%_))
                          '#!void)
                      (_%generate-runtime-code273051%_
                       _%ctx273091%_
                       _%code273093%_
                       (if _%rtc?273099%_ _%rtm273097%_ '#f)))))
                 (_%context-timestamp273050%_
                  (lambda (_%ctx273089%_)
                    (let ((__tmp274208
                           (let ((__tmp274209
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx273089%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp274209 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp274208))))
                 (_%generate-runtime-code273051%_
                  (lambda (_%ctx273058%_ _%code273059%_ _%rtm273060%_)
                    (let* ((_%runtime-code?273062%_ (if _%rtm273060%_ '#t '#f))
                           (_%lifts273064%_ (box '()))
                           (_%runtime-code273070%_
                            (if _%runtime-code?273062%_
                                (let ((__tmp274210
                                       (lambda ()
                                         (let ((__tmp274211
                                                (lambda ()
                                                  (let ((__tmp274212
                                                         (lambda ()
                                                           (let ((__tmp274214
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code273059%_))))
                         (__tmp274213
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp274214
                      gxc#current-compile-marks
                      __tmp274213)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp274212
                                                     gxc#current-compile-lift
                                                     _%lifts273064%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp274211
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp274210
                                   gx#current-expander-context
                                   _%ctx273058%_))
                                '#f))
                           (_%runtime-code273072%_
                            (if _%runtime-code?273062%_
                                (if (null? (unbox _%lifts273064%_))
                                    _%runtime-code273070%_
                                    (cons 'begin
                                          (let ((__tmp274216
                                                 (reverse (unbox _%lifts273064%_)))
                                                (__tmp274215
                                                 (cons _%runtime-code273070%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp274216
                                             __tmp274215))))
                                '#f))
                           (_%runtime-code273074%_
                            (if _%runtime-code?273062%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp273050%_
                                                   _%ctx273058%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code273072%_ '())))
                                '#f))
                           (_%loader-code273077%_
                            (let ((__tmp274217
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code273059%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp274217
                               gx#current-expander-context
                               _%ctx273058%_)))
                           (_%loader-code273079%_
                            (cons 'begin
                                  (cons _%loader-code273077%_
                                        (cons (if _%runtime-code?273062%_
                                                  (cons 'load-module
                                                        (cons _%rtm273060%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0273081%_
                            (gxc#compile-output-file _%ctx273058%_ '0 '".scm"))
                           (_%scmrt273083%_
                            (gxc#compile-output-file
                             _%ctx273058%_
                             '#f
                             '".scm"))
                           (_%scms273085%_
                            (gxc#compile-static-output-file _%ctx273058%_)))
                      (if _%runtime-code?273062%_
                          (gxc#compile-scm-file__0
                           _%scm0273081%_
                           _%runtime-code273074%_)
                          '#!void)
                      (let ((__tmp274218
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt273083%_
                                _%loader-code273079%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp274218
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms273085%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms273085%_))
                          '#!void)
                      (if _%runtime-code?273062%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0273081%_ _%scms273085%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms273085%_ void)))))))
          (let* ((_%all-modules273053%_
                  (cons _%ctx273047%_ (gxc#lift-nested-modules _%ctx273047%_)))
                 (__tmp274219
                  (lambda (_%ctx273055%_)
                    (let ((__tmp274220
                           (lambda () (_%compile1273049%_ _%ctx273055%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp274220
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp274219 _%all-modules273053%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx272946%_)
        (letrec ((_%compile-ssi272948%_
                  (lambda (_%code273015%_)
                    (let* ((_%path273017%_
                            (gxc#compile-output-file
                             _%ctx272946%_
                             '#f
                             '".ssi"))
                           (_%prelude273029%_
                            (let* ((_%super273019%_
                                    (##structure-ref
                                     _%ctx272946%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e273021%_
                                    (##structure-ref
                                     _%super273019%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e273021%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e273021%_))
                                  ':<root>)))
                           (_%ns273031%_
                            (##structure-ref
                             _%ctx272946%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr273033%_
                            (symbol->string
                             (##structure-ref
                              _%ctx272946%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg273041%_
                            (let ((_%$e273035%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr273033%_ '#\/))))
                              (if _%$e273035%_
                                  (let ((__tmp274221
                                         (substring
                                          _%idstr273033%_
                                          '0
                                          _%$e273035%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp274221))
                                  '#f)))
                           (_%rt273043%_
                            (let ((__tmp274222
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp274222 _%ctx272946%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path273017%_))
                      (gxc#with-output-to-scheme-file
                       _%path273017%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude273029%_))
                         (if _%pkg273041%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg273041%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns273031%_))
                         (newline)
                         (pretty-print _%code273015%_)
                         (if _%rt273043%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt273043%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi272949%_
                  (lambda (_%part272954%_)
                    (let* ((_%$%part272955272968%_ _%part272954%_)
                           (_%$%E272957272972%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part272955272968%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K272958272984%_
                            (lambda (_%code272975%_
                                     _%n272976%_
                                     _%phi272977%_
                                     _%phi-ctx272978%_)
                              (let ((_%code272982%_
                                     (let ((__tmp274223
                                            (lambda ()
                                              (let ((__tmp274224
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code272975%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp274224
                                                 gx#current-expander-phi
                                                 _%phi272977%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp274223
                                        gx#current-expander-context
                                        _%phi-ctx272978%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx272946%_
                                  _%n272976%_
                                  '".scm")
                                 _%code272982%_
                                 '#t)))))
                      (if (pair? _%$%part272955272968%_)
                          (let ((_%$%hd272959272987%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part272955272968%_)))
                                (_%$%tl272960272989%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part272955272968%_))))
                            (let ((_%phi-ctx272992%_ _%$%hd272959272987%_))
                              (if (pair? _%$%tl272960272989%_)
                                  (let ((_%$%hd272961272994%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272960272989%_)))
                                        (_%$%tl272962272996%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272960272989%_))))
                                    (let ((_%phi272999%_ _%$%hd272961272994%_))
                                      (if (pair? _%$%tl272962272996%_)
                                          (let ((_%$%hd272963273001%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl272962272996%_)))
                                                (_%$%tl272964273003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl272962272996%_))))
                                            (let ((_%n273006%_
                                                   _%$%hd272963273001%_))
                                              (if (pair? _%$%tl272964273003%_)
                                                  (let ((_%$%hd272965273008%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl272964273003%_)))
                                                        (_%$%tl272966273010%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl272964273003%_))))
                                                    (let ((_%code273013%_
                                                           _%$%hd272965273008%_))
                                                      (if (null? _%$%tl272966273010%_)
                                                          (_%$%K272958272984%_
                                                           _%code273013%_
                                                           _%n273006%_
                                                           _%phi272999%_
                                                           _%phi-ctx272992%_)
                                                          (_%$%E272957272972%_))))
                                                  (_%$%E272957272972%_))))
                                          (_%$%E272957272972%_))))
                                  (_%$%E272957272972%_))))
                          (_%$%E272957272972%_))))))
          (let ((_g274225_ (gxc#generate-meta-code _%ctx272946%_)))
            (begin
              (let ((_g274226_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g274225_)
                           (##values-length _g274225_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g274226_ 2)))
                    (error "Context expects 2 values" _g274226_)))
              (let ((_%ssi-code272951%_
                     (let () (declare (not safe)) (##values-ref _g274225_ 0)))
                    (_%phi-code272952%_
                     (let () (declare (not safe)) (##values-ref _g274225_ 1))))
                (begin
                  (_%compile-ssi272948%_ _%ssi-code272951%_)
                  (for-each _%compile-phi272949%_ _%phi-code272952%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx272928%_)
        (let* ((_%path272930%_
                (gxc#compile-output-file _%ctx272928%_ '#f '".ssxi.ss"))
               (_%code272932%_
                (let ((__tmp274227
                       (##structure-ref
                        _%ctx272928%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp274227)))
               (_%idstr272934%_
                (symbol->string
                 (##structure-ref
                  _%ctx272928%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg272942%_
                (let ((_%$e272936%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr272934%_ '#\/))))
                  (if _%$e272936%_
                      (let ((__tmp274228
                             (substring _%idstr272934%_ '0 _%$e272936%_)))
                        (declare (not safe))
                        (##string->symbol __tmp274228))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path272930%_))
          (gxc#with-output-to-scheme-file
           _%path272930%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg272942%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg272942%_))
                 '#!void)
             (newline)
             (pretty-print _%code272932%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx272921%_)
        (let* ((_%state272923%_
                (let ((__obj274094
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj274094 _%ctx272921%_))
                  __obj274094))
               (_%ssi-code272925%_
                (let ((__tmp274229
                       (##structure-ref
                        _%ctx272921%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state272923%_
                   __tmp274229))))
          (values _%ssi-code272925%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state272923%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx272913%_)
        (let* ((_%lifts272915%_ (box '()))
               (__tmp274230
                (lambda ()
                  (let ((__tmp274232
                         (lambda ()
                           (let ((_%code272919%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx272913%_))))
                             (if (null? (unbox _%lifts272915%_))
                                 _%code272919%_
                                 (cons 'begin
                                       (let ((__tmp274234
                                              (reverse (unbox _%lifts272915%_)))
                                             (__tmp274233
                                              (cons _%code272919%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp274234
                                          __tmp274233)))))))
                        (__tmp274231
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp274232
                     gxc#current-compile-marks
                     __tmp274231)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274230
           gxc#current-compile-lift
           _%lifts272915%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx272909%_)
        (let ((_%modules272911%_ (box '())))
          (let ((__tmp274235
                 (##structure-ref _%ctx272909%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules272911%_ __tmp274235))
          (reverse (unbox _%modules272911%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path272889%_ _%code272890%_ _%phi?272891%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path272889%_))
        (gxc#with-output-to-scheme-file
         _%path272889%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?272891%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code272890%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it272895%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path272889%_ _%phi?272891%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp274236 (list 'compile-file _%path272889%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it272895%_ __tmp274236))
                  (_%compile-it272895%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path272900%_ _%code272901%_)
        (let ((_%phi?272903%_ '#f))
          (gxc#compile-scm-file__%
           _%path272900%_
           _%code272901%_
           _%phi?272903%_))))
    (define gxc#compile-scm-file
      (lambda _g274237_
        (let ((_g274238_ (let () (declare (not safe)) (##length _g274237_))))
          (cond ((let () (declare (not safe)) (##fx= _g274238_ 2))
                 (apply gxc#compile-scm-file__0 _g274237_))
                ((let () (declare (not safe)) (##fx= _g274238_ 3))
                 (apply gxc#compile-scm-file__% _g274237_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g274237_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?272790%_)
        (let _%lp272792%_ ((_%rest272794%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts272795%_ '()))
          (let* ((_%$%rest272796272816%_ _%rest272794%_)
                 (_%$%else272800272824%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts272795%_)))
                        (reverse _%opts272795%_)))))
            (let ((_%$%K272810272867%_
                   (lambda (_%rest272865%_)
                     (_%lp272792%_ _%rest272865%_ _%opts272795%_)))
                  (_%$%K272805272849%_
                   (lambda (_%rest272847%_)
                     (_%lp272792%_ _%rest272847%_ _%opts272795%_)))
                  (_%$%K272802272831%_
                   (lambda (_%rest272828%_ _%opt272829%_)
                     (_%lp272792%_
                      _%rest272828%_
                      (cons _%opt272829%_ _%opts272795%_)))))
              (if (pair? _%$%rest272796272816%_)
                  (let ((_%$%tl272812272872%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest272796272816%_)))
                        (_%$%hd272811272870%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest272796272816%_))))
                    (if (equal? _%$%hd272811272870%_ '"-cc-options")
                        (if (pair? _%$%tl272812272872%_)
                            (let* ((_%$%tl272814272875%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl272812272872%_)))
                                   (_%rest272878%_ _%$%tl272814272875%_))
                              (_%$%K272810272867%_ _%rest272878%_))
                            (let ((_%opt272839%_ _%$%hd272811272870%_)
                                  (_%rest272841%_ _%$%tl272812272872%_))
                              (_%$%K272802272831%_
                               _%rest272841%_
                               _%opt272839%_)))
                        (if (equal? _%$%hd272811272870%_ '"-ld-options")
                            (if (pair? _%$%tl272812272872%_)
                                (let* ((_%$%tl272809272857%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl272812272872%_)))
                                       (_%rest272860%_ _%$%tl272809272857%_))
                                  (_%$%K272805272849%_ _%rest272860%_))
                                (let ((_%opt272839%_ _%$%hd272811272870%_)
                                      (_%rest272841%_ _%$%tl272812272872%_))
                                  (_%$%K272802272831%_
                                   _%rest272841%_
                                   _%opt272839%_)))
                            (let ((_%opt272839%_ _%$%hd272811272870%_)
                                  (_%rest272841%_ _%$%tl272812272872%_))
                              (_%$%K272802272831%_
                               _%rest272841%_
                               _%opt272839%_)))))
                  (_%$%else272800272824%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?272884%_ '#f)) (gxc#gsc-link-options__% _%phi?272884%_))))
    (define gxc#gsc-link-options
      (lambda _g274239_
        (let ((_g274240_ (let () (declare (not safe)) (##length _g274239_))))
          (cond ((let () (declare (not safe)) (##fx= _g274240_ 0))
                 (apply gxc#gsc-link-options__0 _g274239_))
                ((let () (declare (not safe)) (##fx= _g274240_ 1))
                 (apply gxc#gsc-link-options__% _g274239_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g274239_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords272640%_ _%$%static?272636272641%_ _%phi?272642%_)
        (let ((_%static?272644%_
               (if (eq? _%$%static?272636272641%_ absent-value)
                   '#f
                   _%$%static?272636272641%_)))
          (if _%phi?272642%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp272646%_ ((_%rest272648%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts272649%_ '()))
                (let* ((_%$%rest272650272676%_ _%rest272648%_)
                       (_%$%else272655272684%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts272649%_)))
                              (reverse! _%opts272649%_)))))
                  (let ((_%$%K272670272747%_
                         (lambda (_%rest272744%_ _%opt272745%_)
                           (if _%static?272644%_
                               (_%lp272646%_
                                _%rest272744%_
                                (cons _%opt272745%_
                                      (cons '"-cc-options" _%opts272649%_)))
                               (_%lp272646%_ _%rest272744%_ _%opts272649%_))))
                        (_%$%K272665272724%_
                         (lambda (_%rest272721%_ _%opt272722%_)
                           (_%lp272646%_
                            _%rest272721%_
                            (cons _%opt272722%_
                                  (cons '"-cc-options" _%opts272649%_)))))
                        (_%$%K272660272704%_
                         (lambda (_%rest272702%_)
                           (_%lp272646%_ _%rest272702%_ _%opts272649%_)))
                        (_%$%K272657272690%_
                         (lambda (_%rest272688%_)
                           (_%lp272646%_ _%rest272688%_ _%opts272649%_))))
                    (if (pair? _%$%rest272650272676%_)
                        (let ((_%$%tl272672272752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest272650272676%_)))
                              (_%$%hd272671272750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest272650272676%_))))
                          (if (equal? _%$%hd272671272750%_ '"-cc-options")
                              (if (pair? _%$%tl272672272752%_)
                                  (let ((_%$%tl272674272757%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272672272752%_)))
                                        (_%$%hd272673272755%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272672272752%_))))
                                    (if (equal? _%$%hd272673272755%_
                                                '"-Bstatic")
                                        (let ((_%opt272760%_
                                               _%$%hd272673272755%_)
                                              (_%rest272762%_
                                               _%$%tl272674272757%_))
                                          (_%$%K272670272747%_
                                           _%rest272762%_
                                           _%opt272760%_))
                                        (let ((_%opt272737%_
                                               _%$%hd272673272755%_)
                                              (_%rest272739%_
                                               _%$%tl272674272757%_))
                                          (_%$%K272665272724%_
                                           _%rest272739%_
                                           _%opt272737%_))))
                                  (let ((_%rest272696%_ _%$%tl272672272752%_))
                                    (_%$%K272657272690%_ _%rest272696%_)))
                              (if (equal? _%$%hd272671272750%_ '"-ld-options")
                                  (if (pair? _%$%tl272672272752%_)
                                      (let* ((_%$%tl272664272712%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl272672272752%_)))
                                             (_%rest272715%_
                                              _%$%tl272664272712%_))
                                        (_%$%K272660272704%_ _%rest272715%_))
                                      (let ((_%rest272696%_
                                             _%$%tl272672272752%_))
                                        (_%$%K272657272690%_ _%rest272696%_)))
                                  (let ((_%rest272696%_ _%$%tl272672272752%_))
                                    (_%$%K272657272690%_ _%rest272696%_)))))
                        (_%$%else272655272684%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords272767%_ _%$%static?272636272768%_)
        (let ((_%phi?272770%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords272767%_
           _%$%static?272636272768%_
           _%phi?272770%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g274241_
        (let ((_g274242_ (let () (declare (not safe)) (##length _g274241_))))
          (cond ((let () (declare (not safe)) (##fx= _g274242_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g274241_))
                ((let () (declare (not safe)) (##fx= _g274242_ 3))
                 (apply gxc#gsc-cc-options__%__% _g274241_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g274241_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords272779%_ . _%args272780%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords272779%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272779%_
                  'static:
                  absent-value))
               _%args272780%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args272637272786%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args272637272786%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords272486%_ _%$%static?272482272487%_ _%phi?272488%_)
        (let ((_%static?272490%_
               (if (eq? _%$%static?272482272487%_ absent-value)
                   '#f
                   _%$%static?272482272487%_)))
          (if _%phi?272488%_
              '()
              (let _%lp272492%_ ((_%rest272494%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts272495%_ '()))
                (let* ((_%$%rest272496272522%_ _%rest272494%_)
                       (_%$%else272501272530%_
                        (lambda () (reverse! _%opts272495%_))))
                  (let ((_%$%K272516272593%_
                         (lambda (_%rest272590%_ _%opt272591%_)
                           (if _%static?272490%_
                               (_%lp272492%_
                                _%rest272590%_
                                (cons _%opt272591%_
                                      (cons '"-ld-options" _%opts272495%_)))
                               (_%lp272492%_ _%rest272590%_ _%opts272495%_))))
                        (_%$%K272511272570%_
                         (lambda (_%rest272567%_ _%opt272568%_)
                           (_%lp272492%_
                            _%rest272567%_
                            (cons _%opt272568%_
                                  (cons '"-ld-options" _%opts272495%_)))))
                        (_%$%K272506272550%_
                         (lambda (_%rest272548%_)
                           (_%lp272492%_ _%rest272548%_ _%opts272495%_)))
                        (_%$%K272503272536%_
                         (lambda (_%rest272534%_)
                           (_%lp272492%_ _%rest272534%_ _%opts272495%_))))
                    (if (pair? _%$%rest272496272522%_)
                        (let ((_%$%tl272518272598%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest272496272522%_)))
                              (_%$%hd272517272596%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest272496272522%_))))
                          (if (equal? _%$%hd272517272596%_ '"-ld-options")
                              (if (pair? _%$%tl272518272598%_)
                                  (let ((_%$%tl272520272603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272518272598%_)))
                                        (_%$%hd272519272601%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272518272598%_))))
                                    (if (equal? _%$%hd272519272601%_
                                                '"-static")
                                        (let ((_%opt272606%_
                                               _%$%hd272519272601%_)
                                              (_%rest272608%_
                                               _%$%tl272520272603%_))
                                          (_%$%K272516272593%_
                                           _%rest272608%_
                                           _%opt272606%_))
                                        (let ((_%opt272583%_
                                               _%$%hd272519272601%_)
                                              (_%rest272585%_
                                               _%$%tl272520272603%_))
                                          (_%$%K272511272570%_
                                           _%rest272585%_
                                           _%opt272583%_))))
                                  (let ((_%rest272542%_ _%$%tl272518272598%_))
                                    (_%$%K272503272536%_ _%rest272542%_)))
                              (if (equal? _%$%hd272517272596%_ '"-cc-options")
                                  (if (pair? _%$%tl272518272598%_)
                                      (let* ((_%$%tl272510272558%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl272518272598%_)))
                                             (_%rest272561%_
                                              _%$%tl272510272558%_))
                                        (_%$%K272506272550%_ _%rest272561%_))
                                      (let ((_%rest272542%_
                                             _%$%tl272518272598%_))
                                        (_%$%K272503272536%_ _%rest272542%_)))
                                  (let ((_%rest272542%_ _%$%tl272518272598%_))
                                    (_%$%K272503272536%_ _%rest272542%_)))))
                        (_%$%else272501272530%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords272613%_ _%$%static?272482272614%_)
        (let ((_%phi?272616%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords272613%_
           _%$%static?272482272614%_
           _%phi?272616%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g274243_
        (let ((_g274244_ (let () (declare (not safe)) (##length _g274243_))))
          (cond ((let () (declare (not safe)) (##fx= _g274244_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g274243_))
                ((let () (declare (not safe)) (##fx= _g274244_ 3))
                 (apply gxc#gsc-ld-options__%__% _g274243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g274243_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords272625%_ . _%args272626%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords272625%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272625%_
                  'static:
                  absent-value))
               _%args272626%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args272483272632%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args272483272632%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir272477%_)
        (let ((_%user-staticdir272479%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir272477%_
                       '" -I "
                       _%user-staticdir272479%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp272389%_ ((_%rest272391%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts272392%_ '()))
          (let* ((_%$%rest272393272413%_ _%rest272391%_)
                 (_%$%else272397272421%_ (lambda () _%opts272392%_)))
            (let ((_%$%K272407272464%_
                   (lambda (_%rest272462%_)
                     (_%lp272389%_ _%rest272462%_ _%opts272392%_)))
                  (_%$%K272402272442%_
                   (lambda (_%rest272439%_ _%opt272440%_)
                     (_%lp272389%_
                      _%rest272439%_
                      (let ((__tmp274245
                             (let ((__tmp274246
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt272440%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp274246))))
                        (declare (not safe))
                        (##append _%opts272392%_ __tmp274245)))))
                  (_%$%K272399272427%_
                   (lambda (_%rest272425%_)
                     (_%lp272389%_ _%rest272425%_ _%opts272392%_))))
              (if (pair? _%$%rest272393272413%_)
                  (let ((_%$%tl272409272469%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest272393272413%_)))
                        (_%$%hd272408272467%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest272393272413%_))))
                    (if (equal? _%$%hd272408272467%_ '"-cc-options")
                        (if (pair? _%$%tl272409272469%_)
                            (let* ((_%$%tl272411272472%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl272409272469%_)))
                                   (_%rest272475%_ _%$%tl272411272472%_))
                              (_%$%K272407272464%_ _%rest272475%_))
                            (let ((_%rest272433%_ _%$%tl272409272469%_))
                              (_%$%K272399272427%_ _%rest272433%_)))
                        (if (equal? _%$%hd272408272467%_ '"-ld-options")
                            (if (pair? _%$%tl272409272469%_)
                                (let ((_%$%tl272406272452%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl272409272469%_)))
                                      (_%$%hd272405272450%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl272409272469%_))))
                                  (let ((_%opt272455%_ _%$%hd272405272450%_)
                                        (_%rest272457%_ _%$%tl272406272452%_))
                                    (_%$%K272402272442%_
                                     _%rest272457%_
                                     _%opt272455%_)))
                                (let ((_%rest272433%_ _%$%tl272409272469%_))
                                  (_%$%K272399272427%_ _%rest272433%_)))
                            (let ((_%rest272433%_ _%$%tl272409272469%_))
                              (_%$%K272399272427%_ _%rest272433%_)))))
                  (_%$%else272397272421%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str272386%_)
        (not (let () (declare (not safe)) (string-empty? _%str272386%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path272379%_ _%phi?272380%_)
        (let ((_%gsc-link-opts272382%_
               (gxc#gsc-link-options__% _%phi?272380%_))
              (_%gsc-cc-opts272383%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?272380%_))
              (_%gsc-ld-opts272384%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?272380%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp274247
                  (let ((__tmp274248
                         (let ((__tmp274249 (cons _%path272379%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts272382%_ __tmp274249))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts272384%_ __tmp274248))))
             (declare (not safe))
             (##append _%gsc-cc-opts272383%_ __tmp274247))))))
    (define gxc#compile-output-file
      (lambda (_%ctx272345%_ _%n272346%_ _%ext272347%_)
        (letrec ((_%module-relative-path272349%_
                  (lambda (_%ctx272377%_)
                    (path-strip-directory
                     (let ((__tmp274250
                            (##structure-ref
                             _%ctx272377%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp274250)))))
                 (_%module-source-directory272350%_
                  (lambda (_%ctx272373%_)
                    (path-directory
                     (let ((_%mpath272375%_
                            (##structure-ref
                             _%ctx272373%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath272375%_)
                           _%mpath272375%_
                           (last _%mpath272375%_))))))
                 (_%section-string272351%_
                  (lambda (_%n272367%_)
                    (if (number? _%n272367%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n272367%_))
                        (if (symbol? _%n272367%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n272367%_))
                            (if (string? _%n272367%_)
                                _%n272367%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n272367%_)))))))
                 (_%file-name272352%_
                  (lambda (_%path272365%_)
                    (if _%n272346%_
                        (string-append
                         _%path272365%_
                         '"~"
                         (_%section-string272351%_ _%n272346%_)
                         _%ext272347%_)
                        (string-append _%path272365%_ _%ext272347%_))))
                 (_%file-path272353%_
                  (lambda ()
                    (let ((_%$e272359%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e272359%_
                          (path-expand
                           (_%file-name272352%_
                            (let ((__tmp274251
                                   (##structure-ref
                                    _%ctx272345%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp274251)))
                           _%$e272359%_)
                          (path-expand
                           (_%file-name272352%_
                            (_%module-relative-path272349%_ _%ctx272345%_))
                           (_%module-source-directory272350%_
                            _%ctx272345%_)))))))
          (let ((_%path272355%_ (_%file-path272353%_)))
            (let ((__tmp274252
                   (lambda ()
                     (let ((__tmp274253 (path-directory _%path272355%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp274253)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp274252))
            _%path272355%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx272326%_)
        (letrec ((_%file-name272328%_
                  (lambda (_%id272343%_)
                    (let ((__tmp274254 (gxc#static-module-name _%id272343%_)))
                      (declare (not safe))
                      (##string-append __tmp274254 '".scm"))))
                 (_%file-path272329%_
                  (lambda ()
                    (let* ((_%file272335%_
                            (_%file-name272328%_
                             (##structure-ref
                              _%ctx272326%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e272337%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e272337%_
                          (path-expand
                           _%file272335%_
                           (path-expand '"static" _%$e272337%_))
                          (path-expand _%file272335%_ '"static"))))))
          (let ((_%path272331%_ (_%file-path272329%_)))
            (let ((__tmp274255
                   (lambda ()
                     (let ((__tmp274256 (path-directory _%path272331%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp274256)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp274255))
            _%path272331%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx272319%_ _%opts272320%_)
        (let ((_%$e272322%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts272320%_))))
          (if _%$e272322%_
              _%$e272322%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx272319%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr272309%_)
        (if (string? _%idstr272309%_)
            (let* ((_%str272312%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr272309%_)))
                   (_%strs272314%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str272312%_ '#\/))))
              (declare (not safe))
              (string-join _%strs272314%_ '"__"))
            (if (symbol? _%idstr272309%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr272309%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr272309%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp274257
               (let ((__tmp274258 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp274258 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp274257))))
    (define gxc#invoke__%
      (lambda (_%@@keywords272275%_
               _%$%stdout-redirection272271272276%_
               _%$%stderr-redirection272272272277%_
               _%program272278%_
               _%args272279%_)
        (let* ((_%stdout-redirection272281%_
                (if (eq? _%$%stdout-redirection272271272276%_ absent-value)
                    '#f
                    _%$%stdout-redirection272271272276%_))
               (_%stderr-redirection272283%_
                (if (eq? _%$%stderr-redirection272272272277%_ absent-value)
                    '#f
                    _%$%stderr-redirection272272272277%_)))
          (let ((__tmp274259 (cons _%program272278%_ _%args272279%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp274259))
          (let* ((_%proc272285%_
                  (open-process
                   (cons 'path:
                         (cons _%program272278%_
                               (cons 'arguments:
                                     (cons _%args272279%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection272281%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection272283%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output272290%_
                  (if (or _%stdout-redirection272281%_
                          _%stderr-redirection272283%_)
                      (read-line _%proc272285%_ '#f)
                      '#f))
                 (_%status272293%_ (process-status _%proc272285%_)))
            (let () (declare (not safe)) (##close-port _%proc272285%_))
            (if (zero? _%status272293%_)
                '#!void
                (begin
                  (display _%output272290%_)
                  (let ((__tmp274260 (cons _%program272278%_ _%args272279%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp274260
                     _%status272293%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords272298%_ . _%args272299%_)
        (apply gxc#invoke__%
               _%@@keywords272298%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272298%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272298%_
                  'stderr-redirection:
                  absent-value))
               _%args272299%_)))
    (define gxc#invoke
      (lambda _%$%args272273272305%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args272273272305%_)))))
