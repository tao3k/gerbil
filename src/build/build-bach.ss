;;; -*- Gerbil -*-
;;; © vyzo
;;; script to build "BACH", the universal gerbil binary
(import :gerbil/compiler)

(def build-home
  (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))

(def default-gerbil-gsc
  (path-expand "bin/gsc" build-home))

(def (gerbil-gsc)
  (getenv "GERBIL_GSC" default-gerbil-gsc))

(def (gerbil-gcc)
  (getenv "GERBIL_GCC"
    (cond-expand
      (visualc "cl")
      (else "gcc"))))

(def gerbil-bindir
  (path-expand "bin" build-home))
(def gerbil-libdir
  (path-expand "lib" build-home))

(def gambit-libdir
  (path-expand "lib" (getenv "GERBIL_PREFIX")))

(cond-expand
 ((or freebsd netbsd)
  (def default-ld-options ["-lutil" "-lm" "-lpthread"]))
 (visualc
  (def default-ld-options ["Kernel32.Lib" "User32.Lib" "Gdi32.Lib" "WS2_32.Lib" "/subsystem:console" "/entry:WinMainCRTStartup"]))
 (else
  (def default-ld-options ["-ldl" "-lm"])))

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

(def (link-output-options output-bin)
  (cond-expand
    (visualc [(string-append "/Fe" output-bin)])
    (else ["-o" output-bin])))

(def (link-with-libgambit-options)
  (cond-expand
    (visualc ["/link" (string-append "/LIBPATH:" "\"" gerbil-libdir "\"") "libgambit.lib"])
    (else ["-L" gerbil-libdir "-lgambit"])))

(def compiler-debug-option
  (cond-expand
    (visualc "/Zi")
    (else "-g")))

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
    "gerbil/runtime/thread"
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

(def bach-main
  "gerbil/main")

