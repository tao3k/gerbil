;;; -*- Gerbil -*-
;;; Multi-source/sink buffered I/O tests: run string/char/line ops across all source/sink types.
(import :std/test
        :std/iter
        :std/io/interface
        :std/io/util
        :std/io/bio/api)
(export bio-multi-test)

;;; Normalize test input: accept a string (treated as UTF-8 content) or a raw u8vector.
(def (as-u8v x) (if (string? x) (string->utf8 x) x))

;;; Three distinct underlying buffer types.
(def source-specs
  [["u8vector"     :: call-with-buffered-reader]
   ["binary-port"  :: (lambda (u8v f) (call-with-buffered-reader (open-input-u8vector u8v) f))]
   ["textual-port" :: (lambda (u8v f) (call-with-buffered-reader (open-input-string (utf8->string u8v)) f))]])

(def sink-specs
  [["'u8vector"    :: (cut call-with-buffered-writer 'u8vector <>)]
   ["binary-port"  :: (lambda (f) (let (p (open-output-u8vector))
                                    (call-with-buffered-writer p f)
                                    (get-output-u8vector p)))]
   ["textual-port" :: (lambda (f) (let (p (open-output-string))
                                    (call-with-buffered-writer p f)
                                    (string->utf8 (get-output-string p))))]])

;;; Conversion-only paths: same underlying buffer as u8vector/binary-port above,
;;; tested separately to verify the initial dispatch/conversion.
(def extra-source-specs
  [["string-content"  :: (lambda (u8v f) (call-with-buffered-reader (utf8->string u8v) f))]
   ["brd-passthrough" :: (lambda (u8v f) (call-with-buffered-reader (open-buffered-reader u8v) f))]])

(def extra-sink-specs
  [["'string"         :: (lambda (f) (string->utf8 (call-with-buffered-writer 'string f)))]
   ["bwr-passthrough" :: (lambda (f) (let* ((p   (open-output-u8vector))
                                             (bwr (open-buffered-writer p)))
                                       (call-with-buffered-writer bwr f)
                                       (get-output-u8vector p)))]])

;;; (for-each-source specs (rd input) body ...) — run body for every spec in specs,
;;; with rd bound to a fresh BufferedReader; input may be a string or u8vector.
(defrule (for-each-source specs (rd input) body ...)
  (let (u8v (as-u8v input))
    (for-each (lambda (spec) ((cdr spec) u8v (lambda (rd) body ...)))
              specs)))

;;; (for-each-sink specs (wr input) body ...) — run body for every spec in specs,
;;; with wr bound to a fresh BufferedWriter; checks written bytes equal input.
(defrule (for-each-sink specs (wr input) body ...)
  (let (u8v (as-u8v input))
    (for-each (lambda (spec)
                (check ((cdr spec) (lambda (wr) body ...)) => u8v))
              specs)))

;;; Test suite
(def bio-multi-test
  (test-suite "multi-source/sink buffered I/O"

    (test-case "read-string-utf8 from all sources"
      (let* ((s "café \U0001F600 résumé")
             (l (string-length s)))
        (for-each-source source-specs (rd s)
          (let (buf (make-string (string-length s)))
            (check (BufferedReader-read-string-utf8 rd buf) => l)
            (check (substring buf 0 l) => s)))))

    (test-case "write-string-utf8 to all sinks"
      (let (s "café \U0001F600 résumé")
        (for-each-sink sink-specs (wr s)
          (BufferedWriter-write-string-utf8 wr s))))

    (test-case "read-char-utf8 from all sources"
      (let* ((s "café") (chars (string->list s)))
        (for-each-source source-specs (rd s)
          (for-each (lambda (c) (check (BufferedReader-read-char-utf8 rd) => c))
                    chars))))

    (test-case "write-char-utf8 to all sinks"
      (let (s "café")
        (for-each-sink sink-specs (wr s)
          (string-for-each (cut BufferedWriter-write-char-utf8 wr <>) s))))

    (test-case "string-content and brd-passthrough sources"
      (let* ((s "café \U0001F600")
             (l (string-length s)))
        (for-each-source extra-source-specs (rd s)
          (def buf (make-string 1000))
          (check (BufferedReader-read-string-utf8 rd buf) => l)
          (check (substring buf 0 l) => s))))

    (test-case "'string and bwr-passthrough sinks"
      (let (s "café \U0001F600")
        (for-each-sink extra-sink-specs (wr s)
          (BufferedWriter-write-string-utf8 wr s))))))
