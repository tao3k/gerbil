;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Listener socket handoff and pathname lifecycle tests
(import :std/error
        :std/interface
        :std/io
        (only-in :std/io/file open-file-writer/lock)
        :std/net/address
        (only-in :std/os/fcntl O_CREAT O_NOFOLLOW)
        :std/sync/threads
        :std/test
        :std/time/timeout
        ./listener
        ./thread)
(export listener-test)

(defclass TestListenerMonitor
  ((thread : :thread := (current-thread))
   (listeners : :list := [])
   (clients : :list := [])
   (accepted : :list := [])
   (reject-first? : :boolean := #f)
   (close-self? : :boolean := #f)
   (fail-accept? : :boolean := #f)
   (fail-closed? : :boolean := #f)
   (closed-count : :fixnum := 0))
  final: #t)

(def (test-owner-accept! (self : TestListenerMonitor)
                         (listener : Listener)
                         (socket : StreamSocket))
  => :boolean
  (cond
   (self.fail-accept?
    (when self.close-self? (listener-close! listener))
     (raise 'listener-owner-failed))
   (self.close-self?
    (listener-close! listener)
    (thread-send self.thread ['declined self listener])
    #f)
   (self.reject-first?
    (set! self.reject-first? #f)
    (thread-send self.thread ['declined self listener])
    #f)
   (else
    (socket.set-input-timeout! (IOTimeout 5))
    (socket.set-output-timeout! (IOTimeout 5))
    (set! self.accepted (cons socket self.accepted))
    (thread-send self.thread ['accepted self listener socket])
    #t)))

(def (test-owner-closed! (self : TestListenerMonitor)
                         (listener : Listener))
  => :void
  (set! self.closed-count (fx+ self.closed-count 1))
  (thread-send self.thread
    ['closed self listener self.closed-count
     (listener-closed? listener)
     (and listener.path (file-exists? listener.path #f))])
  (when self.fail-closed? (raise 'listener-owner-failed))
  (void))

(implement ListenerMonitor
  (TestListenerMonitor
   (accept! test-owner-accept!)
   (closed! test-owner-closed!)))

;; Construction includes DNS resolution; close includes an otherwise unbounded
;; join. Run both behind a deadline, propagating the original worker exception.
;; DNS has no cooperative cancellation hook; a timeout must not kill its worker.
(def (test-listener-bounded (proc : :procedure))
  => :t
  (let ((done? #f)
        (worker (spawn-thread proc 'test-listener-operation)))
    (unwind-protect
      (let (result (thread-join!/error worker 5))
        (set! done? #t)
        result)
      (unless done?
        (ignore-errors (thread-join! worker 5))))))

(def (test-listener-open (owner : TestListenerMonitor)
                         (address : Address))
  => Listener
  (test-listener-bounded
   (lambda ()
     (let (listener (make-listener (ListenerMonitor owner) address))
       (set! owner.listeners (cons listener owner.listeners))
       listener))))

(def (test-listener-close (listener : Listener))
  => :void
  (test-listener-bounded (lambda () (listener-close! listener)))
  (void))

(def (test-listener-lock (path : :string))
  => Writer
  (open-file-writer/lock (string-append path ".lock") 0
    flags: (fxior O_CREAT O_NOFOLLOW) mode: #o600))

(def (test-listener-client (owner : TestListenerMonitor)
                           (listener : Listener))
  => StreamSocket
  (using (socket (stream-connect listener.address (IOTimeout 5))
                 : StreamSocket)
    (set! owner.clients (cons socket owner.clients))
    (socket.set-input-timeout! (IOTimeout 5))
    (socket.set-output-timeout! (IOTimeout 5))
    socket))

(def (test-listener-accepted (owner : TestListenerMonitor)
                             (listener : Listener))
  => StreamSocket
  (let (message (thread-receive 5 'timed-out))
    (unless (and (list? message) (= (length message) 4)
                 (eq? (car message) 'accepted)
                 (eq? (cadr message) owner)
                 (eq? (caddr message) listener))
      (error "Expected accepted socket" message))
    (StreamSocket (cadddr message))))

(def (test-listener-notified (owner : TestListenerMonitor)
                              (listener : Listener)
                              (count : :fixnum))
  => :void
  (check (thread-receive 5 'timed-out) =>
          ['closed owner listener count #t #f])
  (check owner.closed-count => count)
  (void))

(def (test-listener-bytes (from : StreamSocket)
                          (to : StreamSocket))
  => :void
  (let (buffer (make-u8vector 4))
    (check (Writer-write (from.writer) #u8(0 42 128 255)) => 4)
    (check (Reader-read (to.reader) buffer 0 4 4) => 4)
    (check buffer => #u8(0 42 128 255)))
  (void))

(def (test-listener-fixture (proc : :procedure))
  => :void
  (using (owner (TestListenerMonitor)
                : TestListenerMonitor)
    (unwind-protect
      (proc owner)
      (begin
        (for-each
          (lambda ((listener : Listener))
            (try
              (test-listener-close listener)
              (catch (e)
                ;; Wake accept through its socket, never by terminating the worker.
                (ignore-errors (listener.socket.close))
                (when listener.worker
                  (check (with-catch (lambda (e) 'finished)
                           (lambda () (network-thread-join! listener.worker 5 'timeout)))
                         ? (lambda (result) (not (eq? result 'timeout))))))))
          owner.listeners)
        (for-each (lambda (socket) (ignore-errors (StreamSocket-close socket)))
                  owner.accepted)
        (for-each (lambda (socket) (ignore-errors (StreamSocket-close socket)))
                  owner.clients))))
  (void))

(def listener-test
  (test-suite "network listener"
    (test-case "DNS bind, byte handoff, close wakes accept and preserves transferred sockets"
      (test-listener-fixture
       (lambda ((owner : TestListenerMonitor))
         (using (listener (test-listener-open owner (DNSAddress "localhost" 0))
                          : Listener)
           (check (InetAddress? listener.address) => #t)
           (check (InetAddress-port listener.address) ? positive?)
           (check (listener.socket.address) => listener.address)
           (check (thread? listener.worker) => #t)
           (using (client (test-listener-client owner listener)
                          : StreamSocket)
             (using (accepted (test-listener-accepted owner listener)
                              : StreamSocket)
               (test-listener-bytes client accepted)
               (test-listener-bytes accepted client)
               ;; No second client: the accept loop has no work to wake it.
               (thread-yield!)
               (test-listener-close listener)
               (test-listener-notified owner listener 1)
               (check (network-thread-join! listener.worker 5) => (void))
               (check-exception
                 (test-listener-bounded
                  (lambda ()
                    (using (socket (listener.socket.accept)
                                   : StreamSocket)
                      (socket.close))))
                 io-closed-error?)
               (test-listener-close listener)
               (check owner.closed-count => 1)
               (check (thread-receive 0.05 'quiet) => 'quiet)
               (test-listener-bytes client accepted)
               (test-listener-bytes accepted client)
               (accepted.close)
               (check (client.recv (make-u8vector 1)) => 0)))))))

    (test-case "false admission closes only the rejected socket and keeps accepting"
      (test-listener-fixture
       (lambda ((owner : TestListenerMonitor))
         (set! owner.reject-first? #t)
         (using (listener (test-listener-open owner (InetAddress localhost4 0))
                          : Listener)
           (using (rejected (test-listener-client owner listener)
                            : StreamSocket)
             (check (thread-receive 5 'timed-out) => ['declined owner listener])
             (check (rejected.recv (make-u8vector 1)) => 0)
             (check owner.accepted => [])
             (check (listener-closed? listener) => #f)
             (using (client (test-listener-client owner listener)
                            : StreamSocket)
               (let (accepted (test-listener-accepted owner listener))
                 (test-listener-bytes client accepted)
                 (test-listener-bytes accepted client)))
             (test-listener-close listener)
             (when listener.worker (network-thread-join! listener.worker 5))
             (test-listener-notified owner listener 1))))))

    (test-case "owner can close its own listener and decline without self-join"
      (test-listener-fixture
       (lambda ((owner : TestListenerMonitor))
         (set! owner.close-self? #t)
         (using (listener (test-listener-open owner (InetAddress localhost4 0))
                          : Listener)
           (using (client (test-listener-client owner listener)
                          : StreamSocket)
             (check (thread-receive 5 'timed-out) => ['declined owner listener])
             (test-listener-notified owner listener 1)
             (check (network-thread-join! listener.worker 5) => (void))
             (check (client.recv (make-u8vector 1)) => 0)
             (check owner.accepted => [])
             (test-listener-close listener)
             (check owner.closed-count => 1))))))

    (test-case "Unix creates parent directories and preserves directories and sidecar across listeners"
      (call-with-temporary-directory "listener-"
       (lambda (root)
         (test-listener-fixture
          (lambda ((owner : TestListenerMonitor))
            (let (path (path-expand "nested/run/socket" root))
              (check (file-exists? (path-directory path)) => #f)
              (using (listener (test-listener-open owner (UnixAddress path))
                               : Listener)
                (check listener.address => (UnixAddress path))
                (let* ((lock-path (string-append path ".lock"))
                       (inode (file-info-inode (file-info lock-path #f))))
                  (using (client (test-listener-client owner listener)
                                 : StreamSocket)
                    (let (accepted (test-listener-accepted owner listener))
                      (test-listener-bytes client accepted)
                      (test-listener-close listener)
                      (test-listener-notified owner listener 1)
                      (check (file-exists? path #f) => #f)
                      (test-listener-bytes accepted client)))
                  (check (file-info-inode (file-info lock-path #f)) => inode)
                  (using (next (test-listener-open owner (UnixAddress path))
                               : Listener)
                    (check (file-info-inode (file-info lock-path #f)) => inode)
                    (using (client (test-listener-client owner next)
                                   : StreamSocket)
                      (test-listener-bytes client (test-listener-accepted owner next)))
                    (test-listener-close next)
                    (test-listener-notified owner next 2))
                  (check (file-exists? path #f) => #f)
                  (check (file-info-inode (file-info lock-path #f)) => inode)
                  (check (file-exists? (path-directory path)) => #t)))))))))

    (test-case "Unix contention leaves the active listener usable"
      (call-with-temporary-directory "listener-"
       (lambda (root)
         (test-listener-fixture
          (lambda ((owner : TestListenerMonitor))
            (let (path (path-expand "socket" root))
              (using (listener (test-listener-open owner (UnixAddress path))
                               : Listener)
                (check-exception (test-listener-open owner (UnixAddress path)) Timeout?)
                (using (client (test-listener-client owner listener)
                               : StreamSocket)
                  (test-listener-bytes client (test-listener-accepted owner listener)))
                (check owner.closed-count => 0)
                (test-listener-close listener)
                (test-listener-notified owner listener 1))))))))

    (test-case "Unix sidecar excludes construction before bind and released stale sockets recover"
      (call-with-temporary-directory "listener-"
       (lambda (root)
         (test-listener-fixture
          (lambda ((owner : TestListenerMonitor))
            (let (path (path-expand "socket" root))
              (using (lock (test-listener-lock path)
                           : Writer)
                (unwind-protect
                  (begin
                    (check-exception (test-listener-open owner (UnixAddress path)) Timeout?)
                    (check (file-exists? path #f) => #f)
                    (call-with-output-file path (lambda (port) (display "keep" port)))
                    (check-exception (test-listener-open owner (UnixAddress path)) Timeout?)
                    (check (call-with-input-file path read-line) => "keep")
                    (delete-file path)
                    (using (socket (stream-listen (UnixAddress path))
                                   : ServerSocket)
                      (unwind-protect
                        (begin
                          (socket.set-input-timeout! (IOTimeout 5))
                          (check-exception (test-listener-open owner (UnixAddress path)) Timeout?)
                          (check (file-info-type (file-info path #f)) => 'socket)
                          (using (client (stream-connect (UnixAddress path) (IOTimeout 5))
                                         : StreamSocket)
                            (unwind-protect
                              (using (accepted (socket.accept)
                                               : StreamSocket)
                                (unwind-protect
                                  (begin
                                    (client.set-output-timeout! (IOTimeout 5))
                                    (accepted.set-input-timeout! (IOTimeout 5))
                                    (test-listener-bytes client accepted))
                                  (accepted.close)))
                              (client.close))))
                        (socket.close))))
                  (lock.close)))
              ;; Closing the raw socket and releasing its lock leaves an abandoned
              ;; pathname. This simulates stale state, not a process-kill test.
              (check (file-info-type (file-info path #f)) => 'socket)
              (check owner.closed-count => 0)
              (using (listener (test-listener-open owner (UnixAddress path))
                               : Listener)
                (using (client (test-listener-client owner listener)
                               : StreamSocket)
                  (test-listener-bytes client (test-listener-accepted owner listener)))
                (test-listener-close listener)
                (test-listener-notified owner listener 1)
                (check (file-exists? path #f) => #f))))))))

    (test-case "Unix non-socket refusal preserves files directories and symlinks and releases lock"
      (for-each
       (lambda (kind)
         (call-with-temporary-directory "listener-"
          (lambda (root)
            (test-listener-fixture
             (lambda ((owner : TestListenerMonitor))
               (let* ((path (path-expand "socket" root))
                      (data (case kind
                              ((directory) (create-directory path) (path-expand "data" path))
                              ((symbolic-link) (path-expand "target" root))
                              (else path))))
                 (call-with-output-file data (lambda (port) (display "keep" port)))
                 (when (eq? kind 'symbolic-link) (create-symbolic-link data path))
                 (check-exception (test-listener-open owner (UnixAddress path)) IOError?)
                 (check (file-info-type (file-info path #f)) => kind)
                 (check (call-with-input-file data read-line) => "keep")
                 (check owner.closed-count => 0)
                 (using (lock (test-listener-lock path)
                              : Writer)
                   (unwind-protect
                     (begin
                       (check-exception (test-listener-open owner (UnixAddress path)) Timeout?)
                       (check (call-with-input-file data read-line) => "keep"))
                     (lock.close)))))))))
       '(regular directory symbolic-link)))

    (test-case "unexpected Unix admission failure unlinks and releases lock for the next listener"
      (call-with-temporary-directory "listener-"
       (lambda (root)
         (test-listener-fixture
          (lambda ((owner : TestListenerMonitor))
            (let (path (path-expand "socket" root))
              (set! owner.fail-accept? #t)
              (using (listener (test-listener-open owner (UnixAddress path))
                               : Listener)
                (using (client (test-listener-client owner listener)
                               : StreamSocket)
                  (test-listener-notified owner listener 1)
                  (check-exception (network-thread-join! listener.worker 5)
                                   (lambda (e) (eq? e 'listener-owner-failed)))
                  (check (client.recv (make-u8vector 1)) => 0)
                  (check owner.accepted => [])
                  (check (file-exists? path #f) => #f)
                   (check (test-listener-close listener) => (void))))
              (set! owner.fail-accept? #f)
              (using (next (test-listener-open owner (UnixAddress path))
                           : Listener)
                (using (client (test-listener-client owner next)
                               : StreamSocket)
                  (test-listener-bytes client (test-listener-accepted owner next)))
                (test-listener-close next)
                (test-listener-notified owner next 2)
                (check (file-exists? path #f) => #f))))))))

    (test-case "unexpected admission failure propagates even after owner self-close"
      (for-each
       (lambda (close-self?)
         (test-listener-fixture
          (lambda ((owner : TestListenerMonitor))
            (set! owner.fail-accept? #t)
            (set! owner.close-self? close-self?)
            (using (listener (test-listener-open owner (InetAddress localhost4 0))
                             : Listener)
              (using (client (test-listener-client owner listener)
                             : StreamSocket)
                (test-listener-notified owner listener 1)
                (check (client.recv (make-u8vector 1)) => 0)
                (check owner.accepted => [])
                (check-exception (network-thread-join! listener.worker 5)
                                 (lambda (e) (eq? e 'listener-owner-failed)))
                 (check (test-listener-close listener) => (void)))))))
       '(#f #t)))

    (test-case "close ignores owner cleanup failure while explicit join preserves it"
      (test-listener-fixture
       (lambda ((owner : TestListenerMonitor))
         (set! owner.fail-closed? #t)
         (using (listener (test-listener-open owner (InetAddress localhost4 0))
                          : Listener)
            (check (test-listener-close listener) => (void))
           (test-listener-notified owner listener 1)
            (check-exception (network-thread-join! listener.worker 5)
                             (lambda (e) (eq? e 'listener-owner-failed)))
            (check (test-listener-close listener) => (void))
           (check owner.closed-count => 1)))))))
