;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP connection setup and STARTTLS
(import :std/error
        :std/io
        :std/net/address
        (only-in :std/net/address/parser string->dns-address)
        :std/net/ssl
        :std/time/timeout
        ./interface
        ./session
        ./client
        ./data)
(export smtp-connect (struct-out smtp-connection))

(defstruct (smtp-connection client-session)
  ((ehlo : :list))
  final: #t)

(defmethod {keywords smtp-connection}
  (lambda (self)
    (map (lambda (line)
           (if (fx> (string-length line) 4)
             (substring line 4 (string-length line))
             ""))
         (cdr self.ehlo)))
  interface: SMTP)

(def (smtp-connect (address :~ (lambda (x) (or (string? x) (Address? x))))
                   timeout: (timeo :~ timeout? := 5)
                   input-timeout: (itimeo :~ timeout? := #f)
                   domain: (domain : :string := (##host-name))
                   tls: (tls :~ (lambda (x) (memq x '(#t #f maybe))) := 'maybe)
                   ssl-context: (context :~ SSL_CTX? :- :foreign
                                         := (default-client-ssl-context)))
  => SMTP
  (smtp-check-line domain)
  (let* ((addr (if (string? address)
                 (if (ormap (lambda (prefix) (string-prefix? prefix address))
                            '("inet4:" "inet6:" "dns:" "unix:"))
                   (string->address address)
                   (string->dns-address address))
                 address))
         (deadline
          (timeout->deadline
           (if (IOTimeout? timeo) timeo (IOTimeout timeo))))
         (input-timeout (if (IOTimeout? itimeo) itimeo (IOTimeout itimeo)))
         (sock (tcp-connect (resolve->endpoint addr) deadline)))
    (using (conn (make-smtp-connection sock
                                       (open-buffered-reader (StreamSocket-reader sock))
                                       (smtp-data-writer
                                        (open-buffered-writer (StreamSocket-writer sock)))
                                       #f [])
                 :- smtp-connection)
      (try
       (set! conn.this (SMTP conn))
       (conn.sock.set-input-timeout! input-timeout)
       (smtp-expect (conn.this.read-lines) "220")
       (set! conn.ehlo (smtp-expect (conn.this.EHLO domain) "250"))
       (let (starttls?
             (ormap (lambda (line)
                      (and (fx>= (string-length line) 4)
                           (string-ci=? (substring line 4 (string-length line))
                                        "STARTTLS")))
                    (cdr conn.ehlo)))
         (cond
          ((and tls starttls?)
           (smtp-expect (conn.this.STARTTLS) "220")
           (unless (fxzero? (conn.reader.available))
             (raise-io-error smtp-connect "Unexpected buffered plaintext after STARTTLS"))
           (session-put-socket!
            conn (ssl-client-upgrade conn.sock
                                     timeout: (if (IOTimeout? timeo) timeo (IOTimeout timeo))
                                     context: context
                                     host: (resolve->host addr)))
           (conn.sock.set-input-timeout! input-timeout)
           ;; TLS discards the pre-upgrade capabilities; EHLO starts afresh.
           (set! conn.ehlo (smtp-expect (conn.this.EHLO domain) "250")))
          ((eq? tls #t)
           (raise-io-error smtp-connect "SMTP server does not advertise STARTTLS" address))))
       conn.this
       (catch (e)
         (ignore-errors (conn.sock.close))
         (raise e))))))
