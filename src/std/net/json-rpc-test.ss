;;; -*- Gerbil -*-
;;; std/net/json-rpc unit-test

(import :std/encoding/json
        :std/io
        :std/iter
        :std/log
        :std/log/level
        :std/net/http/server
        :std/net/http/client
        :std/net/json-rpc
        :std/test)
(export json-rpc-test test-setup! test-cleanup!)

(deflogger log
  name: "/net/json-rpc"
  level: DEBUG)

(def log-dir
  (make-temporary-file-name "log."))

(def server-address
  "127.0.0.1:19998")
(def server-listen-address
  (string-append "inet4:" server-address))
(def server-url
  (string-append "http://" server-address))

(def (json-rpc-test-processor method params)
  (case method
    (("ping") ["pong" params])
    (("add") (apply + params))
    (else (raise (method-not-found method)))))

(def server
  (delay
    (new-http-server
     (ServerConfig
      mux: (new-static-mux
            path: "/json-rpc-test" (json-rpc-handler json-rpc-test-processor))
      log: (stderr-log-sink)
      listen: [server-listen-address]))))

(def (test-setup!)
  (add-system-sink! (stderr-log-sink))
  (create-directory log-dir)
  (using (server (force server) : Server)
    (server.start!)))

(def (test-cleanup!)
  (using (server (force server) : Server)
    (server.stop!))
  (delete-file-or-directory log-dir #t))

(def json-rpc-test
  (test-suite "json-rpc test"
    (def url (string-append server-url "/json-rpc-test"))
    (force server)
    (def (query . args)
      (apply json-rpc url args))
    (def (this-json-rpc-error? number)
      (lambda (e) (and (JSON-RPCError? e) (equal? (JSON-RPCError-code e) number))))
    (def (test-basic-handlers http-method)
      (def (q . a) (apply query http-method: http-method a))
      (defrule (check-e args ... code) (check-exception (q args ...) (this-json-rpc-error? code)))
      (check-function q
         "ping" '(42) => '("pong" (42))
         "add" '(1 2 3 4) => 10
         "add" '("23" "19")
                param-encoder: (cut map string->number <>)
                result-decoder: number->string => "42")
      (check-e "ping" 42 -32602) ;; invalid-params
      (check-e "meaning-of-life" -32601)) ;; method-not-found
    (test-case "basic handlers with POST"
      (test-basic-handlers 'POST)
      (check-exception (query 42 http-method: 'POST) (this-json-rpc-error? -32600))) ;; invalid-request
    (test-case "basic handlers with GET"
      (test-basic-handlers 'GET)
      (check-exception (query 42 http-method: 'GET) true)) ;; can't uri-encode number 42
    (test-case "encode params"
      (check (json->string
              (json-rpc-request jsonrpc: json-rpc-version
                                method: "foo" params: [42 "hello"] id: 13))
             => "{\"jsonrpc\":\"2.0\",\"method\":\"foo\",\"params\":[42,\"hello\"],\"id\":13}"))
    (test-case "decode result"
      (check (decode-json-rpc-response
              1+ 69 (string->json "{\"jsonrpc\": \"2.0\", \"result\": 1776, \"id\": 69}"))
             => 1777))
    (test-case "error matching"
      (check (match (JSON-RPCError code: -151 message: "foo" data: [1])
               ((JSON-RPCError code: -151 message: "foo" data: [1]) #t)
               (else #f)) => #t)
      (check (match (JSON-RPCError code: -151 message: "foo")
               ((JSON-RPCError code: -151 message: "foo" data: #!void) #t)
               (else #f)) => #t))
    (test-case "decode errors"
      (def response-json-1
        (string->json "{\"jsonrpc\": \"2.0\", \"error\": { \"code\": -151, \"message\": \"foo\", \"data\": [1] }, \"id\": 42 }"))
      (check-exception (decode-json-rpc-response 1+ 42 response-json-1)
                       (match <> ((JSON-RPCError code: -151 message: "foo" data: [1]) #t) (else #f)))
      (def response-json-2
        (string->json "{\"jsonrpc\": \"2.0\", \"id\": 15 , \"error\": { \"code\": -32602, \"message\": \"non-array args\"}}\n"))
      (check-exception (decode-json-rpc-response 1+ 15 response-json-2)
                       (match <> ((JSON-RPCError code: -32602 message: "non-array args") #t) (else #f)))
      (def response-json-3
        (string->json "{\"jsonrpc\": \"2.0\", \"error\": 1776, \"id\": 42 }"))
      (check-exception (decode-json-rpc-response 1+ 42 response-json-3) MalformedResponse?)
      (def response-json-4
        (string->json "{\"jsonrpc\": \"2.0\", \"error\":  { \"code\": -1, \"message\": \"foo\" }, \"id\": 41 }"))
      (check-exception (decode-json-rpc-response 1+ 42 response-json-4) MalformedResponse?))))
