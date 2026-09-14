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
        (check (thread-dead? thread) => #t)))))
