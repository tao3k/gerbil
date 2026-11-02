;;; -*- Gerbil -*-
;;; © vyzo
;;; gerbil universal binary (aka "BACH") main function
prelude: :gerbil/core
package: gerbil
(import :gerbil/runtime
        :gerbil/expander
        :gerbil/compiler)
(include "gxi-main.ss")
(include "gxc-main.ss")

(def builtin-modules
  '(;; :gerbil/runtime
    "gerbil/runtime/gambit"
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
    "gerbil/runtime/syntax"
    "gerbil/runtime/eval"
    "gerbil/runtime/repl"
    "gerbil/runtime/loader"
    "gerbil/runtime/init"
    "gerbil/runtime"
    ;; :gerbil/expander
    "gerbil/expander/common"
    "gerbil/expander/stx"
    "gerbil/expander/core"
    "gerbil/expander/top"
    "gerbil/expander/module"
    "gerbil/expander/compile"
    "gerbil/expander/root"
    "gerbil/expander/stxcase"
    "gerbil/expander/init"
    "gerbil/expander"
    ;; :gerbil/compiler
    "gerbil/compiler/base"
    "gerbil/compiler/method"
    "gerbil/compiler/compile"
    "gerbil/compiler/optimize-base"
    "gerbil/compiler/optimize-xform"
    "gerbil/compiler/optimize-top"
    "gerbil/compiler/optimize-spec"
    "gerbil/compiler/optimize-ann"
    "gerbil/compiler/optimize-call"
    "gerbil/compiler/optimize"
    "gerbil/compiler/driver"
    "gerbil/compiler/ssxi"
    "gerbil/compiler"))

(def builtin-tool-commands
  '(("new"         "gxpkg" "new")
    ("build"       "gxpkg" "build")
    ("deps"        "gxpkg" "deps")
    ("clean"       "gxpkg" "clean")
    ("env"         "gxpkg" "env")
    ("pkg"         "gxpkg")
    ("test"        "gxtest")
    ("tags"        "gxtags")
    ("prof"        "gxprof")
    ("ensemble"    "gxensemble")
    ("httpd"       "gxhttpd")
    ("interactive" "gxi")
    ("compile"     "gxc")))

(def builtin-tool-help
  '(("new"         "gxpkg" "help" "new")
    ("build"       "gxpkg" "help" "build")
    ("deps"        "gxpkg" "help" "deps")
    ("clean"       "gxpkg" "help" "clean")
    ("env"         "gxpkg" "help" "env")
    ("pkg"         "gxpkg" "help")
    ("test"        "gxtest" "-h")
    ("tags"        "gxtags" "-h")
    ("prof"        "gxprof" "-h")
    ("ensemble"    "gxensemble" "help")
    ("httpd"       "gxhttpd" "-h")
    ("interactive" "gxi" "-h")
    ("compile"     "gxc" "-h")))

(def (print-usage! program-name)
  (displayln "Usage: " program-name " [option ...] arguments ...")
  (displayln)
  (displayln "Options: ")
  (displayln "  -h|--help                        display this help message exit")
  (displayln "  -v|--version                     display the system version and exit")
  (displayln)
  (displayln "Arguments: ")
  (displayln "  <cmd> cmd-arg ...                execute a builtin tool command")
  (displayln "  arg ...                          drop to the gerbil interpreter")
  (displayln)
  (displayln "Commands:")
  (displayln "  new                              create a new project template (gxpkg new)")
  (displayln "  build                            build a gerbil package (gxpkg build)")
  (displayln "  deps                             manage dependencies for a package (gxpkg deps)")
  (displayln "  clean                            clean build artifactacts for a package (gxpkg clean)")
  (displayln "  env                              eval a shell command in the local package environment (gxpkg env)")
  (displayln "  pkg                              invoke the gerbil package manager (gxpkg)")
  (displayln "  test                             run tests (gxtest)")
  (displayln "  tags                             create emacs tags (gxtags)")
  (displayln "  prof                             profile a dynamic executable module (gxprof)")
  (displayln "  ensemble                         invoke the gerbil actor ensemble manager (gxensemble)")
  (displayln "  httpd                            invoke the gerbil httpd (gxhttpd)")
  (displayln "  interactive                      invoke the gerbil interpreter (gxi)")
  (displayln "  compile                          invoke the gerbil compiler (gxc)")
  (displayln "  help <cmd>                       display help for a tool command")
  (displayln)
  (displayln "Try " program-name " help <cmd> for help on tool command usage" )
  (force-output))

(extern namespace: #f
  gerbil-runtime-init!)

(def (init!)
  (gerbil-runtime-init! builtin-modules))

