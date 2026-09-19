;;; -*- Gerbil -*-
;;; © vyzo
;;; http server implementation
(import :std/error
        :std/interface
        :std/io
        :std/io/bio/buffer
        :std/log
        :std/net/url
        :std/net/ssl
        :std/net/address
        :std/encoding/zlib
        :std/string/stringer
        ../common/ioutil
        ../common/chunked
        ./interface
        ./status)
(export new-request
        new-response-handler
        validate-request-host!
        request-content-length
        (struct-out MalformedHost)
        (struct-out MalformedContentLength)
        (struct-out MalformedRequestFraming))

(deferror-class (MalformedHost HTTPInputError) ())
(defraise/context (raise-malformed-host where message irritants ...)
  (MalformedHost message irritants: [irritants ...]))
(deferror-class (MalformedContentLength HTTPInputError) ())
(defraise/context (raise-malformed-content-length where message irritants ...)
  (MalformedContentLength message irritants: [irritants ...]))
(deferror-class (MalformedRequestFraming HTTPInputError) ())
(defraise/context (raise-malformed-request-framing where message irritants ...)
  (MalformedRequestFraming message irritants: [irritants ...]))

;; Headers come from read-headers!, which canonicalizes names and retains
;; occurrences. Validate before URL construction, body setup or mux dispatch.
(def (validate-request-host! (proto   : :string)
                             (headers : :list))
  => :void
  (let loop ((rest headers :- :list) (seen? #f :- :boolean))
    => :void
    (if (pair? rest)
      (if (equal? (caar rest) "Host")
        (if seen?
          (raise-malformed-host validate-request-host! "duplicate Host")
          (loop (cdr rest) #t))
        (loop (cdr rest) seen?))
      (when (and (string=? proto "HTTP/1.1") (not seen?))
        (raise-malformed-host validate-request-host! "missing Host")))))

;; Read canonicalized fields before URL/body construction. Only decimal digits
;; are accepted: comma lists are rejected, not repaired. Separate occurrences
;; must agree numerically; generic arithmetic preserves arbitrarily large values.
;; Returns #f when absent, otherwise an exact nonnegative integer.
(def (request-content-length (headers : :list))
  => (Maybe :integer)
  (def (parse-length (value : :string))
    => :integer
    (let (end (string-length value))
      (when (fxzero? end)
        (raise-malformed-content-length request-content-length "empty Content-Length"))
      (let loop ((index 0 :- :fixnum) (length 0 :- :integer))
        => :integer
        (if (fx= index end)
          length
          (let (digit (fx- (char->integer (string-ref value index)) 48))
            (unless (fx<= 0 digit 9)
              (raise-malformed-content-length request-content-length "nondecimal Content-Length"))
            (loop (fx1+ index) (+ (* length 10) digit)))))))
  (let loop ((rest headers :- :list) (length #f :? :integer))
    => (Maybe :integer)
    (if (pair? rest)
      (if (equal? (caar rest) "Content-Length")
        (let (next (parse-length (cdar rest)))
          (when (and length (not (= length next)))
            (raise-malformed-content-length request-content-length "inconsistent Content-Length"))
          (loop (cdr rest) next))
        (loop (cdr rest) length))
      length)))

;; Only a single chunked coding is supported. Conservatively reject all other
;; transfer-coding forms with 400/close, including lists and parameters. HTTP/1.0
;; forbids Transfer-Encoding; leave other versions to the existing 505 dispatch.
;; Headers are canonicalized and content-length has already been validated.
(def (request-chunked? (proto          : :string)
                      (headers        : :list)
                      (content-length :? :integer))
  => :boolean
  (let loop ((rest headers :- :list) (chunked? #f :- :boolean))
    => :boolean
    (if (pair? rest)
      (if (equal? (caar rest) "Transfer-Encoding")
        (begin
          (when (or content-length chunked? (string=? proto "HTTP/1.0")
                    (not (string-ci=? (cdar rest) "chunked")))
            (raise-malformed-request-framing request-chunked? "conflicting or unsupported request framing"))
          (loop (cdr rest) #t))
        (loop (cdr rest) chunked?))
      chunked?)))

(def (new-request (method : :string)
                  (target : :string)
                  (proto  : :string)
                  (headers : :list)
                  (sock    : StreamSocket)
                  (reader  : BufferedReader)
                  (log     : Logger))
  => Request
  (let* ((content-length (request-content-length headers))
         (chunked? (request-chunked? proto headers content-length))
         (url
          (if (string-contains target "://")
            (URL target)
            (URL-from-components
             (if (is-TLS? sock)
               "https"
               "http")
             (or (aget "Host" headers)
                 (to-string (InetAddress-net (sock.address))))
             target
             (sock.address))))
         (body-reader
          (cond
           (content-length
            (open-buffered-reader
             (delimit-reader reader content-length)))
           (chunked?
            (open-buffered-reader
             (open-chunked-reader reader)))
           (else
            (open-buffered-reader '#u8())))))
    (Request url proto method headers body-reader
             (sock.peer-address)
             log)))

(defstruct response-handler
  ((ctx              :- RequestContext)
   (acted            :- :symbol)
   (proto            :- :string)
   (request-headers  :- :list)
   (response-headers :- :list)
   (redirect         :- :procedure)
   (chunked          :- Writer)
   (compressed       :- Writer))
  final: #t)

(def (new-response-handler (ctx      : RequestContext)
                           (url      : URL)
                           (headers  : :list)
                           (redirect : :procedure))
  => ResponseHandler
  (ResponseHandler
   (response-handler ctx #f "HTTP/1.1" headers
                     [["Connection" . "close"]]
                     redirect #f #f)))

(def (response-handler-check-act! (self : response-handler) (how : :symbol))
  => :void
  (when self.acted
    (raise-io-error response-handler-act! "already acted on output"
                    acted: self.acted requested: how)))

(def (response-handler-act! (self : response-handler) (how : :symbol))
  => :void
  (response-handler-check-act! self how)1
  (set! self.acted how))

(def compress-threshold 4096)

(implement ResponseHandler response-handler
  (write!
   (lambda (self status headers body)
     (response-handler-act! self 'write!)
     (let* ((body-length (u8vector-length body))
            (compress-method
             (cond
              ((fx<= body-length compress-threshold)
               #f)
              ((aget "Accept-Encoding" self.request-headers)
               => (lambda (accept-encoding)
                    (cond
                     ((string-contains accept-encoding "gzip")
                      "gzip")
                     ((string-contains accept-encoding "deflate")
                      "deflate")
                     (else #f))))
              (else #f))))
       (write-status-line! self.ctx.writer self.proto status.code status.text)
       (write-headers! self.ctx.writer self.response-headers)
       (when (fx> body-length 0)
         (if compress-method
           (begin
             (write-header! self.ctx.writer
                            "Transfer-Encoding"
                            "chunked")
             (write-header! self.ctx.writer
                            "Content-Encoding"
                            compress-method))
           (begin
             (write-header! self.ctx.writer
                            "Content-Length"
                            (number->string (u8vector-length body)))
             (write-header! self.ctx.writer
                            "Content-Encoding"
                            "identity"))))
     (write-headers! self.ctx.writer headers)
     (write-newline! self.ctx.writer)
     (when (fx> body-length 0)
       (if compress-method
         (let* ((chunked
                 (open-chunked-writer self.ctx.writer))
                (compressed
                 (if (equal? compress-method "gzip")
                   (open-deflate-gz-writer chunked)
                   (open-deflate-writer chunked))))
           (unwind-protect
             (Writer-write compressed body)
             (unwind-protect
               (Closer-close compressed)
               (Closer-close chunked))))
         (self.ctx.writer.write body)))
     (self.ctx.writer.close))))
  (begin!
   (lambda (self status headers)
     (response-handler-act! self 'begin!)
     (let* ((accept-encoding
             (aget "Accept-Encoding" self.request-headers))
            (compress-method
             (and accept-encoding
                  (cond
                   ((string-contains accept-encoding "gzip")
                    "gzip")
                   ((string-contains accept-encoding "deflate")
                    "deflate")
                   (else #f)))))
       (write-status-line! self.ctx.writer self.proto status.code status.text)
       (write-headers! self.ctx.writer self.response-headers)
       (write-header! self.ctx.writer
                      "Transfer-Encoding"
                      "chunked")
       (if compress-method
         (write-header! self.ctx.writer
                        "Content-Encoding"
                        compress-method)
         (write-header! self.ctx.writer
                        "Content-Encoding"
                        "identity"))
       (write-headers! self.ctx.writer headers)
       (write-newline! self.ctx.writer)
       (self.ctx.writer.flush)
       (let* ((chunked
               (open-chunked-writer self.ctx.writer))
              (compressed
               (cond
                ((equal? compress-method "gzip")
                 (open-deflate-gz-writer chunked flush: #t))
                ((equal? compress-method "deflate")
                 (open-deflate-writer chunked flush: #t))
                (else #f))))
         (set! self.chunked chunked)
         (set! self.compressed compressed)
         (open-buffered-writer
          (or compressed chunked))))))
  (redirect!
   (lambda (self url headers)
     (response-handler-check-act! self 'redirect!)
     (self.redirect url headers)))
  (upgrade!
   (lambda (self headers)
     (response-handler-act! self 'upgrade!)
     (using (status Switching-Protocols : Status)
       (write-status-line! self.ctx.writer self.proto status.code status.text)
       (write-header! self.ctx.writer "Connection" "upgrade")
       (write-headers! self.ctx.writer headers)
       (write-newline! self.ctx.writer)
       (self.ctx.writer.flush)
       self.ctx)))
  (proxy!
   (lambda (self)
     self.ctx)))

(implement Closer response-handler
  (close
   (lambda (self)
     (when self.compressed
       (self.compressed.close))
     (when self.chunked
       (self.chunked.close))
     (self.ctx.writer.close))))
