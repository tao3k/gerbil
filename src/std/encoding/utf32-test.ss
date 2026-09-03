;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/encoding/utf32 unit test

(export utf32-test)
(import :std/error
        :std/test
        ./utf32)

(def sample-string
  (list->string [#\A (integer->char #x03bb) (integer->char #x1f642)]))
(def sample-big
  #u8(0 0 0 65 0 0 3 187 0 1 246 66))
(def sample-little
  #u8(65 0 0 0 187 3 0 0 66 246 1 0))
(def replacement-string
  (list->string [(integer->char #xfffd)]))

(def utf32-test
  (test-suite "test :std/encoding/utf32"
    (test-case "exact big- and little-endian encoding"
      (check-equal? (string->utf32 sample-string 'big) sample-big)
      (check-equal? (string->utf32 sample-string 'little) sample-little)
      (check-equal? (utf32->string sample-big 'big #t) sample-string)
      (check-equal? (utf32->string sample-little 'little #t) sample-string))

    (test-case "byte order marks"
      (def big-bom #u8(0 0 254 255 0 0 0 65))
      (def little-bom #u8(255 254 0 0 65 0 0 0))
      (check-equal? (string->utf32 "A" 'big #t) big-bom)
      (check-equal? (string->utf32 "A" 'little #t) little-bom)
      (check-equal? (utf32->string big-bom 'little) "A")
      (check-equal? (utf32->string little-bom 'big) "A")
      (check-equal? (utf32->string big-bom 'big #t)
                    (list->string [(integer->char #xfeff) #\A])))

    (test-case "native endianness"
      (check-equal?
       (utf32->string (string->utf32 sample-string 'native) 'native #t)
       sample-string))

    (test-case "empty input"
      (check-equal? (string->utf32 "") #u8())
      (check-equal? (string->utf32 "" 'big #t) #u8(0 0 254 255))
      (check-equal? (utf32->string #u8()) ""))

    (test-case "invalid input"
      (check-exception (string->utf32 "A" 'middle)
                       contract-violation-error?)
      (check-exception (utf32->string #u8(0 0 0 65) 'middle)
                       contract-violation-error?)
      (check-exception (utf32->string #u8(0)) io-error?)
      (check-equal? (utf32->string #u8(0 0 216 0) 'big #t)
                    replacement-string)
      (check-equal? (utf32->string #u8(0 17 0 0) 'big #t)
                    replacement-string))))
