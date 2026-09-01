;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS test
(import :std/test
        :std/io
        :std/log
        :std/net/address
        :std/net/http/client
        ./api)
(export socks-test test-setup! test-cleanup!)

(def server-address (InetAddress inaddr-any4 20001))
(def socks-server #f)

(def (test-setup!)
  (add-system-sink! (console-log-sink))
  (set! socks-server
    (start-socks-server! server-address allow-bind: #t)))

(def (test-cleanup!)
  (stop-socks-server! socks-server))

(def socks-test
  (test-suite "SOCKS"
    (test-case "SOCKS4 connect"
      (test-connect 'SOCKS4))
    (test-case "SOCKS4 bind"
      (test-bind 'SOCKS4))
    (test-case "SOCKS4a connect"
      (test-connect 'SOCKS4a))
    (test-case "SOCKS5 connect"
      (test-connect 'SOCKS5))
    (test-case "SOCKS5 bind"
      (test-bind 'SOCKS5))

    (test-case "proxy http request"
      (parameterize ((http-connect (socks-connect server-address)))
        (let (req (http-get "https://www.google.com"))
          (check (Request-status req) => 200)
          (Request-close req))))))

(def (test-connect proto)
  (def request
      (string->utf8
       "GET / HTTP/1.1\r\n\r\nUser-Agent: test\r\nConnection: close\r\nAccept: */*\r\n\r\n"))

  (let (socks (socks-proxy server-address proto))
    (check socks ? SOCKS?)
    (check (SOCKS-protocol socks) => proto)
    (let (sock (SOCKS-connect socks (DNSAddress "www.google.com" 80)))
      (check sock ? StreamSocket?)
      (check (StreamSocket-send sock request) => (u8vector-length request))
      (let (buf (make-u8vector 7))
        (check (StreamSocket-recv sock buf) => 7)
        (check (utf8->string buf) => "HTTP/1.")
        (StreamSocket-close sock)))))

(def (test-bind proto)
  (let (socks (socks-proxy server-address proto))
    (check socks ? SOCKS?)
    (check (SOCKS-protocol socks) => proto)
    (let (srv (SOCKS-bind socks))
      (check srv ? ServerSocket?)
      (let (sock1 (tcp-connect (ServerSocket-address srv)))
        (check sock1 ? StreamSocket?)
        (let (sock2 (ServerSocket-accept srv))
          (check sock2 ? StreamSocket)
          (check (StreamSocket-send sock1 (string->utf8 "hello")) => 5)
          (check (StreamSocket-send sock2 (string->utf8 "world")) => 5)
          (let (buf (make-u8vector 5))
            (check (StreamSocket-recv sock1 buf) => 5)
            (check (utf8->string buf) => "world"))
          (let (buf (make-u8vector 5))
            (check (StreamSocket-recv sock2 buf) => 5)
            (check (utf8->string buf) => "hello"))
          (StreamSocket-close sock1)
          (StreamSocket-close sock2))))))
