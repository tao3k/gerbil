;;; -*- Gerbil -*-
;;; © vyzo
;;; Ensemble TLS hostname and mutual-certificate tests
(import :std/test
        :std/interface
        :std/error
        :std/crypto/pkey
        :std/encoding/base32
        :std/encoding/base58
        :std/net/ssl
        (only-in :std/net/ssl/socket ssl-socket ssl-socket-ssl with-ssl-socket-close)
        :std/sync/threads
        (only-in :std/net/ssl/error with-ssl-result ssl-local-error?)
        :std/net/ssl/error-test-support
        (only-in :std/net/ssl/libssl
                 make-self-signed-tls-context)
        :std/net/address
        (only-in :std/io/socket/types basic-socket-dev)
        (only-in :std/os/device device-close)
        :std/time/timeout
        :std/io
        ../ucan/did
        ./tls)
(export tls-context-test)

;; Each fixture owns its native keys and contexts. Sockets are closed by the
;; nested connection fixture before these resources are released.
(def (with-tls-contexts (proc : :procedure)) => :void
  (let ((key1 #f) (key2 #f) (ctx1 #f) (ctx2 #f))
    (unwind-protect
      (begin
        (set! key1 (generate-ed25519-key))
        (set! key2 (generate-ed25519-key))
        (set! ctx1 (make-tls-context key1))
        (set! ctx2 (make-tls-context key2))
        (proc key1 key2 ctx1 ctx2))
      (begin
        (when ctx2 (foreign-release! ctx2))
        (when ctx1 (foreign-release! ctx1))
        (when key2 (foreign-release! (PrivKey-key key2)))
        (when key1 (foreign-release! (PrivKey-key key1)))))))

;; Bind an ephemeral loopback port and accept concurrently with the client TLS
;; handshake. Capture worker errors so negative handshake tests remain controlled.
(def (with-tls-connection (server-context : :foreign) (client-context : :foreign)
                          (host : :string) (proc : :procedure)) => :void
  (let ((listener #f) (server #f) (client #f) (worker #f))
    (unwind-protect
      (begin
        (set! listener (ssl-listen (InetAddress localhost4 0) server-context))
        (ServerSocket-set-input-timeout! listener (IOTimeout 5))
        (set! worker
          (spawn
           (lambda ()
             (with-catch (lambda (e) [e])
               (lambda ()
                 (set! server (ServerSocket-accept listener))
                 (void))))))
        (set! client (ssl-connect (ServerSocket-address listener)
                                  context: client-context host: host timeout: (IOTimeout 5)))
        (let (result (thread-join! worker 10 'timeout))
          (when (eq? result 'timeout)
            (raise-timeout with-tls-connection "TLS accept timed out"))
          (when (pair? result)
            (raise (car result))))
        (for-each
          (lambda (sock)
            (StreamSocket-set-input-timeout! sock (IOTimeout 5))
            (StreamSocket-set-output-timeout! sock (IOTimeout 5)))
          [server client])
        (proc server client))
      (begin
        (when client (ignore-errors (Closer-close client)))
        (when listener (ignore-errors (Closer-close listener)))
        (when server (ignore-errors (Closer-close server)))
        (when worker
          (when (eq? (thread-join! worker 10 'timeout) 'timeout)
            (raise-timeout with-tls-connection "TLS accept did not stop after socket close")))
        ;; Accept may have published its socket after the first close pass.
        (when server (ignore-errors (Closer-close server)))))))

(def tls-context-test
  (test-suite "ensemble TLS"
    (test-case "shared SSL close boundary releases native state before propagating failure"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (for-each
          (lambda (plain?)
            (with-tls-connection ctx1 ctx2 (did->hostname (private-key->did key1))
              (lambda (server client)
                (using (socket (&interface-instance-object client) : ssl-socket)
                  (let* ((native socket.ssl)
                         (failure (Error "device close fixture"))
                         (released-at-handler? #f)
                         ;; Both production paths use this macro. Close the real
                         ;; device, then fail at its return boundary; no invalid fd.
                         (close (lambda ()
                                  (with-ssl-socket-close socket
                                    (device-close (basic-socket-dev socket))
                                    (raise failure)))))
                    (let (result
                          (if plain?
                            (let (worker (spawn-thread close 'ssl-close-failure))
                              (with-catch values (lambda () (thread-join!/error worker 8))))
                            (with-catch values
                              (lambda ()
                                (let (handler (current-exception-handler))
                                  (with-exception-handler
                                   (lambda (e)
                                     (set! released-at-handler? (foreign-released? native))
                                     (handler e))
                                   close))))))
                      (check (eq? result failure) => #t)
                      (unless plain? (check released-at-handler? => #t))
                      (check (foreign-released? native) => #t)
                      (check socket.ssl => #f)
                      ;; Reacquire the shared write lock after the failed close.
                      (Closer-close client)))))))
          [#f #t]))))

    (test-case "successful upgrade releases SSL after retained raw closure"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (let ((listener #f) (raw-client #f) (raw-server #f)
               (client #f) (server #f) (worker #f))
           (unwind-protect
             (begin
               (set! listener (tcp-listen (InetAddress localhost4 0)))
               (set! raw-client (tcp-connect (ServerSocket-address listener)))
               (set! raw-server (ServerSocket-accept listener))
               (set! worker
                 (spawn-thread
                  (lambda ()
                    (with-catch values
                      (lambda ()
                        (set! server (ssl-server-upgrade raw-server ctx1 timeout: (IOTimeout 5))))))))
               (set! client
                 (ssl-client-upgrade raw-client context: ctx2 timeout: (IOTimeout 5)
                                     host: (did->hostname (private-key->did key1))))
               (let (result (thread-join!/error worker 6 'timeout))
                 (when (eq? result 'timeout)
                   (raise-timeout tls-context-test "TLS upgrade timed out"))
                 (unless server
                   (raise result)))
               (let ((client-ssl (ssl-socket-ssl (&interface-instance-object client)))
                     (server-ssl (ssl-socket-ssl (&interface-instance-object server))))
                 (check (foreign-released? client-ssl) => #f)
                 ;; Deterministic late-upgrade attachment ordering: owner closed raw
                 ;; first, then setup closes the completed upgraded view.
                 (Closer-close raw-client)
                 (check-exception (TLS-peer-certificate client) Closed?)
                 (Closer-close client)
                 (check (foreign-released? client-ssl) => #t)
                 (Closer-close client)
                 ;; Concurrent raw closure and graceful SSL closure share the lock.
                 ;; Close raw before shutdown can wait for a TLS close-notify reply.
                 (Closer-close raw-server)
                 (set! worker (spawn-thread (lambda () (Closer-close server))))
                 (Writer-close (StreamSocket-writer server))
                 (thread-join!/error worker 3)
                 (check (foreign-released? server-ssl) => #t)
                 (Closer-close server)))
             (begin
               (when raw-client (Closer-close raw-client))
               (when raw-server (Closer-close raw-server))
               (when client (Closer-close client))
               (when worker (ignore-errors (thread-join!/error worker 6)))
               (when server (Closer-close server))
               (when listener (Closer-close listener))))))))

    (test-case "native malloc and INTERNAL wrapper are terminal without consuming the queue"
      (unwind-protect
        (begin
          (ssl-test-clear-errors!)
          (ssl-test-push-error! TEST_SSL_MALLOC)
          (let (malloc (ssl-test-first-error))
            (check (ssl-local-error? [-1 TEST_SSL_ERROR_SSL malloc]) => #t)
            (ssl-test-push-error! TEST_SSL_INTERNAL)
            (let (internal (ssl-test-last-error))
              (check (not (= malloc internal)) => #t)
              (check (ssl-local-error? [-1 TEST_SSL_ERROR_SSL internal]) => #t)
              (check (ssl-test-first-error) => malloc)
              (check (ssl-test-last-error) => internal)))
          (ssl-test-clear-errors!)
          (ssl-test-push-error! TEST_SSL_NEGOTIATION)
          (let (protocol (ssl-test-last-error))
            (check (ssl-local-error? [-1 TEST_SSL_ERROR_SSL protocol]) => #f)
            (check (ssl-local-error? [-1 TEST_SSL_ERROR_SYSCALL protocol]) => #t)
            (check (ssl-test-last-error) => protocol))
          (check (ssl-local-error? [-1 TEST_SSL_ERROR_SYSCALL 0]) => #t))
        (ssl-test-clear-errors!)))
    (test-case "local SSL result errors are not negotiation errors"
      (let (error (with-catch values (lambda () (with-ssl-result (values 0)))))
        (check error ? SSLError?)
        (check (SSLHandshakeError? error) => #f)
        (check (car (Error-irritants error)) => 'values)
        (check (Error-where error) ? string?)))
    (test-case "canonical DNS-safe hostnames from equivalent DIDs"
      (let (key (generate-ed25519-key))
        (unwind-protect
          (let* ((did (private-key->did key))
                 (hostname (did->hostname did))
                 (payload (u8vector-append DID-KEY-ED25519-code (private-key->public-bytes key)))
                 (alias (string-append "did:key:z" (base58-encode payload)))
                 (label (substring hostname 0 55)))
            (check (did->hostname alias) => hostname)
            (check (string-length hostname) => 64)
            (check (substring hostname 55 64) => ".internal")
            (check (base32-decode label no-padding: #t) => payload)
            (check (andmap (lambda (c)
                             (or (char<=? #\a c #\z) (char<=? #\2 c #\7)))
                           (string->list label))
                   => #t)
            (check-exception (did->hostname "did:web:example.com") ContractViolation?)
            (check-exception (did->hostname "did:key:") ContractViolation?))
          (foreign-release! (PrivKey-key key)))))

    (test-case "mutual TLS presents DID-named certificates and exchanges bytes"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (let* ((did1 (private-key->did key1)) (did2 (private-key->did key2))
                (host1 (did->hostname did1)) (host2 (did->hostname did2)))
           (with-tls-connection ctx1 ctx2 host1
             (lambda (server client)
               (let-values (((hostname did) (tls-certificate->hostname+did (TLS-peer-certificate server))))
                 (check hostname => host2)
                 (check did => did2))
               (let-values (((hostname did) (tls-certificate->hostname+did (TLS-peer-certificate client))))
                 (check hostname => host1)
                 (check did => did1))
               (let (bytes (make-u8vector 4))
                 (check (Writer-write (StreamSocket-writer client) #u8(1 2 3 4)) => 4)
                 (check (Reader-read (StreamSocket-reader server) bytes 0 4 4) => 4)
                 (check bytes => #u8(1 2 3 4))
                 (check (Writer-write (StreamSocket-writer server) #u8(5 6 7 8)) => 4)
                 (check (Reader-read (StreamSocket-reader client) bytes 0 4 4) => 4)
                 (check bytes => #u8(5 6 7 8)))))))))

    (test-case "server upgrade with an expired absolute deadline closes the transport"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (let ((listener #f) (server #f) (client #f) (worker #f))
           (unwind-protect
             (begin
               (set! listener (tcp-listen (InetAddress localhost4 0)))
               (ServerSocket-set-input-timeout! listener (IOTimeout 5))
               (set! client (tcp-connect (ServerSocket-address listener)))
               (set! server (ServerSocket-accept listener))
               (StreamSocket-set-input-timeout! server (IOTimeout 1))
               ;; The raw client stays open without sending a ClientHello.
               (let (deadline (timeout->deadline (IOTimeout -1)))
                 (set! worker
                   (spawn
                    (lambda ()
                      (with-catch identity
                        (lambda ()
                          (ssl-server-upgrade server ctx1 timeout: deadline)))))))
               ;; Also distinguish immediate expiry from the default five seconds.
               (check (thread-join! worker 1 'timeout) ? Timeout?)
               (check-exception
                (Reader-read (StreamSocket-reader server) (make-u8vector 1) 0 1 1)
                Closed?)
               (StreamSocket-set-input-timeout! client (IOTimeout 1))
               (check (Reader-read (StreamSocket-reader client) (make-u8vector 1) 0 1 0)
                      => 0))
             (begin
               (when client (ignore-errors (Closer-close client)))
               (when server (ignore-errors (Closer-close server)))
               (when listener (ignore-errors (Closer-close listener)))
               (when worker
                 (when (eq? (thread-join! worker 10 'timeout) 'timeout)
                   (raise-timeout tls-context-test "TLS upgrade did not stop after socket close")))))))))

    (test-case "mutual client and server upgrades share a usable absolute deadline"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (let ((listener #f) (server #f) (client #f) (worker #f))
           (unwind-protect
             (begin
               (set! listener (tcp-listen (InetAddress localhost4 0)))
               (ServerSocket-set-input-timeout! listener (IOTimeout 5))
               (set! client (tcp-connect (ServerSocket-address listener)))
               (set! server (ServerSocket-accept listener))
               (let (deadline (timeout->deadline (IOTimeout 5)))
                 (set! worker
                   (spawn
                    (lambda ()
                      (with-catch (lambda (e) [e])
                        (lambda ()
                          (set! server (ssl-server-upgrade server ctx1 timeout: deadline))
                          (void))))))
                 (set! client
                   (ssl-client-upgrade client timeout: deadline context: ctx2
                                       host: (did->hostname (private-key->did key1)))))
               (let (result (thread-join! worker 10 'timeout))
                 (when (eq? result 'timeout)
                   (raise-timeout tls-context-test "TLS server upgrade timed out"))
                 (when (pair? result)
                   (raise (car result))))
               (let-values (((host did) (tls-certificate->hostname+did (TLS-peer-certificate server))))
                 (check did => (private-key->did key2)))
               (let-values (((host did) (tls-certificate->hostname+did (TLS-peer-certificate client))))
                 (check did => (private-key->did key1)))
               (StreamSocket-set-input-timeout! server (IOTimeout 5))
               (StreamSocket-set-output-timeout! client (IOTimeout 5))
               (let (bytes (make-u8vector 4))
                 (check (Writer-write (StreamSocket-writer client) #u8(1 2 3 4)) => 4)
                 (check (Reader-read (StreamSocket-reader server) bytes 0 4 4) => 4)
                 (check bytes => #u8(1 2 3 4))))
             (begin
               (when client (ignore-errors (Closer-close client)))
               (when listener (ignore-errors (Closer-close listener)))
               (when server (ignore-errors (Closer-close server)))
               (when worker
                 (when (eq? (thread-join! worker 10 'timeout) 'timeout)
                   (raise-timeout tls-context-test "TLS upgrade did not stop after socket close")))
               (when server (ignore-errors (Closer-close server)))))))))

    (test-case "wrong peer hostname is rejected"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (check-exception
          (with-tls-connection ctx1 ctx2 "wrong.internal" void)
          (lambda (error)
            (and (SSLHandshakeError? error) (ssl-error? error)
                 (IOError? error) (string? (Error-where error))
                 (not (ssl-local-error? (cadr (Error-irritants error))))
                 (eq? (car (Error-irritants error)) 'ssl-connect)))))))

    (test-case "claimed hostname does not determine the peer DID"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (let* ((did1 (private-key->did key1))
                (did2 (private-key->did key2))
                (hostname (did->hostname did1))
                (claimed (make-self-signed-tls-context (PrivKey-key key2) hostname)))
           (unwind-protect
             (begin
               (check claimed ? SSL_CTX?)
               (with-tls-connection claimed ctx1 hostname
                 (lambda (server client)
                   (let-values (((host did) (tls-certificate->hostname+did (TLS-peer-certificate client))))
                     (check host => hostname)
                     (check did => did2)
                     (check (equal? did did1) => #f)))))
             (when claimed (foreign-release! claimed)))))))

    (test-case "a client without its own certificate is rejected"
      (with-tls-contexts
       (lambda (key1 key2 ctx1 ctx2)
         (check-exception
          (with-tls-connection ctx1 (insecure-client-ssl-context)
            (did->hostname (private-key->did key1)) void)
          (lambda (error)
            (and (SSLHandshakeError? error) (ssl-error? error)
                 (string? (Error-where error))
                 (eq? (car (Error-irritants error)) 'ssl-accept)))))))))
