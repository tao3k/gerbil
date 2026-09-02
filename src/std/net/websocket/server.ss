;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket server interface
(import :std/io
        :std/net/http/server
        :std/crypto/digest
        :std/encoding/base64
        ./interface
        ./socket)
(export websocket-request-handler)

;; Creates an http server handler that handles ws/wss requests
;; - continue is a procedure that receives a newly accepted websocket to handle
;;   the request. When this process returns the handler closes the request.
;; - select-protocol is a procedure to select a protocol, if the client has specified
;;   a protocol list. It should accept a list of protocols and return either the
;;   selected protocol or #f if it cannot select a protocol, indicating that the
;;   connection should be closed. If unspecified, the first protocol the client
;;   offers is selected.
(def (websocket-request-handler (continue         : :procedure)
                                (select-protocol   : :procedure := default-select-protocol)
                                max-frame-size:    (max-frame-size : :fixnum := default-max-frame-size))
  => RequestHandler
  (new-closure-handler
   (lambda (req res)
     (websocket-handle-request req res continue select-protocol max-frame-size))))

;; default select-protocol: picks the first protocol the client offers
(def (default-select-protocol (protocols : :list)) => :t
  (car protocols))

(def (websocket-handle-request (req              :- Request)
                               (res              :- ResponseHandler)
                               (continue         :- :procedure)
                               (select-protocol  :- :procedure)
                               (max-frame-size   :- :fixnum))
  (def (bad-request! message)
    (res.write! Bad-Request
                [["Sec-Websocket-Version" . +websocket-version+]]
                (string->utf8 message))
    (raise 'bad-request))

  (let* ((request-headers req.headers)
         (version (aget "Sec-Websocket-Version" request-headers))
         (_ (unless (equal? version +websocket-version+)
               (bad-request! "unsupported websocket protocol version")))
         (request-proto (aget "Sec-Websocket-Protocol" request-headers))
         (proto
          (and request-proto
               (or (select-protocol (string-split request-proto #\,))
                   (bad-request! "unsupported websocket protocol"))))
         (nonce64 (aget "Sec-Websocket-Key" request-headers))
         (auth
          (and nonce64
               (base64-encode
                (sha1 (string->utf8 (string-append nonce64 +websocket-magic+))))))
         (upgrade-headers
          (let (headers [["Upgrade" . "websocket"]])
            (when auth
              (set! headers (cons ["Sec-Websocket-Accept" . auth] headers)))
            (when proto
              (set! headers (cons ["Sec-Websocket-Protocol" . proto] headers)))
            headers))
         (ctx (res.upgrade! upgrade-headers)))
    (using (ctx :- RequestContext)
      (continue
        (WebSocket (make-websocket ctx.sock ctx.reader ctx.writer
                                   #t    ; server socket
                                   proto
                                   max-frame-size))))))
