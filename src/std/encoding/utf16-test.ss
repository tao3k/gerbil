;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/encoding/utf16 unit test

(export utf16-test)
(import :std/error
        :std/test
        ./utf16)

(def supplementary-char
  (integer->char #x1f642))
(def supplementary-string
  (string supplementary-char))
(def sample-string
  (list->string [#\A (integer->char #x03bb) supplementary-char]))
(def sample-big
  #u8(0 65 3 187 216 61 222 66))
(def sample-little
  #u8(65 0 187 3 61 216 66 222))
(def replacement-char
  (integer->char #xfffd))
(def replacement-string
  (string replacement-char))

(def utf16-test
  (test-suite "test :std/encoding/utf16"
    (test-case "exact big- and little-endian encoding"
      (check-equal? (string->utf16 sample-string) sample-big)
      (check-equal? (string->utf16 sample-string 'big) sample-big)
      (check-equal? (string->utf16 sample-string 'little) sample-little)
      (check-equal? (utf16->string sample-big) sample-string)
      (check-equal? (utf16->string sample-big 'big #t) sample-string)
      (check-equal? (utf16->string sample-little 'little #t) sample-string))

    (test-case "valid and malformed surrogate pairs"
      (def valid-big #u8(#xd8 #x3d #xde #x42))
      (def valid-little #u8(#x3d #xd8 #x42 #xde))
      (check-equal? (string->utf16 supplementary-string 'big) valid-big)
      (check-equal? (string->utf16 supplementary-string 'little) valid-little)
      (check-equal? (utf16->string valid-big 'big #t) supplementary-string)
      (check-equal? (utf16->string valid-little 'little #t) supplementary-string)
      (check-equal? (utf16->string #u8(#xdc #x00) 'big #t)
                    replacement-string)
      (check-equal? (utf16->string #u8(#xd8 #x00) 'big #t)
                    replacement-string)
      (check-equal? (utf16->string #u8(#xd8 #x00 #x00 #x41) 'big #t)
                    (string replacement-char #\A))
      (check-equal? (utf16->string #u8(#xd8 #x00 #xd8 #x3d #xde #x42) 'big #t)
                    (string replacement-char supplementary-char)))

    (test-case "byte order marks"
      (def big-bom #u8(254 255 0 65))
      (def little-bom #u8(255 254 65 0))
      (check-equal? (string->utf16 "A" 'big #t) big-bom)
      (check-equal? (string->utf16 "A" 'little #t) little-bom)
      (check-equal? (utf16->string big-bom 'little) "A")
      (check-equal? (utf16->string little-bom 'big) "A")
      (check-equal? (utf16->string big-bom 'big #t)
                    (list->string [(integer->char #xfeff) #\A])))

    (test-case "native endianness"
      (check-equal?
       (utf16->string (string->utf16 sample-string 'native) 'native #t)
       sample-string))

    (test-case "empty input"
      (check-equal? (string->utf16 "") #u8())
      (check-equal? (string->utf16 "" 'big #t) #u8(254 255))
      (check-equal? (utf16->string #u8()) ""))

    (test-case "malformed input"
      (check-exception (string->utf16 "A" 'middle)
                       contract-violation-error?)
      (check-exception (utf16->string #u8(0 65) 'middle)
                       contract-violation-error?)
      (check-exception (utf16->string #u8(0)) io-error?))))
