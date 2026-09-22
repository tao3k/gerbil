;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Staged candidate handshakes over Unix sockets and mutual TLS
(import :std/build-config)
(cond-expand
 (config-have-sqlite
  (import :std/test
          :std/error
          :std/io
          :std/io/tempfile
          :std/net/address
          :std/net/ssl
          :std/time/time
          :std/time/timeout
          :std/vector/u8vector
          (only-in :std/os/device
                   DIRECTION-IN
                   DIRECTION-OUT)
          (only-in :std/os/sockopt
                   SOL_SOCKET.SO_SNDBUF
                   SOL_SOCKET.SO_RCVBUF)
          ../keystore/interface
          ../keystore/memory
          ../ucan/interface
          ../ucan/context
          ../ucan/ext
          ../ucan/util
          ./auth
          ./config
          ./handshake
          ./tls
          ./wire)
  (export handshake-test)

  ;; Snapshot both principals as implicit roots before opening either context.
  (def (with-handshake-contexts (proc : :procedure)) => :void
    (using (store (make-memory-keystore #u8(1 2 3)) :- Keystore)
      (unwind-protect
        (let* ((dids (list-sort string<? [(store.generate-key!) (store.generate-key!)]))
               (other (store.generate-key!)))
          (using (left (open-capability-context ":memory:" store) :- CapabilityContext)
            (unwind-protect
              (using (right (open-capability-context ":memory:" store) :- CapabilityContext)
                (unwind-protect
                  (proc left right (car dids) (cadr dids) other)
                  (right.close)))
              (left.close))))
        (store.close))))

  ;; Tagged outcomes distinguish returns from exceptions without classifying the
  ;; exception. Even a failed assertion in the other endpoint cannot strand I/O.
  (def (handshake-test-peer (server : StreamSocket)
                            (client : StreamSocket)
                            (peer : :procedure)
                            (body : :procedure)
                            (wait : :real := 10)) => :list
    (let ((joined? #f)
          (worker (spawn
                   (lambda ()
                     (with-catch (lambda (e) ['raised e])
                       (lambda () ['returned (peer)]))))))
      (unwind-protect
        (begin
          (body)
          (let (result (thread-join! worker wait 'timeout))
            (when (eq? result 'timeout)
              (raise-timeout handshake-test-peer "Endpoint did not finish"))
            (set! joined? #t)
            result))
        (unless joined?
          (ignore-errors (server.close))
          (ignore-errors (client.close))
          (when (eq? (thread-join! worker 10 'timeout) 'timeout)
            (raise-timeout handshake-test-peer "Endpoint did not stop after socket close"))))))

  ;; Own the listener, both connected sockets, and TLS contexts in that order.
  ;; TLS upgrades use real keys borrowed from the capability contexts.
  (def (with-handshake-sockets (mode : :symbol)
                              (ctx : CapabilityContext)
                              (server-did : :string)
                              (client-did : :string)
                              (proc : :procedure)) => :void
    (call-with-temporary-directory "handshake-"
      (lambda (dir)
        (let ((listener #f) (server #f) (client #f) (server-tls #f) (client-tls #f))
          (unwind-protect
            (begin
              (set! listener
                (if (eq? mode 'unix)
                  (unix-listen (UnixAddress (path-expand "socket" dir)))
                  (tcp-listen (InetAddress localhost4 0))))
              (ServerSocket-set-input-timeout! listener (IOTimeout 5))
              (set! client
                (if (eq? mode 'unix)
                  (unix-connect (ServerSocket-address listener) (IOTimeout 5))
                  (tcp-connect (ServerSocket-address listener) (IOTimeout 5))))
              (set! server (ServerSocket-accept listener))
              (when (eq? mode 'tls)
                (set! server-tls (make-tls-context (ctx.get-principal server-did)))
                (set! client-tls (make-tls-context (ctx.get-principal client-did)))
                (let (result
                      (handshake-test-peer server client
                        (lambda ()
                          (set! server (ssl-server-upgrade server server-tls timeout: (IOTimeout 5)))
                          #t)
                        (lambda ()
                          (set! client (ssl-client-upgrade client context: client-tls
                                        host: (did->hostname server-did) timeout: (IOTimeout 5))))))
                  (when (eq? (car result) 'raised)
                    (raise (cadr result)))
                  (check result => '(returned #t))))
              (for-each
               (lambda ((socket : StreamSocket))
                 (socket.set-input-timeout! (IOTimeout 5))
                 (socket.set-output-timeout! (IOTimeout 5)))
               [server client])
              (proc server client))
            (begin
              (when client (ignore-errors (Closer-close client)))
              (when server (ignore-errors (Closer-close server)))
              (when listener (ignore-errors (Closer-close listener)))
              (when client-tls (foreign-release! client-tls))
              (when server-tls (foreign-release! server-tls)))))))
    (void))

  (def (handshake-test-write (socket : StreamSocket)
                            (type : :fixnum)
                            (payload : :u8vector)) => :void
    (let (header (encode-frame-header
                 (FrameHeader type: type stream-id: 0 payload-length: (u8vector-length payload))))
      (check (Writer-write (socket.writer) header) => frame-header-size)
      (unless (zero? (u8vector-length payload))
        (check (Writer-write (socket.writer) payload) => (u8vector-length payload)))))

  (def (handshake-test-read (socket : StreamSocket)
                           (type : :fixnum)) => :u8vector
    (let (bytes (make-u8vector frame-header-size))
      (check (Reader-read (socket.reader) bytes 0 frame-header-size frame-header-size)
             => frame-header-size)
      (using (header (decode-frame-header bytes) :- FrameHeader)
        (check header.type => type)
        (let* ((size header.payload-length) (payload (make-u8vector size)))
          (unless (zero? size)
            (check (Reader-read (socket.reader) payload 0 size size) => size))
          payload))))

  (def (handshake-test-closed (candidate : Handshake)
                             (committed? : :boolean := #f)) => :void
    (check candidate.phase => 'closed)
    (check candidate.committed? => committed?)
    (check-exception (Reader-read candidate.reader (make-u8vector 1) 0 1 1) Closed?))

  (def (handshake-test-writers (group : :thread-group)) => :list
    (filter (lambda ((thread : :thread))
              (eq? (thread-name thread) 'network-handshake-write))
            (thread-group->thread-list group)))

  (def (handshake-test-authenticate (candidate : Handshake)) => :void
    (check (handshake-identify! candidate) => #t)
    (check candidate.phase => 'identified)
    (check candidate.identity-proven? => #t)
    (check candidate.selection => #f)
    ;; The owner can register the proven peer here, before decoding peer UCAN.
    (check (handshake-authenticate! candidate) => #t)
    (check candidate.phase => 'authenticated))

  ;; This is the per-endpoint driver, not a Network/election implementation.
  (def (handshake-test-drive (candidate : Handshake)) => :boolean
    (handshake-test-authenticate candidate)
    (check (handshake-ready! candidate) => #t)
    (check candidate.phase => 'ready)
    (check candidate.committed? => #f)
    ;; The smaller DID's owner callback/election belongs here.
    (check (handshake-commit! candidate) => #t)
    (check candidate.phase => 'committed)
    (check candidate.committed? => #t)
    ;; The larger DID's owner callback belongs here, before CONFIRM.
    (handshake-confirm! candidate))

  (def handshake-test
    (test-suite "Staged network handshakes"
      (test-case "adaptive Unix and TLS setup use finite root windows or unequal parent horizons"
        (with-handshake-contexts
          (lambda ((ctx1 : CapabilityContext) (ctx2 : CapabilityContext) small large other)
            (for-each
              (lambda (mode)
                (for-each
                  (lambda (delegated?)
                    (with-handshake-sockets mode ctx1 large small
                      (lambda (server client)
                        (def start (current-time-seconds))
                        (when delegated?
                          (ctx1.add-output-anchor! (ctx1.grant! DELEGATE other small "/network" (+ start 600)))
                          (ctx2.add-output-anchor! (ctx2.grant! DELEGATE other large "/network" (+ start 400))))
                        (using ((incoming (make-handshake server ctx2 large #f DIRECTION-IN
                                                          start (+ start 30) 0
                                                          config: (NetworkConfig connection-ttl: 180))
                                          :- Handshake)
                                (outgoing (make-handshake client ctx1 small large DIRECTION-OUT
                                                          start (+ start 30) 0 adaptive?: #t
                                                          config: (NetworkConfig connection-ttl: 120))
                                          :- Handshake))
                          (check incoming.adaptive? => #f)
                          (check outgoing.adaptive? => #t)
                          (check (handshake-test-peer server client
                                   (lambda () (handshake-test-drive incoming))
                                   (lambda () (check (handshake-test-drive outgoing) => #t)))
                                 => '(returned #t))
                          (check incoming.expire => outgoing.expire)
                          (for-each
                            (lambda ((candidate : Handshake))
                              (check candidate.adaptive? => #t)
                              (check candidate.min-auth-expire => 0)
                              (check candidate.phase => 'confirmed)
                              (check candidate.expire
                                     => (min candidate.local-selection.expire candidate.selection.token.expire))
                              (def fields (decode-frame-payload frame-hello candidate.local-hello))
                              (check (vector-ref fields 0) => 1)
                              (check (vector-ref fields 3) => 0)
                              (check (vector-ref fields 6)
                                     => (if candidate.initiator? lease-mode-adaptive lease-mode-fixed)))
                            [incoming outgoing])
                          (if delegated?
                            (begin
                              (check outgoing.local-selection.expire => (+ start 600))
                              (check incoming.local-selection.expire => (+ start 400))
                              (check outgoing.expire => (+ start 400)))
                            (begin
                              (check outgoing.local-selection.chain => #f)
                              (check incoming.local-selection.chain => #f)
                              (check (<= (+ start 120) outgoing.expire (+ (current-time-seconds) 120)) => #t)))
                          (handshake-close! incoming)
                          (handshake-close! outgoing))))
                    ;; Restore the contexts so each transport also tests bare principals.
                    (for-each (lambda (token) (ctx1.remove-output-anchor! token)) (ctx1.output-anchors true))
                    (for-each (lambda (token) (ctx2.remove-output-anchor! token)) (ctx2.output-anchors true)))
                  [#f #t]))
              '(unix tls)))))

      (test-case "unsupported HELLO versions are checked before truncated or malformed v1 fields"
        (with-handshake-contexts
          (lambda (ctx1 ctx2 small large other)
            (for-each
              (lambda (version truncate?)
                (with-handshake-sockets 'unix ctx1 large small
                  (lambda (server client)
                    (def start (current-time-seconds))
                    (using (candidate (make-handshake server ctx2 large small DIRECTION-IN
                                                      start (+ start 30) 0)
                                      :- Handshake)
                      (def result
                        (handshake-test-peer server client
                          (lambda () (handshake-identify! candidate))
                          (lambda ()
                            (handshake-test-read client frame-hello)
                            (def payload
                              (encode-frame-payload frame-hello
                                                    [1 small (make-u8vector 32) (+ start 100) 1024 65536 lease-mode-fixed]))
                            (&u8vector-uint-set!/be payload 0 version 2)
                            (if truncate?
                              ;; A real v0 HELLO omits the appended mode byte.
                              (set! payload (subu8vector payload 0 (fx1- (u8vector-length payload))))
                              ;; This bogus host length must not obscure the unsupported version.
                              (&u8vector-uint-set!/be payload 2 #xffffffff 4))
                            (handshake-test-write client frame-hello payload))))
                      (check (car result) => 'raised)
                      (check (IOError? (cadr result)) => #t)
                      (check (Error-message (cadr result)) => "Unsupported network version")
                      (check candidate.local-bundle => [])
                      (handshake-test-closed candidate)))))
              [0 2 0 2] [#t #t #f #f]))))

      (test-case "HELLO mode and target combinations respect physical sender role"
        (with-handshake-contexts
          (lambda (ctx1 ctx2 small large other)
            (for-each
              (lambda (initiator? mode positive?)
                (with-handshake-sockets 'unix ctx1 large small
                  (lambda (server client)
                    (def start (current-time-seconds))
                    (using (candidate
                            (make-handshake (if initiator? client server) (if initiator? ctx1 ctx2)
                                            (if initiator? small large) (if initiator? large small)
                                            (if initiator? DIRECTION-OUT DIRECTION-IN)
                                            start (+ start 30) (if initiator? (+ start 100) 0))
                            :- Handshake)
                      (def result
                        (handshake-test-peer server client
                          (lambda () (handshake-identify! candidate))
                          (lambda ()
                            (def socket (if initiator? server client))
                            (handshake-test-read socket frame-hello)
                            (def payload
                              (encode-frame-payload frame-hello
                                                    [1 (if initiator? large small) (make-u8vector 32)
                                                       (if positive? (+ start 100) 0) 1024 65536 lease-mode-fixed]))
                            (u8vector-set! payload (fx1- (u8vector-length payload)) mode)
                            (handshake-test-write socket frame-hello payload))))
                      (check (car result) => 'raised)
                      (check (IOError? (cadr result)) => #t)
                      (check candidate.identity-proven? => #f)
                      (check candidate.local-bundle => [])
                      (handshake-test-closed candidate)))))
              [#t #t #t #f #f #f]
              [lease-mode-adaptive lease-mode-fixed 2 lease-mode-fixed lease-mode-adaptive 2]
              [#f #t #f #f #t #f]))))

      (test-case "adaptive setup keeps handshake headroom and bounds the Unix AUTH suffix"
        (with-handshake-contexts
          (lambda (ctx1 ctx2 small large other)
            (for-each
              (lambda (bounded?)
                (with-handshake-sockets 'unix ctx1 large small
                  (lambda (server client)
                    (def start (current-time-seconds))
                    (using (candidate
                            (make-handshake server ctx2 large small DIRECTION-IN start (+ start 30) 0
                                            config: (NetworkConfig connection-ttl: (if bounded? 60 1)
                                                                   handshake-timeout: (if bounded? 10 120))
                                            limits: (ConnectionLimits control-payload: (if bounded? 64 65536)))
                            :- Handshake)
                      (def result
                        (handshake-test-peer server client
                          (lambda () (handshake-identify! candidate))
                          (lambda ()
                            (handshake-test-read client frame-hello)
                            (handshake-test-write client frame-hello
                                                  (encode-frame-payload frame-hello
                                                                        [1 small (make-u8vector 32) 0 1024 65536 lease-mode-adaptive]))
                            (unless bounded?
                              (check (vector-ref (decode-frame-payload frame-reject
                                                                       (handshake-test-read client frame-reject)) 0)
                                     => reason-no-credentials)))))
                      (check candidate.adaptive? => #t)
                      (if bounded?
                        (begin
                          (check (car result) => 'raised)
                          (check (IOError? (cadr result)) => #t))
                        (begin
                          (check result => '(returned #f))
                          (check candidate.reason => reason-no-credentials)))
                      (handshake-test-closed candidate)))))
              [#f #t]))))

      (test-case "Unix and mutual TLS succeed in both physical DID orientations"
        (with-handshake-contexts
          (lambda (ctx1 ctx2 small large other)
            (for-each
              (lambda (mode)
                (for-each
                  (lambda (dids)
                    (let ((host (car dids)) (peer (cadr dids)))
                      (with-handshake-sockets mode ctx1 peer host
                        (lambda (server client)
                          (let* ((start (current-time-seconds)) (min-auth-expire (+ start 3600)))
                            (using ((incoming (make-handshake server ctx2 peer #f DIRECTION-IN
                                                              start (+ start 30) 0
                                                              limits: (ConnectionLimits data-payload: 1024))
                                              :- Handshake)
                                    (outgoing (make-handshake client ctx1 host peer DIRECTION-OUT
                                                              start (+ start 30) min-auth-expire
                                                              limits: (ConnectionLimits data-payload: 2048))
                                              :- Handshake))
                              (check incoming.phase => 'new)
                              (check outgoing.phase => 'new)
                              (check incoming.identity-proven? => (eq? mode 'tls))
                              (check outgoing.identity-proven? => (eq? mode 'tls))
                              (when (eq? mode 'tls)
                                (check incoming.peer => host)
                                (check outgoing.peer => peer))
                              (check (handshake-test-peer server client
                                       (lambda () (handshake-test-drive incoming))
                                       (lambda () (check (handshake-test-drive outgoing) => #t)))
                                     => '(returned #t))
                              (for-each
                                (lambda ((candidate : Handshake))
                                  (check candidate.phase => 'confirmed)
                                  (check candidate.adaptive? => #f)
                                  (check candidate.smaller? => (equal? candidate.host small))
                                  (check candidate.min-auth-expire => min-auth-expire)
                                  (check candidate.selection.index => 0)
                                  (check candidate.expire => min-auth-expire)
                                  (check candidate.expire
                                         => (min candidate.local-selection.expire candidate.selection.token.expire))
                                  (check candidate.output-limits.data-payload => 1024)
                                  (check candidate.reason => reason-ok)
                                  (check candidate.peer-rejected? => #f))
                                [incoming outgoing])
                              (check outgoing.peer => peer)
                              (check incoming.peer => host)
                              (check (marshal-token outgoing.local-selection)
                                     => incoming.selection.bytes)
                              (check (marshal-token incoming.local-selection)
                                     => outgoing.selection.bytes)
                              ;; CONFIRM must leave the transport open and consume no
                              ;; subsequent application bytes in either direction.
                              (let (bytes (make-u8vector 4))
                                (check (Writer-write outgoing.writer #u8(1 2 3 4)) => 4)
                                (check (Reader-read incoming.reader bytes 0 4 4) => 4)
                                (check bytes => #u8(1 2 3 4))
                                (check (Writer-write incoming.writer #u8(5 6 7 8)) => 4)
                                (check (Reader-read outgoing.reader bytes 0 4 4) => 4)
                                (check bytes => #u8(5 6 7 8)))
                              (handshake-close! incoming)
                              (handshake-close! outgoing)))))))
                  [[small large] [large small]]))
              '(unix tls)))))

      (test-case "authenticated peer refusal after readiness, before commitment"
        (with-handshake-contexts
         (lambda (ctx1 ctx2 small large other)
           (with-handshake-sockets 'unix ctx1 large small
             (lambda (server client)
               (let (start (current-time-seconds))
                 (using ((smaller (make-handshake client ctx1 small large DIRECTION-OUT
                                    start (+ start 30) (+ start 3600))
                            :- Handshake)
                         (larger (make-handshake server ctx2 large #f DIRECTION-IN
                                   start (+ start 30) 0)
                            :- Handshake))
                   (check (handshake-test-peer server client
                            (lambda ()
                              (handshake-test-authenticate larger)
                              (check (handshake-ready! larger) => #t)
                              (handshake-commit! larger))
                            (lambda ()
                              (handshake-test-authenticate smaller)
                              (check (handshake-ready! smaller) => #t)
                              (check (handshake-reject! smaller reason-refused) => #f)))
                          => '(returned #f))
                   (check smaller.reason => reason-refused)
                   (check smaller.peer-rejected? => #f)
                   (check larger.reason => reason-refused)
                   (check larger.peer-rejected? => #t)
                   (check larger.identity-proven? => #t)
                   (handshake-test-closed smaller)
                   (handshake-test-closed larger))))))))

      (test-case "plaintext TCP and unexpected TLS certificate identity close the socket"
        (with-handshake-contexts
         (lambda (ctx1 ctx2 small large other)
           (for-each
            (lambda (mode)
              (with-handshake-sockets mode ctx1 large small
                (lambda ((server : StreamSocket) (client : StreamSocket))
                  (let (start (current-time-seconds))
                    (check-exception
                     (make-handshake client ctx1 small (if (eq? mode 'tls) other large)
                       DIRECTION-OUT start (+ start 30) (+ start 3600))
                     (lambda (error)
                       (check (car (Error-irritants error)) => 'make-handshake)
                       (check (Error-where error) ? string?)
                       ((if (eq? mode 'tls) TLSPeerIdentityError? ContractViolation?) error)))
                    (check-exception
                     (Reader-read (client.reader) (make-u8vector 1) 0 1 1) Closed?)))))
            '(tcp tls)))))

      (test-case "invalid local phase is a context error and closes the candidate"
        (with-handshake-contexts
         (lambda (ctx1 ctx2 small large other)
           (with-handshake-sockets 'unix ctx1 large small
             (lambda (server client)
               (let (start (current-time-seconds))
                 (using (candidate (make-handshake server ctx2 large small DIRECTION-IN
                                     start (+ start 30) 0)
                                   :- Handshake)
                   (check-exception (handshake-ready! candidate) ContextError?)
                   (handshake-test-closed candidate))))))))

      (test-case "unexpected Unix HELLO identity aborts before proof"
        (with-handshake-contexts
          (lambda (ctx1 ctx2 small large other)
            (with-handshake-sockets 'unix ctx1 large small
              (lambda (server client)
                (let (start (current-time-seconds))
                  (using (candidate (make-handshake server ctx2 large small DIRECTION-IN
                                                    start (+ start 30) 0)
                                    :- Handshake)
                    (let (result
                          (handshake-test-peer server client
                            (lambda () (handshake-identify! candidate))
                            (lambda ()
                              (handshake-test-read client frame-hello)
                              (handshake-test-write client frame-hello
                                                    (encode-frame-payload frame-hello
                                                                          [1 other (make-u8vector 32 1) (+ start 3600) 1024 65536 lease-mode-fixed])))))
                      (check (car result) => 'raised))
                    (check candidate.identity-proven? => #f)
                    (handshake-test-closed candidate))))))))

      (test-case "invalid envelopes abort without waiting for the claimed payload"
        (with-handshake-contexts
          (lambda (ctx1 ctx2 small large other)
            (for-each
              (lambda (header)
                (with-handshake-sockets 'unix ctx1 large small
                  (lambda (server client)
                    (let (start (current-time-seconds))
                      (using (candidate (make-handshake server ctx2 large small DIRECTION-IN
                                                        start (+ start 30) 0)
                                        :- Handshake)
                        (let (result
                              (handshake-test-peer server client
                                (lambda () (handshake-identify! candidate))
                                (lambda ()
                                  (handshake-test-read client frame-hello)
                                  (check (Writer-write (StreamSocket-writer client) header)
                                         => frame-header-size))
                                5))
                          ;; The peer stays open and sends no payload. Joining well
                          ;; before the 30-second deadline proves envelope rejection.
                          (check (car result) => 'raised))
                        (check candidate.identity-proven? => #f)
                        (handshake-test-closed candidate))))))
              [#u8(255 0 0 0 0 0 0 0 0 0 0 0 55) ; unknown type
                  #u8(1 0 0 0 0 0 0 0 1 0 0 0 55)   ; HELLO on a stream
                  #u8(1 0 0 0 0 0 0 0 0 0 0 0 54)   ; impossible v1 HELLO length
                  #u8(1 0 0 0 0 0 0 0 0 0 0 16 1)   ; HELLO exceeds 4096
                  #u8(2 0 0 0 0 0 0 0 0 0 0 0 4)])))) ; AUTH before HELLO

      (test-case "Unix tampered proof and proven malformed serialized token both abort"
        (with-handshake-contexts
          (lambda ((ctx1 : CapabilityContext) ctx2 small large other)
            (for-each
              (lambda (tamper?)
                (with-handshake-sockets 'unix ctx1 large small
                  (lambda (server client)
                    (let ((start (current-time-seconds)) (identified? #f))
                      (using (candidate (make-handshake server ctx2 large small DIRECTION-IN
                                                        start (+ start 30) 0)
                                        :- Handshake)
                        (let (result
                              (handshake-test-peer server client
                                (lambda ()
                                  (handshake-identify! candidate)
                                  (check candidate.phase => 'identified)
                                  (check candidate.identity-proven? => #t)
                                  (check candidate.selection => #f)
                                  (check candidate.peer-bundle => [#u8()])
                                  (set! identified? #t)
                                  (handshake-authenticate! candidate))
                                (lambda ()
                                  (let* ((reply (handshake-test-read client frame-hello))
                                         (hello (encode-frame-payload frame-hello
                                                                      [1 small (make-u8vector 32 7) (+ start 3600) 1024 65536 lease-mode-fixed]))
                                         (blobs (if tamper?
                                                  (make-auth-bundle ctx1 small large proto:/network/connect
                                                                    (+ start 3600) (+ start 10) start)
                                                  [#u8()]))
                                         (bundle (encode-frame-payload frame-auth [blobs]))
                                         (proof (sign-unix-auth (ctx1.get-principal small) hello reply 0 bundle)))
                                    (when tamper?
                                      (u8vector-set! proof 0 (fxxor (u8vector-ref proof 0) 1)))
                                    (handshake-test-write client frame-hello hello)
                                    (handshake-test-read client frame-auth)
                                    (handshake-test-write client frame-auth
                                                          (encode-frame-payload frame-auth [blobs proof] unix?: #t))))))
                          (check (car result) => 'raised))
                        (check identified? => (not tamper?))
                        (check candidate.identity-proven? => (not tamper?))
                        (check candidate.peer-rejected? => #f)
                        (handshake-test-closed candidate))))))
              [#t #f]))))

      (test-case "scripted peer selects an out-of-range ACCEPT index"
        (with-handshake-contexts
         (lambda (ctx1 ctx2 small large other)
           (with-handshake-sockets 'unix ctx1 large small
             (lambda (server client)
               (let ((start (current-time-seconds)) (authenticated? #f))
                 (using ((smaller (make-handshake client ctx1 small large DIRECTION-OUT
                                    start (+ start 30) (+ start 3600))
                            :- Handshake)
                         (larger (make-handshake server ctx2 large small DIRECTION-IN
                                   start (+ start 30) 0)
                            :- Handshake))
                   (let (result
                         (handshake-test-peer server client
                           (lambda ()
                             (handshake-test-authenticate smaller)
                             (set! authenticated? #t)
                             (handshake-ready! smaller))
                           (lambda ()
                             (handshake-test-authenticate larger)
                             ;; The first index outside the original peer bundle.
                             (check (length larger.peer-bundle) => 1)
                             (handshake-test-write server frame-accept
                               (encode-frame-payload frame-accept [(length larger.peer-bundle)])))))
                     (check (car result) => 'raised))
                   (check authenticated? => #t)
                   (check smaller.identity-proven? => #t)
                   (check smaller.local-selection => #f)
                   (check smaller.expire => 0)
                   (check smaller.peer-rejected? => #f)
                   (handshake-test-closed smaller))))))))

      (test-case "missing CONFIRM after commitment never establishes the candidate"
        (with-handshake-contexts
         (lambda (ctx1 ctx2 small large other)
           (for-each
            (lambda (close-peer?)
              (with-handshake-sockets 'unix ctx1 large small
                (lambda (server client)
                  (let ((start (current-time-seconds)) (committed? #f))
                    (using ((smaller (make-handshake client ctx1 small large DIRECTION-OUT
                                       start (+ start 5) (+ start 3600))
                               :- Handshake)
                            (larger (make-handshake server ctx2 large small DIRECTION-IN
                                      start (+ start 5) 0)
                               :- Handshake))
                      (let (result
                            (handshake-test-peer server client
                              (lambda ()
                                (handshake-test-authenticate smaller)
                                (check (handshake-ready! smaller) => #t)
                                (check (handshake-commit! smaller) => #t)
                                (check smaller.phase => 'committed)
                                (check smaller.committed? => #t)
                                (set! committed? #t)
                                (handshake-confirm! smaller))
                              (lambda ()
                                (handshake-test-authenticate larger)
                                (check (handshake-ready! larger) => #t)
                                (check (handshake-commit! larger) => #t)
                                (check larger.phase => 'committed)
                                (check larger.committed? => #t)
                                ;; Withhold CONFIRM: either close or keep the socket
                                ;; open until the smaller endpoint's deadline fires.
                                (when close-peer? (handshake-close! larger)))))
                        (check (car result) => 'raised))
                      (check committed? => #t)
                      (unless close-peer?
                        (check (>= (current-time-seconds) smaller.deadline) => #t)
                        (check larger.phase => 'committed))
                      (check smaller.peer-rejected? => #f)
                      (handshake-test-closed smaller #t))))))
            [#f #t]))))

      (test-case "external cancellation joins backpressured AUTH writers on Unix and TLS"
        (with-handshake-contexts
          (lambda (ctx1 (ctx2 : CapabilityContext) small large other)
            (using (parent (Token type: DELEGATE issuer: other audience: large
                                  protocol: "/network" expire: (+ (current-time-seconds) 7200)
                                  ;; Keep individual strings within the existing serde
                                  ;; container limit while exceeding socket capacity.
                                  args: (let loop ((n 32) (chunks []))
                                          (if (fxzero? n)
                                            chunks
                                            (loop (fx1- n) (cons (make-string 32768 #\x) chunks)))))
                           :- Token)
              (ctx2.sign! parent)
              (check (ctx2.verify parent) => !VerificationOK)
              (for-each
                (lambda (mode)
                  (with-handshake-sockets mode ctx2 large small
                    (lambda ((server : StreamSocket) (client : StreamSocket))
                      (for-each
                        (lambda ((socket : StreamSocket))
                          (socket.setsockopt SOL_SOCKET.SO_SNDBUF 4096)
                          (socket.setsockopt SOL_SOCKET.SO_RCVBUF 4096))
                        [server client])
                      (client.set-input-timeout! (IOTimeout 10))
                      (let ((start (current-time-seconds))
                            (limits (ConnectionLimits control-payload: 2097152))
                            (writer-group #f))
                        (using (candidate (make-handshake server ctx2 large small DIRECTION-IN
                                                          start (+ start 30) 0 auth: parent limits: limits)
                                          :- Handshake)
                          (let (result
                                (handshake-test-peer server client
                                  (lambda ()
                                    ;; Capture the stage worker's group, not a guessed
                                    ;; system group or a private scheduler structure.
                                    (set! writer-group (thread-thread-group (current-thread)))
                                    (handshake-identify! candidate))
                                  (lambda ()
                                    (handshake-test-read client frame-hello)
                                    (handshake-test-write client frame-hello
                                                          (encode-frame-payload frame-hello
                                                                                [1 small (make-u8vector 32 9) (+ start 3600) 1024 2097152 lease-mode-fixed]))
                                    (let (bytes (make-u8vector frame-header-size))
                                      (check (Reader-read (client.reader) bytes
                                                          0 frame-header-size frame-header-size)
                                             => frame-header-size)
                                      (using (header (decode-frame-header bytes limits: limits) :- FrameHeader)
                                        (check header.type => frame-auth)
                                        (check (> header.payload-length 1048576) => #t)))
                                    ;; No AUTH payload is drained: it cannot fit in the
                                    ;; small socket buffers, so its output worker is live.
                                    (check (length (handshake-test-writers writer-group)) => 1)
                                    (handshake-close! candidate))
                                  10))
                            (check (car result) => 'raised))
                          (check (< (current-time-seconds) candidate.deadline) => #t)
                          (check (handshake-test-writers writer-group) => [])
                          (handshake-test-closed candidate))))))
                '(unix tls))))))

      (test-case "authentication enforces its deadline after real UCAN verification returns"
        (with-handshake-contexts
         (lambda ((ctx1 : CapabilityContext) ctx2 small large other)
           (with-handshake-sockets 'unix ctx1 large small
             (lambda (server client)
               (let ((start (current-time-seconds)) (verification #f) (verify-calls 0))
                 (using ((candidate (make-handshake client ctx1 small large DIRECTION-OUT
                                      start (+ start 5) (+ start 3600))
                            :- Handshake)
                         (peer (make-handshake server ctx2 large small DIRECTION-IN
                                 start (+ start 5) 0)
                            :- Handshake))
                   (check (handshake-test-peer server client
                            (lambda () (handshake-identify! peer))
                            (lambda () (check (handshake-identify! candidate) => #t)))
                          => '(returned #t))
                   (check candidate.phase => 'identified)
                   (check candidate.identity-proven? => #t)
                   (check candidate.selection => #f)
                   ;; Only verification is wrapped, after all transport exchanges.
                   ;; Preserve the real policy result and the original time budget.
                   (let (delayed (new-instance CapabilityContext::t))
                     (apply class-instance-init! delayed
                       (list object: ctx1
                         normalize-did: CapabilityContext-normalize-did
                         verify:
                         (lambda ((context : CapabilityContext) (token : Token))
                           (set! verify-calls (fx1+ verify-calls))
                           (set! verification (context.verify token))
                           (thread-sleep! (seconds->time candidate.deadline))
                           verification)))
                     (set! candidate.context (: delayed CapabilityContext)))
                   (let (result
                         (with-catch (lambda (e) ['raised e])
                           (lambda () ['returned (handshake-authenticate! candidate)])))
                     (check (car result) => 'raised)
                     (when (eq? (car result) 'raised)
                       (check (Timeout? (cadr result)) => #t)))
                   (check verify-calls => 1)
                   (check verification => !VerificationOK)
                   (check (>= (current-time-seconds) candidate.deadline) => #t)
                   (check peer.phase => 'identified)
                   (check candidate.peer-rejected? => #f)
                   (handshake-test-closed candidate))))))))

      (test-case "absolute deadline interrupts a silent peer read and closes the candidate"
        (with-handshake-contexts
         (lambda (ctx1 ctx2 small large other)
           (with-handshake-sockets 'unix ctx1 large small
             (lambda (server client)
               (let (start (current-time-seconds))
                 (using (candidate (make-handshake server ctx2 large small DIRECTION-IN
                                     start (+ start 2) 0)
                           :- Handshake)
                   (let (result
                         (handshake-test-peer server client
                           (lambda () (handshake-identify! candidate))
                           (lambda () (handshake-test-read client frame-hello))))
                     (check (car result) => 'raised))
                   (check (>= (current-time-seconds) candidate.deadline) => #t)
                   (check candidate.identity-proven? => #f)
                   (handshake-test-closed candidate))))))))))))
