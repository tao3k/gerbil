;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Connect syscall classification and pending status regression
(import :std/test
        :std/error
        :std/os/error
        :std/os/socket
        :std/net/address
        :std/io
        :std/io/tempfile
        :std/time/timeout)
(export socket-connect-test)

(def socket-connect-test
  (test-suite "source connect errors"
    (test-case "immediate Unix failure retains errno and source context"
      (call-with-temporary-directory "connect-error"
        (lambda (dir)
          (let (error (with-catch values
                         (lambda () (unix-connect (UnixAddress (path-expand "missing" dir))))))
            (check error ? SocketConnectError?)
            (check error ? OSError?)
            (check error ? IOError?)
            (check (OSError-errno error) => ENOENT)
            (check (car (Error-irritants error)) => '__connect)
            (check (Error-where error) ? string?)))))
    (test-case "asynchronous refused TCP failure retains errno"
      (let* ((listener (tcp-listen (InetAddress localhost4 0)))
             (address (ServerSocket-address listener)))
        (ServerSocket-close listener)
        (let (error (with-catch values (lambda () (tcp-connect address (IOTimeout 2)))))
          (check error ? SocketConnectError?)
          (check error ? IOError?)
          (check (OSError-errno error) => ECONNREFUSED)
          (check (car (Error-irritants error)) => 'connect)
          (check (Error-where error) ? string?))))
    (test-case "custom syscall raiser preserves EINTR and pending handling"
      (for-each
       (lambda (pending)
         (let (calls 0)
           (def (connect-result)
             (set! calls (fx+ calls 1))
             (if (fx= calls 1) (fx- EINTR) (fx- pending)))
           (check (do-syscall (connect-result) raise: raise-socket-connect-error
                    EINPROGRESS EWOULDBLOCK EAGAIN)
                  => (fx- pending))
           (check calls => 2)))
       [EINPROGRESS EWOULDBLOCK EAGAIN]))))
