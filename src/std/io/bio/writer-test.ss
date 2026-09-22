;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Buffered UTF-8 writer growth tests
(import :std/iter
        :std/test
        ../interface
        ./api)
(export writer-test)

(def (check-utf8-growth (input : :string)
                        (chars? : :boolean))
  => :void
  ;; Supply the buffer directly so initial capacity is exactly four bytes.
  (let* ((writer (open-buffered-writer (make-u8vector 4)))
         (expected (string->utf8 input)))
    (if chars?
      (for (char (string->list input))
        (check (BufferedWriter-write-char-utf8 writer char) =>
               (u8vector-length (string->utf8 (string char)))))
      (check (BufferedWriter-write-string-utf8 writer input) =>
             (u8vector-length expected)))
    (check (get-memory-output-u8vector writer) => expected)
    (void)))

(def writer-test
  (test-suite "buffered UTF-8 writer growth"
    (test-case "each UTF-8 width grows with a preserved prefix"
      ;; Each nonempty ASCII prefix leaves one byte too few for the next char.
      (for (input '("abcdZ!" "abc\u00a2!" "ab\u20ac!" "a\U0001f600!"))
        (check-utf8-growth input #f)
        (check-utf8-growth input #t)))

    (test-case "repeated growth with mixed UTF-8 widths"
      (let* ((chars "a\u00a2\u20ac\U0001f600")
             (input (list->string
                     (for/collect (i (in-range 4096))
                       (string-ref chars (modulo i 4))))))
        (check-utf8-growth input #f)
        (check-utf8-growth input #t)))))
