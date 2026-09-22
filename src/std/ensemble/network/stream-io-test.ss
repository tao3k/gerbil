;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Blocking stream IO with explicitly driven parent transport progress
(import :std/test
        :std/cache
        :std/error
        :std/interface
        :std/io/interface
        :std/io/bio/cache
        :std/sync/threads
        :std/time/time
        :std/time/timeout
        ./config
        ./stream)
(export stream-io-test)

(def (test-stream-io (expire : :integer := (+ (current-time-seconds) 60)))
  => StreamIO
  (make-stream-io (StreamLimits recv-window: 4 outbound-buffer: 4)
                  4 expire
                  (NetworkConfig stream-input-timeout: (IOTimeout 3)
                                 stream-output-timeout: (IOTimeout 3))))

;; Abort before finite joins; only after joins drop every transport reference.
;; Cache fixtures discard prior BIO cache contents and assume no other cache users.
(defrule (with-test-streams (io ...) start body ...)
  (let ((io (test-stream-io)) ... (workers []))
    (def (start proc (capture? #t))
      (let (thread (spawn-thread (if capture? (lambda () (with-catch identity proc)) proc)))
        (set! workers (cons thread workers))
        thread))
    (unwind-protect
      (begin body ...)
      (begin
        (stream-io-abort! io) ...
        (for-each (lambda (thread)
                    (when (eq? (with-catch identity (cut thread-join! thread 2 'stuck)) 'stuck)
                      (error "Stream fixture worker failed to stop")))
                  workers)
        (stream-io-data-release! io) ...
        (stream-io-fin-release! io) ...))))

;; Observe an exact CV/mutex with a finite join, not an assumed scheduling delay.
;; Early completion (including an old short-count Writer) fails immediately.
(def (test-stream-wait! (worker   : :thread)
                        (wait-for : :t)
                        (ready?   : :procedure := (lambda () #t)))
  => :void
  (let (deadline (+ (##current-time-point) 1))
    (let loop ()
      (let (state (thread-state worker))
        (unless (and (thread-state-waiting? state)
                     (eq? (thread-state-waiting-for state) wait-for)
                     (ready?))
          (unless (eq? (thread-join! worker .001 'waiting) 'waiting)
            (error "Stream worker completed before the expected wait" wait-for))
          (when (>= (##current-time-point) deadline)
            (error "Stream worker did not reach the expected wait" wait-for state))
          (loop))))))

(def (test-stream-output-wait! (worker : :thread)
                               (io     : StreamIO)
                               (ready? : :procedure := (lambda () #t)))
  => :void
  (test-stream-wait! worker (StreamIO-output-cv io) ready?))

;; One bounded parent scheduling turn: immediate input dispatch, transport release,
;; then any credit consumed by the real application Reader. No compiler probes.
(def (test-stream-pump! (from    : StreamIO)
                        (to      : StreamIO)
                        (quantum : :fixnum := 2))
  => :void
  (let-values (((bytes lo hi) (stream-io-data-commit! from quantum)))
    (when bytes
      (stream-io-receive! to (subu8vector bytes lo hi))
      (stream-io-data-release! from)))
  (let (credit (stream-io-credit-commit! to))
    (when (> credit 0)
      (stream-io-credit-receive! from credit))))

(def stream-io-test
  (test-suite "Internal blocking stream Reader/Writer"
    (test-case "directional locks allow opposite IO and parent progress"
      (with-test-streams (io) start
        (let ((reader (StreamIO-reader io))
              (writer (StreamIO-writer io))
              (output (make-u8vector 1)))
          (mutex-lock! (StreamIO-output-mx io))
          (unwind-protect
            (let (reading (start (lambda () (Reader-read reader output))))
              (check (thread-join! reading .02 'waiting) => 'waiting)
              (stream-io-receive! io #u8(7))
              (check (thread-join!/error reading 1) => 1)
              (check output => #u8(7))
              (check (stream-io-input-ready? io) => #t)
              (check (stream-io-credit-commit! io) => 1))
            (mutex-unlock! (StreamIO-output-mx io)))
          (mutex-lock! (StreamIO-input-mx io))
          (unwind-protect
            (begin
              (check (thread-join!/error (start (lambda () (Writer-write writer #u8(1 2 3 4)))) 1) => 4)
              (let (writing (start (lambda () (Writer-write writer #u8(5)))))
                (check (thread-join! writing .02 'waiting) => 'waiting)
                (check (stream-io-output-ready? io) => #t)
                (stream-io-data-commit! io 4)
                (stream-io-data-release! io)
                (check (thread-join!/error writing 1) => 1)))
            (mutex-unlock! (StreamIO-input-mx io))))))

    (test-case "cached views, need zero waits, EOF minimum and opposite output"
      (with-test-streams (io) start
        (let* ((reader (StreamIO-reader io))
               (writer (StreamIO-writer io))
               (output (make-u8vector 8))
               (reading (start (lambda () (Reader-read reader output 0 8 0)))))
          (check-eq? reader (StreamIO-reader io))
          (check-eq? writer (StreamIO-writer io))
          (check (thread-join! reading .03 'waiting) => 'waiting)
          (stream-io-receive! io #u8(1 2))
          (check (thread-join!/error reading 1) => 2)
          (check (subu8vector output 0 2) => #u8(1 2))
          (stream-io-receive! io #u8(3))
          (stream-io-fin-receive! io)
          (check-exception (Reader-read reader output 0 8 2) PrematureEndOfInput?)
          (check (Reader-read reader output 0 8 0) => 0)
          (check-exception (Reader-read reader output 0 8 1) PrematureEndOfInput?)
          ;; Consumed input FIN does not forbid authorization for remaining output.
          (check (stream-io-install-lease! io (+ (StreamIO-expire io) 1)) => #t)
          (check (Writer-write writer #u8(9)) => 1)
          (Reader-close reader)
          (Reader-close reader)
          (check-exception (Writer-write writer #u8(8)) Closed?)
          (check-exception (stream-io-set-input-timeout! io !NoTimeout) Closed?)
          (check-exception (stream-io-set-output-timeout! io !NoTimeout) Closed?))))

    (test-case "simultaneous bidirectional full writes and reads greater than window"
      (with-test-streams (a b) start
        (let* ((input (list->u8vector (iota 97)))
               (a-output (make-u8vector 97))
               (b-output (make-u8vector 97))
               (a-read (start (lambda () (Reader-read (StreamIO-reader a) a-output 0 97 97))))
               (b-read (start (lambda () (Reader-read (StreamIO-reader b) b-output 0 97 97))))
               (a-write (start (lambda () (Writer-write (StreamIO-writer a) input))))
               (b-write (start (lambda () (Writer-write (StreamIO-writer b) input)))))
          (let loop ((steps 0))
            (when (= steps 2000)
              (error "Bidirectional transfer did not finish"))
            (test-stream-pump! a b)
            (test-stream-pump! b a)
            (unless (and (equal? (thread-join! a-read 0 'waiting) 97)
                         (equal? (thread-join! b-read 0 'waiting) 97))
              (thread-sleep! .001)
              (loop (+ steps 1))))
          (check (thread-join!/error a-write 1) => 97)
          (check (thread-join!/error b-write 1) => 97)
          (check a-output => input)
          (check b-output => input))))

    (test-case "full send ring wakes only on release, preserving the copied slice"
      (with-test-streams (io) start
        (let ((input #u8(1 2 3 4 5)) (writer (StreamIO-writer io)))
          (check (Writer-write writer input 0 4) => 4)
          (u8vector-fill! input 99)
          (let (writing (start (lambda () (Writer-write writer #u8(5 6)))))
            (test-stream-output-wait! writing io)
            (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
              (check (subu8vector bytes lo hi) => #u8(1 2))
              (check (thread-join! writing .03 'waiting) => 'waiting)
              (test-stream-output-wait! writing io)
              (check (subu8vector bytes lo hi) => #u8(1 2))
              (stream-io-data-release! io))
            (check (thread-join!/error writing 1) => 2)))))

    (test-case "one sliced write exceeds ring and window, retaining borrowed capacity"
      (with-test-streams (io) start
        (let ((writer (StreamIO-writer io))
              (input #u8(99 1 2 3 4 5 6 7 8 9 10 99)))
          (check (Writer-write writer input 3 3) => 0)
          (check (stream-io-output-ready? io) => #f)
          (let (writing (start (lambda () (Writer-write writer input 1 11))))
            (test-stream-output-wait! writing io)
            (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
              (check (subu8vector bytes lo hi) => #u8(1 2))
              ;; Even returned peer credit cannot reclaim an unreleased borrow.
              (stream-io-credit-receive! io 2)
              (check (thread-join! writing .03 'waiting) => 'waiting)
              (test-stream-output-wait! writing io)
              (check (subu8vector bytes lo hi) => #u8(1 2))
              (check (StreamBuffer-size (StreamState-send (StreamIO-state io))) => 4)
              (stream-io-data-release! io))
            (for-each
              (lambda (expected)
                (test-stream-output-wait!
                 writing io
                 (lambda ()
                   (do-with-lock (StreamIO-output-mx io)
                     (= (StreamBuffer-size (StreamState-send (StreamIO-state io))) 4))))
                (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
                  (check (subu8vector bytes lo hi) => expected)
                  (stream-io-data-release! io)
                  (stream-io-credit-receive! io 2)))
              [#u8(3 4) #u8(5 6)])
            (let (result (thread-join! writing 1 'stuck))
              (check result => 10)
              (when (eq? result 'stuck)
                (error "Full-slice writer did not complete")))
            ;; The completed request no longer borrows application storage.
            (u8vector-fill! input 99)
            (for-each
              (lambda (expected)
                (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
                  (check (subu8vector bytes lo hi) => expected)
                  (stream-io-data-release! io)
                  (stream-io-credit-receive! io 2)))
              [#u8(7 8) #u8(9 10)])
            (check (Writer-write writer #u8()) => 0)
            (check (stream-io-output-ready? io) => #f)))))

    (test-case "close after partial write raises instead of returning the copied prefix"
      (with-test-streams (io sibling) start
        (let (writing (start (lambda () (Writer-write (StreamIO-writer io) #u8(1 2 3 4 5)))))
          (test-stream-output-wait! writing io)
          (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
            (stream-io-abort! io)
            (check (thread-join! writing 1 'stuck) ? Closed?)
            (let (expire (StreamIO-expire io))
              (check (stream-io-install-lease! io (+ expire 1)) => #f)
              (check (StreamIO-expire io) => expire))
            (check (subu8vector bytes lo hi) => #u8(1 2))
            (check (stream-io-retirable? io) => #f)
            (stream-io-data-release! io)
            (check (stream-io-retirable? io) => #t))
          (check (Writer-write (StreamIO-writer sibling) #u8(9)) => 1)
          (stream-io-receive! sibling #u8(8))
          (let (output (make-u8vector 1))
            (check (Reader-read (StreamIO-reader sibling) output) => 1)
            (check output => #u8(8))))))

    (test-case "concurrent writer close waits for DATA and FIN completion only"
      (with-test-streams (io) start
        (let ((writer (StreamIO-writer io)) (output (make-u8vector 1)))
          (Writer-write writer #u8(1 2))
          (let ((first (start (lambda () (Writer-close writer))))
                (second (start (lambda () (Writer-close writer)))))
            (check (thread-join! first .03 'waiting) => 'waiting)
            (check-exception (Writer-write writer #u8(3)) Closed?)
            (check (stream-io-fin-commit! io) => #f)
            (stream-io-data-commit! io 4)
            (check (thread-join! second .03 'waiting) => 'waiting)
            (stream-io-data-release! io)
            (check (stream-io-fin-commit! io) => #t)
            (check (stream-io-fin-commit! io) => #f)
            (check (thread-join! first .03 'waiting) => 'waiting)
            (stream-io-fin-release! io)
            (check (void? (thread-join!/error first 1)) => #t)
            (check (void? (thread-join!/error second 1)) => #t)
            (Writer-close writer)
            (check-exception (stream-io-set-output-timeout! io (IOTimeout -1)) Closed?)
            (Writer-close writer)
            (stream-io-receive! io #u8(9))
            (check (Reader-read (StreamIO-reader io) output 0 1 1) => 1)
            (check output => #u8(9))
            (check (stream-io-retirable? io) => #f)
            (stream-io-fin-receive! io)
            (check (stream-io-retirable? io) => #t)))))

    (test-case "read, write and drain timeout abort and wake the opposite waiter"
      (for-each
        (lambda (operation)
          (with-test-streams (io) start
            (let ((reader (StreamIO-reader io)) (writer (StreamIO-writer io)))
              (Writer-write writer #u8(1 2 3 4))
              (stream-io-set-input-timeout! io (if (eq? operation 'read) (IOTimeout .12) !NoTimeout))
              (stream-io-set-output-timeout! io (if (eq? operation 'read) !NoTimeout (IOTimeout .12)))
              (let ((reading (start (lambda () (Reader-read reader (make-u8vector 1)))))
                    (writing (start (lambda ()
                                      (if (eq? operation 'close)
                                        (Writer-close writer)
                                        (Writer-write writer #u8(5)))))))
                (check (thread-join!/error reading 1) ? Timeout?)
                (check (thread-join!/error writing 1) ? Timeout?)
                (check (stream-io-retirable? io) => #t)
                (check-exception (stream-io-data-commit! io 1) Timeout?)))))
        '(read write close)))

    (test-case "plain worker timeout releases locks before uncaught termination"
      (with-test-streams (io) start
        (stream-io-set-input-timeout! io (IOTimeout .03))
        (let (worker (start (lambda () (Reader-read (StreamIO-reader io) (make-u8vector 1))) #f))
          (check-exception (thread-join!/error worker 1) Timeout?)
          (check (stream-io-retirable? io) => #t)
          (check-exception (Writer-write (StreamIO-writer io) #u8(1)) Timeout?))))

    (test-case "partial reads, renewal and setters never restart captured timeout"
      (with-test-streams (io) start
        (stream-io-set-input-timeout! io (IOTimeout .6))
        (let* ((output (make-u8vector 8))
               (reading (start (lambda () (Reader-read (StreamIO-reader io) output 0 8 8)))))
          (test-stream-wait! reading (StreamIO-input-cv io))
          (stream-io-set-input-timeout! io (IOTimeout 30))
          (for-each (lambda (byte)
                      (check (stream-io-install-lease! io (+ (StreamIO-expire io) 1)) => #t)
                      (stream-io-receive! io (u8vector byte))
                      (thread-sleep! .1))
                    '(1 2 3))
          (check (thread-join! reading .4 'stuck) ? Timeout?)
          (check (subu8vector output 0 3) => #u8(1 2 3)))))

    (test-case "explicit abort propagates ordinary backend failures to all waiters"
      (for-each
        (lambda (reason)
          (with-test-streams (io) start
            (stream-io-set-input-timeout! io !NoTimeout)
            (stream-io-set-output-timeout! io !NoTimeout)
            (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
            (let* ((failure (IOError reason))
                   (reading (start (lambda () (Reader-read (StreamIO-reader io) (make-u8vector 1)))))
                   (writing (start (lambda () (Writer-write (StreamIO-writer io) #u8(5))))))
              (check (thread-join! reading .02 'waiting) => 'waiting)
              (check (thread-join! writing .02 'waiting) => 'waiting)
              (stream-io-abort! io failure)
              (check-eq? (thread-join!/error reading 1) failure)
              (check-eq? (thread-join!/error writing 1) failure)
              (check-exception (stream-io-fin-commit! io) (cut eq? <> failure)))))
        '("Remote reset" "Connection expired" "Backend failure")))

    (test-case "partial write progress, renewals and setter preserve one captured deadline"
      (with-test-streams (io sibling) start
        (stream-io-set-output-timeout! io (IOTimeout .6))
        (let (writing (start (lambda () (Writer-write (StreamIO-writer io) (make-u8vector 12 7)))))
          (test-stream-output-wait! writing io)
          (stream-io-set-output-timeout! io (IOTimeout 30))
          (thread-sleep! .35)
          (stream-io-data-commit! io 2)
          (stream-io-data-release! io)
          (stream-io-credit-receive! io 2)
          (test-stream-output-wait!
           writing io
           (lambda ()
             (do-with-lock (StreamIO-output-mx io)
               (= (StreamBuffer-size (StreamState-send (StreamIO-state io))) 4))))
          (for-each (lambda (_)
                      (check (stream-io-install-lease! io (+ (StreamIO-expire io) 1)) => #t)
                      (thread-sleep! .01))
                    (iota 3))
          ;; Finite outer join also catches a recaptured 30-second timeout.
          (check (thread-join! writing .35 'stuck) ? Timeout?)
          (check (stream-io-retirable? io) => #t)
          (check (Writer-write (StreamIO-writer sibling) #u8(9)) => 1))))

    (test-case "drain deadline survives renewal, repeated close and FIN ownership"
      (with-test-streams (io) start
        (stream-io-set-output-timeout! io (IOTimeout .6))
        (Writer-write (StreamIO-writer io) #u8(1 2))
        (let (first (start (lambda () (Writer-close (StreamIO-writer io)))))
          (test-stream-output-wait! first io)
          (check-exception (stream-io-set-output-timeout! io (IOTimeout 30)) Closed?)
          (let ((second (start (lambda () (Writer-close (StreamIO-writer io)))))
                (deadline (StreamIO-drain-deadline io)))
            (test-stream-output-wait! second io)
            (for-each (lambda (byte)
                        (check (stream-io-install-lease! io (+ (StreamIO-expire io) 1)) => #t)
                        (check-eq? (StreamIO-drain-deadline io) deadline)
                        (let-values (((aborted? next) (stream-io-status io)))
                          (check aborted? => #f)
                          (check (time->seconds next) => (time->seconds deadline)))
                        (let-values (((bytes lo hi) (stream-io-data-commit! io 1)))
                          (check (subu8vector bytes lo hi) => (u8vector byte)))
                        (thread-sleep! .15)
                        (stream-io-data-release! io)
                        (stream-io-credit-receive! io 1))
                      '(1 2))
            (check (stream-io-fin-commit! io) => #t)
            (check (stream-io-install-lease! io (+ (StreamIO-expire io) 1)) => #t)
            (check-eq? (StreamIO-drain-deadline io) deadline)
            (check (thread-join! first .4 'stuck) ? Timeout?)
            (check (thread-join! second .1 'stuck) ? Timeout?)
            (check (stream-io-retirable? io) => #f)
            (stream-io-fin-release! io)
            (check (stream-io-retirable? io) => #t)))))

    ;; Explicit installation is an internal unit seam, not evidence of verified
    ;; connection/stream renewal. All byte operations still use actual IO handles.
    (test-case "installation is forward-only, bounded and never resurrects an abort"
      (with-test-streams (io) start
        (let (expire (StreamIO-expire io))
          (for-each
            (lambda (proposal)
              (let (failure (with-catch identity (cut stream-io-install-lease! io proposal)))
                (check failure ? ContractViolation?)
                (check (Error-where failure) ? string?))
              (check (StreamIO-expire io) => expire)
              (check (StreamState-aborted? (StreamIO-state io)) => #f))
            [0 -1 #x10000000000000000 expire (- expire 1)])
          (check (stream-io-install-lease! io (+ expire 1)) => #t)
          (check (stream-io-install-lease! io #xffffffffffffffff) => #t)
          (stream-io-abort! io #f)
          (check (stream-io-install-lease! io #xffffffffffffffff) => #f)
          (check (StreamState-aborted? (StreamIO-state io)) => #t)
          (check (StreamIO-expire io) => #xffffffffffffffff)
          (check-eq? (with-catch identity (cut Reader-read (StreamIO-reader io) (make-u8vector 1))) #f))))

    (test-case "installation rechecks old authorization after waiting input then output"
      (with-test-streams (io) start
        (stream-io-abort! io)
        (set! io (test-stream-io (+ (current-time-seconds) 2)))
        (let ((expire (StreamIO-expire io)) (installing #f))
          (with-stream-io-lock (StreamIO-output-mx io)
            (set! installing (start (cut stream-io-install-lease! io (+ expire 60))))
            (test-stream-wait! installing (StreamIO-output-mx io))
            (check-eq? (mutex-state (StreamIO-input-mx io)) installing)
            (thread-sleep! (seconds->time (+ expire .01))))
          (check (thread-join! installing 1 'stuck) => #f)
          (check (StreamIO-expire io) => expire)
          (check (StreamIO-error io) ? Closed?)
          (check (stream-io-retirable? io) => #t))))

    (test-case "timely renewal survives the old bound while both waiters reacquire held locks"
      (with-test-streams (io) start
        (stream-io-abort! io)
        (set! io (test-stream-io (+ (current-time-seconds) 2)))
        (stream-io-set-input-timeout! io !NoTimeout)
        (stream-io-set-output-timeout! io !NoTimeout)
        (let* ((expire (StreamIO-expire io))
               (reader (StreamIO-reader io)) (writer (StreamIO-writer io))
               (output (make-u8vector 1))
               (reading (start (cut Reader-read reader output)))
               (writing (start (cut Writer-write writer #u8(1 2 3 4 5)))))
          (test-stream-wait! reading (StreamIO-input-cv io))
          (test-stream-output-wait! writing io)
          (with-stream-io-lock (StreamIO-input-mx io)
            (with-stream-io-lock (StreamIO-output-mx io)
              (check (stream-io-install-lease-locked! io (+ expire 60)) => #t)
              (test-stream-wait! reading (StreamIO-input-mx io))
              (test-stream-wait! writing (StreamIO-output-mx io))
              (thread-sleep! (seconds->time (+ expire .01)))
              (check (StreamState-aborted? (StreamIO-state io)) => #f)))
          (test-stream-wait! reading (StreamIO-input-cv io))
          (test-stream-output-wait! writing io)
          (stream-io-receive! io #u8(9))
          (stream-io-data-commit! io 4)
          (stream-io-data-release! io)
          (check (thread-join! reading 1 'stuck) => 1)
          (check output => #u8(9))
          (check (thread-join! writing 1 'stuck) => 5)
          (check-eq? (StreamIO-reader io) reader)
          (check-eq? (StreamIO-writer io) writer))))

    (test-case "a false timed CV wait reacquires output before deciding the fixed user failure"
      (with-test-streams (io) start
        (let (deadline (seconds->time (+ (##current-time-point) .3)))
          (stream-io-set-output-timeout! io (IOTimeout deadline))
          (let (writing (start (cut Writer-write (StreamIO-writer io) #u8(1 2 3 4 5))))
            (test-stream-output-wait! writing io)
            (with-stream-io-lock (StreamIO-input-mx io)
              (with-stream-io-lock (StreamIO-output-mx io)
                ;; No broadcast until the actual timed wait has returned false.
                ;; Checking/raising before reacquisition would queue abort on INPUT.
                (thread-sleep! (seconds->time (+ (time->seconds deadline) .01)))
                (test-stream-wait! writing (StreamIO-output-mx io))
                (check (stream-io-install-lease-locked! io (+ (StreamIO-expire io) 1)) => #t)
                (check (StreamState-aborted? (StreamIO-state io)) => #f)))
            (check (thread-join! writing 1 'stuck) ? Timeout?)
            (check (stream-io-retirable? io) => #t)))))

    (test-case "an overdue drain wins over installation under held locks"
      (with-test-streams (io) start
        (let ((deadline (seconds->time (+ (##current-time-point) .3)))
              (expire (StreamIO-expire io)))
          (stream-io-set-output-timeout! io (IOTimeout deadline))
          (let (closing (start (cut Writer-close (StreamIO-writer io))))
            (test-stream-output-wait! closing io)
            (with-stream-io-lock (StreamIO-input-mx io)
              (with-stream-io-lock (StreamIO-output-mx io)
                (thread-sleep! (seconds->time (+ (time->seconds deadline) .01)))
                (check (stream-io-install-lease-locked! io (+ expire 1)) => #f)
                (check (StreamIO-error io) ? Timeout?)
                (check (StreamIO-expire io) => expire)))
            (check (thread-join! closing 1 'stuck) ? Timeout?)))))

    (test-case "renewal preserves rings, credits, DATA borrow, FIN and unlimited drain"
      (with-test-streams (io) start
        (stream-io-abort! io)
        (set! io (test-stream-io (+ (current-time-seconds) 2)))
        (stream-io-set-output-timeout! io !NoTimeout)
        (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
        (stream-io-receive! io #u8(5 6 7))
        (check (Reader-read (StreamIO-reader io) (make-u8vector 1)) => 1)
        (stream-io-fin-receive! io)
        (let* ((expire (StreamIO-expire io))
               (closing (start (cut Writer-close (StreamIO-writer io))))
               (wake (StreamWake service?: #f output?: #f)))
          (test-stream-output-wait! closing io)
          (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
            (with-stream-io-lock (StreamIO-input-mx io)
              (with-stream-io-lock (StreamIO-output-mx io)
                (using (state (StreamIO-state io) :- StreamState)
                  (def (snapshot)
                    => :list
                    [state.receive.head state.receive.size state.receive-credit state.pending-credit
                                        state.send.head state.send.size state.peer-window state.send-credit state.in-flight
                                        state.receive-fin? state.output-state state.aborted? (StreamIO-drain-deadline io)
                                        (StreamIO-input-timeout io) (StreamIO-output-timeout io) (StreamIO-error io)])
                  (let ((before (snapshot)) (receive state.receive) (send state.send)
                        (receive-bytes state.receive.bytes) (reader (StreamIO-reader io))
                        (writer (StreamIO-writer io)))
                    ;; Unit attachment to the passive wake leaf, under its owner locks.
                    (StreamIO-wake-set! io wake)
                    (check (stream-io-install-lease-locked! io (+ expire 60)) => #t)
                    (check (snapshot) => before)
                    (check-eq? (StreamIO-state io) state)
                    (check-eq? state.receive receive)
                    (check-eq? state.send send)
                    (check-eq? state.receive.bytes receive-bytes)
                    (check-eq? state.send.bytes bytes)
                    (check-eq? (StreamIO-reader io) reader)
                    (check-eq? (StreamIO-writer io) writer)))))
            (with-stream-io-lock (StreamWake-mx wake)
              (check (StreamWake-service? wake) => #t)
              (check (StreamWake-output? wake) => #t))
            (check-eq? (StreamIO-wake io) wake)
            (check-eq? (StreamIO-drain-deadline io) absent-obj)
            (thread-sleep! (seconds->time (+ expire .01)))
            (check (thread-join! closing 0 'waiting) => 'waiting)
            (let-values (((aborted? deadline) (stream-io-status io)))
              (check aborted? => #f)
              (check (= (time->seconds deadline) (+ expire 60)) => #t))
            (check (subu8vector bytes lo hi) => #u8(1 2))
            (stream-io-data-release! io))
          (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
            (check (subu8vector bytes lo hi) => #u8(3 4))
            (stream-io-data-release! io))
          (check (stream-io-fin-commit! io) => #t)
          (check (stream-io-install-lease! io (+ expire 61)) => #t)
          (check (StreamState-output-state (StreamIO-state io)) => 'fin-in-flight)
          (stream-io-fin-release! io)
          (check (void? (thread-join! closing 1 'stuck)) => #t)
          ;; Finished output still has unread authorized input; only consuming the
          ;; final buffered FIN makes the stream terminal for further installation.
          (check (stream-io-install-lease! io (+ expire 62)) => #t)
          (let (output (make-u8vector 2))
            (check (Reader-read (StreamIO-reader io) output 0 2 2) => 2)
            (check output => #u8(6 7)))
          (check (stream-io-retirable? io) => #t)
          (check (stream-io-install-lease! io (+ expire 63)) => #f)
          (check (StreamIO-expire io) => (+ expire 62))
          (let-values (((aborted? deadline) (stream-io-status io)))
            (check aborted? => #f)
            (check deadline => #f)))))

    (test-case "one 9 MiB Writer call and minimum Reader retain their handles across renewal"
      (with-test-streams (a b) start
        (stream-io-abort! a)
        (stream-io-abort! b)
        (let* ((limits (StreamLimits)) (size (* 9 1024 1024))
               (input (make-u8vector size 37)) (output (make-u8vector size))
               (expire (+ (current-time-seconds) 2)))
          (set! a (make-stream-io limits 262144 expire))
          (set! b (make-stream-io limits 262144 expire))
          (let ((writer (StreamIO-writer a)) (reader (StreamIO-reader b)))
            (for-each (lambda (i) (u8vector-set! input (* i 1024 1024) i)) (iota 9))
            (let ((writing (start (cut Writer-write writer input)))
                  (reading (start (cut Reader-read reader output 0 size size))))
              (test-stream-output-wait! writing a)
              (test-stream-wait! reading (StreamIO-input-cv b))
              (check (stream-io-install-lease! a (+ expire 60)) => #t)
              (check (stream-io-install-lease! b (+ expire 60)) => #t)
              (thread-sleep! (seconds->time (+ expire .01)))
              (check (thread-join! writing 0 'waiting) => 'waiting)
              (check (thread-join! reading 0 'waiting) => 'waiting)
              ;; Only transport/credit progress loops. Neither application call is
              ;; split into prefixes or retried outside its actual IO implementation.
              (let (deadline (+ (##current-time-point) 10))
                (let loop ()
                  (when (>= (##current-time-point) deadline)
                    (error "Renewed whole-buffer transfer did not finish"))
                  (test-stream-pump! a b 16384)
                  (let (result (thread-join! reading .001 'waiting))
                    (if (eq? result 'waiting)
                      (loop)
                      (check result => size)))))
              (check (thread-join! writing 1 'stuck) => size)
              (check output => input)
              (check-eq? (StreamIO-writer a) writer)
              (check-eq? (StreamIO-reader b) reader))))))

    (test-case "own absolute authorization expiry wakes idle IO and gates commits"
      (with-test-streams (io) start
        ;; Replace the fixture's otherwise long-lived stream before starting work.
        (stream-io-abort! io)
        (set! io (test-stream-io (+ (current-time-seconds) 1)))
        (stream-io-set-input-timeout! io !NoTimeout)
        (stream-io-set-output-timeout! io !NoTimeout)
        (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
        (let ((reading (start (lambda () (Reader-read (StreamIO-reader io) (make-u8vector 1)))))
              (closing (start (lambda () (Writer-close (StreamIO-writer io))))))
          (check (thread-join!/error reading 2) ? Closed?)
          (check (thread-join!/error closing 2) ? Closed?)
          (check-exception (stream-io-data-commit! io 1) Closed?)
          (check-exception (stream-io-credit-commit! io) Closed?)
          (check-exception (stream-io-fin-commit! io) Closed?)
          (check (stream-io-retirable? io) => #t)))
      (with-test-streams (io) start
        (stream-io-abort! io)
        (set! io (test-stream-io (+ (current-time-seconds) 1)))
        (Writer-write (StreamIO-writer io) #u8(1))
        (thread-sleep! (seconds->time (StreamIO-expire io)))
        (stream-io-expire! io)
        (check (stream-io-retirable? io) => #t)
        (check-exception (stream-io-receive! io #u8(2)) Closed?)))

    (test-case "expiry preserves committed DATA until release and rejects queued DATA"
      (with-test-streams (io) start
        (stream-io-abort! io)
        (set! io (test-stream-io (+ (current-time-seconds) 1)))
        (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
        (let-values (((bytes lo hi) (stream-io-data-commit! io 2)))
          (thread-sleep! (seconds->time (StreamIO-expire io)))
          ;; The commit gate itself must expire an otherwise idle stream.
          (check-exception (stream-io-data-commit! io 2) Closed?)
          (check (subu8vector bytes lo hi) => #u8(1 2))
          (check (stream-io-retirable? io) => #f)
          (stream-io-data-release! io)
          (check (stream-io-retirable? io) => #t))
        (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())))

    (test-case "release itself enforces expiry and frees retained transport storage"
      (with-test-streams (io) start
        (stream-io-abort! io)
        (set! io (test-stream-io (+ (current-time-seconds) 1)))
        (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
        (stream-io-data-commit! io 2)
        (thread-sleep! (seconds->time (StreamIO-expire io)))
        (stream-io-data-release! io)
        (check (stream-io-retirable? io) => #t)
        (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())
        (check-exception (Reader-read (StreamIO-reader io) (make-u8vector 1)) Closed?)))

    (test-case "fatal peer protocol errors propagate after releasing locks"
      (for-each
        (lambda (operation)
          (with-test-streams (io) start
            (let (result (thread-join!/error (start (lambda () (operation io))) 1))
              (check result ? IOError?)
              (check (stream-io-retirable? io) => #t)
              (check-exception (Writer-write (StreamIO-writer io) #u8(1)) (cut eq? <> result)))))
        [(lambda (io) (stream-io-receive! io #u8(1 2 3 4 5)))
         (lambda (io) (stream-io-credit-receive! io 1))
         (lambda (io) (stream-io-fin-receive! io) (stream-io-fin-receive! io))
         (lambda (io) (stream-io-fin-receive! io) (stream-io-receive! io #u8(1)))]))

    (test-case "abort versus DATA commit retains cache ownership until release"
      (CacheOps-flush! (make-CacheOps __buffer-cache))
      (unwind-protect
        (for-each
          (lambda (iteration)
            (CacheOps-flush! (make-CacheOps __buffer-cache))
            (with-test-streams (io) start
              (Writer-write (StreamIO-writer io) #u8(1 2 3 4))
              (let* ((committing (start (lambda ()
                                          (call-with-values (cut stream-io-data-commit! io 2) list))))
                     (aborting (start (lambda () (stream-io-abort! io))))
                     (slice (thread-join!/error committing 1)))
                (thread-join!/error aborting 1)
                (if (Closed? slice)
                  (check (CacheOps-size (make-CacheOps __buffer-cache)) => 1)
                  (begin
                    (check (subu8vector (car slice) (cadr slice) (caddr slice)) => #u8(1 2))
                    (check (CacheOps-size (make-CacheOps __buffer-cache)) => 0)
                    (check (stream-io-retirable? io) => #f)))
                (stream-io-data-release! io)
                (stream-io-data-release! io)
                (stream-io-abort! io)
                (check (CacheOps-size (make-CacheOps __buffer-cache)) => 1)
                (check (stream-io-retirable? io) => #t))))
          (iota 32))
        (CacheOps-flush! (make-CacheOps __buffer-cache))))))
