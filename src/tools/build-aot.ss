#!/usr/bin/env gxi
;; -*- Gerbil -*-
;; Build the tools with the Gerbil runtime intact. They load modules and
;; source at run time, including bindings outside their static closure.
(import :gerbil/compiler
        :std/build-config
        :std/make)
(include "../build/linked-support.ss")

(def aot-tools
  '("gxpkg" "gxtags" "gxtest"))

(def aot-cc-options
  (append-options
    (cppflags "libssl" "")
    (cppflags "libcrypto" "")
    (if config-enable-zlib (cppflags "zlib" "") "")
    "-Wno-discarded-qualifiers"
    "-Wno-deprecated-declarations"
    "-Wno-implicit-function-declaration"))

(def aot-ld-options
  (append-options
    (ldflags "libssl" "-lssl")
    (ldflags "libcrypto" "-lcrypto")
    (if config-enable-zlib (ldflags "zlib" "-lz") "")))

(def (gxtest-linked-support staging build-prefix)
  (cond-expand
   (darwin
    ;; gxi has initialized the expander. Collect the installed providers
    ;; reached by the test harness before any project test is loaded.
    (eval '(import :std/test :gerbil/tools/gxtest))
    (let* ((gsc (getenv "GERBIL_GSC" (path-expand "bin/gsc" build-prefix)))
           (support (prepare-linked-support staging build-prefix gsc (include-gambit-sharp))))
      (when support
        (for-each
         (lambda (c-file)
           (add-compile-job! (lambda () (invoke gsc ["-obj" c-file]))
                             `(compile ,c-file)))
         (cdr support))
        (execute-pending-compile-jobs!)
        (check-linked-objects
         (map (lambda (c-file) (string-append (path-strip-extension c-file) ".o"))
              (cdr support))))
      support))
   (else #f)))

(def (aot-tool tool support)
  [exe: tool
   (if support [linked-support: support] []) ...
   "-cc-options" aot-cc-options
   "-ld-options" aot-ld-options])

(def (main . _)
  (let* ((srcdir (current-directory))
         (build-prefix (getenv "GERBIL_BUILD_PREFIX" (gerbil-home)))
         (libdir (path-expand "lib" build-prefix))
         (bindir (path-expand "bin" build-prefix)))
    (for-each
      (lambda (tool)
        (displayln ">>> Building AOT tool " tool)
        (let (staging
              (create-temporary-directory
               [path: (path-expand ".aot-tool" bindir) permissions: #o700]))
          (unwind-protect
            (begin
              (make (list (aot-tool tool
                                   (and (equal? tool "gxtest")
                                        (not (getenv "GERBIL_BUILD_OPTIMIZED" #f))
                                        (gxtest-linked-support staging build-prefix))))
                srcdir: srcdir
                libdir: libdir
                bindir: staging
                force: #t
                debug: #f)
              (rename-file (path-expand tool staging)
                           (path-expand tool bindir) #t))
            (delete-file-or-directory staging #t))))
      aot-tools)))
