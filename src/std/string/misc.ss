;; -*- Gerbil -*-
;;;; String utilities

(export
  string-drop
  string-drop-right
  string-trim
  string-trim-prefix
  string-trim-suffix
  string-split-prefix
  string-split-suffix
  +cr+ +lf+ +crlf+
  string-trim-eol
  string-split-eol
  string-subst
  string-substitute-char
  string-substitute-char-if
  string-whitespace?
  random-word-char
  random-string
  as-string<?
  ;; Imports from srfi-13:
  substring/shared
  string-index-right
  string-compare string-compare-ci
  string=    string<    string>    string<=    string>=    string<>
  string-ci= string-ci< string-ci> string-ci<= string-ci>= string-ci<>
  string-prefix-length string-prefix-length-ci string-suffix-length string-suffix-length-ci
  string-null? string-reverse string-reverse! string-every string-any
  string-concatenate string-concatenate/shared string-append/shared
  string-concatenate-reverse string-concatenate-reverse/shared string-append/shared
  string-fold string-filter string-delete)

(import :std/error
        :std/iter)

(def (string-drop (s : :string) (count : :fixnum)) => :string
  (substring s count (string-length s)))

(def (string-drop-right (s : :string) (count : :fixnum)) => :string
  (substring s 0 (fx- (string-length s) count)))

