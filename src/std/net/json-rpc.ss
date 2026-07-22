;;; -*- Gerbil -*-
;;; © fare
;;; JSON RPC interfaces

;; Support for JSON RPC 2.0 -- https://www.jsonrpc.org/specification
;; JSON RPC over HTTP (historical): https://www.jsonrpc.org/historical/json-rpc-over-http.html
;; See also https://www.simple-is-better.org/json-rpc/transport_http.html#get-request
;; In practice, we try to support existing clients and servers,
;; that don't follow various subsets of the specification
;; (especially the HTTP spec, but many clients and servers only do 1.0, 1.1 or 1.2)
;; so we are not too strict in our checking.

(export
  ;; Main user-visible functions
  json-rpc json-rpc-handler serve-json-rpc

  ;; Error handling
  json-rpc-error JSON-RPCError-code JSON-RPCError-message JSON-RPCError-data
  json-rpc-version
  json-rpc-request json-rpc-request? json-rpc-request::t
  json-rpc-response json-rpc-response? json-rpc-response::t
  parser-error invalid-request method-not-found invalid-params internal-error
  application-error system-error transport-error
  JSON-RPCError JSON-RPCError?
  MalformedRequest MalformedRequest?
  MalformedResponse MalformedResponse?
  decode-json-rpc-response)

(import
  :std/encoding/base64
  :std/encoding/json
  :std/encoding/json/util
  :std/error
  :std/interface
  :std/io
  :std/list/walist
  :std/log
  (only-in :std/net/http/client http-post http-get Request-content)
  :std/net/http/server/handlers/closure
  :std/net/http/server/interface
  :std/net/http/server/request
  :std/net/http/server/status
  :std/sync/atom
  :std/net/ssl
  :std/net/uri
  :std/net/url)

