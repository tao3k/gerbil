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

(def (supplemental-linked-support staging home shared roots)
  (let ((toolchain-lib (linked-support-root home))
        (package-lib (linked-support-root (gerbil-path)))
        (seen (make-table test: equal?))
        (collector (path-expand "build/collect-linked-phases.ss" (getenv "GERBIL_SOURCE")))
        (gxi (path-expand "bin/gxi" home))
        (output (path-expand "linked-phases" staging)))
    (for-each (lambda (input) (table-set! seen (path-expand (car input) toolchain-lib) #t))
              shared)
    (for-each
     (lambda (source)
       (let (path (path-normalize (path-expand source (path-directory (getenv "GERBIL_SOURCE")))))
         (unless (file-exists? path) (error "Missing gxtest source root" source))
         (invoke gxi [collector output path])
         (for-each (lambda (image)
                     (unless (table-ref seen image #f) (table-set! seen image 'supplemental)))
                   (call-with-input-file output read))))
     roots)
    (let loop ((paths (list-sort string<? (map car (table->list seen))))
               (stdlib [])
               (packages []))
      (match paths
        ([path . rest]
         (cond
          ((not (eq? (table-ref seen path) 'supplemental))
           (loop rest stdlib packages))
          ((string-prefix? toolchain-lib path)
           (let (input (linked-support-input toolchain-lib (path-expand "toolchain" staging) path))
             (loop rest (if input (cons input stdlib) stdlib) packages)))
          (else
           (let (input (linked-support-input package-lib (path-expand "package" staging)
                                             path "gerbil-link:package/"))
             (loop rest stdlib (if input (cons input packages) packages))))))
        (else (values (reverse stdlib) (reverse packages)))))))

;; Bound the amount of Scheme carried by each GSC process in a large closure.
(def (group-profile-inputs inputs)
  (if (null? inputs)
    []
    (let-values (((group rest) (split-at inputs (min 32 (length inputs)))))
      (cons group (group-profile-inputs rest)))))

(def (prepare-profile-objects staging gsc gsc-options object-options inputs)
  (let (sources (linked-support-source-digests inputs))
    (generate-linked-support-c gsc staging (group-profile-inputs inputs) gsc-options)
    (for-each
     (lambda (input)
       (let (c (list-ref input 4))
         (add-compile-job! (lambda () (invoke gsc ["-obj" object-options ... c]))
                           `(compile ,c))))
     inputs)
    (execute-pending-compile-jobs!)
    (for-each
     (lambda (input)
       (let (object (linked-support-object (list-ref input 4)))
         (when (native-load-effects? object)
           (error "Linked gxtest phase has native load-time effects" object))))
     inputs)
    (unless (equal? sources (linked-support-source-digests inputs))
      (error "Lowered gxtest phase changed during build"))))

(def (prepared-tool-support staging build-prefix roots)
  (cond-expand
   (darwin
    (let* ((producer (getenv "GERBIL_LINKED_C_WORK" #f))
           (gsc (getenv "GERBIL_GSC" (path-expand "bin/gsc" build-prefix)))
           (gsc-options (include-gambit-sharp))
           (object-options ["-cc-options" "-g"])
           (shared (or (and producer
                            (select-linked-support build-prefix gsc gsc-options object-options producer))
                       [])))
      (let-values (((stdlib packages)
                    (if (pair? roots)
                      (supplemental-linked-support staging build-prefix shared roots)
                      (values [] []))))
        (let ((additional (append stdlib packages))
              (loader (path-expand "linked-support.scm" staging)))
          (when (pair? shared)
            (displayln "... link " (length shared) " prepared support objects"))
          (when (pair? roots)
            (displayln "... link gxtest source closure: " (length stdlib)
                       " additional toolchain phases, " (length packages) " package phases")
            (when (pair? additional)
              (prepare-profile-objects staging gsc gsc-options object-options additional)))
          (and (or (pair? shared) (pair? additional))
               (begin
                 (write-linked-loader loader (append shared stdlib) packages)
                 (cons loader (map last (append shared additional)))))))))
   (else #f)))

(def (aot-tool tool support)
  [exe: tool
   (if support [linked-support: support] []) ...
   "-cc-options" aot-cc-options
   "-ld-options" aot-ld-options])

(def (main . roots)
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
                                        (prepared-tool-support staging build-prefix roots))))
                srcdir: srcdir
                libdir: libdir
                bindir: staging
                force: #t
                debug: #f)
              (rename-file (path-expand tool staging)
                           (path-expand tool bindir) #t))
            (delete-file-or-directory staging #t))))
      aot-tools)))
