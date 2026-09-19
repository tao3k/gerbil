;;; -*- Gerbil -*-
;;; © vyzo
;;; HTTP io utilities
(export #t)
(import :std/error
        :std/io
        :std/iter
        :std/net/url)

(def max-status-line-length 256)
(def max-request-line-length 1024)
(def max-headers-length 32768)

(defrule (@int char)
  (@eval (char->integer char)))

(def (consume-newline! (reader : BufferedReader))
  (consume-next-token! reader (@int #\return))
  (consume-next-token! reader (@int #\newline)))

(def (consume-next-token! (reader : BufferedReader) (token : :fixnum))
  (let (next (reader.read-u8))
    (when (eof-object? next)
      (raise-premature-end-of-input consume-next-token!))
    (unless (eq? next token)
      (raise-io-error consume-next-token! "unexpected token"
                      token: next expected: token))))

(defsyntax-case write-char->u8 ()
  ((_ writer char)
   (with-identifier (writer.write-u8 #'writer #'writer ".write-u8")
     #'(writer.write-u8 (@int char)))))

(defrule (write-newline! writer)
  (begin
    (write-char->u8 writer #\return)
    (write-char->u8 writer #\newline)))

(defrule (write-space! writer)
  (write-char->u8 writer #\space))

(defrule (write-colon! writer)
  (write-char->u8 writer #\:))

(def (write-string! (writer : BufferedWriter)
                    (str    : :string))
  (for (i (in-range 0 (string-length str)))
    (let* ((char (##string-ref str i))
           (int  (##char->integer char)))
      (writer.write-u8 int))))

(def (write-request-line! (writer : BufferedWriter)
                          (url    : URL)
                          (method : :string)
                          (proto  : :string := "HTTP/1.1"))
  => :void
  (write-string! writer method)
  (write-space! writer)
  (write-string! writer url.path)
  (when url.query
    (writer.write-u8 (@int #\?))
    (write-string! writer url.query))
  (write-space! writer)
  (write-string! writer proto)
  (write-newline! writer))

;; Protocol errors are distinct from EOF, limits and transport failures.
(deferror-class (HTTPInputError IOError) ())
(deferror-class (MalformedRequestLine HTTPInputError) ())
(defraise/context (raise-malformed-request-line where message irritants ...)
  (MalformedRequestLine message irritants: [irritants ...]))

(def standard-methods
  (hash ("GET" #t) ("HEAD" #t) ("POST" #t) ("PUT" #t) ("DELETE" #t)
        ("CONNECT" #t) ("OPTIONS" #t) ("TRACE" #t) ("PATCH" #t)))

;; RFC 9112 section 3: token SP nonempty-target SP HTTP/DIGIT.DIGIT.
;; Version support is decided by the server after syntactic validation.
(def (read-request-line! (reader : BufferedReader)
                         (count  : :box))
  => :values ; method target proto
  (let (line (read-line! reader count))
    (match (string-split line #\space)
      ([method target proto]
       ;; string-split supplies strings; retain that information across the match.
       (using ((method :- :string)
               (target :- :string)
               (proto  :- :string))
         (let ((method-length (string-length method))
               (target-length (string-length target)))
           (unless
               (and ;; string-split drops an empty final field after a trailing SP.
                    (not (char=? (string-ref line (fx1- (string-length line))) #\space))
                    (fx> method-length 0)
                    (or (hash-get standard-methods method)
                        (let loop ((i 0 :- :fixnum))
                          => :boolean
                          (or (fx= i method-length)
                              (let (char (string-ref method i))
                                (and (or (char<=? #\A char #\Z)
                                         (char<=? #\a char #\z)
                                         (char<=? #\0 char #\9)
                                         (string-index "!#$%&'*+-.^_`|~" char))
                                     (loop (fx1+ i)))))))
                    (fx> target-length 0)
                    (let loop ((i 0 :- :fixnum))
                      => :boolean
                      (or (fx= i target-length)
                          (let (byte (char->integer (string-ref target i)))
                            (and (fx< 32 byte 127)
                                 (loop (fx1+ i))))))
                    (fx= (string-length proto) 8)
                    (string-prefix? "HTTP/" proto)
                    (char<=? #\0 (string-ref proto 5) #\9)
                    (char=? (string-ref proto 6) #\.)
                    (char<=? #\0 (string-ref proto 7) #\9))
             (raise-malformed-request-line read-request-line! "invalid request line" line))
           (values method target proto))))
      (else
       (raise-malformed-request-line read-request-line! "invalid request line" line)))))

(def (write-status-line! (writer : BufferedWriter)
                         (proto  : :string)
                         (status : :fixnum)
                         (text   : :string))
  (write-string! writer proto)
  (write-space! writer)
  (write-string! writer (number->string status))
  (write-space! writer)
  (write-string! writer text)
  (write-newline! writer))

(def (read-status-line! (reader : BufferedReader)
                        (count  : :box))
  => :values
  (let* ((line   (read-line! reader count))
         (space1 (string-index line #\space))
         (space2 (and space1
                      (string-index line #\space (fx1+ space1))))
         (status (and space2
                      (string->number
                       (substring line (fx1+ space1) space2)))))
    (unless status
      (raise-io-error read-status-line! "no status code"
                      line: line))
    (values status line)))

;; Head line-ending syntax errors are distinct from EOF, limits and transport failures.
(deferror-class (MalformedLineEnding HTTPInputError) ())
(defraise/context (raise-malformed-line-ending where message irritants ...)
  (MalformedLineEnding message irritants: [irritants ...]))

;; A CR can end a head line only when followed by LF, even across reader fills.
(def (consume-line-feed! (reader : BufferedReader))
  => :void
  (let (next (reader.read-u8))
    (when (eof-object? next)
      (raise-premature-end-of-input consume-line-feed!))
    (unless (eq? next (@int #\newline))
      (raise-malformed-line-ending consume-line-feed! "expected LF after CR" next))))

(def (read-line! (reader : BufferedReader) (count : :box))
  => :string
  (let loop ((chars [] :- :list))
    => :string
    (let (next (reader.read-u8))
      (cond
       ((eof-object? next)
        (raise-premature-end-of-input read-status-line!))
       ((fx<= (unbox count) 0)
        (raise-io-error read-line! "maximum length exceeded"))
       ((eq? next (@int #\return))
        (consume-line-feed! reader)
        (list->string (reverse! chars)))
       ((eq? next (@int #\newline))
        (raise-malformed-line-ending read-line! "LF without CR"))
       (else
        (set! (box count)
          (fx1- (unbox count)))
        (loop (cons (integer->char next)
                    chars)))))))

(def (read-headers! (reader : BufferedReader) (count : :box))
  => :list
  (let loop ((result [] :- :list))
    => :list
    (let (next (read-header! reader count))
      (if next
        (loop (cons next result))
        (reverse! result)))))

;; Distinguish invalid field names from transport failures at the server's head boundary.
(deferror-class (MalformedHeaderName HTTPInputError) ())
(defraise/context (raise-malformed-header-name where message irritants ...)
  (MalformedHeaderName message irritants: [irritants ...]))

;; Invalid field-value octets are protocol errors, not reader failures.
(deferror-class (MalformedHeaderValue HTTPInputError) ())
(defraise/context (raise-malformed-header-value where message irritants ...)
  (MalformedHeaderValue message irritants: [irritants ...]))

;; Preserve field order and occurrences; canonicalize names for shared client/server lookup.
;; Only leading/trailing SP and HTAB are optional whitespace (RFC 9110 section 5.5).
(def (read-header! (reader : BufferedReader)
                   (count  : :box))
  => (Maybe :pair)
  (let loop ((chars [] :- :list)
             (upcase? #t :- :boolean))
    => (Maybe :pair)
    (let (next (reader.read-u8))
      (cond
       ((eof-object? next)
        (raise-premature-end-of-input read-header!))
       ((fx<= (unbox count) 0)
        (raise-io-error read-line! "maximum length exceeded"))
       ((eq? next (@int #\return))
        (set! (box count)
          (fx- (unbox count) 2))
        (if (null? chars)
          (begin
            (consume-line-feed! reader)
            #f)
          (raise-malformed-header-name read-header! "incomplete header name")))
       ((eq? next (@int #\:))
        (set! (box count)
          (fx- (unbox count) 1))
        (if (null? chars)
          (raise-malformed-header-name read-header! "empty header name")
          (let* ((key (list->string (reverse! chars)))
                 (val
                  (let read-value ((chars [] :- :list) (content [] :- :list))
                    => :string
                    (let (next (reader.read-u8))
                      (cond
                       ((eof-object? next)
                        (raise-premature-end-of-input read-header!))
                       ((fx<= (unbox count) 0)
                        (raise-io-error read-line! "maximum length exceeded"))
                       ((eq? next (@int #\return))
                        (consume-line-feed! reader)
                        (list->string (reverse! content)))
                       ((eq? next (@int #\newline))
                        (raise-malformed-line-ending read-header! "LF without CR"))
                       (else
                        (set! (box count) (fx1- (unbox count)))
                        (cond
                         ((or (eq? next (@int #\space)) (eq? next (@int #\tab)))
                          ;; Skip leading whitespace; retain interior whitespace but
                          ;; keep the final value rooted at its last non-whitespace byte.
                          (read-value (if (null? chars) chars (cons (integer->char next) chars))
                                      content))
                         ((and (fx>= next 32) (not (fx= next 127)))
                          (let (chars (cons (integer->char next) chars))
                            (read-value chars chars)))
                         (else
                          (raise-malformed-header-value read-header! "invalid header value" next)))))))))
            (cons key val))))
       ((eq? next (@int #\-))
        (set! (box count)
          (fx- (unbox count) 1))
        (let (char (##integer->char next))
          (loop (cons char chars)
                #t)))
       (else
        ;; RFC 9110 section 5.1: field-name is a nonempty ASCII token.
        (unless (or (fx<= 65 next 90)
                    (fx<= 97 next 122)
                    (fx<= 48 next 57)
                    (memv next '(33 35 36 37 38 39 42 43 46 94 95 96 124 126)))
          (raise-malformed-header-name read-header! "invalid header name" next))
        (set! (box count)
          (fx- (unbox count) 1))
        (let* ((char (##integer->char next))
               (char (cond
                      ((and upcase? (fx<= 97 next 122))
                       (integer->char (fx- next 32)))
                      ((and (not upcase?) (fx<= 65 next 90))
                       (integer->char (fx+ next 32)))
                      (else char))))
          (loop (cons char chars)
                #f)))))))

(def (write-headers! (writer : BufferedWriter) (headers : :list))
  => :void
  (for ([k . v] (in-list headers))
    (write-header! writer
                   (: k :string)
                   (: v :string))))

(def (write-header! (writer : BufferedWriter)
                    (head   : :string)
                    (value  : :string))
  => :void
  (write-string! writer head)
  (write-colon! writer)
  (write-space! writer)
  (write-string! writer value)
  (write-newline! writer))
