;;; -*- Gerbil -*-
;;; © vyzo
;;; SOCKS v4/4a/5 server
(import :std/error
        :std/io
        :std/io/bio/buffer
        :std/log
        :std/net/address
        :std/net/address/types
        :std/time/timeout)
(export start-socks-server! stop-socks-server!
        (struct-out SocksServer))

(deflogger log name: "/net/socks")

(def default-connect-timeout (IOTimeout 3))
(def proxy-io-timeout (IOTimeout 30))

(defstruct SocksServer
  ((sock   : ServerSocket)
   (thread : :thread)))

(def (start-socks-server! (addr : InetAddress)
                          allow-bind: (allow-bind? #f))
  => SocksServer
  (let* ((sock (tcp-listen addr))
         (thread
          (spawn/group 'socks-server (cut socks-server sock allow-bind?))))
    (SocksServer sock thread)))

(def (stop-socks-server! (server : SocksServer))
  => :void
  (ignore-errors (server.sock.close))
  (thread-join! server.thread))

(def (socks-server (sock : ServerSocket) allow-bind?)
  (def (loop)
    (let (cli (sock.accept))
      (spawn/name 'socks-request-handler
        (cut socks-request-handler cli allow-bind?))
      (loop)))

  (let again ()
    (try
     (loop)
     (catch (Closed? e)
       #!void)
     (catch (e)
       (log.debug "error accepting connection"
                  exception: (exception->string e))
       (again)))))

(def (socks-request-handler (sock : StreamSocket) allow-bind?)
  (using ((reader (open-buffered-reader (sock.reader) 384) : BufferedReader)
          (writer (open-buffered-writer (sock.writer) 384) : BufferedWriter))
    (let (vn (reader.read-u8!))
      (try
       (case vn
         ((4) (socks4-request-handler sock reader writer allow-bind?))
         ((5) (socks5-request-handler sock reader writer allow-bind?))
         (else
          (log.debug "SOCKS request for unknown protocol version"
                     peer: (sock.peer-address)
                     version: vn)))
       (catch (e)
         (ignore-errors (buffer-detach! reader))
         (ignore-errors (buffer-detach! writer))
         (ignore-errors (sock.close)))))))

(def (socks4-request-handler (sock   : StreamSocket)
                             (reader : BufferedReader)
                             (writer : BufferedWriter)
                             allow-bind?)
  (def (reject! msg e)
    (log.debug msg
               peer: (sock.peer-address)
               exception: (exception->string e))
    (writer.write-u8 0)
    (writer.write-u8 91)
    (writer.write '#u8(0 0 0 0 0 0))
    (writer.close)
    (raise e))

  (let (cmd (reader.read-u8!))
    (case cmd
      ((1)                            ; CONNECT
       (try
        (socks4-connect sock reader writer)
        (catch (e)
          (reject! "SOCKS4 connect failed" e))))
      ((2)                            ; BIND
       (if allow-bind?
         (try
          (socks4-bind sock reader writer)
          (catch (e)
            (reject! "SOCKS4 bind failed" e)))
         (begin
           (reject! "SOCKS4 bind request rejected"
                    (IOError "binding request rejected")))))
      (else
       (reject! "SOCKS4 request with unknown command"
                (IOError "unknown command"))))))

(def (socks4-connect (sock   : StreamSocket)
                     (reader : BufferedReader)
                     (writer : BufferedWriter))
  (let* ((port (reader.read-u16))
         (host (make-u8vector 4))
         (_ (reader.read host 0 4 4)))

    (def (accept! host port)
      (writer.write-u8 0)
      (writer.write-u8 90)
      (writer.write-u16 port)
      (writer.write host)
      (writer.flush))

    (cond
     ((equal? host '#u8(0 0 0 1))       ; SOCKS4a bit
      (let lp ((rd 0))                  ; skip USERID
        (if (fx< rd 255)
          (when (not (fx= (reader.read-u8!) 0))
            (lp (fx+ rd 1)))
          (raise-io-error socks4-connect "userid too long")))
      (let lp ((bytes []) (rd 0))       ; read DOMAINNAME
        (if (fx< rd 255)
          (let (next (reader.read-u8!))
            (if (fx= next 0)
              (let* ((host (list->u8vector (reverse! bytes)))
                     (host (utf8->string host))
                     (resolved (resolve->endpoint (DNSAddress host port))))
                (when (sensitive-host? (InetAddress-net resolved))
                  (raise-io-error socks4-connect "attempt to connect to local host"))
                (using (proxy-sock (tcp-connect resolved default-connect-timeout) : StreamSocket)
                  (let* ((peer-address (proxy-sock.peer-address))
                         (host (IPAddress-bytes (InetAddress-net peer-address)))
                         (port (InetAddress-port peer-address)))
                    (accept! host port))
                  (socks-proxy-pump sock proxy-sock reader writer)))
              (lp (cons next bytes) (fx+ rd 1)))))))
     ((sensitive-host? host)
      (raise-io-error socks4-connect "attempt to connect to local host"))
     (else
      (let (proxy-sock (tcp-connect (InetAddress (IP4Address host) port) default-connect-timeout))
        (accept! host port)
        (socks-proxy-pump sock proxy-sock reader writer))))))

(def (socks-proxy-pump (in      : StreamSocket)
                       (out     : StreamSocket)
                       (reader  : BufferedReader)
                       (writer  : BufferedWriter))
  ;; there may be some data we ignore in the reader, we need to drain
  ;; before detaching
  (when (fx> (reader.available) 0)
    (reader.skip (reader.available)))
  (buffer-detach! reader)
  (buffer-detach! writer)
  (in.set-input-timeout! proxy-io-timeout)
  (in.set-output-timeout! proxy-io-timeout)
  (out.set-input-timeout! proxy-io-timeout)
  (out.set-output-timeout! proxy-io-timeout)
  (spawn/name 'socks-proxy-io (cut socks-proxy-io (in.reader) (out.writer)))
  (spawn/name 'socks-proxy-io (cut socks-proxy-io (out.reader) (in.writer))))

(def (socks-proxy-io (reader : Reader)
                     (writer : Writer))
  (try
   (io-copy! reader writer)
   (catch (e)
     (log.debug "proxy io error"
                error: (error-message e)))
   (finally
    (ignore-errors (reader.close))
    (ignore-errors (writer.close)))))

(def (socks4-bind (sock   : StreamSocket)
                  (reader : BufferedReader)
                  (writer : BufferedWriter))
  (def (accept! host port)
    (writer.write-u8 0)
    (writer.write-u8 90)
    (writer.write-u16 port)
    (writer.write host)
    (writer.flush))

  (let* ((port (reader.read-u16))
         (host (make-u8vector 4))
         (_ (reader.read host 0 4 4)))
    (cond
     ((not (fx= port 0))
      (raise-io-error socks4-bind "bad port binding" port))
     ((not (equal? host (IPAddress-bytes inaddr-any4)))
      (raise-io-error socks4-bind "bad host binding" host))
     (else
      (using (srv-sock (tcp-listen (InetAddress inaddr-any4 0) backlog: 1) : ServerSocket)
        (let* ((binding-address (srv-sock.address))
               (host (IPAddress-bytes (InetAddress-net binding-address)))
               (port (InetAddress-port  binding-address)))
          (accept! host port)
          (try
           (using (proxy-sock (srv-sock.accept) : StreamSocket)
             (let* ((binding-address (proxy-sock.peer-address))
                    (host (IPAddress-bytes (InetAddress-net binding-address)))
                    (port (InetAddress-port binding-address)))
               (accept! host port)
               (socks-proxy-pump sock proxy-sock reader writer)))
           (finally
            (srv-sock.close)))))))))

(def (socks5-request-handler (sock   : StreamSocket)
                             (reader : BufferedReader)
                             (writer : BufferedWriter)
                             allow-bind?)
  (def (reject! msg e)
    (log.debug msg
               peer: (sock.peer-address)
               exception: (exception->string e))
    (writer.write-u8 5)
     (writer.write-u8 1)
     (writer.write '#u8(0 0 0 0 0 0 0 0))
     (writer.close)
     (raise e))

  (socks5-handshake sock reader writer)
  (let (vn (reader.read-u8!))
    (unless (fx= vn 5)
      (raise-io-error socks5-request-handler "bad socks protocol version"  vn)))
  (let (cmd (reader.read-u8!))
    (case cmd
      ((1)                              ; CONNECT
       (try
        (socks5-connect sock reader writer)
        (catch (e)
          (reject! "SOCKS5 connect failed" e))))
      ((2)                              ; BIND
       (if allow-bind?
         (try
          (socks5-bind sock reader writer)
          (catch (e)
            (reject! "SOCKS5 bind failed" e)))
         (begin
           (reject! "SOCKS5 bind request rejected"
                    (IOError "SOCKS5 bind request rejected")))))
      (else
       (reject! "SOCKS5 request with unknown command"
                (IOError "SOCKS5 request with unknown command"))))))

(def (socks5-handshake (sock   : StreamSocket)
                       (reader : BufferedReader)
                       (writer : BufferedWriter))
  (let (methods (reader.read-u8!))
    (let lp ((i 0) (accept? #f))
      (cond
       ((fx< i methods)
        (let (method (reader.read-u8!))
          (lp (fx+ i 1) (or accept? (fx= method 0)))))
       (accept?
        (writer.write-u8 5)
        (writer.write-u8 0)
        (writer.flush))
       (else
        (writer.write-u8 5)
        (writer.write-u8 #xff)
        (writer.flush)
        (raise-io-error socks5-handshake "no acceptable authentication method"))))))

(def (socks5-connect (sock   : StreamSocket)
                     (reader : BufferedReader)
                     (writer : BufferedWriter))
  (def (accept! host port)
    (writer.write-u8 5)
    (writer.write-u8 0)
    (writer.write-u8 0)
    (writer.write-u8
     (if (fx= (u8vector-length host) 4) 1 4))
    (writer.write host)
    (writer.write-u16 port)
    (writer.flush))

  (let* ((_ (reader.read-u8!))          ; RSV
         (atyp (reader.read-u8!)))      ; ATYP
    (case atyp
      ((1)                              ; IPv4
       (let* ((host (make-u8vector 4))
              (_ (reader.read host 0 4 4))
              (_ (when (sensitive-host? host)
                   (raise-io-error socks5-connect "attempt to connect to local host")))
              (port (reader.read-u16))
              (proxy-sock (tcp-connect (InetAddress (IP4Address host) port) default-connect-timeout)))
         (accept! host port)
         (socks-proxy-pump sock proxy-sock reader writer)))
      ((3)                              ; DOMAINNAME
       (let* ((len (reader.read-u8!))
              (host (make-u8vector len))
              (_ (reader.read host 0 len len))
              (host (utf8->string host))
              (port (reader.read-u16))
              (resolved (resolve->endpoint (DNSAddress host port))))
         (when (sensitive-host? (InetAddress-net resolved))
           (raise-io-error socks4-connect "attempt to connect to local host"))
         (using (proxy-sock (tcp-connect resolved default-connect-timeout) :- StreamSocket)
           (let* ((peer-address (proxy-sock.peer-address))
                  (host (IPAddress-bytes (InetAddress-net peer-address)))
                  (port (InetAddress-port peer-address)))
             (accept! host port)
             (socks-proxy-pump sock proxy-sock reader writer)))))
      ((4)                              ; IPv6
       (let* ((host (make-u8vector 16))
              (_ (reader.read host 0 16 16))
              (_ (when (sensitive-host? host)
                   (raise-io-error socks5-connect "attempt to connect to local host")))
              (port (reader.read-u16))
              (proxy-sock (tcp-connect (InetAddress (IP6Address host) port) default-connect-timeout)))
         (accept! host port)
         (socks-proxy-pump sock proxy-sock reader writer)))
      (else
       (raise-io-error socks4-connect "unknwon address type" atyp)))))

(def (socks5-bind (sock : StreamSocket)
                  (reader : BufferedReader)
                  (writer : BufferedWriter))
  (def (accept! host port)
    (writer.write-u8 5)
    (writer.write-u8 0)
    (writer.write-u8 0)
    (writer.write-u8
     (if (fx= (u8vector-length host) 4) 1 4))
    (writer.write host)
    (writer.write-u16 port)
    (writer.flush))

  (def (listen! host)
    (using (srv-sock (tcp-listen (InetAddress host 0) backlog: 1)
                     : ServerSocket)
      (let* ((binding-address (srv-sock.address))
             (host (IPAddress-bytes (InetAddress-net binding-address)))
             (port (InetAddress-port binding-address)))
        (accept! host port))
      (try
       (using (proxy-sock (srv-sock.accept) : StreamSocket)
         (let* ((binding-address (srv-sock.address))
                (host (IPAddress-bytes (InetAddress-net binding-address)))
                (port (InetAddress-port binding-address)))
           (accept! host port))
         (socks-proxy-pump sock proxy-sock reader writer))
       (finally
        (srv-sock.close)))))

  (def (check! host port expected-host)
    (unless (equal? host expected-host)
      (raise-io-error socks5-bind "bad host binding" host))
    (unless (equal? port 0)
      (raise-io-error socks5-bind "bad port binding" port)))

  (let* ((_ (reader.read-u8!))          ; RSV
         (atyp (reader.read-u8!)))      ; ATYP
    (case atyp
      ((1)                              ; IPv4
       (let* ((host (make-u8vector 4 0))
              (_ (reader.read host 0 4 4))
              (port (reader.read-u16)))
         (check! host port (IPAddress-bytes inaddr-any4))
         (listen! inaddr-any4)))
      ((4)                              ; IPv6
       (let* ((host (make-u8vector 16 0))
              (_ (reader.read host 0 16 16))
              (port (reader.read-u16)))
         (check! host port (IPAddress-bytes inaddr-any6))
         (listen! inaddr-any6)))
      (else
       (raise-io-error socks5-bind "bad binding" atyp)))))

(def (sensitive-host? ip)
  (cond
   ((IPAddress? ip)
    (sensitive-host? (IPAddress-bytes ip)))
   ((ip4-u8vector? ip)
    (fx= (u8vector-ref ip 0) 127))
   ((ip6-u8vector? ip)
    (equal? ip (IPAddress-bytes localhost6)))
   (else
    (BUG "unexpected ip" ip))))
