;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Stream socket Reader minimum-input regressions
(import :std/error
        :std/io
        :std/net/address
        :std/test
        :std/time/timeout)
(export stream-reader-test
        check-stream-reader-minimum)

;; Own the listener and both endpoints, including on a failed read or handshake.
;; The peer stays open until the read assertions finish, unless EOF is requested.
(def (check-stream-reader-minimum (listener : ServerSocket)
                                  (connect  : :procedure)
                                  (chunks   : :list)
                                  (need     : :fixnum)
                                  (eof?     : :boolean))
  => :void
  (def output (make-u8vector 24 255))
  (def input (append-u8vectors chunks))
  (def size (u8vector-length input))
  (def expected (make-u8vector 24 255))
  (def peer-thread #f)
  (subu8vector-move! input 0 size expected 3)
  (unwind-protect
    (begin
      (listener.set-input-timeout! (timeout->deadline 5))
      (set! peer-thread
        (spawn-thread
         (lambda ()
           (using (peer (connect) : StreamSocket)
             (unwind-protect
               (begin
                 (peer.set-input-timeout! (timeout->deadline 5))
                 (peer.set-output-timeout! (timeout->deadline 5))
                 (using (writer (peer.writer) :- Writer)
                   (let send ((rest chunks) (start 3) (wrote 0))
                     (if (null? rest)
                       (begin
                         (when eof? (writer.close))
                         (unless (eq? (thread-receive 10 'timeout) 'done)
                           (error "Reader assertions did not finish"))
                         wrote)
                       (let* ((chunk (car rest))
                              (len (u8vector-length chunk))
                              (count (writer.write chunk))
                              (end (fx+ start len)))
                         ;; Non-sentinel chunks are sent only after the previous
                         ;; chunk was copied, forcing separate recv calls.
                         (let wait ((retries 100))
                           (cond
                            ((fx= (u8vector-ref output (fx- end 1))
                                  (u8vector-ref chunk (fx- len 1))))
                            ((fxzero? retries)
                             (error "Reader did not consume a chunk"))
                            (else
                             (thread-sleep! .01)
                             (wait (fx- retries 1)))))
                         (send (cdr rest) end (fx+ wrote count)))))))
               (peer.close))))
         'stream-reader-peer))
      (using (socket (listener.accept) :- StreamSocket)
        (unwind-protect
          (begin
            ;; An exact minimum must finish before this deadline, without EOF.
            (socket.set-input-timeout! (timeout->deadline 1))
            (using (reader (socket.reader) :- Reader)
              (if (fx> need size)
                (check-exception (reader.read output 3 20 need) PrematureEndOfInput?)
                (check (reader.read output 3 20 need) => size))
              (check output => expected)
              (when eof?
                (check (reader.read output 1 21 0) => 0)
                (check output => expected))))
          (socket.close))))
    (listener.close)
    (when peer-thread
      (thread-send peer-thread 'done)
      (check (thread-join! peer-thread 10 'timeout) => size))))

(def (check-plain-reader-minimum (unix?  : :boolean)
                                 (chunks : :list)
                                 (need   : :fixnum)
                                 (eof?   : :boolean))
  => :void
  (def (run (address : Address))
    => :void
    (using (listener (stream-listen address) :- ServerSocket)
      (check-stream-reader-minimum
       listener
       (lambda () (stream-connect (listener.address) (timeout->deadline 5)))
       chunks need eof?)))
  (if unix?
    (call-with-temporary-file-name "stream-reader-test"
      (lambda (path) (run (UnixAddress path))))
    (run (string->address "inet4:127.0.0.1:0"))))

(def stream-reader-test
  (test-suite "stream socket Reader minimum input"
    (test-case "tcp short EOF"
      (check-plain-reader-minimum #f [#u8(1 2 3 4 5 6 7)] 13 #t))
    (test-case "tcp zero minimum at EOF"
      (check-plain-reader-minimum #f [] 0 #t))
    (test-case "tcp exact minimum with open peer"
      (check-plain-reader-minimum #f [#u8(1 2 3 4 5 6 7)] 7 #f))
    (test-case "tcp accumulated partial reads before EOF"
      (check-plain-reader-minimum #f [#u8(1 2 3) #u8(4 5) #u8(6 7)] 13 #t))
    (test-case "tcp accumulated exact minimum with open peer"
      (check-plain-reader-minimum #f [#u8(1 2 3) #u8(4 5) #u8(6 7)] 7 #f))
    (test-case "unix short EOF"
      (check-plain-reader-minimum #t [#u8(1 2 3 4 5 6 7)] 13 #t))
    (test-case "unix zero minimum at EOF"
      (check-plain-reader-minimum #t [] 0 #t))
    (test-case "unix exact minimum with open peer"
      (check-plain-reader-minimum #t [#u8(1 2 3 4 5 6 7)] 7 #f))
    (test-case "unix accumulated partial reads before EOF"
      (check-plain-reader-minimum #t [#u8(1 2 3) #u8(4 5) #u8(6 7)] 13 #t))
    (test-case "unix accumulated exact minimum with open peer"
      (check-plain-reader-minimum #t [#u8(1 2 3) #u8(4 5) #u8(6 7)] 7 #f))))
