;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP transport and reply framing
(import :std/error
        :std/interface
        :std/io
        :std/net/address
        :std/os/sockopt
        :std/time/timeout
        ./interface
        ./data)
(export (struct-out session)
        session-put-socket!
        session-read-all
        session-read-lines
        send-command
        smtp-check-line
        smtp-expect)

(defstruct session
  ((sock   :- StreamSocket)
   (reader :- BufferedReader)
   (writer :- BufferedWriter)
   (this   :- SMTP)))

(def (session-put-socket! (self : session) (sock : StreamSocket))
  => :void
  (set! self.sock sock)
  (set! self.reader (open-buffered-reader (sock.reader)))
  (set! self.writer (smtp-data-writer (open-buffered-writer (sock.writer)))))

(defmethod {socket session}
  (lambda (self) self.sock)
  interface: SMTP)
(defmethod {reader session}
  (lambda (self) self.reader)
  interface: SMTP)
(defmethod {writer session}
  (lambda (self) self.writer)
  interface: SMTP)

(defrule (defsocket-forward iface method proc (arg ...))
  (defmethod {method session}
    (lambda (self arg ...) (proc self.sock arg ...))
    interface: iface))

(defsocket-forward Closer close Socket-close ())
(defsocket-forward Socket domain Socket-domain ())
(defsocket-forward Socket address Socket-address ())
(defsocket-forward Socket peer-address Socket-peer-address ())
(defsocket-forward Socket getsockopt Socket-getsockopt (opt))
(defsocket-forward Socket setsockopt Socket-setsockopt (opt value))
(defsocket-forward NetworkTimeout set-input-timeout! Socket-set-input-timeout! (timeo))
(defsocket-forward NetworkTimeout set-output-timeout! Socket-set-output-timeout! (timeo))

(@implement Socket session)

;; Commands are single lines; permit one existing trailing CRLF for callers
;; of the low-level API, but reject embedded line breaks before writing.
(def (smtp-check-line (text : :string)) => :void
  (when (or (string-index text #\return) (string-index text #\newline))
    (raise-bad-argument smtp-check-line "SMTP command without CR or LF" text)))

(def (send-command (self : session)
                   (cmd :~ (lambda (x) (or (string? x) (u8vector? x)))))
  => :void
  (let* ((bytes (if (string? cmd) (string->utf8 cmd) cmd))
         (len (u8vector-length bytes))
         (end (if (and (fx>= len 2)
                       (fx= (u8vector-ref bytes (fx- len 2)) 13)
                       (fx= (u8vector-ref bytes (fx- len 1)) 10))
                (fx- len 2) len)))
    (let loop ((i 0))
      (when (fx< i end)
        (when (memv (u8vector-ref bytes i) '(13 10))
          (raise-bad-argument send-command "single SMTP command line" cmd))
        (loop (fx+ i 1))))
    (self.writer.write bytes 0 end)
    (self.writer.write-string-utf8 "\r\n")
    (self.writer.flush)))

(defmethod {send-command session}
  (lambda (self cmd) (send-command self cmd))
  interface: SMTP)

;; Read through the final status line, independently of TCP packet boundaries.
(def (session-read-lines (self : session))
  => :list
  (let loop ((code #f) (lines []) (count 0))
    (when (fx>= count 1000)
      (raise-io-error session-read-lines "Too many SMTP reply lines"))
    (let (wire (self.reader.read-line-utf8 '(#\return #\newline) #t 513))
      (when (eof-object? wire)
        (raise-io-error session-read-lines "Unexpected EOF in SMTP reply"))
      (unless (and (fx<= 5 (string-length wire) 512)
                   (string-suffix? "\r\n" wire))
        (raise-io-error session-read-lines "Unterminated or overlong SMTP reply" wire))
      (let (line (substring wire 0 (fx- (string-length wire) 2)))
        (unless (and (fx<= 3 (string-length line) 510)
                     (char<=? #\2 (string-ref line 0) #\5)
                     (char<=? #\0 (string-ref line 1) #\9)
                     (char<=? #\0 (string-ref line 2) #\9)
                     (or (fx= (string-length line) 3)
                         (memv (string-ref line 3) '(#\space #\-))))
          (raise-io-error session-read-lines "Malformed SMTP reply" line))
        (let (next-code (substring line 0 3))
          (when (and code (not (equal? code next-code)))
            (raise-io-error session-read-lines "Inconsistent SMTP reply codes" code next-code))
          (let (lines (cons line lines))
            (if (and (fx> (string-length line) 3) (char=? (string-ref line 3) #\-))
              (loop next-code lines (fx+ count 1))
              (reverse lines))))))))

(defmethod {read-lines session}
  (lambda (self) (session-read-lines self))
  interface: SMTP)

(def (session-read-all (self : session))
  => :u8vector
  (string->utf8
   (string-append (string-join (session-read-lines self) "\r\n") "\r\n")))

(defmethod {read-all session}
  (lambda (self) (session-read-all self))
  interface: SMTP)

(def (smtp-expect (reply : :list) (code : :string))
  => :list
  (unless (and (pair? reply)
               (string-prefix? code (car reply)))
    (raise-io-error smtp-expect "Unexpected SMTP response" code reply))
  reply)
