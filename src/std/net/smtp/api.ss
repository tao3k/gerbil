;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP mail submission
(import :std/error
        :std/interface
        :std/io
        ./interface
        ./session
        ./connection
        ./headers
        ./data)
(export send-mail
        send-command
        session-read-all
        session-read-lines
        (import: ./interface
                 ./connection
                 ./headers
                 ./data))

;; Bind a procedure directly so header keywords remain ordinary rest values.
(def send-mail
  (let ()
    (lambda ((smtp : SMTP)
             (return-path : :string)
             (forward-path :~ (lambda (x) (or (string? x) (list? x)))) . data)
      => :list
      (def headers [])
      (def body [])
      (def recipients (if (list? forward-path) forward-path [forward-path]))
      (smtp-check-line return-path)
      (when (null? recipients)
        (raise-bad-argument send-mail "at least one SMTP recipient" forward-path))
      (for-each (lambda (recipient)
                  (unless (string? recipient)
                    (raise-bad-argument send-mail "SMTP recipient string" recipient))
                  (smtp-check-line recipient))
                recipients)
      (let loop ((rest data))
        (match rest
          ([] (void))
          ([(? keyword? key) (? string? value) . rest]
           (set! headers (cons (cons key value) headers))
           (loop rest))
          ([(? list? fields) . rest]
           (set! headers (foldl cons headers (headers->alist fields)))
           (loop rest))
          (else (set! body rest))))
      (unless (andmap (lambda (part)
                        (or (string? part) (u8vector? part) (procedure? part)))
                      body)
        (raise-bad-argument send-mail "strings, byte vectors or body producers" body))
      ;; Validate all headers before beginning an SMTP transaction.
      (let (lines [])
        (send-headers (reverse headers)
                      (lambda (line)
                        (set! lines (cons line lines))))
        (set! headers (reverse lines)))
      (: (try
          (smtp-expect (smtp.MAIL return-path) "2")
          (for-each (lambda (recipient)
                      (smtp-expect (smtp.RCPT recipient) "2"))
                    recipients)
          (smtp-expect (smtp.DATA) "354")
          (for-each (lambda (line) (smtp.send-command line)) headers)
          ;; The writer tracks the separator so an empty body needs no extra line.
          (using (writer (smtp.writer) : BufferedWriter)
            (writer.write-string-utf8 "\r\n")
            (for-each (lambda (part)
                        (cond
                         ((string? part) (write-data writer (string->utf8 part)))
                         ((u8vector? part) (write-data writer part))
                         (else (part smtp))))
                      body)
            (end-data writer))
          (smtp-expect (smtp.read-lines) "2")
          ;; On failure the transaction may be in DATA mode; close rather than send
          ;; a command that the server could interpret as message content.
          (catch (e)
            (ignore-errors (smtp.close))
            (raise e)))
         :list))))

(defmethod {send-mail smtp-connection}
  (lambda (self return-path forward-path . data)
    (apply send-mail self.this return-path forward-path data))
  interface: SMTP)

(@implement SMTP smtp-connection)
