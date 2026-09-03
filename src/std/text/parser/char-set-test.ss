(export char-set-test)
(import
  :std/error
  :std/iter
  :std/test
  ./char-set)

(def char-set-test
  (test-suite "test :std/text/parser/char-set"
    (test-case "UTF-16 surrogate infrastructure"
      (check (codepoint-surrogate? #xd7ff) => #f)
      (check (codepoint-surrogate? #xd800) => #t)
      (check (codepoint-surrogate? #xdfff) => #t)
      (check (codepoint-surrogate? #xe000) => #f)
      (check (codepoint-high-surrogate? #xd7ff) => #f)
      (check (codepoint-high-surrogate? #xd800) => #t)
      (check (codepoint-high-surrogate? #xdbff) => #t)
      (check (codepoint-high-surrogate? #xdc00) => #f)
      (check (codepoint-low-surrogate? #xdbff) => #f)
      (check (codepoint-low-surrogate? #xdc00) => #t)
      (check (codepoint-low-surrogate? #xdfff) => #t)
      (check (codepoint-low-surrogate? #xe000) => #f)
      (check (codepoint-surrogate-pair? #xd800 #xdc00) => #t)
      (check (codepoint-surrogate-pair? #xdbff #xdfff) => #t)
      (check (codepoint-surrogate-pair? #xd800 #xd800) => #f)
      (check (codepoint-surrogate-pair? #xdc00 #xdc00) => #f)
      (defrule (check-round-trip codepoint expected-high expected-low)
        (let-values (((high low) (codepoint-surrogates codepoint)))
          (check high => expected-high)
          (check low => expected-low)
          (check (surrogates->codepoint high low) => codepoint)
          (check (surrogates->char high low) => (integer->char codepoint))))
      (check-round-trip #x10000 #xd800 #xdc00)
      (check-round-trip #x1f642 #xd83d #xde42)
      (check-round-trip #x10ffff #xdbff #xdfff)
      (check-exception (codepoint-surrogates #xffff) contract-violation-error?)
      (check-exception (codepoint-surrogates #x110000) contract-violation-error?)
      (check-exception (surrogates->codepoint #xd7ff #xdc00) contract-violation-error?)
      (check-exception (surrogates->codepoint #xd800 #xe000) contract-violation-error?))

    (test-case "codepoint-scheme-whitespace?, char-scheme-whitespace?"
      (for (i (in-range #x4000)) ;; we could go to (1+ max-char-code), but why bother?
        (alet (c (with-catch false (cut integer->char i)))
          (let (w? (char-whitespace? c))
            (check (and (member i [#x09 #x0A #x0B #x0C #x0D #x20 #xA0
                                   #x1680 (iota 11 #x2000)... #x202f #x205f #x3000
                                   #x85 #x2028 #x2029]) #t) => w?)
            (check (char-scheme-whitespace? c) => w?)
            (check (codepoint-scheme-whitespace? i) => w?)))))
    (test-case "char-digit, digit-char"
      (defrule (checks (n c base ...) ...)
        (begin
          (begin (when c (check (char-ascii-digit c base ...) => n))
                 (check (digit-char n base ...) => c)
                 (check (digit-char n (or base ... 10) #t) => (and c (char-upcase c)))) ...))
      (checks (0 #\0) (0 #\0 2) (0 #\0 35)
              (9 #\9) (9 #f 3) (9 #\9 24)
              (10 #f) (10 #\a 11) (10 #\a 33)
              (15 #f) (15 #\f 16) (15 #\f 35)
              (35 #f) (35 #f 35) (35 #\z 36)))))
