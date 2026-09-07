;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP header preparation
(import :std/error)
(export headers->alist send-headers)

;; Accept alist entries, alternating property names and values, or a mixture.
;; Preserve names, values and ordering; send-headers validates the fields.
(def (headers->alist (headers : :list))
  => :list
  (let loop ((rest headers) (result []))
    (cond
     ((null? rest) (reverse result))
     ((pair? (car rest))
      (loop (cdr rest) (cons (car rest) result)))
     ((pair? (cdr rest))
      (loop (cddr rest) (cons (cons (car rest) (cadr rest)) result)))
     (else
      (raise-bad-argument headers->alist "a value for each header property" (car rest))))))

;; send-one receives "Name: value" without CRLF and supplies the line ending.
;; Prepare every line before sending any, including validation of late fields.
(def (send-headers (headers : :list) (send-one : :procedure))
  => :void
  (def (header->string entry)
    (let* ((key (car entry))
           (value (cdr entry))
           (name (cond
                  ((string? key) key)
                  ((keyword? key) (keyword->string key))
                  ((symbol? key) (symbol->string key))
                  (else
                   (raise-bad-argument send-headers "keyword, symbol or string header name" key)))))
      ;; RFC 5322 ftext: printable ASCII except colon; no whitespace.
      (when (fxzero? (string-length name))
        (raise-bad-argument send-headers "nonempty header name" key))
      (let loop ((i 0))
        (when (fx< i (string-length name))
          (let (code (char->integer (string-ref name i)))
            (unless (and (fx<= 33 code 126) (not (fx= code 58)))
              (raise-bad-argument send-headers "printable ASCII header name without colon or whitespace" key)))
          (loop (fx+ i 1))))
      (unless (string? value)
        (raise-bad-argument send-headers "header value string" value))
      (let loop ((i 0))
        (when (fx< i (string-length value))
          (let (char (string-ref value i))
            (when (or (char=? char #\return) (char=? char #\newline))
              (raise-bad-argument send-headers "header value without CR or LF" key value)))
          (loop (fx+ i 1))))
      (string-append name ": " value)))
  (let (lines (map header->string (headers->alist headers)))
    (for-each send-one lines))
  (void))
