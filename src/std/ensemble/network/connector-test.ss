;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Outgoing candidates over real Unix sockets and mutual TLS
(import :std/build-config)
(cond-expand
 (config-have-sqlite
  (import :std/test
          :std/error
          :std/interface
          :std/io
          :std/io/tempfile
          :std/crypto/pkey
          :std/net/address
          (only-in :std/net/address/resolver EndpointAddressResolver)
          :std/net/ssl
          (only-in :std/net/ssl/libssl make-self-signed-tls-context)
          (only-in :std/os/device DIRECTION-IN)
          :std/os/error
          (only-in :std/os/socket SocketConnectError? raise-socket-connect-error)
          :std/ffi
          :std/sync/threads
          :std/time/time
          :std/time/timeout
          ../keystore/interface
          ../keystore/memory
          ../ucan/interface
          ../ucan/context
          ../ucan/ext
          ../ucan/util
          ./config
          ./connector
          ./handshake
          ./network
          ./tls
          ./wire)
  (export connector-test)

  ;; A resolver backend can fail with any exception. The connector must retire
  ;; its setup reservation without interpreting arbitrary errors as DNS failures.
  (defclass (FailingConnectorAddress Address)
    ((error : :t)) final: #t)

  (implement EndpointAddressResolver
    (FailingConnectorAddress
     (resolve (lambda (self) (raise self.error)))))

  (defclass ConnectorFixture
    ((listener :? ServerSocket := #f)
     (sockets  :  :list := [])
     (workers  :  :list := [])
     (contexts :  :list := [])
     (closers  :  :list := []))
    final: #t)

  ;; Retain each spawned worker so even an exceptional test can close and join all
  ;; endpoints before releasing native contexts or the contexts' borrowed keys.
  (def (connector-test-worker (fixture : ConnectorFixture)
                              (proc : :procedure))
    => :thread
    (let (worker (spawn-thread proc 'connector-test-endpoint))
      (set! fixture.workers (cons worker fixture.workers))
      worker))

  (def (connector-test-socket (fixture : ConnectorFixture)
                              (socket : StreamSocket))
    => StreamSocket
    (set! fixture.sockets (cons socket fixture.sockets))
    socket)

  (def (with-connector-fixture (proc : :procedure))
    => :void
    (using ((fixture (ConnectorFixture) :- ConnectorFixture)
            (store (make-memory-keystore #u8(1 2 3)) :- Keystore))
      (unwind-protect
        (let ((host (store.generate-key!))
              (peer (store.generate-key!))
              (other (store.generate-key!)))
          (using (client (open-capability-context ":memory:" store) :- CapabilityContext)
            (unwind-protect
              (using (server (open-capability-context ":memory:" store) :- CapabilityContext)
                (unwind-protect
                  (call-with-temporary-directory "connector-"
                                                 (lambda (dir)
                                                   (unwind-protect
                                                     (let (tls (make-tls-context (client.get-principal host)))
                                                       (set! fixture.contexts [tls])
                                                       (proc fixture client server host peer other tls dir))
                                                     (begin
                                                       (when fixture.listener
                                                          (ignore-errors (fixture.listener.close)))
                                                       (for-each (lambda (socket) (ignore-errors (Closer-close socket)))
                                                                 fixture.sockets)
                                                       ;; Release the credential-race workers even if setup failed
                                                       ;; before the test sent their start messages.
                                                       (for-each (lambda (worker) (ignore-errors (thread-send worker 'start)))
                                                                 fixture.workers)
                                                       (for-each
                                                         (lambda (worker)
                                                           (when (eq? (with-catch (lambda (e) 'finished)
                                                                        (lambda () (thread-join!/error worker 5 'timeout)))
                                                                      'timeout)
                                                             ;; An accept/upgrade may have published a socket
                                                             ;; after the first close pass.
                                                             (for-each (lambda (socket) (ignore-errors (Closer-close socket)))
                                                                       fixture.sockets)
                                                             (when (eq? (with-catch (lambda (e) 'finished)
                                                                          (lambda () (thread-join!/error worker 5 'timeout)))
                                                                        'timeout)
                                                               (error "Connector fixture worker did not stop after socket close"))))
                                                         fixture.workers)
                                                       ;; An accept/upgrade racing cleanup may have registered
                                                       ;; its socket after the first close pass.
                                                       (for-each (lambda (socket) (ignore-errors (Closer-close socket)))
                                                                 fixture.sockets)
                                                       (for-each foreign-release! fixture.contexts)
                                                       (for-each Closer-close fixture.closers)))))
                  (server.close)))
              (client.close))))
        (store.close))))

  (def (connector-test-listen (fixture : ConnectorFixture)
                              (address : Address))
    => Address
    (set! fixture.listener (stream-listen address))
    (ServerSocket-set-input-timeout! fixture.listener (IOTimeout 5))
    (let (bound (ServerSocket-address fixture.listener))
      (if (DNSAddress? address)
        (using (dial (DNSAddress "localhost" (InetAddress-port bound))
                     :- DNSAddress)
          ;; Reuse the listener's resolved loopback endpoint; independently
          ;; choosing IPv4/IPv6 could target a different unbound socket.
          (set! dial.resolved [bound])
          dial)
        bound)))

  ;; Drain the raw transport, not TLS records. EOF (rather than a read timeout)
  ;; observes the connector closing its side without closing the peer first.
  (def (connector-test-eof (socket : StreamSocket))
    => :integer
    (socket.set-input-timeout! (IOTimeout 4))
    (let (buffer (make-u8vector 4096))
      (let loop ((total 0))
        (let (count (Reader-read (socket.reader) buffer 0 4096 0))
          (if (zero? count) total (loop (+ total count)))))))

  (defclass TestConnectorMonitor
    ((fixture : ConnectorFixture)
     (events : :list := [])
     (candidates : :list := [])
     (attempts : :list := [])
     (failures : :list := [])
     (fail-at :? :symbol := #f)
     (attachment-error : :t := #f)
     (shutdown-upgraded? : :boolean := #f)
     (attachments : :list := [])
     (registry :? NetworkOwner := #f)
     (reservation :? NetworkReservation := #f)
     (admit? : :boolean := #t))
    final: #t)

  (def (connector-test-event! (self : TestConnectorMonitor)
                              (event : :symbol)
                              (candidate : Handshake))
    => :void
    (set! self.events
      (cons [event candidate.phase candidate.identity-proven? candidate.committed?]
            self.events))
    (when (eq? event self.fail-at)
      (raise 'connector-owner-failed)))

  (def (connector-test-connected! (self : TestConnectorMonitor)
                                  (candidate : Handshake))
    => :void
    (connector-test-socket self.fixture candidate.socket)
    (set! self.candidates (cons candidate self.candidates))
    (connector-test-event! self 'connected candidate))

  (def (connector-test-identified! (self : TestConnectorMonitor)
                                   (candidate : Handshake))
    => :void
    (connector-test-event! self 'identified candidate))

  (def (connector-test-admit! (self : TestConnectorMonitor)
                              (candidate : Handshake))
    => :boolean
    (connector-test-event! self 'admit candidate)
    self.admit?)

  (def (connector-test-open! (self : TestConnectorMonitor)
                             (candidate : Handshake))
    => :void
    (connector-test-event! self 'open candidate))

  (def (connector-test-complete! (self : TestConnectorMonitor)
                                 (candidate : Handshake))
    => :void
    (connector-test-event! self 'complete candidate))

  (def (connector-test-closed! (self : TestConnectorMonitor)
                               (candidate : Handshake))
    => :void
    (check candidate.phase => 'closed)
    ;; A phase change alone is insufficient: retirement observes a closed device.
    (check-exception (candidate.writer.write #u8(0)) Closed?)
    (connector-test-event! self 'closed candidate))

  (def (connector-test-connecting! (self : TestConnectorMonitor)
                                   (address : Address)
                                   (start : :integer))
    => :void
    (set! self.attempts (cons [address start] self.attempts))
    (set! self.events (cons ['connecting] self.events))
    (when (eq? self.fail-at 'connecting)
      (raise 'connector-owner-failed)))

  (def (connector-test-failed! (self : TestConnectorMonitor)
                               (address : Address)
                               (error : :t))
    => :void
    (set! self.failures (cons [address error] self.failures))
    (when (pair? self.attachments)
      (check-exception
        (Writer-write (StreamSocket-writer (car self.attachments)) #u8(0)) Closed?))
    (set! self.events (cons ['failed] self.events))
    (when (eq? self.fail-at 'failed)
      (raise 'connector-owner-failed)))

  (def (connector-test-attach! (self : TestConnectorMonitor)
                              (socket : StreamSocket))
    => :void
    (set! self.attachments (cons socket self.attachments))
    (connector-test-socket self.fixture socket)
    (when self.registry
      (when (and self.shutdown-upgraded? (is-TLS? socket))
        (network-shutdown! self.registry))
      (network-attach! self.registry self.reservation socket))
    (when self.attachment-error
      (raise self.attachment-error)))

  (implement HandshakeMonitor
    (TestConnectorMonitor
     (connected! connector-test-connected!)
     (identified! connector-test-identified!)
     (admit! connector-test-admit!)
     (open! connector-test-open!)
     (complete! connector-test-complete!)
     (closed! connector-test-closed!)))

  (implement ConnectorMonitor
    (TestConnectorMonitor
     (connecting! connector-test-connecting!)
     (attach! connector-test-attach!)
     (failed! connector-test-failed!)))

  (def connector-test
    (test-suite "Outgoing network candidates"
      (test-case "adaptive setup and driver refresh context authority past an expired initial seed"
        (for-each
          (lambda (standalone?)
            (with-connector-fixture
              (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                       server host peer other tls dir)
                (def start (current-time-seconds))
                (def deadline (+ start 20))
                (def seed (client.grant! DELEGATE other host "/network" 0))
                (def fresh (client.grant! DELEGATE other host "/network" (+ start 200)))
                (client.add-output-anchor! fresh)
                (def address (connector-test-listen fixture (UnixAddress (path-expand "adaptive" dir))))
                (def credentials (make-connector-credentials seed))
                (def owner (ConnectorMonitor (TestConnectorMonitor fixture: fixture)))
                (def worker
                  (connector-test-worker fixture
                                         (lambda ()
                                           (using (incoming
                                                   (make-handshake
                                                    (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                    server peer #f DIRECTION-IN start deadline 0
                                                    config: (NetworkConfig connection-ttl: 300))
                                                   :- Handshake)
                                             (check (run-handshake! incoming
                                                                    (ConnectorMonitor (TestConnectorMonitor fixture: fixture))) => #t)
                                             incoming))))
                (using (outgoing
                        (if standalone?
                          (let (candidate
                                (connect-handshake client tls host peer address start deadline 0
                                                   adaptive?: #t auth: seed monitor: owner
                                                   config: (NetworkConfig connection-ttl: 60)))
                            (check (run-handshake! candidate owner) => #t)
                            candidate)
                          (connector-connect! owner client tls host peer [address] credentials start deadline 0
                                              adaptive?: #t config: (NetworkConfig connection-ttl: 60)))
                        :- Handshake)
                  (using (incoming (thread-join!/error worker 5) :- Handshake)
                    (check outgoing.adaptive? => #t)
                    (check incoming.adaptive? => #t)
                    (check outgoing.min-auth-expire => 0)
                    (check outgoing.expire => (+ start 200))
                    (check incoming.expire => outgoing.expire)
                    (check outgoing.local-selection.chain => fresh)
                    (check-eq? outgoing.parent seed)
                    (check (vector-length outgoing.local-tokens) => 2)
                    (check outgoing.deadline => deadline)
                    (handshake-close! incoming))
                  (handshake-close! outgoing))
                (unless standalone? (check (ConnectorCredentials-closed? credentials) => #t))
                (connector-close-credentials! credentials))))
          [#f #t]))

      (test-case "adaptive mode rejects nonzero targets before reservation or dialing"
        (with-connector-fixture
          (lambda (fixture client server host peer other tls dir)
            (def now (current-time-seconds))
            (using (owner (TestConnectorMonitor fixture: fixture) :- TestConnectorMonitor)
              (check-exception
               (connector-connect! (ConnectorMonitor owner) client tls host peer
                                   [(UnixAddress (path-expand "not-dialed" dir))]
                                   (make-connector-credentials) now (+ now 10) (+ now 100) adaptive?: #t)
               ContractViolation?)
              (check owner.events => [])
              (check-exception
               (connect-handshake client tls host peer (UnixAddress (path-expand "not-dialed" dir))
                                  now (+ now 10) (+ now 100) adaptive?: #t monitor: (ConnectorMonitor owner))
               ContractViolation?)
              (check owner.events => [])))))

      (test-case "adaptive credential selection forwards an exhausted seed without changing fixed filtering"
        (with-connector-fixture
          (lambda (fixture (client : CapabilityContext) server host peer other tls dir)
            (def now (current-time-seconds))
            (def seed (client.grant! DELEGATE other host "/network" 0))
            (for-each
              (lambda (adaptive?)
                (def credentials (make-connector-credentials seed))
                (check (values->list
                        (connector-next-credential! credentials 0 (+ now 10) now adaptive?: adaptive?))
                       => (if adaptive? [#t seed] [#f #f]))
                (when adaptive?
                  (check (values->list
                          (connector-next-credential! credentials 0 (+ now 10) now adaptive?: #t))
                         => [#f #f]))
                (check (ConnectorCredentials-closed? credentials) => #t))
              [#f #t]))))

      (test-case "attachment racing shutdown cannot leave an open transport"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) client server host peer other tls dir)
           (let (address (connector-test-listen fixture (UnixAddress (path-expand "race.sock" dir))))
             (for-each
               (lambda (i)
                 (let* ((registry (make-network-owner host (NetworkLimits)))
                        (reservation (network-reserve! registry #f 100))
                        (socket (connector-test-socket fixture (stream-connect address))))
                   (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                   (let* ((attach #f)
                          (close #f)
                          (start-attach
                           (lambda ()
                             (set! attach
                               (connector-test-worker fixture
                                 (lambda ()
                                   (with-catch values
                                     (lambda () (network-attach! registry reservation socket) 'attached)))))))
                          (start-close
                           (lambda ()
                             (set! close
                               (connector-test-worker fixture (lambda () (network-shutdown! registry)))))))
                     (for-each (lambda (start) (start))
                               (if (even? i) [start-attach start-close] [start-close start-attach]))
                     (let (result (thread-join!/error attach 3))
                       (check (or (eq? result 'attached) (Closed? result)) => #t))
                     (thread-join!/error close 3)
                     (check-exception (Writer-write (StreamSocket-writer socket) #u8(0)) Closed?)
                     (network-retire! registry reservation))))
               (iota 16))))))

      (test-case "completed TLS upgrade is rejected after shutdown closes the retained raw view"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) (client : CapabilityContext) server host peer other tls dir)
           (let* ((address (connector-test-listen fixture (InetAddress localhost4 0)))
                  (now (current-time-seconds))
                  (registry (make-network-owner host (NetworkLimits)))
                  (work (network-outgoing! registry peer (+ now 30) (+ now 3600)))
                  (reservation (network-reserve! registry work (+ now 30)))
                  (server-tls (make-tls-context (client.get-principal peer))))
             (set! fixture.contexts (cons server-tls fixture.contexts))
             (let (worker
                   (connector-test-worker fixture
                     (lambda ()
                       (with-catch values
                         (lambda ()
                           (let (raw (connector-test-socket fixture (ServerSocket-accept fixture.listener)))
                             (connector-test-socket fixture
                               (ssl-server-upgrade raw server-tls timeout: (IOTimeout 5)))))))))
               (using (monitor (TestConnectorMonitor fixture: fixture registry: registry
                                                     reservation: reservation shutdown-upgraded?: #t)
                         :- TestConnectorMonitor)
                 (check-exception
                   (connect-handshake client tls host peer address now (+ now 30) (+ now 3600)
                                      monitor: (ConnectorMonitor monitor)) Closed?)
                 (check (length monitor.attachments) => 2)
                 (check (is-TLS? (car monitor.attachments)) => #t)
                 (check-exception
                   (Writer-write (StreamSocket-writer (car monitor.attachments)) #u8(0)) Closed?)
                 (check (thread-join!/error worker 6 'timeout) ? StreamSocket?)
                 (network-retire! registry reservation)
                 (network-finish-outgoing! registry work)))))))

      (test-case "attachment transport exceptions are terminal after socket cleanup"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) client server host peer other tls dir)
           (let* ((address (connector-test-listen fixture (UnixAddress (path-expand "attach.sock" dir))))
                  (error (SSLHandshakeError "monitor failure"))
                  (now (current-time-seconds)))
             (using (monitor (TestConnectorMonitor fixture: fixture attachment-error: error)
                       :- TestConnectorMonitor)
               (let (result
                     (with-catch values
                       (lambda ()
                         (connector-connect! (ConnectorMonitor monitor) client tls host peer
                                         [address address] (make-connector-credentials)
                                         now (+ now 30) (+ now 3600)))))
                 (check (eq? result error) => #t)
                 (check (length monitor.attempts) => 1)
                 (check (length monitor.failures) => 1)
                 (check (length monitor.attachments) => 1)
                 (check-exception
                   (Writer-write (StreamSocket-writer (car monitor.attachments)) #u8(0)) Closed?)))))))

      (test-case "owner shutdown interrupts silent outgoing TLS before the deadline"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) client server host peer other tls dir)
           (let* ((address (connector-test-listen fixture (InetAddress localhost4 0)))
                  (now (current-time-seconds))
                  (registry (make-network-owner host (NetworkLimits)))
                  (work (network-outgoing! registry peer (+ now 30) (+ now 3600)))
                  (reservation (network-reserve! registry work (+ now 30))))
             (using (monitor (TestConnectorMonitor fixture: fixture registry: registry
                                                   reservation: reservation)
                       :- TestConnectorMonitor)
               (let (worker
                     (connector-test-worker fixture
                       (lambda ()
                         (with-catch values
                           (lambda ()
                             (connector-connect! (ConnectorMonitor monitor) client tls host peer
                                             [address] (make-connector-credentials)
                                             now (+ now 30) (+ now 3600)))))))
                 (using (accepted (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                           :- StreamSocket)
                   ;; Receiving ClientHello proves the raw attachment precedes TLS I/O.
                   (accepted.set-input-timeout! (IOTimeout 5))
                   (check (Reader-read (accepted.reader) (make-u8vector 1) 0 1 1) => 1)
                   (network-shutdown! registry)
                   (check (thread-join!/error worker 3 'timeout) ? Closed?)
                   (check (length monitor.attachments) => 1)
                   (check (length monitor.failures) => 1)
                   (check (length (NetworkOwner-pending registry)) => 1)
                   (network-retire! registry reservation)
                   (network-finish-outgoing! registry work)
                   (check (NetworkOwner-pending registry) => []))))))))

      (test-case "typed setup policy and terminal reservation cleanup preserve exact exceptions"
        (with-connector-fixture
         (lambda (fixture client server host peer other tls dir)
           (for-each
             (lambda (error)
               (let ((start (current-time-seconds))
                     (address (FailingConnectorAddress error: error)))
                 (using ((owner (TestConnectorMonitor fixture: fixture) :- TestConnectorMonitor)
                         (credentials (make-connector-credentials) :- ConnectorCredentials))
                   (let (result
                         (with-catch values
                           (lambda ()
                             (connector-connect! (ConnectorMonitor owner) client tls host peer
                                             [address address]
                                             credentials start (+ start 10) (+ start 3600)))))
                     (check (eq? result error) => #t)
                     (check (connector-retry-setup? error) => #f)
                     (check (map car (reverse owner.events)) => '(connecting failed))
                     (check (eq? (cadar owner.failures) error) => #t)
                     (check credentials.closed? => #t)))))
             (append
              (map (lambda (errno)
                     (with-catch values
                       (lambda () (raise-socket-connect-error terminal-test errno))))
                   [EINVAL EBADF ENOMEM EMFILE ENFILE])
              [(with-catch values (lambda () (raise-os-error unrelated-operation ECONNREFUSED)))
               (SSLError "local SSL setup")
               (IOError "unrelated I/O")
               (Timeout "deadline")
               (Closed "cancelled")
               (with-catch values (lambda () (raise-allocation-error terminal-test)))
               'unexpected-setup-error])))))

      (test-case "default credential is offered once before queued parents"
        (with-connector-fixture
         (lambda (fixture (client : CapabilityContext) server host peer other tls dir)
           (let* ((now (current-time-seconds))
                  (parent (client.grant! DELEGATE other host "/network" (+ now 3600)))
                  (credentials (make-connector-credentials)))
             (connector-add-credential! credentials parent)
             (check (values->list (connector-next-credential! credentials now now now))
                    => [#t #f])
             ;; No-auth joiners do not add a credential or restore provide!.
             (check (values->list (connector-next-credential! credentials now now now))
                    => [#t parent])
             (check (values->list (connector-next-credential! credentials now now now))
                    => [#f #f])
             (check-exception (connector-next-credential! credentials now now now) Closed?)))))

      (test-case "explicit initial parent joins stable longest-first order without a default"
        (with-connector-fixture
         (lambda (fixture (client : CapabilityContext) server host peer other tls dir)
           (let* ((now (current-time-seconds))
                  (initial (client.grant! DELEGATE other host "/network" (+ now 200)))
                  (short (client.grant! DELEGATE other host "/network" (+ now 100)))
                  (long (client.grant! DELEGATE other host "/network" (+ now 300)))
                  (tie (client.grant! DELEGATE other host "/network" (+ now 200)))
                  (credentials (make-connector-credentials initial)))
             (for-each (lambda (parent) (connector-add-credential! credentials parent))
                       [short long tie])
             (for-each
               (lambda (parent)
                 (let-values (((available? selected)
                               (connector-next-credential! credentials now now now)))
                   (check available? => #t)
                   (check (eq? selected parent) => #t)))
               [long initial tie short])
             (check (values->list (connector-next-credential! credentials now now now))
                    => [#f #f])))))

      (test-case "equal token copies are never retried before or after selection"
        (with-connector-fixture
         (lambda (fixture (client : CapabilityContext) server host peer other tls dir)
           (let* ((now (current-time-seconds))
                  (parent (client.grant! DELEGATE other host "/network" (+ now 300)))
                  (other-parent (client.grant! DELEGATE other host "/network" (+ now 200)))
                  (copy (unmarshal-token (u8vector-copy (marshal-token parent))))
                  (credentials (make-connector-credentials parent)))
             (check (eq? parent copy) => #f)
             (check copy => parent)
             (connector-add-credential! credentials copy)
             (connector-add-credential! credentials parent)
             (connector-add-credential! credentials other-parent)
             (let-values (((available? selected)
                           (connector-next-credential! credentials now now now)))
               (check available? => #t)
               (check (eq? selected parent) => #t))
             (connector-add-credential! credentials
                                        (unmarshal-token (u8vector-copy (marshal-token parent))))
             (check (values->list (connector-next-credential! credentials now now now))
                    => [#t other-parent])
             (check (values->list (connector-next-credential! credentials now now now))
                    => [#f #f])))))

      (test-case "lifetime bounds are inclusive except now and allow a late eligible parent"
        (with-connector-fixture
         (lambda (fixture (client : CapabilityContext) server host peer other tls dir)
           (let (now (current-time-seconds))
             (for-each
               (lambda (minimum headroom clock expiry eligible?)
                 (let* ((parent (client.grant! DELEGATE other host "/network" expiry))
                        (credentials (make-connector-credentials parent)))
                   (check (values->list
                           (connector-next-credential! credentials minimum headroom clock))
                          => (if eligible? [#t parent] [#f #f]))
                   (connector-close-credentials! credentials)))
               [(+ now 100) (+ now 101) now now now]
               [(+ now 100) now (+ now 101) now now]
               [now now now (+ now 100) (+ now 99)]
               [(+ now 100) (+ now 100) (+ now 100) (+ now 100) (+ now 100)]
               [#t #f #f #f #t])
             (let* ((short (client.grant! DELEGATE other host "/network" (+ now 99)))
                    (late (client.grant! DELEGATE other host "/network" (+ now 100)))
                    (credentials (make-connector-credentials)))
               (connector-add-credential! credentials short)
               (check (values->list (connector-next-credential! credentials (+ now 100) now now))
                      => [#t #f])
               (connector-add-credential! credentials late)
               (check (values->list (connector-next-credential! credentials (+ now 100) now now))
                      => [#t late])
               (check (values->list (connector-next-credential! credentials (+ now 100) now now))
                      => [#f #f]))))))

      (test-case "explicit close clears choices and neither close nor exhaustion can be revived"
        (with-connector-fixture
         (lambda (fixture (client : CapabilityContext) server host peer other tls dir)
           (let* ((now (current-time-seconds))
                  (parent (client.grant! DELEGATE other host "/network" (+ now 300))))
             (for-each
               (lambda (explicit?)
                 (using (credentials (make-connector-credentials)
                                     :- ConnectorCredentials)
                   (connector-add-credential! credentials parent)
                   (if explicit?
                     (connector-close-credentials! credentials)
                     (begin
                       (connector-next-credential! credentials now now now)
                       (connector-next-credential! credentials now now now)
                       (check (values->list (connector-next-credential! credentials now now now))
                              => [#f #f])))
                   (check credentials.closed? => #t)
                   (check credentials.parents => [])
                   (check credentials.provide? => #f)
                   (connector-close-credentials! credentials)
                   (connector-close-credentials! credentials)
                   (check-exception (connector-add-credential! credentials parent) Closed?)
                   (check-exception (connector-next-credential! credentials now now now) Closed?)))
               [#t #f])))))

      (test-case "concurrent add and exhaustion cannot lose a successful addition"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                  server host peer other tls dir)
           (let* ((now (current-time-seconds))
                  (parent (client.grant! DELEGATE other host "/network" (+ now 3600))))
             (let loop ((iteration 0))
               (when (< iteration 32)
                 (let (credentials (make-connector-credentials))
                   (check (values->list (connector-next-credential! credentials now now now))
                          => [#t #f])
                   (let* ((adder
                           (connector-test-worker fixture
                                                  (lambda ()
                                                    (thread-receive)
                                                    (with-catch
                                                         (lambda (e)
                                                           (if (Closed? e) 'closed
                                                             (raise e)))
                                                      (lambda ()
                                                        (connector-add-credential! credentials parent)
                                                        'accepted)))))
                          (selector
                           (connector-test-worker fixture
                                                  (lambda ()
                                                    (thread-receive)
                                                    (values->list
                                                     (connector-next-credential! credentials now now now))))))
                     ;; Alternate release order; no sleeps or assumed scheduling.
                     (for-each (lambda (worker) (thread-send worker 'start))
                               (if (even? iteration) [adder selector] [selector adder]))
                     (let ((added (thread-join!/error adder 5))
                           (selected (thread-join!/error selector 5)))
                       (check [added selected]
                              => (if (eq? added 'accepted)
                                   ['accepted [#t parent]]
                                   ['closed [#f #f]]))
                       (when (eq? added 'accepted)
                         (check (values->list (connector-next-credential! credentials now now now))
                                => [#f #f]))
                       (check-exception (connector-add-credential! credentials parent) Closed?)
                       (check-exception (connector-next-credential! credentials now now now) Closed?))))
                 (loop (+ iteration 1))))))))

      (test-case "Unix default grant rejection retries a queued parent on a new candidate"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                  server host peer other tls dir)
           (let* ((dids (list-sort string<? [host peer]))
                  (host (car dids))
                  (peer (cadr dids)))
             (using (store (make-memory-keystore #u8(4 5 6))
                           :- Keystore)
               (set! fixture.closers (cons store fixture.closers))
               (store.put-private-key! (client.get-principal peer))
               (using (remote (open-capability-context ":memory:" store)
                              :- CapabilityContext)
                 ;; Close these only after the fixture has closed sockets and
                 ;; joined workers, including on an exceptional test exit.
                 (set! fixture.closers (cons remote fixture.closers))
                 (remote.add-root! other)
                 (client.add-root! peer)
                 (let* ((address (connector-test-listen fixture (UnixAddress (path-expand "retry" dir))))
                        (start (current-time-seconds))
                        (deadline (+ start 20))
                        (expiry (+ start 3600))
                        (parent (client.grant! DELEGATE other host "/network" (+ expiry 100)))
                        (credentials (make-connector-credentials))
                        (owner (TestConnectorMonitor fixture: fixture)))
                   (connector-add-credential! credentials parent)
                   (let (worker
                         (connector-test-worker fixture
                                                (lambda ()
                                                  (for-each
                                                    (lambda (retry?)
                                                      (using (incoming
                                                              (make-handshake
                                                               (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                               remote peer #f DIRECTION-IN start deadline 0)
                                                              :- Handshake)
                                                        (unwind-protect
                                                          (begin
                                                            (check (run-handshake! incoming
                                                                                   (ConnectorMonitor (TestConnectorMonitor fixture: fixture)))
                                                                   => retry?)
                                                            (unless retry?
                                                              (check incoming.reason => reason-auth-failed)))
                                                          (handshake-close! incoming))))
                                                    [#f #t]))))
                     (using ((owner :- TestConnectorMonitor)
                             (credentials :- ConnectorCredentials)
                             (outgoing
                              (connector-connect! (ConnectorMonitor owner) client tls host peer [address]
                                              credentials (- start 7) deadline expiry)
                              :- Handshake))
                       (thread-join!/error worker 10)
                       (check outgoing.phase => 'confirmed)
                       (check credentials.closed? => #t)
                       (check (map car (reverse owner.events))
                              => '(connecting connected identified closed
                                              connecting connected identified open complete))
                       (check (length owner.candidates) => 2)
                       (using (previous (cadr owner.candidates)
                                        :- Handshake)
                         (check previous.phase => 'closed)
                         (check previous.identity-proven? => #t)
                         (check previous.peer-rejected? => #t)
                         (check previous.reason => reason-auth-failed)
                         (check previous.committed? => #f)
                         (check previous.parent => #f)
                         (check (eq? previous.socket outgoing.socket) => #f)
                         (check previous.deadline => deadline))
                       (check (eq? outgoing.parent parent) => #t)
                       (check outgoing.deadline => deadline)
                       (check (> (cadar owner.attempts) (- start 7)) => #t)
                       (handshake-close! outgoing))))))))))

      (test-case "drivers confirm both DID orientations over Unix and mutual TLS after fallback"
        (for-each
          (lambda (unix? smaller?)
            (with-connector-fixture
             (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                      (server : CapabilityContext) host peer other tls dir)
               (let* ((dids (list-sort string<? [host peer]))
                      (host (if smaller? (car dids) (cadr dids)))
                      (peer (if smaller? (cadr dids) (car dids)))
                      (tls (make-tls-context (client.get-principal host)))
                      (address (connector-test-listen fixture
                                                      (if unix? (UnixAddress (path-expand "socket" dir))
                                                          (DNSAddress "localhost" 0))))
                      ;; A past reservation and a shorter inherited deadline catch
                      ;; restarting start or deriving headroom from the deadline.
                      (start (- (current-time-seconds) 7))
                      (deadline (+ start 27))
                      (min-auth-expire (+ start 3600))
                      (config (NetworkConfig handshake-timeout: 43))
                      (limits (ConnectionLimits data-payload: 2048 control-payload: 32768))
                      (parent (Token type: DELEGATE issuer: other audience: host
                                     protocol: "/network" expire: (+ min-auth-expire 3600)))
                      (server-tls (make-tls-context (server.get-principal peer)))
                      (missing (UnixAddress (path-expand "missing" dir)))
                      (owner (TestConnectorMonitor fixture: fixture))
                      (remote-owner (TestConnectorMonitor fixture: fixture))
                      (credentials #f)
                      (incoming #f))
                 (set! fixture.contexts (cons tls (cons server-tls fixture.contexts)))
                 (client.sign! parent)
                 (set! credentials (make-connector-credentials parent))
                 (let (worker
                       (connector-test-worker fixture
                                              (lambda ()
                                                (using (socket (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                               :- StreamSocket)
                                                  (unless unix?
                                                    (set! socket
                                                      (connector-test-socket fixture
                                                                             (ssl-server-upgrade socket server-tls
                                                                                                 timeout: (IOTimeout (seconds->time deadline))))))
                                                  (set! incoming
                                                    (make-handshake socket server peer #f DIRECTION-IN
                                                                    start deadline 0 limits: (ConnectionLimits data-payload: 1024)))
                                                  (using (candidate incoming
                                                                    :- Handshake)
                                                    (check candidate.phase => 'new)
                                                    (check candidate.identity-proven? => (not unix?))
                                                    (check (run-handshake! candidate (ConnectorMonitor remote-owner)) => #t))))))
                   (using (outgoing
                           (thread-join!/error
                            (connector-test-worker fixture
                                                   (lambda ()
                                                     (connector-connect! (ConnectorMonitor owner) client tls host peer
                                                                     (if unix? [missing address (DNSAddress "localhost" 1)]
                                                                         [address missing])
                                                                     credentials start deadline min-auth-expire config: config limits: limits)))
                            10)
                           :- Handshake)
                     (thread-join!/error worker 10)
                     (check outgoing.phase => 'confirmed)
                     (check outgoing.identity-proven? => #t)
                     (check outgoing.unix? => unix?)
                     (check outgoing.initiator? => #t)
                     (check outgoing.host => host)
                     (check outgoing.expected-peer => peer)
                     (check outgoing.peer => peer)
                     (check (eq? outgoing.context client) => #t)
                     (check outgoing.deadline => deadline)
                     (using ((owner :- TestConnectorMonitor)
                             (remote-owner :- TestConnectorMonitor)
                             (credentials :- ConnectorCredentials))
                       (check (map car (reverse owner.attempts)) => [missing address])
                       (check (cadr (cadr owner.attempts)) => start)
                       (check (> (cadar owner.attempts) start) => #t)
                       (check outgoing.headroom => (+ (cadar owner.attempts) 43))
                       (check (map car (reverse owner.events))
                              => '(connecting failed connecting connected identified open complete))
                       (check (map car (reverse remote-owner.events))
                              => '(connected identified admit open complete))
                       (check (member ['connected 'new (not unix?) #f] owner.events) ? pair?)
                       (check (member ['identified (if unix? 'identified 'new) #t #f]
                                      owner.events) ? pair?)
                       (check (member ['open (if smaller? 'ready 'committed) #t (not smaller?)]
                                      owner.events) ? pair?)
                       (check (car owner.events) => '(complete confirmed #t #t))
                       (check (car remote-owner.events) => '(complete confirmed #t #t))
                       (check (member ['open (if smaller? 'committed 'ready) #t smaller?]
                                      remote-owner.events) ? pair?)
                       (check credentials.closed? => #t))
                     (check outgoing.min-auth-expire => min-auth-expire)
                     (check (eq? outgoing.parent parent) => #t)
                     (check (eq? outgoing.limits limits) => #t)
                     (check outgoing.committed? => #t)
                     (using (incoming
                             :- Handshake)
                       (check incoming.phase => 'confirmed)
                       (check incoming.peer => host)
                       (check incoming.min-auth-expire => min-auth-expire)
                       (check outgoing.output-limits.data-payload => 1024)
                       (check incoming.output-limits.control-payload => 32768)
                       (let (bytes (make-u8vector 4))
                         (check (Writer-write outgoing.writer #u8(1 2 3 4)) => 4)
                         (check (Reader-read incoming.reader bytes 0 4 4) => 4)
                         (check bytes => #u8(1 2 3 4))
                         (check (Writer-write incoming.writer #u8(5 6 7 8)) => 4)
                         (check (Reader-read outgoing.reader bytes 0 4 4) => 4)
                         (check bytes => #u8(5 6 7 8)))
                       (handshake-close! incoming))
                     (handshake-close! outgoing)))))))
          [#t #t #f #f] [#t #f #t #f]))

      (test-case "repeated DNS credential retries retain the current full endpoint sequence"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                  (server : CapabilityContext) host peer other tls dir)
           (let* ((address (connector-test-listen fixture (DNSAddress "localhost" 0)))
                  (endpoint (ServerSocket-address fixture.listener))
                  (missing (UnixAddress (path-expand "missing-retry" dir)))
                  (start (current-time-seconds))
                  (deadline (+ start 15))
                  (server-tls (make-tls-context (server.get-principal peer))))
             (set! fixture.contexts (cons server-tls fixture.contexts))
             (using ((owner (TestConnectorMonitor fixture: fixture) :- TestConnectorMonitor)
                     (credentials (make-connector-credentials) :- ConnectorCredentials))
               (for-each
                 (lambda (expiry)
                   (connector-add-credential! credentials
                                              (client.grant! DELEGATE other host "/network" expiry)))
                 [(+ start 7200) (+ start 7300)])
               (let (worker
                     (connector-test-worker fixture
                                            (lambda ()
                                              (for-each
                                                (lambda (last?)
                                                  (using (socket
                                                          (ssl-server-upgrade
                                                           (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                           server-tls timeout: (IOTimeout 5))
                                                          :- StreamSocket)
                                                    (connector-test-socket fixture socket)
                                                    (using (incoming
                                                            (make-handshake socket server peer #f DIRECTION-IN start deadline 0)
                                                            :- Handshake)
                                                      (unwind-protect
                                                        (begin
                                                          (check (handshake-identify! incoming) => #t)
                                                          ;; A larger peer sends readiness after AUTH.
                                                          ;; Consume it before the scripted rejection so
                                                          ;; TLS close cannot race that write into EPIPE.
                                                          (when incoming.smaller?
                                                            (let (bytes (make-u8vector frame-header-size))
                                                              (Reader-read incoming.reader bytes 0 frame-header-size frame-header-size)
                                                              (using (header (decode-frame-header bytes) :- FrameHeader)
                                                                (check header.type => frame-accept)
                                                                (Reader-read incoming.reader
                                                                  (make-u8vector header.payload-length)
                                                                  0 header.payload-length header.payload-length))))
                                                          (when last? (ServerSocket-close fixture.listener))
                                                          (handshake-reject! incoming reason-auth-failed))
                                                        (handshake-close! incoming)))))
                                                [#f #t]))))
                 (check-exception
                  (connector-connect! (ConnectorMonitor owner) client tls host peer [address missing]
                                  credentials start deadline (+ start 3600))
                  SocketConnectError?)
                 (thread-join!/error worker 5)
                 (check (map car (reverse owner.attempts))
                        => [missing address endpoint endpoint missing])
                 (check (length owner.candidates) => 2)
                 (check credentials.closed? => #t)))))))

      (test-case "stable Unix-first exhaustion preserves setup errors and closes the queue"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) client server host peer other tls dir)
           (let* ((start (current-time-seconds))
                  (unix-a (UnixAddress (path-expand "absent-a" dir)))
                  (unix-b (UnixAddress (path-expand "absent-b" dir)))
                  ;; Closed listeners give deterministic refused loopback targets.
                  (tcp-a (connector-test-listen fixture (InetAddress localhost4 0))))
             (ServerSocket-close fixture.listener)
             (let (tcp-b (connector-test-listen fixture (InetAddress localhost4 0)))
               (ServerSocket-close fixture.listener)
               (using ((owner (TestConnectorMonitor fixture: fixture)
                              :- TestConnectorMonitor)
                       (credentials (make-connector-credentials)
                                    :- ConnectorCredentials))
                 (let (result
                       (with-catch values
                         (lambda ()
                           (connector-connect! (ConnectorMonitor owner) client tls host peer
                                           [tcp-a unix-a tcp-b unix-b] credentials
                                           start (+ start 10) (+ start 3600)))))
                   (check result ? OSError?)
                   (check (eq? result (cadar owner.failures)) => #t)
                   (check (map car (reverse owner.attempts)) => [unix-a unix-b tcp-a tcp-b])
                   (check (map car (reverse owner.failures)) => [unix-a unix-b tcp-a tcp-b])
                   (check owner.candidates => [])
                   (check (map car (reverse owner.events))
                          => '(connecting failed connecting failed connecting failed connecting failed))
                   (check credentials.closed? => #t)
                   (check-exception
                    (connector-next-credential! credentials start start start) Closed?))))))))

      (test-case "setup monitor exceptions do not fall through to another address"
        (for-each
          (lambda (fail-at)
            (with-connector-fixture
             (lambda (fixture client server host peer other tls dir)
               (let ((address (UnixAddress (path-expand "absent" dir)))
                     (start (current-time-seconds)))
                 (using ((owner (TestConnectorMonitor fixture: fixture fail-at: fail-at)
                                :- TestConnectorMonitor)
                         (credentials (make-connector-credentials)
                                      :- ConnectorCredentials))
                   (check-exception
                    (connector-connect! (ConnectorMonitor owner) client tls host peer [address address]
                                    credentials start (+ start 10) (+ start 3600))
                    (lambda (e) (eq? e 'connector-owner-failed)))
                   (check (map car (reverse owner.events))
                          => (if (eq? fail-at 'connecting) '(connecting) '(connecting failed)))
                   (check (length owner.attempts) => 1)
                   (check owner.candidates => [])
                   (check credentials.closed? => #t))))))
          '(connecting failed)))

      (test-case "inbound admission refusal is terminal despite queued parents"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                  server host peer other tls dir)
           (let* ((address (connector-test-listen fixture (UnixAddress (path-expand "refused" dir))))
                  (start (current-time-seconds))
                  (deadline (+ start 10))
                  (parent (client.grant! DELEGATE other host "/network" (+ start 7200))))
             (using ((owner (TestConnectorMonitor fixture: fixture)
                            :- TestConnectorMonitor)
                     (remote (TestConnectorMonitor fixture: fixture admit?: #f)
                             :- TestConnectorMonitor)
                     (credentials (make-connector-credentials)
                                  :- ConnectorCredentials))
               (connector-add-credential! credentials parent)
               (let (worker
                     (connector-test-worker fixture
                                            (lambda ()
                                              (using (incoming
                                                      (make-handshake
                                                       (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                       server peer #f DIRECTION-IN start deadline 0)
                                                      :- Handshake)
                                                (run-handshake! incoming (ConnectorMonitor remote))))))
                 (check (connector-connect! (ConnectorMonitor owner) client tls host peer [address address]
                                        credentials start deadline (+ start 3600)) => #f)
                 (check (thread-join!/error worker 5) => #f)
                 (check (map car (reverse remote.events)) => '(connected identified admit closed))
                 (check (map car (reverse owner.events)) => '(connecting connected identified closed))
                 (using (candidate (car owner.candidates)
                                   :- Handshake)
                   (check candidate.identity-proven? => #t)
                   (check candidate.reason => reason-refused)
                   (check candidate.peer-rejected? => #t)
                   (check candidate.committed? => #f))
                 (check (length owner.attempts) => 1)
                 (check credentials.closed? => #t)))))))

      (test-case "proven lifetime rejection retries, peer no-credentials and postcommit rejection do not"
        (for-each
          (lambda (reason committed?)
            (with-connector-fixture
             (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                      server host peer other tls dir)
               (let* ((dids (list-sort string<? [host peer]))
                      (host (car dids))
                      (peer (cadr dids))
                      (address (connector-test-listen fixture (UnixAddress (path-expand "reject" dir))))
                      (start (current-time-seconds))
                      (deadline (+ start 10))
                      (retry? (= reason reason-lifetime))
                      (parent (client.grant! DELEGATE other host "/network" (+ start 7200))))
                 (using ((owner (TestConnectorMonitor fixture: fixture)
                                :- TestConnectorMonitor)
                         (credentials (make-connector-credentials)
                                      :- ConnectorCredentials))
                   (connector-add-credential! credentials parent)
                   (let (worker
                         (connector-test-worker fixture
                                                (lambda ()
                                                  (for-each
                                                    (lambda (retrying?)
                                                      (using (incoming
                                                              (make-handshake
                                                               (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                               server peer #f DIRECTION-IN start deadline 0)
                                                              :- Handshake)
                                                        (unwind-protect
                                                          (if retrying?
                                                            (check (run-handshake! incoming
                                                                                   (ConnectorMonitor (TestConnectorMonitor fixture: fixture))) => #t)
                                                            (begin
                                                              (check (handshake-identify! incoming) => #t)
                                                              (when committed?
                                                                (check (handshake-authenticate! incoming) => #t)
                                                                (check (handshake-ready! incoming) => #t)
                                                                (check (handshake-commit! incoming) => #t))
                                                              (check (handshake-reject! incoming reason) => #f)))
                                                          (handshake-close! incoming))))
                                                    (if retry? [#f #t] [#f])))))
                     (let (result
                           (connector-connect! (ConnectorMonitor owner) client tls host peer [address address]
                                           credentials start deadline (+ start 3600)))
                       (if retry?
                         (using (candidate result
                                           :- Handshake)
                           (check candidate.phase => 'confirmed)
                           (check (eq? candidate.parent parent) => #t)
                           (handshake-close! candidate))
                         (check result => #f)))
                     (thread-join!/error worker 5)
                     (check (length owner.attempts) => (if retry? 2 1))
                     (using (rejected (if retry? (cadr owner.candidates) (car owner.candidates))
                                      :- Handshake)
                       (check rejected.identity-proven? => #t)
                       (check rejected.peer-rejected? => #t)
                       (check rejected.reason => reason)
                       (check rejected.committed? => committed?))
                     (check credentials.closed? => #t)))))))
          [reason-lifetime reason-no-credentials reason-auth-failed] [#f #f #t]))

      (test-case "local no-credentials consumes parents before ordinary exhaustion"
        (with-connector-fixture
          (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                   server host peer other tls dir)
            (let* ((address (connector-test-listen fixture (UnixAddress (path-expand "headroom" dir))))
                   (start (current-time-seconds))
                   (expiry (+ start 60))
                   (parent (client.grant! DELEGATE other host "/network" (+ start 7200))))
              (using ((owner (TestConnectorMonitor fixture: fixture)
                             :- TestConnectorMonitor)
                      (credentials (make-connector-credentials)
                                   :- ConnectorCredentials))
                (connector-add-credential! credentials parent)
                (let (worker
                      (connector-test-worker fixture
                                             (lambda ()
                                               (for-each
                                                 (lambda (attempt)
                                                   (using (socket (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                                  :- StreamSocket)
                                                     (let (hello (encode-frame-payload frame-hello
                                                                                       [1 peer (make-u8vector 32) 0 1024 32768 lease-mode-fixed]))
                                                       (Writer-write (socket.writer)
                                                                     (encode-frame-header
                                                                      (FrameHeader type: frame-hello stream-id: 0
                                                                                   payload-length: (u8vector-length hello))))
                                                       (Writer-write (socket.writer) hello)
                                                       (check (connector-test-eof socket) ? positive?))))
                                                 [0 1]))))
                  ;; Parent lifetime passes selection, but the requested token
                  ;; expiration cannot satisfy this physical attempt's headroom.
                  (check (connector-connect! (ConnectorMonitor owner) client tls host peer [address]
                                             credentials start (+ start 10) expiry
                                             config: (NetworkConfig handshake-timeout: 120)) => #f)
                  (thread-join!/error worker 5)
                  (check (map car (reverse owner.events))
                         => '(connecting connected closed connecting connected closed))
                  (check (length owner.candidates) => 2)
                  (for-each
                    (lambda ((candidate : Handshake))
                      (check candidate.reason => reason-no-credentials)
                      (check candidate.peer-rejected? => #f)
                      (check candidate.identity-proven? => #f)
                      (check candidate.committed? => #f))
                    owner.candidates)
                  (check credentials.closed? => #t)))))))

      (test-case "owner exceptions abort rather than retry, including after commitment"
        (for-each
          (lambda (fail-at)
            (with-connector-fixture
             (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                      server host peer other tls dir)
               ;; A larger outgoing DID reaches open! only after receiving COMMIT.
               (let* ((dids (list-sort string<? [host peer]))
                      (host (cadr dids))
                      (peer (car dids))
                      (address (connector-test-listen fixture (UnixAddress (path-expand "callback" dir))))
                      (start (current-time-seconds))
                      (deadline (+ start 10))
                      (parent (client.grant! DELEGATE other host "/network" (+ start 7200))))
                 (using ((owner (TestConnectorMonitor fixture: fixture fail-at: fail-at)
                                :- TestConnectorMonitor)
                         (credentials (make-connector-credentials)
                                      :- ConnectorCredentials))
                   (connector-add-credential! credentials parent)
                   (let (worker
                         (connector-test-worker fixture
                                                (lambda ()
                                                  (using (incoming
                                                          (make-handshake
                                                           (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                           server peer #f DIRECTION-IN start deadline 0)
                                                          :- Handshake)
                                                    (with-catch values
                                                      (lambda ()
                                                        (run-handshake! incoming
                                                                        (ConnectorMonitor (TestConnectorMonitor fixture: fixture)))))))))
                     (check-exception
                      (connector-connect! (ConnectorMonitor owner) client tls host peer [address address]
                                      credentials start deadline (+ start 3600))
                      (lambda (e) (eq? e 'connector-owner-failed)))
                     (let (result (thread-join!/error worker 5))
                       (check (or (eq? result #t) (IOError? result) (OSError? result)) => #t))
                     (check (length owner.attempts) => 1)
                     (check owner.failures => [])
                     (check (caar owner.events) => 'closed)
                     (check (length owner.candidates) => 1)
                     (using (candidate (car owner.candidates)
                                       :- Handshake)
                       (check candidate.phase => 'closed)
                       (check candidate.committed? => (and (memq fail-at '(open complete)) #t)))
                     (check credentials.closed? => #t)))))))
          '(connected identified open complete)))

      (test-case "unproven refusals and malformed frames never trigger credential retry"
        (for-each
          (lambda (reason)
            (with-connector-fixture
              (lambda ((fixture : ConnectorFixture) (client : CapabilityContext)
                       server host peer other tls dir)
                (let* ((address (connector-test-listen fixture (UnixAddress (path-expand "early" dir))))
                       (start (current-time-seconds))
                       (parent (client.grant! DELEGATE other host "/network" (+ start 7200))))
                  (using ((owner (TestConnectorMonitor fixture: fixture)
                                 :- TestConnectorMonitor)
                          (credentials (make-connector-credentials)
                                       :- ConnectorCredentials))
                    (connector-add-credential! credentials parent)
                    (let (worker
                          (connector-test-worker fixture
                                                 (lambda ()
                                                   (using (socket (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                                  :- StreamSocket)
                                                     ;; Complete the outgoing HELLO before rejecting;
                                                     ;; otherwise closure can cancel its not-yet-started
                                                     ;; writer, correctly producing terminal Closed.
                                                     (let (bytes (make-u8vector frame-header-size))
                                                       (Reader-read (socket.reader) bytes 0 frame-header-size frame-header-size)
                                                       (using (hello (decode-frame-header bytes) :- FrameHeader)
                                                         (check hello.type => frame-hello)
                                                         (Reader-read (socket.reader)
                                                                      (make-u8vector hello.payload-length)
                                                                      0 hello.payload-length hello.payload-length)))
                                                     (let* ((payload (if reason (encode-frame-payload frame-reject [reason])
                                                                         (make-u8vector 55)))
                                                            (header (encode-frame-header
                                                                     (FrameHeader type: (if reason frame-reject frame-hello)
                                                                                  stream-id: 0 payload-length: (u8vector-length payload)))))
                                                       (Writer-write (socket.writer) header)
                                                       (unless (zero? (u8vector-length payload))
                                                         (Writer-write (socket.writer) payload))
                                                       (check (connector-test-eof socket) => 0)
                                                       #t)))))
                      (let (result
                            (with-catch values
                                        (lambda ()
                                          (connector-connect! (ConnectorMonitor owner) client tls host peer [address address]
                                                              credentials start (+ start 10) (+ start 3600)))))
                        (if reason (check result => #f) (check result ? IOError?)))
                      (check (thread-join!/error worker 5) => #t)
                      (check (map car (reverse owner.events)) => '(connecting connected closed))
                      (check (length owner.attempts) => 1)
                      (using (candidate (car owner.candidates)
                                        :- Handshake)
                        (check candidate.identity-proven? => #f)
                        (check candidate.committed? => #f))
                      (check credentials.closed? => #t)))))))
          [reason-auth-failed reason-lifetime reason-no-credentials #f]))

      (test-case "expected hostname with a different certificate key closes the client"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) client (server : CapabilityContext)
                  host peer other tls dir)
           (let* ((address (connector-test-listen fixture (DNSAddress "localhost" 0)))
                  (claimed (make-self-signed-tls-context
                            (PrivKey-key (server.get-principal other)) (did->hostname peer)))
                  (start (current-time-seconds)))
             (check claimed ? SSL_CTX?)
             (set! fixture.contexts (cons claimed fixture.contexts))
             (let (worker
                   (connector-test-worker fixture
                                          (lambda ()
                                            (using (raw (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                                                        :- StreamSocket)
                                              (using (socket (connector-test-socket fixture
                                                                                    (ssl-server-upgrade raw claimed timeout: (IOTimeout 5)))
                                                             :- StreamSocket)
                                                ;; Successful mutual TLS rules out a hostname failure.
                                                (let-values (((hostname did)
                                                              (tls-certificate->hostname+did (TLS-peer-certificate socket))))
                                                  (check did => host))
                                                (socket.set-input-timeout! (IOTimeout 4))
                                                (let (result
                                                      (with-catch values
                                                        (lambda ()
                                                          (Reader-read (socket.reader) (make-u8vector 1) 0 1 0))))
                                                  ;; Full transport abort may surface as TLS's
                                                  ;; unexpected-EOF error rather than orderly EOF.
                                                  (check (or (eqv? result 0) (ssl-error? result)) => #t))
                                                #t)))))
               (check-exception
                (thread-join!/error
                 (connector-test-worker fixture
                                        (lambda ()
                                          (using (candidate (connect-handshake client tls host peer address
                                                                               start (+ start 10) (+ start 3600))
                                                            :- Handshake)
                                            (connector-test-socket fixture candidate.socket)
                                            (handshake-close! candidate))))
                 8)
                (lambda (e)
                  (and (IOError? e) (not (ssl-error? e)) (not (Timeout? e)))))
               (check (thread-join!/error worker 8) => #t))))))

      (test-case "expired establishment or authorization never queues a connection"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) client server host peer other tls dir)
           (let* ((address (connector-test-listen fixture (DNSAddress "localhost" 0)))
                  (now (current-time-seconds)))
             (for-each
               (lambda (deadline min-auth-expire predicate)
                 (check-exception
                  (thread-join!/error
                   (connector-test-worker fixture
                                          (lambda ()
                                            (using (candidate (connect-handshake client tls host peer address
                                                                                 (- now 10) deadline min-auth-expire)
                                                              :- Handshake)
                                              (connector-test-socket fixture candidate.socket)
                                              (handshake-close! candidate))))
                   2)
                  predicate)
                 (ServerSocket-set-input-timeout! fixture.listener (IOTimeout 0.1))
                 (check-exception
                  (thread-join!/error
                   (connector-test-worker fixture
                                          (lambda () (connector-test-socket fixture (ServerSocket-accept fixture.listener)))) 2)
                  Timeout?))
               [(- now 1) (+ now 30)]
               [(+ now 3600) (- now 1)]
               [Timeout? Closed?])))))

      (test-case "silent raw TCP peer consumes the supplied TLS deadline and observes EOF"
        (with-connector-fixture
         (lambda ((fixture : ConnectorFixture) client server host peer other tls dir)
           (let* ((address (connector-test-listen fixture (DNSAddress "localhost" 0)))
                  (start (- (current-time-seconds) 10))
                  (deadline (+ (current-time-seconds) 2))
                  (owner (TestConnectorMonitor fixture: fixture))
                  (credentials (make-connector-credentials))
                  (worker
                   (connector-test-worker fixture
                                          (lambda ()
                                            (connector-connect! (ConnectorMonitor owner) client tls host peer [address address]
                                                            credentials start deadline (+ start 3600)
                                                            config: (NetworkConfig handshake-timeout: 30))))))
             (using (raw (connector-test-socket fixture (ServerSocket-accept fixture.listener))
                         :- StreamSocket)
               ;; The raw peer sends nothing, but draining ClientHello permits a
               ;; clean TCP EOF rather than an unread-data reset.
               (check (connector-test-eof raw) ? positive?)
               (check-exception (thread-join!/error worker 1) Timeout?)
               (using ((owner :- TestConnectorMonitor)
                       (credentials :- ConnectorCredentials))
                 (check (map car (reverse owner.events)) => '(connecting failed))
                 (check (length owner.attempts) => 1)
                 (check (cadar owner.failures) ? Timeout?)
                 (check credentials.closed? => #t))
               (check (>= (current-time-seconds) deadline) => #t)
               (check (< (current-time-seconds) (+ deadline 2)) => #t))))))))))
