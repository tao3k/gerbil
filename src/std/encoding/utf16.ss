;;; -*- Gerbil -*-
;;; © vyzo
;;; string<->utf16 conversion

(import :std/error
        (only-in :std/text/parser/char-set
                 codepoint-high-surrogate?
                 codepoint-surrogate?
                 codepoint-surrogate-pair?
                 codepoint-surrogates
                 surrogates->char)
        :std/vector/u8vector)
(export string->utf16 utf16->string)

(declare (not safe))

(def (string->utf16
      (str : :string)
      (endianness : :symbol := big)
      (bom? : :boolean := #f))
  => :u8vector
  (let (u16-set!
        (case endianness
          ((big) u16-set!/be)
          ((little) u16-set!/le)
          ((native) &u8vector-u16-set!/native)
          (else
           (raise-bad-argument string->utf16 "endianness" endianness))))
    (utf16-encode str u16-set! bom?)))

(def (utf16-encode
      (str : :string)
      (u16-set! : :procedure)
      (bom? : :boolean))
  => :u8vector
  (if bom?
    (let (bytes (make-u8vector (fx+ (fx* 4 (string-length str)) 2)))
      (u16-set! bytes 0 #xfeff)
      (utf16-encode! str bytes 2 u16-set!))
    (let (bytes (make-u8vector (fx* 4 (string-length str))))
      (utf16-encode! str bytes 0 u16-set!))))

(def (utf16-encode!
      (str : :string)
      (bytes : :u8vector)
      (j : :fixnum)
      (u16-set! : :procedure))
  => :u8vector
  (def str-len (string-length str))
  (let lp ((i 0) (j j))
    (cond
     ((fx< i str-len)
      (let* ((char (string-ref str i))
             (codepoint (char->integer char)))
        (cond
         ((and (fx<= 0 codepoint #xffff)
               (not (codepoint-surrogate? codepoint)))
          (u16-set! bytes j codepoint)
          (lp (fx1+ i) (fx+ j 2)))
         ((fx<= #x10000 codepoint #x10ffff)
          (let-values (((high low) (codepoint-surrogates codepoint)))
            (u16-set! bytes j high)
            (u16-set! bytes (fx+ j 2) low)
            (lp (fx1+ i) (fx+ j 4))))
         (else
          (raise-io-error utf16-encode! "Illegal codepoint" char codepoint)))))
     ((fx< j (u8vector-length bytes))
      (u8vector-shrink! bytes j)
      bytes)
     (else bytes))))

(def (utf16->string
      (bytes : :u8vector)
      (endianness : :symbol := big)
      (endianness-mandatory? : :boolean := #f))
  => :string
  (let (u16-ref
        (case endianness
          ((big) u16-ref/be)
          ((little) u16-ref/le)
          ((native) &u8vector-u16-ref/native)
          (else
           (raise-bad-argument utf16->string "endianness" endianness))))
    (utf16-decode bytes u16-ref (not endianness-mandatory?))))

(def (utf16-decode
      (bytes : :u8vector)
      (u16-ref : :procedure)
      (detect-bom? : :boolean))
  => :string
  (def len (u8vector-length bytes))
  (unless (fxeven? len)
    (raise-io-error utf16-decode "Cannot decode UTF-16; odd length u8vector" bytes))
  (if detect-bom?
    (if (fx>= len 2)
      (let ((b0 (u8vector-ref bytes 0))
            (b1 (u8vector-ref bytes 1)))
        (cond
         ((and (fx= b0 #xfe) (fx= b1 #xff))
          (utf16-decode! bytes 2 u16-ref/be))
         ((and (fx= b0 #xff) (fx= b1 #xfe))
          (utf16-decode! bytes 2 u16-ref/le))
         (else
          (utf16-decode! bytes 0 u16-ref))))
      "")
    (utf16-decode! bytes 0 u16-ref)))

(def (utf16-decode!
      (bytes : :u8vector)
      (i : :fixnum)
      (u16-ref : :procedure))
  => :string
  (def byte-len (u8vector-length bytes))
  (def str (make-string (fxquotient (fx- byte-len i) 2)))
  (let lp ((i i) (j 0))
    (cond
     ((fx< i byte-len)
      (using (word (u16-ref bytes i) :- :fixnum)
        (cond
         ((and (fx<= 0 word #xffff)
               (not (codepoint-surrogate? word)))
          (string-set! str j (integer->char word))
          (lp (fx+ i 2) (fx1+ j)))
         ((codepoint-high-surrogate? word)
          (let (next-i (fx+ i 2))
            (if (fx< next-i byte-len)
              (using (next-word (u16-ref bytes next-i) :- :fixnum)
                (if (codepoint-surrogate-pair? word next-word)
                  (begin
                    (string-set! str j (surrogates->char word next-word))
                    (lp (fx+ i 4) (fx1+ j)))
                  (begin
                    ;; Preserve the next word; it may begin a valid character.
                    (string-set! str j (integer->char #xfffd))
                    (lp next-i (fx1+ j)))))
              (begin
                (string-set! str j (integer->char #xfffd))
                (lp next-i (fx1+ j))))))
         (else
          (string-set! str j (integer->char #xfffd))
          (lp (fx+ i 2) (fx1+ j))))))
     ((fx< j (string-length str))
      (string-shrink! str j)
      str)
     (else str))))

(def u16-ref/be
  (if (eq? native-endianness big)
    &u8vector-u16-ref/native
    (lambda (v i)
      (&u8vector-uint-ref/be v i 2))))

(def u16-ref/le
  (if (eq? native-endianness little)
    &u8vector-u16-ref/native
    (lambda (v i)
      (&u8vector-uint-ref/le v i 2))))

(def u16-set!/be
  (if (eq? native-endianness big)
    &u8vector-u16-set!/native
    (lambda (v i n)
      (&u8vector-uint-set!/be v i n 2))))

(def u16-set!/le
  (if (eq? native-endianness little)
    &u8vector-u16-set!/native
    (lambda (v i n)
      (&u8vector-uint-set!/le v i n 2))))
