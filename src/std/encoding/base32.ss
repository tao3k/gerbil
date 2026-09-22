;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; RFC 4648 Base32 encoding and decoding.

(import :std/error)
(export base32-encode
        base32-decode)

;; Encode bytes with optional padding and lowercase alphabet; see base32.md.
(def (base32-encode (bytes : :u8vector)
                    padding: (padding? : :boolean := #t)
                    lowercase: (lowercase? : :boolean := #f))
  => :string
  (let* ((len (u8vector-length bytes))
         ;; Generic arithmetic avoids overflow before checking the output size.
         (size (if padding?
                 (* 8 (quotient (+ len 4) 5))
                 (quotient (+ (* len 8) 4) 5)))
         (alphabet (if lowercase?
                     "abcdefghijklmnopqrstuvwxyz234567"
                     "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567")))
    (unless (fixnum? size)
      (raise-contract-violation base32-encode "Base32 output length exceeds fixnum range"
                                length: len output-length: size))
    (let (out (make-string size #\=))
      ;; Flush before reading another byte: at most four pending bits plus eight.
      (let loop ((i 0) (j 0) (bits 0) (acc 0))
        (cond
         ((fx>= bits 5)
          (let (rest (fx- bits 5))
            (string-set! out j (string-ref alphabet (fxarithmetic-shift-right acc rest)))
            (loop i (fx1+ j) rest
                  (fxand acc (fx1- (fxarithmetic-shift-left 1 rest))))))
         ((fx< i len)
          (loop (fx1+ i) j (fx+ bits 8)
                (fxior (fxarithmetic-shift-left acc 8) (u8vector-ref bytes i))))
         (else
          (when (fx> bits 0)
            (string-set! out j
                         (string-ref alphabet (fxarithmetic-shift-left acc (fx- 5 bits)))))
          out))))))

;; Decode either letter case, enforcing canonical lengths, padding and pad bits.
(def (base32-decode (str : :string)
                    no-padding: (no-padding? : :boolean := #f))
  => :u8vector
  (let* ((len (string-length str))
         (end (let strip ((i len))
                (if (and (fx> i 0) (char=? (string-ref str (fx1- i)) #\=))
                  (strip (fx1- i))
                  i)))
         (residue (fxmodulo end 8))
         (padding (fx- len end)))
    (when (memv residue '(1 3 6))
      (raise-contract-violation base32-decode "Impossible Base32 data length"
                                length: len data-length: end))
    (unless (if (fxzero? padding)
              (or no-padding? (fxzero? residue))
              (and (fx> residue 0) (fx= padding (fx- 8 residue))))
      (raise-contract-violation base32-decode "Incorrect Base32 padding"
                                index: end length: len padding: padding))
    ;; Divide before multiplying: the decoded size cannot exceed the input size.
    (let* ((size (fx+ (fx* (fxquotient end 8) 5)
                     (fxquotient (fx* residue 5) 8)))
           (out (make-u8vector size)))
      (let loop ((i 0) (j 0) (bits 0) (acc 0))
        (if (fx< i end)
          (let* ((char (string-ref str i))
                 (code (char->integer char))
                 (value (cond
                         ((and (fx>= code 65) (fx<= code 90)) (fx- code 65))
                         ((and (fx>= code 97) (fx<= code 122)) (fx- code 97))
                         ((and (fx>= code 50) (fx<= code 55)) (fx- code 24))
                         (else
                          (raise-contract-violation base32-decode "Invalid Base32 character"
                                                    index: i length: len char: char))))
                 (acc (fxior (fxarithmetic-shift-left acc 5) value))
                 (bits (fx+ bits 5)))
            ;; At most seven pending bits plus five; emit at most one byte.
            (if (fx>= bits 8)
              (let (rest (fx- bits 8))
                (u8vector-set! out j (fxarithmetic-shift-right acc rest))
                (loop (fx1+ i) (fx1+ j) rest
                      (fxand acc (fx1- (fxarithmetic-shift-left 1 rest)))))
              (loop (fx1+ i) j bits acc)))
          (begin
            (unless (fxzero? acc)
              (raise-contract-violation base32-decode "Nonzero Base32 unused pad bits"
                                        index: (fx1- end) length: len
                                        char: (string-ref str (fx1- end))))
            out))))))
