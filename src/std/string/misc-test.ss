(export string-test)

(import
  :std/error
  :std/format
  :std/iter
  :std/string/misc
  :std/text/pregexp
  :std/test)

(def (vowel? c)
  (memv c '(#\a #\e #\i #\o #\u)))

(def string-test
  (test-suite "test :std/misc/string"
    (test-case "string-split-suffix"
      (check-function string-split-suffix
         ".c" "foo.c" => (values "foo" ".c")
         ".c" "foo"   => (values "foo" "")))
    (test-case "string-trim-suffix"
      (check-function string-trim-suffix
         ".c" "foo.c" => "foo"
         ".c" "foo"   => "foo"))
    (test-case "string-split-eol"
      (check-function string-split-eol
         "foo\n" => (values "foo" "\n")
         "foo\r\n" => (values "foo" "\r\n")
         "foo\r" => (values "foo" "\r")
         "foo\n\n\n" => (values "foo\n\n" "\n")
         "foo" => (values "foo" "")))
    (test-case "string-trim-eol"
      (check-function string-trim-eol
        "foo\n" => "foo"
        "foo\r" => "foo"
        "foo\r\n" => "foo"
        "foo\n\n" => "foo\n"
        "foo\r\r" => "foo\r"
        "foo\r\n\r\n" => "foo\r\n"
        "foo" => "foo"))
    (test-case "string-subst"
      (check-function string-subst
         ""             ""   ""  count: 1   =>  ""
         "abc"          "b"  "_" count: 0   =>  "abc"
         "abc"          ""   ""  count: #f  =>  "abc"
         ""             "b"  "c" count: #f  =>  ""
         "hello, world" "l"  "_" count: 2   =>  "he__o, world"
         "abb"          "b*" "_" count: #f  =>  "abb"
         "abc"          "b"  "_" count: #t  =>! contract-violation-error?
         ;; empty old
         ""     "" "_"  count: 1  => "_"
         "a"    "" "_"  count: 1  => "_a"
         "abba" "" "_"  count: 2  => "_a_bba"
         "abc"  "" "_"  count: #f => "_a_b_c_"
         "abc"  "" "_"  count: 3  => "_a_b_c"
         "abc"  "" "_"  count: 2  => "_a_bc"
         "abc"  "" "__" count: 2  => "__a__bc"
         "a"    "" "_"  count: 3  => "_a_"
         ;; non-empty old
         "abc"   "b"  "_" count: #f => "a_c"
         "abc"   "b"  "_" count: 2  => "a_c"
         "abbcb" "b"  "_" count: 2  => "a__cb"
         "abbcb" "b"  "_" count: 3  => "a__c_"
         "abbcb" "bb" "_" count: #f => "a_cb"))
    (test-case "string-whitespace?"
      (check-function string-whitespace?
         "" => #t
         " " => #t
         " \n" => #t
         " \n\t\r\f\v" => #t
         " a" => #f))
    (test-case "random-string"
      (check-eq? (and (pregexp-match "^\\w+$" (random-string 100)) #t) #t)
      (check-function random-string
         0 => ""
         -1 => "")
      (check-equal? (string-length (random-string 5)) 5))
    (test-case "test string-substitute-char-if, string-substitute-char"
      (defrule (checks ((args ...) result) ...)
        (begin (begin (check (string-substitute-char "banana" #\o #\a args ...)
                             => result)
                      (check (string-substitute-char-if "banana" #\o (cut eqv? <> #\a) args ...)
                             => result)) ...))
      (checks (() "bonono")
              ((start: 3) "banono")
              ((end: 5) "bonona")
              ((start: 1 end: 5) "bonona")
              ((count: 2) "bonona")
              ((count: 2 from-end: #t) "banono"))
      (defrule (checks2 ((args ...) pred result) ...)
        (begin (begin (check (string-substitute-char "banana" #\o args ...)
                             => result)
                      (check (string-substitute-char-if "banana" #\o pred)
                             => result)) ...))
      (checks2 ((#\c test: char>?) (cut char>? #\c <>) "oonono")
               ((#\a test-not: equal?) (lambda (x) (not (equal? x #\a))) "oaoaoa")
               ((#\A key: char-upcase) (lambda (x) (equal? (char-upcase x) #\A)) "bonono")))
    (test-case "test as-string<?"
      (check (as-string<? '(foo: 1 bar) #(f #\o "o1" baz)) => #t)
      (check (as-string<? 'foo "foo") => #f))
    (test-case "string-trim"
      (check-function string-trim
        ""          => ""
        "   "       => ""
        "abc"       => "abc"
        " abc"      => "abc"
        "abc "      => "abc"
        " abc "     => "abc"
        "\t foo \n" => "foo"
        "a"         => "a"   ; single non-whitespace char — tests right-scan edge case
        " a"        => "a"
        "a "        => "a"))

    (test-case "string-trim-prefix / string-split-prefix"
      (check-function string-trim-prefix
        "foo" "foobar" => "bar"
        "foo" "foo"    => ""
        "foo" "bar"    => "bar"
        "foo" ""       => ""
        ""    "abc"    => "abc")
      (check-function string-split-prefix
        "foo" "foobar" => (values "bar" "foo")
        "foo" "foo"    => (values ""    "foo")
        "foo" "bar"    => (values "bar" "")))

    (test-case "string-null?"
      (check-function string-null?
        ""  => #t
        "a" => #f
        " " => #f))

    (test-case "string-reverse"
      (check-function string-reverse
        ""      => ""
        "a"     => "a"
        "abc"   => "cba"
        "abcde" 1 4 => "dcb"))   ; reverses s[1..4) = "bcd"

    (test-case "string-reverse!"
      (let (s (string-copy "abcde"))
        (string-reverse! s)
        (check s => "edcba"))
      (let (s (string-copy "abcde"))
        (string-reverse! s 1 4)   ; reverses s[1..4) = "bcd" → "dcb"
        (check s => "adcbe")))

    (test-case "string-compare"
      (def (cmp s1 s2) (string-compare s1 s2 (lambda _ 'lt) (lambda _ 'eq) (lambda _ 'gt)))
      (check (cmp "abc" "abc") => 'eq)
      (check (cmp "abc" "abd") => 'lt)
      (check (cmp "abd" "abc") => 'gt)
      (check (cmp "ab"  "abc") => 'lt)
      (check (cmp "abc" "ab")  => 'gt)
      ; index passed to proc is the mismatch position in s1
      (check (string-compare "abc" "axc" values (lambda _ #f) (lambda _ #f)) => 1))

    (test-case "string-compare-ci"
      (def (cmp s1 s2) (string-compare-ci s1 s2 (lambda _ 'lt) (lambda _ 'eq) (lambda _ 'gt)))
      (check (cmp "ABC" "abc") => 'eq)
      (check (cmp "ABC" "ABD") => 'lt)
      (check (cmp "ABD" "abc") => 'gt))

    (test-case "string= string<> string< string> string<= string>="
      (check (and (string= "abc" "abc") #t) => #t)
      (check (string= "abc" "abd")          => #f)
      (check (string= "abc" "ab")           => #f)   ; different lengths
      (check (and (string<> "abc" "abd") #t) => #t)
      (check (string<> "abc" "abc")          => #f)
      (check (and (string< "abc" "abd") #t) => #t)
      (check (string< "abc" "abc")          => #f)
      (check (string< "abd" "abc")          => #f)
      (check (and (string> "abd" "abc") #t) => #t)
      (check (string> "abc" "abc")          => #f)
      (check (and (string<= "abc" "abc") #t) => #t)
      (check (and (string<= "abc" "abd") #t) => #t)
      (check (string<= "abd" "abc")          => #f)
      (check (and (string>= "abc" "abc") #t) => #t)
      (check (and (string>= "abd" "abc") #t) => #t)
      (check (string>= "abc" "abd")          => #f)
      ; with start/end substrings
      (check (and (string= "xabcy" "abc" 1 4 0 3) #t) => #t)
      (check (string= "xabcy" "abc" 1 3 0 3)          => #f))

    (test-case "string-ci= string-ci<> string-ci< string-ci> string-ci<= string-ci>="
      (check (and (string-ci= "ABC" "abc") #t) => #t)
      (check (string-ci= "ABC" "abd")          => #f)
      (check (and (string-ci<> "ABC" "abd") #t) => #t)
      (check (string-ci<> "ABC" "abc")          => #f)
      (check (and (string-ci< "abc" "ABD") #t) => #t)
      (check (string-ci< "ABC" "abc")           => #f)
      (check (and (string-ci> "ABD" "abc") #t) => #t)
      (check (string-ci> "ABC" "abc")           => #f)
      (check (and (string-ci<= "ABC" "abc") #t) => #t)
      (check (and (string-ci<= "ABC" "ABD") #t) => #t)
      (check (string-ci<= "ABD" "abc")           => #f)
      (check (and (string-ci>= "ABC" "abc") #t) => #t)
      (check (and (string-ci>= "ABD" "abc") #t) => #t)
      (check (string-ci>= "ABC" "abd")           => #f))

    (test-case "string-prefix-length string-suffix-length"
      (check-function string-prefix-length
        "abc" "abcdef" => 3
        "abc" "abd"    => 2
        ""    "abc"    => 0
        "xyz" "abc"    => 0
        "abc" "abc"    => 3)
      (check-function string-suffix-length
        "def" "abcdef" => 3
        "bc"  "abc"    => 2
        ""    "abc"    => 0
        "xyz" "abc"    => 0))

    (test-case "string-prefix-length-ci string-suffix-length-ci"
      (check-function string-prefix-length-ci
        "ABC" "abcdef" => 3
        "ABC" "ABD"    => 2
        "xyz" "abc"    => 0)
      (check-function string-suffix-length-ci
        "DEF" "abcdef" => 3
        "BC"  "abc"    => 2
        "xyz" "abc"    => 0))

    (test-case "string-index-right"
      (check-function string-index-right
        "abcde" #\c => 2
        "chronos" vowel? => 5
        "chronos" vowel? 0 => 5
        "chronos" vowel? 4 => 5
        "chronos" vowel? 5 => 5
        "chronos" vowel? 6 => #f
        "chronos" vowel? 7 => #f
        "chronos" vowel? 0 7 => 5
        "chronos" vowel? 0 6 => 5
        "chronos" vowel? 0 5 => 3
        "chronos" vowel? 0 4 => 3
        "chronos" vowel? 0 3 => #f
        "chronos" vowel? 0 2 => #f
        "chronos" vowel? 7 7 => #f
        "chronos" vowel? 6 7 => #f
        "chronos" vowel? 5 7 => 5
        "chronos" vowel? 5 6 => 5
        "chronos" vowel? 4 6 => 5
        "chronos" vowel? 4 5 => #f
        "chronos" vowel? 3 5 => 3
        "chronos" vowel? 3 4 => 3
        "chronos" vowel? 3 3 => #f
        ;; border conditions
        "chronos" vowel? 8 => #f
        "chronos" vowel? 0 8 =>! true
        "chronos" vowel? 4 8 =>! true
        "chronos" vowel? -1 0 =>! true
        "chronos" vowel? 8 0 => #f
        "chronos" vowel? 0 -1 => #f))

    (test-case "string-drop / string-drop-right"
      (check-function string-drop
        ""      0 => ""
        "abcde" 0 => "abcde"
        "abcde" 2 => "cde"
        "abcde" 5 => "")
      (check-function string-drop-right
        ""      0 => ""
        "abcde" 0 => "abcde"
        "abcde" 2 => "abc"
        "abcde" 5 => ""))

    (test-case "random-word-char"
      (for (_ (in-range 50))
        (let (c (random-word-char))
          (check (char? c) => #t)
          (check (or (char-alphabetic? c) (char-numeric? c) (char=? c #\_)) => #t))))

    (test-case "string-every"
      (check-function string-every
        char-alphabetic? ""          => #t  ; vacuously true on empty range
        char-alphabetic? "abc"       => #t
        char-alphabetic? "ab1"       => #f
        #\a              "aaa"       => #t  ; char criterion
        #\a              "aab"       => #f
        char-alphabetic? "1abc" 1    => #t  ; start offset
        char-alphabetic? "abc1" 0 3  => #t  ; end cutoff
        char-alphabetic? "a1bc" 1 2  => #f))

    (test-case "string-any"
      (check-function string-any
        char-alphabetic? ""          => #f  ; vacuously false on empty range
        char-alphabetic? "abc"       => #t
        char-alphabetic? "123"       => #f
        char-alphabetic? "1a2"       => #t
        #\a              "bba"       => #t  ; char criterion
        #\a              "bbb"       => #f
        char-alphabetic? "1abc" 0 1  => #f  ; end cutoff
        char-alphabetic? "1abc" 1    => #t  ; start offset
        char-alphabetic? "1a2b" 0 1  => #f  ; only non-alpha
        char-alphabetic? "1a2b" 0 2  => #t))

    (test-case "string-concatenate"
      (check-function string-concatenate
        '()                        => ""
        '("")                      => ""
        '("a")                     => "a"
        '("a" "b")                 => "ab"
        '("hello" " " "world")     => "hello world"
        '("foo" "\n" "bar" "\n")   => "foo\nbar\n"))

    (test-case "string-concatenate/shared"
      ;; Same content as string-concatenate
      (check-function string-concatenate/shared
        '()                        => ""
        '("")                      => ""
        '("" "")                   => ""
        '("a")                     => "a"
        '("a" "b")                 => "ab"
        '("hello" " " "world")     => "hello world"
        '("" "abc" "")             => "abc"
        '("foo" "\n" "bar" "\n")   => "foo\nbar\n")
      ;; Sharing: single non-empty string returned eq? to input
      (let (s "hello")
        (check (eq? (string-concatenate/shared (list s)) s) => #t)
        (check (eq? (string-concatenate/shared (list "" s)) s) => #t)
        (check (eq? (string-concatenate/shared (list "" s "")) s) => #t))
      ;; No sharing when multiple non-empty strings are present
      (let (r (string-concatenate/shared '("foo" "bar")))
        (check r => "foobar")))

    (test-case "string-append/shared"
      ;; Same content as string-append
      (check (string-append/shared) => "")
      (check-function string-append/shared
        ""                   => ""
        "a"                  => "a"
        "a" "b"              => "ab"
        "hello" " " "world"  => "hello world"
        "" "abc" ""          => "abc")
      ;; Sharing: single non-empty string returned eq? to input
      (let (s "hello")
        (check (eq? (string-append/shared s) s) => #t)
        (check (eq? (string-append/shared "" s) s) => #t)
        (check (eq? (string-append/shared "" s "") s) => #t))
      ;; No sharing when multiple non-empty strings are present
      (let (r (string-append/shared "foo" "bar"))
        (check r => "foobar")))

    (test-case "string-fold"
      (check-function string-fold
        cons '() ""    => '()
        cons '() "abc" => '(#\c #\b #\a)    ; left-fold builds reversed list
        cons '() "abc" 1 3 => '(#\c #\b))
      (check (string-fold (lambda (c acc) (+ acc 1)) 0 "hello")     => 5)
      (check (string-fold (lambda (c acc) (+ acc 1)) 0 "hello" 1 3) => 2))

    ;; Note: string-filter and string-delete compute pred via char-predicate but
    ;; then use criterion directly in the inner lambda — char criteria don't work.
    (test-case "string-filter"
      (check-function string-filter
        char-alphabetic? "a1b2c3" => "abc"
        char-alphabetic? ""       => "")
      (check (string-filter char-alphabetic? "1ab2" 1 3) => "ab"))

    (test-case "string-delete"
      (check-function string-delete
        char-alphabetic? "a1b2c3" => "123"
        char-alphabetic? ""       => "")
      (check (string-delete char-alphabetic? "a1b2" 0 3) => "1"))))
