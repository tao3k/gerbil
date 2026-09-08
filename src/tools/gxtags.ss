;;; -*- Gerbil -*-
;;; © vyzo
;;; Generate emacs/vim TAGS from gerbil sources
;;; only exported symbols are tagged.
;;; Usage: gxtags [-a] [-o tags-file] file-or-directory ...

(import :gerbil/expander
        (only-in :gerbil/compiler/base ast-case)
        (only-in :gerbil/core/expander syntax)
        :std/cli/getopt
        :std/io/tempfile
        (only-in :std/list/list delete-duplicates/hash)
        :std/string/utf8
        ./env)
(export main make-tags)

(def (main . args)
  => :void
  (call-with-getopt gxtags-main args
    program: "gxtags"
    help: "generate emacs/vim tags for Gerbil code"
    global-env-flag
    (flag 'append "-a"
      help: "append to existing tag file")
    (option 'output "-o" default: "TAGS"
      help: "explicit name of file for tag table")
    (option 'format "-t" "--tag-format"
      help: "TAGS index format; emacs or vim; uses the GERBIL_TAGS_FORMAT environment variable, with default value of emacs if it is not set"
      value: string->symbol
      default: (string->symbol (getenv "GERBIL_TAGS_FORMAT" "emacs")))
    (rest-arguments 'input
      help: "source file or directory")))

