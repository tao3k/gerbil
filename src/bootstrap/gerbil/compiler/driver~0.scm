(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/driver::timestamp 1789839234)
  (begin
    (define gxc#default-gerbil-gsc
      (path-expand '"gsc" (path-expand '"bin" (path-expand '"~~"))))
    (define gxc#default-gerbil-gcc '"gcc")
    (define gxc#default-gerbil-ar '"ar")
    (define gxc#+driver-mutex+ (make-mutex 'compiler/driver))
    (define gxc#compile-timestamp
      (lambda ()
        (inexact->exact
         (floor (let ((__tmp276128 (current-time)))
                  (declare (not safe))
                  (##time->seconds __tmp276128))))))
    (define gxc#compile-timestamp-nanos
      (lambda ()
        (let ((__tmp276129 (current-time)))
          (declare (not safe))
          (##time->seconds __tmp276129))))
    (define gxc#scheme-file-settings
      '(permissions: 420 char-encoding: UTF-8 eol-encoding: lf))
    (define gxc#with-output-to-scheme-file
      (lambda (_%path275985%_ _%fun275986%_)
        (with-output-to-file
         (cons 'path: (cons _%path275985%_ gxc#scheme-file-settings))
         _%fun275986%_)))
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
      (lambda (_%gerbil-libdir275980%_)
        (string-append '"-Wl,-rpath=" _%gerbil-libdir275980%_)))
    (define gxc#compiler-obj-suffix '".o")
    (define gxc#include-source
      (lambda (_%path275978%_)
        (let ((__tmp276130 (object->string _%path275978%_)))
          (declare (not safe))
          (##string-append '"(include " __tmp276130 '")"))))
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
      (lambda (_%dir275976%_) (delete-file-or-directory _%dir275976%_ '#t)))
    (define gxc#compile-module__%
      (lambda (_%srcpath275919%_ _%opts275920%_)
        (if (string? _%srcpath275919%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath275919%_)))
        (let* ((_%outdir275922%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts275920%_)))
               (_%invoke-gsc?275924%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts275920%_)))
               (_%target275929%_
                (let ((_%$e275926%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts275920%_))))
                  (if _%$e275926%_ _%$e275926%_ 'C)))
               (_%gsc-options275934%_
                (append (cons '"-target"
                              (cons (symbol->string _%target275929%_) '()))
                        (let ((_%$e275931%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts275920%_))))
                          (if _%$e275931%_ _%$e275931%_ '()))))
               (_%keep-scm?275936%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts275920%_)))
               (_%verbosity275938%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts275920%_)))
               (_%optimize275940%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'optimize: _%opts275920%_)))
               (_%debug275942%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts275920%_)))
               (_%gen-ssxi275944%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'generate-ssxi: _%opts275920%_)))
               (_%parallel?275946%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts275920%_))))
          (if _%outdir275922%_
              (let ((__tmp276131
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir275922%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp276131))
              '#!void)
          (if _%optimize275940%_
              (let ((__tmp276132
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (gxc#optimizer-info-init!)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp276132))
              '#!void)
          (let ((__tmp276133
                 (lambda ()
                   (let ((__tmp276134
                          (lambda ()
                            (let ((__tmp276135
                                   (lambda ()
                                     (let ((__tmp276136
                                            (lambda ()
                                              (let ((__tmp276137
                                                     (lambda ()
                                                       (let ((__tmp276138
                                                              (lambda ()
                                                                (let ((__tmp276139
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp276140
                                        (lambda ()
                                          (let ((__tmp276142
                                                 (lambda ()
                                                   (let ((__tmp276144
                                                          (lambda ()
                                                            (let ((__tmp276146
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp276147
                                    (lambda ()
                                      (let ((__tmp276148
                                             (lambda ()
                                               (let ((__tmp276149
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gxc#verbose
                                                           '"compile "
                                                           _%srcpath275919%_))
                                                        (gxc#compile-top-module
                                                         (let ((__tmp276150
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#import-module__0 _%srcpath275919%_)))))
                   (declare (not safe))
                   (__with-lock gxc#+driver-mutex+ __tmp276150))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (call-with-parameters__1
                                                  __tmp276149
                                                  gx#current-expander-compiling?
                                                  '#t)))))
                                        (declare (not safe))
                                        (call-with-parameters__1
                                         __tmp276148
                                         gx#current-compilation-target
                                         _%target275929%_)))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp276147
                                gxc#current-compile-parallel
                                _%parallel?275946%_))))
                          (__tmp276145
                           (let ()
                             (declare (not safe))
                             (gxc#make-bound-identifier-table))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp276146
                       gxc#current-compile-identifiers
                       __tmp276145))))
                 (__tmp276143 (list (list 'compile-module _%srcpath275919%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp276144
                                                      gxc#current-compile-context
                                                      __tmp276143))))
                                                (__tmp276141
                                                 (gxc#compile-timestamp)))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp276142
                                             gxc#current-compile-timestamp
                                             __tmp276141)))))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp276140
                                    gxc#current-compile-generate-ssxi
                                    _%gen-ssxi275944%_)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp276139
                           gxc#current-compile-debug
                           _%debug275942%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp276138
                  gxc#current-compile-optimize
                  _%optimize275940%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp276137
                                                 gxc#current-compile-verbose
                                                 _%verbosity275938%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp276136
                                        gxc#current-compile-keep-scm
                                        _%keep-scm?275936%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp276135
                               gxc#current-compile-gsc-options
                               _%gsc-options275934%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp276134
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?275924%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp276133
             gxc#current-compile-output-dir
             _%outdir275922%_)))))
    (define gxc#compile-module__0
      (lambda (_%srcpath275969%_)
        (let ((_%opts275971%_ '()))
          (gxc#compile-module__% _%srcpath275969%_ _%opts275971%_))))
    (define gxc#compile-module
      (lambda _g276151_
        (let ((_g276152_ (let () (declare (not safe)) (##length _g276151_))))
          (cond ((let () (declare (not safe)) (##fx= _g276152_ 1))
                 (apply gxc#compile-module__0 _g276151_))
                ((let () (declare (not safe)) (##fx= _g276152_ 2))
                 (apply gxc#compile-module__% _g276151_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-module
                  _g276151_))))))
    (define gxc#compile-exe__%
      (lambda (_%srcpath275868%_ _%opts275869%_)
        (if (string? _%srcpath275868%_)
            '#!void
            (let ()
              (declare (not safe))
              (gxc#raise-compile-error
               '"Invalid module source path"
               _%srcpath275868%_)))
        (let* ((_%outdir275871%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'output-dir: _%opts275869%_)))
               (_%invoke-gsc?275873%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'invoke-gsc: _%opts275869%_)))
               (_%target275878%_
                (let ((_%$e275875%_
                       (let ()
                         (declare (not safe))
                         (pgetq__0 'target: _%opts275869%_))))
                  (if _%$e275875%_ _%$e275875%_ 'C)))
               (_%gsc-options275883%_
                (append (cons '"-target"
                              (cons (symbol->string _%target275878%_) '()))
                        (let ((_%$e275880%_
                               (let ()
                                 (declare (not safe))
                                 (pgetq__0 'gsc-options: _%opts275869%_))))
                          (if _%$e275880%_ _%$e275880%_ '()))))
               (_%keep-scm?275885%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'keep-scm: _%opts275869%_)))
               (_%verbosity275887%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'verbose: _%opts275869%_)))
               (_%debug275889%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'debug: _%opts275869%_)))
               (_%parallel?275891%_
                (let ()
                  (declare (not safe))
                  (pgetq__0 'parallel: _%opts275869%_))))
          (if _%outdir275871%_
              (let ((__tmp276153
                     (lambda ()
                       (let ()
                         (declare (not safe))
                         (create-directory*__0 _%outdir275871%_)))))
                (declare (not safe))
                (__with-lock gxc#+driver-mutex+ __tmp276153))
              '#!void)
          (let ((__tmp276154
                 (lambda ()
                   (let ((__tmp276155
                          (lambda ()
                            (let ((__tmp276156
                                   (lambda ()
                                     (let ((__tmp276157
                                            (lambda ()
                                              (let ((__tmp276158
                                                     (lambda ()
                                                       (let ((__tmp276159
                                                              (lambda ()
                                                                (let ((__tmp276160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda ()
                                 (let ((__tmp276162
                                        (lambda ()
                                          (let ((__tmp276164
                                                 (lambda ()
                                                   (let ((__tmp276166
                                                          (lambda ()
                                                            (let ((__tmp276167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda ()
                             (let ((__tmp276168
                                    (lambda ()
                                      (let ()
                                        (declare (not safe))
                                        (gxc#verbose
                                         '"compile exe "
                                         _%srcpath275868%_))
                                      (gxc#compile-executable-module
                                       (let ((__tmp276169
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#import-module__0
                                                   _%srcpath275868%_)))))
                                         (declare (not safe))
                                         (__with-lock
                                          gxc#+driver-mutex+
                                          __tmp276169))
                                       _%opts275869%_))))
                               (declare (not safe))
                               (call-with-parameters__1
                                __tmp276168
                                gx#current-expander-compiling?
                                '#t)))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp276167
                       gxc#current-compile-parallel
                       _%parallel?275891%_))))
                 (__tmp276165
                  (let ()
                    (declare (not safe))
                    (gxc#make-bound-identifier-table))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (call-with-parameters__1
                                                      __tmp276166
                                                      gxc#current-compile-identifiers
                                                      __tmp276165))))
                                                (__tmp276163
                                                 (list (list 'compile-exe
                                                             _%srcpath275868%_))))
                                            (declare (not safe))
                                            (call-with-parameters__1
                                             __tmp276164
                                             gxc#current-compile-context
                                             __tmp276163))))
                                       (__tmp276161 (gxc#compile-timestamp)))
                                   (declare (not safe))
                                   (call-with-parameters__1
                                    __tmp276162
                                    gxc#current-compile-timestamp
                                    __tmp276161)))))
                          (declare (not safe))
                          (call-with-parameters__1
                           __tmp276160
                           gxc#current-compile-debug
                           _%debug275889%_)))))
                 (declare (not safe))
                 (call-with-parameters__1
                  __tmp276159
                  gxc#current-compile-verbose
                  _%verbosity275887%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp276158
                                                 gxc#current-compile-keep-scm
                                                 _%keep-scm?275885%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp276157
                                        gxc#current-compile-gsc-options
                                        _%gsc-options275883%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp276156
                               gx#current-compilation-target
                               _%target275878%_)))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp276155
                      gxc#current-compile-invoke-gsc
                      _%invoke-gsc?275873%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp276154
             gxc#current-compile-output-dir
             _%outdir275871%_)))))
    (define gxc#compile-exe__0
      (lambda (_%srcpath275911%_)
        (let ((_%opts275913%_ '()))
          (gxc#compile-exe__% _%srcpath275911%_ _%opts275913%_))))
    (define gxc#compile-exe
      (lambda _g276170_
        (let ((_g276171_ (let () (declare (not safe)) (##length _g276170_))))
          (cond ((let () (declare (not safe)) (##fx= _g276171_ 1))
                 (apply gxc#compile-exe__0 _g276170_))
                ((let () (declare (not safe)) (##fx= _g276171_ 2))
                 (apply gxc#compile-exe__% _g276170_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-exe
                  _g276170_))))))
    (define gxc#compile-executable-module
      (lambda (_%ctx275864%_ _%opts275865%_)
        (if (let ()
              (declare (not safe))
              (pgetq__0 'full-program-optimization: _%opts275865%_))
            (gxc#compile-executable-module/full-program-optimization
             _%ctx275864%_
             _%opts275865%_)
            (gxc#compile-executable-module/separate
             _%ctx275864%_
             _%opts275865%_))))
    (define gxc#compile-executable-module/separate
      (lambda (_%ctx275590%_ _%opts275591%_)
        (letrec ((_%generate-stub275593%_
                  (lambda (_%builtin-modules275860%_)
                    (let ((_%mod-main275862%_
                           (gxc#find-runtime-symbol _%ctx275590%_ 'main)))
                      (let ((__tmp276172
                             (list 'define
                                   'builtin-modules
                                   (list 'quote _%builtin-modules275860%_))))
                        (declare (not safe))
                        (##write __tmp276172))
                      (let ((__tmp276173
                             (list 'define
                                   '(gerbil-main)
                                   (cons 'with-unwind-protect
                                         (cons (list 'lambda
                                                     '()
                                                     '(gerbil-runtime-init!
                                                       builtin-modules)
                                                     (cons 'apply
                                                           (cons _%mod-main275862%_
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
                        (##write __tmp276173))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%get-libgerbil-ld-opts275594%_
                  (lambda (_%gerbil-libdir275858%_)
                    (let ((__tmp276174
                           (path-expand
                            '"libgerbil.ldd"
                            _%gerbil-libdir275858%_)))
                      (declare (not safe))
                      (##call-with-input-file __tmp276174 read))))
                 (_%replace-extension275595%_
                  (lambda (_%path275855%_ _%ext275856%_)
                    (string-append
                     (path-strip-extension _%path275855%_)
                     _%ext275856%_)))
                 (_%replace-extension-with-c275596%_
                  (lambda (_%path275853%_)
                    (_%replace-extension275595%_ _%path275853%_ '".c")))
                 (_%replace-extension-with-object275597%_
                  (lambda (_%path275851%_)
                    (_%replace-extension275595%_
                     _%path275851%_
                     gxc#compiler-obj-suffix)))
                 (_%userlib-module?275598%_
                  (lambda (_%ctx275849%_)
                    (if (_%exclude-module?275600%_ _%ctx275849%_)
                        '#f
                        (not (_%libgerbil-module?275599%_ _%ctx275849%_)))))
                 (_%libgerbil-module?275599%_
                  (lambda (_%ctx275842%_)
                    (let ((_%id-str275844%_
                           (symbol->string
                            (##structure-ref
                             _%ctx275842%_
                             '1
                             gx#expander-context::t
                             '#f))))
                      (if (_%exclude-module?275600%_ _%id-str275844%_)
                          '#f
                          (let ((_%$e275846%_
                                 (let ()
                                   (declare (not safe))
                                   (##string-prefix?
                                    '"gerbil/"
                                    _%id-str275844%_))))
                            (if _%$e275846%_
                                _%$e275846%_
                                (let ()
                                  (declare (not safe))
                                  (##string-prefix?
                                   '"std/"
                                   _%id-str275844%_))))))))
                 (_%exclude-module?275600%_
                  (lambda (_%ctx-or-str275838%_)
                    (let ((_%str275840%_
                           (if (string? _%ctx-or-str275838%_)
                               _%ctx-or-str275838%_
                               (symbol->string
                                (##structure-ref
                                 _%ctx-or-str275838%_
                                 '1
                                 gx#expander-context::t
                                 '#f)))))
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%str275840%_))))
                 (_%not-file-empty?275601%_
                  (lambda (_%path275836%_)
                    (not (gxc#file-empty? _%path275836%_))))
                 (_%fold-libgerbil-runtime-scm275602%_
                  (lambda (_%gerbil-staticdir275829%_ _%libgerbil-scm275830%_)
                    (let ((_%gerbil-runtime-scm275834%_
                           (let ((__tmp276175
                                  (lambda (_%rtm275832%_)
                                    (path-expand
                                     (let ((__tmp276176
                                            (let ((__tmp276177
                                                   (let ()
                                                     (declare (not safe))
                                                     (string-split
                                                      _%rtm275832%_
                                                      '#\/))))
                                              (declare (not safe))
                                              (string-join
                                               __tmp276177
                                               '"__"))))
                                       (declare (not safe))
                                       (##string-append __tmp276176 '".scm"))
                                     _%gerbil-staticdir275829%_))))
                             (declare (not safe))
                             (##map __tmp276175 gxc#gerbil-runtime-modules))))
                      (_%remove-duplicates275603%_
                       (append _%gerbil-runtime-scm275834%_
                               _%libgerbil-scm275830%_)))))
                 (_%remove-duplicates275603%_
                  (lambda (_%strlst275789%_)
                    (let _%loop275791%_ ((_%rest275793%_ _%strlst275789%_)
                                         (_%result275794%_ '()))
                      (let* ((_%$%rest275795275803%_ _%rest275793%_)
                             (_%$%else275797275811%_
                              (lambda () (reverse! _%result275794%_)))
                             (_%$%K275799275817%_
                              (lambda (_%rest275814%_ _%path275815%_)
                                (if (member _%path275815%_ _%result275794%_)
                                    (_%loop275791%_
                                     _%rest275814%_
                                     _%result275794%_)
                                    (_%loop275791%_
                                     _%rest275814%_
                                     (cons _%path275815%_
                                           _%result275794%_))))))
                        (if (pair? _%$%rest275795275803%_)
                            (let ((_%$%hd275800275820%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest275795275803%_)))
                                  (_%$%tl275801275822%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest275795275803%_))))
                              (let* ((_%path275825%_ _%$%hd275800275820%_)
                                     (_%rest275827%_ _%$%tl275801275822%_))
                                (_%$%K275799275817%_
                                 _%rest275827%_
                                 _%path275825%_)))
                            (_%$%else275797275811%_))))))
                 (_%compile-stub275604%_
                  (lambda (_%output-scm275611%_ _%output-bin275612%_)
                    (let* ((_%gerbil-home275614%_
                            (let ((__tmp276178
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp276178)))
                           (_%gerbil-libdir275616%_
                            (path-expand '"lib" _%gerbil-home275614%_))
                           (_%gerbil-staticdir275618%_
                            (path-expand '"static" _%gerbil-libdir275616%_))
                           (_%deps275620%_
                            (gxc#find-runtime-module-deps _%ctx275590%_))
                           (_%libgerbil-deps275622%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%libgerbil-module?275599%_
                               _%deps275620%_)))
                           (_%libgerbil-scm275624%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%libgerbil-deps275622%_)))
                           (_%libgerbil-scm275626%_
                            (_%fold-libgerbil-runtime-scm275602%_
                             _%gerbil-staticdir275618%_
                             _%libgerbil-scm275624%_))
                           (_%libgerbil-c275628%_
                            (map _%replace-extension-with-c275596%_
                                 _%libgerbil-scm275626%_))
                           (_%libgerbil-o275630%_
                            (map _%replace-extension-with-object275597%_
                                 _%libgerbil-scm275626%_))
                           (_%src-deps275632%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%userlib-module?275598%_
                               _%deps275620%_)))
                           (_%src-deps-scm275634%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%src-deps275632%_)))
                           (_%src-deps-scm275636%_
                            (let ()
                              (declare (not safe))
                              (##filter
                               _%not-file-empty?275601%_
                               _%src-deps-scm275634%_)))
                           (_%src-deps-scm275638%_
                            (let ()
                              (declare (not safe))
                              (##map path-expand _%src-deps-scm275636%_)))
                           (_%src-deps-c275640%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-c275596%_
                                     _%src-deps-scm275638%_)))
                           (_%src-deps-o275642%_
                            (let ()
                              (declare (not safe))
                              (##map _%replace-extension-with-object275597%_
                                     _%src-deps-scm275638%_)))
                           (_%src-bin-scm275644%_
                            (gxc#find-static-module-file _%ctx275590%_))
                           (_%src-bin-scm275646%_
                            (path-expand _%src-bin-scm275644%_))
                           (_%src-bin-c275648%_
                            (_%replace-extension-with-c275596%_
                             _%src-bin-scm275646%_))
                           (_%src-bin-o275650%_
                            (_%replace-extension-with-object275597%_
                             _%src-bin-scm275646%_))
                           (_%output-bin275652%_
                            (path-expand _%output-bin275612%_))
                           (_%output-scm275654%_
                            (path-expand _%output-scm275611%_))
                           (_%output-c275656%_
                            (_%replace-extension-with-c275596%_
                             _%output-scm275654%_))
                           (_%output-o275658%_
                            (_%replace-extension-with-object275597%_
                             _%output-scm275654%_))
                           (_%output_-c275660%_
                            (_%replace-extension275595%_
                             _%output-scm275654%_
                             '"_.c"))
                           (_%output_-o275662%_
                            (_%replace-extension275595%_
                             _%output-scm275654%_
                             (let ()
                               (declare (not safe))
                               (##string-append
                                '"_"
                                gxc#compiler-obj-suffix))))
                           (_%gsc-link-opts275664%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts275666%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts275668%_
                            (gxc#gsc-static-include-options
                             _%gerbil-staticdir275618%_))
                           (_%output-ld-opts275670%_ (gxc#gcc-ld-options))
                           (_%libgerbil-ld-opts275672%_
                            (_%get-libgerbil-ld-opts275594%_
                             _%gerbil-libdir275616%_))
                           (_%rpath275674%_
                            (gxc#gerbil-rpath _%gerbil-libdir275616%_))
                           (_%builtin-modules275678%_
                            (_%remove-duplicates275603%_
                             (let ((__tmp276179
                                    (let ((__tmp276181
                                           (lambda (_%mod275676%_)
                                             (symbol->string
                                              (##structure-ref
                                               _%mod275676%_
                                               '1
                                               gx#expander-context::t
                                               '#f))))
                                          (__tmp276180
                                           (cons _%ctx275590%_
                                                 _%deps275620%_)))
                                      (declare (not safe))
                                      (##map __tmp276181 __tmp276180))))
                               (declare (not safe))
                               (##append
                                gxc#gerbil-runtime-modules
                                __tmp276179)))))
                      (letrec ((_%compile-obj275681%_
                                (lambda (_%scm-path275688%_ _%c-path275689%_)
                                  (let* ((_%o-path275691%_
                                          (_%replace-extension275595%_
                                           _%c-path275689%_
                                           gxc#compiler-obj-suffix))
                                         (_%lock275693%_
                                          (let ()
                                            (declare (not safe))
                                            (##string-append
                                             _%o-path275691%_
                                             '".lock")))
                                         (_%locked275695%_ '#f)
                                         (_%unlock275698%_
                                          (lambda ()
                                            (close-port _%locked275695%_)
                                            (let ()
                                              (declare (not safe))
                                              (##delete-file
                                               _%lock275693%_)))))
                                    (let _%retry275701%_ ()
                                      (if (let ()
                                            (declare (not safe))
                                            (##file-exists? _%lock275693%_))
                                          (begin
                                            (thread-sleep! '.01)
                                            (_%retry275701%_))
                                          (begin
                                            (set! _%locked275695%_
                                                  (let* ((_%handler275704%_
                                                          false)
                                                         (_%thunk275708%_
                                                          (lambda ()
                                                            (open-file
                                                             (cons 'path:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%lock275693%_
                                 (cons 'create: (cons '#t '())))))))
                 (_%handler275713%_ _%handler275704%_)
                 (_%thunk275769%_ _%thunk275708%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (__with-catch
                                                     _%handler275713%_
                                                     _%thunk275769%_)))
                                            (if _%locked275695%_
                                                '#!void
                                                (_%retry275701%_)))))
                                    (let ((__tmp276183
                                           (lambda ()
                                             (if (or (not (let ()
                                                            (declare
                                                              (not safe))
                                                            (##file-exists?
                                                             _%o-path275691%_)))
                                                     (not _%scm-path275688%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (file-newer?
                                                        _%scm-path275688%_
                                                        _%o-path275691%_)))
                                                 (let ((_%gsc-cc-opts275786%_
                                                        (gxc#gsc-cc-options__%__0
                                                         '#f
                                                         '#f)))
                                                   (gxc#invoke__%
                                                    '#f
                                                    absent-value
                                                    absent-value
                                                    (gxc#gerbil-gsc)
                                                    (cons '"-obj"
                                                          (let ((__tmp276184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp276185 (cons _%c-path275689%_ '())))
                           (declare (not safe))
                           (##append _%gsc-static-opts275668%_ __tmp276185))))
                    (declare (not safe))
                    (##append _%gsc-cc-opts275786%_ __tmp276184)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '#!void)))
                                          (__tmp276182
                                           (lambda () (_%unlock275698%_))))
                                      (declare (not safe))
                                      (__with-unwind-protect
                                       __tmp276183
                                       __tmp276182))))))
                        (let ((__tmp276186
                               (lambda ()
                                 (let ((__tmp276187
                                        (path-directory _%output-bin275652%_)))
                                   (declare (not safe))
                                   (create-directory*__0 __tmp276187)))))
                          (declare (not safe))
                          (__with-lock gxc#+driver-mutex+ __tmp276186))
                        (gxc#with-output-to-scheme-file
                         _%output-scm275654%_
                         (lambda ()
                           (_%generate-stub275593%_
                            _%builtin-modules275678%_)))
                        (if (let ()
                              (declare (not safe))
                              (gxc#current-compile-invoke-gsc))
                            (let ((_%compile-it275686%_
                                   (lambda ()
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gsc)
                                      (cons '"-link"
                                            (let ((__tmp276188
                                                   (let ((__tmp276189
                                                          (let ((__tmp276190
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%src-bin-scm275646%_
                               (cons _%output-scm275654%_ '()))))
                    (declare (not safe))
                    (##append _%src-deps-scm275638%_ __tmp276190))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##append
                                                      _%libgerbil-c275628%_
                                                      __tmp276189))))
                                              (declare (not safe))
                                              (##append
                                               _%gsc-link-opts275664%_
                                               __tmp276188))))
                                     (let ((__tmp276193
                                            (let ((__tmp276194
                                                   (cons _%src-bin-scm275646%_
                                                         (cons _%output-scm275654%_
                                                               (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-scm275638%_
                                               __tmp276194)))
                                           (__tmp276191
                                            (let ((__tmp276192
                                                   (cons _%src-bin-c275648%_
                                                         (cons _%output-c275656%_
                                                               (cons _%output_-c275660%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (##append
                                               _%src-deps-c275640%_
                                               __tmp276192))))
                                       (declare (not safe))
                                       (##for-each
                                        _%compile-obj275681%_
                                        __tmp276193
                                        __tmp276191))
                                     (gxc#invoke__%
                                      '#f
                                      absent-value
                                      absent-value
                                      (gxc#gerbil-gcc)
                                      (cons '"-w"
                                            (cons '"-o"
                                                  (cons _%output-bin275652%_
                                                        (let ((__tmp276195
                                                               (cons _%src-bin-o275650%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%output-o275658%_
                                   (cons _%output_-o275662%_
                                         (let ((__tmp276196
                                                (let ((__tmp276197
                                                       (let ((__tmp276199
                                                              (if (gxc#gerbil-enable-shared?)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%rpath275674%_ '())
                          '()))
                     (__tmp276198
                      (cons '"-L"
                            (cons _%gerbil-libdir275616%_
                                  (cons '"-lgambit"
                                        _%libgerbil-ld-opts275672%_)))))
                 (declare (not safe))
                 (##append __tmp276199 __tmp276198))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (##append
                                                   _%output-ld-opts275670%_
                                                   __tmp276197))))
                                           (declare (not safe))
                                           (##append
                                            _%libgerbil-o275630%_
                                            __tmp276196)))))))
                  (declare (not safe))
                  (##append _%src-deps-o275642%_ __tmp276195))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     (let ((__tmp276200
                                            (cons _%output-c275656%_
                                                  (cons _%output_-c275660%_
                                                        (cons _%output-o275658%_
                                                              (cons _%output_-o275662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       (declare (not safe))
                                       (##for-each delete-file __tmp276200)))))
                              (if (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-parallel))
                                  (let ()
                                    (declare (not safe))
                                    (gxc#add-compile-job!__0
                                     _%compile-it275686%_))
                                  (_%compile-it275686%_)))
                            '#!void))))))
          (let* ((_%output-bin275606%_
                  (gxc#compile-exe-output-file _%ctx275590%_ _%opts275591%_))
                 (_%output-scm275608%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin275606%_ '"__exe.scm"))))
            (_%compile-stub275604%_
             _%output-scm275608%_
             _%output-bin275606%_)))))
    (define gxc#compile-executable-module/full-program-optimization
      (lambda (_%ctx275412%_ _%opts275413%_)
        (letrec ((_%reset-declare275415%_
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
                 (_%generate-stub275416%_
                  (lambda (_%deps275581%_)
                    (let ((_%mod-main275583%_
                           (gxc#find-runtime-symbol _%ctx275412%_ 'main))
                          (_%reset-decl275584%_ (_%reset-declare275415%_))
                          (_%user-decl275585%_ (_%user-declare275417%_)))
                      (for-each
                       (lambda (_%dep275587%_)
                         (let ()
                           (declare (not safe))
                           (##write '(##namespace (""))))
                         (newline)
                         (let ()
                           (declare (not safe))
                           (##write _%reset-decl275584%_))
                         (newline)
                         (if _%user-decl275585%_
                             (begin
                               (let ()
                                 (declare (not safe))
                                 (##write _%user-decl275585%_))
                               (newline))
                             '#!void)
                         (let ((__tmp276201 (list 'include _%dep275587%_)))
                           (declare (not safe))
                           (##write __tmp276201))
                         (newline))
                       _%deps275581%_)
                      (let ((__tmp276202
                             (list 'define
                                   '(gerbil-main)
                                   '(gerbil-runtime-init! '())
                                   (cons 'apply
                                         (cons _%mod-main275583%_
                                               '((cdr (command-line))))))))
                        (declare (not safe))
                        (##write __tmp276202))
                      (let () (declare (not safe)) (##write '(gerbil-main)))
                      (newline))))
                 (_%user-declare275417%_
                  (lambda ()
                    (let* ((_%gsc-opts275486%_
                            (let ()
                              (declare (not safe))
                              (pgetq__0 'gsc-options: _%opts275413%_)))
                           (_%gsc-prelude275488%_
                            (if _%gsc-opts275486%_
                                (member '"-prelude" _%gsc-opts275486%_)
                                '#f))
                           (_%gsc-prelude275490%_
                            (if _%gsc-prelude275488%_
                                (read (open-input-string
                                       (cadr _%gsc-prelude275488%_)))
                                '#f)))
                      (let _%lp275493%_ ((_%rest275495%_
                                          (cons _%gsc-prelude275490%_ '()))
                                         (_%user-decls275496%_ '()))
                        (let* ((_%$%rest275497275505%_ _%rest275495%_)
                               (_%$%else275499275513%_
                                (lambda ()
                                  (if (null? _%user-decls275496%_)
                                      '#f
                                      (cons 'declare
                                            (reverse _%user-decls275496%_)))))
                               (_%$%K275501275569%_
                                (lambda (_%rest275516%_ _%expr275517%_)
                                  (let* ((_%$%expr275518275530%_
                                          _%expr275517%_)
                                         (_%$%else275521275538%_
                                          (lambda ()
                                            (_%lp275493%_
                                             _%rest275516%_
                                             _%user-decls275496%_))))
                                    (let ((_%$%K275526275559%_
                                           (lambda (_%decls275557%_)
                                             (_%lp275493%_
                                              _%rest275516%_
                                              (let ()
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 _%user-decls275496%_
                                                 _%decls275557%_)))))
                                          (_%$%K275523275544%_
                                           (lambda (_%exprs275542%_)
                                             (_%lp275493%_
                                              (append _%exprs275542%_
                                                      _%rest275516%_)
                                              _%user-decls275496%_))))
                                      (if (pair? _%$%expr275518275530%_)
                                          (let ((_%$%tl275528275564%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%expr275518275530%_)))
                                                (_%$%hd275527275562%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%expr275518275530%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##eq? _%$%hd275527275562%_
                                                         'declare))
                                                (let ((_%decls275567%_
                                                       _%$%tl275528275564%_))
                                                  (_%$%K275526275559%_
                                                   _%decls275567%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd275527275562%_
                                                             'begin))
                                                    (let ((_%exprs275552%_
                                                           _%$%tl275528275564%_))
                                                      (_%$%K275523275544%_
                                                       _%exprs275552%_))
                                                    (_%$%else275521275538%_))))
                                          (_%$%else275521275538%_)))))))
                          (if (pair? _%$%rest275497275505%_)
                              (let ((_%$%hd275502275572%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest275497275505%_)))
                                    (_%$%tl275503275574%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest275497275505%_))))
                                (let* ((_%expr275577%_ _%$%hd275502275572%_)
                                       (_%rest275579%_ _%$%tl275503275574%_))
                                  (_%$%K275501275569%_
                                   _%rest275579%_
                                   _%expr275577%_)))
                              (_%$%else275499275513%_)))))))
                 (_%compile-stub275418%_
                  (lambda (_%output-scm275425%_ _%output-bin275426%_)
                    (let* ((_%gerbil-home275428%_
                            (let ((__tmp276203
                                   (let ()
                                     (declare (not safe))
                                     (gerbil-home))))
                              (declare (not safe))
                              (##getenv '"GERBIL_BUILD_PREFIX" __tmp276203)))
                           (_%gerbil-libdir275430%_
                            (path-expand '"lib" _%gerbil-home275428%_))
                           (_%runtime275432%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     gxc#gerbil-runtime-modules)))
                           (_%gambit-sharp275434%_
                            (path-expand
                             '"lib/_gambit#.scm"
                             _%gerbil-home275428%_))
                           (_%include-gambit-sharp275436%_
                            (gxc#include-source _%gambit-sharp275434%_))
                           (_%bin-scm275438%_
                            (gxc#find-static-module-file _%ctx275412%_))
                           (_%deps275440%_
                            (gxc#find-runtime-module-deps _%ctx275412%_))
                           (_%deps275442%_
                            (let ()
                              (declare (not safe))
                              (##map gxc#find-static-module-file
                                     _%deps275440%_)))
                           (_%deps275447%_
                            (let ((__tmp276204
                                   (lambda (_%$obj275444%_)
                                     (not (gxc#file-empty? _%$obj275444%_)))))
                              (declare (not safe))
                              (##filter __tmp276204 _%deps275442%_)))
                           (_%deps275451%_
                            (let ((__tmp276205
                                   (lambda (_%f275449%_)
                                     (not (let ()
                                            (declare (not safe))
                                            (##member
                                             _%f275449%_
                                             _%runtime275432%_))))))
                              (declare (not safe))
                              (##filter __tmp276205 _%deps275447%_)))
                           (_%output-base275453%_
                            (let ((__tmp276206
                                   (path-strip-extension
                                    _%output-scm275425%_)))
                              (declare (not safe))
                              (##string-append __tmp276206)))
                           (_%output-c275455%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base275453%_ '".c")))
                           (_%output-o275457%_
                            (let ()
                              (declare (not safe))
                              (##string-append
                               _%output-base275453%_
                               gxc#compiler-obj-suffix)))
                           (_%output-c_275459%_
                            (let ()
                              (declare (not safe))
                              (##string-append _%output-base275453%_ '"_.c")))
                           (_%output-o_275461%_
                            (let ((__tmp276207
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '"_"
                                      gxc#compiler-obj-suffix))))
                              (declare (not safe))
                              (##string-append
                               _%output-base275453%_
                               __tmp276207)))
                           (_%gsc-link-opts275463%_ (gxc#gsc-link-options__0))
                           (_%gsc-cc-opts275465%_
                            (gxc#gsc-cc-options__%__0 '#f '#t))
                           (_%gsc-static-opts275467%_
                            (gxc#gsc-static-include-options
                             (path-expand '"static" _%gerbil-libdir275430%_)))
                           (_%output-ld-opts275469%_ (gxc#gcc-ld-options))
                           (_%gsc-gx-macros275471%_
                            (if (let ()
                                  (declare (not safe))
                                  (gerbil-runtime-smp?))
                                (cons '"-e"
                                      (cons '"(define-cond-expand-feature|enable-smp|)"
                                            (cons '"-e"
                                                  (cons _%include-gambit-sharp275436%_
                                                        '()))))
                                (cons '"-e"
                                      (cons _%include-gambit-sharp275436%_
                                            '()))))
                           (_%gsc-link-opts275473%_
                            (let ()
                              (declare (not safe))
                              (##append
                               _%gsc-link-opts275463%_
                               _%gsc-gx-macros275471%_)))
                           (_%rpath275475%_
                            (gxc#gerbil-rpath _%gerbil-libdir275430%_))
                           (_%default-ld-options275477%_
                            (cons '"-ldl" (cons '"-lm" '()))))
                      (let ((__tmp276208
                             (lambda ()
                               (let ((__tmp276209
                                      (path-directory _%output-bin275426%_)))
                                 (declare (not safe))
                                 (create-directory*__0 __tmp276209)))))
                        (declare (not safe))
                        (__with-lock gxc#+driver-mutex+ __tmp276208))
                      (gxc#with-output-to-scheme-file
                       _%output-scm275425%_
                       (lambda ()
                         (_%generate-stub275416%_
                          (let ((__tmp276210
                                 (let ((__tmp276211
                                        (cons _%bin-scm275438%_ '())))
                                   (declare (not safe))
                                   (##append _%deps275451%_ __tmp276211))))
                            (declare (not safe))
                            (##append _%runtime275432%_ __tmp276210)))))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-invoke-gsc))
                          (let ((_%compile-it275483%_
                                 (lambda ()
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-link"
                                          (cons '"-o"
                                                (cons _%output-c_275459%_
                                                      (let ((__tmp276212
                                                             (cons _%output-scm275425%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
                (declare (not safe))
                (##append _%gsc-link-opts275473%_ __tmp276212))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gsc)
                                    (cons '"-obj"
                                          (let ((__tmp276213
                                                 (let ((__tmp276214
                                                        (cons _%output-c275455%_
                                                              (cons _%output-c_275459%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (##append
                                                    _%gsc-static-opts275467%_
                                                    __tmp276214))))
                                            (declare (not safe))
                                            (##append
                                             _%gsc-cc-opts275465%_
                                             __tmp276213))))
                                   (gxc#invoke__%
                                    '#f
                                    absent-value
                                    absent-value
                                    (gxc#gerbil-gcc)
                                    (cons '"-w"
                                          (cons '"-o"
                                                (cons _%output-bin275426%_
                                                      (cons _%output-o275457%_
                                                            (cons _%output-o_275461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp276215
                                 (let ((__tmp276217
                                        (if (gxc#gerbil-enable-shared?)
                                            (cons _%rpath275475%_ '())
                                            '()))
                                       (__tmp276216
                                        (cons '"-L"
                                              (cons _%gerbil-libdir275430%_
                                                    (cons '"-lgambit"
                                                          _%default-ld-options275477%_)))))
                                   (declare (not safe))
                                   (##append __tmp276217 __tmp276216))))
                            (declare (not safe))
                            (##append
                             _%output-ld-opts275469%_
                             __tmp276215)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            (if (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-parallel))
                                (let ()
                                  (declare (not safe))
                                  (gxc#add-compile-job!__0
                                   _%compile-it275483%_))
                                (_%compile-it275483%_)))
                          '#!void)))))
          (let* ((_%output-bin275420%_
                  (gxc#compile-exe-output-file _%ctx275412%_ _%opts275413%_))
                 (_%output-scm275422%_
                  (let ()
                    (declare (not safe))
                    (##string-append _%output-bin275420%_ '"__exe.scm"))))
            (_%compile-stub275418%_
             _%output-scm275422%_
             _%output-bin275420%_)))))
    (define gxc#find-export-binding
      (lambda (_%ctx275361%_ _%id275362%_)
        (let ((_%$e275408%_
               (let ((__tmp276219
                      (lambda (_%$%e275363275365%_)
                        (let* ((_%$%$%e275363275367275377%_
                                _%$%e275363275365%_)
                               (_%$%else275369275385%_ (lambda () '#f))
                               (_%$%K275371275389%_ (lambda () '#t)))
                          (if (let ()
                                (declare (not safe))
                                (##structure-direct-instance-of?
                                 _%$%$%e275363275367275377%_
                                 'gx#module-export::t))
                              (let* ((_%$%e275372275392%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275363275367275377%_
                                         '1
                                         '#f
                                         '#f)))
                                     (_%$%e275373275395%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275363275367275377%_
                                         '2
                                         '#f
                                         '#f)))
                                     (_%$%e275374275398%_
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%$%$%e275363275367275377%_
                                         '3
                                         '#f
                                         '#f))))
                                (if (let ()
                                      (declare (not safe))
                                      (##eq? _%$%e275374275398%_ '0))
                                    (let ((_%$%e275375275401%_
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%$%$%e275363275367275377%_
                                              '4
                                              '#f
                                              '#f))))
                                      (if (eq? _%$%e275375275401%_
                                               _%id275362%_)
                                          (_%$%K275371275389%_)
                                          (_%$%else275369275385%_)))
                                    (_%$%else275369275385%_)))
                              (_%$%else275369275385%_)))))
                     (__tmp276218
                      (##structure-ref
                       _%ctx275361%_
                       '9
                       gx#module-context::t
                       '#f)))
                 (declare (not safe))
                 (__find __tmp276219 __tmp276218))))
          (if _%$e275408%_
              (let ()
                (declare (not safe))
                (gx#core-resolve-module-export _%$e275408%_))
              '#f))))
    (define gxc#find-runtime-symbol
      (lambda (_%ctx275352%_ _%id275353%_)
        (let ((_%$e275355%_
               (gxc#find-export-binding _%ctx275352%_ _%id275353%_)))
          (if _%$e275355%_
              (let ()
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$e275355%_
                       'gx#runtime-binding::t))
                    '#!void
                    (let ()
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"export is not a runtime binding"
                       _%id275353%_)))
                (##structure-ref _%$e275355%_ '1 gx#binding::t '#f))
              (let ((__tmp276220
                     (##structure-ref
                      _%ctx275352%_
                      '1
                      gx#expander-context::t
                      '#f)))
                (declare (not safe))
                (gxc#raise-compile-error
                 '"module does not export symbol"
                 __tmp276220
                 _%id275353%_))))))
    (define gxc#find-runtime-module-deps
      (lambda (_%ctx275218%_)
        (letrec* ((_%ht275220%_
                   (let () (declare (not safe)) (make-hash-table-eq)))
                  (_%import-set-template275221%_
                   (lambda (_%in275297%_ _%phi275298%_)
                     (let ((_%iphi275300%_
                            (fx+ _%phi275298%_
                                 (##direct-structure-ref
                                  _%in275297%_
                                  '2
                                  gx#import-set::t
                                  '#f)))
                           (_%imports275301%_
                            (##structure-ref
                             (##direct-structure-ref
                              _%in275297%_
                              '1
                              gx#import-set::t
                              '#f)
                             '8
                             gx#module-context::t
                             '#f)))
                       (let _%lp275303%_ ((_%rest275305%_ _%imports275301%_)
                                          (_%r275306%_ '()))
                         (let* ((_%$%rest275307275315%_ _%rest275305%_)
                                (_%$%else275309275323%_
                                 (lambda () _%r275306%_))
                                (_%$%K275311275340%_
                                 (lambda (_%rest275326%_ _%in275327%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%in275327%_
                                          'gx#module-context::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##fxzero? _%iphi275300%_))
                                           (_%lp275303%_
                                            _%rest275326%_
                                            (cons _%in275327%_ _%r275306%_))
                                           (_%lp275303%_
                                            _%rest275326%_
                                            _%r275306%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%in275327%_
                                              'gx#module-import::t))
                                           (let ((_%iphi275331%_
                                                  (fx+ _%phi275298%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##unchecked-structure-ref
                                                          _%in275327%_
                                                          '3
                                                          '#f
                                                          '#f)))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##fxzero? _%iphi275331%_))
                                                 (_%lp275303%_
                                                  _%rest275326%_
                                                  (cons (##direct-structure-ref
                                                         (let ()
                                                           (declare (not safe))
                                                           (##unchecked-structure-ref
                                                            _%in275327%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                         '1
                                                         gx#module-export::t
                                                         '#f)
                                                        _%r275306%_))
                                                 (_%lp275303%_
                                                  _%rest275326%_
                                                  _%r275306%_)))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%in275327%_
                                                  'gx#import-set::t))
                                               (let ((_%xphi275334%_
                                                      (fx+ _%iphi275300%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%in275327%_
                                                              '2
                                                              '#f
                                                              '#f)))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (##fxzero?
                                                        _%xphi275334%_))
                                                     (_%lp275303%_
                                                      _%rest275326%_
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (##unchecked-structure-ref
                                                               _%in275327%_
                                                               '1
                                                               '#f
                                                               '#f))
                                                            _%r275306%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##fxpositive?
                                                            _%xphi275334%_))
                                                         (_%lp275303%_
                                                          _%rest275326%_
                                                          (let ((__tmp276221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (_%import-set-template275221%_
                          _%in275327%_
                          _%iphi275300%_)))
                    (declare (not safe))
                    (foldl__0 cons _%r275306%_ __tmp276221)))
                 (_%lp275303%_ _%rest275326%_ _%r275306%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%lp275303%_
                                                _%rest275326%_
                                                _%r275306%_)))))))
                           (if (pair? _%$%rest275307275315%_)
                               (let ((_%$%hd275312275343%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%rest275307275315%_)))
                                     (_%$%tl275313275345%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%rest275307275315%_))))
                                 (let* ((_%in275348%_ _%$%hd275312275343%_)
                                        (_%rest275350%_ _%$%tl275313275345%_))
                                   (_%$%K275311275340%_
                                    _%rest275350%_
                                    _%in275348%_)))
                               (_%$%else275309275323%_)))))))
                  (_%find-deps275222%_
                   (lambda (_%rest275230%_ _%deps275231%_)
                     (let* ((_%$%rest275232275240%_ _%rest275230%_)
                            (_%$%else275234275248%_ (lambda () _%deps275231%_))
                            (_%$%K275236275285%_
                             (lambda (_%rest275251%_ _%hd275252%_)
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%hd275252%_
                                      'gx#module-context::t))
                                   (let ((_%id275255%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd275252%_
                                             '1
                                             '#f
                                             '#f)))
                                         (_%imports275256%_
                                          (let ()
                                            (declare (not safe))
                                            (##unchecked-structure-ref
                                             _%hd275252%_
                                             '8
                                             '#f
                                             '#f))))
                                     (if (let ()
                                           (declare (not safe))
                                           (__hash-get
                                            _%ht275220%_
                                            _%id275255%_))
                                         (_%find-deps275222%_
                                          _%rest275251%_
                                          _%deps275231%_)
                                         (let ((_%$e275259%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#core-context-prelude__%
                                                   _%hd275252%_))))
                                           (if _%$e275259%_
                                               (let ((_%xdeps275264%_
                                                      (_%find-deps275222%_
                                                       (cons _%$e275259%_
                                                             _%imports275256%_)
                                                       _%deps275231%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht275220%_
                                                    _%id275255%_
                                                    _%hd275252%_))
                                                 (_%find-deps275222%_
                                                  _%rest275251%_
                                                  (cons _%hd275252%_
                                                        _%xdeps275264%_)))
                                               (let ((_%xdeps275267%_
                                                      (_%find-deps275222%_
                                                       _%imports275256%_
                                                       _%deps275231%_)))
                                                 (let ()
                                                   (declare (not safe))
                                                   (__hash-put!
                                                    _%ht275220%_
                                                    _%id275255%_
                                                    _%hd275252%_))
                                                 (_%find-deps275222%_
                                                  _%rest275251%_
                                                  (cons _%hd275252%_
                                                        _%xdeps275267%_)))))))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%hd275252%_
                                          'gx#prelude-context::t))
                                       (let ((_%id275270%_
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-ref
                                                 _%hd275252%_
                                                 '1
                                                 '#f
                                                 '#f))))
                                         (if (let ()
                                               (declare (not safe))
                                               (__hash-get
                                                _%ht275220%_
                                                _%id275270%_))
                                             (_%find-deps275222%_
                                              _%rest275251%_
                                              _%deps275231%_)
                                             (let ((_%xdeps275274%_
                                                    (_%find-deps275222%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%hd275252%_
                                                        '7
                                                        '#f
                                                        '#f))
                                                     _%deps275231%_)))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__hash-get
                                                      _%ht275220%_
                                                      _%id275270%_))
                                                   (_%find-deps275222%_
                                                    _%rest275251%_
                                                    _%xdeps275274%_)
                                                   (begin
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-put!
                                                        _%ht275220%_
                                                        _%id275270%_
                                                        _%hd275252%_))
                                                     (_%find-deps275222%_
                                                      _%rest275251%_
                                                      (cons _%hd275252%_
                                                            _%xdeps275274%_)))))))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-direct-instance-of?
                                              _%hd275252%_
                                              'gx#module-import::t))
                                           (if (fxzero? (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%hd275252%_
                                                           '3
                                                           '#f
                                                           '#f)))
                                               (_%find-deps275222%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd275252%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest275251%_)
                                                _%deps275231%_)
                                               (_%find-deps275222%_
                                                _%rest275251%_
                                                _%deps275231%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (##structure-direct-instance-of?
                                                  _%hd275252%_
                                                  'gx#module-export::t))
                                               (_%find-deps275222%_
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (##unchecked-structure-ref
                                                         _%hd275252%_
                                                         '1
                                                         '#f
                                                         '#f))
                                                      _%rest275251%_)
                                                _%deps275231%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-direct-instance-of?
                                                      _%hd275252%_
                                                      'gx#import-set::t))
                                                   (if (fxzero? (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##unchecked-structure-ref _%hd275252%_ '2 '#f '#f)))
               (_%find-deps275222%_
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%hd275252%_ '1 '#f '#f))
                      _%rest275251%_)
                _%deps275231%_)
               (if (fxpositive?
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%hd275252%_ '2 '#f '#f)))
                   (let ((_%xdeps275281%_
                          (_%import-set-template275221%_ _%hd275252%_ '0)))
                     (_%find-deps275222%_
                      (let ()
                        (declare (not safe))
                        (foldl__0 cons _%rest275251%_ _%xdeps275281%_))
                      _%deps275231%_))
                   (_%find-deps275222%_ _%rest275251%_ _%deps275231%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"Unexpected module import"
                                                            _%hd275252%_))))))))))
                       (if (pair? _%$%rest275232275240%_)
                           (let ((_%$%hd275237275288%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%rest275232275240%_)))
                                 (_%$%tl275238275290%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%rest275232275240%_))))
                             (let* ((_%hd275293%_ _%$%hd275237275288%_)
                                    (_%rest275295%_ _%$%tl275238275290%_))
                               (_%$%K275236275285%_
                                _%rest275295%_
                                _%hd275293%_)))
                           (_%$%else275234275248%_))))))
          (let ((__tmp276222
                 (filter gx#expander-context-id
                         (_%find-deps275222%_
                          (let ((_%$e275224%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-context-prelude__%
                                    _%ctx275218%_))))
                            (if _%$e275224%_
                                (cons _%$e275224%_
                                      (##structure-ref
                                       _%ctx275218%_
                                       '8
                                       gx#module-context::t
                                       '#f))
                                (##structure-ref
                                 _%ctx275218%_
                                 '8
                                 gx#module-context::t
                                 '#f)))
                          '()))))
            (declare (not safe))
            (##reverse __tmp276222)))))
    (define gxc#find-static-module-file
      (lambda (_%ctx275148%_)
        (let* ((_%context-id275150%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%ctx275148%_
                       'gx#module-context::t))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%ctx275148%_ '1 '#f '#f))
                    (string->symbol _%ctx275148%_)))
               (_%scm275152%_
                (let ((__tmp276223
                       (gxc#static-module-name _%context-id275150%_)))
                  (declare (not safe))
                  (##string-append __tmp276223 '".scm")))
               (_%dirs275154%_ (let () (declare (not safe)) (load-path)))
               (_%dirs275160%_
                (let ((_%user-libpath275156%_
                       (let ()
                         (declare (not safe))
                         (##getenv '"GERBIL_PATH" '#f))))
                  (if _%user-libpath275156%_
                      (let ((_%user-libpath275158%_
                             (path-expand '"lib" _%user-libpath275156%_)))
                        (if (let ()
                              (declare (not safe))
                              (##member _%user-libpath275158%_ _%dirs275154%_))
                            _%dirs275154%_
                            (cons _%user-libpath275158%_ _%dirs275154%_)))
                      _%dirs275154%_)))
               (_%dirs275170%_
                (let ((_%$e275162%_
                       (let ()
                         (declare (not safe))
                         (gxc#current-compile-output-dir))))
                  (if _%$e275162%_
                      (cons _%$e275162%_ _%dirs275160%_)
                      _%dirs275160%_)))
               (_%dirs275176%_
                (let ((__tmp276224
                       (lambda (_%$%g275171275173%_)
                         (path-expand '"static" _%$%g275171275173%_))))
                  (declare (not safe))
                  (##map __tmp276224 _%dirs275170%_))))
          (let _%lp275179%_ ((_%rest275181%_ _%dirs275176%_))
            (let* ((_%$%rest275182275190%_ _%rest275181%_)
                   (_%$%else275184275198%_
                    (lambda ()
                      (let ((__tmp276225
                             (##structure-ref
                              _%ctx275148%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#raise-compile-error
                         '"cannot find static module"
                         __tmp276225
                         _%scm275152%_))))
                   (_%$%K275186275206%_
                    (lambda (_%rest275201%_ _%dir275202%_)
                      (let ((_%path275204%_
                             (path-expand _%scm275152%_ _%dir275202%_)))
                        (if (let ()
                              (declare (not safe))
                              (##file-exists? _%path275204%_))
                            _%path275204%_
                            (_%lp275179%_ _%rest275201%_))))))
              (if (pair? _%$%rest275182275190%_)
                  (let ((_%$%hd275187275209%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest275182275190%_)))
                        (_%$%tl275188275211%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest275182275190%_))))
                    (let* ((_%dir275214%_ _%$%hd275187275209%_)
                           (_%rest275216%_ _%$%tl275188275211%_))
                      (_%$%K275186275206%_ _%rest275216%_ _%dir275214%_)))
                  (_%$%else275184275198%_)))))))
    (define gxc#file-empty?
      (lambda (_%path275146%_)
        (zero? (let ((__tmp276226 (file-info _%path275146%_ '#t)))
                 (declare (not safe))
                 (##file-info-size __tmp276226)))))
    (define gxc#compile-top-module
      (lambda (_%ctx275137%_)
        (let ((__tmp276227
               (lambda ()
                 (let ((__tmp276228
                        (lambda ()
                          (let ((__tmp276229
                                 (lambda ()
                                   (let ((__tmp276231
                                          (lambda ()
                                            (let ((__tmp276233
                                                   (lambda ()
                                                     (let ((__tmp276235
                                                            (lambda ()
                                                              (let ((__tmp276236
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##structure-ref
                              _%ctx275137%_
                              '1
                              gx#expander-context::t
                              '#f)))
                        (declare (not safe))
                        (gxc#verbose '"compile " __tmp276236))
                      (if (let ()
                            (declare (not safe))
                            (gxc#current-compile-optimize))
                          (let ((__tmp276237
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#optimize! _%ctx275137%_)))))
                            (declare (not safe))
                            (__with-lock gxc#+driver-mutex+ __tmp276237))
                          '#!void)
                      (gxc#collect-bindings _%ctx275137%_)
                      (gxc#compile-runtime-code _%ctx275137%_)
                      (gxc#compile-meta-code _%ctx275137%_)
                      (if (and (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-optimize))
                               (let ()
                                 (declare (not safe))
                                 (gxc#current-compile-generate-ssxi)))
                          (gxc#compile-ssxi-code _%ctx275137%_)
                          '#!void)))
                   (__tmp276234
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
                __tmp276235
                gxc#current-compile-runtime-names
                __tmp276234))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (__tmp276232
                                                   (let ()
                                                     (declare (not safe))
                                                     (make-hash-table-eq))))
                                              (declare (not safe))
                                              (call-with-parameters__1
                                               __tmp276233
                                               gxc#current-compile-runtime-sections
                                               __tmp276232))))
                                         (__tmp276230
                                          (let ((__obj276126
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure
                                                    gxc#symbol-table::t
                                                    '#f
                                                    '#f))))
                                            (let ()
                                              (declare (not safe))
                                              (gxc#symbol-table:::init!
                                               __obj276126))
                                            __obj276126)))
                                     (declare (not safe))
                                     (call-with-parameters__1
                                      __tmp276231
                                      gxc#current-compile-symbol-table
                                      __tmp276230)))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp276229
                             gx#current-expander-marks
                             '())))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp276228
                    gx#current-expander-phi
                    '0)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp276227
           gx#current-expander-context
           _%ctx275137%_))))
    (define gxc#collect-bindings
      (lambda (_%ctx275135%_)
        (let ((__tmp276238
               (##structure-ref _%ctx275135%_ '11 gx#module-context::t '#f)))
          (declare (not safe))
          (gxc#apply-collect-bindings __tmp276238))))
    (define gxc#compile-runtime-code
      (lambda (_%ctx275080%_)
        (letrec ((_%compile1275082%_
                  (lambda (_%ctx275124%_)
                    (let* ((_%code275126%_
                            (##structure-ref
                             _%ctx275124%_
                             '11
                             gx#module-context::t
                             '#f))
                           (_%rtm275130%_
                            (let ((_%idstr275128%_
                                   (let ((__tmp276239
                                          (##structure-ref
                                           _%ctx275124%_
                                           '1
                                           gx#expander-context::t
                                           '#f)))
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      __tmp276239))))
                              (declare (not safe))
                              (##string-append _%idstr275128%_ '"~0")))
                           (_%rtc?275132%_
                            (let ()
                              (declare (not safe))
                              (gxc#apply-find-runtime-code _%code275126%_))))
                      (if _%rtc?275132%_
                          (let ((__tmp276240
                                 (let ()
                                   (declare (not safe))
                                   (gxc#current-compile-runtime-sections))))
                            (declare (not safe))
                            (hash-put!
                             __tmp276240
                             _%ctx275124%_
                             _%rtm275130%_))
                          '#!void)
                      (_%generate-runtime-code275084%_
                       _%ctx275124%_
                       _%code275126%_
                       (if _%rtc?275132%_ _%rtm275130%_ '#f)))))
                 (_%context-timestamp275083%_
                  (lambda (_%ctx275122%_)
                    (let ((__tmp276241
                           (let ((__tmp276242
                                  (symbol->string
                                   (##structure-ref
                                    _%ctx275122%_
                                    '1
                                    gx#expander-context::t
                                    '#f))))
                             (declare (not safe))
                             (##string-append __tmp276242 '"::timestamp"))))
                      (declare (not safe))
                      (##string->symbol __tmp276241))))
                 (_%generate-runtime-code275084%_
                  (lambda (_%ctx275091%_ _%code275092%_ _%rtm275093%_)
                    (let* ((_%runtime-code?275095%_ (if _%rtm275093%_ '#t '#f))
                           (_%lifts275097%_ (box '()))
                           (_%runtime-code275103%_
                            (if _%runtime-code?275095%_
                                (let ((__tmp276243
                                       (lambda ()
                                         (let ((__tmp276244
                                                (lambda ()
                                                  (let ((__tmp276245
                                                         (lambda ()
                                                           (let ((__tmp276247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda ()
                            (let ()
                              (declare (not safe))
                              (gxc#apply-generate-runtime _%code275092%_))))
                         (__tmp276246
                          (let () (declare (not safe)) (make-hash-table-eq))))
                     (declare (not safe))
                     (call-with-parameters__1
                      __tmp276247
                      gxc#current-compile-marks
                      __tmp276246)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (call-with-parameters__1
                                                     __tmp276245
                                                     gxc#current-compile-lift
                                                     _%lifts275097%_)))))
                                           (declare (not safe))
                                           (call-with-parameters__1
                                            __tmp276244
                                            gx#current-expander-phi
                                            '0)))))
                                  (declare (not safe))
                                  (call-with-parameters__1
                                   __tmp276243
                                   gx#current-expander-context
                                   _%ctx275091%_))
                                '#f))
                           (_%runtime-code275105%_
                            (if _%runtime-code?275095%_
                                (if (null? (unbox _%lifts275097%_))
                                    _%runtime-code275103%_
                                    (cons 'begin
                                          (let ((__tmp276249
                                                 (reverse (unbox _%lifts275097%_)))
                                                (__tmp276248
                                                 (cons _%runtime-code275103%_
                                                       '())))
                                            (declare (not safe))
                                            (##append
                                             __tmp276249
                                             __tmp276248))))
                                '#f))
                           (_%runtime-code275107%_
                            (if _%runtime-code?275095%_
                                (cons 'begin
                                      (cons (list 'define
                                                  (_%context-timestamp275083%_
                                                   _%ctx275091%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#current-compile-timestamp)))
                                            (cons _%runtime-code275105%_ '())))
                                '#f))
                           (_%loader-code275110%_
                            (let ((__tmp276250
                                   (lambda ()
                                     (let ()
                                       (declare (not safe))
                                       (gxc#apply-generate-loader
                                        _%code275092%_)))))
                              (declare (not safe))
                              (call-with-parameters__1
                               __tmp276250
                               gx#current-expander-context
                               _%ctx275091%_)))
                           (_%loader-code275112%_
                            (cons 'begin
                                  (cons _%loader-code275110%_
                                        (cons (if _%runtime-code?275095%_
                                                  (cons 'load-module
                                                        (cons _%rtm275093%_
                                                              '()))
                                                  '(begin))
                                              '()))))
                           (_%scm0275114%_
                            (gxc#compile-output-file _%ctx275091%_ '0 '".scm"))
                           (_%scmrt275116%_
                            (gxc#compile-output-file
                             _%ctx275091%_
                             '#f
                             '".scm"))
                           (_%scms275118%_
                            (gxc#compile-static-output-file _%ctx275091%_)))
                      (if _%runtime-code?275095%_
                          (gxc#compile-scm-file__0
                           _%scm0275114%_
                           _%runtime-code275107%_)
                          '#!void)
                      (let ((__tmp276251
                             (lambda ()
                               (gxc#compile-scm-file__0
                                _%scmrt275116%_
                                _%loader-code275112%_))))
                        (declare (not safe))
                        (call-with-parameters__1
                         __tmp276251
                         gxc#current-compile-gsc-options
                         '#f))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%scms275118%_))
                          (let ()
                            (declare (not safe))
                            (##delete-file _%scms275118%_))
                          '#!void)
                      (if _%runtime-code?275095%_
                          (let ()
                            (declare (not safe))
                            (##copy-file _%scm0275114%_ _%scms275118%_))
                          (let ()
                            (declare (not safe))
                            (##call-with-output-file _%scms275118%_ void)))))))
          (let* ((_%all-modules275086%_
                  (cons _%ctx275080%_ (gxc#lift-nested-modules _%ctx275080%_)))
                 (__tmp276252
                  (lambda (_%ctx275088%_)
                    (let ((__tmp276253
                           (lambda () (_%compile1275082%_ _%ctx275088%_))))
                      (declare (not safe))
                      (call-with-parameters__1
                       __tmp276253
                       gxc#current-compile-decls
                       '())))))
            (declare (not safe))
            (##for-each __tmp276252 _%all-modules275086%_)))))
    (define gxc#compile-meta-code
      (lambda (_%ctx274979%_)
        (letrec ((_%compile-ssi274981%_
                  (lambda (_%code275048%_)
                    (let* ((_%path275050%_
                            (gxc#compile-output-file
                             _%ctx274979%_
                             '#f
                             '".ssi"))
                           (_%prelude275062%_
                            (let* ((_%super275052%_
                                    (##structure-ref
                                     _%ctx274979%_
                                     '3
                                     gx#phi-context::t
                                     '#f))
                                   (_%$e275054%_
                                    (##structure-ref
                                     _%super275052%_
                                     '1
                                     gx#expander-context::t
                                     '#f)))
                              (if _%$e275054%_
                                  (let ()
                                    (declare (not safe))
                                    (make-symbol__1 '":" _%$e275054%_))
                                  ':<root>)))
                           (_%ns275064%_
                            (##structure-ref
                             _%ctx274979%_
                             '6
                             gx#module-context::t
                             '#f))
                           (_%idstr275066%_
                            (symbol->string
                             (##structure-ref
                              _%ctx274979%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%pkg275074%_
                            (let ((_%$e275068%_
                                   (let ()
                                     (declare (not safe))
                                     (string-rindex__0 _%idstr275066%_ '#\/))))
                              (if _%$e275068%_
                                  (let ((__tmp276254
                                         (substring
                                          _%idstr275066%_
                                          '0
                                          _%$e275068%_)))
                                    (declare (not safe))
                                    (##string->symbol __tmp276254))
                                  '#f)))
                           (_%rt275076%_
                            (let ((__tmp276255
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-runtime-sections))))
                              (declare (not safe))
                              (hash-get __tmp276255 _%ctx274979%_))))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose '"compile " _%path275050%_))
                      (gxc#with-output-to-scheme-file
                       _%path275050%_
                       (lambda ()
                         (let ()
                           (declare (not safe))
                           (displayln '"prelude:" '" " _%prelude275062%_))
                         (if _%pkg275074%_
                             (let ()
                               (declare (not safe))
                               (displayln '"package:" '" " _%pkg275074%_))
                             '#!void)
                         (let ()
                           (declare (not safe))
                           (displayln '"namespace:" '" " _%ns275064%_))
                         (newline)
                         (pretty-print _%code275048%_)
                         (if _%rt275076%_
                             (pretty-print
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'load-module '()))
                                          (cons (cons '%#quote
                                                      (cons _%rt275076%_ '()))
                                                '()))))
                             '#!void))))))
                 (_%compile-phi274982%_
                  (lambda (_%part274987%_)
                    (let* ((_%$%part274988275001%_ _%part274987%_)
                           (_%$%E274990275005%_
                            (lambda ()
                              (let ()
                                (declare (not safe))
                                (error '"No clause matching"
                                       _%$%part274988275001%_
                                       '([phi-ctx phi n code])))
                              '#!void))
                           (_%$%K274991275017%_
                            (lambda (_%code275008%_
                                     _%n275009%_
                                     _%phi275010%_
                                     _%phi-ctx275011%_)
                              (let ((_%code275015%_
                                     (let ((__tmp276256
                                            (lambda ()
                                              (let ((__tmp276257
                                                     (lambda ()
                                                       (gxc#generate-runtime-phi
                                                        _%code275008%_))))
                                                (declare (not safe))
                                                (call-with-parameters__1
                                                 __tmp276257
                                                 gx#current-expander-phi
                                                 _%phi275010%_)))))
                                       (declare (not safe))
                                       (call-with-parameters__1
                                        __tmp276256
                                        gx#current-expander-context
                                        _%phi-ctx275011%_))))
                                (gxc#compile-scm-file__%
                                 (gxc#compile-output-file
                                  _%ctx274979%_
                                  _%n275009%_
                                  '".scm")
                                 _%code275015%_
                                 '#t)))))
                      (if (pair? _%$%part274988275001%_)
                          (let ((_%$%hd274992275020%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%part274988275001%_)))
                                (_%$%tl274993275022%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%part274988275001%_))))
                            (let ((_%phi-ctx275025%_ _%$%hd274992275020%_))
                              (if (pair? _%$%tl274993275022%_)
                                  (let ((_%$%hd274994275027%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274993275022%_)))
                                        (_%$%tl274995275029%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274993275022%_))))
                                    (let ((_%phi275032%_ _%$%hd274994275027%_))
                                      (if (pair? _%$%tl274995275029%_)
                                          (let ((_%$%hd274996275034%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl274995275029%_)))
                                                (_%$%tl274997275036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl274995275029%_))))
                                            (let ((_%n275039%_
                                                   _%$%hd274996275034%_))
                                              (if (pair? _%$%tl274997275036%_)
                                                  (let ((_%$%hd274998275041%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%tl274997275036%_)))
                                                        (_%$%tl274999275043%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%tl274997275036%_))))
                                                    (let ((_%code275046%_
                                                           _%$%hd274998275041%_))
                                                      (if (null? _%$%tl274999275043%_)
                                                          (_%$%K274991275017%_
                                                           _%code275046%_
                                                           _%n275039%_
                                                           _%phi275032%_
                                                           _%phi-ctx275025%_)
                                                          (_%$%E274990275005%_))))
                                                  (_%$%E274990275005%_))))
                                          (_%$%E274990275005%_))))
                                  (_%$%E274990275005%_))))
                          (_%$%E274990275005%_))))))
          (let ((_g276258_ (gxc#generate-meta-code _%ctx274979%_)))
            (begin
              (let ((_g276259_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g276258_)
                           (##values-length _g276258_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g276259_ 2)))
                    (error "Context expects 2 values" _g276259_)))
              (let ((_%ssi-code274984%_
                     (let () (declare (not safe)) (##values-ref _g276258_ 0)))
                    (_%phi-code274985%_
                     (let () (declare (not safe)) (##values-ref _g276258_ 1))))
                (begin
                  (_%compile-ssi274981%_ _%ssi-code274984%_)
                  (for-each _%compile-phi274982%_ _%phi-code274985%_))))))))
    (define gxc#compile-ssxi-code
      (lambda (_%ctx274961%_)
        (let* ((_%path274963%_
                (gxc#compile-output-file _%ctx274961%_ '#f '".ssxi.ss"))
               (_%code274965%_
                (let ((__tmp276260
                       (##structure-ref
                        _%ctx274961%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-ssxi __tmp276260)))
               (_%idstr274967%_
                (symbol->string
                 (##structure-ref
                  _%ctx274961%_
                  '1
                  gx#expander-context::t
                  '#f)))
               (_%pkg274975%_
                (let ((_%$e274969%_
                       (let ()
                         (declare (not safe))
                         (string-rindex__0 _%idstr274967%_ '#\/))))
                  (if _%$e274969%_
                      (let ((__tmp276261
                             (substring _%idstr274967%_ '0 _%$e274969%_)))
                        (declare (not safe))
                        (##string->symbol __tmp276261))
                      '#f))))
          (let ()
            (declare (not safe))
            (gxc#verbose '"compile " _%path274963%_))
          (gxc#with-output-to-scheme-file
           _%path274963%_
           (lambda ()
             (let ()
               (declare (not safe))
               (displayln '"prelude: :gerbil/compiler/ssxi"))
             (if _%pkg274975%_
                 (let ()
                   (declare (not safe))
                   (displayln '"package: " _%pkg274975%_))
                 '#!void)
             (newline)
             (pretty-print _%code274965%_))))))
    (define gxc#generate-meta-code
      (lambda (_%ctx274954%_)
        (let* ((_%state274956%_
                (let ((__obj276127
                       (let ()
                         (declare (not safe))
                         (##structure gxc#meta-state::t '#f '#f '#f '#f))))
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state:::init! __obj276127 _%ctx274954%_))
                  __obj276127))
               (_%ssi-code274958%_
                (let ((__tmp276262
                       (##structure-ref
                        _%ctx274954%_
                        '11
                        gx#module-context::t
                        '#f)))
                  (declare (not safe))
                  (gxc#apply-generate-meta__%
                   '#f
                   _%state274956%_
                   __tmp276262))))
          (values _%ssi-code274958%_
                  (let ()
                    (declare (not safe))
                    (gxc#meta-state-end! _%state274956%_))))))
    (define gxc#generate-runtime-phi
      (lambda (_%stx274946%_)
        (let* ((_%lifts274948%_ (box '()))
               (__tmp276263
                (lambda ()
                  (let ((__tmp276265
                         (lambda ()
                           (let ((_%code274952%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#apply-generate-runtime-phi
                                     _%stx274946%_))))
                             (if (null? (unbox _%lifts274948%_))
                                 _%code274952%_
                                 (cons 'begin
                                       (let ((__tmp276267
                                              (reverse (unbox _%lifts274948%_)))
                                             (__tmp276266
                                              (cons _%code274952%_ '())))
                                         (declare (not safe))
                                         (##append
                                          __tmp276267
                                          __tmp276266)))))))
                        (__tmp276264
                         (let () (declare (not safe)) (make-hash-table-eq))))
                    (declare (not safe))
                    (call-with-parameters__1
                     __tmp276265
                     gxc#current-compile-marks
                     __tmp276264)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp276263
           gxc#current-compile-lift
           _%lifts274948%_))))
    (define gxc#lift-nested-modules
      (lambda (_%ctx274942%_)
        (let ((_%modules274944%_ (box '())))
          (let ((__tmp276268
                 (##structure-ref _%ctx274942%_ '11 gx#module-context::t '#f)))
            (declare (not safe))
            (gxc#apply-lift-modules__% '#f _%modules274944%_ __tmp276268))
          (reverse (unbox _%modules274944%_)))))
    (define gxc#compile-scm-file__%
      (lambda (_%path274922%_ _%code274923%_ _%phi?274924%_)
        (let () (declare (not safe)) (gxc#verbose '"compile " _%path274922%_))
        (gxc#with-output-to-scheme-file
         _%path274922%_
         (lambda ()
           (pretty-print
            (cons 'declare
                  (cons '(block)
                        (cons '(standard-bindings)
                              (cons '(extended-bindings)
                                    (if _%phi?274924%_
                                        '((inlining-limit 200))
                                        '()))))))
           (pretty-print _%code274923%_)))
        (if (let () (declare (not safe)) (gxc#current-compile-invoke-gsc))
            (let ((_%compile-it274928%_
                   (lambda ()
                     (gxc#gsc-compile-file _%path274922%_ _%phi?274924%_))))
              (if (let () (declare (not safe)) (gxc#current-compile-parallel))
                  (let ((__tmp276269 (list 'compile-file _%path274922%_)))
                    (declare (not safe))
                    (gxc#add-compile-job!__% _%compile-it274928%_ __tmp276269))
                  (_%compile-it274928%_)))
            '#!void)))
    (define gxc#compile-scm-file__0
      (lambda (_%path274933%_ _%code274934%_)
        (let ((_%phi?274936%_ '#f))
          (gxc#compile-scm-file__%
           _%path274933%_
           _%code274934%_
           _%phi?274936%_))))
    (define gxc#compile-scm-file
      (lambda _g276270_
        (let ((_g276271_ (let () (declare (not safe)) (##length _g276270_))))
          (cond ((let () (declare (not safe)) (##fx= _g276271_ 2))
                 (apply gxc#compile-scm-file__0 _g276270_))
                ((let () (declare (not safe)) (##fx= _g276271_ 3))
                 (apply gxc#compile-scm-file__% _g276270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#compile-scm-file
                  _g276270_))))))
    (define gxc#gsc-link-options__%
      (lambda (_%phi?274823%_)
        (let _%lp274825%_ ((_%rest274827%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts274828%_ '()))
          (let* ((_%$%rest274829274849%_ _%rest274827%_)
                 (_%$%else274833274857%_
                  (lambda ()
                    (if (let ()
                          (declare (not safe))
                          (gxc#current-compile-debug))
                        (cons '"-debug-source"
                              (cons '"-track-scheme" (reverse _%opts274828%_)))
                        (reverse _%opts274828%_)))))
            (let ((_%$%K274843274900%_
                   (lambda (_%rest274898%_)
                     (_%lp274825%_ _%rest274898%_ _%opts274828%_)))
                  (_%$%K274838274882%_
                   (lambda (_%rest274880%_)
                     (_%lp274825%_ _%rest274880%_ _%opts274828%_)))
                  (_%$%K274835274864%_
                   (lambda (_%rest274861%_ _%opt274862%_)
                     (_%lp274825%_
                      _%rest274861%_
                      (cons _%opt274862%_ _%opts274828%_)))))
              (if (pair? _%$%rest274829274849%_)
                  (let ((_%$%tl274845274905%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest274829274849%_)))
                        (_%$%hd274844274903%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest274829274849%_))))
                    (if (equal? _%$%hd274844274903%_ '"-cc-options")
                        (if (pair? _%$%tl274845274905%_)
                            (let* ((_%$%tl274847274908%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl274845274905%_)))
                                   (_%rest274911%_ _%$%tl274847274908%_))
                              (_%$%K274843274900%_ _%rest274911%_))
                            (let ((_%opt274872%_ _%$%hd274844274903%_)
                                  (_%rest274874%_ _%$%tl274845274905%_))
                              (_%$%K274835274864%_
                               _%rest274874%_
                               _%opt274872%_)))
                        (if (equal? _%$%hd274844274903%_ '"-ld-options")
                            (if (pair? _%$%tl274845274905%_)
                                (let* ((_%$%tl274842274890%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%tl274845274905%_)))
                                       (_%rest274893%_ _%$%tl274842274890%_))
                                  (_%$%K274838274882%_ _%rest274893%_))
                                (let ((_%opt274872%_ _%$%hd274844274903%_)
                                      (_%rest274874%_ _%$%tl274845274905%_))
                                  (_%$%K274835274864%_
                                   _%rest274874%_
                                   _%opt274872%_)))
                            (let ((_%opt274872%_ _%$%hd274844274903%_)
                                  (_%rest274874%_ _%$%tl274845274905%_))
                              (_%$%K274835274864%_
                               _%rest274874%_
                               _%opt274872%_)))))
                  (_%$%else274833274857%_)))))))
    (define gxc#gsc-link-options__0
      (lambda ()
        (let ((_%phi?274917%_ '#f)) (gxc#gsc-link-options__% _%phi?274917%_))))
    (define gxc#gsc-link-options
      (lambda _g276272_
        (let ((_g276273_ (let () (declare (not safe)) (##length _g276272_))))
          (cond ((let () (declare (not safe)) (##fx= _g276273_ 0))
                 (apply gxc#gsc-link-options__0 _g276272_))
                ((let () (declare (not safe)) (##fx= _g276273_ 1))
                 (apply gxc#gsc-link-options__% _g276272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-link-options
                  _g276272_))))))
    (define gxc#gsc-cc-options__%__%
      (lambda (_%@@keywords274673%_ _%$%static?274669274674%_ _%phi?274675%_)
        (let ((_%static?274677%_
               (if (eq? _%$%static?274669274674%_ absent-value)
                   '#f
                   _%$%static?274669274674%_)))
          (if _%phi?274675%_
              (if (let () (declare (not safe)) (gxc#current-compile-debug))
                  (cons '"-cc-options" (cons '"-g" '()))
                  '())
              (let _%lp274679%_ ((_%rest274681%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts274682%_ '()))
                (let* ((_%$%rest274683274709%_ _%rest274681%_)
                       (_%$%else274688274717%_
                        (lambda ()
                          (if (let ()
                                (declare (not safe))
                                (gxc#current-compile-debug))
                              (cons '"-cc-options"
                                    (cons '"-g" (reverse! _%opts274682%_)))
                              (reverse! _%opts274682%_)))))
                  (let ((_%$%K274703274780%_
                         (lambda (_%rest274777%_ _%opt274778%_)
                           (if _%static?274677%_
                               (_%lp274679%_
                                _%rest274777%_
                                (cons _%opt274778%_
                                      (cons '"-cc-options" _%opts274682%_)))
                               (_%lp274679%_ _%rest274777%_ _%opts274682%_))))
                        (_%$%K274698274757%_
                         (lambda (_%rest274754%_ _%opt274755%_)
                           (_%lp274679%_
                            _%rest274754%_
                            (cons _%opt274755%_
                                  (cons '"-cc-options" _%opts274682%_)))))
                        (_%$%K274693274737%_
                         (lambda (_%rest274735%_)
                           (_%lp274679%_ _%rest274735%_ _%opts274682%_)))
                        (_%$%K274690274723%_
                         (lambda (_%rest274721%_)
                           (_%lp274679%_ _%rest274721%_ _%opts274682%_))))
                    (if (pair? _%$%rest274683274709%_)
                        (let ((_%$%tl274705274785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest274683274709%_)))
                              (_%$%hd274704274783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest274683274709%_))))
                          (if (equal? _%$%hd274704274783%_ '"-cc-options")
                              (if (pair? _%$%tl274705274785%_)
                                  (let ((_%$%tl274707274790%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274705274785%_)))
                                        (_%$%hd274706274788%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274705274785%_))))
                                    (if (equal? _%$%hd274706274788%_
                                                '"-Bstatic")
                                        (let ((_%opt274793%_
                                               _%$%hd274706274788%_)
                                              (_%rest274795%_
                                               _%$%tl274707274790%_))
                                          (_%$%K274703274780%_
                                           _%rest274795%_
                                           _%opt274793%_))
                                        (let ((_%opt274770%_
                                               _%$%hd274706274788%_)
                                              (_%rest274772%_
                                               _%$%tl274707274790%_))
                                          (_%$%K274698274757%_
                                           _%rest274772%_
                                           _%opt274770%_))))
                                  (let ((_%rest274729%_ _%$%tl274705274785%_))
                                    (_%$%K274690274723%_ _%rest274729%_)))
                              (if (equal? _%$%hd274704274783%_ '"-ld-options")
                                  (if (pair? _%$%tl274705274785%_)
                                      (let* ((_%$%tl274697274745%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl274705274785%_)))
                                             (_%rest274748%_
                                              _%$%tl274697274745%_))
                                        (_%$%K274693274737%_ _%rest274748%_))
                                      (let ((_%rest274729%_
                                             _%$%tl274705274785%_))
                                        (_%$%K274690274723%_ _%rest274729%_)))
                                  (let ((_%rest274729%_ _%$%tl274705274785%_))
                                    (_%$%K274690274723%_ _%rest274729%_)))))
                        (_%$%else274688274717%_)))))))))
    (define gxc#gsc-cc-options__%__0
      (lambda (_%@@keywords274800%_ _%$%static?274669274801%_)
        (let ((_%phi?274803%_ '#f))
          (gxc#gsc-cc-options__%__%
           _%@@keywords274800%_
           _%$%static?274669274801%_
           _%phi?274803%_))))
    (define gxc#gsc-cc-options__%
      (lambda _g276274_
        (let ((_g276275_ (let () (declare (not safe)) (##length _g276274_))))
          (cond ((let () (declare (not safe)) (##fx= _g276275_ 2))
                 (apply gxc#gsc-cc-options__%__0 _g276274_))
                ((let () (declare (not safe)) (##fx= _g276275_ 3))
                 (apply gxc#gsc-cc-options__%__% _g276274_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-cc-options__%
                  _g276274_))))))
    (define gxc#gsc-cc-options__@
      (lambda (_%@@keywords274812%_ . _%args274813%_)
        (apply gxc#gsc-cc-options__%
               _%@@keywords274812%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274812%_
                  'static:
                  absent-value))
               _%args274813%_)))
    (define gxc#gsc-cc-options
      (lambda _%$%args274670274819%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-cc-options__@
               _%$%args274670274819%_)))
    (define gxc#gsc-ld-options__%__%
      (lambda (_%@@keywords274519%_ _%$%static?274515274520%_ _%phi?274521%_)
        (let ((_%static?274523%_
               (if (eq? _%$%static?274515274520%_ absent-value)
                   '#f
                   _%$%static?274515274520%_)))
          (if _%phi?274521%_
              '()
              (let _%lp274525%_ ((_%rest274527%_
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-gsc-options)))
                                 (_%opts274528%_ '()))
                (let* ((_%$%rest274529274555%_ _%rest274527%_)
                       (_%$%else274534274563%_
                        (lambda () (reverse! _%opts274528%_))))
                  (let ((_%$%K274549274626%_
                         (lambda (_%rest274623%_ _%opt274624%_)
                           (if _%static?274523%_
                               (_%lp274525%_
                                _%rest274623%_
                                (cons _%opt274624%_
                                      (cons '"-ld-options" _%opts274528%_)))
                               (_%lp274525%_ _%rest274623%_ _%opts274528%_))))
                        (_%$%K274544274603%_
                         (lambda (_%rest274600%_ _%opt274601%_)
                           (_%lp274525%_
                            _%rest274600%_
                            (cons _%opt274601%_
                                  (cons '"-ld-options" _%opts274528%_)))))
                        (_%$%K274539274583%_
                         (lambda (_%rest274581%_)
                           (_%lp274525%_ _%rest274581%_ _%opts274528%_)))
                        (_%$%K274536274569%_
                         (lambda (_%rest274567%_)
                           (_%lp274525%_ _%rest274567%_ _%opts274528%_))))
                    (if (pair? _%$%rest274529274555%_)
                        (let ((_%$%tl274551274631%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest274529274555%_)))
                              (_%$%hd274550274629%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest274529274555%_))))
                          (if (equal? _%$%hd274550274629%_ '"-ld-options")
                              (if (pair? _%$%tl274551274631%_)
                                  (let ((_%$%tl274553274636%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%tl274551274631%_)))
                                        (_%$%hd274552274634%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%tl274551274631%_))))
                                    (if (equal? _%$%hd274552274634%_
                                                '"-static")
                                        (let ((_%opt274639%_
                                               _%$%hd274552274634%_)
                                              (_%rest274641%_
                                               _%$%tl274553274636%_))
                                          (_%$%K274549274626%_
                                           _%rest274641%_
                                           _%opt274639%_))
                                        (let ((_%opt274616%_
                                               _%$%hd274552274634%_)
                                              (_%rest274618%_
                                               _%$%tl274553274636%_))
                                          (_%$%K274544274603%_
                                           _%rest274618%_
                                           _%opt274616%_))))
                                  (let ((_%rest274575%_ _%$%tl274551274631%_))
                                    (_%$%K274536274569%_ _%rest274575%_)))
                              (if (equal? _%$%hd274550274629%_ '"-cc-options")
                                  (if (pair? _%$%tl274551274631%_)
                                      (let* ((_%$%tl274543274591%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%tl274551274631%_)))
                                             (_%rest274594%_
                                              _%$%tl274543274591%_))
                                        (_%$%K274539274583%_ _%rest274594%_))
                                      (let ((_%rest274575%_
                                             _%$%tl274551274631%_))
                                        (_%$%K274536274569%_ _%rest274575%_)))
                                  (let ((_%rest274575%_ _%$%tl274551274631%_))
                                    (_%$%K274536274569%_ _%rest274575%_)))))
                        (_%$%else274534274563%_)))))))))
    (define gxc#gsc-ld-options__%__0
      (lambda (_%@@keywords274646%_ _%$%static?274515274647%_)
        (let ((_%phi?274649%_ '#f))
          (gxc#gsc-ld-options__%__%
           _%@@keywords274646%_
           _%$%static?274515274647%_
           _%phi?274649%_))))
    (define gxc#gsc-ld-options__%
      (lambda _g276276_
        (let ((_g276277_ (let () (declare (not safe)) (##length _g276276_))))
          (cond ((let () (declare (not safe)) (##fx= _g276277_ 2))
                 (apply gxc#gsc-ld-options__%__0 _g276276_))
                ((let () (declare (not safe)) (##fx= _g276277_ 3))
                 (apply gxc#gsc-ld-options__%__% _g276276_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#gsc-ld-options__%
                  _g276276_))))))
    (define gxc#gsc-ld-options__@
      (lambda (_%@@keywords274658%_ . _%args274659%_)
        (apply gxc#gsc-ld-options__%
               _%@@keywords274658%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274658%_
                  'static:
                  absent-value))
               _%args274659%_)))
    (define gxc#gsc-ld-options
      (lambda _%$%args274516274665%_
        (apply keyword-dispatch
               '#(static:)
               gxc#gsc-ld-options__@
               _%$%args274516274665%_)))
    (define gxc#gsc-static-include-options
      (lambda (_%staticdir274510%_)
        (let ((_%user-staticdir274512%_
               (path-expand
                (path-expand
                 '"lib/static"
                 (let () (declare (not safe)) (gerbil-path))))))
          (cons '"-cc-options"
                (cons (string-append
                       '"-I "
                       _%staticdir274510%_
                       '" -I "
                       _%user-staticdir274512%_)
                      '())))))
    (define gxc#gcc-ld-options
      (lambda ()
        (let _%lp274422%_ ((_%rest274424%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-gsc-options)))
                           (_%opts274425%_ '()))
          (let* ((_%$%rest274426274446%_ _%rest274424%_)
                 (_%$%else274430274454%_ (lambda () _%opts274425%_)))
            (let ((_%$%K274440274497%_
                   (lambda (_%rest274495%_)
                     (_%lp274422%_ _%rest274495%_ _%opts274425%_)))
                  (_%$%K274435274475%_
                   (lambda (_%rest274472%_ _%opt274473%_)
                     (_%lp274422%_
                      _%rest274472%_
                      (let ((__tmp276278
                             (let ((__tmp276279
                                    (let ()
                                      (declare (not safe))
                                      (string-split _%opt274473%_ '#\space))))
                               (declare (not safe))
                               (##filter gxc#not-string-empty? __tmp276279))))
                        (declare (not safe))
                        (##append _%opts274425%_ __tmp276278)))))
                  (_%$%K274432274460%_
                   (lambda (_%rest274458%_)
                     (_%lp274422%_ _%rest274458%_ _%opts274425%_))))
              (if (pair? _%$%rest274426274446%_)
                  (let ((_%$%tl274442274502%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest274426274446%_)))
                        (_%$%hd274441274500%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest274426274446%_))))
                    (if (equal? _%$%hd274441274500%_ '"-cc-options")
                        (if (pair? _%$%tl274442274502%_)
                            (let* ((_%$%tl274444274505%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%tl274442274502%_)))
                                   (_%rest274508%_ _%$%tl274444274505%_))
                              (_%$%K274440274497%_ _%rest274508%_))
                            (let ((_%rest274466%_ _%$%tl274442274502%_))
                              (_%$%K274432274460%_ _%rest274466%_)))
                        (if (equal? _%$%hd274441274500%_ '"-ld-options")
                            (if (pair? _%$%tl274442274502%_)
                                (let ((_%$%tl274439274485%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl274442274502%_)))
                                      (_%$%hd274438274483%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl274442274502%_))))
                                  (let ((_%opt274488%_ _%$%hd274438274483%_)
                                        (_%rest274490%_ _%$%tl274439274485%_))
                                    (_%$%K274435274475%_
                                     _%rest274490%_
                                     _%opt274488%_)))
                                (let ((_%rest274466%_ _%$%tl274442274502%_))
                                  (_%$%K274432274460%_ _%rest274466%_)))
                            (let ((_%rest274466%_ _%$%tl274442274502%_))
                              (_%$%K274432274460%_ _%rest274466%_)))))
                  (_%$%else274430274454%_)))))))
    (define gxc#not-string-empty?
      (lambda (_%str274419%_)
        (not (let () (declare (not safe)) (string-empty? _%str274419%_)))))
    (define gxc#gsc-compile-file
      (lambda (_%path274412%_ _%phi?274413%_)
        (let ((_%gsc-link-opts274415%_
               (gxc#gsc-link-options__% _%phi?274413%_))
              (_%gsc-cc-opts274416%_
               (gxc#gsc-cc-options__%__% '#f absent-value _%phi?274413%_))
              (_%gsc-ld-opts274417%_
               (gxc#gsc-ld-options__%__% '#f absent-value _%phi?274413%_)))
          (gxc#invoke__%
           '#f
           absent-value
           absent-value
           (gxc#gerbil-gsc)
           (let ((__tmp276280
                  (let ((__tmp276281
                         (let ((__tmp276282 (cons _%path274412%_ '())))
                           (declare (not safe))
                           (##append _%gsc-link-opts274415%_ __tmp276282))))
                    (declare (not safe))
                    (##append _%gsc-ld-opts274417%_ __tmp276281))))
             (declare (not safe))
             (##append _%gsc-cc-opts274416%_ __tmp276280))))))
    (define gxc#compile-output-file
      (lambda (_%ctx274378%_ _%n274379%_ _%ext274380%_)
        (letrec ((_%module-relative-path274382%_
                  (lambda (_%ctx274410%_)
                    (path-strip-directory
                     (let ((__tmp276283
                            (##structure-ref
                             _%ctx274410%_
                             '1
                             gx#expander-context::t
                             '#f)))
                       (declare (not safe))
                       (gxc#module-id->path-string __tmp276283)))))
                 (_%module-source-directory274383%_
                  (lambda (_%ctx274406%_)
                    (path-directory
                     (let ((_%mpath274408%_
                            (##structure-ref
                             _%ctx274406%_
                             '7
                             gx#module-context::t
                             '#f)))
                       (if (string? _%mpath274408%_)
                           _%mpath274408%_
                           (last _%mpath274408%_))))))
                 (_%section-string274384%_
                  (lambda (_%n274400%_)
                    (if (number? _%n274400%_)
                        (let ()
                          (declare (not safe))
                          (##number->string _%n274400%_))
                        (if (symbol? _%n274400%_)
                            (let ()
                              (declare (not safe))
                              (##symbol->string _%n274400%_))
                            (if (string? _%n274400%_)
                                _%n274400%_
                                (let ()
                                  (declare (not safe))
                                  (gxc#raise-compile-error
                                   '"Unexpected section"
                                   _%n274400%_)))))))
                 (_%file-name274385%_
                  (lambda (_%path274398%_)
                    (if _%n274379%_
                        (string-append
                         _%path274398%_
                         '"~"
                         (_%section-string274384%_ _%n274379%_)
                         _%ext274380%_)
                        (string-append _%path274398%_ _%ext274380%_))))
                 (_%file-path274386%_
                  (lambda ()
                    (let ((_%$e274392%_
                           (let ()
                             (declare (not safe))
                             (gxc#current-compile-output-dir))))
                      (if _%$e274392%_
                          (path-expand
                           (_%file-name274385%_
                            (let ((__tmp276284
                                   (##structure-ref
                                    _%ctx274378%_
                                    '1
                                    gx#expander-context::t
                                    '#f)))
                              (declare (not safe))
                              (gxc#module-id->path-string __tmp276284)))
                           _%$e274392%_)
                          (path-expand
                           (_%file-name274385%_
                            (_%module-relative-path274382%_ _%ctx274378%_))
                           (_%module-source-directory274383%_
                            _%ctx274378%_)))))))
          (let ((_%path274388%_ (_%file-path274386%_)))
            (let ((__tmp276285
                   (lambda ()
                     (let ((__tmp276286 (path-directory _%path274388%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp276286)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp276285))
            _%path274388%_))))
    (define gxc#compile-static-output-file
      (lambda (_%ctx274359%_)
        (letrec ((_%file-name274361%_
                  (lambda (_%id274376%_)
                    (let ((__tmp276287 (gxc#static-module-name _%id274376%_)))
                      (declare (not safe))
                      (##string-append __tmp276287 '".scm"))))
                 (_%file-path274362%_
                  (lambda ()
                    (let* ((_%file274368%_
                            (_%file-name274361%_
                             (##structure-ref
                              _%ctx274359%_
                              '1
                              gx#expander-context::t
                              '#f)))
                           (_%$e274370%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-output-dir))))
                      (if _%$e274370%_
                          (path-expand
                           _%file274368%_
                           (path-expand '"static" _%$e274370%_))
                          (path-expand _%file274368%_ '"static"))))))
          (let ((_%path274364%_ (_%file-path274362%_)))
            (let ((__tmp276288
                   (lambda ()
                     (let ((__tmp276289 (path-directory _%path274364%_)))
                       (declare (not safe))
                       (create-directory*__0 __tmp276289)))))
              (declare (not safe))
              (__with-lock gxc#+driver-mutex+ __tmp276288))
            _%path274364%_))))
    (define gxc#compile-exe-output-file
      (lambda (_%ctx274352%_ _%opts274353%_)
        (let ((_%$e274355%_
               (let ()
                 (declare (not safe))
                 (pgetq__0 'output-file: _%opts274353%_))))
          (if _%$e274355%_
              _%$e274355%_
              (path-strip-directory
               (symbol->string
                (##structure-ref
                 _%ctx274352%_
                 '1
                 gx#expander-context::t
                 '#f)))))))
    (define gxc#static-module-name
      (lambda (_%idstr274342%_)
        (if (string? _%idstr274342%_)
            (let* ((_%str274345%_
                    (let ()
                      (declare (not safe))
                      (gxc#module-id->path-string _%idstr274342%_)))
                   (_%strs274347%_
                    (let ()
                      (declare (not safe))
                      (string-split _%str274345%_ '#\/))))
              (declare (not safe))
              (string-join _%strs274347%_ '"__"))
            (if (symbol? _%idstr274342%_)
                (gxc#static-module-name
                 (let ()
                   (declare (not safe))
                   (##symbol->string _%idstr274342%_)))
                (let ()
                  (declare (not safe))
                  (error '"Bad module id" _%idstr274342%_))))))
    (define gxc#gerbil-enable-shared?
      (lambda ()
        (let ((__tmp276290
               (let ((__tmp276291 (configure-command-string)))
                 (declare (not safe))
                 (__string-split __tmp276291 '#\'))))
          (declare (not safe))
          (##member '"--enable-shared" __tmp276290))))
    (define gxc#invoke__%
      (lambda (_%@@keywords274308%_
               _%$%stdout-redirection274304274309%_
               _%$%stderr-redirection274305274310%_
               _%program274311%_
               _%args274312%_)
        (let* ((_%stdout-redirection274314%_
                (if (eq? _%$%stdout-redirection274304274309%_ absent-value)
                    '#f
                    _%$%stdout-redirection274304274309%_))
               (_%stderr-redirection274316%_
                (if (eq? _%$%stderr-redirection274305274310%_ absent-value)
                    '#f
                    _%$%stderr-redirection274305274310%_)))
          (let ((__tmp276292 (cons _%program274311%_ _%args274312%_)))
            (declare (not safe))
            (gxc#verbose '"invoke " __tmp276292))
          (let* ((_%proc274318%_
                  (open-process
                   (cons 'path:
                         (cons _%program274311%_
                               (cons 'arguments:
                                     (cons _%args274312%_
                                           (cons 'stdout-redirection:
                                                 (cons _%stdout-redirection274314%_
                                                       (cons 'stderr-redirection:
                                                             (cons _%stderr-redirection274316%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                 (_%output274323%_
                  (if (or _%stdout-redirection274314%_
                          _%stderr-redirection274316%_)
                      (read-line _%proc274318%_ '#f)
                      '#f))
                 (_%status274326%_ (process-status _%proc274318%_)))
            (let () (declare (not safe)) (##close-port _%proc274318%_))
            (if (zero? _%status274326%_)
                '#!void
                (begin
                  (display _%output274323%_)
                  (let ((__tmp276293 (cons _%program274311%_ _%args274312%_)))
                    (declare (not safe))
                    (gxc#raise-compile-error
                     '"Compilation error; process exit with nonzero status"
                     __tmp276293
                     _%status274326%_))))))))
    (define gxc#invoke__@
      (lambda (_%@@keywords274331%_ . _%args274332%_)
        (apply gxc#invoke__%
               _%@@keywords274331%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274331%_
                  'stdout-redirection:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords274331%_
                  'stderr-redirection:
                  absent-value))
               _%args274332%_)))
    (define gxc#invoke
      (lambda _%$%args274306274338%_
        (apply keyword-dispatch
               '#(stderr-redirection: stdout-redirection:)
               gxc#invoke__@
               _%$%args274306274338%_)))))
