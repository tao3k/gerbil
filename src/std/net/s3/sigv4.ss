;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; AWS Signature Version 4 — canonical requests and authorization headers.

(import :std/crypto/digest
        :std/crypto/hmac
        :std/encoding/hex
        :std/net/uri
        :std/text/pregexp)
(export aws4-canonical-query-string
        aws4-canonical-request
        aws4-sign
        aws4-auth)

;; Reference: https://docs.aws.amazon.com/AmazonS3/latest/API/sig-v4-header-based-auth.html

(def (canonical-value (value : :t))
  => :string
  (if value
    (uri-encode
     (if (string? value)
       value
       (with-output-to-string [] (cut display value))))
    ""))

(def (canonical-field<? a b)
  => :boolean
  (let ((a-key (car a))
        (b-key (car b)))
    (or (string<? a-key b-key)
        (and (string=? a-key b-key)
             (string<? (cdr a) (cdr b))))))

;; Encode and sort a query exactly as it appears in the signed request target.
(def (aws4-canonical-query-string (query : :list))
  => :string
  (let (fields
        (list-sort
         canonical-field<?
         (map (lambda (field)
                (cons (uri-encode (car field))
                      (canonical-value (cdr field))))
              query)))
    (string-join
     (map (lambda (field)
            (string-append (car field) "=" (cdr field)))
          fields)
     "&")))

(def (canonical-header<? a b)
  => :boolean
  (string<? (car a) (car b)))

(def header-whitespace (pregexp "[ \t\r\n]+"))

(def (canonicalized-headers (headers : :list))
  => :list
  (let (values-by-name (make-hash-table))
    (for-each
     (lambda (header)
       (let ((name (string-downcase (car header)))
             (value (string-join
                     (filter (lambda (word) (not (string-empty? word)))
                             (pregexp-split header-whitespace (cdr header)))
                     " ")))
         (hash-put! values-by-name name
                    (cons value (hash-ref values-by-name name [])))))
     headers)
    ;; Merge case-insensitive duplicates in wire order, then sort field names.
    (list-sort
     canonical-header<?
     (map (lambda (name)
            (cons name (string-join (reverse (hash-ref values-by-name name)) ",")))
          (hash-keys values-by-name)))))

(def (canonical-headers (headers : :list))
  => :string
  (apply string-append
         (map (lambda (header)
                (string-append (car header) ":" (cdr header) "\n"))
              (canonicalized-headers headers))))

(def (signed-headers (headers : :list))
  => :string
  (string-join (map car (canonicalized-headers headers)) ";"))

;; Create the canonical request string used by AWS Signature Version 4.
(def (aws4-canonical-request
      verb: (verb : :symbol)
      uri: (uri : :string)
      query: (query : :list)
      headers: (headers : :list)
      hash: (hash : :u8vector))
  => :string
  (string-append
   (symbol->string verb) "\n"
   uri "\n"
   (aws4-canonical-query-string query) "\n"
   (canonical-headers headers) "\n"
   (signed-headers headers) "\n"
   (hex-encode hash)))

(def (signing-key (scope : :string) (secret-key : :string))
  => :u8vector
  (match (string-split scope #\/)
    ([date region service]
     (let* ((date-key
             (hmac-sha256 (string->utf8 (string-append "AWS4" secret-key))
                          (string->utf8 date)))
            (date-region-key
             (hmac-sha256 date-key (string->utf8 region)))
            (date-region-service-key
             (hmac-sha256 date-region-key (string->utf8 service))))
       (hmac-sha256 date-region-service-key
                    (string->utf8 "aws4_request"))))
    (else
     (error "Bad request scope; expected date/region/service" scope))))

(def (string-to-sign (scope : :string)
                     (request : :string)
                     (timestamp : :string))
  => :string
  (string-append "AWS4-HMAC-SHA256\n"
                 timestamp "\n"
                 scope "/aws4_request\n"
                 (hex-encode (sha256 (string->utf8 request)))))

;; Calculate a signature for a canonical request.
(def (aws4-sign (scope : :string)
                (request : :string)
                (timestamp : :string)
                (secret-key : :string))
  => :u8vector
  (hmac-sha256 (signing-key scope secret-key)
               (string->utf8 (string-to-sign scope request timestamp))))

;; Build the Authorization header value for a canonical request.
(def (aws4-auth (scope : :string)
                (request : :string)
                (timestamp : :string)
                (headers : :list)
                (secret-key : :string)
                (access-key : :string))
  => :string
  (string-append
   "AWS4-HMAC-SHA256 "
   "Credential=" access-key "/" scope "/aws4_request,"
   "SignedHeaders=" (signed-headers headers) ","
   "Signature=" (hex-encode
                  (aws4-sign scope request timestamp secret-key))))