(def (gxtags-main (opt : HashTable))
  => :void
  (setup-local-env! opt)
  (let (inputs (hash-ref opt 'input []))
    (make-tags (if (null? inputs) ["."] inputs)
               (hash-get opt 'output)
               (hash-get opt 'append)
               (hash-get opt 'format))))

(def current-tags-path
  (make-parameter #f))
(def current-tags-format
  (make-parameter #f))

(def (make-tags (inputs : :list) (tagfile : :string)
                (append? : :boolean := #f) (format : :symbol := 'emacs))
  => :void
  ;; Validate before opening the destination so a bad format cannot truncate it.
  (unless (memq format '(emacs vim))
    (error "unknown TAGS index format" format))
  (parameterize ((current-tags-format format))
    (call-with-output-file [path: tagfile append: append?]
      (lambda (output)
        (parameterize ((current-tags-path (path-normalize tagfile)))
          (for-each (cut tag-input <> output) inputs)))))
  (when (eq? format 'vim)
    (sort-tags! tagfile)))

(def (file-directory? (path : :string))
  => :boolean
  (eq? (file-type path) 'directory))

(def (tag-input (input : :string) (output : :character-port))
  => :void
  (if (file-exists? input)
    (if (file-directory? input)
      (tag-directory input output)
      (tag-source-file input output))
    (error "No such file or directory" input)))

(def (tag-directory (dirname : :string) (output : :character-port))
  => :void
  (let (files (list-sort string<? (directory-files dirname)))
    (for-each
      (lambda (file)
        (let (path (path-expand file dirname))
          (when (or (file-directory? path)
                    (member (path-extension path) '(".ss" ".ssi")))
            (tag-input path output))))
      files)))

(def (tag-source-file (filename : :string) (output : :character-port))
  => :void
  (cond
   ((try-import-module filename)
    => (lambda (ctx)
         (displayln "TAG " filename)
         (let (xtab (make-hash-table-eq)) ; binding-id -> [export-name ...]
          (for-each
            (lambda (xport)
              (let (bind (core-resolve-module-export xport))
                (hash-update! xtab (binding-id bind)
                              (cut cons (module-export-name xport) <>)
                              [])))
            (module-context-export ctx))
          (write-tags (module-tags ctx xtab) filename output))))
   (else
    (displayln "SKIP " filename))))

(def (module-tags (ctx : module-context) (xtab : HashTable))
  => :list
  (def tags [])

  (def loc #f)

  (defrules with-loc ()
    ((_ stx body rest ...)
     (let (K (lambda () body rest ...))
       (let (new-loc (stx-source stx))
         (if new-loc
           (let (save-loc loc)
             (set! loc new-loc)
             (K)
             (set! loc save-loc))
           (K))))))

  (def (tag! (eid : :symbol) (name : :symbol))
    => :void
    (set! tags
      (cons [eid name loc] tags)))

  (def (tag-e (stx : :t))
    => :void
    (with-loc stx
      (ast-case stx (%#begin
                     %#begin-syntax
                     %#define-values
                     %#define-syntax
                     %#extern
                     %#module)
        ((%#begin expr ...)
         (for-each tag-e #'(expr ...)))
        ((%#begin-syntax expr ...)
         (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
           (for-each tag-e #'(expr ...))))
        ((%#define-values (id ...) _)
         (for-each tag-def (filter values #'(id ...))))
        ((%#define-syntax id _)
         (tag-def #'id))
        ((%#extern decl ...)
         (for-each tag-decl #'(decl ...)))
        ((%#module id expr ...)
         (let ((eid (binding-id (resolve-identifier #'id)))
               (ctx (syntax-local-e #'id)))
           ;; this only tags bindings if they are exported by the parent
           ;; module; this works well for prelude-style module structures
           ;; but doesn't tag bindings reachable because the module itself
           ;; is exported
           ;; TODO if the module is exported, add module's exports to the
           ;;      tag table
           (parameterize ((current-expander-context ctx))
             (tag-name! eid)
             (for-each tag-e #'(expr ...)))))
        (_ (void)))))

  (def (tag-def (id : :t))
    => :void
    (with-loc id
      (tag-name! (binding-id (resolve-identifier id)))))

  (def (tag-decl (decl : :t))
    => :void
    (ast-case decl ()
      ((id eid)
       (with-loc #'id
         (tag-name! (stx-e #'eid))))))

  (def (tag-name! (eid : :symbol))
    => :void
    (alet (names (hash-get xtab eid))
      (for-each
        (lambda (name)
          (tag! eid name))
        (delete-duplicates/hash names
                                table: (make-hash-table-eq)
                                from-end?: #t))))

  (let (stx (module-context-code ctx))
    ;; also tag the module id itself with library prefix
    (let* ((id (expander-context-id ctx))
           (gid (make-symbol ":" id)))
      (with-loc stx
        (tag! 'module gid)))
    (parameterize ((current-expander-context ctx)
                   (current-expander-phi 0))
      (tag-e stx))
    (reverse! tags)))

(def (write-tags (tags : :list) (filename : :string) (output : :character-port))
  => :void
  (case (current-tags-format)
    ((emacs) (write-tags/emacs tags filename output))
    ((vim)   (write-tags/vim tags filename output))
    (else    (error "unexpected TAGS index format" (current-tags-format)))))

(def (write-tags/emacs (tags : :list) (filename : :string) (output : :character-port))
  => :void
  (let* ((lines (read-file-string-list filename))
         (lines (if (null? lines)
                  '#("") ; empty module, need an anchor
                  (list->vector lines)))
         (offsets (file-line-offsets filename))
         (tmp (open-output-string))
         (filepath (path-normalize filename))
         (out-of-file-tags []))
    (for-each
      (lambda (tag)
        (with ([_ name loc] tag)
          (let (path (source-location-path loc))
            (cond
             ((or (equal? path filepath) (not path))
              (let* ((line (source-location-line loc))
                     (anchor (vector-ref lines (fx1- line)))
                     (offset (vector-ref offsets (fx1- line))))
                (write-string anchor tmp)
                (write-char #\x7f tmp)
                (display name tmp)
                (write-char #\x01 tmp)
                (display line tmp)
                (write-char #\, tmp)
                (display offset tmp)
                (newline tmp)))
             (else
              (set! out-of-file-tags
                (cons tag out-of-file-tags)))))))
      tags)
    (let* ((str (get-output-string tmp))
           (len (string-utf8-length str)))
      (write-char #\x0c output)
      (newline output)
      (write-string filepath output)
      (write-char #\, output)
      (display len output)
      (newline output)
      (write-string str output)
      (unless (null? out-of-file-tags)
        (let* ((tags (reverse! out-of-file-tags))
               (path (source-location-path (caddar tags)))
               (filename (path-normalize path #t)))
          (write-tags/emacs tags filename output))))))

(def (write-tags/vim (tags : :list) (filename : :string) (output : :character-port))
  => :void
  (let (filename (path-normalize filename))
    (for-each
      (lambda (tag)
        (with ([_ name loc] tag)
          (display name output)
          (display #\tab output)
          (display filename output)
          (display #\tab output)
          (display (source-location-line loc) output)
          (newline output)))
      tags)))

(def +nl+
  (char->integer #\newline))

(def (file-line-offsets (filename : :string))
  => :vector
  (call-with-input-file filename
    (lambda (inp)
      (let lp ((i 0) (offs [0]))
        (let (next (read-u8 inp))
          (cond
           ((eof-object? next)
            (list->vector (reverse! offs)))
           ((eq? next +nl+)
            (let (i+1 (fx1+ i))
              (lp i+1 (cons i+1 offs))))
           (else
            (lp (fx1+ i) offs))))))))

(def (source-location-line (locat : :t))
  => :fixnum
  (if (##locat? locat)
    (let (filepos (##position->filepos (##locat-start-position locat)))
      (fx1+ (##filepos-line filepos)))
    1))

(def (try-import-module (filename : :string))
  => :t
  (try
   (import-module filename)
   (catch (e) #f)))

(def (sort-tags! (tagfile : :string))
  => :void
  (let* ((tmp (make-temporary-file-name "TAGS"))
         (lines (read-file-string-list tagfile))
         (sorted (list-sort string<? lines)))
    (unwind-protect
      (begin
        (write-file-string-list tmp sorted)
        (move-file tmp tagfile))
      (clear-temporary-file! tmp))))
