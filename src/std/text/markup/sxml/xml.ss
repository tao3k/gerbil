;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; (C) me at drewc.ca
;;; XML interface

(import :std/build-config
        :std/text/markup/sxml/ssax
        :std/text/markup/sxml/print)

(export (import: :std/text/markup/sxml/ssax)
 #t)

(def (write-xml sxml (port (current-output-port)))
  (write-sxml sxml xml?: #t port: port))

(def (print-sxml->xml sxml (port (current-output-port))
		      indent: (maybe-indent 1))
  (write-sxml sxml xml?: #t port: port indent: maybe-indent))
