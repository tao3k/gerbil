;;; -*- Gerbil -*-
;;; © vyzo
;;; file io test
(import :std/error
        :std/os/device
        :std/os/fcntl
        :std/os/file
        :std/os/flock
        :std/test
        ./interface
        ./bio/api
        ./file
        ./tempfile)
(export file-io-test)

(def text "the quick brown fox jumped over the fence")
(def text-length (string-length text))
(def file-lock-test-flags (fxior O_RDWR O_CREAT))
(def file-lock-test-mode #o600)

(def (try-file-lock (path : :string) (op : :fixnum))
  => :t
  (let (dev (open-file-device path file-lock-test-flags file-lock-test-mode))
    (unwind-protect
      (flock dev op)
      (device-close dev))))

(def file-io-test
  (test-suite "file io"
    (test-case "file-reader"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; first create the input file
         (call-with-output-file tmp
           (lambda (port) (display text port)))
         ;; read the file using a reader
         (let* ((buf (make-u8vector 1024))
                (rd (open-file-reader tmp)))
           (check (Reader-read rd buf) => text-length)
           (check (subu8vector buf 0 text-length) => (string->utf8 text))
           (Reader-close rd)))))

    (test-case "buffered file reader"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; first create the input file
         (call-with-output-file tmp
           (lambda (port) (display text port)))
         ;; read the file one char at a time using a buffered reader
         (let* ((rd (open-file-reader tmp))
                (brd (open-buffered-reader rd)))
           (let lp ((i 0))
             (when (fx< i text-length)
               (check (BufferedReader-read-char-utf8 brd)  => (string-ref text i))
               (lp (fx+ i 1))))
           (check (BufferedReader-read-char-utf8 brd) ? eof-object?)
           (BufferedReader-close brd)))))

    (test-case "file writer"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; write the file
         (let (wr (open-file-writer tmp))
           (check (Writer-write wr (string->utf8 text)) => text-length)
           (Writer-close wr))
         ;; read the file and make sure it matches the expected text
         (check (read-file-string tmp) => text))))

    (test-case "buffered file writer"
      (call-with-temporary-file-name "text"
       (lambda (tmp)
         ;; write the file
         (let* ((wr (open-file-writer tmp))
                (bwr (open-buffered-writer wr)))
           (check (BufferedWriter-write bwr (string->utf8 text)) => text-length)
           (BufferedWriter-close bwr))
         ;; read the file and make sure it matches the expected text
         (check (read-file-string tmp) => text))))

    (test-case "file seek"
      (call-with-temporary-file-name "text"
        (lambda (tmp)
          (let* ((wr (open-file-writer tmp))
                 (re (open-file-reader tmp))
                 (buf (make-u8vector 3)))
            (Seeker-seek wr 8 SEEK_SET)
            (check (Writer-write wr #u8(1 123 255)) => 3)
            (Reader-read re buf)
            (check buf => #u8(0 0 0))
            (Seeker-seek re 8 SEEK_SET)
            (Reader-read re buf)
            (check buf => #u8(1 123 255))
            (Seeker-seek wr -1 SEEK_CUR)
            (Writer-write wr #u8(55))
            (Seeker-seek re 8 SEEK_SET)
            (Reader-read re buf)
            (check buf => #u8(1 123 55))
            (Seeker-seek re -3 SEEK_CUR)
            (Seeker-seek wr -2 SEEK_CUR)
            (Writer-write wr #u8(6))
            (Reader-read re buf)
            (check buf => #u8(1 6 55))))))

    (test-case "locked file io"
      (call-with-temporary-file-name "text"
        (lambda (tmp)
          (call-with-output-file tmp
            (lambda (port) (display text port)))

          (let (io (open-input-file-io/lock tmp O_RDONLY 0))
            (unwind-protect
              (begin
                (check (InputFileIO? io) => #t)
                (check (try-file-lock tmp LOCK_SH) => 0)
                (check (try-file-lock tmp LOCK_EX) => #f))
              (Closer-close io)))
          (check (try-file-lock tmp LOCK_EX) => 0)

          (let (io (open-output-file-io/lock tmp O_WRONLY 0))
            (unwind-protect
              (begin
                (check (OutputFileIO? io) => #t)
                (check (try-file-lock tmp LOCK_SH) => #f))
              (Closer-close io)))
          (check (try-file-lock tmp LOCK_EX) => 0)

          (let (io (open-input-output-file-io/lock tmp O_RDWR 0))
            (unwind-protect
              (begin
                (check (InputOutputFileIO? io) => #t)
                (check (try-file-lock tmp LOCK_SH) => #f))
              (Closer-close io)))
          (check (try-file-lock tmp LOCK_EX) => 0))))

    (test-case "locked file reader and writer"
      (call-with-temporary-file-name "text"
        (lambda (tmp)
          (call-with-output-file tmp
            (lambda (port) (display text port)))

          (let* ((buf (make-u8vector 1024))
                 (reader (open-file-reader/lock tmp)))
            (unwind-protect
              (begin
                (check (try-file-lock tmp LOCK_SH) => 0)
                (check (try-file-lock tmp LOCK_EX) => #f)
                (check (Reader-read reader buf) => text-length)
                (check (subu8vector buf 0 text-length) => (string->utf8 text)))
              (Reader-close reader)))
          (check (try-file-lock tmp LOCK_EX) => 0)

          (let (writer (open-file-writer/lock tmp))
            (unwind-protect
              (begin
                (check (try-file-lock tmp LOCK_SH) => #f)
                (check (Writer-write writer (string->utf8 text)) => text-length))
              (Writer-close writer)))
          (check (try-file-lock tmp LOCK_EX) => 0)
          (check (read-file-string tmp) => text))))

    (test-case "locked file timeout"
      (call-with-temporary-file-name "text"
        (lambda (tmp)
          (call-with-output-file tmp (lambda (port) (void)))
          (let (owner (open-output-file-io/lock tmp O_WRONLY 0))
            (unwind-protect
              (check-exception (open-file-reader/lock tmp .01) Timeout?)
              (Closer-close owner)))
          (check (try-file-lock tmp LOCK_EX) => 0))))

    (test-case "locked writer truncates only after acquiring the lock"
      (call-with-temporary-file-name "text"
        (lambda (tmp)
          (call-with-output-file tmp
            (lambda (port) (display text port)))
          (let (owner (open-output-file-io/lock tmp O_WRONLY 0))
            (unwind-protect
              (begin
                (check-exception
                 (let (writer (open-file-writer/lock tmp .01))
                   (Writer-close writer))
                 Timeout?)
                ;; Check while the original owner still holds its lock.
                (check (read-file-string tmp) => text)
                (check (try-file-lock tmp LOCK_EX) => #f))
              (Closer-close owner)))
          (let (writer (open-file-writer/lock tmp))
            (unwind-protect
              (begin
                (check (read-file-string tmp) => "")
                (check (try-file-lock tmp LOCK_EX) => #f)
                (check (Writer-write writer (string->utf8 "new")) => 3))
              (Writer-close writer)))
          (check (read-file-string tmp) => "new")
          (check (try-file-lock tmp LOCK_EX) => 0))))

    (test-case "call-with locked files"
      (call-with-temporary-file-name "text"
        (lambda (tmp)
          (call-with-output-file tmp
            (lambda (port) (display text port)))

          (check
           (call-with-file-reader/lock
            tmp
            (lambda (reader)
              (check (try-file-lock tmp LOCK_SH) => 0)
              (check (try-file-lock tmp LOCK_EX) => #f)
              'reader-result))
           => 'reader-result)
          (check (try-file-lock tmp LOCK_EX) => 0)

          (check-exception
           (call-with-file-writer/lock
            tmp
            (lambda (writer)
              (check (try-file-lock tmp LOCK_SH) => #f)
              (error "expected test error")))
           true)
          (check (try-file-lock tmp LOCK_EX) => 0))))))
