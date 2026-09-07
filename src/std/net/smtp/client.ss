;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP command methods
(import :std/io
        ./interface
        ./session)
(export (struct-out client-session))

(defstruct (client-session session) ())

(def (smtp-command (self : client-session) (prefix : :string) (arg : :string))
  => :list
  (smtp-check-line arg)
  (send-command self (string-append prefix arg))
  (session-read-lines self))

(defrules defsmtp-command ()
  ((_ name prefix arg)
   (defmethod {name client-session}
     (lambda (self arg) (smtp-command self prefix arg))
     interface: SMTP))
  ((_ name command)
   (defmethod {name client-session}
     (lambda (self) (smtp-command self command ""))
     interface: SMTP)))

(defsmtp-command EHLO "EHLO " domain)
(defsmtp-command HELO "HELO " domain)
(defsmtp-command MAIL "MAIL FROM:" from)
(defsmtp-command RCPT "RCPT TO:" to)
(defsmtp-command NOOP "NOOP " str)
(defsmtp-command VRFY "VRFY " address)
(defsmtp-command DATA "DATA")
(defsmtp-command RSET "RSET")
(defsmtp-command STARTTLS "STARTTLS")

(defmethod {QUIT client-session}
  (lambda (self)
    (: (try (smtp-command self "QUIT" "")
            (finally (self.sock.close)))
       :list))
  interface: SMTP)
