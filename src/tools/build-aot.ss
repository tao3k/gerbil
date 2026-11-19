#!/usr/bin/env gxi
;; -*- Gerbil -*-
;; Build the tools with the Gerbil runtime intact. They load modules and
;; source at run time, including bindings outside their static closure.
(import :std/build-config
        :std/make)

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

(def (aot-tool tool)
  (list exe: tool
        "-cc-options" aot-cc-options
        "-ld-options" aot-ld-options))

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
              (make (list (aot-tool tool))
                srcdir: srcdir
                libdir: libdir
                bindir: staging
                force: #t
                debug: #f)
              (rename-file (path-expand tool staging)
                           (path-expand tool bindir) #t))
            (delete-file-or-directory staging #t))))
      aot-tools)))
