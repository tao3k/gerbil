;;; -*- Gerbil -*-
;;; © gerbil contributors
;;; SMTP session interface
(import :std/io
        :std/net/address
        :std/os/sockopt
        :std/time/timeout)
(export #t)

(interface (SMTP Socket)
  (send-mail (return-path : :string)
             (forward-path :~ (lambda (x) (or (string? x) (list? x)))) . data)
  => :list
  (send-command (cmd :~ (lambda (x) (or (string? x) (u8vector? x))))) => :void
  (read-all) => :u8vector
  (read-lines) => :list
  (keywords) => :list
  (socket) => StreamSocket
  (reader) => BufferedReader
  (writer) => BufferedWriter
  (EHLO (domain-or-address : :string)) => :list
  (HELO (domain : :string)) => :list
  (MAIL (from : :string)) => :list
  (RCPT (to : :string)) => :list
  (DATA) => :list
  (RSET) => :list
  (NOOP (str : :string := "")) => :list
  (QUIT) => :list
  (VRFY (address : :string)) => :list
  (STARTTLS) => :list)
