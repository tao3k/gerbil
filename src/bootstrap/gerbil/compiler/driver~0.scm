(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1789188916)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp274078 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp274078))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp274079 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp274079))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path273935%_ _%fun273936%_)
        (with-output-to-file
         (cons 'path: (cons _%path273935%_ gxc#scheme-file-settings))
         _%fun273936%_)))
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
      (lambda (_%gerbil-libdir273930%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir273930%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path273928%_)
        (let ((__tmp274080 (object->string _%path273928%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp274080 '")"))))
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
      (lambda (_%dir273926%_) (delete-file-or-directory _%dir273926%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath273869%_ _%opts273870%_)
        (if (string? _%srcpath273869%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath273869%_)))
        (let* ((_%outdir273872%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts273870%_)))
               (_%invoke-gsc?273874%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts273870%_)))
               (_%target273879%_
                (let ((_%$e273876%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts273870%_))))
                  (if _%$e273876%_ _%$e273876%_ 'C)))
               (_%gsc-options273884%_
                (append (cons '"-target"
                              (cons (symbol->string _%target273879%_) '()))
                        (let ((_%$e273881%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts273870%_))))
                          (if _%$e273881%_ _%$e273881%_ '()))))
               (_%keep-scm?273886%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts273870%_)))
               (_%verbosity273888%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts273870%_)))
               (_%optimize273890%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts273870%_)))
               (_%debug273892%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts273870%_)))
               (_%gen-ssxi273894%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts273870%_)))
               (_%parallel?273896%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts273870%_))))
          (if _%outdir273872%_
              (let ((__tmp274081
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir273872%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp274081))
              '#!void)
          (if _%optimize273890%_
              (let ((__tmp274082
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp274082))
              '#!void)
          (let ((__tmp274083
                 (lambda ()
                   (let ((__tmp274084
                          (lambda ()
                            (let ((__tmp274085
                                   (lambda ()
                                     (let ((__tmp274086
                                            (lambda ()
                                              (let ((__tmp274087
                                                     (lambda ()
                                                       (let ((__tmp274088
                                                              (lambda ()
                                                                (let ((__tmp274089
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp274090
                                        (lambda ()
                                          (let ((__tmp274092
                                                 (lambda ()
                                                   (let ((__tmp274094
                                                          (lambda ()
                                                            (let ((__tmp274096
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp274097
                                    (lambda ()
                                      (let ((__tmp274098
                                             (lambda ()
                                               (let ((__tmp274099
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath273869%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp274100
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath273869%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp274100))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp274099
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp274098
                                         gx#current-compilation-target
                                         _%target273879%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp274097
                                gxc#current-compile-parallel
                                _%parallel?273896%_))))
                          (__tmp274095
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp274096
                       gxc#current-compile-identifiers
                       __tmp274095))))
                 (__tmp274093 (list (list 'compile-module _%srcpath273869%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp274094
                                                      gxc#current-compile-context
                                                      __tmp274093))))
                                                (__tmp274091
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp274092
                                             gxc#current-compile-timestamp
                                             __tmp274091)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp274090
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi273894%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp274089
                           gxc#current-compile-debug
                           _%debug273892%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp274088
                  gxc#current-compile-optimize
                  _%optimize273890%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp274087
                                                 gxc#current-compile-verbose
                                                 _%verbosity273888%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp274086
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?273886%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp274085
                               gxc#current-compile-gsc-options
                               _%gsc-options273884%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp274084
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?273874%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp274083
             gxc#current-compile-output-dir
             _%outdir273872%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath273919%_)
        (let ((_%opts273921%_ '()))
          (gxc#compile-module__% _%srcpath273919%_ _%opts273921%_))))
    (define gxc#compile-module
      (lambda _g274101_
        (let ((_g274102_ (let () (declare (not safe)) (##length _g274101_))))
          (cond ((let () (declare (not safe)) (##fx= _g274102_ 1))
                 (apply gxc#compile-module__0 _g274101_))
                ((let () (declare (not safe)) (##fx= _g274102_ 2))
                 (apply gxc#compile-module__% _g274101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g274101_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath273818%_ _%opts273819%_)
        (if (string? _%srcpath273818%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath273818%_)))
        (let* ((_%outdir273821%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts273819%_)))
               (_%invoke-gsc?273823%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts273819%_)))
               (_%target273828%_
                (let ((_%$e273825%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts273819%_))))
                  (if _%$e273825%_ _%$e273825%_ 'C)))
               (_%gsc-options273833%_
                (append (cons '"-target"
                              (cons (symbol->string _%target273828%_) '()))
                        (let ((_%$e273830%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts273819%_))))
                          (if _%$e273830%_ _%$e273830%_ '()))))
               (_%keep-scm?273835%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts273819%_)))
               (_%verbosity273837%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts273819%_)))
               (_%debug273839%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts273819%_)))
               (_%parallel?273841%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts273819%_))))
          (if _%outdir273821%_
              (let ((__tmp274103
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir273821%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp274103))
              '#!void)
          (let ((__tmp274104
                 (lambda ()
                   (let ((__tmp274105
                          (lambda ()
                            (let ((__tmp274106
                                   (lambda ()
                                     (let ((__tmp274107
                                            (lambda ()
                                              (let ((__tmp274108
                                                     (lambda ()
                                                       (let ((__tmp274109
                                                              (lambda ()
                                                                (let ((__tmp274110
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp274112
                                        (lambda ()
                                          (let ((__tmp274114
                                                 (lambda ()
                                                   (let ((__tmp274116
                                                          (lambda ()
                                                            (let ((__tmp274117
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp274118
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath273818%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp274119
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath273818%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp274119))
                                       _%opts273819%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp274118
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp274117
                       gxc#current-compile-parallel
                       _%parallel?273841%_))))
                 (__tmp274115
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp274116
                                                      gxc#current-compile-identifiers
                                                      __tmp274115))))
                                                (__tmp274113
                                                 (list (list 'compile-exe
                                                             _%srcpath273818%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp274114
                                             gxc#current-compile-context
                                             __tmp274113))))
                                       (__tmp274111 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp274112
                                    gxc#current-compile-timestamp
                                    __tmp274111)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp274110
                           gxc#current-compile-debug
                           _%debug273839%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp274109
                  gxc#current-compile-verbose
                  _%verbosity273837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp274108
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?273835%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp274107
                                        gxc#current-compile-gsc-options
                                        _%gsc-options273833%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp274106
                               gx#current-compilation-target
                               _%target273828%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp274105
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?273823%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp274104
             gxc#current-compile-output-dir
             _%outdir273821%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath273861%_)
        (let ((_%opts273863%_ '()))
          (gxc#compile-exe__% _%srcpath273861%_ _%opts273863%_))))
    (define gxc#compile-exe
      (lambda _g274120_
        (let ((_g274121_ (let () (declare (not safe)) (##length _g274120_))))
          (cond ((let () (declare (not safe)) (##fx= _g274121_ 1))
                 (apply gxc#compile-exe__0 _g274120_))
                ((let () (declare (not safe)) (##fx= _g274121_ 2))
                 (apply gxc#compile-exe__% _g274120_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g274120_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx273814%_ _%opts273815%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts273815%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx273814%_
             _%opts273815%_)
            (gxc#compile-executable-module/separate
             _%ctx273814%_
             _%opts273815%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx273540%_ _%opts273541%_)
        (letrec ((_%generate-stub273543%_
                  (lambda (_%builtin-modules273810%_)
                    (let ((_%mod-main273812%_
                           (gxc#find-runtime-symbol _%ctx273540%_ 'main)))
                      (let ((__tmp274122
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules273810%_))))
                        (declare (not safe))
                        (##write __tmp274122))
                      (let ((__tmp274123
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main273812%_
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
                        (##write __tmp274123))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts273544%_
                  (lambda (_%gerbil-libdir273808%_)
                    (let ((__tmp274124
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir273808%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp274124 read))))
                 (_%replace-extension273545%_
                  (lambda (_%path273805%_ _%ext273806%_)
                    (string-append
                     (path-strip-extension _%path273805%_)
                     _%ext273806%_)))
                 (_%replace-extension-with-c273546%_
                  (lambda (_%path273803%_)
                    (_%replace-extension273545%_ _%path273803%_ '".c")))
                 (_%replace-extension-with-object273547%_
                  (lambda (_%path273801%_)
                    (_%replace-extension273545%_
                     _%path273801%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?273548%_
                  (lambda (_%ctx273799%_)
                    (if (_%exclude-module?273550%_ _%ctx273799%_)
                        '#f
                        (not (_%libgerbil-module?273549%_ _%ctx273799%_)))))
                 (_%libgerbil-module?273549%_
                  (lambda (_%ctx273792%_)
                    (let ((_%id-str273794%_
                           (symbol->string
                            (##structure-ref
                             _%ctx273792%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?273550%_ _%id-str273794%_)
                          '#f
                          (let ((_%$e273796%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str273794%_))))
                            (if _%$e273796%_
                                _%$e273796%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str273794%_))))))))
                 (_%exclude-module?273550%_
                  (lambda (_%ctx-or-str273788%_)
                    (let ((_%str273790%_
                           (if (string? _%ctx-or-str273788%_)
                               _%ctx-or-str273788%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str273788%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str273790%_))))
                 (_%not-file-empty?273551%_
                  (lambda (_%path273786%_)
                    (not (gxc#file-empty? _%path273786%_))))
                 (_%fold-libgerbil-runtime-scm273552%_
                  (lambda (_%gerbil-staticdir273779%_ _%libgerbil-scm273780%_)
                    (let ((_%gerbil-runtime-scm273784%_
                           (let ((__tmp274125
                                  (lambda (_%rtm273782%_)
                                    (path-expand
                                     (let ((__tmp274126
                                            (let ((__tmp274127
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm273782%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp274127
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp274126 '".scm"))
                                     _%gerbil-staticdir273779%_))))
                             (declare (not safe))
                             (##map __tmp274125 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates273553%_
                       (append _%gerbil-runtime-scm273784%_
                               _%libgerbil-scm273780%_)))))
                 (_%remove-duplicates273553%_
                  (lambda (_%strlst273739%_)
                    (let _%loop273741%_ ((_%rest273743%_ _%strlst273739%_)
                                         (_%result273744%_ '()))
                      (let* ((_%$%rest273745273753%_ _%rest273743%_)
                             (_%$%else273747273761%_
                              (lambda () (reverse! _%result273744%_)))
                             (_%$%K273749273767%_
                              (lambda (_%rest273764%_ _%path273765%_)
                                (if (member _%path273765%_ _%result273744%_)
                                    (_%loop273741%_
                                     _%rest273764%_
                                     _%result273744%_)
                                    (_%loop273741%_
                                     _%rest273764%_
                                     (cons _%path273765%_
                                           _%result273744%_))))))
                        (if (pair? _%$%rest273745273753%_)
                            (let ((_%$%hd273750273770%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest273745273753%_)))
                                  (_%$%tl273751273772%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest273745273753%_))))
                              (let* ((_%path273775%_ _%$%hd273750273770%_)
                                     (_%rest273777%_ _%$%tl273751273772%_))
                                (_%$%K273749273767%_
                                 _%rest273777%_
                                 _%path273775%_)))
                            (_%$%else273747273761%_))))))
                 (_%compile-stub273554%_
                  (lambda (_%output-scm273561%_ _%output-bin273562%_)
                    (let* ((_%gerbil-home273564%_
                            (let ((__tmp274128
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp274128)))
                           (_%gerbil-libdir273566%_
                            (path-expand '"lib" _%gerbil-home273564%_))
                           (_%gerbil-staticdir273568%_
                            (path-expand '"static" _%gerbil-libdir273566%_))
                           (_%deps273570%_
                            (gxc#find-runtime-module-deps _%ctx273540%_))
                           (_%libgerbil-deps273572%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?273549%_
                               _%deps273570%_)))
                           (_%libgerbil-scm273574%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps273572%_)))
                           (_%libgerbil-scm273576%_
                            (_%fold-libgerbil-runtime-scm273552%_
                             _%gerbil-staticdir273568%_
                             _%libgerbil-scm273574%_))
                           (_%libgerbil-c273578%_
                            (map _%replace-extension-with-c273546%_
                                 _%libgerbil-scm273576%_))
                           (_%libgerbil-o273580%_
                            (map _%replace-extension-with-object273547%_
                                 _%libgerbil-scm273576%_))
                           (_%src-deps273582%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?273548%_
                               _%deps273570%_)))
                           (_%src-deps-scm273584%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps273582%_)))
                           (_%src-deps-scm273586%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?273551%_
                               _%src-deps-scm273584%_)))
                           (_%src-deps-scm273588%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm273586%_)))
                           (_%src-deps-c273590%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c273546%_
                                     _%src-deps-scm273588%_)))
                           (_%src-deps-o273592%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object273547%_
                                     _%src-deps-scm273588%_)))
                           (_%src-bin-scm273594%_
                            (gxc#find-static-module-file _%ctx273540%_))
                           (_%src-bin-scm273596%_
                            (path-expand _%src-bin-scm273594%_))
                           (_%src-bin-c273598%_
                            (_%replace-extension-with-c273546%_
                             _%src-bin-scm273596%_))
                           (_%src-bin-o273600%_
                            (_%replace-extension-with-object273547%_
                             _%src-bin-scm273596%_))
                           (_%output-bin273602%_
                            (path-expand _%output-bin273562%_))
                           (_%output-scm273604%_
                            (path-expand _%output-scm273561%_))
                           (_%output-c273606%_
                            (_%replace-extension-with-c273546%_
                             _%output-scm273604%_))
                           (_%output-o273608%_
                            (_%replace-extension-with-object273547%_
                             _%output-scm273604%_))
                           (_%output_-c273610%_
                            (_%replace-extension273545%_
                             _%output-scm273604%_
                             '"_.c"))
                           (_%output_-o273612%_
                            (_%replace-extension273545%_
                             _%output-scm273604%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts273614%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts273616%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts273618%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir273568%_))
                           (_%output-ld-opts273620%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts273622%_
                            (_%get-libgerbil-ld-opts273544%_
                             _%gerbil-libdir273566%_))
                           (_%rpath273624%_
                            (gxc#gerbil-rpath _%gerbil-libdir273566%_))
                           (_%builtin-modules273628%_
                            (_%remove-duplicates273553%_
                             (let ((__tmp274129
                                    (let ((__tmp274131
                                           (lambda (_%mod273626%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod273626%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp274130
                                           (cons _%ctx273540%_
                                                 _%deps273570%_)))
                                      (declare (not safe))
                                      (##map __tmp274131 __tmp274130))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp274129)))))
                      (letrec ((_%compile-obj273631%_
                                (lambda (_%scm-path273638%_ _%c-path273639%_)
                                  (let* ((_%o-path273641%_
                                          (_%replace-extension273545%_
                                           _%c-path273639%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock273643%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path273641%_
                                             '".lock")))
                                         (_%locked273645%_ '#f)
                                         (_%unlock273648%_
                                          (lambda ()
                                            (close-port _%locked273645%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock273643%_)))))
                                    (let _%retry273651%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock273643%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry273651%_))
                                          (begin
                                            (set! _%locked273645%_
                                                  (let* ((_%handler273654%_
                                                          false)
                                                         (_%thunk273658%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock273643%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler273663%_ _%handler273654%_)
                 (_%thunk273719%_ _%thunk273658%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler273663%_
                                                     _%thunk273719%_)))
                                            (if _%locked273645%_
                                                '#!void
                                                (_%retry273651%_)))))
                                    (let ((__tmp274133
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path273641%_)))
                                                     (not _%scm-path273638%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path273638%_
                                                        _%o-path273641%_)))
                                                 (let ((_%gsc-cc-opts273736%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp274134
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp274135 (cons _%c-path273639%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts273618%_ __tmp274135))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts273736%_ __tmp274134)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp274132
                                           (lambda () (_%unlock273648%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp274133
                                       __tmp274132))))))
                        (let ((__tmp274136
                               (lambda ()
                                 (let ((__tmp274137
                                        (path-directory _%output-bin273602%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp274137)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp274136))
                        (gxc#with-output-to-scheme-file
                         _%output-scm273604%_
                         (lambda ()
                           (_%generate-stub273543%_
                            _%builtin-modules273628%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it273636%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp274138
                                                   (let ((__tmp274139
                                                          (let ((__tmp274140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm273596%_
                               (cons _%output-scm273604%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm273588%_ __tmp274140))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c273578%_
                                                      __tmp274139))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts273614%_
                                               __tmp274138))))
                                     (let ((__tmp274143
                                            (let ((__tmp274144
                                                   (cons _%src-bin-scm273596%_
                                                         (cons _%output-scm273604%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm273588%_
                                               __tmp274144)))
                                           (__tmp274141
                                            (let ((__tmp274142
                                                   (cons _%src-bin-c273598%_
                                                         (cons _%output-c273606%_
                                                               (cons _%output_-c273610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c273590%_
                                               __tmp274142))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj273631%_
                                        __tmp274143
                                        __tmp274141))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin273602%_
                                                        (let ((__tmp274145
                                                               (cons _%src-bin-o273600%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o273608%_
                                   (cons _%output_-o273612%_
                                         (let ((__tmp274146
                                                (let ((__tmp274147
                                                       (let ((__tmp274149
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath273624%_ '())
                          '()))
                     (__tmp274148
                      (cons '"-L"
                            (cons _%gerbil-libdir273566%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts273622%_)))))
                 (declare (not safe))
                 (##append __tmp274149 __tmp274148))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts273620%_
                                                   __tmp274147))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o273580%_
                                            __tmp274146)))))))
                  (declare (not safe))
                  (##append _%src-deps-o273592%_ __tmp274145))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp274150
                                            (cons _%output-c273606%_
                                                  (cons _%output_-c273610%_
                                                        (cons _%output-o273608%_
                                                              (cons _%output_-o273612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp274150)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it273636%_))
                                  (_%compile-it273636%_)))
                            '#!void))))))
          (let* ((_%output-bin273556%_
                  (gxc#compile-exe-output-file _%ctx273540%_ _%opts273541%_))
                 (_%output-scm273558%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin273556%_ '"__exe.scm"))))
            (_%compile-stub273554%_
             _%output-scm273558%_
             _%output-bin273556%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx273362%_ _%opts273363%_)
        (letrec ((_%reset-declare273365%_
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
                 (_%generate-stub273366%_
                  (lambda (_%deps273531%_)
                    (let ((_%mod-main273533%_
                           (gxc#find-runtime-symbol _%ctx273362%_ 'main))
                          (_%reset-decl273534%_ (_%reset-declare273365%_))
                          (_%user-decl273535%_ (_%user-declare273367%_)))
                      (for-each
                       (lambda (_%dep273537%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl273534%_))
                         (newline)
                         (if _%user-decl273535%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl273535%_))
                               (newline))
                             '#!void)
                         (let ((__tmp274151 (list 'include _%dep273537%_)))
                           (declare (not safe))
                           (##write __tmp274151))
                         (newline))
                       _%deps273531%_)
                      (let ((__tmp274152
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main273533%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp274152))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare273367%_
                  (lambda ()
                    (let* ((_%gsc-opts273436%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts273363%_)))
                           (_%gsc-prelude273438%_
                            (if _%gsc-opts273436%_
                                (member '"-prelude" _%gsc-opts273436%_)
                                '#f))
                           (_%gsc-prelude273440%_
                            (if _%gsc-prelude273438%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude273438%_)))
                                '#f)))
                      (let _%lp273443%_ ((_%rest273445%_
                                          (cons _%gsc-prelude273440%_ '()))
                                         (_%user-decls273446%_ '()))
                        (let* ((_%$%rest273447273455%_ _%rest273445%_)
                               (_%$%else273449273463%_
                                (lambda ()
                                  (if (null? _%user-decls273446%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls273446%_)))))
                               (_%$%K273451273519%_
                                (lambda (_%rest273466%_ _%expr273467%_)
                                  (let* ((_%$%expr273468273480%_
                                          _%expr273467%_)
                                         (_%$%else273471273488%_
                                          (lambda ()
                                            (_%lp273443%_
                                             _%rest273466%_
                                             _%user-decls273446%_))))
                                    (let ((_%$%K273476273509%_
                                           (lambda (_%decls273507%_)
                                             (_%lp273443%_
                                              _%rest273466%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls273446%_
                                                 _%decls273507%_)))))
                                          (_%$%K273473273494%_
                                           (lambda (_%exprs273492%_)
                                             (_%lp273443%_
                                              (append _%exprs273492%_
                                                      _%rest273466%_)
                                              _%user-decls273446%_))))
                                      (if (pair? _%$%expr273468273480%_)
                                          (let ((_%$%tl273478273514%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr273468273480%_)))
                                                (_%$%hd273477273512%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr273468273480%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd273477273512%_
                                                         'declare))
                                                (let ((_%decls273517%_
                                                       _%$%tl273478273514%_))
                                                  (_%$%K273476273509%_
                                                   _%decls273517%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd273477273512%_
                                                             'begin))
                                                    (let ((_%exprs273502%_
                                                           _%$%tl273478273514%_))
                                                      (_%$%K273473273494%_
                                                       _%exprs273502%_))
                                                    (_%$%else273471273488%_))))
                                          (_%$%else273471273488%_)))))))
                          (if (pair? _%$%rest273447273455%_)
                              (let ((_%$%hd273452273522%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest273447273455%_)))
                                    (_%$%tl273453273524%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest273447273455%_))))
                                (let* ((_%expr273527%_ _%$%hd273452273522%_)
                                       (_%rest273529%_ _%$%tl273453273524%_))
                                  (_%$%K273451273519%_
                                   _%rest273529%_
                                   _%expr273527%_)))
                              (_%$%else273449273463%_)))))))
                 (_%compile-stub273368%_
                  (lambda (_%output-scm273375%_ _%output-bin273376%_)
                    (let* ((_%gerbil-home273378%_
                            (let ((__tmp274153
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp274153)))
                           (_%gerbil-libdir273380%_
                            (path-expand '"lib" _%gerbil-home273378%_))
                           (_%runtime273382%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp273384%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home273378%_))
                           (_%include-gambit-sharp273386%_
                            (gxc#include-source _%gambit-sharp273384%_))
                           (_%bin-scm273388%_
                            (gxc#find-static-module-file _%ctx273362%_))
                           (_%deps273390%_
                            (gxc#find-runtime-module-deps _%ctx273362%_))
                           (_%deps273392%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps273390%_)))
                           (_%deps273397%_
                            (let ((__tmp274154
                                   (lambda (_%$obj273394%_)
                                     (not (gxc#file-empty? _%$obj273394%_)))))
                              (declare (not safe))
                              (##filter __tmp274154 _%deps273392%_)))
                           (_%deps273401%_
                            (let ((__tmp274155
                                   (lambda (_%f273399%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f273399%_
                                             _%runtime273382%_))))))
                              (declare (not safe))
                              (##filter __tmp274155 _%deps273397%_)))
                           (_%output-base273403%_
                            (let ((__tmp274156
                                   (path-strip-extension
                                    _%output-scm273375%_)))
                              (declare (not safe))
                              (##string-append __tmp274156)))
                           (_%output-c273405%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base273403%_ '".c")))
                           (_%output-o273407%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base273403%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_273409%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base273403%_ '"_.c")))
                           (_%output-o_273411%_
                            (let ((__tmp274157
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base273403%_
                               __tmp274157)))
                           (_%gsc-link-opts273413%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts273415%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts273417%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir273380%_)))
                           (_%output-ld-opts273419%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros273421%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp273386%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp273386%_
                                            '()))))
                           (_%gsc-link-opts273423%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts273413%_
                               _%gsc-gx-macros273421%_)))
                           (_%rpath273425%_
                            (gxc#gerbil-rpath _%gerbil-libdir273380%_))
                           (_%default-ld-options273427%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp274158
                             (lambda ()
                               (let ((__tmp274159
                                      (path-directory _%output-bin273376%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp274159)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp274158))
                      (gxc#with-output-to-scheme-file
                       _%output-scm273375%_
                       (lambda ()
                         (_%generate-stub273366%_
                          (let ((__tmp274160
                                 (let ((__tmp274161
                                        (cons _%bin-scm273388%_ '())))
                                   (declare (not safe))
                                   (##append _%deps273401%_ __tmp274161))))
                            (declare (not safe))
                            (##append _%runtime273382%_ __tmp274160)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it273433%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_273409%_
                                                      (let ((__tmp274162
                                                             (cons _%output-scm273375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts273423%_ __tmp274162))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp274163
                                                 (let ((__tmp274164
                                                        (cons _%output-c273405%_
                                                              (cons _%output-c_273409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts273417%_
                                                    __tmp274164))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts273415%_
                                             __tmp274163))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin273376%_
                                                      (cons _%output-o273407%_
                                                            (cons _%output-o_273411%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp274165
                                 (let ((__tmp274167
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath273425%_ '())
                                            '()))
                                       (__tmp274166
                                        (cons '"-L"
                                              (cons _%gerbil-libdir273380%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options273427%_)))))
                                   (declare (not safe))
                                   (##append __tmp274167 __tmp274166))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts273419%_
                             __tmp274165)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it273433%_))
                                (_%compile-it273433%_)))
                          '#!void)))))
          (let* ((_%output-bin273370%_
                  (gxc#compile-exe-output-file _%ctx273362%_ _%opts273363%_))
                 (_%output-scm273372%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin273370%_ '"__exe.scm"))))
            (_%compile-stub273368%_
             _%output-scm273372%_
             _%output-bin273370%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx273311%_ _%id273312%_)
        (let ((_%$e273358%_
               (let ((__tmp274169
                      (lambda (_%$%e273313273315%_)
                        (let* ((_%$%$%e273313273317273327%_
                                _%$%e273313273315%_)
                               (_%$%else273319273335%_ (lambda () '#f))
                               (_%$%K273321273339%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e273313273317273327%_
                                 'gx#module-export::t))
                              (let* ((_%$%e273322273342%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273313273317273327%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e273323273345%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273313273317273327%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e273324273348%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e273313273317273327%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e273324273348%_ '0))
                                    (let ((_%$%e273325273351%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e273313273317273327%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e273325273351%_
                                               _%id273312%_)
                                          (_%$%K273321273339%_)
                                          (_%$%else273319273335%_)))
                                    (_%$%else273319273335%_)))
                              (_%$%else273319273335%_)))))
                     (__tmp274168
                      (##structure-ref
                       _%ctx273311%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp274169 __tmp274168))))
          (if _%$e273358%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e273358%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx273302%_ _%id273303%_)
        (let ((_%$e273305%_
               (gxc#find-export-binding _%ctx273302%_ _%id273303%_)))
          (if _%$e273305%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e273305%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id273303%_)))
                (##structure-ref _%$e273305%_ '1 gx#binding::t '#f))
              (let ((__tmp274170
                     (##structure-ref
                      _%ctx273302%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp274170
                 _%id273303%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx273168%_)
        (letrec* ((_%ht273170%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template273171%_
                   (lambda (_%in273247%_ _%phi273248%_)
                     (let ((_%iphi273250%_
                            (fx+ _%phi273248%_
                                 (##direct-structure-ref
                                  _%in273247%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports273251%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in273247%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp273253%_ ((_%rest273255%_ _%imports273251%_)
                                          (_%r273256%_ '()))
                         (let* ((_%$%rest273257273265%_ _%rest273255%_)
                                (_%$%else273259273273%_
                                 (lambda () _%r273256%_))
                                (_%$%K273261273290%_
                                 (lambda (_%rest273276%_ _%in273277%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in273277%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi273250%_))
                                           (_%lp273253%_
                                            _%rest273276%_
                                            (cons _%in273277%_ _%r273256%_))
                                           (_%lp273253%_
                                            _%rest273276%_
                                            _%r273256%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in273277%_
                                              'gx#module-import::t))
                                           (let ((_%iphi273281%_
                                                  (fx+ _%phi273248%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in273277%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi273281%_))
                                                 (_%lp273253%_
                                                  _%rest273276%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in273277%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r273256%_))
                                                 (_%lp273253%_
                                                  _%rest273276%_
                                                  _%r273256%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in273277%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi273284%_
                                                      (fx+ _%iphi273250%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in273277%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi273284%_))
                                                     (_%lp273253%_
                                                      _%rest273276%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in273277%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r273256%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi273284%_))
                                                         (_%lp273253%_
                                                          _%rest273276%_
                                                          (let ((__tmp274171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template273171%_
                          _%in273277%_
                          _%iphi273250%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r273256%_ __tmp274171)))
                 (_%lp273253%_ _%rest273276%_ _%r273256%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp273253%_
                                                _%rest273276%_
                                                _%r273256%_)))))))
                           (if (pair? _%$%rest273257273265%_)
                               (let ((_%$%hd273262273293%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest273257273265%_)))
                                     (_%$%tl273263273295%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest273257273265%_))))
                                 (let* ((_%in273298%_ _%$%hd273262273293%_)
                                        (_%rest273300%_ _%$%tl273263273295%_))
                                   (_%$%K273261273290%_
                                    _%rest273300%_
                                    _%in273298%_)))
                               (_%$%else273259273273%_)))))))
                  (_%find-deps273172%_
                   (lambda (_%rest273180%_ _%deps273181%_)
                     (let* ((_%$%rest273182273190%_ _%rest273180%_)
                            (_%$%else273184273198%_ (lambda () _%deps273181%_))
                            (_%$%K273186273235%_
                             (lambda (_%rest273201%_ _%hd273202%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd273202%_
                                      'gx#module-context::t))
                                   (let ((_%id273205%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd273202%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports273206%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd273202%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht273170%_
                                            _%id273205%_))
                                         (_%find-deps273172%_
                                          _%rest273201%_
                                          _%deps273181%_)
                                         (let ((_%$e273209%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd273202%_))))
                                           (if _%$e273209%_
                                               (let ((_%xdeps273214%_
                                                      (_%find-deps273172%_
                                                       (cons _%$e273209%_
                                                             _%imports273206%_)
                                                       _%deps273181%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht273170%_
                                                    _%id273205%_
                                                    _%hd273202%_))
                                                 (_%find-deps273172%_
                                                  _%rest273201%_
                                                  (cons _%hd273202%_
                                                        _%xdeps273214%_)))
                                               (let ((_%xdeps273217%_
                                                      (_%find-deps273172%_
                                                       _%imports273206%_
                                                       _%deps273181%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht273170%_
                                                    _%id273205%_
                                                    _%hd273202%_))
                                                 (_%find-deps273172%_
                                                  _%rest273201%_
                                                  (cons _%hd273202%_
                                                        _%xdeps273217%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd273202%_
                                          'gx#prelude-context::t))
                                       (let ((_%id273220%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd273202%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht273170%_
                                                _%id273220%_))
                                             (_%find-deps273172%_
                                              _%rest273201%_
                                              _%deps273181%_)
                                             (let ((_%xdeps273224%_
                                                    (_%find-deps273172%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd273202%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps273181%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht273170%_
                                                      _%id273220%_))
                                                   (_%find-deps273172%_
                                                    _%rest273201%_
                                                    _%xdeps273224%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht273170%_
                                                        _%id273220%_
                                                        _%hd273202%_))
                                                     (_%find-deps273172%_
                                                      _%rest273201%_
                                                      (cons _%hd273202%_
                                                            _%xdeps273224%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd273202%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd273202%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps273172%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd273202%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest273201%_)
                                                _%deps273181%_)
                                               (_%find-deps273172%_
                                                _%rest273201%_
                                                _%deps273181%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd273202%_
                                                  'gx#module-export::t))
                                               (_%find-deps273172%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd273202%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest273201%_)
                                                _%deps273181%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd273202%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd273202%_ '2 '#f '#f)))
               (_%find-deps273172%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd273202%_ '1 '#f '#f))
                      _%rest273201%_)
                _%deps273181%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd273202%_ '2 '#f '#f)))
                   (let ((_%xdeps273231%_
                          (_%import-set-template273171%_ _%hd273202%_ '0)))
                     (_%find-deps273172%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest273201%_ _%xdeps273231%_))
                      _%deps273181%_))
                   (_%find-deps273172%_ _%rest273201%_ _%deps273181%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd273202%_))))))))))
                       (if (pair? _%$%rest273182273190%_)
                           (let ((_%$%hd273187273238%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest273182273190%_)))
                                 (_%$%tl273188273240%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest273182273190%_))))
                             (let* ((_%hd273243%_ _%$%hd273187273238%_)
                                    (_%rest273245%_ _%$%tl273188273240%_))
                               (_%$%K273186273235%_
                                _%rest273245%_
                                _%hd273243%_)))
                           (_%$%else273184273198%_))))))
          (let ((__tmp274172
                 (filter gx#expander-context-id
                         (_%find-deps273172%_
                          (let ((_%$e273174%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx273168%_))))
                            (if _%$e273174%_
                                (cons _%$e273174%_
                                      (##structure-ref
                                       _%ctx273168%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx273168%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp274172)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx273098%_)
        (let* ((_%context-id273100%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx273098%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx273098%_ '1 '#f '#f))
                    (string->symbol _%ctx273098%_)))
               (_%scm273102%_
                (let ((__tmp274173
                       (gxc#static-module-name _%context-id273100%_)))
                  (declare (not safe))
                  (##string-append __tmp274173 '".scm")))
               (_%dirs273104%_ (let () (declare (not safe)) (load-path)))
               (_%dirs273110%_
                (let ((_%user-libpath273106%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath273106%_
                      (let ((_%user-libpath273108%_
                             (path-expand '"lib" _%user-libpath273106%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath273108%_ _%dirs273104%_))
                            _%dirs273104%_
                            (cons _%user-libpath273108%_ _%dirs273104%_)))
                      _%dirs273104%_)))
               (_%dirs273120%_
                (let ((_%$e273112%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e273112%_
                      (cons _%$e273112%_ _%dirs273110%_)
                      _%dirs273110%_)))
               (_%dirs273126%_
                (let ((__tmp274174
                       (lambda (_%$%g273121273123%_)
                         (path-expand '"static" _%$%g273121273123%_))))
                  (declare (not safe))
                  (##map __tmp274174 _%dirs273120%_))))
          (let _%lp273129%_ ((_%rest273131%_ _%dirs273126%_))
            (let* ((_%$%rest273132273140%_ _%rest273131%_)
                   (_%$%else273134273148%_
                    (lambda ()
                      (let ((__tmp274175
                             (##structure-ref
                              _%ctx273098%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp274175
                         _%scm273102%_))))
                   (_%$%K273136273156%_
                    (lambda (_%rest273151%_ _%dir273152%_)
                      (let ((_%path273154%_
                             (path-expand _%scm273102%_ _%dir273152%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path273154%_))
                            _%path273154%_
                            (_%lp273129%_ _%rest273151%_))))))
              (if (pair? _%$%rest273132273140%_)
                  (let ((_%$%hd273137273159%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest273132273140%_)))
                        (_%$%tl273138273161%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest273132273140%_))))
                    (let* ((_%dir273164%_ _%$%hd273137273159%_)
                           (_%rest273166%_ _%$%tl273138273161%_))
                      (_%$%K273136273156%_ _%rest273166%_ _%dir273164%_)))
                  (_%$%else273134273148%_)))))))
    (define gxc#file-empty?
      (lambda (_%path273096%_)
        (zero? (let ((__tmp274176 (file-info _%path273096%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp274176)))))
    (define gxc#compile-top-module
      (lambda (_%ctx273087%_)
        (let ((__tmp274177
               (lambda ()
                 (let ((__tmp274178
                        (lambda ()
                          (let ((__tmp274179
                                 (lambda ()
                                   (let ((__tmp274181
                                          (lambda ()
                                            (let ((__tmp274183
                                                   (lambda ()
                                                     (let ((__tmp274185
                                                            (lambda ()
                                                              (let ((__tmp274186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx273087%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp274186))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp274187
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx273087%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp274187))
                          '#!void)
                      (gxc#collect-bindings _%ctx273087%_)
                      (gxc#compile-runtime-code _%ctx273087%_)
                      (gxc#compile-meta-code _%ctx273087%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx273087%_)
                          '#!void)))
                   (__tmp274184
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
                __tmp274185
                gxc#current-compile-runtime-names
                __tmp274184))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp274182
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp274183
                                               gxc#current-compile-runtime-sections
                                               __tmp274182))))
                                         (__tmp274180
                                          (let ((__obj274076
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj274076))
                                            __obj274076)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp274181
                                      gxc#current-compile-symbol-table
                                      __tmp274180)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp274179
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp274178
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274177
           gx#current-expander-context
           _%ctx273087%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx273085%_)
        (let ((__tmp274188
               (##structure-ref _%ctx273085%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp274188))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx273030%_)
        (letrec ((_%compile1273032%_
                  (lambda (_%ctx273074%_)
                    (let* ((_%code273076%_
                            (##structure-ref
                             _%ctx273074%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm273080%_
                            (let ((_%idstr273078%_
                                   (let ((__tmp274189
                                          (##structure-ref
                                           _%ctx273074%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp274189))))
                              (declare (not safe))
                              (##string-append _%idstr273078%_ '"~0")))
                           (_%rtc?273082%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code273076%_))))
                      (if _%rtc?273082%_
                          (let ((__tmp274190
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp274190
                             _%ctx273074%_
                             _%rtm273080%_))
                          '#!void)
                      (_%generate-runtime-code273034%_
                       _%ctx273074%_
                       _%code273076%_
                       (if _%rtc?273082%_ _%rtm273080%_ '#f)))))
                 (_%context-timestamp273033%_
                  (lambda (_%ctx273072%_)
                    (let ((__tmp274191
                           (let ((__tmp274192
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx273072%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp274192 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp274191))))
                 (_%generate-runtime-code273034%_
                  (lambda (_%ctx273041%_ _%code273042%_ _%rtm273043%_)
                    (let* ((_%runtime-code?273045%_ (if _%rtm273043%_ '#t '#f))
                           (_%lifts273047%_ (box '()))
                           (_%runtime-code273053%_
                            (if _%runtime-code?273045%_
                                (let ((__tmp274193
                                       (lambda ()
                                         (let ((__tmp274194
                                                (lambda ()
                                                  (let ((__tmp274195
                                                         (lambda ()
                                                           (let ((__tmp274197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code273042%_))))
                         (__tmp274196
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp274197
                      gxc#current-compile-marks
                      __tmp274196)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp274195
                                                     gxc#current-compile-lift
                                                     _%lifts273047%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp274194
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp274193
                                   gx#current-expander-context
                                   _%ctx273041%_))
                                '#f))
                           (_%runtime-code273055%_
                            (if _%runtime-code?273045%_
                                (if (null? (unbox _%lifts273047%_))
                                    _%runtime-code273053%_
                                    (cons 'begin
                                          (let ((__tmp274199
                                                 (reverse (unbox _%lifts273047%_)))
                                                (__tmp274198
                                                 (cons _%runtime-code273053%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp274199
                                             __tmp274198))))
                                '#f))
                           (_%runtime-code273057%_
                            (if _%runtime-code?273045%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp273033%_
                                                   _%ctx273041%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code273055%_ '())))
                                '#f))
                           (_%loader-code273060%_
                            (let ((__tmp274200
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code273042%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp274200
                               gx#current-expander-context
                               _%ctx273041%_)))
                           (_%loader-code273062%_
                            (cons 'begin
                                  (cons _%loader-code273060%_
                                        (cons (if _%runtime-code?273045%_
                                                  (cons 'load-module
                                                        (cons _%rtm273043%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0273064%_
                            (gxc#compile-output-file _%ctx273041%_ '0 '".scm"))
                           (_%scmrt273066%_
                            (gxc#compile-output-file
                             _%ctx273041%_
                             '#f
                             '".scm"))
                           (_%scms273068%_
                            (gxc#compile-static-output-file _%ctx273041%_)))
                      (if _%runtime-code?273045%_
                          (gxc#compile-scm-file__0
                           _%scm0273064%_
                           _%runtime-code273057%_)
                          '#!void)
                      (let ((__tmp274201
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt273066%_
                                _%loader-code273062%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp274201
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms273068%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms273068%_))
                          '#!void)
                      (if _%runtime-code?273045%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0273064%_ _%scms273068%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms273068%_ void)))))))
          (let* ((_%all-modules273036%_
                  (cons _%ctx273030%_ (gxc#lift-nested-modules _%ctx273030%_)))
                 (__tmp274202
                  (lambda (_%ctx273038%_)
                    (let ((__tmp274203
                           (lambda () (_%compile1273032%_ _%ctx273038%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp274203
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp274202 _%all-modules273036%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx272929%_)
        (letrec ((_%compile-ssi272931%_
                  (lambda (_%code272998%_)
                    (let* ((_%path273000%_
                            (gxc#compile-output-file
                             _%ctx272929%_
                             '#f
                             '".ssi"))
                           (_%prelude273012%_
                            (let* ((_%super273002%_
                                    (##structure-ref
                                     _%ctx272929%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e273004%_
                                    (##structure-ref
                                     _%super273002%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e273004%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e273004%_))
                                  ':<root>)))
                           (_%ns273014%_
                            (##structure-ref
                             _%ctx272929%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr273016%_
                            (symbol->string
                             (##structure-ref
                              _%ctx272929%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg273024%_
                            (let ((_%$e273018%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr273016%_ '#\/))))
                              (if _%$e273018%_
                                  (let ((__tmp274204
                                         (substring
                                          _%idstr273016%_
                                          '0
                                          _%$e273018%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp274204))
                                  '#f)))
                           (_%rt273026%_
                            (let ((__tmp274205
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp274205 _%ctx272929%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path273000%_))
                      (gxc#with-output-to-scheme-file
                       _%path273000%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude273012%_))
                         (if _%pkg273024%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg273024%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns273014%_))
                         (newline)
                         (pretty-print _%code272998%_)
                         (if _%rt273026%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt273026%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi272932%_
                  (lambda (_%part272937%_)
                    (let* ((_%$%part272938272951%_ _%part272937%_)
                           (_%$%E272940272955%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part272938272951%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K272941272967%_
                            (lambda (_%code272958%_
                                     _%n272959%_
                                     _%phi272960%_
                                     _%phi-ctx272961%_)
                              (let ((_%code272965%_
                                     (let ((__tmp274206
                                            (lambda ()
                                              (let ((__tmp274207
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code272958%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp274207
                                                 gx#current-expander-phi
                                                 _%phi272960%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp274206
                                        gx#current-expander-context
                                        _%phi-ctx272961%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx272929%_
                                  _%n272959%_
                                  '".scm")
                                 _%code272965%_
                                 '#t)))))
                      (if (pair? _%$%part272938272951%_)
                          (let ((_%$%hd272942272970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part272938272951%_)))
                                (_%$%tl272943272972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part272938272951%_))))
                            (let ((_%phi-ctx272975%_ _%$%hd272942272970%_))
                              (if (pair? _%$%tl272943272972%_)
                                  (let ((_%$%hd272944272977%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272943272972%_)))
                                        (_%$%tl272945272979%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272943272972%_))))
                                    (let ((_%phi272982%_ _%$%hd272944272977%_))
                                      (if (pair? _%$%tl272945272979%_)
                                          (let ((_%$%hd272946272984%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl272945272979%_)))
                                                (_%$%tl272947272986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl272945272979%_))))
                                            (let ((_%n272989%_
                                                   _%$%hd272946272984%_))
                                              (if (pair? _%$%tl272947272986%_)
                                                  (let ((_%$%hd272948272991%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl272947272986%_)))
                                                        (_%$%tl272949272993%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl272947272986%_))))
                                                    (let ((_%code272996%_
                                                           _%$%hd272948272991%_))
                                                      (if (null? _%$%tl272949272993%_)
                                                          (_%$%K272941272967%_
                                                           _%code272996%_
                                                           _%n272989%_
                                                           _%phi272982%_
                                                           _%phi-ctx272975%_)
                                                          (_%$%E272940272955%_))))
                                                  (_%$%E272940272955%_))))
                                          (_%$%E272940272955%_))))
                                  (_%$%E272940272955%_))))
                          (_%$%E272940272955%_))))))
          (let ((_g274208_ (gxc#generate-meta-code _%ctx272929%_)))
            (begin
              (let ((_g274209_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g274208_)
                           (##values-length _g274208_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g274209_ 2)))
                    (error "Context expects 2 values" _g274209_)))
              (let ((_%ssi-code272934%_
                     (let () (declare (not safe)) (##values-ref _g274208_ 0)))
                    (_%phi-code272935%_
                     (let () (declare (not safe)) (##values-ref _g274208_ 1))))
                (begin
                  (_%compile-ssi272931%_ _%ssi-code272934%_)
                  (for-each _%compile-phi272932%_ _%phi-code272935%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx272911%_)
        (let* ((_%path272913%_
                (gxc#compile-output-file _%ctx272911%_ '#f '".ssxi.ss"))
               (_%code272915%_
                (let ((__tmp274210
                       (##structure-ref
                        _%ctx272911%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp274210)))
               (_%idstr272917%_
                (symbol->string
                 (##structure-ref
                  _%ctx272911%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg272925%_
                (let ((_%$e272919%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr272917%_ '#\/))))
                  (if _%$e272919%_
                      (let ((__tmp274211
                             (substring _%idstr272917%_ '0 _%$e272919%_)))
                        (declare (not safe))
                        (##string->symbol __tmp274211))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path272913%_))
          (gxc#with-output-to-scheme-file
           _%path272913%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg272925%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg272925%_))
                 '#!void)
             (newline)
             (pretty-print _%code272915%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx272904%_)
        (let* ((_%state272906%_
                (let ((__obj274077
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj274077 _%ctx272904%_))
                  __obj274077))
               (_%ssi-code272908%_
                (let ((__tmp274212
                       (##structure-ref
                        _%ctx272904%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state272906%_
                   __tmp274212))))
          (values _%ssi-code272908%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state272906%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx272896%_)
        (let* ((_%lifts272898%_ (box '()))
               (__tmp274213
                (lambda ()
                  (let ((__tmp274215
                         (lambda ()
                           (let ((_%code272902%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx272896%_))))
                             (if (null? (unbox _%lifts272898%_))
                                 _%code272902%_
                                 (cons 'begin
                                       (let ((__tmp274217
                                              (reverse (unbox _%lifts272898%_)))
                                             (__tmp274216
                                              (cons _%code272902%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp274217
                                          __tmp274216)))))))
                        (__tmp274214
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp274215
                     gxc#current-compile-marks
                     __tmp274214)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274213
           gxc#current-compile-lift
           _%lifts272898%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx272892%_)
        (let ((_%modules272894%_ (box '())))
          (let ((__tmp274218
                 (##structure-ref _%ctx272892%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules272894%_ __tmp274218))
          (reverse (unbox _%modules272894%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path272872%_ _%code272873%_ _%phi?272874%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path272872%_))
        (gxc#with-output-to-scheme-file
         _%path272872%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?272874%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code272873%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it272878%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path272872%_ _%phi?272874%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp274219 (list 'compile-file _%path272872%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it272878%_ __tmp274219))
                  (_%compile-it272878%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path272883%_ _%code272884%_)
        (let ((_%phi?272886%_ '#f))
          (gxc#compile-scm-file__%
           _%path272883%_
           _%code272884%_
           _%phi?272886%_))))
    (define gxc#compile-scm-file
      (lambda _g274220_
        (let ((_g274221_ (let () (declare (not safe)) (##length _g274220_))))
          (cond ((let () (declare (not safe)) (##fx= _g274221_ 2))
                 (apply gxc#compile-scm-file__0 _g274220_))
                ((let () (declare (not safe)) (##fx= _g274221_ 3))
                 (apply gxc#compile-scm-file__% _g274220_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g274220_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?272773%_)
        (let _%lp272775%_ ((_%rest272777%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts272778%_ '()))
          (let* ((_%$%rest272779272799%_ _%rest272777%_)
                 (_%$%else272783272807%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts272778%_)))
                        (reverse _%opts272778%_)))))
            (let ((_%$%K272793272850%_
                   (lambda (_%rest272848%_)
                     (_%lp272775%_ _%rest272848%_ _%opts272778%_)))
                  (_%$%K272788272832%_
                   (lambda (_%rest272830%_)
                     (_%lp272775%_ _%rest272830%_ _%opts272778%_)))
                  (_%$%K272785272814%_
                   (lambda (_%rest272811%_ _%opt272812%_)
                     (_%lp272775%_
                      _%rest272811%_
                      (cons _%opt272812%_ _%opts272778%_)))))
              (if (pair? _%$%rest272779272799%_)
                  (let ((_%$%tl272795272855%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest272779272799%_)))
                        (_%$%hd272794272853%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest272779272799%_))))
                    (if (equal? _%$%hd272794272853%_ '"-cc-options")
                        (if (pair? _%$%tl272795272855%_)
                            (let* ((_%$%tl272797272858%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl272795272855%_)))
                                   (_%rest272861%_ _%$%tl272797272858%_))
                              (_%$%K272793272850%_ _%rest272861%_))
                            (let ((_%opt272822%_ _%$%hd272794272853%_)
                                  (_%rest272824%_ _%$%tl272795272855%_))
                              (_%$%K272785272814%_
                               _%rest272824%_
                               _%opt272822%_)))
                        (if (equal? _%$%hd272794272853%_ '"-ld-options")
                            (if (pair? _%$%tl272795272855%_)
                                (let* ((_%$%tl272792272840%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl272795272855%_)))
                                       (_%rest272843%_ _%$%tl272792272840%_))
                                  (_%$%K272788272832%_ _%rest272843%_))
                                (let ((_%opt272822%_ _%$%hd272794272853%_)
                                      (_%rest272824%_ _%$%tl272795272855%_))
                                  (_%$%K272785272814%_
                                   _%rest272824%_
                                   _%opt272822%_)))
                            (let ((_%opt272822%_ _%$%hd272794272853%_)
                                  (_%rest272824%_ _%$%tl272795272855%_))
                              (_%$%K272785272814%_
                               _%rest272824%_
                               _%opt272822%_)))))
                  (_%$%else272783272807%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?272867%_ '#f)) (gxc#gsc-link-options__% _%phi?272867%_))))
    (define gxc#gsc-link-options
      (lambda _g274222_
        (let ((_g274223_ (let () (declare (not safe)) (##length _g274222_))))
          (cond ((let () (declare (not safe)) (##fx= _g274223_ 0))
                 (apply gxc#gsc-link-options__0 _g274222_))
                ((let () (declare (not safe)) (##fx= _g274223_ 1))
                 (apply gxc#gsc-link-options__% _g274222_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g274222_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords272623%_ _%$%static?272619272624%_ _%phi?272625%_)
        (let ((_%static?272627%_
               (if (eq? _%$%static?272619272624%_ absent-value)
                   '#f
                   _%$%static?272619272624%_)))
          (if _%phi?272625%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp272629%_ ((_%rest272631%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts272632%_ '()))
                (let* ((_%$%rest272633272659%_ _%rest272631%_)
                       (_%$%else272638272667%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts272632%_)))
                              (reverse! _%opts272632%_)))))
                  (let ((_%$%K272653272730%_
                         (lambda (_%rest272727%_ _%opt272728%_)
                           (if _%static?272627%_
                               (_%lp272629%_
                                _%rest272727%_
                                (cons _%opt272728%_
                                      (cons '"-cc-options" _%opts272632%_)))
                               (_%lp272629%_ _%rest272727%_ _%opts272632%_))))
                        (_%$%K272648272707%_
                         (lambda (_%rest272704%_ _%opt272705%_)
                           (_%lp272629%_
                            _%rest272704%_
                            (cons _%opt272705%_
                                  (cons '"-cc-options" _%opts272632%_)))))
                        (_%$%K272643272687%_
                         (lambda (_%rest272685%_)
                           (_%lp272629%_ _%rest272685%_ _%opts272632%_)))
                        (_%$%K272640272673%_
                         (lambda (_%rest272671%_)
                           (_%lp272629%_ _%rest272671%_ _%opts272632%_))))
                    (if (pair? _%$%rest272633272659%_)
                        (let ((_%$%tl272655272735%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest272633272659%_)))
                              (_%$%hd272654272733%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest272633272659%_))))
                          (if (equal? _%$%hd272654272733%_ '"-cc-options")
                              (if (pair? _%$%tl272655272735%_)
                                  (let ((_%$%tl272657272740%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272655272735%_)))
                                        (_%$%hd272656272738%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272655272735%_))))
                                    (if (equal? _%$%hd272656272738%_
                                                '"-Bstatic")
                                        (let ((_%opt272743%_
                                               _%$%hd272656272738%_)
                                              (_%rest272745%_
                                               _%$%tl272657272740%_))
                                          (_%$%K272653272730%_
                                           _%rest272745%_
                                           _%opt272743%_))
                                        (let ((_%opt272720%_
                                               _%$%hd272656272738%_)
                                              (_%rest272722%_
                                               _%$%tl272657272740%_))
                                          (_%$%K272648272707%_
                                           _%rest272722%_
                                           _%opt272720%_))))
                                  (let ((_%rest272679%_ _%$%tl272655272735%_))
                                    (_%$%K272640272673%_ _%rest272679%_)))
                              (if (equal? _%$%hd272654272733%_ '"-ld-options")
                                  (if (pair? _%$%tl272655272735%_)
                                      (let* ((_%$%tl272647272695%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl272655272735%_)))
                                             (_%rest272698%_
                                              _%$%tl272647272695%_))
                                        (_%$%K272643272687%_ _%rest272698%_))
                                      (let ((_%rest272679%_
                                             _%$%tl272655272735%_))
                                        (_%$%K272640272673%_ _%rest272679%_)))
                                  (let ((_%rest272679%_ _%$%tl272655272735%_))
                                    (_%$%K272640272673%_ _%rest272679%_)))))
                        (_%$%else272638272667%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords272750%_ _%$%static?272619272751%_)
        (let ((_%phi?272753%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords272750%_
           _%$%static?272619272751%_
           _%phi?272753%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g274224_
        (let ((_g274225_ (let () (declare (not safe)) (##length _g274224_))))
          (cond ((let () (declare (not safe)) (##fx= _g274225_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g274224_))
                ((let () (declare (not safe)) (##fx= _g274225_ 3))
                 (apply gxc#gsc-cc-options__%__% _g274224_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g274224_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords272762%_ . _%args272763%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords272762%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272762%_
                  'static:
                  absent-value))
               _%args272763%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args272620272769%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args272620272769%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords272469%_ _%$%static?272465272470%_ _%phi?272471%_)
        (let ((_%static?272473%_
               (if (eq? _%$%static?272465272470%_ absent-value)
                   '#f
                   _%$%static?272465272470%_)))
          (if _%phi?272471%_
              '()
              (let _%lp272475%_ ((_%rest272477%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts272478%_ '()))
                (let* ((_%$%rest272479272505%_ _%rest272477%_)
                       (_%$%else272484272513%_
                        (lambda () (reverse! _%opts272478%_))))
                  (let ((_%$%K272499272576%_
                         (lambda (_%rest272573%_ _%opt272574%_)
                           (if _%static?272473%_
                               (_%lp272475%_
                                _%rest272573%_
                                (cons _%opt272574%_
                                      (cons '"-ld-options" _%opts272478%_)))
                               (_%lp272475%_ _%rest272573%_ _%opts272478%_))))
                        (_%$%K272494272553%_
                         (lambda (_%rest272550%_ _%opt272551%_)
                           (_%lp272475%_
                            _%rest272550%_
                            (cons _%opt272551%_
                                  (cons '"-ld-options" _%opts272478%_)))))
                        (_%$%K272489272533%_
                         (lambda (_%rest272531%_)
                           (_%lp272475%_ _%rest272531%_ _%opts272478%_)))
                        (_%$%K272486272519%_
                         (lambda (_%rest272517%_)
                           (_%lp272475%_ _%rest272517%_ _%opts272478%_))))
                    (if (pair? _%$%rest272479272505%_)
                        (let ((_%$%tl272501272581%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest272479272505%_)))
                              (_%$%hd272500272579%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest272479272505%_))))
                          (if (equal? _%$%hd272500272579%_ '"-ld-options")
                              (if (pair? _%$%tl272501272581%_)
                                  (let ((_%$%tl272503272586%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl272501272581%_)))
                                        (_%$%hd272502272584%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl272501272581%_))))
                                    (if (equal? _%$%hd272502272584%_
                                                '"-static")
                                        (let ((_%opt272589%_
                                               _%$%hd272502272584%_)
                                              (_%rest272591%_
                                               _%$%tl272503272586%_))
                                          (_%$%K272499272576%_
                                           _%rest272591%_
                                           _%opt272589%_))
                                        (let ((_%opt272566%_
                                               _%$%hd272502272584%_)
                                              (_%rest272568%_
                                               _%$%tl272503272586%_))
                                          (_%$%K272494272553%_
                                           _%rest272568%_
                                           _%opt272566%_))))
                                  (let ((_%rest272525%_ _%$%tl272501272581%_))
                                    (_%$%K272486272519%_ _%rest272525%_)))
                              (if (equal? _%$%hd272500272579%_ '"-cc-options")
                                  (if (pair? _%$%tl272501272581%_)
                                      (let* ((_%$%tl272493272541%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl272501272581%_)))
                                             (_%rest272544%_
                                              _%$%tl272493272541%_))
                                        (_%$%K272489272533%_ _%rest272544%_))
                                      (let ((_%rest272525%_
                                             _%$%tl272501272581%_))
                                        (_%$%K272486272519%_ _%rest272525%_)))
                                  (let ((_%rest272525%_ _%$%tl272501272581%_))
                                    (_%$%K272486272519%_ _%rest272525%_)))))
                        (_%$%else272484272513%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords272596%_ _%$%static?272465272597%_)
        (let ((_%phi?272599%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords272596%_
           _%$%static?272465272597%_
           _%phi?272599%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g274226_
        (let ((_g274227_ (let () (declare (not safe)) (##length _g274226_))))
          (cond ((let () (declare (not safe)) (##fx= _g274227_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g274226_))
                ((let () (declare (not safe)) (##fx= _g274227_ 3))
                 (apply gxc#gsc-ld-options__%__% _g274226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g274226_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords272608%_ . _%args272609%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords272608%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272608%_
                  'static:
                  absent-value))
               _%args272609%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args272466272615%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args272466272615%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir272460%_)
        (let ((_%user-staticdir272462%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir272460%_
                       '" -I "
                       _%user-staticdir272462%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp272372%_ ((_%rest272374%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts272375%_ '()))
          (let* ((_%$%rest272376272396%_ _%rest272374%_)
                 (_%$%else272380272404%_ (lambda () _%opts272375%_)))
            (let ((_%$%K272390272447%_
                   (lambda (_%rest272445%_)
                     (_%lp272372%_ _%rest272445%_ _%opts272375%_)))
                  (_%$%K272385272425%_
                   (lambda (_%rest272422%_ _%opt272423%_)
                     (_%lp272372%_
                      _%rest272422%_
                      (let ((__tmp274228
                             (let ((__tmp274229
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt272423%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp274229))))
                        (declare (not safe))
                        (##append _%opts272375%_ __tmp274228)))))
                  (_%$%K272382272410%_
                   (lambda (_%rest272408%_)
                     (_%lp272372%_ _%rest272408%_ _%opts272375%_))))
              (if (pair? _%$%rest272376272396%_)
                  (let ((_%$%tl272392272452%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest272376272396%_)))
                        (_%$%hd272391272450%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest272376272396%_))))
                    (if (equal? _%$%hd272391272450%_ '"-cc-options")
                        (if (pair? _%$%tl272392272452%_)
                            (let* ((_%$%tl272394272455%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl272392272452%_)))
                                   (_%rest272458%_ _%$%tl272394272455%_))
                              (_%$%K272390272447%_ _%rest272458%_))
                            (let ((_%rest272416%_ _%$%tl272392272452%_))
                              (_%$%K272382272410%_ _%rest272416%_)))
                        (if (equal? _%$%hd272391272450%_ '"-ld-options")
                            (if (pair? _%$%tl272392272452%_)
                                (let ((_%$%tl272389272435%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl272392272452%_)))
                                      (_%$%hd272388272433%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl272392272452%_))))
                                  (let ((_%opt272438%_ _%$%hd272388272433%_)
                                        (_%rest272440%_ _%$%tl272389272435%_))
                                    (_%$%K272385272425%_
                                     _%rest272440%_
                                     _%opt272438%_)))
                                (let ((_%rest272416%_ _%$%tl272392272452%_))
                                  (_%$%K272382272410%_ _%rest272416%_)))
                            (let ((_%rest272416%_ _%$%tl272392272452%_))
                              (_%$%K272382272410%_ _%rest272416%_)))))
                  (_%$%else272380272404%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str272369%_)
        (not (let () (declare (not safe)) (string-empty? _%str272369%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path272362%_ _%phi?272363%_)
        (let ((_%gsc-link-opts272365%_
               (gxc#gsc-link-options__% _%phi?272363%_))
              (_%gsc-cc-opts272366%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?272363%_))
              (_%gsc-ld-opts272367%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?272363%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp274230
                  (let ((__tmp274231
                         (let ((__tmp274232 (cons _%path272362%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts272365%_ __tmp274232))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts272367%_ __tmp274231))))
             (declare (not safe))
             (##append _%gsc-cc-opts272366%_ __tmp274230))))))
    (define gxc#compile-output-file
      (lambda (_%ctx272328%_ _%n272329%_ _%ext272330%_)
        (letrec ((_%module-relative-path272332%_
                  (lambda (_%ctx272360%_)
                    (path-strip-directory
                     (let ((__tmp274233
                            (##structure-ref
                             _%ctx272360%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp274233)))))
                 (_%module-source-directory272333%_
                  (lambda (_%ctx272356%_)
                    (path-directory
                     (let ((_%mpath272358%_
                            (##structure-ref
                             _%ctx272356%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath272358%_)
                           _%mpath272358%_
                           (last _%mpath272358%_))))))
                 (_%section-string272334%_
                  (lambda (_%n272350%_)
                    (if (number? _%n272350%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n272350%_))
                        (if (symbol? _%n272350%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n272350%_))
                            (if (string? _%n272350%_)
                                _%n272350%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n272350%_)))))))
                 (_%file-name272335%_
                  (lambda (_%path272348%_)
                    (if _%n272329%_
                        (string-append
                         _%path272348%_
                         '"~"
                         (_%section-string272334%_ _%n272329%_)
                         _%ext272330%_)
                        (string-append _%path272348%_ _%ext272330%_))))
                 (_%file-path272336%_
                  (lambda ()
                    (let ((_%$e272342%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e272342%_
                          (path-expand
                           (_%file-name272335%_
                            (let ((__tmp274234
                                   (##structure-ref
                                    _%ctx272328%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp274234)))
                           _%$e272342%_)
                          (path-expand
                           (_%file-name272335%_
                            (_%module-relative-path272332%_ _%ctx272328%_))
                           (_%module-source-directory272333%_
                            _%ctx272328%_)))))))
          (let ((_%path272338%_ (_%file-path272336%_)))
            (let ((__tmp274235
                   (lambda ()
                     (let ((__tmp274236 (path-directory _%path272338%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp274236)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp274235))
            _%path272338%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx272309%_)
        (letrec ((_%file-name272311%_
                  (lambda (_%id272326%_)
                    (let ((__tmp274237 (gxc#static-module-name _%id272326%_)))
                      (declare (not safe))
                      (##string-append __tmp274237 '".scm"))))
                 (_%file-path272312%_
                  (lambda ()
                    (let* ((_%file272318%_
                            (_%file-name272311%_
                             (##structure-ref
                              _%ctx272309%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e272320%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e272320%_
                          (path-expand
                           _%file272318%_
                           (path-expand '"static" _%$e272320%_))
                          (path-expand _%file272318%_ '"static"))))))
          (let ((_%path272314%_ (_%file-path272312%_)))
            (let ((__tmp274238
                   (lambda ()
                     (let ((__tmp274239 (path-directory _%path272314%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp274239)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp274238))
            _%path272314%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx272302%_ _%opts272303%_)
        (let ((_%$e272305%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts272303%_))))
          (if _%$e272305%_
              _%$e272305%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx272302%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr272292%_)
        (if (string? _%idstr272292%_)
            (let* ((_%str272295%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr272292%_)))
                   (_%strs272297%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str272295%_ '#\/))))
              (declare (not safe))
              (string-join _%strs272297%_ '"__"))
            (if (symbol? _%idstr272292%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr272292%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr272292%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp274240
               (let ((__tmp274241 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp274241 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp274240))))
    (define gxc#invoke__%
      (lambda (_%@@keywords272258%_
               _%$%stdout-redirection272254272259%_
               _%$%stderr-redirection272255272260%_
               _%program272261%_
               _%args272262%_)
        (let* ((_%stdout-redirection272264%_
                (if (eq? _%$%stdout-redirection272254272259%_ absent-value)
                    '#f
                    _%$%stdout-redirection272254272259%_))
               (_%stderr-redirection272266%_
                (if (eq? _%$%stderr-redirection272255272260%_ absent-value)
                    '#f
                    _%$%stderr-redirection272255272260%_)))
          (let ((__tmp274242 (cons _%program272261%_ _%args272262%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp274242))
          (let* ((_%proc272268%_
                  (open-process
                   (cons 'path:
                         (cons _%program272261%_
                               (cons 'arguments:
                                     (cons _%args272262%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection272264%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection272266%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output272273%_
                  (if (or _%stdout-redirection272264%_
                          _%stderr-redirection272266%_)
                      (read-line _%proc272268%_ '#f)
                      '#f))
                 (_%status272276%_ (process-status _%proc272268%_)))
            (let () (declare (not safe)) (##close-port _%proc272268%_))
            (if (zero? _%status272276%_)
                '#!void
                (begin
                  (display _%output272273%_)
                  (let ((__tmp274243 (cons _%program272261%_ _%args272262%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp274243
                     _%status272276%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords272281%_ . _%args272282%_)
        (apply gxc#invoke__%
               _%@@keywords272281%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272281%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords272281%_
                  'stderr-redirection:
                  absent-value))
               _%args272282%_)))
    (define gxc#invoke
      (lambda _%$%args272256272288%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args272256272288%_)))))