(deferror-class (JSON-RPCError IOError)
  ((code : :fixnum)                     ; SInt16
   (message : :string)                  ; String
   (data (void)))                       ; JSON
  #f
  (lambda (self code: code message: message data: (data (void))
           irritants: (irritants []) where: (where 'json-rpc))
    (class-instance-init! self 'code: code 'message: message
                          'data: data 'irritants: irritants 'where: where)))
(def json-rpc-error make-JSON-RPCError)

(defmethod {:json JSON-RPCError}
  (lambda (self)
    (walist [["code" :: (@ self code)]["message" :: (@ self message)]["data" :: (@ self data)]])))
(def json->json-rpc-error-defaults
  (hash (data (void)) (continuation #f) (where #f) (irritants '())))
(def (json->json-rpc-error json)
  (trivial-json->object JSON-RPCError::t json json->json-rpc-error-defaults))

(def json-rpc-version "2.0")

(defclass (json-rpc-request)
  (;; String, must be the same as json-rpc-version ("2.0"), can be undefined under version 1.0
   jsonrpc ;; String, but we're not going to second-guess people using "extensions"
   method  ;; JSON, array (arguments by position) or object (arguments by name)
   params  ;; JSON, MUST be an number, a string, or JSON null aka Scheme (void).
   id))    ;; SHOULD be an integer if a number. (void) if no response is required.

(defclass (json-rpc-response)
  ;; Note: a 2.0 server MUST include only one of result or error.
  ;; But a 1.0 or 1.1 server may leave the other null.
  (jsonrpc ;; String, must be the same as json-rpc-version ("2.0")
   result  ;; JSON, JSON null (Scheme void) if there is an error
   error   ;; JSON, JSON null (Scheme void) if there is no error
   id))    ;; JSON, MUST be the same as provided in the request.

;; All four fields are optional (see constructor above); used by decode-json-rpc-response.
(def json-rpc-response-json-defaults
  (hash (jsonrpc (void)) (result (void)) (error (void)) (id (void))))

(deflogger log
  name: "/net/json-rpc")

;; Global counter to correlate responses and answers in logs.
(def id-counter (AtomicCounter))

;; These functions construct error results to be returned by the json-rpc server to the client.
;; Beware: DO NOT LEAK internal information in such externally returned error messages.
;; Publish only what you must for the user's sake,
;; make sure any secrets are wrapped in structures, accessors and printers that won't leak them.
;; Log what you need, generate a reference as appropriate and include it in the message.
(def (parser-error (e (void)))
  (json-rpc-error code: -32700 data: e
                  message: "An error occurred on the server while parsing the JSON text."))
(def (invalid-request (e (void)))
  (json-rpc-error code: -32600 message: "The JSON sent is not a valid Request object." data: e))
(def (method-not-found (e (void)))
  (json-rpc-error code: -32601 message: "The method does not exist / is not available." data: e))
(def (invalid-params (e (void)))
  (json-rpc-error code: -32602 message: "Invalid method parameter(s)." data: e))
(def (internal-error (e (void)))
  (json-rpc-error code: -32603 message: "Internal JSON-RPC error." data: e))
(def (application-error m (e (void)))
  (json-rpc-error code: -32500 message: m data: e))
(def (system-error m (e (void)))
  (json-rpc-error code: -32400 message: m data: e))
(def (transport-error m (e (void)))
  (json-rpc-error code: -32300 message: m data: e))

(deferror-class (MalformedRequest Error) (method params message)
  #f
  class-instance-init!)
(deferror-class (MalformedResponse Error) (request-id response message)
  #f
  class-instance-init!)

(def (bytes->json b) (u8vector->json b default-json-read-options))
(def (json->bytes j) (json->u8vector j default-json-write-options))

;;; Client code
;; TODO: implement timeouts, with semi-asynchronous shutdown of the http-post thread itself.
(def (json-rpc server-url method (params (void))
               headers: (headers '())
               ssl-context: (ssl-context (default-client-ssl-context))
               result-decoder: (result-decoder identity)
               param-encoder: (param-encoder identity)
               http-method: (http-method 'POST))
  (def id (increment-atomic-counter! id-counter))
  (def encoded-params (param-encoder params))
  (log.info "JSON RPC request issued" server: server-url method: method params: encoded-params id: id)
  (def response-bytes
    (Request-content
     (case http-method
       ((POST) ;; POST is the recommended http-method, and the only one supported by many servers.
        (let (body
              (try (json->bytes
                    (json-rpc-request jsonrpc: json-rpc-version
                                      method: method params: encoded-params id: id))
                   (catch (e)
                     (raise/context
                      (MalformedRequest method: method params: encoded-params
                                        message: (error-message e))))))
          (http-post server-url
                     headers: headers
                     ssl-context: ssl-context
                     body: body)))
       ;; NB: the GET http-method is strongly disrecommended:
       ;; It is only supported by few servers,
       ;; only appropriate for calls to safe and idempotent methods
       ;; that may or may not be cached on the way to the actual server,
       ;; when the encoded parameters lead to a URI length too long (> 255 bytes ?)
       ;; for the caches and proxies sitting between client and server.
       ((GET)
        (set! id (number->string id)) ;; GET method wants string id.
        (let* ((base64-params
                (try (base64-encode (json->bytes encoded-params))
                     (catch (e)
                       (raise/context (MalformedRequest
                                       method: method params: params
                                        message: (error-message e))))))
               (uri-params
                `(("jsonrpc" .,json-rpc-version)
                  ("method" .,method)
                  ("params" .,base64-params)
                  ("id" .,id)))
               (url (URL-with-query
                     (as-url server-url)
                     uri-params)))
          (http-get url
                    headers: headers
                    ssl-context: ssl-context)))
       (else (raise-bad-argument json-rpc "http method: invalid" http-method)))))
  (def response-json
    (try
     (bytes->json response-bytes) ;; todo: move to decode-json-rpc-response ?
     (catch (e)
       (raise/context
        (MalformedResponse request-id: id response: response-bytes
                           message: (error-message e))))))
  (log.info "JSON RPC response received" server: server-url id: id
            response: (bytes->string response-bytes))
  (decode-json-rpc-response
   result-decoder
   id
   response-json))

(def (decode-json-rpc-response decoder request-id response-json)
  (def (mal! e)
    (raise/context
     (MalformedResponse request-id: request-id response: response-json
                        message: (if (string? e) e (error-message e)))))
  (def response (with-catch mal! (cut trivial-json->object json-rpc-response::t response-json json-rpc-response-json-defaults)))
  (def jsonrpc (@ response jsonrpc))
  (def result (@ response result))
  (def error (@ response error))
  (def id (@ response id))
  (unless (or (void? jsonrpc) ;; a 1.0 server might fail to include this field
              (equal? jsonrpc json-rpc-version)) ;; but a recent server must reply with same version
    (mal! "bad json_rpc_version"))
  (unless (or (void? result) (void? error))
    (mal! "result error conflict"))
  (unless (equal? id request-id)
    (mal! "bad id"))
  (if (void? error)
    (with-catch mal! (cut decoder result))
    (raise/context
     (with-catch mal! (cut json->json-rpc-error error)))))

;;; Server code

;; http handler for json-rpc
;; NB: This will catch any exception raised and convert it into an error notified to the client.
(def (json-rpc-handler (request-processor : :procedure))
  (new-closure-handler (cut json-rpc-handler/main <> <> request-processor)))

(def (json-rpc-handler/main (req : Request) (res : ResponseHandler) (processor : :procedure))
  ;; NB: the JSON RPC over HTTP says that the client MUST specify
  ;; application/json-rpc (preferably) or else application/json or application/jsonrequest
  ;; in a Content-Type header, and MUST specify an Accept header with one (or many) of them
  ;; and that a Content-Length header MUST be present... but frankly, no one bothers,
  ;; and enforcing any of it would make the server needlessly incompatible with clients,
  ;; so we don't bother either.
  (deflogger-macros req.log "/net/json-rpc")
  (case req.method
    (("POST") (json-rpc-handler/POST req res processor)) ;; preferred method
    (("GET") (json-rpc-handler/GET req res processor)) ;; mostly for testing
    (else
     (req.log.debug "Bad http method" where: 'json-rpc-handler method: req.method)
     (using (handler Bad-Request : RequestHandler)
       (handler.handle-request! req res)))))

(def (json-rpc-handler/POST (req : Request) (res : ResponseHandler) (processor : :procedure))
  (let/cc return
    (def request-u8vector (read-all-from-reader req.body))
    (def request-json
      (try
       (bytes->json request-u8vector)
       (catch (_)
         (json-rpc-handler/response
          req res 'BAD-POST
          (walist [["jsonrpc" . json-rpc-version]["error" :: (parser-error)]]))
         (return))))
    (json-rpc-handler/JSON req res processor request-json)))

(def (json-rpc-handler/GET (req : Request) (res : ResponseHandler) (processor : :procedure))
  (let/cc return
    (def request-json
      (try
       (def url-params (form-url-decode req.url.query))
       (def method (aget "method" url-params (void)))
       (unless method (raise 'parser-error))
       (def params (bytes->json
                    (base64-decode
                     (uri-decode (aget "params" url-params)))))
       (defrule (wacons* k v w) (wacons w k v))
       (defrule (maybe-wacons* name val rest)
         (if val (wacons* name val rest) rest))
       (maybe-wacons* "jsonrpc" (aget "jsonrpc" url-params)
         (wacons* "method" method
           (wacons* "params" params
             (maybe-wacons* "id" (aget "id" url-params)
               (wanull)))))
       (catch (_)
         (json-rpc-handler/response
          req res 'BAD-GET (walist [["jsonrpc" . json-rpc-version]["error" :: (parser-error)]]))
         (return))))
    (json-rpc-handler/JSON req res processor request-json)))

(def (json-rpc-handler/JSON req res processor request-json)
  (json-rpc-handler/response req res request-json (serve-json-rpc processor request-json)))

;; The processor either returns a JSON object, or raise a json-rpc-error
;; Any other error raised will cause an internal error.
;; This function can conceivably be called over a transport other than HTTP.
(def (serve-json-rpc processor request-json)
  (let/cc return
    (def jsonrpc (waref request-json "jsonrpc" (void)))
    (def id (waref request-json "id" (void)))
    (def (return-error e) (return (walist [["jsonrpc" . jsonrpc] ["error" . e] ["id" . id]])))
    (def (invalid-req) (return-error (invalid-request)))
    (for-each (lambda (kv) (unless (member (car kv) '("jsonrpc" "method" "params" "id")) (invalid-req)))
              (walist->list request-json))
    (unless (member jsonrpc '(#!void "1.0" "2.0")) (set! jsonrpc json-rpc-version) (invalid-req))
    (def method (waref request-json "method" (void)))
    (unless (string? method) (invalid-req))
    (def params (waref request-json "params" (void)))
    (unless (or (list? params) (AList? params) (void? params)) (return-error (invalid-params)))
    (def notification? (not (wakey? request-json "id")))
    (unless (or (string? id) (number? id) (void? id)) (invalid-req))
    (try
     ;; TODO: either log here, or define parameters that the processor can use to log context.
     ;; Use hash so only one of result: or error: shall be printed
     (def result (processor method params))
     (if notification? (void) (walist [["jsonrpc" . jsonrpc]["id" . id]["result" . result]]))
     (catch (e) (return-error (if (JSON-RPCError? e) e (internal-error (error-message e))))))))

(def (json-rpc-handler/response
      (req : Request)
      (res : ResponseHandler)
      request-json
      response-json)
  (let/cc return
    (deflogger-macros req.log "/net/json-rpc")
    (def response-u8vector
      (try
       (json->u8vector response-json)
       (catch (e)
         (req.log.error "Bad JSON Response" where: 'json-rpc-handler request: request-json
                        exception: (call-with-output-string "" (cut display-exception e <>)))
         (using (handler Internal-Server-Error : RequestHandler)
           (handler.handle-request! req res))
         (return))))
    (req.log.info "JSON RPC request handled" request: request-json response: response-json)
    (res.write! OK `(("Content-Type" . "text/json-rpc")) response-u8vector)))
