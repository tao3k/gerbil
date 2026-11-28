;;; -*- Gerbil -*-
;;; © vyzo
;;; tests for std/actor/interaction

(import :std/test
        :std/error
        :std/interface
        ./api
        ./host
        ./state
        ./message)
(export interaction-test)

(def proto:/test "/test/v0")
(def proto:/alt "/alt/v0")

(defstruct LookupTestHost ((handle : Handle))
  final: #t)

(implement ActorHost LookupTestHost
  (name (lambda (self) "test"))
  (register! (lambda (self name) (error "not implemented")))
  (lookup
   (lambda (self name)
     (and (equal? name (Handle-actor self.handle)) self.handle)))
  (send! (lambda (self e) (error "not implemented")))
  (send-reply! (lambda (self msg in-reply continue) (error "not implemented")))
  (broadcast! (lambda (self e) (error "not implemented"))))

(def interaction-test
  (test-suite "test :std/actor/interaction"

    (test-case "nullable actor host lookup"
      (def handle (Handle "test" "present"))
      (def host (ActorHost (LookupTestHost handle)))
      (check (ActorHost-lookup host "missing") => #f)
      (check (ActorHost-lookup host "present") => handle))

    (test-case "nullable local host adapts raw implementations"
      (thread-join!
       (spawn
        (lambda ()
          (parameterize ((current-actor-host #f))
            (check (actor-local-host?) => #f))
          (parameterize ((current-actor-host (LookupTestHost (Handle "test" "present"))))
            (def host (actor-local-host?))
            (check (ActorHost? host) => #t)
            (check (ActorHost-name host) => "test")
            (actor-local-host)
            (check (ActorHost? (actor-local-host?)) => #t))))))

    (test-case "test -> and <- send/receive"
      (let (thread
            (spawn/name 'test-actor
              (lambda ()
                (<- protocol: proto:/test
                    ((equal? "ping") (--> "pong"))))))
        (def dest (LocalActor thread))
        (def reply
          (->> dest "ping" proto:/test))
        (check reply => "pong")
        ;; actor exits after first message; second send should timeout
        (check-exception
         (->> dest "ping" proto:/test timeout: 1)
         Timeout?)
        ;; Fractional timeouts should not be rounded to Unix-second boundaries.
        (let (started (##current-time-point))
          (check-exception
           (->> dest "ping" proto:/test timeout: 0.2)
           Timeout?)
          (check-exception
           (->> dest "ping" proto:/test timeout: 0.2)
           Timeout?)
          (check-exception
           (->> dest "ping" proto:/test timeout: 0.2)
           Timeout?)
          (let (elapsed (- (##current-time-point) started))
            (check (>= elapsed 0.5) => #t)
            (check (< elapsed 1.5) => #t)))))

    (test-case "test direct numeric receive timeouts"
      (check-exception
       (<- protocol: proto:/test timeout: 0.01
           (_ (void)))
       Timeout?)
      (check-exception
       (<< timeout: 0.01
           (_ (void)))
       Timeout?))

    (test-case "test envelope options without expiration"
      (def peer (LocalActor (current-thread)))
      (def envelope
        (Envelope source: peer
                  dest: peer
                  message: "message"
                  protocol: proto:/test
                  options: (Options continue: (ReplyOption seqno: 1))))
      (check (envelope-expired? envelope) => #f))

    (test-case "test expired replies are removed"
      (def receiver (current-thread))
      (def peer (LocalActor receiver))
      (def seqno 42)
      (check-exception
       (<- protocol: proto:/test
           continue: seqno
           timeout: (seconds->time 0)
           (_ (void)))
       Timeout?)
      ;; Simulate a reply arriving after its receive timed out.
      (thread-send
       receiver
       (Envelope source: peer
                 dest: peer
                 message: "late reply"
                 protocol: proto:/test
                 continue: seqno
                 options: (Options expire: 0)))
      (thread-send
       receiver
       (Envelope source: peer
                 dest: peer
                 message: "current reply"
                 protocol: proto:/test
                 continue: seqno))
      (check
       (<- protocol: proto:/test
           continue: seqno
           ((equal? "current reply") @message)
           (else 'empty))
       => "current reply")
      (check (mailbox-next) => mailbox-empty))

    (test-case "test mailbox extraction continues traversal"
      (def receiver (current-thread))
      (thread-send receiver 'first)
      (thread-send receiver 'discard)
      (thread-send receiver 'next)
      (check (thread-mailbox-next) => 'first)
      (check (thread-mailbox-next) => 'discard)
      (check (mailbox-extract-and-next) => 'next)
      (check (mailbox-next) => mailbox-empty)
      (thread-mailbox-rewind)
      (check (thread-receive) => 'first)
      (check (thread-receive) => 'next)
      (check (mailbox-next) => mailbox-empty)
      (thread-mailbox-rewind)
      (thread-send receiver 'first)
      (thread-send receiver 'discard)
      (check (thread-mailbox-next) => 'first)
      (check (thread-mailbox-next) => 'discard)
      (check (mailbox-extract-and-next) => mailbox-empty)
      (thread-send receiver 'next)
      (check (thread-mailbox-next) => 'next)
      (thread-mailbox-rewind)
      (check (thread-receive) => 'first)
      (check (thread-receive) => 'next)
      (check (mailbox-next) => mailbox-empty)
      (thread-mailbox-rewind))

    (test-case "test actor loop with exit"
      (let (thread
            (spawn/name 'test-loop-actor
              (lambda ()
                (let loop ()
                  (<- protocol: proto:/test
                      ((equal? "exit") (void))
                      ((equal? "ping") (--> "pong") (loop)))))))
        (def dest (LocalActor thread))
        (check (->> dest "ping" proto:/test) => "pong")
        (check (->> dest "ping" proto:/test) => "pong")
        (check (->> dest "ping" proto:/test) => "pong")
        ;; send exit and verify the thread terminates
        (-> dest "exit" proto:/test)
        (thread-join! thread 1)
        (check (thread-dead? thread) => #t)))

    (test-case "test reply continuation with --->"
      (let (thread
            (spawn/name 'test-continuation-actor
              (lambda ()
                (<- protocol: proto:/test
                    ((equal? "ping")
                     (-->> "pong" ((equal? "finish") (void))))))))
         (def dest (LocalActor thread))
         (---> dest "ping" proto:/test
             ((equal? "pong") (--> "finish")))
        (thread-join! thread 1)
        (check (thread-dead? thread) => #t)))

    (test-case "test grouped multi-protocol and non-eq string matching"
      (thread-join!
       (spawn/name 'grouped-proto-test
         (lambda ()
           (def self (current-thread))
           (def peer (LocalActor self))
           (def proto-copy (string-append "/test" "/v0"))
           (check (eq? proto-copy proto:/test) => #f)
           (check (string=? proto-copy proto:/test) => #t)
           ;; Enqueue raw noise, alt protocol, continued envelope, and non-eq proto copy
           (thread-send self 'raw-junk)
           (thread-send self (Envelope source: peer dest: peer
                                       message: ['b 20] protocol: proto:/alt))
           (thread-send self (Envelope source: peer dest: peer
                                       message: ['c 30] protocol: proto:/test continue: 77))
           (thread-send self (Envelope source: peer dest: peer
                                       message: ['a 10] protocol: proto-copy))
           ;; First <- skips 'raw-junk and matches proto:/alt ['b 20] in FIFO order
           (def r1
             (<- protocol: proto:/test
                 (['miss _] 'bad1)
                 (['a x] ['hit-a x])
                 protocol: proto:/alt
                 (['miss2 _] 'bad2)
                 (['b y] ['hit-b y])))
           (check r1 => ['hit-b 20])
           ;; Second <- skips 'raw-junk and continue=77, hits non-eq string=? on proto-copy
           (def r2
             (<- protocol: proto:/test
                 (['miss _] 'bad1)
                 (['a x] ['hit-a x])
                 protocol: proto:/alt
                 (['b y] ['hit-b y])))
           (check r2 => ['hit-a 10])
           ;; Third <- matches continue: 77 with timeout: #f (infinite wait path)
           (def r3
             (<- protocol: proto:/test
                 continue: 77
                 timeout: #f
                 (['c z] ['hit-c z])))
           (check r3 => ['hit-c 30])
           ;; Raw noise remains intact in mailbox
           (check (<< ('raw-junk 'got-junk)) => 'got-junk)
           (check (mailbox-next) => mailbox-empty)))))

    (test-case "test mailbox-take-timeout! relative vs mailbox-take-deadline! absolute"
      (thread-join!
       (spawn/name 'mailbox-timeout-semantics
         (lambda ()
           ;; Relative numeric timeout must wait ~50ms (not treat 0.05 as Unix epoch 1970!)
           (let ((t0 (##current-time-point)))
             (check (mailbox-take-timeout! 0.05) => mailbox-timeout)
             (let ((dt (- (##current-time-point) t0)))
               (check (>= dt 0.03) => #t)
               (check (< dt 1.0) => #t)))
           ;; Absolute flonum deadline in future waits ~50ms
           (let ((t0 (##current-time-point)))
             (check (mailbox-take-deadline! (+ t0 0.05)) => mailbox-timeout)
             (let ((dt (- (##current-time-point) t0)))
               (check (>= dt 0.03) => #t)
               (check (< dt 1.0) => #t)))
           ;; Already-expired absolute deadline returns immediately
           (let ((t0 (##current-time-point)))
             (check (mailbox-take-deadline! (- t0 1.0)) => mailbox-timeout)
             (check (< (- (##current-time-point) t0) 0.2) => #t))
           ;; Ready message returns immediately with active deadline
           (thread-send (current-thread) 'ready-msg)
           (check (mailbox-take-deadline! (+ (##current-time-point) 1.0)) => 'ready-msg)))))

    (test-case "test SMP all-core concurrent actor RPC storm with noise"
      (let* ((w (max 4 (##current-vm-processor-count)))
             (rpcs-per-client 250)
             (servers
              (let lp ((i 0) (acc '()))
                (if (fx< i w)
                  (lp (fx+ i 1)
                      (cons (spawn/name 'smp-rpc-srv
                              (lambda ()
                                (let loop ()
                                  (<- protocol: proto:/test
                                      (['add a b] (--> (+ a b)) (loop))
                                      (['stop] (--> 'bye))))))
                            acc))
                  (list->vector (reverse acc)))))
             (peers (vector-map (lambda (t) (LocalActor t)) servers))
             (clients
              (let lp ((c 0) (acc '()))
                (if (fx< c w)
                  (lp (fx+ c 1)
                      (cons (spawn/name 'smp-rpc-cli
                              (lambda ()
                                (let ((self (current-thread))
                                      (self-peer (LocalActor (current-thread)))
                                      (noise-sent 0))
                                  (let iter ((i 0))
                                    (when (fx< i rpcs-per-client)
                                      (when (fx= (fxmodulo i 25) 0)
                                        (thread-send self ['noise c i])
                                        (set! noise-sent (fx+ noise-sent 1))
                                        (thread-send self
                                          (Envelope source: self-peer dest: self-peer
                                                    message: 'stale protocol: proto:/test
                                                    continue: 999999
                                                    options: (Options expire: 0))))
                                      (let* ((srv (vector-ref peers (fxmodulo (fx+ c i) w)))
                                             (a (+ (* c 1000) i))
                                             (ans (->> srv ['add a i] proto:/test timeout: 10)))
                                        (unless (= ans (+ a i))
                                          (error "RPC mismatch" ans (+ a i))))
                                      (iter (fx+ i 1))))
                                  ;; Verify every raw noise message survived mailbox-receive-reply! intact
                                  (let drain ((k 0))
                                    (when (fx< k noise-sent)
                                      (<< (['noise cc _]
                                           (unless (fx= cc c)
                                             (error "wrong noise owner" cc c))))
                                      (drain (fx+ k 1))))
                                  (check (mailbox-next) => mailbox-empty)
                                  'ok)))
                            acc))
                  (reverse acc)))))
        (for-each (lambda (t) (check (thread-join! t 30) => 'ok)) clients)
        (let lp ((i 0))
          (when (fx< i w)
            (check (->> (vector-ref peers i) ['stop] proto:/test timeout: 10) => 'bye)
            (thread-join! (vector-ref servers i) 10)
            (check (thread-dead? (vector-ref servers i)) => #t)
            (lp (fx+ i 1))))))))