(def (init-expander!)
  (gerbil-load-expander!)
  ;; hook ##begin -- gambit wraps it around scripts
  (eval '(define-alias ##begin begin)))

(def +current-lang+ 'gerbil/core)
(def (set-lang! lang)
  (unless (equal? +current-lang+ lang)
    (let ((top (make-top-context))
          (lang-readtable #f)
          (lang-prelude #f))
      (parameterize ((current-expander-context top))
        (case lang
          ((gerbil/core)
           (eval-syntax '(import :gerbil/core))
           (set! lang-prelude (import-module ':gerbil/core))
           (set! lang-readtable __*readtable*))
          ((gerbil/base)
           (eval-syntax '(import :gerbil/base))
           (set! lang-prelude (import-module ':gerbil/base))
           (set! lang-readtable  __*readtable*))
          ((polydactyl)
           (eval-syntax '(import :gerbil/polydactyl))
           (set! lang-prelude (import-module ':gerbil/polydactyl))
           (set! lang-readtable (eval-syntax '|gerbil/polydactyl[1]#*readtable*|)))
          (else
           (eval-syntax `(import ,lang))
           (set! lang-prelude (import-module lang))
           (let (readtable
                 (try (eval-syntax+1 '(lang-readtable))
                      (catch (e) __*readtable*)))
             (set! lang-readtable readtable)))))
      (current-expander-context top)
      (current-expander-module-prelude (make-prelude-context lang-prelude))
      (set! +current-lang+ lang)
      (##main-readtable-set! lang-readtable)
      (for-each
        (lambda (port)
          (input-port-readtable-set! port lang-readtable))
        [##stdin-port ##console-port]))))

(def (init-interactive!)
  (def (load-init! init.ss)
    ;; load interactive init
    (let (init-file (path-expand (path-expand init.ss "lib") (gerbil-home)))
      (when (file-exists? init-file)
        (eval-syntax `(include ,init-file))))
    ;; load user init if it exists
    (let (user-init-file (path-expand init.ss "~/.gerbil"))
      (when (file-exists? user-init-file)
        (eval-syntax `(include ,user-init-file)))))

  ;; TODO lang-specific init for user langs
  (case +current-lang+
    ((gerbil gerbil/core polydactyl)
     (load-init! "init.ss"))
    ((r7rs)
     (load-init! "r7rs-init.ss"))))

(def (find-runtime-symbol ctx id)
  (cond
   ((find-export-binding ctx id)
    => (lambda (bind)
         (unless (runtime-binding? bind)
           (error "export is not a runtime binding" id))
         (binding-id bind)))
   (else
    (error "module does not export symbol" (expander-context-id ctx) id))))

(def (find-export-binding ctx id)
  (cond
   ((find (match <>
            ((? module-export? xport)
            (and (eqv? (module-export-phi xport) 0)
                 (eq? (module-export-name xport) id)))
            (else #f))
          (module-context-export ctx))
    => core-resolve-module-export)
   (else #f)))

(def (runtime-tool-load-path?)
  ;; A compiled tool must not bypass a user-supplied standard-library or
  ;; expander provider. Package-private namespaces do not need the interpreter.
  (let (installed (path-normalize (path-expand "lib" (gerbil-home))))
    (andmap
     (lambda (dir)
       (or (not (file-exists? dir))
           (equal? (path-normalize dir) installed)
           (and (not (file-exists? (path-expand "std" dir)))
                (not (file-exists? (path-expand "gerbil" dir)))
                (let (prefix (core-library-package-path-prefix dir))
                  (not (and prefix
                            (or (string-prefix? "std/" prefix)
                                (string-prefix? "gerbil/" prefix))))))))
     (load-path))))

(def (compiled-tool-main tool-id)
  ;; Only the bundled package manager has a runtime-only command contract.
  ;; Source overrides and other tools retain full expander initialization.
  (and (eq? tool-id ':gerbil/tools/gxpkg)
       (runtime-tool-load-path?)
       (let* ((path (core-resolve-library-module-path tool-id))
              (installed (path-normalize
                          (path-expand "lib/gerbil/tools/gxpkg.ssi" (gerbil-home))))
              (native (__find-library-module "gerbil/tools/gxpkg")))
         (and (equal? path installed)
              native
              (not (equal? (path-extension native) ".scm"))
              (equal? (path-strip-extension native) (path-strip-extension path))
              (call-with-input-file path
                (lambda (port)
                  (def prelude #f)
                  (def exported [])
                  (def bindings [])
                  (def runtime [])
                  (def (inspect form)
                    (match form
                      (['%#begin . body] (for-each inspect body))
                      (['%#export . specs]
                       (for-each
                        (lambda (spec)
                          (match spec
                            (['spec: 0 id 'main]
                             (set! exported (cons id exported)))
                            (else (void))))
                        specs))
                      (['%#define-runtime id binding]
                       (set! bindings (cons (cons id binding) bindings)))
                      (['%#call ['%#ref 'load-module] ['%#quote name]]
                       (set! runtime (cons name runtime)))
                      (else (void))))
                  (let lp ()
                    (let (form (read port))
                      (cond
                       ((eof-object? form) (void))
                       ((eq? form prelude:)
                        (set! prelude (read port))
                        (lp))
                       (else (inspect form) (lp)))))
                  (and (eq? prelude ':gerbil/base)
                       (equal? exported '(main))
                       (equal? runtime '("gerbil/tools/gxpkg~0"))
                       (let (matches (filter (lambda (entry) (eq? (car entry) 'main)) bindings))
                         (and (pair? matches) (null? (cdr matches))
                              (symbol? (cdar matches)) (cdar matches))))))))))

(extern runtime-tool-exec)
(begin-foreign
  (namespace ("gerbil/main#" runtime-tool-exec))
  (c-declare "#include <unistd.h>\n#include <errno.h>\n#include <signal.h>\n#include <pthread.h>")
  ;; exec preserves the calling thread's signal mask and interval timers.
  ;; New Gambit setup installs its heartbeat handler before unblocking SIGALRM.
  ;; A failed exec restores the previous mask and leaves the original handler live.
  (define runtime-tool-exec
    (c-lambda (nonnull-char-string nonnull-char-string-list) int
      "sigset_t blocked, saved;
       sigemptyset(&blocked);
       sigaddset(&blocked, SIGALRM);
       int mask_error = pthread_sigmask(SIG_BLOCK, &blocked, &saved);
       if (mask_error) { ___result = mask_error; }
       else {
         execv(___arg1, ___arg2);
         int exec_error = errno;
         int restore_error = pthread_sigmask(SIG_SETMASK, &saved, 0);
         ___result = restore_error ? restore_error : exec_error;
       }")))

(def (runtime-tool-native-strings? strings)
  ;; The native char-string FFI is byte-oriented. Keep other argument/path
  ;; encodings on the original loader path rather than introducing conversion errors.
  (andmap (lambda (str)
            (let loop ((i 0))
              (or (= i (string-length str))
                  (and (< (char->integer (string-ref str i)) 128)
                       (loop (+ i 1))))))
          strings))

(def (tool-main program-name args)
  (cond
   ((equal? program-name "gxi")
    (init-expander!)
    (apply gxi-main args))
   ((equal? program-name "gxc")
    (init-expander!)
    (apply gxc-main args))
   (else
    (let* ((tool-id (string->symbol (string-append ":gerbil/tools/" program-name)))
           (runtime-main (compiled-tool-main tool-id)))
      (if runtime-main
        (begin
          ;; The managed installed product is built by the official compiler.
          ;; execv retains argv, environment and process identity at the CLI edge.
          (let (product (path-expand "lib/gerbil/tools/gxpkg" (gerbil-home)))
            (when (and (file-exists? product)
                       (runtime-tool-native-strings? (cons product args)))
              (let (errno (runtime-tool-exec product (cons product args)))
                (error "runtime command handoff failed" product errno))))
          ;; Bootstrap generations without the executable retain runtime loading.
          ;; core-eval-module initializes the prelude before the module body.
          ;; Keep that runtime edge without constructing its macro interface.
          (load-module "gerbil/base")
          (load-module "gerbil/tools/gxpkg")
          (apply (##global-var-ref (##make-global-var runtime-main)) args))
        (begin
          (init-expander!)
          (let* ((tool-module (import-module tool-id #f #t))
                 (tool-main-id (find-runtime-symbol tool-module 'main))
                 (tool-main (eval tool-main-id)))
            (apply tool-main args))))))))

(def (bach-main program-name args)
  (match args
    ([hd . rest]
     (cond
      ((member hd '("-h" "--help"))
       (print-usage! program-name))
      ((equal? "help" hd)
       (match rest
         ([cmd]
          (cond
           ((assoc cmd builtin-tool-help)
            => (lambda (help-cmd) (tool-main (cadr help-cmd) (cddr help-cmd))))
           (else
            (displayln "no help for topic " cmd)
            (print-usage! program-name))))
         (else
          (print-usage! program-name))))
      ((assoc hd builtin-tool-commands)
       => (lambda (cmd) (tool-main (cadr cmd) (append (cddr cmd) rest))))
      ((member hd '("-v" "--version" "version"))
       (displayln (gerbil-system-version-string)))
      (else
       ;; do gxi by default
       (init-expander!)
       (apply gxi-main hd rest))))
    (else
     (init-expander!)
     (gxi-main))))

(def (main)
  (init!)
  (unwind-protect
    (let* ((cmdline      (command-line))
           (program      (car cmdline))
           (program-name (path-strip-directory program))
           (args         (cdr cmdline)))
      (if (string-prefix? "gx" program-name)
        ;; a gerbil tool
        (tool-main program-name args)
        ;; our main -- process arguments and dispatch
        (bach-main program-name args)))
    (with-catch void (cut force-output (current-output-port)))
    (with-catch void (cut force-output (current-error-port)))))

(##main-set! main)
