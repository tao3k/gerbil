;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket client interface
(import :std/error
        :std/io
        :std/net/url
        :std/net/ssl
        :std/net/http/client
        :std/crypto/random
        :std/crypto/digest
        :std/encoding/base64
        ./interface
        ./socket)
(export websocket-connect)

(def (websocket-connect (url              : :t)
                        redirect:         (redirect          : :boolean := #f)
                        headers:          (headers           : :list := [])
                        ssl-context:      (ssl-context       :~ SSL_CTX?                            :- :foreign := (default-client-ssl-context))
                        protocol:         (proto             :~ (lambda (p) (or (not p) (string? p))) :- :t       := #f)
                        max-frame-size:   (max-frame-size    : :fixnum := default-max-frame-size))
  => WebSocket
  (let* ((nonce (random-bytes 16))
         (nonce64 (base64-encode nonce))
         (headers [["Upgrade" . "websocket"]
                   ["Connection" . "Upgrade"]
                   ["Sec-Websocket-Key" . nonce64]
                   ["Sec-Websocket-Version" . +websocket-version+]
                   (if proto [["Sec-Websocket-Protocol" . proto]] []) ...
                   (or headers []) ...])
         (req (http-get url
                        headers: headers
                        follow-redirects: redirect
                        ssl-context: ssl-context)))
    (try
     (let (status (Request-status req))
       (unless (fx= status 101)
         (raise-io-error websocket-connect
                         "Unexpected server response"
                         url status (utf8->string (Request-content req)))))

     (let* ((rheaders (Request-headers req))
            (Sec-Websocket-Protocol (aget "Sec-Websocket-Protocol" rheaders))
            (accept64 (aget "Sec-Websocket-Accept" rheaders))
            (verify64 (base64-encode
                       (sha1 (string->utf8
                              (string-append nonce64 +websocket-magic+))))))
       (websocket-verify-headers! url rheaders)
       (unless (equal? accept64 verify64)
         (raise-io-error websocket-connect
                         "bad server response; nonce verification failure"
                         url nonce64 accept64 verify64))

       (when (and proto Sec-Websocket-Protocol)
         (let ((rproto Sec-Websocket-Protocol)
               (uprotos (string-split proto #\,)))
           (unless (member rproto uprotos)
             (raise-io-error websocket-connect
                             "bad server response; unexpected protocol"
                             url Sec-Websocket-Protocol))))

       (WebSocket (make-websocket (Request-sock req)
                                  (Request-reader req)
                                  (Request-writer req)
                                  #f    ; client socket
                                  Sec-Websocket-Protocol
                                  max-frame-size)))

     (catch (e)
       (Request-close req)
       (raise e)))))

(def (websocket-verify-headers! (url      : :t)
                                (rheaders : :list))
  => :void
  (let ((Connection (aget "Connection" rheaders))
        (Upgrade (aget "Upgrade" rheaders))
        (Sec-Websocket-Version (aget "Sec-Websocket-Version" rheaders)))
    (unless (and Connection (equal? (string-downcase Connection) "upgrade"))
      (raise-io-error websocket-connect
                      "bad server response; no connection upgrade"
                      url Connection))
    (unless (and Upgrade (equal? (string-downcase Upgrade) "websocket"))
      (raise-io-error websocket-connect
                      "bad server response; no websocket upgrade"
                      url Upgrade))
    (when Sec-Websocket-Version
      (raise-io-error websocket-connect
                      "bad server response; unsupported websocket version"
                      Sec-Websocket-Version))))
