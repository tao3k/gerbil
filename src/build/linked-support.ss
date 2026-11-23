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

(def (native-support-object-options gsc object-options)
  (if (getenv "GERBIL_BUILD_DEBUG" #f)
    object-options
    (with-exception-catcher
     (lambda (_) object-options)
     (lambda ()
       (let (driver (path-expand "gambuild-C" (path-directory gsc)))
         (match (words (invoke driver ["C_COMPILER"] #t))
           ([compiler]
            (let (proc
                  (open-process
                   [path: compiler
                    arguments: ["-Werror" "-x" "c" "-fsyntax-only"
                                "-g" "-fvar-tracking-assignments" "/dev/null"]
                    stdin-redirection: #f stdout-redirection: #t stderr-redirection: #t]))
              (unwind-protect
                (begin
                  (read-line proc #f)
                  ;; Keep line information and avoid GCC's expensive assignment annotations.
                  (if (zero? (process-status proc))
                    ["-cc-options" "-g -fno-var-tracking-assignments"]
                    object-options))
                (close-port proc))))
           (else object-options)))))))

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

(def (file-digests files)
  (let* ((output (invoke "/usr/bin/shasum" ["-a" "256" "--" files ...] #t))
         (lines (filter (lambda (line) (not (string-empty? line)))
                        (string-split output #\newline))))
    (unless (= (length files) (length lines))
      (error "Unexpected number of SHA-256 results"))
    (map (lambda (line)
           ;; shasum prefixes a backslash when the filename needs escaping.
           (let* ((word (car (words line)))
                  (digest (if (string-prefix? "\\" word)
                            (substring word 1 (string-length word))
                            word)))
             (unless (and (= (string-length digest) 64) (string->number digest 16))
               (error "Invalid SHA-256 result" word))
             digest))
         lines)))

(def (file-digest file)
  (car (file-digests [file])))

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

(def (linked-support-root home)
  (path-expand "" (path-normalize (path-expand "lib" home))))

(def (linked-support-input prefix work image (reference-prefix "gerbil-link:"))
  (and (string? image)
       (string-prefix? prefix image)
       (let* ((ext (path-extension image))
              (scm (string-append (path-strip-extension image) ".scm")))
         (and (string-prefix? ".o" ext)
              (> (string-length ext) 2)
              (string->number (substring ext 2 (string-length ext)))
              (file-exists? scm)
              (standalone-build-support? image)
              (let* ((relative (substring image (string-length prefix) (string-length image)))
                     (ref (string->symbol (string-append reference-prefix relative)))
                     (c-file (path-expand (string-append relative ".c") work)))
                [relative ref (file-digest image) scm c-file])))))

;; The package compiler can emit a relocatable runtime object and link its
;; dynamic image from the same object. Prove that relationship before using
;; the object in a different executable. Other package phases have no such
;; companion and are generated from their lowered Scheme in the tools build.
(def (reuse-linked-runtime-input work toolchain-lib package-lib gsc input)
  (define (verify relative ref digest lowered scheme runtime-c c-file object)
    (with-exception-catcher
     (lambda (_) #f)
     (lambda ()
       (let* ((files [lowered scheme runtime-c c-file object])
              (before (file-digests files)))
         (match before
           ([source static emitted companion product]
            (and (equal? source static)
                 (equal? emitted companion)
                 (not (native-load-effects? object))
                 (let* ((image (path-expand relative work))
                        (staged-c (string-append image ".c"))
                        (staged-object (linked-support-object staged-c)))
                   (create-directory* (path-directory image))
                   (gxc#link-runtime-product gsc runtime-c object image ref [])
                   (and (equal? digest (file-digest image))
                        (equal? before (file-digests files))
                        (begin
                          (copy-file c-file staged-c)
                          (copy-file object staged-object)
                          (and (equal? [companion product] (file-digests [staged-c staged-object]))
                               [relative (string->symbol ref) digest lowered staged-c])))))))))))
  (match input
    ([relative _ digest lowered _]
     (def suffix "~0.o1")
     (and (string-suffix? suffix relative)
          (let* ((module-path (substring relative 0 (- (string-length relative)
                                                      (string-length suffix))))
                 (ref (string-join (string-split module-path #\/) "__"))
                 (name (string-append "static/" ref))
                 (scheme (path-expand (string-append name ".scm") package-lib))
                 (c-file (path-expand (string-append name ".c") package-lib))
                 (object (linked-support-object c-file))
                 (runtime-c (string-append (path-strip-extension lowered) ".c")))
            (and (not (file-exists? (path-expand (string-append name ".scm") toolchain-lib)))
                 (andmap file-exists? [scheme runtime-c c-file object])
                 (verify relative ref digest lowered scheme runtime-c c-file object)))))))

(def (write-linked-loader path inputs (package-inputs []))
  (def (registry rows)
    (map (match <> ([path ref digest _ _] [path ref digest])) rows))
  (call-with-output-file path
    (lambda (port)
      (write `(c-declare ,digest-c-code) port) (newline port)
      (write '(define gerbil-linked-module-matches?
                (c-lambda (nonnull-UTF-8-string nonnull-UTF-8-string)
                          bool "gerbil_linked_module_matches")) port)
      (newline port)
      (write
       `(__set-load-linked-module!
         (let ((linked (make-table test: equal?)))
           (define (register home rows)
             (let ((root (with-exception-catcher
                           (lambda (_) #f)
                           (lambda () (path-normalize (path-expand "lib" home))))))
               (when root
                 (for-each (lambda (row)
                             (table-set! linked (path-expand (car row) root) (cdr row)))
                           rows))))
           (register (or (getenv "GERBIL_HOME" #f)
                         (getenv "GERBIL_BUILD_PREFIX" #f)
                         (gerbil-home))
                     ',(registry inputs))
           ,@(if (pair? package-inputs)
               [`(register (gerbil-path) ',(registry package-inputs))]
               [])
           (lambda (path)
             (let ((row (table-ref linked path #f)))
               (and row
                    (gerbil-linked-module-matches? path (cadr row))
                    (begin (##load-module (car row)) path))))))
       port)
      (newline port))))

(def (generate-linked-support-c gsc work groups options)
  (def (write-generator name group)
    (let (generator (path-expand name work))
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
           group)))
      generator))

  (def (compile-group generator)
    (invoke gsc [options ... "-e"
                          (string-append "(load " (object->string generator) ")")]))

  (let submit ((rest groups) (index 0))
    (unless (null? rest)
      (let* ((name (if (zero? index) "generate.scm"
                       (string-append "generate-" (number->string index) ".scm")))
             (generator (write-generator name (car rest))))
        (add-compile-job! (cut compile-group generator) `(generate-c ,generator))
        (submit (cdr rest) (+ index 1)))))
  (execute-pending-compile-jobs!))

(def (support-file-digests files)
  (if (null? files)
    []
    (let-values (((group rest) (split-at files (min (length files) 32))))
      (append (file-digests group) (support-file-digests rest)))))

(def (linked-support-object c-file)
  (string-append (path-strip-extension c-file) ".o"))

(def (linked-support-recipe home gsc gsc-options object-options)
  (with-exception-catcher
   (lambda (_) #f)
   (lambda ()
     (let* ((source (getenv "GERBIL_SOURCE" #f))
            (lib (path-expand "lib" home))
            (driver (path-expand "bin/gambuild-C" home))
            (include-dir (path-expand "include" home))
            (cc (words (invoke driver ["C_COMPILER"] #t))))
       (match cc
         ([compiler]
          (and source
               (string-prefix? "/" compiler)
               (string-prefix? "/" gsc)
               (equal? (path-normalize lib) (path-normalize (path-expand "~~lib")))
               (equal? (path-normalize (path-directory driver))
                       (path-normalize (path-expand "~~bin")))
               (equal? (path-normalize include-dir) (path-normalize (path-expand "~~include")))
               (let* ((scheme-headers
                       (filter-map
                        (lambda (name)
                          (and (string-prefix? "_" name) (string-suffix? ".scm" name)
                               (path-expand name lib)))
                        (list-sort string<? (directory-files lib))))
                      (prim (path-expand "gambit/prim/prim#.scm" lib))
                      (files [gsc compiler driver (path-expand "gambit.h" include-dir)
                              (if (file-exists? prim) [prim] []) ... scheme-headers ...]))
                 [(path-normalize home) (path-normalize source)
                  gsc-options object-options
                  (map cons files (support-file-digests files))
                  (map (lambda (name) (getenv name #f))
                       '("GAMBOPT" "PATH" "CORCXXFLAGS_GAMBUILD" "CPATH" "C_INCLUDE_PATH"
                         "CPLUS_INCLUDE_PATH" "GCC_EXEC_PREFIX" "COMPILER_PATH"
                         "SDKROOT" "MACOSX_DEPLOYMENT_TARGET" "DEVELOPER_DIR" "SOURCE_DATE_EPOCH"))])))
         (else #f))))))

(def (linked-support-receipt-path work)
  (path-expand "linked-support.scm.receipt" work))

;; Snapshot lowered Scheme before generation. Publish the receipt only after
;; the producer has linked successfully in the original source directory.
(def (linked-support-source-digests inputs)
  (support-file-digests (map (lambda (input) (list-ref input 3)) inputs)))

(def (write-linked-support-receipt work recipe inputs sources)
  (let (products
        (support-file-digests
         (apply append
                (map (match <> ([_ _ _ _ c-file] [c-file (linked-support-object c-file)]))
                     inputs))))
    (call-with-output-file (linked-support-receipt-path work)
      (lambda (port)
        (write
         (cons recipe
               (let loop ((remaining inputs) (schemes sources) (digests products))
                 (match remaining
                   ([[relative _ provider _ _] . rest]
                    (match digests
                      ([c-digest object-digest . tail]
                       [[relative [provider (car schemes) c-digest object-digest]]
                        :: (loop rest (cdr schemes) tail)])))
                   (else []))))
         port)
        (newline port)))))

(def (find-linked-support-input receipt lib work)
  (match receipt
    ([relative [provider scheme c-digest object-digest]]
     (let* ((image (path-expand relative lib))
            (lowered (string-append (path-strip-extension image) ".scm"))
            (c-file (path-expand (string-append relative ".c") work))
            (object (linked-support-object c-file))
            (files [image lowered c-file object]))
       (and (string-prefix? lib image)
            (andmap file-exists? files)
            [relative [provider scheme c-digest object-digest] files])))
    (else #f)))

(def (verified-linked-support inputs)
  (if (null? inputs)
    []
    (let-values (((group rest) (split-at inputs (min (length inputs) 8))))
      (let check ((rows group)
                  (digests (file-digests (apply append (map last group)))))
        (match rows
          ([[relative expected [_ scheme c-file _]] . more]
           (match digests
             ([provider lowered c-digest object-digest . tail]
              (if (equal? expected [provider lowered c-digest object-digest])
                [[relative (string->symbol (string-append "gerbil-link:" relative))
                  provider scheme c-file] :: (check more tail)]
                (check more tail)))))
          (else (verified-linked-support rest)))))))

;; Reuse belongs to this tools build. The runtime still resolves the selected
;; image and checks its digest before invoking the lazy linked initializer.
(def (select-linked-support home gsc gsc-options object-options work)
  (with-exception-catcher
   (lambda (_) #f)
   (lambda ()
     (let (recipe (linked-support-recipe home gsc gsc-options object-options))
       (and recipe
            (match (call-with-input-file (linked-support-receipt-path work) read)
              ([previous . rows]
               (and (equal? previous recipe)
                    (let* ((lib (path-expand "" (path-expand "lib" home)))
                           (inputs
                            (verified-linked-support
                             (filter-map (cut find-linked-support-input <> lib work) rows))))
                      inputs)))
              (else #f)))))))
