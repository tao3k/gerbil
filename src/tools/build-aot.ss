#!/usr/bin/env gxi
;; -*- Gerbil -*-
;; Build the tools with the Gerbil runtime intact. They load modules and
;; source at run time, including bindings outside their static closure.
(import :gerbil/compiler
        :gerbil/expander
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

(def (supplemental-linked-support staging home tool shared roots)
  (let ((toolchain-lib (linked-support-root home))
        (package-lib (linked-support-root (gerbil-path)))
        (seen (make-table test: equal?))
        (builtin (make-table test: equal?))
        (collector (path-expand "build/collect-linked-phases.ss" (getenv "GERBIL_SOURCE")))
        (gxi (path-expand "bin/gxi" home)))
    ;; Runtime initialization marks both names as builtin before the loader
    ;; can select a provider. The gxi used for discovery may load them anyway.
    (for-each
     (lambda (mod)
       (table-set! builtin mod #t)
       (table-set! builtin (string-append mod "~0") #t))
     (gxc#executable-builtin-modules (import-module (string-append tool ".ss"))))
    (for-each (lambda (input) (table-set! seen (path-expand (car input) toolchain-lib) #t))
              shared)
    (let* ((paths
            (map (lambda (source)
                   (let (path (path-normalize
                               (path-expand source (path-directory (getenv "GERBIL_SOURCE")))))
                     (unless (file-exists? path) (error "Missing gxtest source root" source))
                     path))
                 roots))
           (outputs
            (map (lambda (index)
                   (path-expand (string-append "linked-phases-" (number->string index)) staging))
                 (iota (length paths)))))
      ;; Each root keeps its own expander state and provider resolution.
      (for-each (lambda (path output)
                  (add-compile-job! (lambda () (invoke gxi [collector output path]))
                                    `(collect-linked-phases ,path)))
                paths outputs)
      (execute-pending-compile-jobs!)
      (for-each
       (lambda (output)
         (for-each (lambda (image)
                     (unless (table-ref seen image #f) (table-set! seen image 'supplemental)))
                   (call-with-input-file output read)))
       outputs))
    (let* ((paths (list-sort string<? (map car (table->list seen))))
           (toolchain-work (path-expand "toolchain" staging))
           (package-work (path-expand "package" staging))
           (results
            (filter-map
             (lambda (path)
               (and (eq? (table-ref seen path) 'supplemental)
                    (let* ((toolchain? (string-prefix? toolchain-lib path))
                           (relative (and toolchain? (substring path (string-length toolchain-lib)
                                                                (string-length path)))))
                      (and (not (and relative (table-ref builtin (path-strip-extension relative) #f)))
                           (let (result (box #f))
                             (add-compile-job!
                              (lambda ()
                                (set-box! result
                                  (if toolchain?
                                    (linked-support-input toolchain-lib toolchain-work path)
                                    (linked-support-input package-lib package-work path "gerbil-link:package/"))))
                              `(verify-linked-phase ,path))
                             [toolchain? result])))))
             paths)))
      (execute-pending-compile-jobs!)
      ;; Preserve path order independently of worker completion.
      (values (filter-map (lambda (row) (and (car row) (unbox (cadr row)))) results)
              (filter-map (lambda (row) (and (not (car row)) (unbox (cadr row)))) results)))))

(def (reuse-package-support staging home gsc inputs)
  (if (null? inputs)
    (values [] [])
    (let ((work (path-expand "reused-package" staging))
          (toolchain-lib (linked-support-root home))
          (package-lib (linked-support-root (gerbil-path)))
          (seen (make-table test: eq?)))
      (def results
        (map (lambda (input)
               (let (result (box #f))
                 ;; The queue owner creates shared directories before dispatch.
                 (when (with-exception-catcher
                        (lambda (_) #f)
                        (lambda ()
                          (create-directory* (path-directory (path-expand (car input) work)))
                          #t))
                   (add-compile-job!
                    (lambda ()
                      (set-box! result
                        (reuse-linked-runtime-input work toolchain-lib package-lib gsc input)))
                    `(verify-runtime-product ,(car input))))
                 [input result]))
             inputs))
      (execute-pending-compile-jobs!)
      ;; Select the first admitted provider in the original input order.
      (let loop ((todo results) (reused []) (remaining []))
        (match todo
          ([[input result] . rest]
           (let (prepared (unbox result))
             (if (and prepared (not (table-ref seen (cadr prepared) #f)))
               (begin
                 (table-set! seen (cadr prepared) #t)
                 (loop rest (cons prepared reused) remaining))
               (loop rest reused (cons input remaining)))))
          (else (values (reverse reused) (reverse remaining))))))))

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

(def (prepared-tool-support staging build-prefix tool roots)
  (cond-expand
   (darwin
    (let* ((producer (getenv "GERBIL_LINKED_C_WORK" #f))
           (gsc (getenv "GERBIL_GSC" (path-expand "bin/gsc" build-prefix)))
           (gsc-options (include-gambit-sharp))
           (object-options (native-support-object-options gsc ["-cc-options" "-g"]))
           (shared (or (and producer
                            (select-linked-support build-prefix gsc gsc-options object-options producer))
                       [])))
      (let-values (((stdlib packages)
                    (if (pair? roots)
                      (supplemental-linked-support staging build-prefix tool shared roots)
                      (values [] []))))
        (let-values (((reused remaining)
                      (reuse-package-support staging build-prefix gsc packages)))
          (let ((additional (append stdlib remaining))
                (package-support (append reused remaining))
                (loader (path-expand "linked-support.scm" staging)))
            (when (pair? shared)
              (displayln "... link " (length shared) " prepared support objects"))
            (when (pair? roots)
              (displayln "... link gxtest source closure: " (length stdlib)
                         " additional toolchain phases, " (length packages) " package phases")
              (when (pair? reused)
                (displayln "... reuse " (length reused) " verified package runtime objects"))
              (when (pair? additional)
                (prepare-profile-objects staging gsc gsc-options object-options additional)))
            (let (all (append shared stdlib package-support))
              (and (pair? all)
                   (begin
                     (write-linked-loader loader (append shared stdlib) package-support)
                     (cons loader (map last all))))))))))
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
                                        (prepared-tool-support staging build-prefix tool roots))))
                srcdir: srcdir
                libdir: libdir
                bindir: staging
                force: #t
                debug: #f)
              (rename-file (path-expand tool staging)
                           (path-expand tool bindir) #t))
            (delete-file-or-directory staging #t))))
      aot-tools)))
