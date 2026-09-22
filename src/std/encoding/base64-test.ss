;;; -*- Gerbil -*-
;;; © fare
;;; :std/encoding/base64 unit test
(import :std/test
        :std/error
        ./base64
        ./hex)
(export base64-test)

(def base64-test
  (test-suite "test :std/encoding/base64"

    (test-case "RFC 4648 §10 test vectors — standard padded round-trip"
      ;; https://www.rfc-editor.org/rfc/rfc4648#section-10
      (def (str->b64 s)  (base64-encode (string->utf8 s)))
      (def (b64->str s)  (utf8->string (base64-decode s)))
      (check-codec str->b64 b64->str
        ""       <=> ""
        "f"      <=> "Zg=="
        "fo"     <=> "Zm8="
        "foo"    <=> "Zm9v"
        "foob"   <=> "Zm9vYg=="
        "fooba"  <=> "Zm9vYmE="
        "foobar" <=> "Zm9vYmFy"
        "Man"    <=> "TWFu"
        ;; standard decoder rejects unpadded input
        error? !<= "Zg"    ; "f" without its trailing ==
        error? !<= "Zm8"   ; "fo" without its trailing =
        ;; and rejects outright malformed input
        error? !<= "Z"))   ; truncated: only 1 char in a group

    (test-case "no-padding round-trip, and padded input also accepted"
      (def (str->b64/np s)  (base64-encode (string->utf8 s) padding: #f))
      (def (b64/np->str s)  (utf8->string (base64-decode s no-padding: #t)))
      (check-codec str->b64/np b64/np->str
        ""    <=> ""
        "f"   <=> "Zg"
        "fo"  <=> "Zm8"
        "foo" <=> "Zm9v"
        ;; one-way: no-padding decoder also accepts standard padded output
        "f"  <= "Zg=="
        "fo" <= "Zm8="
        ;; still rejects truly invalid input
        error? !<= "Z"))   ; 1-char group is always invalid

    (test-case "binary data round-trip via hex"
      (def (hex->b64 h)  (base64-encode (hex-decode h)))
      (def (b64->hex s)  (hex-encode (base64-decode s)))
      (check-codec hex->b64 b64->hex
        ""       <=> ""
        "000000" <=> "AAAA"
        "ffffff" <=> "////"
        "fbfffb" <=> "+//7"))  ; bytes whose 6-bit groups hit indices 62 (+) and 63 (/)

    (test-case "url-safe alphabet: - and _ instead of + and /"
      (def (hex->b64url h)  (base64-encode (hex-decode h) urlsafe: #t padding: #f))
      (def (b64url->hex s)  (hex-encode (base64-decode s urlsafe: #t no-padding: #t)))
      (check-codec hex->b64url b64url->hex
        ""       <=> ""
        "000000" <=> "AAAA"
        "ffffff" <=> "____"
        "fbfffb" <=> "-__7"))  ; standard "+//7" becomes urlsafe "-__7"

    (test-case "subu8vector->base64-string — encode a slice"
      ;; bytes at indices 1–3 of "xfoox" are "foo"
      (check (subu8vector->base64-string (string->utf8 "xfoox") 1 4) => "Zm9v"))

    (test-case "base64-substring->u8vector — decode a slice"
      ;; chars at indices 2–5 of "xxZm9vyy" are "Zm9v" → "foo"
      (check (base64-substring->u8vector "xxZm9vyy" 2 6) => (string->utf8 "foo")))

    (test-case "width: — wrap encoded output at given column"
      ;; 48 bytes → exactly 64 base64 chars; width:32 → two lines of 32
      (let* ((bv  (make-u8vector 48 65))
             (enc (base64-encode bv width: 32)))
        (check (string-length enc) => 65)   ; 32 + newline + 32
        (check (string-ref enc 32) => #\newline)
        ;; round-trip: splice out the newline and decode
        (check (base64-decode (string-append (substring enc 0 32)
                                             (substring enc 33 65)))
               => bv)))

    (test-case "strict decoded lengths and all remainders"
      (for-each
        (lambda (entry)
          (check (base64-decoded-length (car entry)) => (cadr entry)))
        '(("" 0) ("Zg==" 1) ("Zm8=" 2) ("Zm9v" 3)
          ("Zm9vYg==" 4) ("Zm9vYmE=" 5) ("Zm9vYmFy" 6)))
      (for-each
        (lambda (entry)
          (check (base64-decoded-length (car entry) padding: #f) => (cadr entry)))
        '(("" 0) ("Zg" 1) ("Zm8" 2) ("Zm9v" 3)
          ("Zm9vYg" 4) ("Zm9vYmE" 5) ("Zm9vYmFy" 6)))
      (for-each
        (lambda (s)
          (check (base64-decoded-length s) => #f))
        '("A" "AA" "AAA" "AAAAA" "AAAAAA" "AAAAAAA"))
      (for-each
        (lambda (s)
          (check (base64-decoded-length s padding: #f) => #f))
        '("A" "AAAAA" "AAAAAAAAA")))

    (test-case "strict padding placement and count"
      (for-each
        (lambda (s)
          (check (base64-decoded-length s) => #f)
          (check (base64-decoded-length s padding: #f) => #f))
        '("=" "==" "===" "====" "A=" "A==" "A==="
          "AA=" "AA===" "AAA==" "AAAA=" "AAAA===="
          "=AAA" "A=AA" "AA=A" "AA==A" "AAA=A" "AA==AAAA"
          "AAA=AAAA" "AA==\n" "AAA= " "AA==AA=="))
      (for-each
        (lambda (s)
          (check (base64-decoded-length s padding: #f) => #f))
        '("AA==" "AAA=" "AAAAAA==" "AAAAAAA=")))

    (test-case "strict alphabets and rejected nonalphabet characters"
      (for-each
        (lambda (padding?)
          (check (base64-decoded-length "+//7" padding: padding?) => 3)
          (check (base64-decoded-length "-__7" padding: padding? urlsafe: #t) => 3)
          (for-each
            (lambda (s)
              (check (base64-decoded-length s padding: padding?) => #f))
            '("-AAA" "_AAA" "AA-A" "AAA_" "-//7" "+__7"))
          (for-each
            (lambda (s)
              (check (base64-decoded-length s padding: padding? urlsafe: #t) => #f))
            '("+AAA" "/AAA" "AA+A" "AAA/" "-//7" "+__7"))
          (for-each
            (lambda (urlsafe?)
              (for-each
                (lambda (c)
                  (let loop ((i 0))
                    (when (< i 4)
                      (let (s (make-string 4 #\A))
                        (string-set! s i c)
                        (check (base64-decoded-length s padding: padding? urlsafe: urlsafe?)
                               => #f))
                      (loop (+ i 1)))))
                (list #\space #\tab #\newline #\return #\. #\, #\: #\@
                      #\[ #\` #\{ (integer->char 0) (integer->char 127)
                      (integer->char 128) (integer->char #x100))))
            '(#f #t)))
        '(#f #t)))

    (test-case "all terminal sextets have canonical unused bits"
      (for-each
        (lambda (urlsafe?)
          (let (alphabet (if urlsafe?
                          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_"
                          "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"))
            (let loop ((i 0))
              (when (< i 64)
                (let* ((c (string (string-ref alphabet i)))
                       (one (string-append "A" c))
                       (two (string-append "AA" c)))
                  (for-each
                    (lambda (prefix)
                      (let (n (if (string=? prefix "") 0 3))
                        (check (base64-decoded-length (string-append prefix one "==") urlsafe: urlsafe?)
                               => (and (zero? (modulo i 16)) (+ n 1)))
                        (check (base64-decoded-length (string-append prefix one) padding: #f urlsafe: urlsafe?)
                               => (and (zero? (modulo i 16)) (+ n 1)))
                        (check (base64-decoded-length (string-append prefix two "=") urlsafe: urlsafe?)
                               => (and (zero? (modulo i 4)) (+ n 2)))
                        (check (base64-decoded-length (string-append prefix two) padding: #f urlsafe: urlsafe?)
                               => (and (zero? (modulo i 4)) (+ n 2)))
                        (check (base64-decoded-length (string-append prefix "AAA" c) urlsafe: urlsafe?)
                               => (+ n 3))))
                    '("" "AAAA")))
                (loop (+ i 1))))))
        '(#f #t)))

    (test-case "strict substring boundaries and optional arguments"
      (check (base64-decoded-length "!Zg==?" 1 5) => 1)
      (check (base64-decoded-length "!Zm8=?" 1 5) => 2)
      (check (base64-decoded-length "!Zm9v?" 1 5) => 3)
      (check (base64-decoded-length "!Zg==" 1) => 1)
      (check (base64-decoded-length "!Zg==?" 1 3 padding: #f) => 1)
      (check (base64-decoded-length "!Zm8=?" 1 4 padding: #f) => 2)
      (check (base64-decoded-length "!-_8=?" 1 4 padding: #f urlsafe: #t) => 2)
      (check (base64-decoded-length "!-_8=?" 1 5 urlsafe: #t) => 2)
      (check (base64-decoded-length "!Zg==?" 1 4) => #f)
      (check (base64-decoded-length "!Zg==?" 1 6) => #f)
      (check (base64-decoded-length "!Zg==?" 0 5) => #f)
      (check (base64-decoded-length "!Zh==?" 1 5) => #f)
      (check (base64-decoded-length "!Zg==?" 1 2 padding: #f) => #f)
      (for-each
        (lambda (i)
          (check (base64-decoded-length "!???" i i) => 0)
          (check (base64-decoded-length "!???" i i padding: #f urlsafe: #t) => 0))
        '(0 1 2 3 4))
      (check (base64-decoded-length "!???" 4) => 0))

    (test-case "strict bounds and argument contracts"
      (for-each
        (lambda (bounds)
          (check-exception (base64-decoded-length "AAAA" (car bounds) (cadr bounds))
                           ContractViolation?))
        '((-1 4) (0 -1) (3 2) (0 5) (5 5) (-2 -1)
          (0 1.0) (0 1/2) (#f 4) (0 #f)
          (0 999999999999999999999999999999999999)))
      (check-exception (base64-decoded-length "" 1) ContractViolation?)
      (check-exception (base64-decoded-length #f 0 0) ContractViolation?))

    (test-case "strict lengths agree with all encoder modes"
      (let (bytes (list->u8vector (iota 256)))
        (for-each
          (lambda (padding?)
            (for-each
              (lambda (urlsafe?)
                (let loop ((n 0))
                  (when (<= n 256)
                    (let* ((s (subu8vector->base64-string bytes 0 n padding: padding? urlsafe: urlsafe?))
                           (wrapped (string-append "!" s "?")))
                      (check (base64-decoded-length s padding: padding? urlsafe: urlsafe?) => n)
                      (check (base64-decoded-length wrapped 1 (+ 1 (string-length s))
                                                    padding: padding? urlsafe: urlsafe?) => n)
                      (check (u8vector-length (base64-decode s no-padding: (not padding?) urlsafe: urlsafe?))
                             => n))
                    (loop (+ n 1)))))
              '(#f #t)))
          '(#f #t))))

    (test-case "legacy decoder remains permissive"
      (for-each
        (lambda (s)
          (check (base64-decode s) => #u8(102))
          (check (base64-decoded-length s) => #f))
        '("Zg=" "Zh==" "Z g==" "Zg==junk")))

    (test-case "all 256 byte values survive round-trip"
      (let (all-bytes (list->u8vector (iota 256)))
        (check (base64-decode (base64-encode all-bytes)) => all-bytes)))))
