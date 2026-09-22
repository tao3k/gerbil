;;; -*- Gerbil -*-
;;; © vyzo
;;; multibase encoding
(import :std/error
        ./base58
        ./base64)
(export #t)

(def multibase-base58-btc #\z)
(def multibase-base64 #\m)
(def multibase-base64-pad #\M)
(def multibase-base64-url #\u)
(def multibase-base64-url-pad #\U)

(def (multibase-encode (encoding : :char)
                       (bytes    : :u8vector))
  => :string
  (cond
   ((eq? encoding multibase-base58-btc)
    (string-append (string encoding) (base58-encode bytes)))
   ((eq? encoding multibase-base64-url)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #f
                                  urlsafe: #t)))
   ((eq? encoding multibase-base64)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #f
                                  urlsafe: #f)))
   ((eq? encoding multibase-base64-pad)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #t
                                  urlsafe: #f)))
   ((eq? encoding multibase-base64-url-pad)
    (string-append (string encoding)
                   (base64-encode bytes
                                  padding: #t
                                  urlsafe: #t)))
   (else
    (raise-bad-argument multibase-encode "unsupported encoding" encoding))))

;; Validate the prefix and canonical payload without allocating decoded data.
(def (multibase-valid? (str   : :string)
                       (start : :fixnum := 0)
                       (end   : :fixnum := (string-length str)))
  => :boolean
  (unless (and (fx<= 0 start) (fx<= start end) (fx<= end (string-length str)))
    (raise-bad-argument multibase-valid? "0 <= start <= end <= string length"
                        start end (string-length str)))
  (and (fx< start end)
       (let ((encoding (string-ref str start))
             (payload (fx1+ start)))
         (case encoding
           ((#\z) (base58-valid? str payload end))
           ((#\u #\U #\m #\M)
            (and (base64-decoded-length
                  str payload end
                  padding: (or (eq? encoding #\U) (eq? encoding #\M))
                  urlsafe: (or (eq? encoding #\u) (eq? encoding #\U)))
                 #t))
           (else #f)))))

(def (multibase-decode (str : :string))
  => :u8vector
  (when (zero? (string-length str))
    (raise-bad-argument multibase-decode "missing encoding" str))
  (let (encoding (string-ref str 0))
    (cond
   ((eq? encoding multibase-base58-btc)
    (base58-decode (substring str 1 (string-length str))))
   ((eq? encoding multibase-base64-url)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #t
                                urlsafe: #t))
   ((eq? encoding multibase-base64)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #t
                                urlsafe: #f))
   ((eq? encoding multibase-base64-pad)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #f
                                urlsafe: #f))
   ((eq? encoding multibase-base64-url-pad)
    (base64-substring->u8vector str 1 (string-length str)
                                no-padding: #f
                                urlsafe: #t))
   (else
    (raise-bad-argument multibase-decode "unsupported encoding" encoding)))))
