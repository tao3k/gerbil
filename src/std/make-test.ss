;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Incremental make freshness and nested dependency ordering

(import :std/io/tempfile
        :std/test
        ./make)
(export make-test)

(def (test-incremental-make (cores : :fixnum))
  => :void
  (call-with-temporary-directory
   "gerbil-make-test-"
   (lambda (directory)
     (def srcdir (path-expand "src" directory))
     (def libdir (path-expand "lib" directory))
     (def prefix (path-strip-directory directory))
     (def saved-load-path (load-path))
     ;; Reverse dependency order ensures scheduling, not the buildspec, orders builds.
     (def modules '("leaf" "middle" "upstream" "unrelated"))
     (def upstream '((export value) (def value 1)))
     (def (write-source name forms)
       (call-with-output-file (path-expand name srcdir)
         (lambda (port)
           (for-each (lambda (form) (write form port) (newline port)) forms))))
     (def (build)
       (with-output-to-string
         (lambda ()
           (make modules srcdir: srcdir libdir: libdir
                 bindir: (path-expand "bin" directory)
                 parallelize: cores optimize: #f))))
     (def (timestamps)
       (map (lambda (name)
              (map (lambda (path)
                     (time->seconds
                      (file-info-last-modification-time (file-info path))))
                   (list (path-expand (string-append prefix "/" name ".ssi") libdir)
                         (path-expand (string-append "static/" prefix "__" name ".scm")
                                      libdir))))
            modules))
     (try
      (create-directory srcdir)
      (write-source "gerbil.pkg" `((package: ,(string->symbol prefix))))
      (write-source "upstream.ss" upstream)
      (write-source "middle.ss"
                    '((import ./upstream)
                      (export nested)
                      (module nested (export result) (def result value))
                      (import nested)))
      (write-source "leaf.ss"
                    `((import (in: ,(string->symbol (string-append ":" prefix "/middle")) nested))
                      (export answer) (def answer result)))
      (write-source "unrelated.ss" '((export other) (def other 2)))
      (build)
      ;; Warm dependency timestamp lookups before changing anything, in this process.
      (check (build) => "")
      (let (before (timestamps))
        ;; Rewrite identical source only to advance its mtime. Changing exports would
        ;; also exercise the expander's source cache, which is not under test here.
        (thread-sleep! 1.1)
        (write-source "upstream.ss" upstream)
        ;; Parallel builds also report the deferred native compilation jobs.
        (check (filter (cut string-prefix? "... compile " <>)
                       (string-split (build) #\newline))
               => '("... compile upstream" "... compile middle" "... compile leaf"))
        (let (after (timestamps))
          (for-each
           (lambda (old new)
             (for-each (lambda (a b) (check (> b a) => #t)) old new))
           (take before 3) (take after 3))
          (check (list-ref after 3) => (list-ref before 3))
          (check (build) => "")
          (check (timestamps) => after)))
      (finally
       (set-load-path! saved-load-path)))
     directory))
  (void))

(def make-test
  (test-suite "test :std/make"
    (test-case "incremental chain with one worker"
      (test-incremental-make 1))
    (test-case "incremental chain with parallel workers"
      (test-incremental-make 4))))
