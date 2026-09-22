;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; multibase tests
(import :std/test
        :std/error
        ./multibase)
(export multibase-test)

(def multibase-test
  (test-suite "multibase"
    (test-case "base58btc vectors"
      (for-each
       (lambda (vector)
         (def encoded (car vector))
         (def bytes (cadr vector))
         (check (multibase-encode multibase-base58-btc bytes) => encoded)
         (check (multibase-decode encoded) => bytes))
       (list (list "z" #u8())
             (list "z1" #u8(0))
             (list "z11" #u8(0 0))
             (list "z3VNr6P" #u8(97 98 99 100)))))
    (test-case "all encoding round trips"
      (for-each
       (lambda (encoding)
         (for-each
          (lambda (bytes)
            (check (multibase-decode (multibase-encode encoding bytes)) => bytes))
          (list #u8() #u8(0) #u8(0 0 1) #u8(255 254 253 252))))
       (list multibase-base58-btc multibase-base64 multibase-base64-pad
             multibase-base64-url multibase-base64-url-pad)))
    (test-case "strict validation"
      (for-each
       (lambda (encoded)
         (check (multibase-valid? encoded) => #t)
         (check (multibase-valid? (string-append "!" encoded "?")
                                  1 (+ 1 (string-length encoded))) => #t))
       '("z" "u" "U" "m" "M" "z1" "z3VNr6P"
         "uAA" "UAA==" "mAA" "MAA==" "uAAA" "UAAA=" "mAAA" "MAAA="
         "u-_8" "U-_8=" "m+/8" "M+/8=" "uAAAA" "UAAAA" "mAAAA" "MAAAA"))
      (for-each
       (lambda (encoded) (check (multibase-valid? encoded) => #f))
       '("" "?" "?abc" "Z123" "z0" "zO" "zI" "zl" "z!" "z " "z\x80;"
         "uA" "UA" "mA" "MA" "uAA==" "mAA==" "UAA" "MAA"
         "uAB" "UAB==" "mAB" "MAB==" "uAAB" "UAAB=" "mAAB" "MAAB="
         "u+/8" "U+/8=" "m-_8" "M-_8=" "UAA=" "MAA===" "U=AAA" "MAA==A"))
      (for-each
       (lambda (prefix)
         (for-each
          (lambda (junk)
            (check (multibase-valid? (string-append prefix junk)) => #f))
          '("!" " " "\n" "\x80;")))
       '("z" "u" "U" "m" "M"))
      (check (multibase-valid? "!uAA" 1) => #t)
      (check (multibase-valid? "!uAA?" 1 5) => #f)
      (check (multibase-valid? "z" 1 1) => #f))
    (test-case "validation bounds"
      (check-exception (multibase-valid? "z" -1) ContractViolation?)
      (check-exception (multibase-valid? "z" 1 0) ContractViolation?)
      (check-exception (multibase-valid? "z" 0 2) ContractViolation?)
      (check-exception (multibase-valid? "z" 2) ContractViolation?)
      (check-exception (multibase-valid? "" 0 -1) ContractViolation?)
      (check-exception (multibase-valid? "z" 1/2) ContractViolation?)
      (check-exception (multibase-valid? "z" 0 1/2) ContractViolation?))
    (test-case "invalid encodings"
      (check-exception (multibase-decode "") ContractViolation?)
      (check-exception (multibase-decode "?abc") ContractViolation?)
      (check-exception (multibase-encode #\? #u8(1)) ContractViolation?)
      (for-each
       (lambda (encoded)
         (check-exception (multibase-decode encoded) IOError?))
       '("z0" "zO" "zI" "zl" "z!")))))
