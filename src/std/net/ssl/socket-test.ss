;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Mutual TLS socket Reader and native error-queue regressions
(import :std/crypto/pkey
        :std/error
        :std/ffi
        :std/io
        :std/net/address
        :std/net/ssl
        :std/net/ssl/error-test-support
        (only-in :std/net/ssl/libssl
                 make-self-signed-tls-context
                 SSL_read
                 SSL_write
                 SSL_ERROR_WANT_READ)
        (only-in :std/net/ssl/socket ssl-socket-ssl)
        :std/test
        :std/time/timeout
        (only-in "../../io/socket/stream-test.ss" check-stream-reader-minimum))
(export ssl-reader-test
        ssl-error-test)

;; The native factory requires and verifies a certificate on both TLS peers.
(def (call-with-reader-tls-context (hostname : :string)
                                   (proc     : :procedure))
  => :void
  (using (key (generate-ed25519-key) :- PrivKey)
    (unwind-protect
      (let (ctx (check-pointer call-with-reader-tls-context
                               (make-self-signed-tls-context key.key hostname)))
        (unwind-protect
          (proc ctx)
          (foreign-release! ctx)))
      (foreign-release! key.key))))

(def (check-ssl-reader-minimum (chunks : :list)
                               (need   : :fixnum)
                               (eof?   : :boolean))
  => :void
  (call-with-reader-tls-context "reader-server.test"
    (lambda (server-ctx)
      (call-with-reader-tls-context "reader-client.test"
        (lambda (client-ctx)
          (using (listener (ssl-listen (string->address "inet4:127.0.0.1:0") server-ctx)
                           :- ServerSocket)
            (check-stream-reader-minimum
             listener
             (lambda ()
               (ssl-connect (listener.address)
                            timeout: (timeout->deadline 5)
                            context: client-ctx
                            host: "reader-server.test"))
             chunks need eof?)))))))

(def ssl-reader-test
  (test-suite "mutual TLS socket Reader minimum input"
    (test-case "tls short EOF"
      (check-ssl-reader-minimum [#u8(1 2 3 4 5 6 7)] 13 #t))
    (test-case "tls zero minimum at EOF"
      (check-ssl-reader-minimum [] 0 #t))
    (test-case "tls exact minimum with open peer"
      (check-ssl-reader-minimum [#u8(1 2 3 4 5 6 7)] 7 #f))
    (test-case "tls accumulated partial reads before EOF"
      (check-ssl-reader-minimum [#u8(1 2 3) #u8(4 5) #u8(6 7)] 13 #t))
    (test-case "tls accumulated exact minimum with open peer"
      (check-ssl-reader-minimum [#u8(1 2 3) #u8(4 5) #u8(6 7)] 7 #f))))

(def ssl-error-test
  (test-suite "TLS native error queue isolation"
    (test-case "stale errors do not poison healthy I/O or hide a real peer EOF"
      (unwind-protect
        (call-with-reader-tls-context "reader-server.test"
          (lambda (server-ctx)
            (call-with-reader-tls-context "reader-client.test"
              (lambda (client-ctx)
                (using (listener (ssl-listen (string->address "inet4:127.0.0.1:0") server-ctx)
                                 :- ServerSocket)
                  (let ((client #f) (server #f) (worker #f))
                    (unwind-protect
                      (begin
                        (listener.set-input-timeout! (timeout->deadline 5))
                        (set! worker
                          (spawn-thread
                           (lambda () (set! server (listener.accept)))
                           'ssl-error-peer))
                        (set! client
                          (ssl-connect (listener.address)
                                       timeout: (timeout->deadline 5)
                                       context: client-ctx
                                       host: "reader-server.test"))
                        ;; No other thread can touch TLS between queue seeding
                        ;; and the adjacent nonblocking native operation below.
                        (thread-join! worker 10)
                        (let ((client-ssl (ssl-socket-ssl (interface-instance-object client)))
                              (server-ssl (ssl-socket-ssl (interface-instance-object server)))
                              (output (make-u8vector 1 255))
                              (input #u8(42)))
                          (ssl-test-clear-errors!)
                          (check (SSL_read client-ssl output 0 1) => SSL_ERROR_WANT_READ)
                          (let (result
                                (begin
                                  (ssl-test-push-error! TEST_SSL_NEGOTIATION)
                                  (SSL_read client-ssl output 0 1)))
                            (check result => SSL_ERROR_WANT_READ))
                          (check (ssl-test-last-error) => 0)
                          (check output => #u8(255))
                          (let (result
                                (begin
                                  (ssl-test-push-error! TEST_SSL_NEGOTIATION)
                                  (SSL_write server-ssl input 0 1)))
                            (check result => 1))
                          (check (ssl-test-last-error) => 0)
                          (StreamSocket-set-input-timeout! client (timeout->deadline 5))
                          (check (StreamSocket-recv client output) => 1)
                          (check output => input)
                          ;; Closer closes TCP without sending TLS close_notify.
                          ;; A fresh native failure must still retain its code.
                          (Closer-close server)
                          (ssl-test-push-error! TEST_SSL_NEGOTIATION)
                          (let (failure
                                (with-catch values
                                  (lambda () (StreamSocket-recv client output))))
                            (check failure ? SSLError?)
                            (match (Error-irritants failure)
                              ([_ detail [r code last]]
                               (check (fx<= r 0) => #t)
                               (check code => TEST_SSL_ERROR_SSL)
                               (check (fx> last 0) => #t)
                               (check last => (ssl-test-last-error))
                               (check (string-suffix? "unexpected eof while reading" detail) => #t))))))
                      (when client (Closer-close client))
                      (listener.close)
                      (when worker
                        (unwind-protect
                          (thread-join! worker 10)
                          (when server (Closer-close server)))))))))))
        (ssl-test-clear-errors!)))))
