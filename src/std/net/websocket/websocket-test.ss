(import :std/test
        :std/net/http/server
        :std/net/address
        :std/log
        ./api
        ./socket)
(export websocket-test test-setup! test-cleanup!)

(def server #f)
(def server-address "127.0.0.1:29998")
(def listen-address (string-append "inet4:" server-address))

(def (test-setup!)
  (set! server
    (new-http-server
     (ServerConfig
      mux: (new-static-mux
            path: "/binary" (websocket-request-handler ws-echo car)
            path: "/text" (websocket-request-handler ws-echo))
      log: (stderr-log-sink)
      listen: [listen-address])))
  (using (server : Server)
    (server.start!)))

(def (test-cleanup!)
  (when server
    (using (server : Server)
      (server.stop!))
    (set! server #f)))

(def websocket-test
  (test-suite "websocket"
    (test-case "echo binary"
      (using (ws (websocket-connect (string-append "ws://" server-address "/binary")) : WebSocket)
        (let* ((payload '#u8(1 2 3))
               (expected (u8vector-copy payload)))
          (ws.send (BinaryMessage payload))
          (using (reply (ws.recv) : Message)
            (check (message-data reply) => expected)
            (check reply.type => +message-binary+))
          (ws.send (CloseMessage "goodbye"))
          (ws.close))))

    (test-case "echo text"
      (using (ws (websocket-connect (string-append "ws://" server-address "/text")) : WebSocket)
        (let* ((payload "hello")
               (expected (string->utf8 payload)))
          (ws.send (TextMessage payload))
          (using (reply (ws.recv) : Message)
            (check (message-data reply) => expected)
            (check reply.type => +message-text+))
          (ws.send (CloseMessage "goodbye"))
          (ws.close))))

    (test-case "select protocol"
      (using (ws (websocket-connect (string-append "ws://" server-address "/text")
                                    protocol: "proto-a,proto-b") : WebSocket)
        (check (ws.protocol) => "proto-a")
        (ws.send (CloseMessage "goodbye"))
        (ws.close)))))

(def (ws-echo ws)
  (using (ws : WebSocket)
    (let lp ()
      (using (next (ws.recv) : Message)
        (if (eq? next.type +message-close+)
          (ws.close)
          (begin
            (ws.send next)
            (lp)))))))