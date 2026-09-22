;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Public renewable leases and linked IO over real Unix and TLS connections
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/error
           :std/interface
           :std/io
           :std/net/address
           :std/sync/threads
           :std/time/time
           :std/time/timeout
           ../network
           ../keystore/interface
           ../keystore/memory
           ../ucan/interface
           ../ucan/context
           ../ucan/ext
           (only-in ../ucan/util
                    marshal-token)
           (only-in "./network-api-test.ss"
                    call-with-api-networks
                    APIMonitor
                    APIMonitor-events
                    APIMonitor-mutex
                    APIMonitor-connection?-set!
                    APIMonitor-stream?-set!
                    APIMonitor-allow-hook-set!
                    api-record!
                    api-await
                    api-check-pairs!)
           ./connection
           ./handshake
           ./renewal
           ./wire
           (only-in ./stream
                    StreamIO-input-cv
                    StreamIO-output-cv
                    with-stream-io-lock
                    stream-wake-signal!))
   (export renewal-test
           renewal-wait!
           renewal-event-count
           renewal-test-entry
           renewal-pulse!
           renewal-stream-identities
           renewal-check-identities!
           renewal-inject!
           renewal-disallow-new!)

   ;; With up to sixteen linked streams the lead is 3*T+1 = 7 seconds.
   ;; Two root-backed cycles take about fourteen seconds, not two immediate
   ;; one-second extensions. Neither application IO direction has a timeout here.
   (def renewal-test-config
     (NetworkConfig connection-ttl: 14 stream-ttl: 14
                    handshake-timeout: 8 stream-open-timeout: 4 renewal-timeout: 2))

   ;; Gates need a little more room than the timer-only cases. These connections
   ;; are fixed, so this larger renewal budget does not start an automatic timer.
   (def renewal-gate-config
     (NetworkConfig connection-ttl: 30 stream-ttl: 30
                    handshake-timeout: 8 stream-open-timeout: 4 renewal-timeout: 4))

   (def renewal-test-bytes (list->u8vector (iota 64)))

   ;; One absolute outer cutoff per phase; polling observes real publication, not
   ;; a guessed sleep long enough for a renewal to have happened.
   (def (renewal-wait! (ready?   : :procedure)
                       (deadline : :real))
     => :t
     (let loop ()
       (or (ready?)
           (begin
             (when (>= (##current-time-point) deadline)
               (raise-timeout renewal-wait! "Renewal test observation timed out"))
             (thread-sleep! .01)
             (loop)))))

   (def (renewal-waiting? (worker : :thread)
                          (object : :t))
     => :boolean
     (let (state (thread-state worker))
       (and (thread-state-waiting? state)
            (eq? (thread-state-waiting-for state) object))))

   (def (renewal-event-count (monitor : APIMonitor)
                             (kind    : :symbol))
     => :fixnum
     (do-with-lock (APIMonitor-mutex monitor)
       (length (filter (lambda (event) (eq? (car event) kind))
                       (APIMonitor-events monitor)))))

   ;; Denying subsequent allow callbacks must not deny reauthorization. Record
   ;; connection allow calls too: returning false alone need not be observable if
   ;; an erroneous caller ignores the answer. Pair checks cover repeated opens.
   (def (renewal-disallow-new! (ma : APIMonitor)
                               (mb : APIMonitor))
     => :void
     (for-each
       (lambda (monitor)
         (APIMonitor-connection?-set! monitor #f)
         (APIMonitor-stream?-set! monitor #f)
         (APIMonitor-allow-hook-set! monitor
           (lambda (peer direction) (api-record! monitor 'unexpected-allow peer))))
       [ma mb]))

   (def (renewal-connection-metadata (conn : Connection))
     => :list
     [(conn.network) (conn.address) (conn.peer) (conn.peer-address) (conn.direction)])

   (def (renewal-stream-identities (streams : :list))
     => :list
     (map (lambda ((stream : Stream))
            [stream (stream.connection) (stream.id) (stream.direction)
                    (stream.protocol) (stream.reader) (stream.writer)])
          streams))

   (def (renewal-check-identities! (snapshots : :list))
     => :void
     (for-each
       (lambda (snapshot)
         (using (stream (car snapshot) :- Stream)
           (check-eq? (stream.connection) (list-ref snapshot 1))
           (check (stream.id) => (list-ref snapshot 2))
           (check (stream.direction) => (list-ref snapshot 3))
           (check (stream.protocol) => (list-ref snapshot 4))
           (check-eq? (stream.reader) (list-ref snapshot 5))
           (check-eq? (stream.writer) (list-ref snapshot 6))))
       snapshots))

   ;; Four bytes fit the fixture window; each public write is a whole-slice call.
   (def (renewal-pulse! (stream : Stream)
                        (peer   : Stream))
     => :void
     (let (buffer (make-u8vector 4))
       (check (Writer-write (stream.writer) #u8(1 3 5 7)) => 4)
       (check (Reader-read (peer.reader) buffer 0 4 4) => 4)
       (check buffer => #u8(1 3 5 7))
       (check (Writer-write (peer.writer) #u8(8 6 4 2)) => 4)
       (check (Reader-read (stream.reader) buffer 0 4 4) => 4)
       (check buffer => #u8(8 6 4 2))))

   ;; Internal access is for observation/gating only. Never install an expiration,
   ;; replace a context, or drive a renewal transition from the test.
   (def (renewal-test-entry (conn   : Connection)
                            (stream : Stream))
     => ConnectionOpening
     (using (impl (interface-instance-object conn) :- NetworkConnection)
       (do-with-lock impl.parent.mx
         (or (find (lambda ((entry : ConnectionOpening)) (eq? entry.stream stream))
                   impl.openings)
             (error "Missing linked stream entry" (stream.id))))))

   (def (renewal-context-mutex (conn : Connection))
     => :mutex
     (using (impl (interface-instance-object conn) :- NetworkConnection)
       (slot-ref (interface-instance-object impl.candidate.context) 'mutex)))

   ;; Observe the actual preparation/verification worker blocked on its context.
   ;; The context gate does not stop the transport or the service's fixed cutoff.
   (def (renewal-gated-round (impl  : NetworkConnection)
                             (scope : RenewalScope)
                             (gate  : :mutex))
     => (Maybe RenewalRound)
     (with-stream-io-lock impl.parent.mx
       (using (round scope.active :? RenewalRound)
         (and round round.worker (renewal-waiting? round.worker gate) round))))

   ;; Deliberately malformed protocol traffic still goes through the one real
   ;; scheduler/writer. No socket alias, competing reader, or direct dispatch call.
   (def (renewal-inject! (conn   : Connection)
                         (type   : :fixnum)
                         (id     : :integer)
                         (fields : :list))
     => :void
     (using (impl (interface-instance-object conn) :- NetworkConnection)
       (let (work
             (do-with-lock impl.parent.mx
               (let* ((scheduler impl.parent.scheduler)
                      (size (frame-payload-size type fields (ConnectionScheduler-limits scheduler)))
                      (work (connection-control-reserve! scheduler type id size #t)))
                 (connection-control-fill! work fields)
                 (stream-wake-signal! impl.parent.wake)
                 work)))
         ;; Output fairness may choose DATA before a queued control. Wait for
         ;; actual release before using subsequent bytes as an ordering witness.
         (renewal-wait! (lambda () (do-with-lock impl.parent.mx (eq? (ConnectionWork-state work) 'released)))
                        (+ (##current-time-point) 2))
         (void))))

   (def (check-explicit-renewal (mode : :symbol))
     => :void
     (call-with-api-networks mode
       (lambda ((a : Network) (b : Network) ma mb address start)
         (let* ((addr (b.listen! (address "explicit")))
                (conn (a.connect! (b.host) [addr]))
                (peer (b.connect! (a.host) []))
                (metadata (map renewal-connection-metadata [conn peer]))
                (out (Connection-open-stream! conn "/renewal/out/v0" lease: 'connection))
                (in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id out)))))
                (back (Connection-open-stream! peer "/renewal/back/v0" lease: 'connection))
                (back-in (api-await ma 'stream-open (lambda (s) (= (Stream-id s) (Stream-id back)))))
                (fixed (Connection-open-stream! conn "/renewal/fixed/v0"))
                (fixed-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id fixed)))))
                (fixed-expire (Stream-expire fixed))
                (streams [out in back back-in])
                (identities (renewal-stream-identities streams))
                (deadline (+ (##current-time-point) 16)))
           (check (Connection-direction conn) => DIRECTION-OUT)
           (check (Connection-direction peer) => DIRECTION-IN)
           (renewal-disallow-new! ma mb)
           (for-each
             (lambda ((network : Network) (other : Network) expected)
               ;; Advance past the actual stream grants too, forcing an exchange
               ;; rather than passing with already-covering root credentials.
               (let* ((old (map Stream-expire streams))
                      (target (+ 4 (apply max (Connection-expire conn) old))))
                 (check-eq? (network.connect! (other.host) [] expire: target) expected)
                 (renewal-wait!
                  (lambda ()
                    (and (>= (Connection-expire conn) target)
                         (>= (Connection-expire peer) target)
                         (andmap (lambda (s) (>= (Stream-expire s) target)) streams)))
                  deadline)
                 (for-each (lambda (s before) (check (> (Stream-expire s) before) => #t)) streams old)
                 (check (Stream-expire out) => (Stream-expire in))
                 (check (Stream-expire back) => (Stream-expire back-in))
                 (check (map renewal-connection-metadata [conn peer]) => metadata)
                 (renewal-check-identities! identities)
                 (check (Stream-expire fixed) => fixed-expire)
                 (check (Stream-expire fixed-in) => fixed-expire)
                 (renewal-pulse! out in)
                 (renewal-pulse! back back-in)
                 (renewal-pulse! fixed fixed-in)))
             [a b] [b a] [conn peer])
           (check-eq? (a.connect! (b.host) []) conn)
           (check-eq? (b.connect! (a.host) [] expire: (Connection-expire peer)) peer)
           (for-each
             (lambda (monitor)
               (check (renewal-event-count monitor 'connection-open) => 1)
               (check (renewal-event-count monitor 'stream-open) => 3)
               (check (renewal-event-count monitor 'unexpected-allow) => 0)
               (check (renewal-event-count monitor 'stream-close) => 0))
             [ma mb])))
       new-network renewal-test-config))

   ;; Keep the single-endpoint blocked-IO cases separate. Here both timers
   ;; run normally; context gates expose REQUEST/OFFER coalescing on each cycle.
   (def (check-dual-automatic-renewal (mode : :symbol))
     => :void
     (call-with-api-networks mode
       (lambda ((a : Network) (b : Network) ma mb address start)
         (let* ((addr (b.listen! (address "dual-automatic")))
                (conn (a.connect! (b.host) [addr] lease: 'renewable))
                (peer (api-await mb 'connection-open (lambda (_) #t)))
                (_ (check-eq? (b.connect! (a.host) [] lease: 'renewable) peer))
                (out (Connection-open-stream! conn "/renewal/dual/v0" lease: 'connection))
                (in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id out)))))
                (metadata (map renewal-connection-metadata [conn peer]))
                (identities (renewal-stream-identities [out in]))
                (gate-a (renewal-context-mutex conn))
                (gate-b (renewal-context-mutex peer))
                (deadline (+ (##current-time-point) 32))
                (pulse-at 0))
           (def (pulse-when-due!)
             => :void
             (when (>= (##current-time-point) pulse-at)
               (renewal-pulse! out in)
               (set! pulse-at (+ (##current-time-point) .25))))
           (for-each
             (lambda (s)
               (Stream-set-input-timeout! s (IOTimeout 4))
               (Stream-set-output-timeout! s (IOTimeout 4)))
             [out in])
           (renewal-disallow-new! ma mb)
           (using ((local (interface-instance-object conn) :- NetworkConnection)
                   (remote (interface-instance-object peer) :- NetworkConnection)
                   (entry (renewal-test-entry conn out) :- ConnectionOpening)
                   (incoming (renewal-test-entry peer in) :- ConnectionOpening))
             (let loop ((id 1) (old (Connection-expire conn)) (last-start 0))
               (let ((round #f) (other #f) (request #f) (wire #f)
                     (cutoff 0) (request-cutoff 0) (began 0))
                 (with-stream-io-lock gate-b
                   (with-stream-io-lock gate-a
                     (set! round
                       (renewal-wait!
                        (lambda ()
                          (pulse-when-due!)
                          (renewal-gated-round local local.renewal gate-a))
                        deadline))
                     (with-stream-io-lock local.parent.mx
                       (set! cutoff (RenewalRound-deadline round))
                       (set! began (- (RenewalRound-headroom round) 2))
                       (check local.parent.initiator? => #t)
                       (check local.renewal.coordinator? => #t)
                       (check local.renewal.automatic? => #t)
                       (check (RenewalRound-coordinator? round) => #t)
                       (check (RenewalRound-id round) => id)
                       (check (RenewalRound-target round) => (+ old 1))
                       (check (RenewalRound-adaptive? round) => #t)
                       (check (>= began (+ last-start 2)) => #t))
                     ;; The OFFER cannot escape gate-a. The responder's own
                     ;; timer therefore has to publish its real adaptive REQUEST.
                     (set! request
                       (renewal-wait!
                        (lambda ()
                          (with-stream-io-lock local.parent.mx
                            (using (q local.renewal.remote-request :? RenewalRequest)
                              (and q (= q.id id) (eq? q.state 'pending) q))))
                        cutoff))
                     (with-stream-io-lock remote.parent.mx
                       (set! wire remote.renewal.wire-request)
                       (set! request-cutoff (RenewalRequest-deadline wire))
                       (check remote.parent.initiator? => #f)
                       (check remote.renewal.coordinator? => #f)
                       (check remote.renewal.automatic? => #t)
                       (check remote.renewal.active => #f)
                       (check remote.renewal.owned => [])
                       (check remote.renewal.attempted => old)
                       (check request-cutoff => (+ remote.renewal.last-auto-start 2))
                       (check (RenewalRequest-id wire) => id)
                       (check (RenewalRequest-target wire) => (+ old 1))
                       (check (RenewalRequest-adaptive? wire) => #t)
                       (check (RenewalRequest-state wire) => 'sent))
                     (with-stream-io-lock local.parent.mx
                       (check-eq? local.renewal.active round)
                       (check local.renewal.owned => [round])
                       (check local.renewal.requests => [])
                       (check local.renewal.request-id => id)
                       (check (RenewalRequest-target request) => (+ old 1))
                       (check (RenewalRequest-deadline request) => request-cutoff)
                       ;; Either timer may win admission, but automatic interest
                       ;; must join that one operation, not create another round.
                       (using (operation (RenewalRound-operation round) :- RenewalOperation)
                         (check (or operation.automatic? (eq? operation.request request)) => #t)
                         (check operation.target => (+ old 1))
                         (check operation.deadline => cutoff)))
                     (renewal-pulse! out in))
                   (set! other
                     (renewal-wait! (lambda () (renewal-gated-round remote remote.renewal gate-b))
                                    (min cutoff request-cutoff)))
                   (with-stream-io-lock remote.parent.mx
                     (check (RenewalRound-coordinator? other) => #f)
                     (check (RenewalRound-id other) => id)
                     (check (RenewalRound-target other) => (+ old 1))
                     (check (RenewalRound-deadline other) => cutoff)
                     (check remote.renewal.owned => [other])
                     (check remote.renewal.deferred => #f)
                     (check-eq? remote.renewal.wire-request wire)
                     (check (RenewalRequest-deadline wire) => request-cutoff))
                   (with-stream-io-lock local.parent.mx
                     (check-eq? local.renewal.active round)
                     (check (RenewalRound-phase round) => 'offered)
                     (check (RenewalRound-target round) => (+ old 1))
                     (check (RenewalRound-deadline round) => cutoff)
                     (check local.renewal.owned => [round]))
                   (renewal-pulse! out in))
                 (renewal-wait!
                  (lambda ()
                    (and (> (Connection-expire conn) old)
                         (= (Connection-expire conn) (Connection-expire peer))
                         (>= (Stream-expire out) (Connection-expire conn))
                         (= (Stream-expire out) (Stream-expire in))
                         (andmap
                          (lambda ((impl : NetworkConnection) (opening : ConnectionOpening))
                            (with-stream-io-lock impl.parent.mx
                              (and (not impl.renewal.active) (null? impl.renewal.owned)
                                   (not impl.renewal.operation) (not impl.renewal.wire-request)
                                   (not opening.renewal.active) (null? opening.renewal.owned)
                                   (= impl.parent.scheduler.renewal-frames 0))))
                          [local remote] [entry incoming])))
                  deadline)
                 (for-each
                   (lambda ((impl : NetworkConnection) (opening : ConnectionOpening)
                            (completed : RenewalRound) coordinator?)
                     (with-stream-io-lock impl.parent.mx
                       (check impl.renewal.last-id => id)
                       (check impl.renewal.request-id => id)
                       (check impl.renewal.deferred => #f)
                       (check impl.renewal.requests => [])
                       (check completed.installed? => #t)
                       (check completed.failed? => #f)
                       (check completed.deadline => cutoff)
                       (check completed.target => (+ old 1))
                       (check opening.renewal.coordinator? => coordinator?)
                       (check opening.renewal.last-id => id)
                       (check opening.renewal.desired => impl.parent.expire)
                       (check impl.parent.scheduler.renewal-bytes => 0)
                       (check (<= impl.parent.expire (+ (current-time-seconds) 14)) => #t)))
                   [local remote] [entry incoming] [round other] [#t #f])
                 (with-stream-io-lock local.parent.mx
                   (check (RenewalRequest-state request) => 'succeeded)
                   (check (RenewalRequest-result request) => reason-ok)
                   (check (RenewalRequest-deadline request) => request-cutoff))
                 (with-stream-io-lock remote.parent.mx
                   (check (RenewalRequest-state wire) => 'succeeded)
                   (check (RenewalRequest-result wire) => reason-ok)
                   (check (RenewalRequest-deadline wire) => request-cutoff))
                 (renewal-check-identities! identities)
                 (renewal-pulse! out in)
                 (when (= id 1) (loop 2 (Connection-expire conn) began))))
             ;; Continue traffic across the minimum automatic spacing, then check
             ;; monotone IDs: successful rounds must not immediately rearm a spin.
             (let (quiet-until (+ (##current-time-point) 2))
               (renewal-wait! (lambda () (pulse-when-due!) (>= (##current-time-point) quiet-until)) deadline))
             (renewal-wait!
              (lambda ()
                (andmap
                 (lambda ((opening : ConnectionOpening))
                   (with-stream-io-lock opening.io.output-mx
                     (= opening.io.state.send-credit opening.io.state.peer-window)))
                 [entry incoming]))
              deadline)
             (renewal-wait!
              (lambda ()
                (andmap (lambda ((impl : NetworkConnection))
                          (with-stream-io-lock impl.parent.mx (= impl.parent.scheduler.control-frames 0)))
                        [local remote]))
              deadline)
             (for-each
               (lambda ((impl : NetworkConnection) (opening : ConnectionOpening))
                 (with-stream-io-lock impl.parent.mx
                   (check impl.renewal.last-id => 2)
                   (check impl.renewal.request-id => 2)
                   (check impl.renewal.active => #f)
                   (check impl.renewal.owned => [])
                   (check opening.renewal.last-id => 2)
                   (check opening.renewal.active => #f)
                   (check opening.renewal.owned => [])
                   (check impl.parent.scheduler.control-bytes => 0)))
               [local remote] [entry incoming]))
           (check (map renewal-connection-metadata [conn peer]) => metadata)
           (renewal-check-identities! identities)
           (for-each
             (lambda (monitor)
               (check (renewal-event-count monitor 'connection-open) => 1)
               (check (renewal-event-count monitor 'stream-open) => 1)
               (check (renewal-event-count monitor 'connection-close) => 0)
               (check (renewal-event-count monitor 'stream-close) => 0)
               (check (renewal-event-count monitor 'unexpected-allow) => 0))
             [ma mb])))
       new-network renewal-test-config))

   (def (check-automatic-renewal (mode       : :symbol)
                                 (responder? : :boolean))
     => :void
     (call-with-api-networks mode
       (lambda ((a : Network) (b : Network) ma mb address start)
         (let* ((addr (b.listen! (address "automatic")))
                (began (current-time-seconds))
                (conn (if responder?
                        (a.connect! (b.host) [addr])
                        (a.connect! (b.host) [addr] lease: 'renewable)))
                (peer (api-await mb 'connection-open (lambda (_) #t)))
                (initial (Connection-expire conn))
                (metadata (map renewal-connection-metadata [conn peer])))
           (check (<= (+ began 14) initial (+ (current-time-seconds) 14)) => #t)
           (when responder?
             (check-eq? (b.connect! (a.host) [] lease: 'renewable) peer))
           (let* ((out (Connection-open-stream! conn "/renewal/blocked/v0" lease: 'connection))
                  (in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id out)))))
                  (back (Connection-open-stream! peer "/renewal/half-closed/v0" lease: 'connection))
                  (back-in (api-await ma 'stream-open (lambda (s) (= (Stream-id s) (Stream-id back)))))
                  (fixed (Connection-open-stream! conn "/renewal/finite/v0" expire: initial))
                  (fixed-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id fixed)))))
                  (streams [out in back back-in])
                  (identities (renewal-stream-identities streams))
                  (old-bound (apply max (map Stream-expire streams)))
                  (reply (make-u8vector 1))
                  (byte (make-u8vector 1))
                  (payload (make-u8vector (u8vector-length renewal-test-bytes)))
                  (writing (start (lambda () (Writer-write (Stream-writer out) renewal-test-bytes))))
                  (reading (start (lambda () (Reader-read (Stream-reader out) reply 0 1 1))))
                  (entry (renewal-test-entry conn out))
                  (deadline (+ (##current-time-point) 32)))
             (renewal-wait! (lambda () (renewal-waiting? writing (StreamIO-output-cv (ConnectionOpening-io entry)))) deadline)
             (renewal-wait! (lambda () (renewal-waiting? reading (StreamIO-input-cv (ConnectionOpening-io entry)))) deadline)
             (for-each
               (lambda (stream)
                 (Stream-set-input-timeout! stream (IOTimeout 4))
                 (Stream-set-output-timeout! stream (IOTimeout 4)))
               [back back-in])
             (Writer-close (Stream-writer back))
             (check (Reader-read (Stream-reader back-in) byte 0 1 0) => 0)
             (renewal-disallow-new! ma mb)
             ;; No connect! call in this interval. The responder-only case must
             ;; request its rounds from the original physical initiator.
             (let loop ((left 2) (previous initial) (old (map Stream-expire streams)))
               (when (> left 0)
                 (renewal-wait! (lambda () (> (Connection-expire conn) previous)) deadline)
                 (let (target (Connection-expire conn))
                   (check (<= target (+ (current-time-seconds) 14)) => #t)
                   (renewal-wait!
                    (lambda ()
                      (and (>= (Connection-expire peer) target)
                           (andmap (lambda (s before)
                                     (and (> (Stream-expire s) before) (>= (Stream-expire s) target)))
                                   streams old)))
                    deadline)
                   (check (thread-join!/error writing .01 'waiting) => 'waiting)
                   (check (thread-join!/error reading .01 'waiting) => 'waiting)
                   (renewal-check-identities! identities)
                   (check (Stream-expire fixed) => initial)
                   (check (Stream-expire fixed-in) => initial)
                   ;; The remaining direction of a half-closed stream carries
                   ;; bytes between cycles; FIN must not be reset by installation.
                   (check (Writer-write (Stream-writer back-in) #u8(42)) => 1)
                   (check (Reader-read (Stream-reader back) byte 0 1 1) => 1)
                   (check byte => #u8(42))
                   (check (Reader-read (Stream-reader back-in) byte 0 1 0) => 0)
                   (loop (- left 1) target (map Stream-expire streams)))))
             (renewal-wait! (lambda () (> (##current-time-point) (+ old-bound .1))) deadline)
             (check (thread-join!/error writing .01 'waiting) => 'waiting)
             (check (thread-join!/error reading .01 'waiting) => 'waiting)
             (let (draining (start (lambda () (Reader-read (Stream-reader in) payload 0 64 64))))
               (check (thread-join!/error writing 6) => 64)
               (check (thread-join!/error draining 6) => 64)
               (check payload => renewal-test-bytes))
             (check (Writer-write (Stream-writer in) #u8(99)) => 1)
             (check (thread-join!/error reading 6) => 1)
             (check reply => #u8(99))
             (api-await ma 'stream-close (lambda (s) (eq? s fixed)))
             (api-await mb 'stream-close (lambda (s) (eq? s fixed-in)))
             (check-exception (Writer-write (Stream-writer fixed) #u8(0))
                              (lambda (e) (or (IOError? e) (Timeout? e))))
             (check (map renewal-connection-metadata [conn peer]) => metadata)
             (check-eq? (a.connect! (b.host) []) conn)
             (check-eq? (b.connect! (a.host) []) peer)
             (for-each
               (lambda (monitor)
                 (check (renewal-event-count monitor 'connection-open) => 1)
                 (check (renewal-event-count monitor 'stream-open) => 3)
                 (check (renewal-event-count monitor 'stream-close) => 1)
                 (check (renewal-event-count monitor 'unexpected-allow) => 0))
               [ma mb]))))
       new-network renewal-test-config))

   ;; Unlike the shared-key API fixture, neither peer implicitly trusts the other
   ;; DID. A third real context issues delegations; tests can remove one protocol's
   ;; authority without changing connection or sibling authority.
   (def (call-with-renewal-authorities (mode : :symbol)
                                       (proc : :procedure))
     => :void
     (let ((stores []) (contexts []) (networks []) (workers [])
           (ma (APIMonitor)) (mb (APIMonitor)))
       (def (context+did)
         => :values
         (let* ((store (make-memory-keystore #u8(1 2 3)))
                (_ (set! stores (cons store stores)))
                (did (Keystore-generate-key! store))
                (ctx (open-capability-context ":memory:" store)))
           (set! contexts (cons ctx contexts))
           (values ctx did)))
       (def (start (thunk : :procedure))
         => :thread
         (let (worker (spawn-thread thunk))
           (set! workers (cons worker workers))
           worker))
       (call-with-temporary-directory "network-renewal-"
         (lambda (dir)
           (unwind-protect
             (let* (((values root root-did) (context+did))
                    ((values ca did-a) (context+did))
                    ((values cb did-b) (context+did)))
               (CapabilityContext-add-root! ca root-did)
               (CapabilityContext-add-root! cb root-did)
               (let* ((limits (NetworkLimits connection-limits:
                                             (ConnectionLimits data-payload: 4 stream-limits:
                                                               (StreamLimits recv-window: 8 outbound-buffer: 8))))
                      (a (new-network did-a ca (NetworkMonitor ma) config: renewal-test-config limits: limits))
                      (_ (set! networks (cons a networks)))
                      (b (new-network did-b cb (NetworkMonitor mb) config: renewal-test-config limits: limits)))
                 (set! networks (cons b networks))
                 (proc a b ma mb root root-did ca cb
                       (if (eq? mode 'unix) (UnixAddress (path-expand "server" dir)) (InetAddress localhost4 0))
                       start)))
             (let ((errors []) (joined? #t)
                   (deadline (seconds->time (+ (##current-time-point) 10))))
               (def (attempt (thunk : :procedure))
                 => :void
                 (with-catch (lambda (e) (set! errors (cons e errors)))
                             (lambda () (thunk) (void))))
               ;; Close sockets before joins; never close borrowed contexts if a
               ;; shutdown or application worker could still be using them.
               (let (closers (map (lambda (net) (spawn-thread (cut Network-close net))) networks))
                 (for-each
                   (lambda (worker)
                     (attempt
                      (lambda ()
                        (with-catch
                         (lambda (e) (set! joined? #f) (raise e))
                         (lambda ()
                           (when (eq? (thread-join!/error worker deadline 'stuck) 'stuck)
                             (set! joined? #f)
                             (raise-timeout call-with-renewal-authorities "Worker did not finish")))))))
                   (append closers workers)))
               (when joined?
                 (for-each (lambda (ctx) (attempt (lambda () (check (CapabilityContext-principals ctx) ? pair?)))) contexts)
                 (for-each (lambda (ctx) (attempt (cut CapabilityContext-close ctx))) contexts)
                 (for-each (lambda (store) (attempt (cut Closer-close store))) stores))
               (unless (null? errors)
                 (raise (car (reverse errors))))))
           (api-check-pairs! ma)
           (api-check-pairs! mb)))))

   (def (check-linked-seed-refresh (mode : :symbol))
     => :void
     (call-with-renewal-authorities mode
       (lambda ((a : Network) (b : Network) ma mb
                (root : CapabilityContext) root-did
                (ca : CapabilityContext) (cb : CapabilityContext) address start)
         (let* ((horizon (+ (current-time-seconds) 120))
                (parent-a (root.grant! DELEGATE root-did (a.host) proto:/network/connect horizon))
                (parent-b (root.grant! DELEGATE root-did (b.host) proto:/network/connect horizon)))
           (ca.add-output-anchor! parent-a)
           (cb.add-output-anchor! parent-b)
           (let* ((addr (b.listen! address))
                  (conn (a.connect! (b.host) [addr]))
                  ;; The open notification precedes final activation. Public
                  ;; reuse waits for the responder to be ready to open streams.
                  (peer (b.connect! (a.host) []))
                  (short (+ (Connection-expire conn) 4))
                  (target (+ short 4))
                  (protocol "/renewal/seed-refresh/v0")
                  (seed (root.grant! DELEGATE root-did (b.host) protocol short))
                  (sibling-parent (root.grant! DELEGATE root-did (b.host) "/renewal/seed-sibling/v0" horizon))
                  (_ (cb.add-output-anchor! sibling-parent))
                  ;; The physical responder is the original stream opener.
                  (stream (Connection-open-stream! peer protocol seed lease: 'connection))
                  (in (api-await ma 'stream-open (lambda (s) (= (Stream-id s) (Stream-id stream)))))
                  (sibling (Connection-open-stream! peer "/renewal/seed-sibling/v0" lease: 'connection))
                  (sibling-in (api-await ma 'stream-open (lambda (s) (= (Stream-id s) (Stream-id sibling)))))
                  (streams [stream in sibling sibling-in])
                  (identities (renewal-stream-identities streams))
                  (metadata (map renewal-connection-metadata [conn peer]))
                  (fresh (root.grant! DELEGATE root-did (b.host) protocol (+ short 18)))
                  (gate-a (renewal-context-mutex conn))
                  (gate-b (renewal-context-mutex peer))
                  (deadline (+ (##current-time-point) 8))
                  (caller #f) (round #f) (other #f) (offered #f) (cutoff 0))
             (check (Stream-expire stream) => short)
             (check (Stream-expire in) => short)
             (check (Stream-expire sibling) => horizon)
             (check (Stream-expire sibling-in) => horizon)
             (check (< (Token-expire seed) target (Token-expire fresh) horizon) => #t)
             ;; Unlike the shared-root fixture, a direct peer grant is untrusted.
             (check (ca.verify (cb.grant! INVOKE (b.host) (a.host) protocol (Token-expire fresh)))
                    ? VerificationError?)
             (cb.add-output-anchor! fresh)
             (renewal-disallow-new! ma mb)
             (for-each
               (lambda (s)
                 (Stream-set-input-timeout! s (IOTimeout 4))
                 (Stream-set-output-timeout! s (IOTimeout 4)))
               streams)
             (renewal-pulse! stream in)
             (renewal-pulse! sibling sibling-in)
             (using ((local (interface-instance-object conn) :- NetworkConnection)
                     (remote (interface-instance-object peer) :- NetworkConnection)
                     (entry (renewal-test-entry peer stream) :- ConnectionOpening)
                     (incoming (renewal-test-entry conn in) :- ConnectionOpening)
                     (sibling-entry (renewal-test-entry peer sibling) :- ConnectionOpening)
                     (sibling-incoming (renewal-test-entry conn sibling-in) :- ConnectionOpening))
               ;; Hand off the real context gates at observed connection phases.
               ;; After AUTH, the responder needs no more context work to install
               ;; the connection; gate-b then catches its *stream* preparation.
               (with-stream-io-lock gate-b
                 (set! caller (start (lambda () (a.connect! (b.host) [] expire: target))))
                 (renewal-wait! (lambda () (renewal-gated-round remote remote.renewal gate-b)) deadline)
                 (with-stream-io-lock gate-a
                   (mutex-unlock! gate-b)
                   (renewal-wait! (lambda () (renewal-gated-round local local.renewal gate-a)) deadline)
                   (with-stream-io-lock local.parent.mx
                     (check local.renewal.active.phase => 'auth-received))
                   (mutex-lock! gate-b))
                 (set! round
                   (renewal-wait! (lambda () (renewal-gated-round remote entry.renewal gate-b)) deadline))
                 (check-eq? (thread-join!/error caller (seconds->time deadline)) conn)
                 (check (Connection-expire conn) => target)
                 (check (Connection-expire peer) => target)
                 (check (Stream-expire stream) => short)
                 (check (Stream-expire in) => short)
                 (with-stream-io-lock remote.parent.mx
                   (set! cutoff (RenewalRound-deadline round))
                   (check remote.parent.initiator? => #f)
                   (check remote.renewal.automatic? => #f)
                   (check entry.renewal.coordinator? => #t)
                   (check-eq? entry.renewal.seed seed)
                   (check (RenewalRound-id round) => 1)
                   (check (RenewalRound-old-expire round) => short)
                   (check (RenewalRound-target round) => target)
                   (check (RenewalRound-adaptive? round) => #t)
                   (check entry.renewal.owned => [round]))
                 (renewal-pulse! stream in)
                 (renewal-pulse! sibling sibling-in)
                 ;; Hold the real recipient verifier long enough to retain both
                 ;; correlated rounds and the actual, still-indexed OFFER token.
                 (with-stream-io-lock gate-a
                   (mutex-unlock! gate-b)
                   (set! other
                     (renewal-wait! (lambda () (renewal-gated-round local incoming.renewal gate-a)) cutoff))
                   (with-stream-io-lock remote.parent.mx
                     (check-eq? entry.renewal.active round)
                     (check (RenewalRound-phase round) => 'offered)
                     (check (RenewalRound-target round) => target)
                     (check (RenewalRound-deadline round) => cutoff)
                     ;; The old seed cannot cover target. The connection and
                     ;; sibling anchors do not confer this protocol capability.
                     (check (vector-length (RenewalRound-tokens round)) => 2)
                     (set! offered (vector-ref (RenewalRound-tokens round) 0)))
                   (with-stream-io-lock local.parent.mx
                     (check incoming.renewal.coordinator? => #f)
                     (check (RenewalRound-id other) => 1)
                     (check (RenewalRound-target other) => target)
                     (check (RenewalRound-deadline other) => cutoff)
                     (check incoming.renewal.owned => [other]))))
               (renewal-wait!
                (lambda ()
                  (and (= (Stream-expire stream) (Token-expire fresh))
                       (= (Stream-expire in) (Token-expire fresh))
                       (with-stream-io-lock remote.parent.mx (null? entry.renewal.owned))
                       (with-stream-io-lock local.parent.mx (null? incoming.renewal.owned))))
                deadline)
               (let ((selected (with-stream-io-lock remote.parent.mx (RenewalRound-selected round)))
                     (authenticated (with-stream-io-lock local.parent.mx (RenewalRound-peer-token other))))
                 (check-eq? selected offered)
                 (check (marshal-token authenticated) => (marshal-token offered))
                 (check (marshal-token (Token-chain authenticated)) => (marshal-token fresh))
                 (check (Token-type authenticated) => INVOKE)
                 (check (Token-issuer authenticated) => (b.host))
                 (check (Token-audience authenticated) => (a.host))
                 (check (Token-protocol authenticated) => protocol)
                 (check (ca.verify authenticated) ? !VerificationOK?))
               (for-each
                 (lambda ((impl : NetworkConnection) (opening : ConnectionOpening)
                          (untouched : ConnectionOpening) (completed : RenewalRound))
                   (with-stream-io-lock impl.parent.mx
                     (check impl.renewal.automatic? => #f)
                     (check impl.renewal.last-id => 1)
                     (check completed.installed? => #t)
                     (check completed.failed? => #f)
                     (check completed.deadline => cutoff)
                     (check completed.target => target)
                     (check opening.renewal.last-id => 1)
                     (check opening.renewal.active => #f)
                     (check untouched.renewal.last-id => 0)
                     (check untouched.renewal.active => #f)
                     (check untouched.renewal.owned => [])))
                 [remote local] [entry incoming] [sibling-entry sibling-incoming] [round other])
               (with-stream-io-lock remote.parent.mx
                 (check-eq? entry.renewal.seed seed))
               (with-stream-io-lock local.parent.mx
                 (check (RenewalRound-selected-index other) => 0)))
             (check (Stream-expire sibling) => horizon)
             (check (Stream-expire sibling-in) => horizon)
             (check (map renewal-connection-metadata [conn peer]) => metadata)
             (renewal-check-identities! identities)
             (renewal-pulse! stream in)
             (renewal-pulse! sibling sibling-in)
             (check-eq? (a.connect! (b.host) []) conn)
             (check-eq? (b.connect! (a.host) []) peer)
             (for-each
               (lambda (monitor)
                 (check (renewal-event-count monitor 'connection-open) => 1)
                 (check (renewal-event-count monitor 'stream-open) => 2)
                 (check (renewal-event-count monitor 'stream-close) => 0)
                 (check (renewal-event-count monitor 'connection-close) => 0)
                 (check (renewal-event-count monitor 'unexpected-allow) => 0))
               [ma mb]))))))

   (def renewal-test
     (test-suite "Public ensemble renewal, credential refresh and mutable IO"
       (test-case "Unix explicit renewal from both physical roles preserves linked streams"
         (check-explicit-renewal 'unix))
       (test-case "TLS explicit renewal from both physical roles preserves linked streams"
         (check-explicit-renewal 'tls))
       (test-case "Unix automatic initiator keeps blocked IO and half-closed streams across two renewals"
         (check-automatic-renewal 'unix #f))
       (test-case "TLS automatic responder keeps blocked IO and half-closed streams across two renewals"
         (check-automatic-renewal 'tls #t))
       (test-case "Unix dual automatic policy coalesces two generations with linked duplex traffic"
         (check-dual-automatic-renewal 'unix))
       (test-case "TLS dual automatic policy coalesces two generations with linked duplex traffic"
         (check-dual-automatic-renewal 'tls))
       (test-case "linked stream refresh selects fresh delegated authority beyond its explicit seed on Unix and TLS"
         (for-each check-linked-seed-refresh '(unix tls)))

       (test-case "fresh context parents replace an expired explicit seed on Unix and TLS"
         (for-each
           (lambda (mode)
             (call-with-renewal-authorities mode
               (lambda ((a : Network) (b : Network) ma mb
                        (root : CapabilityContext) root-did
                        (ca : CapabilityContext) (cb : CapabilityContext) address start)
                 (let* ((now (current-time-seconds))
                        (seed (root.grant! DELEGATE root-did (a.host) proto:/network/connect (+ now 14)))
                        (remote (root.grant! DELEGATE root-did (b.host) proto:/network/connect (+ now 18)))
                        (addr (b.listen! address)))
                   (cb.add-output-anchor! remote)
                   (let* ((conn (a.connect! (b.host) [addr] seed lease: 'renewable))
                          (peer (api-await mb 'connection-open (lambda (_) #t)))
                          (metadata (map renewal-connection-metadata [conn peer]))
                          (deadline (+ (##current-time-point) 32)))
                     ;; Only the trusted delegated grants count, not the direct
                     ;; issuer grants present in the same adaptive wire bundle.
                     (check (Connection-expire conn) => (Token-expire seed))
                     (check (Connection-expire peer) => (Token-expire seed))
                     (renewal-disallow-new! ma mb)
                     (let loop ((rounds '((28 32) (42 46))) (old-a #f) (old-b remote))
                       (unless (null? rounds)
                         (let* ((horizons (car rounds))
                                (fresh-a (root.grant! DELEGATE root-did (a.host) proto:/network/connect
                                                      (+ now (car horizons))))
                                (fresh-b (root.grant! DELEGATE root-did (b.host) proto:/network/connect
                                                      (+ now (cadr horizons))))
                                (target (min (Token-expire fresh-a) (Token-expire fresh-b))))
                           (ca.add-output-anchor! fresh-a)
                           (cb.add-output-anchor! fresh-b)
                           (when old-a (ca.remove-output-anchor! old-a))
                           (cb.remove-output-anchor! old-b)
                           (renewal-wait!
                            (lambda () (and (>= (Connection-expire conn) target)
                                            (>= (Connection-expire peer) target)))
                            deadline)
                           (check (Connection-expire conn) => target)
                           (check (Connection-expire peer) => target)
                           (loop (cdr rounds) fresh-a fresh-b))))
                     (check (> (current-time-seconds) (Token-expire seed)) => #t)
                     (check (map renewal-connection-metadata [conn peer]) => metadata)
                     (check-eq? (a.connect! (b.host) []) conn)
                     (check-eq? (b.connect! (a.host) []) peer)
                     (for-each
                       (lambda (monitor)
                         (check (renewal-event-count monitor 'connection-open) => 1)
                         (check (renewal-event-count monitor 'connection-close) => 0)
                         (check (renewal-event-count monitor 'unexpected-allow) => 0))
                       [ma mb]))))))
           '(unix tls)))

       (test-case "precommit refusal preserves the connection; lost stream authority only expires that stream"
         (for-each
           (lambda (mode)
             (call-with-renewal-authorities mode
               (lambda ((a : Network) (b : Network) ma mb
                        (root : CapabilityContext) root-did
                        (ca : CapabilityContext) (cb : CapabilityContext) address start)
                 (let* ((horizon (+ (current-time-seconds) 120))
                        (parent-a (root.grant! DELEGATE root-did (a.host) proto:/network/connect horizon))
                        (parent-b (root.grant! DELEGATE root-did (b.host) proto:/network/connect horizon)))
                   (ca.add-output-anchor! parent-a)
                   (cb.add-output-anchor! parent-b)
                   (let* ((addr (b.listen! address))
                          (conn (a.connect! (b.host) [addr]))
                          (peer (api-await mb 'connection-open (lambda (_) #t)))
                          (before (Connection-expire conn))
                          (short (+ before 2))
                          (denied-parent (root.grant! DELEGATE root-did (a.host) "/renewal/denied/v0" short))
                          (sibling-parent (root.grant! DELEGATE root-did (a.host) "/renewal/sibling/v0" horizon)))
                     (ca.add-output-anchor! denied-parent)
                     (ca.add-output-anchor! sibling-parent)
                     (let* ((denied (Connection-open-stream! conn "/renewal/denied/v0" lease: 'connection))
                            (denied-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id denied)))))
                            (sibling (Connection-open-stream! conn "/renewal/sibling/v0" lease: 'connection))
                            (sibling-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id sibling)))))
                            (entry (renewal-test-entry conn denied))
                            (sibling-entry (renewal-test-entry conn sibling))
                            (identities (renewal-stream-identities [sibling sibling-in]))
                            (deadline (+ (##current-time-point) 24)))
                       (check (Stream-expire denied) => short)
                       (check (Stream-expire sibling) => horizon)
                       (renewal-disallow-new! ma mb)
                       (for-each
                         (lambda ((network : Network) (other : Network) expected)
                           ;; Both direct grants are untrusted, and the root
                           ;; chains cannot cover this strict requirement.
                           (check-exception (network.connect! (other.host) [] expire: (+ horizon 1)) Closed?)
                           (check (Connection-expire conn) => before)
                           (check (Connection-expire peer) => before)
                           (check-eq? (network.connect! (other.host) []) expected)
                           (renewal-pulse! sibling sibling-in))
                         [a b] [b a] [conn peer])
                       ;; This removes only future issuance authority. It does
                       ;; not revoke the installed grant, and no monitor callback
                       ;; serves as a substitute for protocol-specific trust.
                       (ca.remove-output-anchor! denied-parent)
                       (let ((target (+ short 6))
                             (blocked (start (lambda ()
                                               (with-catch identity
                                                           (lambda () (Reader-read (Stream-reader denied) (make-u8vector 1))))))))
                         (check-eq? (a.connect! (b.host) [] expire: target) conn)
                         (using (impl (interface-instance-object conn) :- NetworkConnection)
                           (renewal-wait!
                            (lambda ()
                              (do-with-lock impl.parent.mx
                                (using (scope (ConnectionOpening-renewal entry) :- RenewalScope)
                                  (and (= scope.attempted-target target)
                                       (> scope.last-id 0) (not scope.active) (null? scope.owned)))))
                            deadline))
                         (check (Stream-expire denied) => short)
                         (check (Stream-expire denied-in) => short)
                         (check (renewal-event-count ma 'stream-close) => 0)
                         (check (thread-join!/error blocked .01 'waiting) => 'waiting)
                         (renewal-pulse! sibling sibling-in)
                         (api-await ma 'stream-close (lambda (s) (eq? s denied))
                                    (max .01 (- deadline (##current-time-point))))
                         (api-await mb 'stream-close (lambda (s) (eq? s denied-in)))
                         (check (thread-join!/error blocked 4) ? (lambda (e) (or (IOError? e) (Timeout? e))))
                         (check (>= (current-time-seconds) short) => #t)
                         (check (Connection-expire conn) => target)
                         (check (Connection-expire peer) => target)
                         (check (Stream-expire sibling) => horizon)
                         (check (Stream-expire sibling-in) => horizon)
                         ;; An already-covering grant needs no exchange at all.
                         (using (impl (interface-instance-object conn) :- NetworkConnection)
                           (do-with-lock impl.parent.mx
                             (check (RenewalScope-last-id (ConnectionOpening-renewal sibling-entry)) => 0)))
                         (renewal-check-identities! identities)
                         (renewal-pulse! sibling sibling-in)
                         (for-each
                           (lambda (monitor)
                             (check (renewal-event-count monitor 'stream-open) => 2)
                             (check (renewal-event-count monitor 'stream-close) => 1)
                             (check (renewal-event-count monitor 'connection-close) => 0)
                             (check (renewal-event-count monitor 'unexpected-allow) => 0))
                           [ma mb]))))))))
           '(unix tls)))

       (test-case "simultaneous local and remote callers coalesce without retargeting or restarting deadlines"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((addr (b.listen! (address "coalesce")))
                    (conn (a.connect! (b.host) [addr]))
                    (peer (api-await mb 'connection-open (lambda (_) #t)))
                    (stream (Connection-open-stream! conn "/renewal/coalesce/v0"))
                    (incoming (api-await mb 'stream-open (lambda (_) #t)))
                    (old (Connection-expire conn))
                    (low (+ old 4)) (high (+ old 8))
                    (gate (renewal-context-mutex conn))
                    (deadline (+ (##current-time-point) 3))
                    (callers []) (round #f) (cutoff #f))
               (renewal-disallow-new! ma mb)
               (using (impl (interface-instance-object conn) :- NetworkConnection)
                 (mutex-lock! gate)
                 (unwind-protect
                   (begin
                     (set! callers [(start (lambda () (a.connect! (b.host) [] expire: low)))])
                     (set! round
                       (renewal-wait!
                        (lambda ()
                          (do-with-lock impl.parent.mx
                            (let (active impl.renewal.active)
                              (and active (RenewalRound-worker active)
                                   (renewal-waiting? (RenewalRound-worker active) gate) active))))
                        deadline))
                     (set! cutoff (RenewalRound-deadline round))
                     (set! callers
                       (append callers
                               [(start (lambda () (a.connect! (b.host) [] expire: low)))
                                (start (lambda () (b.connect! (a.host) [] expire: low)))
                                (start (lambda () (a.connect! (b.host) [] expire: high)))]))
                     (renewal-wait!
                      (lambda ()
                        (do-with-lock impl.parent.mx
                          (and (= (length impl.renewal.requests) 3) impl.renewal.remote-request)))
                      deadline)
                     (do-with-lock impl.parent.mx
                       (check-eq? impl.renewal.active round)
                       (check (length impl.renewal.owned) => 1)
                       (check-eq? (car impl.renewal.owned) round)
                       (check (RenewalRound-target round) => low)
                       (check (RenewalRound-deadline round) => cutoff)
                       (check (RenewalOperation-deadline (RenewalRound-operation round)) => cutoff))
                     ;; A covered caller must not wait for the context gate or
                     ;; inherit the longer pending request's completion condition.
                     (let ((covered-a (start (lambda () (a.connect! (b.host) [] expire: old))))
                           (covered-b (start (lambda () (b.connect! (a.host) [] expire: old)))))
                       (check-eq? (thread-join!/error covered-a .5) conn)
                       (check-eq? (thread-join!/error covered-b .5) peer))
                     (renewal-pulse! stream incoming))
                   (mutex-unlock! gate))
                 (for-each
                   (lambda (worker expected) (check-eq? (thread-join!/error worker 6) expected))
                   callers [conn conn peer conn])
                 (check (Connection-expire conn) => high)
                 (check (Connection-expire peer) => high)
                 (check (RenewalRound-target round) => low)
                 (check (RenewalRound-deadline round) => cutoff)
                 (do-with-lock impl.parent.mx (check impl.renewal.last-id => 2))
                 ;; A stale invalid index must be ignored before active-payload
                 ;; validation. Following DATA establishes wire dispatch ordering.
                 (renewal-inject! peer frame-renew-auth 0 [1 #xffffffff []])
                 (renewal-pulse! incoming stream)
                 (check (Connection-expire conn) => high)
                 (check (renewal-event-count ma 'connection-open) => 1)
                 (check (renewal-event-count mb 'connection-open) => 1))))
           new-network renewal-gate-config))

       (test-case "zero and future correlation, wrong-role OFFER and malformed active AUTH close real connections"
         (for-each
           (lambda (scenario)
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "malformed")))
                        (conn (a.connect! (b.host) [addr]))
                        (peer (api-await mb 'connection-open (lambda (_) #t)))
                        (stream (Connection-open-stream! conn "/renewal/malformed/v0" lease: 'connection))
                        (incoming (api-await mb 'stream-open (lambda (_) #t)))
                        (before (Connection-expire conn)))
                   (case scenario
                     ((zero) (renewal-inject! peer frame-renew-ack 0 [0]))
                     ((future) (renewal-inject! peer frame-renew-ack 0 [1]))
                     ((stream-future) (renewal-inject! peer frame-stream-renew-auth (Stream-id stream) [1 0]))
                     ((wrong-role)
                      (renewal-inject! peer frame-renew-offer 0
                                       [1 (+ before 1) (+ (current-time-seconds) 4) [] lease-mode-fixed]))
                     ((active-index)
                      (let ((gate (renewal-context-mutex peer)) (caller #f))
                        (using ((impl (interface-instance-object conn) :- NetworkConnection)
                                (remote (interface-instance-object peer) :- NetworkConnection))
                          (mutex-lock! gate)
                          (unwind-protect
                            (begin
                              (set! caller
                                (start (lambda () (with-catch identity
                                                              (lambda () (a.connect! (b.host) [] expire: (+ before 1)))))))
                              (renewal-wait!
                               (lambda ()
                                 (do-with-lock remote.parent.mx
                                   (and remote.renewal.active remote.renewal.active.worker
                                        (renewal-waiting? remote.renewal.active.worker gate))))
                               (+ (##current-time-point) 2))
                              (let (id (do-with-lock impl.parent.mx
                                         (check impl.renewal.active.phase => 'offered)
                                         impl.renewal.active.id))
                                (renewal-inject! peer frame-renew-auth 0 [id #xffffffff []]))
                              (renewal-wait! (lambda () (do-with-lock impl.parent.mx impl.parent.closed?))
                                             (+ (##current-time-point) 2))
                              ;; Protocol failure must not release a verification
                              ;; worker that is still borrowing its real context.
                              (do-with-lock remote.parent.mx
                                (check (length remote.renewal.owned) => 1)
                                (check (renewal-waiting? (RenewalRound-worker (car remote.renewal.owned)) gate) => #t)))
                            (mutex-unlock! gate))
                          (check (thread-join!/error caller 6) ? IOError?)))))
                   (api-await ma 'connection-close (lambda (c) (eq? c conn)))
                   (api-await mb 'connection-close (lambda (c) (eq? c peer)))
                   (check (Connection-expire conn) => before)
                   (check (Connection-expire peer) => before)
                   (check-exception (Writer-write (Stream-writer stream) #u8(1)) IOError?)
                   (check-exception (Writer-write (Stream-writer incoming) #u8(1)) IOError?)
                   (check (renewal-event-count ma 'connection-open) => 1)
                   (check (renewal-event-count mb 'connection-open) => 1)))
               new-network renewal-gate-config))
           '(zero future stream-future wrong-role active-index)))

       (test-case "real linked renewals do not restart finite Reader, whole Writer or drain budgets"
         (call-with-api-networks 'tls
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((addr (b.listen! (address "io-deadlines")))
                    (conn (a.connect! (b.host) [addr]))
                    (peer (api-await mb 'connection-open (lambda (_) #t)))
                    (streams (map (lambda (protocol) (Connection-open-stream! conn protocol lease: 'connection))
                                  '("/renewal/read/v0" "/renewal/write/v0" "/renewal/drain/v0")))
                    (incoming (map (lambda (stream)
                                     (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id stream)))))
                                   streams))
                    (reader (car streams)) (writer (cadr streams)) (drain (caddr streams))
                    (end (+ (##current-time-point) 6))
                    (timeo (IOTimeout 6)))
               (def (start-timed (thunk : :procedure))
                 => :thread
                 (start (lambda ()
                          (with-catch (lambda (e) [e (##current-time-point)]) thunk))))
               (Stream-set-input-timeout! reader timeo)
               (Stream-set-output-timeout! writer timeo)
               (Stream-set-output-timeout! drain timeo)
               ;; Sixteen bytes fill the peer's eight-byte window and our own
               ;; eight-byte ring; close must now wait for real peer consumption.
               (check (Writer-write (Stream-writer drain) (make-u8vector 16 9)) => 16)
               (let* ((reading (start-timed (lambda () (Reader-read (Stream-reader reader) (make-u8vector 1)))))
                      (writing (start-timed (lambda () (Writer-write (Stream-writer writer) renewal-test-bytes))))
                      (closing (start-timed (lambda () (Writer-close (Stream-writer drain)))))
                      (jobs [reading writing closing]))
                 (for-each
                   (lambda (job stream input?)
                     (let (io (ConnectionOpening-io (renewal-test-entry conn stream)))
                       (renewal-wait!
                        (lambda () (renewal-waiting? job (if input? (StreamIO-input-cv io) (StreamIO-output-cv io))))
                        end)))
                   jobs streams [#t #f #f])
                 ;; A later setter is not permission to change a captured budget.
                 (Stream-set-input-timeout! reader (IOTimeout 30))
                 (Stream-set-output-timeout! writer (IOTimeout 30))
                 (for-each
                   (lambda (_)
                     (let (target (+ 2 (apply max (map Stream-expire streams))))
                       (check-eq? (a.connect! (b.host) [] expire: target) conn)
                       (renewal-wait! (lambda () (andmap (lambda (s) (>= (Stream-expire s) target))
                                                         (append streams incoming))) end)))
                   '(first second))
                 (for-each
                   (lambda (job)
                     ;; The sentinel prevents a test-thread join timeout from
                     ;; masquerading as the operation's expected Timeout value.
                     (let (result (thread-join!/error job (seconds->time (+ end 1)) 'stuck))
                       (check result ? pair?)
                       (when (pair? result)
                         (check (car result) ? Timeout?)
                         (check (<= end (cadr result) (+ end 1)) => #t))))
                   jobs)
                 (check (< (##current-time-point) (+ end 1)) => #t)
                 (check-eq? (a.connect! (b.host) []) conn)
                 (check-eq? (b.connect! (a.host) []) peer)
                 (let* ((healthy (Connection-open-stream! conn "/renewal/after-timeout/v0"))
                        (healthy-in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id healthy))))))
                   (renewal-pulse! healthy healthy-in)))))
           new-network renewal-test-config)))))
  (else
   (export renewal-test)
   (def renewal-test #f)))
