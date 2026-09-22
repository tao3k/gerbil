;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; RFC 4648 Base32 codec tests.

(import :std/test
        :std/error
        ./base32)
(export base32-test)

(def base32-test
  (test-suite "test :std/encoding/base32"
    (test-case "RFC 4648 vectors and case/padding options"
      (for-each
       (lambda (bytes padded unpadded)
         (check (base32-encode bytes) => padded)
         (check (base32-encode bytes padding: #f) => unpadded)
         (check (base32-encode bytes lowercase: #t) => (string-downcase padded))
         (check (base32-encode bytes padding: #f lowercase: #t) => (string-downcase unpadded))
         (check (base32-decode padded) => bytes)
         (check (base32-decode (string-downcase padded)) => bytes)
         (check (base32-decode padded no-padding: #t) => bytes)
         (check (base32-decode (string-downcase unpadded) no-padding: #t) => bytes)
         (unless (= (string-length padded) (string-length unpadded))
           (check-exception (base32-decode unpadded) ContractViolation?)))
       (list #u8() #u8(102) #u8(102 111) #u8(102 111 111)
             #u8(102 111 111 98) #u8(102 111 111 98 97) #u8(102 111 111 98 97 114))
       '("" "MY======" "MZXQ====" "MZXW6===" "MZXW6YQ=" "MZXW6YTB" "MZXW6YTBOI======")
       '("" "MY" "MZXQ" "MZXW6" "MZXW6YQ" "MZXW6YTB" "MZXW6YTBOI"))
      (check (base32-decode "mZxW6yTb") => #u8(102 111 111 98 97)))
    (test-case "binary zeros and every byte value"
      (check (base32-encode #u8(0 0 0 0 0)) => "AAAAAAAA")
      (check (base32-encode #u8(255)) => "74======")
      (check (base32-decode "AAAAAAAB") => #u8(0 0 0 0 1))
      (let (bytes (make-u8vector 256))
        (let loop ((i 0))
          (when (< i 256)
            (u8vector-set! bytes i i)
            (loop (+ i 1))))
        (check (base32-decode (base32-encode bytes)) => bytes)))
    (test-case "deterministic roundtrips across all residues"
      (let sizes ((n 0))
        (when (<= n 512)
          (let (bytes (make-u8vector n))
            (let fill ((i 0))
              (when (< i n)
                (u8vector-set! bytes i (modulo (+ (* i i 17) (* n 31) i) 256))
                (fill (+ i 1))))
            (let ((padded (base32-encode bytes))
                  (bare (base32-encode bytes padding: #f lowercase: #t)))
              (check (string-length padded) => (* 8 (quotient (+ n 4) 5)))
              (check (string-length bare) => (quotient (+ (* n 8) 4) 5))
              (check (base32-decode padded) => bytes)
              (check (base32-decode padded no-padding: #t) => bytes)
              (check (base32-decode bare no-padding: #t) => bytes)))
          (sizes (+ n 1)))))
    (test-case "invalid lengths, padding, alphabet and pad bits"
      (for-each
       (lambda (str)
         (check-exception (base32-decode str) ContractViolation?)
         (check-exception (base32-decode str no-padding: #t) ContractViolation?))
       '("A" "AAA" "AAAAAA" "AAAAAAAAA" "AAAAAAAAAAA" "AAAAAAAAAAAAAA"
         "A=======" "AAA=====" "AAAAAA==" "=" "========"
         "MY=" "MY=====" "MY=======" "MY==============" "MZXW6YTB="
         "M=AAAAAA" "MY======MY======" "MY=====A" "=Y======"
         "M0======" "M1======" "M8======" "M9======" "M+======" "M/======"
         "M-======" "M_======" "M ======" "M\n======" "M\t======" "M\x00;======"
         "M\x100;======" "MZ======" "MZXR====" "MZXW7===" "MZXW6YR="
         "MZ" "MZXR" "MZXW7" "MZXW6YR"))
      ;; Each possible nonzero low-bit pattern is invalid in every partial group.
      (for-each
       (lambda (prefix unused)
         (let loop ((value 1))
           (when (< value (expt 2 unused))
             (let* ((str (string-append prefix
                                       (string (string-ref "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567" value))))
                    (padded (string-append str (make-string (- 8 (string-length str)) #\=))))
               (check-exception (base32-decode str no-padding: #t) ContractViolation?)
               (check-exception (base32-decode padded) ContractViolation?))
             (loop (+ value 1)))))
       '("A" "AAA" "AAAA" "AAAAAA") '(2 4 1 3)))))
