;;; -*- Gerbil -*-
;;; gxtags public API and command-line regression tests
(import :std/test
        :std/source
        :std/io/tempfile
        :std/misc/process
        ./gxtags)
(export gxtags-test test-setup! test-cleanup!)

(def test-directory (make-temporary-file-name "gerbil-gxtags-test-"))
(def tool-source (path-expand "gxtags.ss" (this-source-directory)))

(def (test-path (name : :string))
  => :string
  (path-expand name test-directory))

(def (write-fixture (name : :string) (contents : :string))
  => :void
  (write-file-string (test-path name) contents))

(def (test-setup!)
  => :void
  (create-directory test-directory)
  (write-fixture "simple.ss"
    "package: tags-test\n(export zebra (rename: alpha renamed) twice twice hello)\n(def zebra 1)\n(def alpha 2)\n(def twice 3)\n(defrule (hello) 'hi)\n(def private 9)\n")
  (write-fixture "unicode.ss"
    "package: tags-test\n;; λ🙂\n(export café)\n(def café 42)\n")
  (write-fixture "empty.ss" "")
  (write-fixture "include.ss"
    "package: tags-test\n(export included)\n(include \"included.scm\")\n")
  (write-fixture "included.scm" "(def included 42)\n")
  (write-fixture "broken.ss" "(unbound-procedure)\n")
  (create-directory (test-path "tree"))
  (create-directory (test-path "tree/b"))
  ;; Creation order deliberately differs from traversal order.
  (write-fixture "tree/z.ss" "package: tags-test\n(export z)\n(def z 1)\n")
  (write-fixture "tree/b/c.ssi" "package: tags-test\n(export c)\n(def c 2)\n")
  (write-fixture "tree/a.ss" "package: tags-test\n(export a)\n(def a 3)\n")
  (write-fixture "tree/ignored.scm" "(unbound-procedure)\n")
  (create-directory (test-path "default"))
  (write-fixture "default/only.ss" "package: tags-test\n(export only)\n(def only 1)\n")
  (create-directory (test-path "package"))
  (create-directory (test-path "package/.gerbil"))
  (create-directory (test-path "package/.gerbil/lib"))
  (write-fixture "package/gerbil.pkg" "(package: tags-test)\n")
  (write-fixture "package/.gerbil/lib/gxtags-test-dependency.ss"
    "(export dependency)\n(def dependency 1)\n")
  (write-fixture "package/local.ss"
    "(import :gxtags-test-dependency)\n(export local)\n(def local dependency)\n"))

(def (test-cleanup!)
  => :void
  (clear-temporary-file! test-directory))

(def (emacs-section (filename : :string) (body : :string))
  => :string
  (string-append "\f\n" (path-normalize filename) ","
                 (number->string (u8vector-length (string->utf8 body))) "\n" body))

(def simple-body
  "package: tags-test\x7f;:tags-test/simple\x1;1,0\n(def zebra 1)\x7f;zebra\x1;3,76\n(def alpha 2)\x7f;renamed\x1;4,90\n(def twice 3)\x7f;twice\x1;5,104\n(defrule (hello) 'hi)\x7f;hello\x1;6,118\n")

(def (vim-record (name : :string) (filename : :string) (line : :fixnum))
  => :string
  (string-append name "\t" (path-normalize filename) "\t" (number->string line) "\n"))

(def (simple-vim)
  => :string
  (let (file (test-path "simple.ss"))
    (string-append
     (vim-record ":tags-test/simple" file 1)
     (vim-record "hello" file 6)
     (vim-record "renamed" file 4)
     (vim-record "twice" file 5)
     (vim-record "zebra" file 3))))

