;;; -*- Gerbil -*-
;;; © vyzo
;;; tests for std/os/pipe
(import :std/test
        :std/time/timeout
        ./device
        ./fcntl
        ./file
        ./pipe)
(export pipe-test)

(def (close-pipe-end (end : :t))
  => :void
  (if (OSDevice? end)
    (device-close end)
    (begin
      (__close-fd end)
      (void))))

(def pipe-test
  (test-suite "test :std/os/pipe"
    (test-case "close-on-exec is configurable for both ends in every direction"
      (for-each
       (lambda (direction)
         (for-each
          (lambda (closeonexec)
            (let-values (((input output) (pipe direction closeonexec)))
              (try
               (for-each
                (lambda (end)
                  (let (fd (if (OSDevice? end) (OSDevice-fd end) end))
                    (check (not (fxzero? (fxand (fcntl-getfd fd) FD_CLOEXEC)))
                           => closeonexec)
                    ;; Raw ends remain blocking; wrapped ends are nonblocking.
                    (check (not (fxzero? (fxand (fcntl-getfl fd) O_NONBLOCK)))
                           => (OSDevice? end))))
                [input output])
               (finally
                 (close-pipe-end input)
                 (close-pipe-end output)))))
          [#f #t]))
       '(in out inout none)))

    (test-case "bidirectional devices transfer bytes and report EOF"
      (let-values (((input output) (pipe)))
        (try
         (def data #u8(1 2 3 4))
         (def buffer (make-u8vector 4 0))
         (check (FileDevice? input) => #t)
         (check (FileDevice? output) => #t)
         (check (device-write output data 0 4) => 4)
         (device-wait-input! input (timeout->deadline 1))
         (check (device-read input buffer 0 4) => 4)
         (check buffer => data)
         (device-close output)
         (device-wait-input! input (timeout->deadline 1))
         (check (device-read input buffer 0 4) => 0)
         (finally
          (device-close input)
          (device-close output)))))

    (test-case "input direction wraps only the read end"
      (let-values (((input output-fd) (pipe 'in)))
        (try
         (check (FileDevice? input) => #t)
         (check (fixnum? output-fd) => #t)
         (check (fxzero? (fxand (fcntl-getfl (OSDevice-fd input)) O_NONBLOCK)) => #f)
         (check (fxzero? (fxand (fcntl-getfd (OSDevice-fd input)) FD_CLOEXEC)) => #f)
         (check (fxzero? (fxand (fcntl-getfd output-fd) FD_CLOEXEC)) => #f)
         (finally
          (close-pipe-end input)
          (close-pipe-end output-fd)))))

    (test-case "output direction wraps only the write end"
      (let-values (((input-fd output) (pipe 'out #f)))
        (try
         (check (fixnum? input-fd) => #t)
         (check (FileDevice? output) => #t)
         (check (fxzero? (fxand (fcntl-getfl (OSDevice-fd output)) O_NONBLOCK)) => #f)
         (check (fxzero? (fxand (fcntl-getfd input-fd) FD_CLOEXEC)) => #t)
         (check (fxzero? (fxand (fcntl-getfd (OSDevice-fd output)) FD_CLOEXEC)) => #t)
         (finally
          (close-pipe-end input-fd)
          (close-pipe-end output)))))

    (test-case "none direction returns blocking descriptors"
      (let-values (((input-fd output-fd) (pipe 'none)))
        (try
         (check (fixnum? input-fd) => #t)
         (check (fixnum? output-fd) => #t)
         (check (fxzero? (fxand (fcntl-getfl input-fd) O_NONBLOCK)) => #t)
         (check (fxzero? (fxand (fcntl-getfl output-fd) O_NONBLOCK)) => #t)
         (check (fxzero? (fxand (fcntl-getfd input-fd) FD_CLOEXEC)) => #f)
         (check (fxzero? (fxand (fcntl-getfd output-fd) FD_CLOEXEC)) => #f)
         (finally
          (close-pipe-end input-fd)
          (close-pipe-end output-fd)))))

    (test-case "invalid direction is rejected"
      (check-exception (pipe 'sideways) true))))
