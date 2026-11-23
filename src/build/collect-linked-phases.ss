;;; -*- Gerbil -*-
;;; Resolve the native phases pulled in by one test source.
(import :gerbil/expander)

(def (source-package-directory source)
  (let (origin (path-directory source))
    (let loop ((dir origin))
      (if (file-exists? (path-expand "gerbil.pkg" dir))
        dir
        (let (parent (path-directory (path-strip-trailing-directory-separator dir)))
          (if (or (string-empty? parent) (equal? parent dir))
            origin
            (loop parent)))))))

(def (main output source)
  (let ((source-dir (source-package-directory source))
        (package-lib (path-expand "lib" (gerbil-path))))
    (parameterize ((current-directory source-dir))
      (set-load-path! [package-lib source-dir (load-path) ...])
      (import-module source #f #t)
      (call-with-output-file output
        (lambda (port)
          (write (filter-map (lambda (entry) (and (string? (cdr entry)) (cdr entry)))
                             (list-modules))
                 port)
          (newline port))))))