(def (string-trim (str : :string))
  => :string
  (let (len (string-length str))
    (let loop ((left 0 :- :fixnum))
      => :string
      (if (fx< left len)
        (if (char-whitespace? (##string-ref str left))
          (loop (fx+ left 1))
          (let loop ((right len :- :fixnum))
            => :string
            (let (right-i (fx- right 1))
              (if (fx< left right-i)
                (if (char-whitespace? (##string-ref str right-i))
                  (loop right-i)
                  (substring str left right))
                (substring str left right)))))
        ""))))

;; If the string starts with given prefix, return the end of the string after the prefix.
;; Otherwise, return the entire string. NB: Only remove the prefix once.
(def (string-trim-prefix (prefix : :string) (string : :string)) => :string
  (if (string-prefix? prefix string)
    (string-drop string (string-length prefix))
    string))

;; If the string ends with given suffix, return the beginning of the string up to the suffix.
;; Otherwise, return the entire string. NB: Only remove the suffix once.
(def (string-trim-suffix (suffix : :string) (string : :string)) => :string
  (if (string-suffix? suffix string)
    (string-drop-right string (string-length suffix))
    string))

;; Split a string based on the given prefix, if present.
;; Return two values:
;; - the trimmed string,
;; - the prefix (eq? to the argument) if found, or an empty string if not found
(def (string-split-prefix (prefix : :string) (string : :string)) => :values
  (let ((trimmed (string-trim-prefix prefix string)))
    (if (eq? trimmed string) (values string "") (values trimmed prefix))))

;; Split a string based on the given suffix, if present.
;; Return two values:
;; - the trimmed string,
;; - the suffix (eq? to the argument) if found, or an empty string if not found
(def (string-split-suffix (suffix : :string) (string : :string)) => :values
  (let ((trimmed (string-trim-suffix suffix string)))
    (if (eq? trimmed string) (values string "") (values trimmed suffix))))

;; Line endings
(define +cr+ "\r")
(define +lf+ "\n")
(define +crlf+ "\r\n")

;; Do we want a parameter to list the allowed line endings in the current context?
;; And a function to add the default line-ending, which would be the first in that list,
;; or maybe a separate parameter? Indeed, we can't just iterate through such a list
;; to find the longest suffix if +lf+ is in front of +crlf+ -- longer must be tested first.
;; sounds overkill. Let's not do that unless we really find a need.

;; Trim any single end-of-line marker CR, LF or CRLF at the end of the string.
;; NB: This function will only remove one end-of-line marker,
;; like the shell when processing $(subprocess output) or perl's chomp.
;; Use (string-trim-right string (char-set #\return #\newline)) to remove all of them.
(def (string-trim-eol (string : :string)) => :string
  (defrules try ()
    ((_ eol fallback) (let ((trimmed (string-trim-suffix eol string)))
                        (if (eq? trimmed string) fallback trimmed))))
  (try +crlf+ (try +lf+ (try +cr+ string)))) ;; NB: note how we try the longer +crlf+ *before* +lf+.

;; Split a string based on any end-of-line marker CR, LF or CRLF at the end of the string.
;; Return two values:
;; - the trimmed string
;; - the eol marker found, or the empty string if not found
(def (string-split-eol (string : :string)) => :values
  (defrules try ()
    ((_ eol fallback) (let ((trimmed (string-trim-suffix eol string)))
                        (if (eq? trimmed string) fallback (values trimmed eol)))))
  (try +crlf+ (try +lf+ (try +cr+ (values string "")))))


;; string-subst helper which handles the case that the argument 'old' is an empty string.
;;   new    non-empty
;;   count  non-zero, number of replacements (-1 means no limit)
(def (subst-helper-empty-old (str : :string) (new : :string) (count : :fixnum)) => :string
  (declare (fixnum))
  (def len-str (string-length str))
  (if (= count 1)
    (string-append new str)         ; add 'new' and leave procedure
    (call-with-output-string
     (lambda (port)
       (write-string new port) ; 'count' > 1, add 'new' before the first character
       (let ((stop (1- len-str))
             (count (if (or (negative? count) (> count len-str))
		      (1+ len-str)  ; the maximal number of replacements is len + 1
		      count)))
	 (let loop ((i 0)
		    (matches 1))    ; 1 because 'new' was already added once
	   (cond
	    ((= matches count)
	     (write-string new port)
	     (write-substring str i len-str port))
	    ((= i stop)
	     (unless (zero? i) (write-string new port))
	     (write-char (string-ref str i) port)
	     (write-string new port))
	    (else
	     (unless (zero? i) (write-string new port))
	     (write-char (string-ref str i) port)
	     (loop (1+ i) (1+ matches))))))))))


;; string-subst helper which handles the case that the argument 'old' is a non-empty string.
;;   str    non-empty
;;   old    non-empty
;;   new    can be empty
;;   count  non-zero, number of replacements (-1 means no limit)
(def (subst-helper-nonempty-old (str : :string) (old : :string) (new : :string) (count : :fixnum)) => :string
  (declare (fixnum))
  (def len-str (string-length str))
  (def size-old (1- (string-length old)))
  (def size-str (1- (string-length str)))
  (call-with-output-string
   (lambda (port)
     (let loop ((i 0)       ; position in str
		(matches 0)
		(last 0)    ; position after last match in str
		(j 0))      ; position in old
       (cond
	((= matches count)  ; stop, limit reached
	 (write-substring str i len-str port))
	((= i size-str)     ; stop, end of str
	 (if (and (eq? (string-ref str i) (string-ref old j))
                  (= j size-old))
	   (write-string new port)
	   (write-substring str last len-str port)))
	(else
	 (if (eq? (string-ref str i) (string-ref old j))
           (if (= j size-old)                        ; match of old in str
	     (begin
	       (write-string new port)
	       (loop (1+ i) (1+ matches) (1+ i) 0))
	     (loop (1+ i) matches last (1+ j)))      ; char equal, not yet a match
	   (begin
	     (write-substring str last (1+ i) port)  ; no match, continue search
	     (loop (1+ i) matches (1+ i) 0)))))))))


;; In str replace the string old with string new.
;; The procedure accepts only a fixnum or #f for count.
;;   count > 0   limit replacements
;;   count #f    no limit
;;   count <= 0  return input
;;
;; Example:
;;  (string-subst "abc" "b" "_") => "a_c"
;;  (string-subst "abc" "" "_")  => "_a_b_c_"
(def (string-subst (str : :string) (old : :string) (new : :string) count: (count :? :fixnum := #f)) => :string
  (def old-empty? (string-empty? old))
  (def new-empty? (string-empty? new))
  (def str-empty? (string-empty? str))
  (if (or (and old-empty? new-empty?)
	  (and count (<= count 0)))
    str
    (let (count (or count -1)) ; convert #f to -1
      (cond
       (old-empty? (subst-helper-empty-old str new count))
       (str-empty? str)
       (else       (subst-helper-nonempty-old str old new count))))))

;; Like CL SUBSTITUTE-IF but specialized for strings and chars. Mind the argument order.
(def (string-substitute-char-if
      (string : :string) (newchar : :char) (predicate : :procedure)
      start: (start :? :fixnum := #f)
      end: (end :? :fixnum := #f)
      from-end: (from-end? : :boolean := #f)
      count: (count :? :fixnum := #f)
      in-place: (in-place? : :boolean := #f)) => :string
  (unless start (set! start 0))
  (unless end (set! end (string-length string)))
  (def s (if in-place? string (string-copy string)))
  (let/cc return
    (cond
     ((equal? count 0) (return))
     (count
      (for (i (if from-end? (in-range (1- end) (1- start) -1) (in-range start end)))
        (when (predicate (string-ref s i))
          (string-set! s i newchar)
          (set! count (fx1- count))
          (when (zero? count) (return)))))
     (else
      (for (i (in-range start end))
        (when (predicate (string-ref s i))
          (string-set! s i newchar))))))
  s)

;; Like CL SUBSTITUTE but specialized for strings and chars. Mind the argument order.
(def (string-substitute-char
      (string : :string) (newchar : :char) (oldchar : :char)
      test: (test :? :procedure := #f)
      test-not: (test-not :? :procedure := #f)
      key: (key :? :procedure := #f)
      start: (start :? :fixnum := #f)
      end: (end :? :fixnum := #f)
      from-end: (from-end? : :boolean := #f)
      count: (count :? :fixnum := #f)
      in-place: (in-place? : :boolean := #f)) => :string
  (let* ((key (or key identity))
         (predicate
          (cond
           (test (lambda (x) (test oldchar (key x))))
           (test-not (lambda (x) (not (test-not oldchar (key x)))))
           (key (lambda (x) (eqv? oldchar (key x))))
           (else (cut eqv? oldchar <>)))))
    (string-substitute-char-if
     string newchar predicate
     start: start end: end count: count from-end: from-end? in-place: in-place?)))

;; Returns true when the string s consists only of whitespace characters.
;;
;;   " "   space
;;   "\n"  line feed
;;   "\t"  horizontal tab
;;   "\r"  carriage return
;;   "\f"  form feed
;;   "\v"  vertical tab
;;
;; Example:
;;  (string-whitespace? " \n\r \t") => #t
(def (string-whitespace? (s : :string)) => :boolean
  (string-every char-whitespace? s))

(def (random-word-char) => :char
  (declare (not safe) (fixnum))
  (def n (random-integer 63))
  (integer->char
   (+ n (cond
	 ((< n 10) 48) ; 0-9
	 ((< n 36) 55) ; A-Z
	 ((< n 62) 61) ; a-z
	 (else 33))))) ; _

;; random-string returns a string consisting of regex word-boundary
;; characters [a-zA-Z0-9_]. Throws an error if len is not a fixnum.
;;
;; Example:
;;  (random-string) => "5CfMyYd2Ob"
(def (random-string (len : :fixnum := 10)) => :string
  (declare (not safe) (fixnum))
  (unless (fixnum? len)
    (raise-bad-argument random-string "fixnum" len))
  (if (> len 0)
    (let (str (make-string len))
      (do ((i 0 (1+ i)))
	  ((= i len))
	(string-set! str i (random-word-char)))
      str)
    ""))

(def (as-string<? x y) => :boolean
  (string<? (as-string x) (as-string y)))

;;;;; SRFI-13 compatibility

;;; substring/shared S START [END]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;; All this goop is just arg parsing & checking surrounding a call to the
;;; actual primitive, %SUBSTRING/SHARED.

(def (substring/shared (s : :string) (start : :fixnum) (end : :fixnum := (string-length s)))
  (if (and (zero? start) (= end (string-length s))) s
      (substring s start end)))

(def (char-predicate criterion) => :procedure
  (cond
   ((procedure? criterion) criterion)
   ((char? criterion) (lambda (c) (eq? c criterion)))
   (else (raise-bad-argument char-predicate "predicate or char" criterion))))

(def (string-index-right (str : :string) criterion (start 0 : :fixnum) (end :? :fixnum := #f))
  (string-rindex str (char-predicate criterion) (fx- (or end (string-length str)) 1) start))

;;;; Comparison functions taken from srfi-13, until we get them from Gambit.

;;; string-compare    s1 s2 proc< proc= proc> [start1 end1 start2 end2]
;;; string-compare-ci s1 s2 proc< proc= proc> [start1 end1 start2 end2]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Primitive string-comparison functions.
;;; Continuation order is different from MIT Scheme.
;;; Continuations are applied to s1's mismatch index;
;;; in the case of equality, this is END1.

(def (%string-compare (s1 :- :string) (start1 :- :fixnum) (end1 :- :fixnum)
                      (s2 :- :string) (start2 :- :fixnum) (end2 :- :fixnum)
                      (proc< :- :procedure) (proc= :- :procedure) (proc> :- :procedure))
  (let ((size1 (- end1 start1))
        (size2 (- end2 start2)))
    (let ((match (%string-prefix-length s1 start1 end1 s2 start2 end2)))
      (if (= match size1)
        ((if (= match size2) proc= proc<) end1)
        ((if (= match size2)
	       proc>
	       (if (char<? (string-ref s1 (+ start1 match))
                       (string-ref s2 (+ start2 match)))
             proc< proc>))
         (+ match start1))))))

(def (%string-compare-ci (s1 :- :string) (start1 :- :fixnum) (end1 :- :fixnum)
                         (s2 :- :string) (start2 :- :fixnum) (end2 :- :fixnum)
                         (proc< :- :procedure) (proc= :- :procedure) (proc> :- :procedure))
  (let ((size1 (- end1 start1))
        (size2 (- end2 start2)))
    (let ((match (%string-prefix-length-ci s1 start1 end1 s2 start2 end2)))
      (if (= match size1)
        ((if (= match size2) proc= proc<) end1)
        ((if (= match size2) proc>
             (if (char-ci<? (string-ref s1 (+ start1 match))
                            (string-ref s2 (+ start2 match)))
               proc< proc>))
         (+ start1 match))))))

(def (string-compare (s1 : :string) (s2 : :string)
                     (proc< : :procedure) (proc= : :procedure) (proc> : :procedure)
                     (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                     (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (%string-compare s1 start1 end1 s2 start2 end2 proc< proc= proc>))

(def (string-compare-ci (s1 : :string) (s2 : :string)
                        (proc< : :procedure) (proc= : :procedure) (proc> : :procedure)
                        (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                        (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (%string-compare-ci s1 start1 end1 s2 start2 end2 proc< proc= proc>))

;;; string=          string<>		string-ci=          string-ci<>
;;; string<          string>		string-ci<          string-ci>
;;; string<=         string>=		string-ci<=         string-ci>=
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Simple definitions in terms of the previous comparison funs.
;;; I sure hope the %STRING-COMPARE calls get integrated.

(def (string= (s1 : :string) (s2 : :string)
              (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
              (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (and (= (- end1 start1) (- end2 start2))     ; Quick filter
       (or (and (eq? s1 s2) (= start1 start2)) ; Fast path
           (%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                            (lambda (i) #f)
                            values
                            (lambda (i) #f)))))

(def (string<> (s1 : :string) (s2 : :string)
               (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
               (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (or (not (= (- end1 start1) (- end2 start2)))      ; Fast path
      (and (not (and (eq? s1 s2) (= start1 start2))) ; Quick filter
           (%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                            values
                            (lambda (i) #f)
                            values))))

(def (string< (s1 : :string) (s2 : :string)
              (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
              (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(< end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     values
                     (lambda (i) #f)
                     (lambda (i) #f))))

(def (string> (s1 : :string) (s2 : :string)
              (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
              (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(> end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     (lambda (i) #f)
                     (lambda (i) #f)
                     values)))

(def (string<= (s1 : :string) (s2 : :string)
               (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
               (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(<= end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     values
                     values
                     (lambda (i) #f))))

(def (string>= (s1 : :string) (s2 : :string)
               (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
               (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(>= end1 end2)
	(%string-compare s1 start1 end1 s2 start2 end2 ; Real test
                     (lambda (i) #f)
                     values
                     values)))

(def (string-ci= (s1 : :string) (s2 : :string)
                 (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                 (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (and (= (- end1 start1) (- end2 start2))     ; Quick filter
       (or (and (eq? s1 s2) (= start1 start2)) ; Fast path
           (%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                               (lambda (i) #f)
                               values
                               (lambda (i) #f)))))

(def (string-ci<> (s1 : :string) (s2 : :string)
                  (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                  (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (or (not (= (- end1 start1) (- end2 start2)))      ; Fast path
      (and (not (and (eq? s1 s2) (= start1 start2))) ; Quick filter
           (%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                               values
                               (lambda (i) #f)
                               values))))

(def (string-ci< (s1 : :string) (s2 : :string)
                 (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                 (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(< end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        values
                        (lambda (i) #f)
                        (lambda (i) #f))))

(def (string-ci> (s1 : :string) (s2 : :string)
                 (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                 (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(> end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        (lambda (i) #f)
                        (lambda (i) #f)
                        values)))

(def (string-ci<= (s1 : :string) (s2 : :string)
                  (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                  (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(<= end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        values
                        values
                        (lambda (i) #f))))

(def (string-ci>= (s1 : :string) (s2 : :string)
                  (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                  (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (if (and (eq? s1 s2) (= start1 start2)) ; Fast path
	(>= end1 end2)
	(%string-compare-ci s1 start1 end1 s2 start2 end2 ; Real test
                        (lambda (i) #f)
                        values
                        values)))

;;; string-prefix-length[-ci] s1 s2 [start1 end1 start2 end2]
;;; string-suffix-length[-ci] s1 s2 [start1 end1 start2 end2]
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Find the length of the common prefix/suffix.
;;; It is not required that the two substrings passed be of equal length.
;;; This was microcode in MIT Scheme -- a very tightly bummed primitive.
;;; %STRING-PREFIX-LENGTH is the core routine of all string-comparisons,
;;; so should be as tense as possible.

(def (%string-prefix-length (s1 :- :string) (start1 :- :fixnum) (end1 :- :fixnum)
                            (s2 :- :string) (start2 :- :fixnum) (end2 :- :fixnum))
  (let* ((delta (min (- end1 start1) (- end2 start2)))
         (end1 (+ start1 delta)))
    (if (and (eq? s1 s2) (= start1 start2))	; EQ fast path
      delta
      (let lp ((i start1) (j start2))   ; Regular path
        (if (or (>= i end1)
                (not (char=? (string-ref s1 i)
                             (string-ref s2 j))))
	      (- i start1)
	      (lp (+ i 1) (+ j 1)))))))

(def (%string-suffix-length (s1 :- :string) (start1 :- :fixnum) (end1 :- :fixnum)
                            (s2 :- :string) (start2 :- :fixnum) (end2 :- :fixnum))
  (let* ((delta (min (- end1 start1) (- end2 start2)))
         (start1 (- end1 delta)))
    (if (and (eq? s1 s2) (= end1 end2)) ; EQ fast path
      delta
      (let lp ((i (- end1 1)) (j (- end2 1))) ; Regular path
        (if (or (< i start1)
                (not (char=? (string-ref s1 i)
                             (string-ref s2 j))))
	      (- (- end1 i) 1)
	      (lp (- i 1) (- j 1)))))))

(def (%string-prefix-length-ci (s1 :- :string) (start1 :- :fixnum) (end1 :- :fixnum)
                               (s2 :- :string) (start2 :- :fixnum) (end2 :- :fixnum))
    (let* ((delta (min (- end1 start1) (- end2 start2)))
         (end1 (+ start1 delta)))
    (if (and (eq? s1 s2) (= start1 start2))	; EQ fast path
      delta
      (let lp ((i start1) (j start2))   ; Regular path
        (if (or (>= i end1)
                (not (char-ci=? (string-ref s1 i)
                                (string-ref s2 j))))
	      (- i start1)
	      (lp (+ i 1) (+ j 1)))))))

(def (%string-suffix-length-ci (s1 :- :string) (start1 :- :fixnum) (end1 :- :fixnum)
                               (s2 :- :string) (start2 :- :fixnum) (end2 :- :fixnum))
  (let* ((delta (min (- end1 start1) (- end2 start2)))
         (start1 (- end1 delta)))
    (if (and (eq? s1 s2) (= end1 end2)) ; EQ fast path
      delta
      (let lp ((i (- end1 1)) (j (- end2 1))) ; Regular path
        (if (or (< i start1)
                (not (char-ci=? (string-ref s1 i)
                                (string-ref s2 j))))
	      (- (- end1 i) 1)
	      (lp (- i 1) (- j 1)))))))

(def (string-prefix-length (s1 : :string) (s2 : :string)
                           (start1 : :fixnum := 0) (end1 : :fixnum := (string-length s1))
                           (start2 : :fixnum := 0) (end2 : :fixnum := (string-length s2)))
  (%string-prefix-length s1 start1 end1 s2 start2 end2))

(def (string-suffix-length s1 s2
                           (start1 0) (end1 (string-length s1))
                           (start2 0) (end2 (string-length s2)))
  (%string-suffix-length s1 start1 end1 s2 start2 end2))

(def (string-prefix-length-ci s1 s2
                              (start1 0) (end1 (string-length s1))
                              (start2 0) (end2 (string-length s2)))
  (%string-prefix-length-ci s1 start1 end1 s2 start2 end2))

(def (string-suffix-length-ci s1 s2
                              (start1 0) (end1 (string-length s1))
                              (start2 0) (end2 (string-length s2)))
  (%string-suffix-length-ci s1 start1 end1 s2 start2 end2))

(def (string-null? (s : :string))
  (zero? (string-length s)))

(def (string-reverse (s : :string) (start : :fixnum := 0) (end : :fixnum := (string-length s)))
  (let* ((len (- end start))
         (ans (make-string len)))
    (do ((i start (+ i 1))
         (j (- len 1) (- j 1)))
        ((< j 0))
      (string-set! ans j (string-ref s i)))
    ans))

(def (string-reverse! (s : :string) (start : :fixnum := 0) (end : :fixnum := (string-length s)))
  (do ((i (- end 1) (- i 1))
       (j start (+ j 1)))
      ((<= i j))
    (let ((ci (string-ref s i)))
      (string-set! s i (string-ref s j))
      (string-set! s j ci))))

(def (string-every criterion
                   (s : :string)
                   (start : :fixnum := 0)
                   (end : :fixnum := (string-length s)))
                   => :boolean
  (check-argument (<= 0 start (string-length s)) "string index" [start s])
  (check-argument (<= 0 end (string-length s)) "string index" [end s])
  (let ((pred (char-predicate criterion)))
    (let loop ((i start :- :fixnum)) => :boolean
      (or (fx>= i end)
          (and (pred (string-ref s i))
               (loop (fx+ i 1)))))))

(def (string-any criterion
                 (s : :string)
                 (start : :fixnum := 0)
                 (end : :fixnum := (string-length s))) => :t
  (check-argument (<= 0 start (string-length s)) "string index" [start s])
  (check-argument (<= 0 end (string-length s)) "string index" [end s])
  (let ((pred (char-predicate criterion)))
    (let loop ((i start :- :fixnum))
      (and (fx< i end)
           (or (pred (string-ref s i))
               (loop (fx+ i 1)))))))

;;; string-concatenate        string-list -> string
;;; string-concatenate/shared string-list -> string
;;; string-append/shared s ... -> string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; STRING-APPEND/SHARED has license to return a string that shares storage
;;; with any of its arguments. In particular, if there is only one non-empty
;;; string amongst its parameters, it is permitted to return that string as
;;; its result. STRING-APPEND, by contrast, always allocates new storage.
;;;
;;; STRING-CONCATENATE & STRING-CONCATENATE/SHARED are passed a list of
;;; strings, which they concatenate into a result string. STRING-CONCATENATE
;;; always allocates a fresh string; STRING-CONCATENATE/SHARED may (or may
;;; not) return a result that shares storage with any of its arguments. In
;;; particular, if it is applied to a singleton list, it is permitted to
;;; return the car of that list as its value.

(def (string-concatenate (strings : :list)) => :string
  (let* ((n (let loop ((ss strings) (acc 0))
               (if (pair? ss)
                 (loop (cdr ss) (fx+ acc (string-length (car ss))))
                 acc)))
         (result (make-string n)))
    (let loop ((ss strings) (i 0))
      (if (pair? ss)
        (let* ((s (car ss)) (slen (string-length s)))
          (string-copy! result i s)
          (loop (cdr ss) (fx+ i slen)))
        result))))

(def (string-append/shared . strings)
  (string-concatenate/shared strings))

(def (string-concatenate/shared (strings : :list))
  (let lp ((strings strings) (nchars 0) (first #f))
    (cond ((pair? strings)                ; Scan the args, add up total
           (let* ((string  (car strings)) ; length, remember 1st
                  (tail (cdr strings))    ; non-empty string.
                  (slen (string-length string)))
             (if (zero? slen)
               (lp tail nchars first)
               (lp tail (+ nchars slen) (or first strings)))))
          ((zero? nchars) "")
          ;; Just one non-empty string! Return it.
          ((= nchars (string-length (car first))) (car first))
          (else (let ((ans (make-string nchars)))
                  (let lp ((strings first) (i 0))
                    (if (pair? strings)
                      (let* ((s (car strings))
                             (slen (string-length s)))
                        (string-copy! ans i s 0 slen)
                        (lp (cdr strings) (+ i slen)))))
                  ans)))))

(def (string-fold (kons : :procedure)
                  knil
                  (s : :string)
                  (start 0 : :fixnum)
                  (end (string-length s) : :fixnum))
  (let lp ((v knil) (i start))
    (if (fx< i end)
      (lp (kons (string-ref s i) v) (fx+ i 1))
      v)))

;;; string-concatenate-reverse        string-list [final-string end] -> string
;;; string-concatenate-reverse/shared string-list [final-string end] -> string
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Return
;;;   (string-concatenate
;;;     (reverse
;;;       (cons (substring final-string 0 end) string-list)))

(def (string-concatenate-reverse
      (string-list : :list)
      (final : :string := "")
      (end : :fixnum := (string-length final)))
  (let ((len (let lp ((sum 0) (lis string-list))
               (if (pair? lis)
                 (lp (+ sum (string-length (car lis))) (cdr lis))
                 sum))))
    (%finish-string-concatenate-reverse len string-list final end)))

(def (string-concatenate-reverse/shared
      (string-list : :list)
      (final : :string := "")
      (end : :fixnum := (string-length final)))
  ;; Add up the lengths of all the strings in STRING-LIST; also get a
  ;; pointer NZLIST into STRING-LIST showing where the first non-zero-length
  ;; string starts.
  (let lp ((len 0) (nzlist #f) (lis string-list))
    (if (pair? lis)
	  (let ((slen (string-length (car lis))))
	    (lp (+ len slen)
            (if (or nzlist (zero? slen)) nzlist lis)
            (cdr lis)))
	  (cond
           ((zero? len) (substring/shared final 0 end))
           ;; LEN > 0, so NZLIST is non-empty.
           ((and (zero? end) (= len (string-length (car nzlist))))
            (car nzlist))
           (else
            (%finish-string-concatenate-reverse len nzlist final end))))))

(def (%finish-string-concatenate-reverse
      (len : :fixnum)
      (string-list : :list)
      (final : :string)
      (end : :fixnum))
  (let ((ans (make-string (+ end len))))
    (string-copy! ans len final 0 end)
    (let lp ((i len) (lis string-list))
      (if (pair? lis)
        (let* ((s   (car lis))
               (lis (cdr lis))
               (slen (string-length s))
               (i (- i slen)))
          (string-copy! ans i s 0 slen)
          (lp i lis))))
    ans))

;;; Filtering strings
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; string-delete char/pred string [start end]
;;; string-filter char/pred string [start end]

(def (string-delete criterion
                    (s : :string)
                    (start 0 : :fixnum)
                    (end (string-length s) : :fixnum)) => :string
  (let* ((pred (char-predicate criterion))
         (slen (- end start))
	 (temp (make-string slen))
	 (ans-len (string-fold (lambda ((c :- :char) (i :- :fixnum))
                                 (if (criterion c) i
                                     (begin (string-set! temp i c)
                                            (fx+ i 1))))
                               0 s start end)))
    (if (= ans-len slen) temp (substring temp 0 ans-len))))

(def (string-filter criterion
                    (s : :string)
                    (start 0 : :fixnum)
                    (end (string-length s) : :fixnum)) => :string
  (let* ((pred (char-predicate criterion))
         (slen (- end start))
	 (temp (make-string slen))
	 (ans-len (string-fold (lambda ((c :- :char) (i :- :fixnum))
                                 (if (criterion c)
                                   (begin (string-set! temp i c)
                                          (fx+ i 1))
                                   i))
                               0 s start end)))
    (if (= ans-len slen) temp (substring temp 0 ans-len))))

;;;; End of extract from srfi-13
