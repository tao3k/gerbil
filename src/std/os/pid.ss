;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; OS pid

(import :std/ffi)
(export #t)

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<unistd.h>")

(def-C-lambda getpid () int)
(def-C-lambda getppid () int)
