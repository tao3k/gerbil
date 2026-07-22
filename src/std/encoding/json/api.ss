;;; -*- Gerbil -*-
;;; © vyzo
;;; json api
(import ./env
        ./io
        ./writer
        ./reader
        ./util)
(export
 ;; environment
 JSONReadOptions JSONWriteOptions JSONWriteContext
 make-JSONReadOptions make-JSONWriteOptions make-JSONWriteContext
 current-json-read-options current-json-write-options
 default-json-read-options default-json-write-options
 json-write-context
 ;; buffered writer/reader
 write-json
 read-json
 ;; string / bytes
 string->json
 json->string
 u8vector->json
 json->u8vector
 ;; pretty-print
 pretty-json
 ;; low-level
 write-json-object
 json-key-string
 json-sort-alist)
