;;; -*- Gerbil -*-
;;; © gerbil-mcp contributors
;;; Network debug REPL tests — loopback protocol and lifecycle coverage.

(import :std/error
        :std/test
        ./repl)
(export repl-test)

(def test-server-address "127.0.0.1:0")

(def (server-address (server : :thread))
  (let* ((listener (thread-specific server))
         (info (tcp-server-socket-info listener))
         (port (socket-info-port-number info)))
    (string-append "127.0.0.1:" (number->string port))))

(def (open-repl-client (server : :thread))
  ;; call-with-repl-client owns and closes the returned port.
  ; gerbil-security: suppress port-open-no-unwind-protect
  (let (client
        (open-tcp-client [server-address: (server-address server)
                          eol-encoding: 'cr-lf]))
    (input-port-timeout-set! client 2 (lambda () 'timeout))
    (output-port-timeout-set! client 2 (lambda () 'timeout))
    client))

(def (call-with-repl-server proc (passwd #f))
  (let (server
        (start-repl-server! password: passwd address: test-server-address))
    (try
     (proc server)
     (finally
      (stop-repl-server! server)))))

(def (call-with-repl-client server proc)
  (let (client (open-repl-client server))
    (try
     (proc client)
     (finally
      (ignore-errors (close-port client))))))

(def (send-line! client line)
  (display line client)
  (newline client)
  (force-output client))

(def (repl-eval client expression)
  (send-line! client expression)
  (read-line client))

(def (connection-closed? client)
  (with-catch
   (lambda (_) #t)
   (lambda ()
     (let loop ()
       (let (next (read-char client))
         (cond
          ((eof-object? next) #t)
          ((char? next) (loop))
          (else #f)))))))

(def repl-test
  (test-suite "test :std/net/repl"
    (test-case "evaluate expression"
      (call-with-repl-server
       (lambda (server)
         (call-with-repl-client server
           (lambda (client)
             (check (repl-eval client "(+ 1 2)") => "> 3"))))))

    (test-case "authenticate with password retry"
      (call-with-repl-server
       (lambda (server)
         (call-with-repl-client server
           (lambda (client)
             (check (read-string 10 client) => "Password: ")
             (send-line! client "wrong")
             (check (read-string 10 client) => "Password: ")
             (send-line! client "secret")
             (check (repl-eval client "(+ 2 3)") => "> 5"))))
       "secret"))

    (test-case "accept connection after disconnect"
      (call-with-repl-server
       (lambda (server)
         (let (client (open-repl-client server))
           (close-port client))
         (call-with-repl-client server
           (lambda (client)
             (check (repl-eval client "(* 6 7)") => "> 42"))))))

    (test-case "control-D twice closes only the client"
      (call-with-repl-server
       (lambda (server)
         (call-with-repl-client server
           (lambda (client)
             (write-u8vector '#u8(#x04) client)
             (force-output client)
             (check (read-line client) => "> ")
             (check (read-line client) => "*** EOF again to exit")
             (write-u8vector '#u8(#x04) client)
             (force-output client)
             (check (connection-closed? client) => #t)))
         (call-with-repl-client server
           (lambda (client)
             (check (repl-eval client "(+ 20 22)") => "> 42"))))))

    (test-case "stop closes active clients"
      (let (server (start-repl-server! address: test-server-address))
        (try
         (call-with-repl-client server
           (lambda (client)
             (check (read-string 2 client) => "> ")
             (stop-repl-server! server)
             (check (connection-closed? client) => #t)))
         (finally
          (stop-repl-server! server)))))))
