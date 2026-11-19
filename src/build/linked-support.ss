;;; -*- Gerbil -*-
;;; Build-time support for native executables with lazy linked modules.
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

;; Admit only the installed providers selected by the normal module loader.
(def (linked-support-inputs work home)
  (let (prefix (path-expand "" (path-expand "lib" (path-normalize home))))
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

;; GSC gives these modules private Gambit references. The linker puts their
;; initializers in the executable's registry without preloading them.
(def (prepare-linked-support work home gsc gsc-options)
  (let (inputs (linked-support-inputs work home))
    (and (pair? inputs)
         (let ((generator (path-expand "generate.scm" work))
               (loader (path-expand "linked-support.scm" work)))
           (displayln "... link " (length inputs) " installed support modules")
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
           (invoke gsc [gsc-options ... "-e"
                        (string-append "(load " (object->string generator) ")")])
           (write-linked-loader loader inputs)
           (cons loader (map (lambda (input) (list-ref input 4)) inputs))))))

(def (check-linked-objects objects)
  (for-each (lambda (object)
              (when (native-load-effects? object)
                (error "linked support object has load-time native effects" object)))
            objects))
