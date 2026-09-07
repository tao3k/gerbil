;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP client protocol and local STARTTLS tests
(import :std/error
        :std/test
        (only-in :std/test/base raise-test-error)
        :std/io
        :std/net/address
        :std/net/ssl
        :std/os/sockopt
        :std/time/timeout
        :std/misc/process
        ../smtp)
(export client-test test-setup! test-cleanup!)

(def test-directory (make-temporary-file-name "smtp-test"))
(def test-private-key (path-expand "key.pem" test-directory))
(def test-certificate (path-expand "cert.pem" test-directory))

(def (test-setup!) => :void
  (try
   (create-directory* test-directory)
   (invoke "openssl"
           ["req" "-x509" "-newkey" "rsa:2048" "-nodes" "-batch"
            "-days" "1" "-subj" "/CN=localhost"
            "-keyout" test-private-key "-out" test-certificate])
   (void)
   (catch (e) (test-cleanup!) (raise e))))

(def (test-cleanup!) => :void
  (when (file-exists? test-directory)
    (delete-file-or-directory test-directory #t)))

;; Worker assertions must raise: std/test checks need not escape a worker.
(def (expect actual expected)
  (unless (equal? actual expected)
    (raise-test-error expect "SMTP test mismatch" actual expected)))

(def (expect-error thunk (predicate io-error?))
  (let (caught (with-catch identity (lambda () (thunk) #f)))
    (unless (and caught (predicate caught))
      (raise-test-error expect-error "Expected SMTP exception type" caught predicate))))

(def (expect-line reader line)
  (expect (BufferedReader-read-line-utf8 reader '(#\return #\newline) #t 8192)
          (string-append line "\r\n")))

(def (expect-eof reader)
  (unless (eof-object? (BufferedReader-read-u8 reader))
    (raise-test-error expect-eof "Expected connection close without further SMTP bytes")))

(def (reply writer . fragments)
  (for-each (lambda (fragment)
              (BufferedWriter-write-string-utf8 writer fragment)
              (BufferedWriter-flush writer))
            fragments))

(def (hello reader writer (ehlo "250 local\r\n"))
  (reply writer "220-local\r" "\n220 " "ready\r\n")
  (expect-line reader "EHLO client.local")
  (reply writer ehlo))

(def (quit reader writer (expect-close? #t))
  (expect-line reader "QUIT")
  (reply writer "221 bye\r\n")
  (when expect-close? (expect-eof reader)))

;; One listener and one accepted peer per script. Registration and shutdown
;; share a mutex so an accept completing during cleanup cannot leak a peer.
(def (with-peer script action)
  (let ((listener (tcp-listen (InetAddress localhost4 0)))
        (lock (make-mutex 'smtp-peer))
        (peer #f) (stopping? #f) (worker #f))
    (def (await)
      (let (result (thread-join! worker 5 'timeout))
        (cond
         ((eq? result 'timeout) (raise-timeout with-peer "SMTP worker timed out"))
         ((pair? result) (raise (car result)))
         (else (expect result #t)))))
    (try
     (ServerSocket-set-input-timeout! listener (IOTimeout 3))
     (set! worker
       (spawn
        (lambda ()
          (with-catch
           (lambda (e) [e])
           (lambda ()
             (let (sock (ServerSocket-accept listener))
               (try
                (with-lock lock
                           (lambda ()
                             (when stopping?
                               (StreamSocket-close sock)
                               (raise-io-closed with-peer "SMTP fixture stopped"))
                             (set! peer sock)))
                (StreamSocket-set-input-timeout! sock (IOTimeout 3))
                (StreamSocket-set-output-timeout! sock (IOTimeout 3))
                (script (open-buffered-reader (StreamSocket-reader sock))
                        (open-buffered-writer (StreamSocket-writer sock)) sock)
                #t
                (finally (ignore-errors (StreamSocket-close sock))))))))))
     (action (ServerSocket-address listener) await)
     (await)
     (finally
      (ignore-errors (ServerSocket-close listener))
      (with-lock lock
                 (lambda ()
                   (set! stopping? #t)
                   (when peer (ignore-errors (StreamSocket-close peer)))))
      (when worker
        (ignore-errors (thread-terminate! worker))
        (ignore-errors (thread-join! worker 5)))))))

(def (with-client address proc (tls #f) (string-address? #f))
  (let (smtp (smtp-connect
              (if string-address?
                (string-append "127.0.0.1:" (number->string (InetAddress-port address)))
                address)
              domain: "client.local" tls: tls
              timeout: (if string-address? (IOTimeout 3) 3)
              input-timeout: (if string-address? (IOTimeout 3) 3)))
    (try (proc smtp) (finally (ignore-errors (SMTP-close smtp))))))

(def (transaction reader writer lines (recipients ["<one>"]))
  (expect-line reader "MAIL FROM:<sender>")
  (reply writer "250 sender\r\n")
  (for-each (lambda (recipient)
              (expect-line reader (string-append "RCPT TO:" recipient))
              (reply writer "250 recipient\r\n"))
            recipients)
  (expect-line reader "DATA")
  (reply writer "354 send data\r\n")
  (for-each (lambda (line) (expect-line reader line)) lines)
  (expect-line reader ".")
  (reply writer "250 queued\r\n"))

(def client-test
  (test-suite "SMTP client"
    (test-case "DATA state survives flushes with a port-backed writer"
      (let* ((port (open-output-u8vector))
             (writer (smtp-data-writer (open-buffered-writer port))))
        (try
         (write-data writer (string->utf8 ".first\r"))
         (BufferedWriter-flush writer)
         (write-data writer (string->utf8 "\n.second\r"))
         (BufferedWriter-flush writer)
         (write-data writer (string->utf8 ".third\n"))
         (BufferedWriter-flush writer)
         (end-data writer)
         (check (get-output-u8vector port)
                => (string->utf8 "..first\r\n..second\r\n..third\r\n.\r\n"))
         (finally (BufferedWriter-close writer)))))

    (test-case "fragmented replies, exact commands and inherited Socket methods"
      (with-peer
       (lambda (r w sock)
         (hello r w "250-local\r\n250-SIZE 4096\r\n250 PIPELINING\r\n")
         (expect-line r "EHLO again.local")
         (reply w "250-lo" "cal\r" "\n250 OK\r\n")
         (expect-line r "MAIL FROM:<sender>") (reply w "250 mail\r\n")
         (expect-line r "RCPT TO:<one>") (reply w "251 forward\r\n")
         (expect-line r "DATA") (reply w "354 data\r\n")
         (expect-line r "..first") (expect-line r ".")
         (reply w "250 accepted\r\n")
         (expect-line r "NOOP ") (reply w "250 noop\r\n")
         (expect-line r "NOOP probe") (reply w "250 noop\r\n")
         (expect-line r "RSET") (reply w "250 reset\r\n")
         (expect-line r "VRFY user") (reply w "252 unknown\r\n")
         (quit r w))
       (lambda (addr await)
         (with-client addr
                      (lambda (smtp)
                        (check (SMTP? smtp) => #t)
                        (check (SMTP-keywords smtp) => ["SIZE 4096" "PIPELINING"])
                        (let (sock (SMTP-socket smtp))
                          (expect (SMTP-domain smtp) (StreamSocket-domain sock))
                          (expect (SMTP-address smtp) (StreamSocket-address sock))
                          (expect (SMTP-peer-address smtp) addr)
                          (SMTP-setsockopt smtp IPPROTO_TCP.TCP_NODELAY 1)
                          (expect (SMTP-getsockopt smtp IPPROTO_TCP.TCP_NODELAY) 1)
                          (SMTP-set-input-timeout! smtp (IOTimeout 3))
                          (SMTP-set-output-timeout! smtp (IOTimeout 3)))
                        (expect (SMTP-EHLO smtp "again.local") ["250-local" "250 OK"])
                        (expect (SMTP-MAIL smtp "<sender>") ["250 mail"])
                        (expect (SMTP-RCPT smtp "<one>") ["251 forward"])
                        (expect (SMTP-DATA smtp) ["354 data"])
                        (write-data (SMTP-writer smtp) (string->utf8 ".first"))
                        (end-data (SMTP-writer smtp))
                        (expect (SMTP-read-lines smtp) ["250 accepted"])
                        (expect (SMTP-NOOP smtp) ["250 noop"])
                        (expect (SMTP-NOOP smtp "probe") ["250 noop"])
                        (expect (SMTP-RSET smtp) ["250 reset"])
                        (expect (SMTP-VRFY smtp "user") ["252 unknown"])
                        (expect (SMTP-QUIT smtp) ["221 bye"])
                        (await))
                      #f #t))))

    (test-case "send-mail chunks, mixed headers, recipients and repeated transactions"
      (with-peer
       (lambda (r w sock)
         (hello r w)
         (transaction r w
                      ["Subject: chunks" "From: sender" "X-One: one" "X-Two: two"
                       "" "..first" "..second" "..third" "..fourth" "last"]
                      ["<one>" "<two>"])
         (transaction r w [""])
         (transaction r w ["" "bytes"])
         (quit r w))
       (lambda (addr await)
         (with-client addr
                      (lambda (smtp)
                        (expect
                         (send-mail smtp "<sender>" ["<one>" "<two>"]
                                    Subject: "chunks"
                                    (list (cons 'From "sender") 'X-One "one"
                                          (cons "X-Two" "two"))
                                    ".first\r" #u8() "" (string->utf8 "\n.second\n")
                                    (lambda (conn)
                                      ;; Flush between chunks to exercise independent DATA state.
                                      (write-data (SMTP-writer conn) (string->utf8 ".third\r"))
                                      (BufferedWriter-flush (SMTP-writer conn))
                                      (write-data (SMTP-writer conn) #u8())
                                      (write-data (SMTP-writer conn) (string->utf8 ".fourth\r")))
                                    "\nlast\r")
                         ["250 queued"])
                        (expect (SMTP-send-mail smtp "<sender>" "<one>") ["250 queued"])
                        (expect (SMTP-send-mail smtp "<sender>" "<one>" (string->utf8 "bytes"))
                                ["250 queued"])
                        (SMTP-QUIT smtp))))))

    (test-case "read-lines consumes one response and enforces the 510-character limit"
      (let (long-line (string-append "250 " (make-string 506 #\x)))
        (with-peer
         (lambda (r w sock)
           (hello r w)
           (reply w (string-append long-line "\r\n250-next\r\n250 final\r\n"))
           (quit r w))
         (lambda (addr await)
           (with-client addr
                        (lambda (smtp)
                          (expect (SMTP-read-lines smtp) [long-line])
                          (expect (SMTP-read-lines smtp) ["250-next" "250 final"])
                          (SMTP-QUIT smtp)))))))

    (test-case "malformed, inconsistent and truncated replies"
      (for-each
        (lambda (bad)
          (with-peer
           (lambda (r w sock) (hello r w) (reply w bad))
           (lambda (addr await)
             (with-client addr
                          (lambda (smtp) (expect-error (lambda () (SMTP-read-lines smtp))))))))
        ["wat\r\n" "199 invalid\r\n" "250!invalid\r\n" "2x0 invalid\r\n"
         "250-first\r\n251 wrong\r\n" "250-unfinished\r\n" "25" ""
         (string-append "250 " (make-string 507 #\x) "\r\n")]))

    (test-case "negative greeting and EHLO close the connection"
      (for-each
        (lambda (stage)
          (with-peer
           (lambda (r w sock)
             (if (eq? stage 'greeting)
               (reply w "554 unavailable\r\n")
               (hello r w "550 EHLO denied\r\n"))
             (expect-eof r))
           (lambda (addr await)
             (expect-error (lambda () (with-client addr (lambda (smtp) (void))))) )))
        '(greeting ehlo)))

    (test-case "MAIL, RCPT, DATA and final acceptance rejection close send-mail"
      (for-each
        (lambda (stage)
          (with-peer
           (lambda (r w sock)
             (hello r w)
             (expect-line r "MAIL FROM:<sender>")
             (if (eq? stage 'mail)
               (reply w "550 sender denied\r\n")
               (begin
                 (reply w "250 sender\r\n")
                 (expect-line r "RCPT TO:<one>")
                 (if (eq? stage 'rcpt)
                   (reply w "550 recipient denied\r\n")
                   (begin
                     (reply w "250 recipient\r\n")
                     (expect-line r "DATA")
                     (if (eq? stage 'data)
                       (reply w "554 DATA denied\r\n")
                       (begin
                         (reply w "354 data\r\n")
                         (expect-line r "") (expect-line r "body") (expect-line r ".")
                         (reply w "554 message denied\r\n")))))))
             (expect-eof r))
           (lambda (addr await)
             (with-client addr
                          (lambda (smtp)
                            (expect-error (lambda () (send-mail smtp "<sender>" "<one>" "body")))
                            ;; Observe EOF before with-client's fallback close can mask a leak.
                            (await))))))
        '(mail rcpt data final)))

    (test-case "body producer failure closes without sending a command in DATA"
      (with-peer
       (lambda (r w sock)
         (hello r w)
         (expect-line r "MAIL FROM:<sender>") (reply w "250 ok\r\n")
         (expect-line r "RCPT TO:<one>") (reply w "250 ok\r\n")
         (expect-line r "DATA") (reply w "354 data\r\n")
         (expect-eof r))
       (lambda (addr await)
         (with-client addr
                      (lambda (smtp)
                        (expect-error
                         (lambda ()
                           (SMTP-send-mail smtp "<sender>" "<one>"
                                           (lambda (conn)
                                             (raise-io-error producer "producer failed")))))
                        (await))))))

    (test-case "reject CRLF injection before any wire write"
      (with-peer
       (lambda (r w sock)
         (hello r w)
         (expect-line r "NOOP clean") (reply w "250 clean\r\n")
         (quit r w))
       (lambda (addr await)
         (with-client addr
                      (lambda (smtp)
                        (for-each
                          (lambda (bad)
                            (for-each
                              (lambda (command)
                                (expect-error (lambda () (command smtp bad))
                                              contract-violation-error?))
                              [SMTP-EHLO SMTP-MAIL SMTP-RCPT SMTP-NOOP SMTP-VRFY])
                            (expect-error (lambda () (SMTP-send-command smtp bad))
                                          contract-violation-error?)
                            (expect-error (lambda () (SMTP-send-command smtp (string->utf8 bad)))
                                          contract-violation-error?)
                            (expect-error (lambda () (send-mail smtp bad "<one>" "body"))
                                          contract-violation-error?)
                            (expect-error (lambda () (send-mail smtp "<sender>" ["<one>" bad] "body"))
                                          contract-violation-error?)
                            (expect-error
                             (lambda () (send-mail smtp "<sender>" "<one>" Subject: "valid"
                                                   (list (cons "X-Late" bad)) "body"))
                             contract-violation-error?)
                            (expect-error
                             (lambda () (send-mail smtp "<sender>" "<one>"
                                                   (list (cons bad "value")) "body"))
                             contract-violation-error?))
                          ["bad\r\nRSET" "bad\nRSET" "bad\rRSET"])
                        (SMTP-send-command smtp (string->utf8 "NOOP clean\r\n"))
                        (expect (SMTP-read-lines smtp) ["250 clean"])
                        (SMTP-QUIT smtp))))))

    (test-case "TLS policy without STARTTLS advertisement"
      (for-each
        (lambda (mode)
          (with-peer
           (lambda (r w sock)
             (hello r w)
             (if (eq? mode #t) (expect-eof r) (quit r w)))
           (lambda (addr await)
             (if (eq? mode #t)
               (expect-error (lambda () (with-client addr (lambda (smtp) (void)) mode)))
               (with-client addr (lambda (smtp) (SMTP-QUIT smtp)) mode)))))
        '(#t maybe #f)))

    (test-case "STARTTLS rejection is fatal unless TLS is disabled"
      (for-each
        (lambda (mode)
          (with-peer
           (lambda (r w sock)
             (hello r w "250-local\r\n250 STARTTLS\r\n")
             (if (eq? mode #f)
               (quit r w)
               (begin
                 (expect-line r "STARTTLS")
                 (reply w "454 TLS unavailable\r\n")
                 (expect-eof r))))
           (lambda (addr await)
             (if (eq? mode #f)
               (with-client addr (lambda (smtp) (SMTP-QUIT smtp)) mode)
               (expect-error (lambda () (with-client addr (lambda (smtp) (void)) mode)))))))
        '(#t maybe #f)))

    (test-case "local STARTTLS upgrades in place and replaces EHLO keywords"
      (let (context (make-server-ssl-context test-certificate test-private-key))
        (for-each
          (lambda (mode)
            (with-peer
             (lambda (r w sock)
               (hello r w "250-local\r\n250-OLD\r\n250 STARTTLS\r\n")
               (expect-line r "STARTTLS")
               (reply w "220 start TLS\r\n")
               (let (secure (ssl-server-upgrade sock context))
                 (try
                  (StreamSocket-set-input-timeout! secure (IOTimeout 3))
                  (StreamSocket-set-output-timeout! secure (IOTimeout 3))
                  (let ((r (open-buffered-reader (StreamSocket-reader secure)))
                        (w (open-buffered-writer (StreamSocket-writer secure))))
                    (expect-line r "EHLO client.local")
                    (reply w "250-secure\r\n250-SIZE 8192\r\n250 AUTH PLAIN\r\n")
                    (transaction r w ["" "encrypted"])
                    ;; Socket close need not send a TLS close_notify.
                    (quit r w #f))
                  (finally (ignore-errors (StreamSocket-close secure))))))
             (lambda (addr await)
               (let (smtp (smtp-connect addr domain: "client.local" tls: mode
                                        timeout: (IOTimeout 3) input-timeout: 3
                                        ;; Only this explicit local test trusts the self-signed cert.
                                        ssl-context: (insecure-client-ssl-context)))
                 (try
                  (expect (SMTP-keywords smtp) ["SIZE 8192" "AUTH PLAIN"])
                  (expect (SMTP-send-mail smtp "<sender>" "<one>" "encrypted")
                          ["250 queued"])
                  (SMTP-QUIT smtp)
                  (await)
                  (finally (ignore-errors (SMTP-close smtp))))))))
          '(#t maybe))))))
