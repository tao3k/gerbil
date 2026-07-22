;; Support for Unix shells
;; TODO: If Windows shell support is needed, add it here, too.
(export #t)

(import
  :std/string/misc
  :std/text/parser/char-set
  :std/io)

(def (easy-shell-character? x)
  (or (char-ascii-alphanumeric? x) (and (string-index "%+,-./:=@_" x) #t)))

(def (needs-shell-escape? token)
  ;; maybe also accept ^ and ~ in non-start position?
  (not (string-every easy-shell-character? token)))

(def (write-double-quoted-shell-string-content
      (writer : BufferedWriter) (string : :string))
  (string-fold
   (lambda (c wr)
     (+ (if (string-index "\"$\\`" c)
          (writer.write-u8 (@eval (char->integer #\\)))
          0)
        (writer.write-char-utf8 c)))
   0
   string))

(def (escape-shell-token token)
  (if (needs-shell-escape? token)
    (with-buffered-writer (writer #f)
      (writer.write-u8 (@eval (char->integer #\")))
      (write-double-quoted-shell-string-content writer token)
      (writer.write-u8 (@eval (char->integer #\"))))
    token))

(def (escape-shell-tokens tokens)
  (string-join (map escape-shell-token tokens) " "))

(def (->envvar . args)
  (call-with-output-string
   (lambda (p)
     (def alpha? #t)
     (string-for-each
      (lambda (c)
        (def caa? (char-ascii-alphanumeric? c))
        (when caa?
          (unless alpha? (write-char #\_ p))
          (write-char c p))
        (set! alpha? caa?))
      (string-upcase (as-string args))))))
