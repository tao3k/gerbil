;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler compilation methods
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../expander"
        "../runtime/error"
        "base"
        "compile"
        "optimize")
(export compile-module compile-exe
        call-with-compilation-output read-compilation-output execute-compilation-output)

(extern namespace: #f gerbil-path create-temporary-directory) ;; needed until bootstrap re-generated

(def default-gerbil-gsc
  (path-expand "gsc" (path-expand "bin" (path-expand "~~"))))
(def default-gerbil-gcc "gcc")
(def default-gerbil-ar "ar")

(def +driver-mutex+ (make-mutex 'compiler/driver))
(defrules with-driver-mutex ()
  ((_ expr)
   (with-lock +driver-mutex+ (lambda () expr))))

(def (compile-timestamp)
  (inexact->exact (floor (time->seconds (current-time)))))

(def (compile-timestamp-nanos)
  (time->seconds (current-time)))

(def scheme-file-settings '(permissions: #o644 char-encoding: UTF-8 eol-encoding: lf))

(def current-compilation-output (make-parameter #f))

(def (record-compilation-file! path)
  (alet (output (current-compilation-output))
    (let* ((path (path-expand path))
           (info (file-info path)))
      (with-lock (vector-ref output 0)
        (lambda ()
          (hash-put! (vector-ref output 1) path
            [(file-info-size info)
             (time->seconds (file-info-last-modification-time info))]))))))

;; The caller owns a fresh output file and the generated files until the
;; frontend process has exited. No Scheme context, thread or thunk is exported.
(def (call-with-compilation-output path thunk)
  (when (or (current-compilation-output) (file-exists? path)
            (file-exists? (string-append path ".tmp")))
    (error "Compilation output requires a fresh, non-nested owner" path))
  (let* ((output (vector (make-mutex 'compiler/output) (make-hash-table) []
                         (make-hash-table)))
         (result (parameterize ((current-compilation-output output)) (thunk))))
    (with-output-to-file [path: (string-append path ".tmp") permissions: #o600
                          char-encoding: 'UTF-8 eol-encoding: 'lf]
      (lambda ()
        (write ['compilation-output
                ['files (hash->list (vector-ref output 1)) ...]
                ['gsc (reverse (vector-ref output 2)) ...]])
        (newline)))
    (rename-file (string-append path ".tmp") path)
    result))

;; Validate the entire handoff before admitting any native job. These metadata
;; checks assume exclusive workspace ownership, not adversarial file integrity.
(def (read-compilation-output path)
  (let (data (call-with-input-file path
                (lambda (port)
                  (let (data (read port))
                    (unless (eof-object? (read port))
                      (error "Trailing compilation output data" path))
                    data))))
    (match data
      (['compilation-output ['files . files] ['gsc . jobs]]
       (def inputs (make-hash-table))
       (for-each
        (lambda (entry)
          (match entry
            ([file size stamp]
             (unless (and (string? file) (integer? size) (>= size 0)
                          (real? stamp) (file-exists? file))
               (error "Missing compilation product" entry))
             (let (info (file-info file))
               (unless (and (= size (file-info-size info))
                            (= stamp (time->seconds (file-info-last-modification-time info))))
                 (error "Changed compilation product" file)))
             (hash-put! inputs file #t))
            (_ (error "Invalid compilation product" entry))))
        files)
       (for-each
        (lambda (job)
          (match job
            ([program cwd input phi? args environment]
             (unless (and (string? program) (equal? program (gerbil-gsc))
                          (string? cwd) (file-exists? cwd)
                          (string? input) (hash-get inputs input)
                          (boolean? phi?) (pair? args) (list? args)
                          (andmap string? args)
                          (list? environment) (andmap string? environment)
                          (parameterize ((current-directory cwd))
                            (equal? (path-expand (last args)) input)))
               (error "Invalid native compilation job" job)))
            (_ (error "Invalid native compilation job" job))))
        jobs)
       data)
      (_ (error "Invalid compilation output" path)))))

;; The caller must join the frontend owner before calling this procedure.
;; Existing compiler workers execute only scalar native inputs after that join.
(def (execute-compilation-output path (parallel? #t))
  (match (read-compilation-output path)
    (['compilation-output _ ['gsc . jobs]]
     ;; An unknown completion retains this claim. Do not create another native
     ;; generation by replaying the same phase output after an exception.
     (let (claim (string-append path ".native"))
       (create-directory claim)
       (for-each
        (lambda (job)
          (match job
            ([program cwd input phi? args environment]
             (let (run (lambda ()
                          (parameterize ((current-directory cwd))
                            (invoke program args environment: environment))))
               (if parallel?
                 (add-compile-job! run `(compile-file ,input))
                 (run))))))
        jobs)
       (when parallel? (execute-pending-compile-jobs!))
       (call-with-output-file (path-expand "complete" claim)
         (lambda (port)
           (write ['native-compilation-complete (length jobs)] port)
           (newline port)))))))

(def (with-output-to-scheme-file path fun)
  (begin0
    (with-output-to-file [path: path . scheme-file-settings] fun)
    (record-compilation-file! path)))

(def +gerbil-gsc+ #f)
(def (gerbil-gsc)
  (unless +gerbil-gsc+
    (set! +gerbil-gsc+ (getenv "GERBIL_GSC" default-gerbil-gsc)))
  +gerbil-gsc+)

(def +gerbil-gcc+ #f)
(def (gerbil-gcc)
  (unless +gerbil-gcc+
    (set! +gerbil-gcc+ (getenv "GERBIL_GCC" default-gerbil-gcc)))
  +gerbil-gcc+)

(def +gerbil-ar+ #f)
(def (gerbil-ar)
  (unless +gerbil-ar+
    (set! +gerbil-ar+ (getenv "GERBIL_AR" default-gerbil-ar)))
  +gerbil-ar+)

(def (gerbil-rpath gerbil-libdir)
  (string-append
   (cond-expand (darwin "-Wl,-rpath,") (else "-Wl,-rpath="))
   gerbil-libdir))

(def compiler-obj-suffix
  (cond-expand
    (visualc ".obj")
    (else ".o")))

; generates an `include` form for use in a source code, gsc's -e option etc.
; It takes care of windows paths where we need to escape the path.
; e.g. (displayln (include-source "d:\\gerbil\\mycode.scm")) should print
; (include "d:\\gerbil\\mycode.scm")
; instead of:
; (include "d:\gerbil\mycode.scm")
; which results in an error:
; *** ERROR -- Invalid escaped character: #\g
(def (include-source path)
  (string-append "(include " (object->string path) ")"))

(def gerbil-runtime-modules
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

(def (delete-directory* dir)
  (delete-file-or-directory dir #t))

(def (compile-module srcpath (opts []))
  (unless (string? srcpath)
    (raise-compile-error "Invalid module source path" srcpath))

  (let* ((outdir      (pgetq output-dir: opts))
         (invoke-gsc? (pgetq invoke-gsc: opts))
         (target      (or (pgetq target: opts) 'C))
         (gsc-options (append
		       ["-target" (symbol->string target)]
		       (or (pgetq gsc-options: opts) [])))
         (keep-scm?   (pgetq keep-scm: opts))
         (verbosity   (pgetq verbose: opts))
         (optimize    (pgetq optimize: opts))
         (debug       (pgetq debug: opts))
         (gen-ssxi    (pgetq generate-ssxi: opts))
         (static?     (pgetq static: opts))
         (parallel?   (pgetq parallel: opts)))

    (when outdir
      (with-driver-mutex (create-directory* outdir)))
    (when optimize
      (with-driver-mutex (optimizer-info-init!)))
    (parameterize ((current-compile-output-dir outdir)
                   (current-compile-invoke-gsc invoke-gsc?)
                   (current-compile-gsc-options gsc-options)
                   (current-compile-keep-scm keep-scm?)
                   (current-compile-verbose verbosity)
                   (current-compile-optimize optimize)
                   (current-compile-debug debug)
                   (current-compile-generate-ssxi gen-ssxi)
                   (current-compile-static static?)
                   (current-compile-timestamp (compile-timestamp))
                   (current-compile-context `((compile-module ,srcpath)))
                   (current-compile-identifiers (make-bound-identifier-table))
                   (current-compile-parallel parallel?)
                   (current-compilation-target target)
                   (current-expander-compiling? #t))
      (verbose "compile " srcpath)
      (compile-top-module (with-driver-mutex (import-module srcpath))))))

(def (compile-exe srcpath (opts []))
  (unless (string? srcpath)
    (raise-compile-error "Invalid module source path" srcpath))

  (let* ((outdir      (pgetq output-dir: opts))
         (invoke-gsc? (pgetq invoke-gsc: opts))
         (target      (or (pgetq target: opts) 'C))
         (gsc-options (append
		       ["-target" (symbol->string target)]
		       (or (pgetq gsc-options: opts) [])))
         (keep-scm?   (pgetq keep-scm: opts))
         (verbosity   (pgetq verbose: opts))
         (debug       (pgetq debug: opts))
         (parallel?   (pgetq parallel: opts)))
    (when outdir
      (with-driver-mutex (create-directory* outdir)))
    (parameterize ((current-compile-output-dir outdir)
                   (current-compile-invoke-gsc invoke-gsc?)
                   (current-compilation-target target)
                   (current-compile-gsc-options gsc-options)
                   (current-compile-keep-scm keep-scm?)
                   (current-compile-verbose verbosity)
                   (current-compile-debug debug)
                   (current-compile-timestamp (compile-timestamp))
                   (current-compile-context `((compile-exe ,srcpath)))
                   (current-compile-identifiers (make-bound-identifier-table))
                   (current-compile-parallel parallel?)
                   (current-expander-compiling? #t))
      (verbose "compile exe " srcpath)
      (compile-executable-module (with-driver-mutex (import-module srcpath)) opts))))

(def (compile-executable-module ctx opts)
  (if (pgetq full-program-optimization: opts)
    (compile-executable-module/full-program-optimization ctx opts)
    (compile-executable-module/separate ctx opts)))

(def (compile-executable-module/separate ctx opts)
  (def (generate-stub builtin-modules)
    (let (mod-main (find-runtime-symbol ctx 'main))
      (write `(define builtin-modules (quote ,builtin-modules)))
      (write `(define (gerbil-main)
                (with-unwind-protect
                 (lambda ()
                   (gerbil-runtime-init! builtin-modules)
                   (apply ,mod-main (cdr (command-line))))
                 (lambda ()
                   (with-catch void (lambda () (force-output (current-output-port))))
                   (with-catch void (lambda () (force-output (current-error-port))))))))
      (write '(gerbil-main))
      (newline)))

  (def (get-libgerbil-ld-opts gerbil-libdir)
    (call-with-input-file (path-expand "libgerbil.ldd" gerbil-libdir) read))

  (def (userlib-module? ctx)
    (and (not (exclude-module? ctx))
         (not (libgerbil-module? ctx))))

  (def (libgerbil-module? ctx)
    (let (id-str (symbol->string (expander-context-id ctx)))
      (and (not (exclude-module? id-str))
           (or (string-prefix? "gerbil/" id-str)
               (string-prefix? "std/" id-str))
           ;; Namespace membership is not a precompiled-product receipt.
           ;; Tools and source overrides use the ordinary dependency producer
           ;; unless this installed generation already owns fresh C/object files.
           (let* ((home (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
                  (scm (find-static-module-file ctx))
                  (installed (path-expand
                              (string-append (static-module-name (expander-context-id ctx)) ".scm")
                              (path-expand "lib/static" home)))
                  (c (replace-extension-with-c scm))
                  (o (replace-extension-with-object scm)))
             (and (equal? (path-normalize scm) (path-normalize installed))
                  (file-exists? c)
                  (file-exists? o)
                  (not (file-newer? scm c))
                  (not (file-newer? c o)))))))

  (def (exclude-module? ctx-or-str)
    (let (str (if (string? ctx-or-str)
                ctx-or-str
                (symbol->string (expander-context-id ctx-or-str))))
      (string-prefix? "gerbil/core" str)))

  (def (not-file-empty? path)
    (not (file-empty? path)))

  (def (fold-libgerbil-runtime-scm gerbil-staticdir libgerbil-scm)
    (let (gerbil-runtime-scm
          (map (lambda (rtm)
                 (path-expand
                  (string-append
                   (string-join (string-split rtm #\/) "__")
                   ".scm")
                  gerbil-staticdir))
               gerbil-runtime-modules))
      (remove-duplicates (append gerbil-runtime-scm libgerbil-scm))))

  (def (remove-duplicates strlst)
    (let loop ((rest strlst) (result []))
      (match rest
        ([path . rest]
         (if (member path result)
           (loop rest result)
           (loop rest (cons path result))))
        (else (reverse! result)))))

  (def (compile-stub output-scm output-bin)
    (let* ((gerbil-home      (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
           (gerbil-libdir    (path-expand "lib" gerbil-home))
           (gerbil-staticdir (path-expand "static" gerbil-libdir))
           (deps             (find-runtime-module-deps ctx))
           (libgerbil-deps   (filter libgerbil-module? deps))
           (libgerbil-scm    (map find-static-module-file libgerbil-deps))
           (libgerbil-scm    (fold-libgerbil-runtime-scm gerbil-staticdir libgerbil-scm))
           (libgerbil-c      (map replace-extension-with-c libgerbil-scm))
           (libgerbil-o      (map replace-extension-with-object libgerbil-scm))
           (src-deps         (filter userlib-module? deps))
           (src-deps-with-scm
            (filter (lambda (entry) (not-file-empty? (cdr entry)))
                    (map (lambda (dep) (cons dep (find-static-module-file dep))) src-deps)))
           (src-deps-scm     (map cdr src-deps-with-scm))
           (src-deps-scm     (map path-expand src-deps-scm))
           (src-deps-c       (map replace-extension-with-c src-deps-scm))
           (src-deps-o       (map replace-extension-with-object src-deps-scm))
           (src-bin-scm      (find-static-module-file ctx))
           (src-bin-scm      (path-expand src-bin-scm))
           (src-bin-c        (replace-extension-with-c src-bin-scm))
           (src-bin-o        (replace-extension-with-object src-bin-scm))
           (output-bin       (path-expand output-bin))
           (output-scm       (path-expand output-scm))
           (output-c         (replace-extension-with-c output-scm))
           (output-o         (replace-extension-with-object output-scm))
           (output_-c        (replace-extension output-scm "_.c"))
           (output_-o        (replace-extension output-scm (string-append "_" compiler-obj-suffix)))
           (gsc-link-opts    (gsc-link-options))
           (gsc-cc-opts      (gsc-cc-options static: #t))
           (gsc-static-opts  (gsc-static-include-options gerbil-staticdir))
           (output-ld-opts   (gcc-ld-options))
           (libgerbil-ld-opts (get-libgerbil-ld-opts gerbil-libdir))
           (rpath (gerbil-rpath gerbil-libdir))
           (builtin-modules
            (remove-duplicates
             (append gerbil-runtime-modules
                     (map (lambda (mod) (symbol->string (expander-context-id mod)))
                          (cons ctx deps))))))

      (def (compile-obj scm-path c-path)
        (let (o-path (replace-extension c-path compiler-obj-suffix))
          (let* ((lock (string-append o-path ".lock"))
                 (locked #f)
                 (unlock
                  (lambda ()
                    (close-port locked)
                    (delete-file lock))))
            (let retry ()
              (if (file-exists? lock)
                (begin
                  (thread-sleep! .01)
                  (retry))
                (begin
                  (set! locked
                    (with-catch false (cut open-file [path: lock create: #t])))
                  (unless locked
                    (retry)))))

            (unwind-protect
              (when (or (not (file-exists? o-path))
                        (not scm-path)
                        (file-newer? scm-path o-path))
                (let (gsc-cc-opts (gsc-cc-options static: #f))
                  (invoke (gerbil-gsc)
                          ["-obj"
                           gsc-cc-opts ...
                           gsc-static-opts ...
                           c-path])))
              (unlock)))))

      (with-driver-mutex (create-directory* (path-directory output-bin)))
      (with-output-to-scheme-file output-scm
                                  (cut generate-stub builtin-modules))
      (when (current-compile-invoke-gsc)
        (let ((scm-paths [src-deps-scm ... src-bin-scm output-scm #f])
              (c-paths [src-deps-c ... src-bin-c output-c output_-c]))
          (def (prepare-link)
            ;; GSC closes every generated C input before object admission.
            (invoke (gerbil-gsc)
                    ["-link" gsc-link-opts ... libgerbil-c ...
                     src-deps-scm ... src-bin-scm output-scm]))
          (def (link-executable (objects [src-deps-o ... src-bin-o]))
            (invoke (gerbil-gcc)
                    ["-w" "-o" output-bin
                     objects ... output-o output_-o libgerbil-o ...
                     output-ld-opts ...
                     (if (gerbil-enable-shared?) [rpath] []) ...
                     "-L" gerbil-libdir "-lgambit" libgerbil-ld-opts ...])
            ;; Only a successful final link retires its temporary inputs.
            (for-each delete-file [output-c output_-c output-o output_-o]))
          (def (compile-it)
            (prepare-link)
            (for-each compile-obj scm-paths c-paths)
            (link-executable))
          (if (current-compile-parallel)
            (cond-expand
              (darwin
               ;; A closure never regenerates shared C. Matching graph products
               ;; have one registered writer; other recipes get private outputs.
               (let* ((private (create-temporary-directory
                                [path: (string-append output-scm ".objects") permissions: #o700]))
                      (modules (append src-deps-with-scm [(cons ctx src-bin-scm)]))
                      (entries
                       (map
                        (lambda (entry)
                          (let* ((mod (car entry))
                                 (scm (path-expand (cdr entry)))
                                 (runtime-c (runtime-c-for-static mod scm))
                                 (key (native-runtime-key scm))
                                 (producer (current-compile-output-job runtime-c key)))
                            (if producer
                              ;; Both object and C become readable on this handle.
                              [runtime-c (replace-extension-with-object scm) producer producer]
                              (let* ((c (path-expand (path-strip-directory
                                                      (replace-extension-with-c scm)) private))
                                     (ref (path-strip-directory (path-strip-extension scm)))
                                     (generation
                                      (add-compile-job!
                                       (lambda ()
                                         (invoke (gerbil-gsc)
                                          ["-c" "-o" c "-module-ref" ref "-linker-name" ref
                                           gsc-link-opts ... scm]))
                                       `(generate-executable-c ,c)))
                                     (object
                                      (add-compile-job! (cut compile-obj #f c)
                                        `(compile-executable-object ,c) [generation])))
                                [c (replace-extension-with-object c) generation object]))))
                        modules))
                      (preparation
                       (add-compile-job!
                        (lambda ()
                          ;; C operands are read-only GSC metadata inputs.
                          (invoke (gerbil-gsc)
                           ["-link" gsc-link-opts ... libgerbil-c ...
                            (map car entries) ... output-scm]))
                        `(prepare-executable-link ,output-bin)
                        (map caddr entries)))
                      (stub-objects
                       (map (lambda (scm c)
                              (add-compile-job! (cut compile-obj scm c)
                                `(compile-executable-object ,c) [preparation]))
                            [output-scm #f] [output-c output_-c])))
                 (add-compile-job!
                  (lambda ()
                    (link-executable (map cadr entries))
                    (delete-directory* private))
                  `(link-executable ,output-bin)
                  (append (map cadddr entries) stub-objects))))
              (else (add-compile-job! compile-it)))
            (compile-it))))))

  (let* ((output-bin (compile-exe-output-file ctx opts))
         (output-scm (string-append output-bin "__exe.scm")))
    (compile-stub output-scm output-bin)))

(def (compile-executable-module/full-program-optimization ctx opts)
  (def (reset-declare)
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
       (mostly-fixnum-flonum)))

  (def (generate-stub deps)
    (let ((mod-main (find-runtime-symbol ctx 'main))
          (reset-decl (reset-declare))
          (user-decl (user-declare)))
      (for-each
        (lambda (dep)
          (write '(##namespace ("")))
          (newline)
          (write reset-decl)
          (newline)
          (when user-decl
            (write user-decl)
            (newline))
          (write `(include ,dep))
          (newline))
        deps)
      (write `(define (gerbil-main)
                ;; we don't know what the tree shaker will throw out
                ;; so we cannot assume that compiled in modules are fully present
                ;; thus we initialize the runtime with an empty builtin module list
                ;; so that the user can actually load things if he needs to
                (gerbil-runtime-init! '())
                (apply ,mod-main (cdr (command-line)))))
      (write '(gerbil-main))
      (newline)))

  (def (user-declare)
    (let* ((gsc-opts (pgetq gsc-options: opts))
           (gsc-prelude (and gsc-opts (member "-prelude" gsc-opts)))
           (gsc-prelude
            (and gsc-prelude
                 (read (open-input-string (cadr gsc-prelude))))))
      (let lp ((rest [gsc-prelude]) (user-decls []))
        (match rest
          ([expr . rest]
           (match expr
             (['declare . decls]
              (lp rest (foldl cons user-decls decls)))
             (['begin . exprs]
              (lp (append exprs rest) user-decls))
             (else
              (lp rest user-decls))))
          (else
           (if (null? user-decls)
             #f
             (cons 'declare (reverse user-decls))))))))

  (def (compile-stub output-scm output-bin)
    (let* ((gerbil-home (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
           (gerbil-libdir (path-expand "lib" gerbil-home))
           (runtime (map find-static-module-file gerbil-runtime-modules))
           (gambit-sharp (path-expand "lib/_gambit#.scm" gerbil-home))
           (include-gambit-sharp (include-source gambit-sharp))
           (bin-scm (find-static-module-file ctx))
           (deps (find-runtime-module-deps ctx))
           (deps (map find-static-module-file deps))
           (deps (filter (? (not file-empty?)) deps))
           (deps (filter (lambda (f) (not (member f runtime))) deps))
           (output-base (string-append (path-strip-extension output-scm)))
           (output-c (string-append output-base ".c"))
           (output-o (string-append output-base compiler-obj-suffix))
           (output-c_ (string-append output-base "_.c"))
           (output-o_ (string-append output-base (string-append "_" compiler-obj-suffix)))
           (gsc-link-opts (gsc-link-options))
           (gsc-cc-opts (gsc-cc-options static: #t))
           (gsc-static-opts (gsc-static-include-options (path-expand "static" gerbil-libdir)))
           (output-ld-opts (gcc-ld-options))
           (gsc-gx-macros
            (if (gerbil-runtime-smp?)
              ["-e" "(define-cond-expand-feature|enable-smp|)"
               "-e" include-gambit-sharp]
              ["-e" include-gambit-sharp]))
           (gsc-link-opts
            (append gsc-link-opts gsc-gx-macros))
           (rpath
            (gerbil-rpath gerbil-libdir))
           (default-ld-options
             (cond-expand
               ((or freebsd netbsd) ["-lutil" "-lm"])
               (else ["-ldl" "-lm"]))))
      (with-driver-mutex (create-directory* (path-directory output-bin)))
      (with-output-to-scheme-file output-scm
        (cut generate-stub [runtime ... deps ... bin-scm]))
      (when (current-compile-invoke-gsc)
        (let (compile-it
              (lambda ()
                (invoke (gerbil-gsc)
                        ["-link" "-o" output-c_ gsc-link-opts ... output-scm])
                (invoke (gerbil-gsc)
                        ["-obj" gsc-cc-opts ... gsc-static-opts ...
                         output-c output-c_])
                (invoke (gerbil-gcc)
                        ["-w" "-o" output-bin
                         output-o output-o_ output-ld-opts ...
                         (if (gerbil-enable-shared?) [rpath] []) ...
                         "-L" gerbil-libdir "-lgambit"
                         default-ld-options ...])))
          (if (current-compile-parallel)
            (add-compile-job! compile-it)
            (compile-it))))))

  (let* ((output-bin (compile-exe-output-file ctx opts))
         (output-scm (string-append output-bin "__exe.scm")))
    (compile-stub output-scm output-bin)))

(def (find-export-binding ctx id)
  (cond
   ((find (match <>
            ((module-export _ _ 0 (eq? id)) #t)
            (else #f))
          (module-context-export ctx))
    => core-resolve-module-export)
   (else #f)))

(def (find-runtime-symbol ctx id)
  (cond
   ((find-export-binding ctx id)
    => (lambda (bind)
         (unless (runtime-binding? bind)
           (raise-compile-error "export is not a runtime binding" id))
         (binding-id bind)))
   (else
    (raise-compile-error "module does not export symbol"
                         (expander-context-id ctx) id))))

(def (find-runtime-module-deps ctx)
  (def ht (make-hash-table-eq))

  (def (import-set-template in phi)
    (let ((iphi (fx+ phi (import-set-phi in)))
          (imports (module-context-import (import-set-source in))))
      (let lp ((rest imports) (r []))
        (match rest
          ([in . rest]
           (cond
            ((module-context? in)
             (if (fxzero? iphi)
               (lp rest (cons in r))
               (lp rest r)))
            ((module-import? in)
             (let (iphi (fx+ phi (module-import-phi in)))
               (if (fxzero? iphi)
                 (lp rest (cons (module-export-context (module-import-source in)) r))
                 (lp rest r))))
            ((import-set? in)
             (let (xphi (fx+ iphi (import-set-phi in)))
               (cond
                ((fxzero? xphi)
                 (lp rest (cons (import-set-source in) r)))
                ((fxpositive? xphi)
                 (lp rest (foldl cons r (import-set-template in iphi))))
                (else
                 (lp rest r)))))
            (else
             (lp rest r))))
          (else r)))))

  (def (find-deps rest deps)
    (match rest
      ([hd . rest]
       (cond
        ((module-context? hd)
         (let ((id (expander-context-id hd))
               (imports (module-context-import hd)))
           (cond
            ((hash-get ht id)
             (find-deps rest deps))
            ((core-context-prelude hd)
             => (lambda (pre)
                  (let (xdeps (find-deps (cons pre imports) deps))
                    (hash-put! ht id hd)
                    (find-deps rest (cons hd xdeps)))))
            (else
             (let (xdeps (find-deps imports deps))
               (hash-put! ht id hd)
               (find-deps rest (cons hd xdeps)))))))
        ((prelude-context? hd)
         (let (id (expander-context-id hd))
           (cond
            ((hash-get ht id)
             (find-deps rest deps))
            (else
             (let (xdeps (find-deps (prelude-context-import hd) deps))
               (if (hash-get ht id)     ; imports picked up the module
                 (find-deps rest xdeps)
                 (begin
                   (hash-put! ht id hd)
                   (find-deps rest (cons hd xdeps)))))))))
        ((module-import? hd)
         (if (fxzero? (module-import-phi hd))
           (find-deps (cons (module-import-source hd) rest) deps)
           (find-deps rest deps)))
        ((module-export? hd)
         (find-deps (cons (module-export-context hd) rest) deps))
        ((import-set? hd)
         (cond
          ((fxzero? (import-set-phi hd))
           (find-deps (cons (import-set-source hd) rest) deps))
          ((fxpositive? (import-set-phi hd))
           (let (xdeps (import-set-template hd 0))
             (find-deps (foldl cons rest xdeps) deps)))
          (else
           (find-deps rest deps))))
        (else
         (error "Unexpected module import" hd))))
      (else deps)))

  (reverse
   (filter
    expander-context-id
    (find-deps
     (cond
      ((core-context-prelude ctx)
       => (lambda (pre) (cons pre (module-context-import ctx))))
      (else (module-context-import ctx)))
     []))))

(def (find-static-module-file ctx)
  (let* ((context-id
          (if (module-context? ctx)
            (expander-context-id ctx)
            (string->symbol ctx)))
         (scm (string-append (static-module-name context-id) ".scm"))
         (dirs (load-path))
         (dirs
          (let (user-libpath (getenv "GERBIL_PATH" #f))
            ;; this might have changed if we programmatically set it
            ;; can happen in tests
            (if user-libpath
              (let (user-libpath (path-expand "lib" user-libpath))
                (if (member user-libpath dirs)
                  dirs
                  (cons user-libpath dirs)))
              dirs)))
         (dirs
          (cond
           ((current-compile-output-dir)
            => (cut cons <> dirs))
           (else dirs)))
         (dirs (map (cut path-expand "static" <>) dirs)))
    (let lp ((rest dirs))
      (match rest
        ([dir . rest]
         (let (path (path-expand scm dir))
           (if (file-exists? path)
             path
             (lp rest))))
        (else
         (raise-compile-error "cannot find static module" (expander-context-id ctx) scm))))))

(def (file-empty? path)
  (zero? (file-info-size (file-info path #t))))

(def (compile-top-module ctx)
  (parameterize ((current-expander-context ctx)
                 (current-expander-phi 0)
                 (current-expander-marks [])
                 (current-compile-symbol-table
                  (make-symbol-table))
                 (current-compile-runtime-sections
                  (make-hash-table-eq))
                 (current-compile-runtime-names
                  (make-hash-table)))
    (verbose "compile " (expander-context-id ctx))
    (when (current-compile-optimize)
      (with-driver-mutex (optimize! ctx)))
    (collect-bindings ctx)

    (compile-runtime-code ctx)
    (compile-meta-code ctx)

    (when (and (current-compile-optimize)
               (current-compile-generate-ssxi))
      (compile-ssxi-code ctx))))

(def (collect-bindings ctx)
  (apply-collect-bindings
   (module-context-code ctx)))

(def (compile-runtime-code ctx)
  (def (compile1 ctx)
    (let* ((code (module-context-code ctx))
           (rtm  (let (idstr (module-id->path-string (expander-context-id ctx)))
                   (string-append idstr "~0")))
           (rtc? (apply-find-runtime-code code)))
      (when rtc?
        (hash-put! (current-compile-runtime-sections) ctx rtm))
      (generate-runtime-code ctx code (and rtc? rtm))))

  (def (context-timestamp ctx)
    (string->symbol
     (string-append (symbol->string (expander-context-id ctx))
                    "::timestamp")))

  (def (generate-runtime-code ctx code rtm)
    (let* ((runtime-code? (and rtm #t))
           (lifts (box []))
           (runtime-code
            (and runtime-code?
                 (parameterize ((current-expander-context ctx)
                                (current-expander-phi 0)
                                (current-compile-lift lifts)
                                (current-compile-marks (make-hash-table-eq)))
                   (apply-generate-runtime code))))
           (runtime-code
            (and runtime-code?
                 (if (null? (unbox lifts))
                   runtime-code
                   ['begin (reverse (unbox lifts)) ... runtime-code])))
           (runtime-code
            (and runtime-code?
                 ['begin `(define ,(context-timestamp ctx) ,(current-compile-timestamp))
                         runtime-code]))
           (loader-code
            (parameterize ((current-expander-context ctx))
              (apply-generate-loader code)))
           (loader-code
            ['begin loader-code (if runtime-code? ['load-module rtm] '(begin))])
           (scm0 (compile-output-file ctx 0 ".scm"))
           (scmrt (compile-output-file ctx #f ".scm"))
           (scms (compile-static-output-file ctx)))
      (when runtime-code?
        (compile-scm-file scm0 runtime-code #f scms))
      (parameterize ((current-compile-gsc-options #f))
        (compile-scm-file scmrt loader-code))
      (when (file-exists? scms)
        (delete-file scms))
      (if runtime-code?
        (copy-file scm0 scms)
        (call-with-output-file scms void))
      (record-compilation-file! scms)))

  (let (all-modules (cons ctx (lift-nested-modules ctx)))
    (for-each
      (lambda (ctx)
        ;; declarations are module scoped and are not inherited by nested modules
        (parameterize ((current-compile-decls []))
          (compile1 ctx)))
      all-modules)))

(def (compile-meta-code ctx)
  (def (compile-ssi code)
    (let* ((path (compile-output-file ctx #f ".ssi"))
           (prelude
            (let (super (phi-context-super ctx))
              (cond
               ((expander-context-id super) => (cut make-symbol ":" <>))
               (else ':<root>))))
           (ns (module-context-ns ctx))
           (idstr (symbol->string (expander-context-id ctx)))
           (pkg
            (cond
             ((string-rindex idstr #\/)
              => (lambda (x) (string->symbol (substring idstr 0 x))))
             (else #f)))
           (rt (hash-get (current-compile-runtime-sections) ctx)))
      (verbose "compile " path)
      (with-output-to-scheme-file path
        (lambda ()
          (displayln "prelude:" " " prelude)
          (when pkg (displayln "package:" " " pkg))
          (displayln "namespace:" " " ns)
          (newline)
          (pretty-print code)
          (when rt
            (pretty-print
             ['%#call ['%#ref 'load-module] ['%#quote rt]]))))))

  (def (compile-phi part)
    (match part
      ([phi-ctx phi n code]
       (let (code
             (parameterize ((current-expander-context phi-ctx)
                            (current-expander-phi phi))
               (generate-runtime-phi code)))
         (compile-scm-file (compile-output-file ctx n ".scm") code #t)))))

  (let ((values ssi-code phi-code)
        (generate-meta-code ctx))
    (compile-ssi ssi-code)
    (for-each compile-phi phi-code)))

(def (compile-ssxi-code ctx)
  (let* ((path (compile-output-file ctx #f ".ssxi.ss"))
         (code (apply-generate-ssxi (module-context-code ctx)))
         (idstr (symbol->string (expander-context-id ctx)))
         (pkg
          (cond
           ((string-rindex idstr #\/)
            => (lambda (x) (string->symbol (substring idstr 0 x))))
           (else #f))))

    (verbose "compile " path)
    (with-output-to-scheme-file path
      (lambda ()
        (displayln "prelude: :gerbil/compiler/ssxi")
        (when pkg (displayln "package: " pkg))
        (newline)
        (pretty-print code)))))

(def (generate-meta-code ctx)
  ;; => ssi-code [[phi-ctx phi n phi-code] ...]
  (let* ((state (make-meta-state ctx))
         (ssi-code (apply-generate-meta (module-context-code ctx) state: state)))
    (values ssi-code (meta-state-end! state))))

(def (generate-runtime-phi stx)
  (let (lifts (box []))
    (parameterize ((current-compile-lift lifts)
                   (current-compile-marks (make-hash-table-eq)))
      (let (code (apply-generate-runtime-phi stx))
        (if (null? (unbox lifts)) code
            ['begin (reverse (unbox lifts)) ... code])))))

(def (lift-nested-modules ctx)
  (let (modules (box []))
    (apply-lift-modules (module-context-code ctx) modules: modules)
    (reverse (unbox modules))))

;;; utilities
(def (compile-scm-file path code (phi? #f) (static-path #f))
  (verbose "compile " path)
  (with-output-to-scheme-file path
    (lambda ()
      (pretty-print
       `(declare
          (block)
          (standard-bindings)
          (extended-bindings)
          ,@(if phi? '((inlining-limit 200)) '())))
      ;; Keep small compilation-support units in their configured host mode.
      ;; Gambit's existing header selects procedure hosts only above this
      ;; finite limit. This is metadata, not an extra Scheme runtime action.
      (cond-expand
        (darwin
         (when (and phi? (eq? (current-compilation-target) 'C))
           (pretty-print '(##meta-info cc-options "-D___SINGLE_HOST_LIMIT=8192"))))
        (else (void)))
      (pretty-print code)))
  (cond
   ((current-compilation-output)
    => (lambda (output)
         (let* ((input (path-expand path))
                (job [(string-copy (gerbil-gsc)) (string-copy (current-directory)) input phi?
                      (map string-copy (gsc-compile-file-arguments path phi?))
                      (map (lambda (entry) (string-append (car entry) "=" (cdr entry)))
                        (get-environment-variables))]))
           (with-lock (vector-ref output 0)
             (lambda ()
               (when (hash-get (vector-ref output 3) input)
                 (error "Duplicate native compilation input" input))
               (hash-put! (vector-ref output 3) input #t)
               (vector-set! output 2 (cons job (vector-ref output 2))))))))
   ((current-compile-invoke-gsc)
    (let* ((reuse? (cond-expand
                    (darwin (and static-path (current-compile-static)
                                 (eq? (current-compilation-target) 'C)
                                 (not (gerbil-toolchain-static-path? static-path))))
                    (else #f)))
           (compile-it (lambda ()
                         (if reuse?
                           (gsc-compile-runtime-product path static-path)
                           (gsc-compile-file path phi?)))))
      (if (current-compile-parallel)
        (if reuse?
          (add-compile-output-job!
           [(replace-extension-with-c path)
            (replace-extension-with-c static-path)
            (replace-extension-with-object static-path)
            (replace-extension path ".o1")]
           (native-runtime-key static-path) compile-it `(compile-file ,path))
          (add-compile-job! compile-it `(compile-file ,path)))
        (compile-it))))))

(def (gsc-link-options (phi? #f))
  (let lp ((rest (current-compile-gsc-options)) (opts []))
    (match rest
      (["-cc-options" _ . rest]
       (lp rest opts))
      (["-ld-options" _ . rest]
       (lp rest opts))
      ([opt . rest]
       (lp rest (cons opt opts)))
      (else
       (if (current-compile-debug)
         ["-debug-source" "-track-scheme" (reverse opts) ...]
         (reverse opts))))))

(def (gsc-cc-options (phi? #f) static: (static? #f))
  (if phi?
    (if (current-compile-debug)
      ["-cc-options" "-g"]
      [])
    (let lp ((rest (current-compile-gsc-options)) (opts []))
      (match rest
        (["-cc-options" (and opt "-Bstatic") . rest]
         (if static?
           (lp rest (cons* opt "-cc-options" opts))
           (lp rest opts)))
        (["-cc-options" opt . rest]
         (lp rest (cons* opt "-cc-options" opts)))
        (["-ld-options" _ . rest]
         (lp rest opts))
        ([_ . rest]
         (lp rest opts))
        (else
         (if (current-compile-debug)
           ["-cc-options" "-g" (reverse! opts) ...]
           (reverse! opts)))))))

(def (gsc-ld-options (phi? #f) static: (static? #f))
  (if phi?
    []
    (let lp ((rest (current-compile-gsc-options)) (opts []))
      (match rest
        (["-ld-options" (and opt "-static") . rest]
         (if static?
           (lp rest (cons* opt "-ld-options" opts))
           (lp rest opts)))
        (["-ld-options" opt . rest]
         (lp rest (cons* opt "-ld-options" opts)))
        (["-cc-options" _ . rest]
         (lp rest opts))
        ([_ . rest]
         (lp rest opts))
        (else
         (reverse! opts))))))

(def (gsc-static-include-options staticdir)
  (let (user-staticdir
        (path-expand
            (path-expand "lib/static" (gerbil-path))))
    ["-cc-options" (string-append "-I " staticdir " -I "  user-staticdir)]))

(def (gcc-ld-options)
    (let lp ((rest (current-compile-gsc-options)) (opts []))
      (match rest
        (["-cc-options" _ . rest]
         (lp rest opts))
        (["-ld-options" opt . rest]
         (lp rest
             (append opts (filter not-string-empty? (string-split opt #\space)))))
        ([_ . rest]
         (lp rest opts))
        (else opts))))

(def (not-string-empty? str)
  (not (string-empty? str)))

(def (replace-extension path ext)
  (string-append (path-strip-extension path) ext))

(def (replace-extension-with-c path)
  (replace-extension path ".c"))

(def (replace-extension-with-object path)
  (replace-extension path compiler-obj-suffix))

(def (runtime-c-for-static ctx static-scm)
  (path-expand
   (string-append (module-id->path-string (expander-context-id ctx)) "~0.c")
   (path-normalize (path-expand ".." (path-directory static-scm)))))

(def (gerbil-toolchain-static-path? path)
  (string-prefix?
   (string-append (path-expand "lib/static"
                    (getenv "GERBIL_BUILD_PREFIX" (gerbil-home))) "/")
   (path-expand path)))

;; Graph-local equivalence only. The owner pins tools and source bytes; no
;; timestamp-based cross-build reuse is inferred from this registered key.
(def (native-runtime-key static-path)
  (object->string
   [(path-expand static-path) (gerbil-gsc) (gerbil-gcc) (current-directory)
    (gsc-link-options) (gsc-cc-options) (gsc-ld-options) (gcc-ld-options)
    (get-environment-variables)]))

;; Gambit's linker identifier spelling, also used by the existing Bazel0007
;; dynamic/static ABI alias. The public runtime entry keeps its .o1 identity.
(def (c-linker-id name)
  (call-with-output-string
   (lambda (output)
     (string-for-each
      (lambda (character)
        (cond
         ((char=? character #\_) (display "__" output))
         ((let (code (char->integer character))
            (or (and (>= code 65) (<= code 90))
                (and (>= code 97) (<= code 122))
                (and (>= code 48) (<= code 57))))
          (write-char character output))
         (else
          (display #\_ output)
          (display (number->string (char->integer character) 16) output)
          (display #\_ output)))) name))))

(def (gsc-compile-runtime-product path static-path)
  (let* ((runtime-c (replace-extension-with-c path))
         (static-c (replace-extension-with-c static-path))
         (static-o (replace-extension-with-object static-path))
         (dynamic-o (replace-extension path ".o1"))
         (ref (path-strip-directory (path-strip-extension static-path)))
         (alias-option
          (string-append "-Wl,-alias,____LNK_" (c-linker-id ref)
                         ",____LNK_" (c-linker-id (path-strip-directory dynamic-o)))))
    (invoke (gerbil-gsc)
     ["-c" "-o" runtime-c "-module-ref" ref "-linker-name" ref
      (gsc-link-options) ... path])
    (when (file-exists? static-c) (delete-file static-c))
    (copy-file runtime-c static-c)
    (invoke (gerbil-gsc)
     ["-obj" "-o" static-o (gsc-cc-options) ...
      "-cc-options" "-D___DYNAMIC -fPIC" static-c])
    (invoke "env"
     [(string-append "GAMBITDIR_INCLUDE="
        (cdr (assoc "GAMBITDIR_INCLUDE" (##shell-install-dirs '("include")))))
      (string-append "BUILD_DYN_OUTPUT_FILENAME_PARAM=" dynamic-o)
      (string-append "BUILD_DYN_INPUT_FILENAMES_PARAM=" static-o)
      (string-append "BUILD_DYN_META_INFO_FILE_PARAM=" runtime-c)
      (string-append "BUILD_DYN_LD_OPTIONS_PARAM="
        (string-join (append (gcc-ld-options) [alias-option]) "\n"))
      (path-expand "gambuild-C" (path-directory (gerbil-gsc))) "dyn"])
    (unless (andmap file-exists? [runtime-c static-c static-o dynamic-o])
      (error "Incomplete dynamic/static compiler product" path static-path))))

(def (gsc-compile-file-arguments path phi?)
  (let ((gsc-link-opts (gsc-link-options phi?))
        (gsc-cc-opts (gsc-cc-options phi?))
        (gsc-ld-opts (gsc-ld-options phi?)))
    [gsc-cc-opts ... gsc-ld-opts ... gsc-link-opts ... path]))

(def (gsc-compile-file path phi?)
  (invoke (gerbil-gsc) (gsc-compile-file-arguments path phi?)))

(def (compile-output-file ctx n ext)
  (def (module-relative-path ctx)
    (path-strip-directory (module-id->path-string (expander-context-id ctx))))

  (def (module-source-directory ctx)
    (path-directory
     (let (mpath (module-context-path ctx))
       (if (string? mpath) mpath (last mpath)))))

  (def (section-string n)
    (cond
     ((number? n) (number->string n))
     ((symbol? n) (symbol->string n))
     ((string? n) n)
     (else
      (raise-compile-error "Unexpected section" n))))

  (def (file-name path)
    (if n
      (string-append path "~" (section-string n) ext)
      (string-append path ext)))

  (def (file-path)
    (cond
     ((current-compile-output-dir)
      => (lambda (outdir)
           (path-expand
            (file-name (module-id->path-string (expander-context-id ctx)))
            outdir)))
     (else
      (path-expand
       (file-name (module-relative-path ctx))
       (module-source-directory ctx)))))

  (let (path (file-path))
    (with-driver-mutex (create-directory* (path-directory path)))
    path))

(def (compile-static-output-file ctx)
  (def (file-name id)
    (string-append (static-module-name id) ".scm"))

  (def (file-path)
    (let (file (file-name (expander-context-id ctx)))
      (cond
       ((current-compile-output-dir)
        => (lambda (outdir)
             (path-expand file (path-expand "static" outdir))))
       (else
        (path-expand file "static")))))

  (let (path (file-path))
    (with-driver-mutex (create-directory* (path-directory path)))
    path))

(def (compile-exe-output-file ctx opts)
  (cond
   ((pgetq output-file: opts))
   (else
    (path-strip-directory (symbol->string (expander-context-id ctx))))))

(def (static-module-name idstr)
  (cond
   ((string? idstr)
    (let* ((str (module-id->path-string idstr))
           (strs (string-split str #\/)))
      (string-join strs "__")))
   ((symbol? idstr)
    (static-module-name (symbol->string idstr)))
   (else
    (error "Bad module id" idstr))))

(def (gerbil-enable-shared?)
  (member "--enable-shared" (string-split (configure-command-string) #\')))

(def (invoke program args
             stdout-redirection: (stdout-redirection #f)
             stderr-redirection: (stderr-redirection #f)
             environment: (environment #f))
  (verbose "invoke " [program . args])
  (let* ((proc (open-process [path: program arguments: args
                                    (if environment [environment: environment] []) ...
                                    stdout-redirection: stdout-redirection
                                    stderr-redirection: stderr-redirection]))
         (output (and (or stdout-redirection stderr-redirection)
                      (read-line proc #f))))
    (let (status (process-status proc))
      (close-port proc)
      (unless (zero? status)
        (display output)
        (raise-compile-error "Compilation error; process exit with nonzero status"
                             [program . args]
                             status)))))