(def (invoke program args (capture? #f))
  (let* ((proc (open-process [path: program arguments: args
                                    stdout-redirection: capture?
                                    stderr-redirection: #f]))
         (output (and capture? (read-line proc #f)))
         (status (process-status proc)))
    (close-port proc)
    (unless (zero? status)
      (error "process exited abnormally" program status))
    (if (eof-object? output) "" output)))

(def (link-build-support?)
  (cond-expand
   (darwin
    (and (equal? (getenv "GERBIL_BUILD_AOT_TOOLS" "no") "yes")
         (equal? (path-normalize (gerbil-home)) (path-normalize build-home))))
   (else #f)))

(def (words line)
  (filter (lambda (word) (not (string-empty? word)))
          (string-split (string-map (lambda (c) (if (char-whitespace? c) #\space c)) line)
                        #\space)))

(def (native-load-effects? file)
  (ormap
   (lambda (line)
     (match (words line)
       (["cmd" command]
        (member command '("LC_ROUTINES" "LC_ROUTINES_64" "LC_DYLD_ENVIRONMENT"
                          "LC_LOAD_WEAK_DYLIB" "LC_REEXPORT_DYLIB"
                          "LC_LOAD_UPWARD_DYLIB" "LC_LAZY_LOAD_DYLIB")))
       (["flags" flags]
        (let (value (and (string-prefix? "0x" flags)
                         (string->number (substring flags 2 (string-length flags)) 16)))
          (and value (memv (bitwise-and value #xff) '(9 10 17 18 19 20 21 22)))))
       (["sectname" name]
        (ormap (lambda (prefix) (string-prefix? prefix name))
               '("__objc" "__swift" "__interpose")))
       (else #f)))
   (string-split (invoke "/usr/bin/otool" ["-l" file] #t) #\newline)))

(def (standalone-build-support? image)
  (and (string-empty? (invoke "/usr/bin/nm" ["-uj" image] #t))
       (not (native-load-effects? image))
       (let* ((lines (string-split (invoke "/usr/bin/otool" ["-L" image] #t) #\newline))
              (dylibs (filter pair? (map words (cdr lines)))))
         (equal? (map car dylibs) '("/usr/lib/libSystem.B.dylib")))))

(def (file-digest file)
  (car (words (invoke "/usr/bin/shasum" ["-a" "256" file] #t))))

;; Select the compiled support reached by the standard build script. Keep the
;; normal dynamic images for provider overrides and for other SDK executables.
(def (build-support-inputs work)
  (eval '(import :std/build-script))
  (let (prefix (path-expand "" (path-expand "lib" (path-normalize build-home))))
    (filter-map
     (lambda (entry)
       (let* ((image (cdr entry))
              (scm (and (string? image) (string-prefix? prefix image)
                        (string-append (path-strip-extension image) ".scm")))
              (ext (and scm (path-extension image))))
         (and scm (string-prefix? ".o" ext)
              (> (string-length ext) 2)
              (string->number (substring ext 2 (string-length ext)))
              (file-exists? scm)
              (standalone-build-support? image)
              (let* ((relative (substring image (string-length prefix) (string-length image)))
                     (ref (string->symbol (string-append "gerbil-link:" relative)))
                     (c-file (path-expand (string-append relative ".c") work)))
                [relative ref (file-digest image) scm c-file]))))
     (list-sort (lambda (a b) (string<? (car a) (car b))) (list-modules)))))

(def digest-c-code #<<END
#include <CommonCrypto/CommonDigest.h>
#include <fcntl.h>
#include <stdio.h>
#include <sys/stat.h>
#include <unistd.h>
static int gerbil_linked_module_matches(const char *path, const char *hex)
{
  static const char digits[] = "0123456789abcdef";
  unsigned char buffer[32768], digest[CC_SHA256_DIGEST_LENGTH];
  CC_SHA256_CTX ctx;
  struct stat st;
  int fd = open(path, O_RDONLY | O_NONBLOCK | O_CLOEXEC);
  FILE *in;
  size_t n, i;
  int ok;
  if (fd < 0)
    return 0;
  if (fstat(fd, &st) != 0 || !S_ISREG(st.st_mode) || !(in = fdopen(fd, "rb")))
    {
      close(fd);
      return 0;
    }
  CC_SHA256_Init(&ctx);
  while ((n = fread(buffer, 1, sizeof(buffer), in)) != 0)
    CC_SHA256_Update(&ctx, buffer, (CC_LONG)n);
  ok = !ferror(in);
  fclose(in);
  if (!ok)
    return 0;
  CC_SHA256_Final(digest, &ctx);
  for (i = 0; i < sizeof(digest); i++)
    if (hex[2*i] != digits[digest[i] >> 4] ||
        hex[2*i+1] != digits[digest[i] & 15])
      return 0;
  return 1;
}
END
)

(def (write-linked-loader path inputs)
  (call-with-output-file path
    (lambda (port)
      (write `(c-declare ,digest-c-code) port) (newline port)
      (write '(define gerbil-linked-module-matches?
                (c-lambda (nonnull-UTF-8-string nonnull-UTF-8-string)
                          bool "gerbil_linked_module_matches")) port)
      (newline port)
      (write
       `(__set-load-linked-module!
         (let* ((home (or (getenv "GERBIL_HOME" #f)
                          (getenv "GERBIL_BUILD_PREFIX" #f)
                          (gerbil-home)))
                (root (with-exception-catcher
                       (lambda (_) #f)
                       (lambda () (path-normalize (path-expand "lib" home)))))
                (linked (make-table test: equal?)))
           (when root
             (for-each (lambda (row)
                         (table-set! linked (path-expand (car row) root) (cdr row)))
                       ',(map (match <> ([path ref digest _ _] [path ref digest])) inputs)))
           (lambda (path)
             (let ((row (table-ref linked path #f)))
               (and row
                    (gerbil-linked-module-matches? path (cadr row))
                    (begin (##load-module (car row)) path))))))
       port)
      (newline port))))

(def (static-file-name mod)
  (path-expand (string-append (string-join (string-split mod #\/) "__") ".scm")
               (path-expand "static" gerbil-libdir)))

(def (replace-extension path ext)
  (string-append (path-strip-extension path) ext))

(def (replace-extension-with-c path)
  (replace-extension path ".c"))

(def (replace-extension-with-object path)
  (replace-extension path compiler-obj-suffix))

;; first compile the module
(displayln "... compile " bach-main)
(compile-module (string-append bach-main ".ss")
                [output-dir: gerbil-libdir
                 optimize: (not (getenv "GERBIL_BUILD_NOOPT" #f))
                 generate-ssxi: #f
                 invoke-gsc: #f static: #t])

;; and then compile the binary
(def (link-bach work)
 (let* ((inputs (if work (build-support-inputs work) []))
       (link-support? (pair? inputs))
       (linked-c (map (lambda (input) (list-ref input 4)) inputs))
       (linked-loader (and link-support? (path-expand "build-support.scm" work)))
       (builtin-modules-scm (map static-file-name builtin-modules))
       (builtin-modules-c (map replace-extension-with-c builtin-modules-scm))
       (builtin-modules-o (map replace-extension-with-object builtin-modules-scm))
       (bach-main-scm (static-file-name bach-main))
       (bach-main-c (replace-extension-with-c bach-main-scm))
       (bach-main-o (replace-extension-with-object bach-main-scm))
       (bach-link-c (path-expand "gerbil-link.c" gerbil-libdir))
       (bach-link-o (replace-extension bach-link-c compiler-obj-suffix))
       (gambit-sharp (path-expand "_gambit#.scm" gerbil-libdir))
       (include-gambit-sharp (include-source gambit-sharp))
       (gsc-gx-macros
        (if (gerbil-runtime-smp?)
          ["-e" "(define-cond-expand-feature|enable-smp|)"
           "-e" include-gambit-sharp]
          ["-e" include-gambit-sharp]))
       (output-bin
        (path-expand "gerbil" gerbil-bindir))
       (link-output
        (if work (path-expand ".gerbil-new" work) output-bin))
       (gerbil-shared?
        (member "--enable-shared" (string-split (configure-command-string) #\')))
       (rpath-options
        (if gerbil-shared?
          [(string-append (cond-expand (darwin "-Wl,-rpath,") (else "-Wl,-rpath="))
		                  gambit-libdir)]
          [])))
  (when link-support?
    (displayln "... link " (length inputs) " installed build support modules")
    (let (generator (path-expand "generate.scm" work))
      (call-with-output-file generator
        (lambda (port)
          (for-each
           (match <>
             ([_ ref _ scm c-file]
              (create-directory* (path-directory c-file))
              (write
               `(unless (compile-file-to-target ,scm options: '((module-ref ,ref))
                                                output: ,c-file)
                  (exit 1))
               port)
              (newline port)))
           inputs)))
      (invoke (gerbil-gsc) [gsc-gx-macros ... "-e"
                            (string-append "(load " (object->string generator) ")")]))
    (write-linked-loader linked-loader inputs))
  (displayln "... link " output-bin)
  (invoke (gerbil-gsc)
          ["-link" "-o" bach-link-c
           "-track-scheme"
           gsc-gx-macros ...
           builtin-modules-scm ...
           (if link-support? ["-nopreload" linked-c ... "-preload" linked-loader] []) ...
           bach-main-scm])
  (for-each (lambda (path-c)
              (add-compile-job!
               (lambda () (invoke (gerbil-gsc) ["-obj" "-cc-options" compiler-debug-option path-c]))
               `(compile ,path-c)))
            [builtin-modules-c ... linked-c ...
             (if link-support? [(replace-extension-with-c linked-loader)] []) ...
             bach-main-c bach-link-c])
  (execute-pending-compile-jobs!)
  (for-each
   (lambda (c-file)
     (when (native-load-effects? (replace-extension-with-object c-file))
       (error "build support object has load-time native effects" c-file)))
   linked-c)
  (displayln "... build " output-bin)
  (invoke (gerbil-gcc)
          [(link-output-options link-output) ...
           rpath-options ...
           builtin-modules-o ...
           (map replace-extension-with-object linked-c) ...
           (if link-support? [(replace-extension-with-object linked-loader)] []) ...
           bach-main-o
           bach-link-o
           (link-with-libgambit-options) ...
           default-ld-options ...])
  (when work (rename-file link-output output-bin #t))
  ;; clean up
  (delete-file bach-main-scm)
  (delete-file bach-link-c)
  (delete-file bach-link-o)
  (for-each (lambda (ext)
              (let (path (path-expand (string-append bach-main ext) gerbil-libdir))
                (when (file-exists? path)
                  (delete-file path))))
            '(".ssi" ".scm" "~0.scm" ))))

(if (link-build-support?)
  (let (work (create-temporary-directory
              [path: (path-expand ".bach" gerbil-bindir) permissions: #o700]))
    (unwind-protect
      (link-bach work)
      (delete-file-or-directory work #t)))
  (link-bach #f))
