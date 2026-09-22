;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Automatic parent progress, idle expiry and owned-lock boundaries
(import :std/test
        :std/error
        :std/io/interface
        :std/struct/queue
        :std/sync/threads
        :std/time/time
        :std/time/timeout
        ./config
        ./wire
        ./stream
        ./connection
        ./thread)
(export connection-parent-test)

(def (parent-test-io (expire : :integer := (+ (current-time-seconds) 60)))
  => StreamIO
  (make-stream-io (StreamLimits recv-window: 8 outbound-buffer: 8) 8 expire
                  (NetworkConfig stream-input-timeout: (IOTimeout 3)
                                 stream-output-timeout: (IOTimeout 3))))

;; Exact waits, with a bounded 1 ms join so the observed thread can actually run.
;; The optional predicate distinguishes a completed timer pass from its old wait.
(def (parent-test-wait! (worker   : :thread)
                        (wait-for : :t)
                        (ready?   : :procedure := (lambda () #t)))
  => :void
  (let (deadline (+ (##current-time-point) 3))
    (let loop ()
      (let (state (thread-state worker))
        (unless (and (thread-state-waiting? state)
                     (eq? (thread-state-waiting-for state) wait-for)
                     (ready?))
          (when (>= (##current-time-point) deadline)
            (error "Parent worker did not reach expected wait" worker wait-for state))
          (network-thread-join! worker .001 'waiting)
          (loop))))))

;; Plain joinable workers use spawn-thread's abortive thread-main handler.
;; Close and join before releasing any borrow left by a completed test consumer.
(defrule (with-parent (p limits) ((io init) ...) start body ...)
  (let ((p (make-connection-parent limits 4 #xffffffff)) (io init) ... (workers []))
    (def (start (proc : :procedure))
      => :thread
      (let (worker (spawn-thread proc))
        (set! workers (cons worker workers))
        worker))
    (unwind-protect
      (begin body ...)
      (begin
        (connection-parent-close! p)
        (stream-io-abort! io) ...
        (for-each (lambda (worker)
                    (check (with-catch identity (cut thread-join!/error worker 4 'stuck))
                           ? (lambda (result) (not (eq? result 'stuck)))))
                  workers)
        (check (with-catch identity (cut connection-parent-join! p 4 'stuck))
               ? (lambda (result) (not (eq? result 'stuck))))
        (let (work (ConnectionScheduler-in-flight (ConnectionParent-scheduler p)))
          (when work (connection-parent-release! p work)))))))

(def (parent-test-next (p : ConnectionParent))
  => ConnectionWork
  ;; Finite test-driver wait without adding a production next-work timeout policy.
  (let (worker (spawn-thread (cut connection-parent-next! p)))
    (try
     (thread-join!/error worker 3)
     (catch (failure)
       (connection-parent-close! p)
       (with-catch identity (cut thread-join!/error worker 3))
       (raise failure)))))

(def (parent-test-aborted? (io : StreamIO))
  => :boolean
  ;; Observation only: do not call status/expire and accidentally drive the timer.
  (with-stream-io-lock (StreamIO-input-mx io)
    (with-stream-io-lock (StreamIO-output-mx io)
      (StreamState-aborted? (StreamIO-state io)))))

(def (parent-test-idle! (p      : ConnectionParent)
                        (ready? : :procedure := (lambda () #t)))
  => :void
  (parent-test-wait! (ConnectionParent-worker p)
                     (StreamWake-service-cv (ConnectionParent-wake p)) ready?))

(def connection-parent-test
  (test-suite "Private automatic connection parent"
    (test-case "minimum reads and writer closes progress using only next/release consumers"
      (with-parent (a (ConnectionLimits)) ((left (parent-test-io))) start-a
        (with-parent (b (ConnectionLimits)) ((right (parent-test-io))) start-b
          (connection-parent-register! a 1 left)
          (connection-parent-register! b 1 right)
          (let ((input #u8(0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23))
                (out-left (make-u8vector 24)) (out-right (make-u8vector 24)))
            (def (send io)
              (check (Writer-write (StreamIO-writer io) input) => 24)
              (Writer-close (StreamIO-writer io))
              'closed)
            (def (consume parent peer)
              (let loop ((data 0) (credit 0) (fins 0) (updates 0))
                (if (and (= data 24) (= credit 24) (= fins 1))
                  [data credit fins updates]
                  (using (work (connection-parent-next! parent) :- ConnectionWork)
                    ;; In-memory peer feeding is test-only. No managed progress
                    ;; hooks, direct credit commitment or FIN/reset pump calls.
                    (cond
                     ((fx= work.type frame-data)
                      (stream-io-receive! peer (subu8vector work.bytes work.start work.end))
                      (set! data (+ data work.size)))
                     ((fx= work.type frame-window-update)
                      (let (grant (vector-ref (decode-frame-payload work.type work.bytes) 0))
                        (stream-io-credit-receive! peer grant)
                        (set! credit (+ credit grant))
                        (set! updates (+ updates 1))))
                     ((fx= work.type frame-fin)
                      (stream-io-fin-receive! peer)
                      (set! fins (+ fins 1)))
                     (else (error "Unexpected frame" work.type)))
                    (connection-parent-release! parent work)
                    (loop data credit fins updates)))))
            (let* ((consumer-a (start-a (cut consume a right)))
                   (consumer-b (start-b (cut consume b left)))
                   (reader-a (start-a (cut Reader-read (StreamIO-reader left) out-left 0 24 24)))
                   (reader-b (start-b (cut Reader-read (StreamIO-reader right) out-right 0 24 24)))
                   (writer-a (start-a (cut send left)))
                   (writer-b (start-b (cut send right))))
              (check (thread-join!/error reader-a 3) => 24)
              (check (thread-join!/error reader-b 3) => 24)
              (check out-left => input)
              (check out-right => input)
              (check (thread-join!/error writer-a 3) => 'closed)
              (check (thread-join!/error writer-b 3) => 'closed)
              (for-each (lambda (consumer)
                          (let (counts (thread-join!/error consumer 3))
                            (check (take counts 3) => [24 24 1])
                            (check (<= 3 (list-ref counts 3) 6) => #t)))
                        [consumer-a consumer-b])
              (check (parent-test-aborted? left) => #f)
              (check (parent-test-aborted? right) => #f)
              (connection-parent-remove! a 1)
              (connection-parent-remove! b 1)
              ;; Fully finished IO has no active timer, including after retirement.
              (with-stream-io-lock (StreamIO-input-mx left)
                (with-stream-io-lock (StreamIO-output-mx left)
                  (StreamIO-expire-set! left 0)))
              (let-values (((aborted? deadline) (stream-io-status left)))
                (check aborted? => #f)
                (check deadline => #f)))))))

    (test-case "accepted DATA wakes an idle output consumer"
      (with-parent (p (ConnectionLimits)) ((io (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (parent-test-idle! p)
        (let (consumer (start (cut connection-parent-next! p)))
          (parent-test-wait! consumer (StreamWake-output-cv (ConnectionParent-wake p)))
          (check (Writer-write (StreamIO-writer io) #u8(1 2 3)) => 3)
          (let (work (thread-join!/error consumer 2))
            (check (ConnectionWork-type work) => frame-data)
            (check (ConnectionWork-bytes work) ? (lambda (bytes) (= (u8vector-length bytes) 8)))
            (connection-parent-release! p work)))))

    (test-case "wake bits coalesce independently and preserve notification before sleep"
      (let (wake (StreamWake))
        (stream-wake-take! wake #t #f #f)
        (stream-wake-take! wake #f #f #f)
        (for-each (lambda (_) (stream-wake-signal! wake)) (iota 1000))
        (stream-wake-take! wake #t #f)
        (check (StreamWake-service? wake) => #f)
        (check (StreamWake-output? wake) => #t)
        (stream-wake-take! wake #f #f)
        (check (StreamWake-output? wake) => #f)
        (let ((worker #f) (mx (StreamWake-mx wake)))
          (mutex-lock! mx)
          (unwind-protect
            (begin
              (set! worker (spawn-thread (cut stream-wake-take! wake #t #f)))
              (parent-test-wait! worker mx)
              (stream-wake-signal-locked! wake #t))
            (mutex-unlock! mx))
          (check (thread-join!/error worker 2) => (void))
          (check (StreamWake-service? wake) => #f)
          (check (StreamWake-output? wake) => #t))
        (stream-wake-take! wake #f #f)
        (stream-wake-signal! wake #f)
        (check (StreamWake-service? wake) => #f)
        (check (StreamWake-output? wake) => #t)))

    (test-case "a partial read during a service scan remains pending for its next pass"
      (with-parent (p (ConnectionLimits)) ((first (parent-test-io)) (last (parent-test-io))) start
        (connection-parent-register! p 1 first)
        (connection-parent-register! p 3 last)
        (parent-test-idle! p)
        (stream-io-receive! first #u8(42))
        (with-stream-io-lock (StreamIO-input-mx last)
          (stream-wake-signal! (ConnectionParent-wake p))
          (parent-test-wait! (ConnectionParent-worker p) (StreamIO-input-mx last))
          ;; First's status/credit scan is already behind the service cursor.
          (check (Reader-read (StreamIO-reader first) (make-u8vector 1)) => 1)
          (check (StreamWake-service? (ConnectionParent-wake p)) => #t))
        (let (work (parent-test-next p))
          (check (ConnectionWork-id work) => 1)
          (check (ConnectionWork-type work) => frame-window-update)
          (check (decode-frame-payload frame-window-update (ConnectionWork-bytes work)) => '#(1))
          (connection-parent-release! p work))))

    (test-case "idle stream expires with no application IO or inbound traffic"
      (with-parent (p (ConnectionLimits))
          ((io (parent-test-io (+ (current-time-seconds) 1))) (other (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (connection-parent-register! p 3 other)
        (parent-test-idle! p (cut parent-test-aborted? io))
        (check (parent-test-aborted? other) => #f)
        (let-values (((aborted? deadline) (stream-io-status io)))
          (check aborted? => #t)
          (check deadline => #f))
        (let (work (parent-test-next p))
          (check (ConnectionWork-type work) => frame-reset)
          (check (ConnectionWork-id work) => 1)
          (connection-parent-release! p work))
        (connection-parent-remove! p 1)
        (let (consumer (start (cut connection-parent-next! p)))
          (parent-test-wait! consumer (StreamWake-output-cv (ConnectionParent-wake p)))
          (Writer-write (StreamIO-writer other) #u8(7))
          (let (work (thread-join!/error consumer 2))
            (check (ConnectionWork-id work) => 3)
            (check (ConnectionWork-type work) => frame-data)
            (connection-parent-release! p work)))))

    (test-case "graceful final-read credit queued behind a sibling borrow expires without RESET"
      (with-parent (p (ConnectionLimits))
          ((io (parent-test-io (+ (current-time-seconds) 2))) (other (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (connection-parent-register! p 3 other)
        (stream-io-receive! io #u8(42))
        (stream-io-fin-receive! io)
        (let ((closer (start (lambda () (Writer-close (StreamIO-writer io)) 'closed)))
              (out (make-u8vector 1)))
          (let (fin (parent-test-next p))
            (check (ConnectionWork-id fin) => 1)
            (check (ConnectionWork-type fin) => frame-fin)
            (connection-parent-release! p fin))
          (check (thread-join!/error closer 2) => 'closed)
          (Writer-write (StreamIO-writer other) #u8(7))
          (let ((borrow (parent-test-next p)) (credit #f))
            (check (ConnectionWork-id borrow) => 3)
            (check (ConnectionWork-type borrow) => frame-data)
            (check (Reader-read (StreamIO-reader io) out) => 1)
            (check out => #u8(42))
            (check (Reader-read (StreamIO-reader io) out) => 0)
            (parent-test-idle! p
			       (lambda ()
				 (with-stream-io-lock (ConnectionParent-mx p)
				   (= (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) 1))))
            (with-stream-io-lock (ConnectionParent-mx p)
              (set! credit (queue-peek (ConnectionScheduler-controls (ConnectionParent-scheduler p))))
              (check (ConnectionWork-state credit) => 'ready)
              (check (ConnectionWork-id credit) => 1)
              (check (ConnectionWork-type credit) => frame-window-update)
              (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 17))
            (check (stream-io-retirable? io) => #t)
            (check (< (current-time-seconds) (StreamIO-expire io)) => #t)
            (thread-sleep! (seconds->time (StreamIO-expire io)))
            (let-values (((aborted? deadline) (stream-io-status io)))
              (check aborted? => #f)
              (check deadline => #f))
            (connection-parent-release! p borrow)
            ;; A stale-only queue must not trap next!: observe its actual wait,
            ;; then provide fresh sibling DATA to complete the bounded consumer.
            (let (consumer (start (cut connection-parent-next! p)))
              (parent-test-wait! consumer (StreamWake-output-cv (ConnectionParent-wake p)))
              (with-stream-io-lock (ConnectionParent-mx p)
                (check (ConnectionWork-state credit) => 'released)
                (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
                (check (ConnectionScheduler-control-bytes (ConnectionParent-scheduler p)) => 0))
              (with-stream-io-lock (StreamIO-input-mx io)
                (check (StreamState-receive-credit (StreamIO-state io)) => 7)
                (check (StreamState-pending-credit (StreamIO-state io)) => 1)
                (check (stream-eof? (StreamIO-state io)) => #t))
              (check (parent-test-aborted? io) => #f)
              (check (parent-test-aborted? other) => #f)
              (connection-parent-remove! p 1)
              (Writer-write (StreamIO-writer other) #u8(8))
              (let (work (thread-join!/error consumer 2))
                (check (ConnectionWork-id work) => 3)
                (check (ConnectionWork-type work) => frame-data)
                (connection-parent-release! p work)))))))

    (test-case "an earlier unfinished drain deadline rearms the independent timer"
      (with-parent (p (ConnectionLimits)) ((io (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (parent-test-idle! p)
        ;; Controlled metadata isolates the parent timer from Writer.close's own
        ;; wait timer. Keep unsent DATA so FIN cannot complete this synthetic drain.
        (with-stream-io-lock (StreamIO-input-mx io)
          (with-stream-io-lock (StreamIO-output-mx io)
            (stream-produce! (StreamIO-state io) #u8(1) 0 1)
            (stream-end-output! (StreamIO-state io))
            (StreamIO-drain-deadline-set! io (seconds->time (+ (##current-time-point) .1)))
            (stream-wake-signal! (StreamIO-wake io))))
        (parent-test-idle! p (cut parent-test-aborted? io))
        (check (StreamIO-error io) ? Timeout?)
        (let (work (parent-test-next p))
          (check (ConnectionWork-type work) => frame-reset)
          (connection-parent-release! p work))))

    (test-case "timer keeps running during DATA and FIN borrows without spinning"
      (for-each
        (lambda (fin?)
          (with-parent (p (ConnectionLimits))
              ((io (parent-test-io (+ (current-time-seconds) 1)))
               (idle (parent-test-io (+ (current-time-seconds) 1))) (other (parent-test-io))) start
            (connection-parent-register! p 1 io)
            (connection-parent-register! p 3 idle)
            (connection-parent-register! p 5 other)
            (let (closer (and fin? (start (lambda () (Writer-close (StreamIO-writer io)) 'closed))))
              (unless fin? (Writer-write (StreamIO-writer io) #u8(1 2 3 4 5 6 7 8)))
              (let* ((work (parent-test-next p))
                     (bytes (ConnectionWork-bytes work)))
                (check (ConnectionWork-type work) => (if fin? frame-fin frame-data))
                (Writer-write (StreamIO-writer other) #u8(9))
                ;; No selection, release or expiry calls while the timer works.
                (parent-test-idle! p (lambda () (and (parent-test-aborted? io) (parent-test-aborted? idle))))
                (check (ConnectionWork-state work) => 'in-flight)
                (check-eq? (ConnectionWork-bytes work) bytes)
                (unless fin?
                  (check-eq? (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) bytes)
                  (check (StreamState-in-flight (StreamIO-state io)) => 4))
                (when closer (check (with-catch identity (cut thread-join!/error closer 2)) ? Closed?))
                (check-exception (connection-parent-remove! p 1) IOError?)
                (let (waiting (start (cut connection-parent-next! p)))
                  (parent-test-wait! waiting (StreamWake-output-cv (ConnectionParent-wake p)))
                  (parent-test-idle! p)
                  (connection-parent-release! p work)
                  ;; Two RESETs and the healthy sibling's DATA, with no manual pump.
                  (let loop ((next (thread-join!/error waiting 2)) (ids []) (count 0))
                    (let ((id (ConnectionWork-id next)) (type (ConnectionWork-type next)))
                      (check type => (if (= id 5) frame-data frame-reset))
                      (connection-parent-release! p next)
                      (if (= count 2)
                        (check (list-sort < (cons id ids)) => [1 3 5])
                        (loop (parent-test-next p) (cons id ids) (+ count 1))))))
                (check (parent-test-aborted? other) => #f)
                (connection-parent-remove! p 1)
                (connection-parent-remove! p 3)))))
        '(#f #t)))

    (test-case "Reader.close schedules RESET and remote RESET cannot echo"
      (with-parent (p (ConnectionLimits)) ((local (parent-test-io)) (remote (parent-test-io))) start
        (connection-parent-register! p 1 local)
        (connection-parent-register! p 3 remote)
        (Reader-close (StreamIO-reader local))
        (let (work (parent-test-next p))
          (check (ConnectionWork-type work) => frame-reset)
          (check (ConnectionWork-id work) => 1)
          (connection-parent-release! p work))
        (connection-parent-reset! p 3 reason-cancelled #f)
        (parent-test-idle! p (cut parent-test-aborted? remote))
        (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
        (connection-parent-remove! p 1)
        (connection-parent-remove! p 3)
        (let (consumer (start (cut connection-parent-next! p)))
          (parent-test-wait! consumer (StreamWake-output-cv (ConnectionParent-wake p)))
          (connection-parent-close! p)
          (check (with-catch identity (cut thread-join!/error consumer 2)) ? Closed?))))

    (test-case "registration is one-time and rejection cannot attach or mutate foreign IO"
      (with-parent (p (ConnectionLimits total-streams: 1 pending-streams: 1))
          ((owned (parent-test-io)) (fresh (parent-test-io))) start
        (with-parent (q (ConnectionLimits)) () start-q
          (connection-parent-register! p 1 owned)
          (check-exception (connection-parent-register! q 1 owned) IOError?)
          (check-eq? (StreamIO-wake owned) (ConnectionParent-wake p))
          (check-exception (connection-parent-register! p 3 fresh) IOError?)
          (check (StreamIO-wake fresh) => #f)
          (check (parent-test-aborted? fresh) => #f)
          (connection-parent-close! p)
          (check-exception (connection-parent-register! p 3 fresh) Closed?)
          (check (StreamIO-wake fresh) => #f)
          (connection-parent-register! q 3 fresh)
          (check-eq? (StreamIO-wake fresh) (ConnectionParent-wake q)))))

    (test-case "removal ahead of service cannot discard an automatic RESET"
      (with-parent (p (ConnectionLimits))
          ((io (parent-test-io)) (remote (parent-test-io)) (shutdown (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (connection-parent-register! p 3 remote)
        (connection-parent-register! p 5 shutdown)
        (parent-test-idle! p)
        (let ((worker #f) (mx (ConnectionParent-mx p)))
          (with-stream-io-lock mx
            ;; Queue removal first, then trigger abort while service is excluded.
            ;; Mutex handoff gives removal its turn before the pending service pass.
            (set! worker (start (cut connection-parent-remove! p 1)))
            (parent-test-wait! worker mx)
            (Reader-close (StreamIO-reader io))
            (parent-test-wait! (ConnectionParent-worker p) mx)
            (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0))
          (check (with-catch identity (cut thread-join!/error worker 2)) ? IOError?)
          (check (Queue-length (ConnectionScheduler-streams (ConnectionParent-scheduler p))) => 3))
        (let (reset (parent-test-next p))
          (check (ConnectionWork-type reset) => frame-reset)
          (check (ConnectionWork-id reset) => 1)
          (check-exception (connection-parent-remove! p 1) IOError?)
          (connection-parent-release! p reset))
        (connection-parent-remove! p 1)
        ;; Peer suppression has no outstanding wire obligation, and shutdown never
        ;; requires a RESET on the already closing connection.
        (connection-parent-reset! p 3 reason-closed #f)
        (connection-parent-remove! p 3)
        (connection-parent-close! p)
        (connection-parent-remove! p 5)
        (check (Queue-length (ConnectionScheduler-streams (ConnectionParent-scheduler p))) => 0)))

    (test-case "attachment publication excludes expiry service until the wake is installed"
      (with-parent (p (ConnectionLimits)) ((io (parent-test-io (+ (current-time-seconds) 1)))) start
        (parent-test-idle! p)
        (Writer-write (StreamIO-writer io) #u8(1))
        (let ((worker #f) (wake (ConnectionParent-wake p)))
          (with-stream-io-lock (StreamWake-mx wake)
            (set! worker (start (cut connection-parent-register! p 1 io)))
            (parent-test-wait! worker (StreamWake-mx wake))
            (check (Queue-length (ConnectionScheduler-streams (ConnectionParent-scheduler p))) => 0)
            (check (StreamIO-wake io) => #f)
            (thread-sleep! (seconds->time (StreamIO-expire io))))
          (check (thread-join!/error worker 2) => (void))
          (let (work (parent-test-next p))
            (check-eq? (StreamIO-wake io) wake)
            (check (ConnectionWork-type work) => frame-reset)
            (check (StreamState-in-flight (StreamIO-state io)) => 0)
            (connection-parent-release! p work)))))

    (test-case "shutdown wakes next/read/write/close but retains the actual DATA borrow"
      (with-parent (p (ConnectionLimits)) ((io (parent-test-io)) (full (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (connection-parent-register! p 3 full)
        (Writer-write (StreamIO-writer io) #u8(1 2 3 4 5 6 7 8))
        (let* ((work (parent-test-next p)) (bytes (ConnectionWork-bytes work)))
          (Writer-write (StreamIO-writer full) #u8(1 2 3 4 5 6 7 8))
          (let ((reading (start (cut Reader-read (StreamIO-reader io) (make-u8vector 1))))
                (writing (start (cut Writer-write (StreamIO-writer full) #u8(9))))
                (closing (start (cut Writer-close (StreamIO-writer io))))
                (waiting (start (cut connection-parent-next! p))))
            (parent-test-wait! reading (StreamIO-input-cv io))
            (parent-test-wait! writing (StreamIO-output-cv full))
            (parent-test-wait! closing (StreamIO-output-cv io))
            (parent-test-wait! waiting (StreamWake-output-cv (ConnectionParent-wake p)))
            (connection-parent-close! p)
            (for-each (lambda (worker)
                        (check (with-catch identity (cut thread-join!/error worker 2)) ? Closed?))
                      [reading writing closing waiting])
            (check (connection-parent-join! p 2) => (void))
            (check (ConnectionWork-state work) => 'in-flight)
            (check-eq? (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) bytes)
            (check (subu8vector bytes 0 4) => #u8(1 2 3 4))
            (connection-parent-release! p work)
            (check (ConnectionWork-state work) => 'released)
            (check (StreamBuffer-bytes (StreamState-send (StreamIO-state io))) => #u8())
            (connection-parent-remove! p 1)))))

    (test-case "remote RESET cancels an admitted local RESET before output can select it"
      (with-parent (p (ConnectionLimits)) ((io (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (Reader-close (StreamIO-reader io))
        (parent-test-idle! p
                           (lambda ()
                             (with-stream-io-lock (ConnectionParent-mx p)
                               (= (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) 1))))
        (connection-parent-reset! p 1 reason-closed #f)
        (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0)
        (connection-parent-remove! p 1)
        (let (consumer (start (cut connection-parent-next! p)))
          (parent-test-wait! consumer (StreamWake-output-cv (ConnectionParent-wake p)))
          (connection-parent-close! p)
          (check (with-catch identity (cut thread-join!/error consumer 2)) ? Closed?))))

    (test-case "mandatory service output overflow closes all streams and preserves worker failure"
      (with-parent (p (ConnectionLimits pending-control-bytes: 16))
          ((io (parent-test-io)) (other (parent-test-io))) start
        (connection-parent-register! p 1 io)
        (connection-parent-register! p 3 other)
        (stream-io-receive! io #u8(1))
        (Reader-read (StreamIO-reader io) (make-u8vector 1))
        (let (failure (with-catch identity (cut connection-parent-join! p 2)))
          (check failure ? Closed?)
          (check-eq? (with-catch identity (cut connection-parent-next! p)) failure)
          (check (parent-test-aborted? io) => #t)
          (check (parent-test-aborted? other) => #t)
          (check (ConnectionScheduler-control-frames (ConnectionParent-scheduler p)) => 0))))))