(def (capture-tags (inputs : :list) (output : :string)
                   (append? : :boolean := #f) (format : :symbol := 'emacs))
  => :string
  (call-with-output-string
    (lambda (port)
      (parameterize ((current-output-port port))
        (make-tags inputs output append? format)))))

;; Each CLI call has its own expander and environment; local package setup must
;; not add load paths or change GERBIL_PATH in the test runner.
(def (run-cli (args : :list) (directory : :string) (setup : :list := []))
  => :string
  (run-process
   ["gxi" "-e" (object->string `(import ,tool-source))
    "-e" (object->string `(begin
                           (setenv "GERBIL_PATH")
                           (setenv "GERBIL_TAGS_FORMAT")
                           ,@setup
                           (main ,@args)))]
   directory: directory
   stderr-redirection: #t))

(def gxtags-test
  (test-suite "gxtags"
    (test-case "Emacs exports, aliases, macros and duplicate suppression"
      (let* ((file (test-path "simple.ss"))
             (output (test-path "simple.TAGS")))
        (check-equal? (capture-tags [file] output)
                      (string-append "TAG " file "\n"))
        (check-equal? (read-file-string output)
                      (emacs-section file simple-body))))

    (test-case "UTF-8 section sizes and source byte offsets"
      (let* ((file (test-path "unicode.ss"))
             (output (test-path "unicode.TAGS"))
             (body "package: tags-test\x7f;:tags-test/unicode\x1;1,0\n(def café 42)\x7f;café\x1;4,44\n"))
        (capture-tags [file] output)
        (check-equal? (read-file-u8vector output)
                      (string->utf8 (emacs-section file body)))))

    (test-case "empty modules retain an anchor"
      (let ((file (test-path "empty.ss"))
            (output (test-path "empty.TAGS")))
        (capture-tags [file] output)
        (check-equal? (read-file-string output)
                      (emacs-section file "\x7f;:empty\x1;1,0\n"))))

    (test-case "included definitions use the included file location"
      (let ((file (test-path "include.ss"))
            (included (test-path "included.scm"))
            (output (test-path "include.TAGS")))
        (capture-tags [file] output)
        (check-equal? (read-file-string output)
          (string-append
           (emacs-section file "package: tags-test\x7f;:tags-test/include\x1;1,0\n")
           (emacs-section included "(def included 42)\x7f;included\x1;1,0\n")))))

    (test-case "recursive traversal is sorted and filters extensions"
      (let ((a (test-path "tree/a.ss"))
            (c (test-path "tree/b/c.ssi"))
            (z (test-path "tree/z.ss"))
            (output (test-path "tree.TAGS")))
        (check-equal? (capture-tags [(test-path "tree")] output)
                      (string-append "TAG " a "\nTAG " c "\nTAG " z "\n"))
        (check-equal? (read-file-string output)
          (string-append
           (emacs-section a "package: tags-test\x7f;:tags-test/a\x1;1,0\n(def a 3)\x7f;a\x1;3,30\n")
           (emacs-section c "package: tags-test\x7f;:tags-test/c\x1;1,0\n(def c 2)\x7f;c\x1;3,30\n")
           (emacs-section z "package: tags-test\x7f;:tags-test/z\x1;1,0\n(def z 1)\x7f;z\x1;3,30\n")))))

    (test-case "direct make-tags honors format without leaking state"
      (let ((file (test-path "simple.ss"))
            (output (test-path "formats.TAGS")))
        (capture-tags [file] output #f 'vim)
        (check-equal? (read-file-string output) (simple-vim))
        (capture-tags [file] output)
        (check-equal? (read-file-string output) (emacs-section file simple-body))))

    (test-case "append preserves Emacs sections and sorts the whole Vim table"
      (let ((file (test-path "simple.ss"))
            (output (test-path "append.TAGS")))
        (capture-tags [file] output)
        (capture-tags [file] output #t)
        (check-equal? (read-file-string output)
          (let (section (emacs-section file simple-body))
            (string-append section section)))
        (write-file-string output "aaa\told.ss\t1\n")
        (capture-tags [file] output #t 'vim)
        (check-equal? (read-file-string output)
          (string-append
           (vim-record ":tags-test/simple" file 1)
           "aaa\told.ss\t1\n"
           (vim-record "hello" file 6)
           (vim-record "renamed" file 4)
           (vim-record "twice" file 5)
           (vim-record "zebra" file 3)))))

    (test-case "invalid formats do not truncate an existing destination"
      (let (output (test-path "invalid.TAGS"))
        (write-file-string output "keep me\n")
        (check-exception (make-tags [] output #f 'unknown) error?)
        (check-equal? (read-file-string output) "keep me\n")))

    (test-case "missing inputs fail and unimportable files are skipped"
      (let ((broken (test-path "broken.ss"))
            (output (test-path "broken.TAGS")))
        (check-exception (make-tags [(test-path "missing.ss")] output) error?)
        (check-equal? (capture-tags [broken] output)
                      (string-append "SKIP " broken "\n"))
        (check-equal? (read-file-string output) "")))

    (test-case "CLI format flags, environment default and append"
      (let ((file (test-path "simple.ss"))
            (output (test-path "cli.TAGS")))
        (run-cli ["-o" output file] test-directory)
        (check-equal? (read-file-string output) (emacs-section file simple-body))
        (run-cli ["-o" output file] test-directory '((setenv "GERBIL_TAGS_FORMAT" "vim")))
        (check-equal? (read-file-string output) (simple-vim))
        (run-cli ["-t" "emacs" "-o" output file] test-directory
                 '((setenv "GERBIL_TAGS_FORMAT" "vim")))
        (run-cli ["-a" "-o" output file] test-directory)
        (check-equal? (read-file-string output)
          (let (section (emacs-section file simple-body))
            (string-append section section)))
        (run-cli ["--tag-format" "vim" "-o" output file] test-directory)
        (check-equal? (read-file-string output) (simple-vim))
        (check-exception (run-cli ["-t" "unknown" "-o" output file] test-directory)
                         process-error?)
        (check-equal? (read-file-string output) (simple-vim))))

    (test-case "CLI defaults to the current directory and TAGS"
      (let ((directory (test-path "default"))
            (file (test-path "default/only.ss")))
        (run-cli [] directory)
        (check-equal? (read-file-string (path-expand "TAGS" directory))
          (emacs-section file
            "package: tags-test\x7f;:tags-test/only\x1;1,0\n(def only 1)\x7f;only\x1;3,33\n"))))

    (test-case "CLI local package environment and global override"
      (let ((directory (test-path "package"))
            (file (test-path "package/local.ss"))
            (output (test-path "package.TAGS")))
        (check-equal? (run-cli ["-o" output file] directory)
                      (string-append "TAG " file "\n"))
        (check-equal? (run-cli ["-g" "-o" output file] directory)
                      (string-append "SKIP " file "\n"))
        (check-equal? (read-file-string output) "")))

    (test-case "CLI help exposes the supported flags"
      (let (help (run-cli ["-h"] test-directory))
        (check (string-contains help "--tag-format") ? number?)
        (check (string-contains help "--global-env") ? number?)
        (check (string-contains help "GERBIL_TAGS_FORMAT") ? number?)))))
