;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Bounded Unix/TLS mixed-load renewal and retained public-view acceptance
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/error
           :std/interface
           :std/io
           :std/io/tempfile
           :std/struct/queue
           :std/sync/threads
           :std/time/time
           :std/time/timeout
           ../network
           ../keystore/interface
           (only-in ../ucan/interface
                    CapabilityContext
                    CapabilityContext-principals
                    CapabilityContext-close)
           (only-in "./network-api-test.ss"
                    call-with-api-networks
                    APIMonitor
                    APIMonitor-allow-hook-set!
                    APIMonitor-stream-allow-hook-set!
                    APIMonitor-close-hook-set!
                    api-record!
                    api-await
                    api-close!
                    api-close-thread
                    api-check-pairs!)
           (only-in "./renewal-test.ss"
                    renewal-wait!
                    renewal-event-count
                    renewal-test-entry
                    renewal-pulse!
                    renewal-stream-identities
                    renewal-check-identities!)
           ./connection
           ./handshake
           ./renewal
           ./stream
           ./thread)
   (export network-acceptance-test
           acceptance-check-closed!)

   ;; Per transport: 3 linked streams * 3 cycles * 2 directions * 16 KiB =
   ;; 288 KiB, plus 48 churn bytes (4 each way on 2 streams per cycle).
   ;; One captured 90-second observation/join cutoff; no retries or random seed.
   ;; Writers submit one entire 16 KiB slice; readers cycle 1,31,257,1024,4096.
   ;; Bytes: (offset + 17*index + 31*cycle + 97*direction) mod 256; indexes
   ;; 0..2, cycles 1..3, directions 0 (outgoing writer) and 1 (peer writer).
   ;; 39 fixture-owned workers: six readers, six writers and one renewer per cycle.
   (def acceptance-config
     (NetworkConfig connection-ttl: 120 stream-ttl: 120 renewal-timeout: 4
                    handshake-timeout: 8 stream-open-timeout: 4
                    connection-input-timeout: (IOTimeout 10) connection-output-timeout: (IOTimeout 10)
                    stream-input-timeout: (IOTimeout 10) stream-output-timeout: (IOTimeout 10)))
   (def acceptance-limits
     (NetworkLimits connection-limits:
                    (ConnectionLimits total-streams: 5 data-payload: 256 control-payload: 8192
                                      stream-limits: (StreamLimits recv-window: 1024 outbound-buffer: 2048))))

   ;; The fixture supplies smaller limits; replace them at construction, never live.
   ;; Pending/control/renewal quotas otherwise retain their production defaults.
   (def (acceptance-network-factory (host           : :string)
                                    (ctx            : CapabilityContext)
                                    (monitor        : NetworkMonitor)
                                    config: (config : NetworkConfig)
                                    limits: (limits : NetworkLimits))
     => Network
     (new-network host ctx monitor config: config limits: acceptance-limits))

   (def (acceptance-byte (offset    : :fixnum)
                         (index     : :fixnum)
                         (cycle     : :fixnum)
                         (direction : :fixnum))
     => :fixnum
     (fxmodulo (fx+ offset (fx* 17 index) (fx* 31 cycle) (fx* 97 direction)) 256))

   (def (acceptance-payload (index     : :fixnum)
                            (cycle     : :fixnum)
                            (direction : :fixnum))
     => :u8vector
     (let (bytes (make-u8vector 16384))
       (let loop ((offset 0))
         (when (fx< offset 16384)
           (u8vector-set! bytes offset (acceptance-byte offset index cycle direction))
           (loop (fx1+ offset))))
       bytes))

   ;; Workers raise ordinary errors and return counts, never invoke test checks.
   (def (acceptance-read-thread (reader    : Reader)
                                (index     : :fixnum)
                                (cycle     : :fixnum)
                                (direction : :fixnum))
     => :fixnum
     (let (bytes (make-u8vector 4096))
       (let loop ((offset 0) (chunks '(1 31 257 1024 4096)))
         (if (fx= offset 16384) offset
             (let* ((chunks (if (null? chunks) '(1 31 257 1024 4096) chunks))
                    (size (fxmin (car chunks) (fx- 16384 offset)))
                    (count (reader.read bytes 0 size size)))
               (unless (fx= count size)
                 (error "Short acceptance read" index cycle direction offset count size))
               (let verify ((i 0))
                 (when (fx< i count)
                   (unless (fx= (u8vector-ref bytes i) (acceptance-byte (fx+ offset i) index cycle direction))
                     (error "Acceptance byte mismatch" index cycle direction (fx+ offset i) (u8vector-ref bytes i)))
                   (verify (fx1+ i))))
               (loop (fx+ offset count) (cdr chunks)))))))

   ;; Caller holds parent.mx. One terminal remote request is bounded correlation
   ;; metadata, not a live operation; its output must nevertheless be released.
   (def (acceptance-scope-idle? (scope : RenewalScope))
     => :boolean
     (and (not scope.active) (not scope.deferred) (null? scope.owned)
          (not scope.operation) (null? scope.requests) (not scope.wire-request)
          (or (not scope.remote-request)
              (and (not (memq scope.remote-request.state '(pending sent)))
                   (or (not scope.remote-request.control)
                       (eq? (ConnectionWork-state scope.remote-request.control) 'released))))))

   (def (acceptance-idle? (conn  : Connection)
                          (count : :fixnum))
     => :boolean
     (using (impl (interface-instance-object conn) :- NetworkConnection)
       (with-stream-io-lock impl.parent.mx
         (and (= (length impl.openings) count) (= (Queue-length impl.parent.scheduler.streams) count)
              (not impl.parent.scheduler.in-flight) (= impl.parent.scheduler.control-frames 0)
              (= impl.parent.scheduler.control-bytes 0) (= impl.parent.scheduler.renewal-frames 0)
              (= impl.parent.scheduler.renewal-bytes 0) (queue-empty? impl.parent.scheduler.controls)
              (acceptance-scope-idle? impl.renewal)
              (andmap (lambda ((entry : ConnectionOpening))
                        (and entry.success? (not entry.pending?)
                             (or (not entry.renewal) (acceptance-scope-idle? entry.renewal))))
                      impl.openings)))))

   ;; Quantitative live bounds, under parent -> input -> output lock order.
   (def (acceptance-check-live! (conn  : Connection)
                                (count : :fixnum))
     => :void
     (using (impl (interface-instance-object conn) :- NetworkConnection)
       (with-stream-io-lock impl.parent.mx
         (using ((scheduler impl.parent.scheduler :- ConnectionScheduler)
                 (limits impl.parent.scheduler.limits :- ConnectionLimits))
           (check impl.parent.closed? => #f)
           (check (length impl.openings) => count)
           (check (Queue-length scheduler.streams) => count)
           (check (<= count limits.total-streams) => #t)
           (check (<= (length (filter ConnectionOpening-pending? impl.openings)) limits.pending-streams) => #t)
           (check (<= 0 scheduler.control-frames limits.pending-control-frames) => #t)
           (check (<= 0 scheduler.control-bytes limits.pending-control-bytes) => #t)
           (check (<= 0 scheduler.renewal-frames 4) => #t)
           (check (<= 0 scheduler.renewal-bytes (renewal-protected-bytes limits)) => #t)
           (check (<= (Queue-length scheduler.controls) scheduler.control-frames) => #t)
           (check (<= (foldl (lambda ((entry : ConnectionOpening) n)
                               (+ n (if entry.renewal (length entry.renewal.owned) 0))) 0 impl.openings)
                      limits.renewing-streams) => #t)
           (for-each
             (lambda ((entry : ConnectionOpening))
               (using (io entry.io :- StreamIO)
                 (with-stream-io-lock io.input-mx
                   (with-stream-io-lock io.output-mx
                     (check io.state.aborted? => #f)
                     (check (<= 0 io.state.receive.size io.state.receive.capacity) => #t)
                     (check (<= 0 io.state.send.size io.state.send.capacity) => #t)
                     (check (<= 0 io.state.in-flight scheduler.quantum) => #t)
                     (check (<= (u8vector-length io.state.receive.bytes) 1024) => #t)
                     (check (<= (u8vector-length io.state.send.bytes) 2048) => #t)))))
             impl.openings)))))

   ;; A thread name or an unfinished join is insufficient: witness the real CV and
   ;; full rings. No fake transport borrow/release or installed-lease mutation.
   (def (acceptance-stalled? (entry  : ConnectionOpening)
                             (writer : :thread))
     => :boolean
     (using (io entry.io :- StreamIO)
       (with-stream-io-lock io.input-mx
         (with-stream-io-lock io.output-mx
           (let (state (thread-state writer))
             (and (thread-state-waiting? state) (eq? (thread-state-waiting-for state) io.output-cv)
                  (not io.state.aborted?) (= io.state.receive.size 1024)
                  (= io.state.send.size 2048) (= io.state.send-credit 0)))))))

   (def (acceptance-connection-metadata (conn : Connection))
     => :list
     [(conn.network) (conn.address) (conn.peer) (conn.peer-address) (conn.direction)])

   ;; Reusable after api-close!: streams is a flat list of retained public Stream
   ;; views (including retired churn), not ConnectionOpening records. Inspect the
   ;; real private IO without exporting NetworkStream through the production API.
   ;; Gracefully retired readers retain EOF; aborted readers must raise Closed.
   ;; Candidate, seed, finite expirations, fixed worker handles and error identity
   ;; are intentionally retained metadata, not an assertion that every slot empties.
   (def (acceptance-check-closed! (conn    : Connection)
                                  (peer    : Connection)
                                  (streams : :list))
     => :void
     (for-each
       (lambda ((view : Connection))
         (using (impl (interface-instance-object view) :- NetworkConnection)
           (with-stream-io-lock impl.parent.mx
             (check impl.parent.closed? => #t)
             (check impl.parent.scheduler.closed? => #t)
             (check (length impl.openings) => 0)
             (check (acceptance-scope-idle? impl.renewal) => #t)
             (check [impl.parent.scheduler.control-frames impl.parent.scheduler.control-bytes
                                                          impl.parent.scheduler.renewal-frames impl.parent.scheduler.renewal-bytes] => [0 0 0 0])
             (check (Queue-length impl.parent.scheduler.controls) => 0)
             (check (Queue-length impl.parent.scheduler.streams) => 0)
             (check impl.parent.scheduler.in-flight => #f))
           (for-each (lambda (worker)
                       (check (or (thread-state-normally-terminated? (thread-state worker))
                                  (thread-state-abnormally-terminated? (thread-state worker))) => #t))
                     [impl.parent.worker impl.parent.reader-worker impl.parent.writer-worker]))
          (using (impl (interface-instance-object view) :- NetworkConnection)
            (check-exception (Reader-read (impl.parent.socket.reader) (make-u8vector 1)) Closed?)
            ;; Peer EOF can win over local close; preserve the first failure, even #f.
            (let (failure (with-stream-io-lock impl.parent.mx impl.parent.error))
              (check-exception (view.open-stream! "/acceptance/closed/v0") (lambda (e) (eq? e failure)))
              (check-exception (view.set-input-timeout! (IOTimeout 10)) (lambda (e) (eq? e failure)))
              (check-exception (view.set-output-timeout! (IOTimeout 10)) (lambda (e) (eq? e failure))))))
       [conn peer])
     (for-each
       (lambda ((stream : Stream))
         (using (io (slot-ref (interface-instance-object stream) 'io) :- StreamIO)
           (with-stream-io-lock io.input-mx
             (with-stream-io-lock io.output-mx
               (check (stream-retirable? io.state) => #t)
               (check [io.state.receive.size io.state.send.size io.state.in-flight] => [0 0 0])
               (check [io.state.receive.bytes io.state.send.bytes] => [#u8() #u8()])))
           (if (with-stream-io-lock io.input-mx io.state.aborted?)
             (check-exception (Reader-read (stream.reader) (make-u8vector 1)) Closed?)
             (check (Reader-read (stream.reader) (make-u8vector 1)) => 0)))
         (check-exception (Writer-write (stream.writer) #u8(0)) Closed?)
         (check-exception (stream.set-input-timeout! (IOTimeout 10)) Closed?)
         (check-exception (stream.set-output-timeout! (IOTimeout 10)) Closed?))
       streams)
     (for-each
       (lambda (view)
         (let (impl (interface-instance-object view))
           (with-stream-io-lock (slot-ref impl 'mutex)
             (check (length (slot-ref impl 'jobs)) => 0)
             (check (hash-length (slot-ref impl 'sessions)) => 0))
           ;; Contexts are borrowed, not part of the network's retirement.
           (check (CapabilityContext-principals (slot-ref impl 'context)) ? pair?)))
       [(conn.network) (peer.network)]))

   (def (acceptance-soak! (transport : :symbol))
     => :void
     (let (deadline (+ (##current-time-point) 90))
       (call-with-api-networks transport
         (lambda ((a : Network) (b : Network) ma mb address start)
           (for-each
             (lambda (monitor)
               (APIMonitor-allow-hook-set! monitor
                 (lambda (peer direction) (api-record! monitor 'allow-connection [peer direction])))
               (APIMonitor-stream-allow-hook-set! monitor
                                                  (lambda (peer protocol direction) (api-record! monitor 'allow-stream [peer protocol direction]))))
             [ma mb])
           (let* ((addr (b.listen! (address "acceptance")))
                  (conn (a.connect! (b.host) [addr])) (peer (b.connect! (a.host) []))
                  (metadata (map acceptance-connection-metadata [conn peer]))
                  (streams []) (entries []) (identities []) (written 0) (received 0))
             (def (open-pair! (protocol : :string)
                              (linked?  : :boolean))
               => :list
               (let* ((out (Connection-open-stream! conn protocol lease: (and linked? 'connection)))
                      (in (api-await mb 'stream-open (lambda (s) (= (Stream-id s) (Stream-id out)))
                                     (- deadline (##current-time-point))))
                      (pair [out in]))
                 (set! streams (cons out (cons in streams)))
                 (set! entries (cons (renewal-test-entry conn out) (cons (renewal-test-entry peer in) entries)))
                 (set! identities (foldl cons identities (renewal-stream-identities pair)))
                 pair))
             (let* ((pairs (map (lambda (index) (open-pair! (string-append "/acceptance/" (number->string index)) #t))
                                '(0 1 2)))
                    (persistent (apply append pairs))
                    (persistent-entries (map (lambda ((s : Stream)) (renewal-test-entry (s.connection) s)) persistent)))
               (check (Connection-direction conn) => DIRECTION-OUT)
               (check (Connection-direction peer) => DIRECTION-IN)
               (for-each
                 (lambda (cycle)
                   (let (gate (APIMonitor))
                     ;; Release before the enclosing fixture closes/joins workers,
                     ;; including when an assertion escapes the main test thread.
                     (unwind-protect
                       (let* ((writers
                               (map (lambda ((s : Stream) n)
                                      (start (lambda () (Writer-write (s.writer)
                                                                      (acceptance-payload (fxquotient n 2) cycle (fxmodulo n 2))))))
                                    persistent '(0 1 2 3 4 5)))
                              (readers
                               (map (lambda ((s : Stream) n)
                                      (start (lambda ()
                                               (api-await gate 'release true (- deadline (##current-time-point)))
                                               (acceptance-read-thread (s.reader) (fxquotient n 2) cycle (fx- 1 (fxmodulo n 2))))))
                                    persistent '(0 1 2 3 4 5))))
                         (renewal-wait! (lambda () (andmap acceptance-stalled? persistent-entries writers)) deadline)
                         (for-each (lambda (c) (acceptance-check-live! c 3)) [conn peer])
                         (let* ((old (append (map Connection-expire [conn peer]) (map Stream-expire persistent)))
                                (target (+ 4 (apply max old)))
                                (requester (if (odd? cycle) a b)) (other (if (odd? cycle) b a))
                                (renewer (start (lambda () (Network-connect! requester (Network-host other) [] expire: target))))
                                (graceful (open-pair! "/acceptance/fin/v0" #f))
                                (reset (open-pair! "/acceptance/reset/v0" #f)))
                           (for-each (lambda (c) (acceptance-check-live! c 5)) [conn peer])
                           (for-each
                             (lambda (pair)
                               (renewal-pulse! (car pair) (cadr pair))
                               (if (eq? pair graceful)
                                 (begin
                                   (for-each (lambda (s) (Writer-close (Stream-writer s))) pair)
                                   (for-each (lambda (s) (check (Reader-read (Stream-reader s) (make-u8vector 1)) => 0)) pair))
                                 (Stream-close (car pair)))
                               (api-await ma 'stream-close (lambda (s) (eq? s (car pair))) (- deadline (##current-time-point)))
                               (api-await mb 'stream-close (lambda (s) (eq? s (cadr pair))) (- deadline (##current-time-point)))
                               (unless (eq? pair graceful)
                                 (for-each (lambda (s)
                                             (check-exception (Reader-read (Stream-reader s) (make-u8vector 1)) Closed?)) pair)))
                             [graceful reset])
                           (check-eq? (thread-join!/error renewer (seconds->time deadline)) (if (odd? cycle) conn peer))
                           ;; Installation alone is insufficient: wait for actual
                           ;; worker/control retirement on connection AND streams.
                           (renewal-wait!
                            (lambda ()
                              (and (andmap (lambda (c) (and (>= (Connection-expire c) target) (acceptance-idle? c 3))) [conn peer])
                                   (andmap (lambda (s) (>= (Stream-expire s) target)) persistent))) deadline)
                           (for-each (lambda (before after) (check (> after before) => #t)) old
                                     (append (map Connection-expire [conn peer]) (map Stream-expire persistent)))
                           (check (andmap acceptance-stalled? persistent-entries writers) => #t)
                           (for-each
                             (lambda ((c : Connection))
                               (acceptance-check-live! c 3)
                               (using (impl (interface-instance-object c) :- NetworkConnection)
                                 (with-stream-io-lock impl.parent.mx
                                   (check impl.renewal.last-id => cycle)
                                   (check (acceptance-scope-idle? impl.renewal) => #t)
                                   (for-each (lambda ((entry : ConnectionOpening))
                                               (check entry.renewal.last-id => cycle)
                                               (check (acceptance-scope-idle? entry.renewal) => #t)) impl.openings))))
                             [conn peer]))
                         (api-record! gate 'release #t)
                         (for-each (lambda (worker)
                                     (let (count (thread-join!/error worker (seconds->time deadline)))
                                       (check count => 16384) (set! written (+ written count)))) writers)
                         (for-each (lambda (worker)
                                     (let (count (thread-join!/error worker (seconds->time deadline)))
                                       (check count => 16384) (set! received (+ received count)))) readers)
                         (renewal-wait!
                          (lambda ()
                            (and (andmap (lambda (c) (acceptance-idle? c 3)) [conn peer])
                                 (andmap (lambda ((entry : ConnectionOpening))
                                           (using (io entry.io :- StreamIO)
                                             (with-stream-io-lock io.input-mx
                                               (with-stream-io-lock io.output-mx
                                                 (and (= io.state.receive.size 0) (= io.state.send.size 0)
                                                      (= io.state.in-flight 0) (= io.state.pending-credit 0)
                                                      (= io.state.send-credit io.state.peer-window)))))) persistent-entries))) deadline)
                         (check-eq? (a.connect! (b.host) []) conn)
                         (check-eq? (b.connect! (a.host) []) peer)
                         (check (map acceptance-connection-metadata [conn peer]) => metadata)
                         (renewal-check-identities! identities)
                         (for-each (lambda (monitor)
                                     (check (renewal-event-count monitor 'allow-connection) => 1)
                                     (check (renewal-event-count monitor 'allow-stream) => (+ 3 (* 2 cycle)))
                                     (check (renewal-event-count monitor 'connection-open) => 1)
                                     (check (renewal-event-count monitor 'connection-close) => 0)
                                     (check (renewal-event-count monitor 'stream-open) => (+ 3 (* 2 cycle)))
                                     (check (renewal-event-count monitor 'stream-close) => (* 2 cycle))) [ma mb]))
                       (api-record! gate 'release #t))))
                 '(1 2 3))
               (check written => 294912)
               (check received => 294912)
               (let ((connection-expirations (map Connection-expire [conn peer]))
                     (stream-expirations (map Stream-expire streams)))
                 (api-close! a b)
                 (check (map acceptance-connection-metadata [conn peer]) => metadata)
                 (check (map Connection-expire [conn peer]) => connection-expirations)
                 (check (map Stream-expire streams) => stream-expirations)
                 (renewal-check-identities! identities)
                 (acceptance-check-closed! conn peer streams)
                 (for-each (lambda (s)
                             (check-exception (Reader-read (Stream-reader s) (make-u8vector 1)) Closed?)) persistent)
                 (for-each
                   (lambda ((entry : ConnectionOpening))
                     (with-stream-io-lock entry.owner.parent.mx
                       (check entry.done? => #t)
                       (check (thread-state-normally-terminated? (thread-state entry.worker)) => #t)
                       (check (network-thread-join! entry.worker 0) => (void))
                       (check entry.staging? => #f)
                       (check [entry.blobs entry.tokens entry.auth] => [[] #() #f])
                       (check (andmap (lambda (work) (or (not work) (eq? (ConnectionWork-state work) 'released)))
                                      [entry.control entry.terminal]) => #t)
                       (when entry.renewal (check (acceptance-scope-idle? entry.renewal) => #t)))) entries)
                 (for-each (lambda (monitor)
                             (check (renewal-event-count monitor 'allow-connection) => 1)
                             (check (renewal-event-count monitor 'allow-stream) => 9)
                             (check (renewal-event-count monitor 'connection-close) => 1)
                             (check (renewal-event-count monitor 'stream-close) => 9)
                             (api-check-pairs! monitor)) [ma mb])
                 (check-exception (a.connections) Closed?)
                 (check-exception (b.connections) Closed?)
                 (check (< (##current-time-point) deadline) => #t)))))
         acceptance-network-factory acceptance-config)))

   ;; Hold a real verifier with populated snapshots beyond actual service exit.
   ;; Joined close must then retire obsolete owning links, not merely zero charges.
   (def (acceptance-late-verifier! (transport : :symbol))
     => :void
     (let (deadline (+ (##current-time-point) 30))
       (call-with-api-networks transport
         (lambda ((a : Network) (b : Network) ma mb address start)
           (let* ((conn (a.connect! (b.host) [(b.listen! (address "late-verifier"))]))
                  (peer (b.connect! (a.host) []))
                  (stream (Connection-open-stream! conn "/acceptance/retained/v0" lease: 'connection))
                  (incoming (api-await mb 'stream-open (lambda (_) #t)))
                  (views [stream incoming])
                  (identities (renewal-stream-identities views))
                  (metadata (map acceptance-connection-metadata [conn peer]))
                  (target (+ 4 (max (Connection-expire conn) (Stream-expire stream))))
                  (round #f) (caller #f) (close-a #f) (close-b #f))
             (renewal-pulse! stream incoming)
             (check-eq? (a.connect! (b.host) [] expire: target) conn)
             (renewal-wait!
              (lambda () (and (andmap (lambda (s) (>= (Stream-expire s) target)) views)
                              (acceptance-idle? conn 1) (acceptance-idle? peer 1))) deadline)
             (using ((local (interface-instance-object conn) :- NetworkConnection)
                     (remote (interface-instance-object peer) :- NetworkConnection))
               (def (verifier (impl : NetworkConnection)
                              (gate : :mutex))
                 => (Maybe RenewalRound)
                 (with-stream-io-lock impl.parent.mx
                   (using (active impl.renewal.active :? RenewalRound)
                     (and active active.worker
                          (let (state (thread-state active.worker))
                            (and (thread-state-waiting? state)
                                 (eq? (thread-state-waiting-for state) gate) active))))))
               (let ((gate-a (slot-ref (interface-instance-object local.candidate.context) 'mutex))
                     (gate-b (slot-ref (interface-instance-object remote.candidate.context) 'mutex))
                     (expirations (map Stream-expire views)))
                 (with-stream-io-lock gate-b
                   (set! caller (start (lambda () (with-catch (lambda (e) ['failed e])
                                                              (lambda () ['succeeded (a.connect! (b.host) [] expire: (+ target 4))])))))
                   (renewal-wait! (lambda () (verifier remote gate-b)) deadline)
                   (with-stream-io-lock gate-a
                     (mutex-unlock! gate-b)
                     (set! round (renewal-wait! (lambda () (verifier local gate-a)) deadline))
                     (using (round :- RenewalRound)
                       (let* ((tokens round.tokens) (fields round.peer-fields) (service local.parent.worker)
                              (net (interface-instance-object a))
                              (cleanup-worker
                               (with-stream-io-lock (slot-ref net 'mutex)
                                 (slot-ref (find (lambda (job) (eq? (slot-ref job 'connection) local))
                                                 (slot-ref net 'jobs)) 'worker)))
                              ;; Its only blocking operation is joining this exact
                              ;; verifier. Observe the target's real join CV without
                              ;; depending on Gambit's private thread slot layout.
                              (observer (start (lambda () (network-thread-join! round.worker (seconds->time deadline)))))
                              (join-cv
                               (renewal-wait!
                                (lambda () (let (state (thread-state observer))
                                             (and (thread-state-waiting? state)
                                                  (condition-variable? (thread-state-waiting-for state))
                                                  (thread-state-waiting-for state)))) deadline)))
                         (with-stream-io-lock local.parent.mx
                           (check (> (vector-length tokens) 0) => #t)
                           (check (> (vector-length fields) 0) => #t)
                           (check round.phase => 'auth-received))
                         (set! close-a (start (lambda () (a.close) 'closed)))
                         (set! close-b (start (lambda () (b.close) 'closed)))
                         (let (outcome (with-catch (lambda (e) ['failed e])
                                                   (lambda () ['finished (network-thread-join! service (seconds->time deadline))])))
                           (check (or (eq? (car outcome) 'finished)
                                      (and (eq? (car outcome) 'failed) (eq? (cadr outcome) local.parent.error))) => #t))
                         (check (or (thread-state-normally-terminated? (thread-state service))
                                    (thread-state-abnormally-terminated? (thread-state service))) => #t)
                         (with-stream-io-lock local.parent.mx
                           (check local.parent.closed? => #t)
                           (check round.retired? => #t)
                           (check round.worker-done? => #f)
                           (check (memq round local.renewal.owned) ? pair?)
                           (check-eq? local.renewal.operation round.operation)
                           (check-eq? round.tokens tokens)
                           (check-eq? round.peer-fields fields))
                         (renewal-wait!
                          (lambda ()
                            (let ((cleanup-state (thread-state cleanup-worker))
                                  (close-state (thread-state close-a)))
                              (and (thread-state-waiting? cleanup-state)
                                   (eq? (thread-state-waiting-for cleanup-state) join-cv)
                                   (thread-state-waiting? close-state)
                                   (condition-variable? (thread-state-waiting-for close-state))
                                   (with-stream-io-lock (slot-ref net 'mutex) (slot-ref net 'closed?)))))
                          deadline)))))
                 ;; Both context gates unwind before joining network cleanup.
                 (check (thread-join!/error close-a (seconds->time deadline)) => 'closed)
                 (check (thread-join!/error close-b (seconds->time deadline)) => 'closed)
                 (let (outcome (thread-join!/error caller (seconds->time deadline)))
                   (check (car outcome) => 'failed)
                   (check-eq? (cadr outcome) local.parent.error))
                 (with-stream-io-lock local.parent.mx
                   (check (length local.renewal.owned) => 0)
                   (check (not local.renewal.operation) => #t)
                   (check (RenewalRound-worker-done? round) => #t))
                 (check (map Connection-expire [conn peer]) => [target target])
                 (check (map Stream-expire views) => expirations)
                 (check (map acceptance-connection-metadata [conn peer]) => metadata)
                 (renewal-check-identities! identities)
                 (acceptance-check-closed! conn peer views)
                 (api-check-pairs! ma)
                 (api-check-pairs! mb)
                 (check (< (##current-time-point) deadline) => #t)))))
         acceptance-network-factory acceptance-config)))

   ;; Teardown timeout is not permission to close contexts, keys or paths still
   ;; borrowed by a live close callback and application worker. Retain actual
   ;; closer handles, then release/join them before this test cleans up manually.
   (def (acceptance-fixture-timeout!)
     => :void
     (let ((gate (APIMonitor)) (contexts []) (store #f) (dir #f)
           (closers []) (worker #f))
       (def (factory (host           : :string)
                     (ctx            : CapabilityContext)
                     (monitor        : NetworkMonitor)
                     config: (config : NetworkConfig)
                     limits: (limits : NetworkLimits))
         => Network
         (set! contexts (cons ctx contexts))
         (set! store (slot-ref (interface-instance-object ctx) 'keystore))
         (new-network host ctx monitor config: config limits: limits))
       (unwind-protect
         (let (outcome
               (with-catch (lambda (e) ['failed e])
                           (lambda ()
                             (call-with-api-networks 'unix
                               (lambda ((a : Network) (b : Network) ma mb address start)
                                 (set! dir (path-directory (slot-ref (address "retained") 'path)))
                                 (a.connect! (b.host) [(b.listen! (address "timeout"))])
                                 (b.connect! (a.host) [])
                                 (APIMonitor-close-hook-set! ma
                                   (lambda (conn)
                                     (api-record! gate 'close-blocked conn)
                                     (api-await gate 'release true 10)
                                     (void)))
                                 (set! worker (start (lambda ()
                                                       (api-record! gate 'worker-blocked #t)
                                                       (api-await gate 'release true 10)
                                                       'finished)))
                                 (api-await gate 'worker-blocked true 2)
                                 (set! closers [(api-close-thread a) (api-close-thread b)])
                                 (api-await gate 'close-blocked true 2))
                               factory acceptance-config .1)
                             ['succeeded])))
           (check (car outcome) => 'failed)
           (check (cadr outcome) ? Timeout?)
           (check (file-exists? dir) => #t)
           (for-each (lambda (ctx) (check (CapabilityContext-principals ctx) ? pair?)) contexts)
           (check (length (Keystore-list-keys store)) => 2)
           (check (thread-state-waiting? (thread-state worker)) => #t)
           (check (thread-join!/error (car closers) .01 'waiting) => 'waiting))
         (begin
           (api-record! gate 'release #t)
           (for-each (lambda (closer) (thread-join!/error closer 5)) closers)
           (when worker (thread-join!/error worker 5))
           (for-each CapabilityContext-close contexts)
           (when store (Closer-close store))
           (when dir (clear-temporary-file! dir))))
       ;; A known terminated application failure is different from join timeout:
       ;; it must not prevent safe fixture cleanup, even when the failure is #f.
       (set! contexts [])
       (call-with-api-networks 'unix
         (lambda (a b ma mb address start)
           (let* ((failed (start (lambda () (raise #f))))
                  (outcome (with-catch (lambda (e) ['failed e])
                                       (lambda () ['succeeded (thread-join!/error failed 2)]))))
             (check outcome => ['failed #f])))
         factory acceptance-config)
       (for-each (lambda (ctx) (check-exception (CapabilityContext-principals ctx) Closed?)) contexts)))

   (def network-acceptance-test
     (test-suite "Bounded public ensemble mixed-load acceptance"
       (test-case "fixture timeout retains borrowed resources until every actual owner joins"
         (acceptance-fixture-timeout!))
       (test-case "Unix late verifier retires snapshots after service exits and joined shutdown completes"
         (acceptance-late-verifier! 'unix))
       (test-case "TLS late verifier retires snapshots after service exits and joined shutdown completes"
         (acceptance-late-verifier! 'tls))
       (test-case "Unix three linked duplex streams, three explicit renewals and FIN/RESET churn"
         (acceptance-soak! 'unix))
       (test-case "TLS three linked duplex streams, three explicit renewals and FIN/RESET churn"
         (acceptance-soak! 'tls)))))
  (else (export)))
