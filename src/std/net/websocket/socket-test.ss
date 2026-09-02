(import :std/test
        :std/error
        :std/io
        :std/net/address
        :std/crypto/random
        ./socket
        ./api)
(export test-setup! basic-socket-test test-cleanup!)

(def test-socket-path #f)
(def test-socket-addr #f)
(def server-socket #f)

(def (test-setup!)
  (set! test-socket-path (make-temporary-file-name "ws-test"))
  (set! test-socket-addr (UnixAddress test-socket-path))
  (let (srv (unix-listen test-socket-addr))
    (spawn (cut with-exception-stack-trace (cut basic-server srv)))
    (set! server-socket srv)))

(def (test-cleanup!)
  (when server-socket
    (using (server-socket : Closer)
      (server-socket.close)
      (set! server-socket #f))
    (delete-file test-socket-path)))

(def basic-socket-test
  (test-suite "raw websocket"
    (test-case "socket round-trip binary"
      (test-simple-roundtrip (BinaryMessage '#u8(1 2 3))))
    (test-case "socket round-trip text"
      (test-simple-roundtrip (TextMessage "abc")))
    (test-case "fragmentation and reassembly"
      (test-simple-roundtrip (BinaryMessage (random-bytes (expt 2 24)))
                             WebSocket-send-all
                             (cut WebSocket-recv-all <> (expt 2 25))))))

; Echo server
(def (basic-server srv)
  (using (srv : ServerSocket)
    (let accept ()
      (using ((ss (srv.accept) : StreamSocket)
              (ws (open-websocket ss #t) : WebSocket))
        (let echo ()
          (using (msg (ws.recv) : Message)
            (if  (eq? msg.type +message-close+)
              (begin
                (ws.close)
                (accept))
              (begin
                (ws.send msg)
                (echo)))))))))

(def (test-simple-roundtrip msg (send WebSocket-send) (recv WebSocket-recv))
  (using ((msg : Message)
          (s (unix-connect test-socket-addr) : StreamSocket)
          (ws (open-websocket s #f) : WebSocket))
    (def expected-data (u8vector-copy (message-data msg)))
    (def expected-type msg.type)

    (let ((sender (spawn send ws msg))
          (recver (spawn recv ws)))
      (using (reply (thread-join! recver) : Message)
        (check (message-data reply) => expected-data)
        (check reply.type => expected-type)))

    (ws.send (CloseMessage "goodbye"))
    (ws.close)))


(def (open-websocket ss server?)
  (using (ss : StreamSocket)
    (WebSocket
     (make-websocket ss
                     (open-buffered-reader (ss.reader))
                     (open-buffered-writer (ss.writer))
                     server?
                     'unix
                     default-max-frame-size))))
