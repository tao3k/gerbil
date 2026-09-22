;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Real public Network leases, authorized streams and joined shutdown
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/error
           :std/interface
           :std/io
           :std/crypto/pkey
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
           ../ucan/did
           (only-in ./connection
                    NetworkConnection)
           (only-in ./connector
                    ConnectorCredentials)
           ./handshake
           ./thread)
   (export network-api-test
           (struct-out APIMonitor)
           call-with-api-networks
           api-record!
           api-await
           api-check-pairs!
           api-close-thread
           api-close!)

   ;; Ownership regressions need gates at private post-CONFIRM and retirement
   ;; boundaries, which public callbacks cannot expose. Load the real owner source,
   ;; retaining its algorithms and concrete connection/transport dependencies. Only
   ;; these test-module hooks and interpreted implement bindings differ.
   (defsyntax (api-owner-fault-module stx)
     (syntax-case stx ()
       ((_ name path)
        (let ((hooks '((network-setup-connected! . connected)
                       (network-setup-identified! . identified)
                       (network-setup-cleanup! . cleaned)
                       (network-session-finished! . finished)
                       (network-setup-complete! . confirmed)))
              (hook-count 0) (activations 0) (open-locks 0) (construction-locks 0)
              (waits 0) (policies 0))
          (def (absolute-import form)
            (cond
             ((pair? form) (map absolute-import form))
             ((symbol? form)
              (let (text (symbol->string form))
                (cond
                 ((and (>= (string-length text) 3) (equal? (substring text 0 3) "../"))
                  (string->symbol (string-append ":std/ensemble/" (substring text 3 (string-length text)))))
                 ((and (>= (string-length text) 2) (equal? (substring text 0 2) "./"))
                  (string->symbol (string-append ":std/ensemble/network/" (substring text 2 (string-length text)))))
                 (else form))))
             (else form)))
          (def (activate-hook form)
            (cond
             ((equal? form '(network-wait! self (seconds->time wait-deadline)))
              (set! waits (+ waits 1))
              `(begin ((current-network-wait-hook)) ,form))
             ((equal? form '(with-network-wait-lock self
                              (set! setup.job.connection conn)
                              (network-check-open! self)))
              (set! construction-locks (+ construction-locks 1))
              `(begin ((current-network-construction-hook) setup conn.parent.worker) ,form))
             ((and (pair? form) (memq (car form) '(do-with-lock with-network-wait-lock))
                   (equal? (cadr form) 'self)
                   (member '(when candidate.smaller?
                              (network-commit! self.owner setup.reservation (current-time-seconds)))
                           (cddr form)))
              (set! open-locks (+ open-locks 1))
              `(begin ((current-network-hook) 'open-lock setup candidate) ,form))
             ((equal? form '(connection-activate! conn))
              (set! activations (+ activations 1))
              '(begin ((current-network-hook) 'activating setup conn.candidate)
                      (connection-activate! conn)
                      ((current-network-hook) 'activated setup conn.candidate)
                      (void)))
             ((and (pair? form) (eq? (car form) 'connection-enable-renewable!))
              (set! policies (+ policies 1))
              `(begin ,form ((current-network-policy-hook) ,@(cdr form))))
             ((pair? form) (cons (activate-hook (car form)) (activate-hook (cdr form))))
             (else form)))
          (def (instrument form)
            (case (and (pair? form) (car form))
              ((export) '(begin))
              ((import) (absolute-import form))
              ((implement)
               `(implement ,(cadr form) ,(caddr form)
                  ,@(map (lambda (method)
                           (let (binding (symbol->string (cadr method)))
                             (unless (equal? (substring binding 0 2) "__")
                               (error "Owner implement binding changed" method))
                             (list (car method) (string->symbol (substring binding 2 (string-length binding))))))
                         (cdddr form))))
              ((def)
               (let (hook (and (pair? (cadr form)) (assq (caadr form) hooks)))
                 (if hook
                   (let* ((stage (cdr hook))
                          (body (activate-hook (cddddr form)))
                          (call `((current-network-hook) ',stage setup
                                  ,(if (memq stage '(cleaned finished)) #f 'candidate))))
                     (unless (and (eq? (caddr form) '=>) (eq? (cadddr form) ':void))
                       (error "Owner hook signature changed" (car hook)))
                     (set! hook-count (+ hook-count 1))
                     `(def ,(cadr form) => :void
                        ,@(if (eq? stage 'confirmed) (cons call body) (append body [call '(void)]))))
                   (activate-hook form))))
              (else form)))
          (let (forms
                (call-with-input-file (gx#core-resolve-path #'path (stx-source stx))
                  (lambda (port)
                    (let loop ((result []))
                      (let (form (read port))
                        (if (eof-object? form) (reverse result)
                            (loop (cons (instrument form) result))))))))
            (unless (and (= hook-count (length hooks)) (= activations 1)
                         (= open-locks 1) (= construction-locks 1) (= waits 1) (= policies 2))
              (error "Owner source hook boundaries changed"
                hook-count activations open-locks construction-locks waits policies))
            (datum->syntax #'name
              `(module ,(stx-e #'name)
                 (export #t)
                 (def current-network-hook (make-parameter (lambda (stage setup candidate) (void))))
                 (def current-network-construction-hook (make-parameter (lambda (setup worker) (void))))
                 (def current-network-wait-hook (make-parameter void))
                 (def current-network-policy-hook (make-parameter (lambda (conn seed) (void))))
                 ,@forms)))))))

   (api-owner-fault-module api-owner-fault "network.ss")
   (import (prefix-in api-owner-fault fault#))

   ;; Only the application monitor is a fixture. Networks, Connections, Streams,
   ;; TLS, identity proofs and UCAN authorization all use the public implementation.
   (defclass APIMonitor
     ((mutex             : :mutex := (make-mutex 'api-monitor))
      (cv                : :condvar := (make-condition-variable 'api-monitor))
      (events            : :list := [])
      (connection?       : :boolean := #t)
      (stream?           : :boolean := #t)
      (allow-hook        : :procedure := (lambda (peer direction) (void)))
      (stream-allow-hook : :procedure := (lambda (peer protocol direction) (void)))
       (connection-hook   : :procedure := void)
       (stream-hook       : :procedure := void)
       (stream-close-hook : :procedure := void)
       (close-hook        : :procedure := void))
     final: #t)

   (def (api-record! (self   : APIMonitor)
                     (kind   : :symbol)
                     (object : :t))
     => :void
     (do-with-lock self.mutex
       (set! self.events (cons [kind object] self.events))
       (condition-variable-broadcast! self.cv)))

   (def (api-allow-connection? (self      : APIMonitor)
                               (peer      : :string)
                               (direction : :fixnum))
     => :boolean
     ((APIMonitor-allow-hook self) peer direction)
     self.connection?)

   (def (api-open-connection (self : APIMonitor)
                             (conn : Connection))
     => :void
     ((APIMonitor-connection-hook self) conn)
     (api-record! self 'connection-open conn))

   (def (api-close-connection (self : APIMonitor)
                              (conn : Connection))
     => :void
     (api-record! self 'connection-close conn)
     ((APIMonitor-close-hook self) conn))

   (def (api-allow-stream? (self      : APIMonitor)
                           (peer      : :string)
                           (protocol  : :string)
                           (direction : :fixnum))
     => :boolean
     ((APIMonitor-stream-allow-hook self) peer protocol direction)
     self.stream?)

   (def (api-open-stream (self   : APIMonitor)
                         (stream : Stream))
     => :void
     ((APIMonitor-stream-hook self) stream)
     (api-record! self 'stream-open stream))

   (def (api-close-stream (self   : APIMonitor)
                          (stream : Stream))
     => :void
     (api-record! self 'stream-close stream)
     ((APIMonitor-stream-close-hook self) stream))

   (implement NetworkMonitor APIMonitor
     (allow-connection? api-allow-connection?)
     (on-open-connection api-open-connection)
     (on-close-connection api-close-connection)
     (allow-stream? api-allow-stream?)
     (on-open-stream api-open-stream)
     (on-close-stream api-close-stream))

   (def (api-await (self     : APIMonitor)
                   (kind     : :symbol)
                   (matches? : :procedure)
                   (timeout  : :real := 8))
     => :t
     (let (deadline (seconds->time (+ (##current-time-point) timeout)))
       (unwind-protect
         (let loop ()
           (mutex-lock! self.mutex)
           (let (event (find (lambda (event)
                               (and (eq? (car event) kind) (matches? (cadr event))))
                             self.events))
             (if event
               (cadr event)
               (begin
                 (unless (mutex-unlock! self.mutex self.cv deadline)
                   (raise-timeout api-await "Missing monitor notification" kind))
                 (loop)))))
         (when (eq? (mutex-state self.mutex) (current-thread))
           (mutex-unlock! self.mutex)))))

   ;; After Network.close, every successfully recorded open has exactly one close,
   ;; and every stream close precedes its owning connection's close notification.
   (def (api-check-pairs! (self : APIMonitor))
     => :void
     (let ((connections []) (streams []))
       (for-each
         (lambda (event)
           (let ((kind (car event)) (object (cadr event)))
             (case kind
               ((connection-open)
                (check (memq object connections) => #f)
                (set! connections (cons object connections)))
               ((stream-open)
                (check (memq (Stream-connection object) connections) ? pair?)
                (check (memq object streams) => #f)
                (set! streams (cons object streams)))
               ((stream-close)
                (check (memq object streams) ? pair?)
                (set! streams (remq1 object streams)))
               ((connection-close)
                (check (memq object connections) ? pair?)
                (check (filter (lambda (s) (eq? (Stream-connection s) object)) streams) => [])
                (set! connections (remq1 object connections))))))
         (reverse self.events))
       (check connections => [])
       (check streams => [])))

   ;; Keep explicit body closes owned by the fixture, including after a join timeout.
   (def current-api-close-threads (make-parameter #f))

   (def (api-close-thread (net : Network))
     => :thread
     (let* ((closers (current-api-close-threads))
            (entry (and closers (assq net (unbox closers)))))
       (if entry
         (cdr entry)
         (let (worker (spawn-thread (lambda () (net.close))))
           (when closers
             (set-box! closers (cons (cons net worker) (unbox closers))))
           worker))))

   ;; Start both closes before joining either. The timeout makes a broken blocking
   ;; shutdown observable instead of turning a successful byte exchange into a hang.
   (def (api-close! (a : Network)
                    (b : Network))
     => :void
     (let* ((deadline (seconds->time (+ (##current-time-point) 10)))
            (left (api-close-thread a))
            (right (api-close-thread b)))
       (try
         (thread-join!/error left deadline)
         (finally (thread-join!/error right deadline)))))

   ;; Admission is held at a separate gate, so these callers cannot leave the
   ;; Network CV until it is released. Observe shared establishment without
   ;; interrupting credential preparation or callback code.
   (def (api-wait-for-network! (worker : :thread))
     => :void
     (let (deadline (+ (##current-time-point) 2))
       (let loop ()
         (let* ((state (thread-state worker))
                (waiting (and (thread-state-waiting? state) (thread-state-waiting-for state))))
           (unless (and (condition-variable? waiting)
                        (eq? (condition-variable-name waiting) 'network))
             (when (>= (##current-time-point) deadline)
               (raise-timeout api-wait-for-network! "Caller did not join establishment"))
             (network-thread-join! worker .001 'waiting)
             (loop))))))

   ;; Observe a real blocked acquisition before allowing deadline expiry.
   (def (api-wait-for-mutex! (worker : :thread)
                             (mutex  : :mutex))
     => :void
     (let (deadline (+ (##current-time-point) 2))
       (let loop ()
         (let (state (thread-state worker))
           (unless (and (thread-state-waiting? state)
                        (eq? (thread-state-waiting-for state) mutex))
             (when (>= (##current-time-point) deadline)
               (raise-timeout api-wait-for-mutex! "Worker did not reach mutex acquisition"))
             (network-thread-join! worker .001 'waiting)
             (loop))))))

   ;; The optional cleanup budget is fixture-only; timed-out owners keep their
   ;; contexts, store and Unix directory rather than borrowing freed resources.
   (def (call-with-api-networks (mode            : :symbol)
                                (proc            : :procedure)
                                (factory         : :procedure := new-network)
                                (config          : NetworkConfig :=
                                                 (NetworkConfig connection-ttl: 30 stream-ttl: 20
                                                                handshake-timeout: 8 stream-open-timeout: 4
                                                                stream-input-timeout: (IOTimeout 4)
                                                                stream-output-timeout: (IOTimeout 4)))
                                (cleanup-timeout : :real := 10))
     => :void
     (let (safe-to-clean? #t)
       (using (store (make-memory-keystore #u8(1 2 3)) :- Keystore)
         (unwind-protect
           ;; Generate both principals before either context snapshots implicit roots.
           (let (dids (list-sort string<? [(store.generate-key!) (store.generate-key!)]))
             (using (ctx-a (open-capability-context ":memory:" store) :- CapabilityContext)
               (unwind-protect
                 (using (ctx-b (open-capability-context ":memory:" store) :- CapabilityContext)
                   (unwind-protect
                     (let (dir (make-temporary-file-name "network-api-"))
                       (unwind-protect
                         (begin
                           (create-directory dir)
                           (let* ((ma (APIMonitor)) (mb (APIMonitor))
                                  (limits (NetworkLimits
                                           connection-limits:
                                           (ConnectionLimits data-payload: 4
                                                             stream-limits:
                                                             (StreamLimits recv-window: 8 outbound-buffer: 8))))
                                  (a #f) (b #f) (workers []) (closers (box [])))
                             (def (start (thunk  : :procedure)
                                         (actor? : :boolean := #f))
                               => :thread
                               (let (worker (if actor? (spawn/name 'api-worker thunk) (spawn-thread thunk)))
                                 (set! workers (cons worker workers))
                                 worker))
                             (def (address (name : :string))
                               => Address
                               (if (eq? mode 'unix)
                                 (UnixAddress (path-expand name dir))
                                 (InetAddress localhost4 0)))
                             (parameterize ((current-api-close-threads closers))
                               (unwind-protect
                                 (begin
                                   (set! a (factory (car dids) ctx-a (NetworkMonitor ma)
                                                    config: config limits: limits))
                                   (set! safe-to-clean? #f)
                                   (set! b (factory (cadr dids) ctx-b (NetworkMonitor mb)
                                                    config: config limits: limits))
                                   (proc a b ma mb address start))
                                 (let ((deadline (seconds->time (+ (##current-time-point) cleanup-timeout)))
                                       (failed? #f) (failure #f))
                                   (def (attempt (thunk : :procedure))
                                     => :void
                                     (with-catch
                                      (lambda (e)
                                        (unless failed?
                                          (set! failed? #t)
                                          (set! failure e)))
                                      thunk)
                                     (void))
                                   ;; Reuse body closers; failure of either must not skip
                                   ;; starting the other or joining application workers.
                                   (for-each
                                     (lambda (net)
                                       (when net (attempt (lambda () (api-close-thread net)))))
                                     [a b])
                                   (for-each
                                     (lambda (entry)
                                       (attempt (lambda () (thread-join!/error (cdr entry) deadline))))
                                     (unbox closers))
                                   (for-each
                                     (lambda (worker)
                                       (attempt
                                        (lambda ()
                                          (with-catch
                                           (lambda (e)
                                             (cond
                                              ;; Expected worker failures are asserted by
                                              ;; the body. The raw join proves they ended.
                                              ((uncaught-exception? e) (void))
                                              ((join-timeout-exception? e)
                                               (raise-timeout call-with-api-networks
                                                              "Application worker did not finish" worker))
                                              (else
                                               (raise e))))
                                           (lambda () (thread-join! worker deadline))))))
                                     workers)
                                   ;; A failed closer does not prove its network stopped.
                                   ;; Unknown join errors likewise retain all borrowed resources.
                                   (set! safe-to-clean? (not failed?))
                                   (when failed?
                                     (raise failure)))))
                             (api-check-pairs! ma)
                             (api-check-pairs! mb)
                             ;; Closing either network must not close either borrowed context.
                             (check (not (not (ctx-a.get-principal (car dids)))) => #t)
                             (check (not (not (ctx-b.get-principal (cadr dids)))) => #t)))
                         (when safe-to-clean? (clear-temporary-file! dir))))
                     (when safe-to-clean? (ctx-b.close))))
                 (when safe-to-clean? (ctx-a.close)))))
           (when safe-to-clean? (store.close))))))

   (def network-api-test
     (test-suite "Public ensemble networks, renewable leases and authorized streams"
       (test-case "public connection capability protocol constants"
         (check proto:/network/connect/v0 => "/network/connect/v0")
         (check-eq? proto:/network/connect proto:/network/connect/v0))
       (test-case "network worker close rejects before locking or changing shutdown state"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (using (impl (interface-instance-object a) :- fault#EnsembleNetwork)
               (let (worker #f)
                 (unwind-protect
                   (begin
                     ;; A guard after the lock cannot complete this bounded join.
                      ;; Failed checks escape by continuation, not by raising out
                      ;; of the body; release the mutex on that path as well.
                      (with-dynamic-lock impl.mutex
                        (lambda ()
                          (set! worker
                            (spawn-network-thread 'close-guard-test
                              (lambda () (with-catch identity (lambda () (a.close))))))
                          (let (failure (network-thread-join! worker 2))
                            (check failure ? ContractViolation?)
                            (when (ContractViolation? failure)
                              (check (car (Error-irritants failure)) => 'network-close)
                              ;; The source fixture rebuilds forms without locations.
                              (check (Error-where failure)
                                     => 'std/ensemble/network/network-api-test~api-owner-fault)))
                          (check impl.closed? => #f)
                          (check impl.owner.closed? => #f)
                          (check impl.jobs => [])))
                     (check (a.peers) => [])
                     (check (a.listening) => [])
                     (thread-join!/error (api-close-thread a) 2)
                     (set! worker
                       (spawn-network-thread 'closed-guard-test
                         (lambda () (with-catch identity (lambda () (a.close))))))
                     (check (network-thread-join! worker 2) ? ContractViolation?))
                   (when worker (network-thread-join! worker 2))))))
           fault#new-network))

       (test-case "allow/open/close callbacks reject own and cross-network close without shutdown"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let ((control (APIMonitor))
                   (addr (b.listen! (address "close-guard"))))
               (def (probe (stage : :symbol) (net : Network) (other : Network))
                 => :void
                 (api-record! control stage
                   [net (with-catch identity (lambda () (net.close)))
                        (with-catch identity (lambda () (other.close)))]))
               (def (assert-probes (stage : :symbol))
                 => :void
                 (for-each
                   (lambda (net)
                     (let (result (api-await control stage (lambda (x) (eq? (car x) net))))
                       (check (cadr result) ? ContractViolation?)
                       (check (caddr result) ? ContractViolation?)))
                   [a b]))
               (for-each
                 (lambda ((monitor : APIMonitor) net other)
                   (set! monitor.allow-hook (lambda _ (probe 'allow-connection net other)))
                   (set! monitor.connection-hook (lambda _ (probe 'open-connection net other)))
                   (set! monitor.stream-allow-hook (lambda _ (probe 'allow-stream net other)))
                   (set! monitor.stream-hook (lambda _ (probe 'open-stream net other)))
                   (set! monitor.stream-close-hook (lambda _ (probe 'close-stream net other)))
                   (set! monitor.close-hook (lambda _ (probe 'close-connection net other))))
                 [ma mb] [a b] [b a])
               ;; Outgoing OPEN starts on an unmarked application caller; its owned
               ;; opening worker must mark itself rather than inherit setup state.
               (let* ((caller (start (lambda () (a.connect! (b.host) [addr]))))
                      (conn (thread-join!/error caller 8))
                      (opener (start (lambda () (Connection-open-stream! conn "/close-guard/v0"))))
                      (stream (thread-join!/error opener 8))
                      (incoming (api-await mb 'stream-open (lambda (_) #t)))
                      (buffer (make-u8vector 4)))
                 (for-each assert-probes '(allow-connection open-connection allow-stream open-stream))
                 (check (a.peers) => [(b.host)])
                 (check (b.peers) => [(a.host)])
                 (check (b.listening) => [addr])
                 (check-eq? (a.connect! (b.host) []) conn)
                 (check (Writer-write (Stream-writer stream) #u8(1 2 3 4)) => 4)
                 (check (Reader-read (Stream-reader incoming) buffer 0 4 4) => 4)
                 (check buffer => #u8(1 2 3 4))
                 (Stream-close stream)
                 (assert-probes 'close-stream)
                 (Connection-close conn)
                 (assert-probes 'close-connection)
                 (check (a.peers) => [])
                 (check (b.peers) => [])
                 (check (b.listening) => [addr]))))))

       (test-case "callback-dispatched application close works and closing callbacks still reject close"
         (for-each
           (lambda (actor?)
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let ((control (APIMonitor)) (closer #f))
                   (APIMonitor-connection-hook-set! ma
                     (lambda (conn)
                       (set! closer
                         (start
                           (lambda ()
                             (api-await control 'close (lambda (_) #t))
                             (a.close))
                           actor?))
                       (api-record! control 'dispatched #t)))
                   (APIMonitor-close-hook-set! ma
                     (lambda (conn)
                       ;; The dispatched closer has already set closed? before this
                       ;; notification. Idempotence must not bypass the worker guard.
                       (api-record! control 'closing
                         [(with-catch identity (lambda () (a.peers)))
                          (with-catch identity (lambda () (a.close)))])))
                   (unwind-protect
                     (let* ((addr (b.listen! (address "dispatched-close")))
                            (caller (start (lambda () (a.connect! (b.host) [addr])))))
                       (thread-join!/error caller 8)
                       (api-await control 'dispatched (lambda (_) #t))
                       ;; Successful connect proves the callback returned. The child
                       ;; retains dynamic parameters, but must not inherit the marker.
                       (api-record! control 'close #t)
                       (let (result (api-await control 'closing (lambda (_) #t)))
                         (check (car result) ? Closed?)
                         (check (cadr result) ? ContractViolation?))
                       (thread-join!/error closer 8)
                       (thread-join!/error (start (lambda () (a.close))) 2)
                       (check-exception (a.peers) Closed?))
                     (api-record! control 'close #t))))))
           '(#f #t)))

       (test-case "Unix/TLS public renewal from both roles, duplex bytes, FIN and joined callbacks"
         (for-each
           (lambda (mode)
             (call-with-api-networks mode
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((addr (b.listen! (address "server")))
                        (conn (a.connect! (b.host) [addr]))
                        (reverse (b.connect! (a.host) [])))
                   (check (b.listening) => [addr])
                   (check (a.peers) => [(b.host)])
                   (check (b.peers) => [(a.host)])
                   (check-eq? (Connection-network conn) a)
                   (check (Connection-direction conn) => DIRECTION-OUT)
                   (check (Connection-direction reverse) => DIRECTION-IN)
                   (check-eq? (a.connect! (b.host) []) conn)
                   (check-eq? (a.connect! (b.host) [] expire: (Connection-expire conn)) conn)
                   (let* ((before (Connection-expire conn)) (required (+ 1 before)))
                     (check-eq? (a.connect! (b.host) [] expire: required) conn)
                     (check (> (Connection-expire conn) before) => #t)
                     (check (>= (Connection-expire conn) required) => #t)
                     (check (>= (Connection-expire reverse) required) => #t))
                   (let* ((before (Connection-expire reverse)) (required (+ 1 before)))
                     (check-eq? (b.connect! (a.host) [] expire: required) reverse)
                     (check (> (Connection-expire reverse) before) => #t)
                     (check (>= (Connection-expire reverse) required) => #t)
                     (check (>= (Connection-expire conn) required) => #t))
                   (check (Connection-direction conn) => DIRECTION-OUT)
                   (check (Connection-direction reverse) => DIRECTION-IN)
                   (let* ((stream (Connection-open-stream! conn "/public/echo/v0"))
                          (incoming (api-await mb 'stream-open
                                               (lambda (s) (= (Stream-direction s) DIRECTION-IN))))
                          (buffer (make-u8vector 4)))
                     (check-eq? (Stream-connection incoming) reverse)
                     (check (Stream-protocol incoming) => "/public/echo/v0")
                     (check (Stream-expire incoming) => (Stream-expire stream))
                     (check (Writer-write (Stream-writer stream) #u8(1 2 3 4)) => 4)
                     (Writer-close (Stream-writer stream))
                     (check (Reader-read (Stream-reader incoming) buffer 0 4 4) => 4)
                     (check buffer => #u8(1 2 3 4))
                     (check (Reader-read (Stream-reader incoming) buffer 0 4 0) => 0)
                     ;; FIN is directional: responses still work after the request EOF.
                     (check (Writer-write (Stream-writer incoming) #u8(9 8 7 6)) => 4)
                     (Writer-close (Stream-writer incoming))
                     (check (Reader-read (Stream-reader stream) buffer 0 4 4) => 4)
                     (check buffer => #u8(9 8 7 6))
                     (check (Reader-read (Stream-reader stream) buffer 0 4 0) => 0)
                     (APIMonitor-close-hook-set! ma
                       (lambda (c) (Connection-close c) (raise #f)))
                     (api-close! a b)
                     (check (a.host) => (Connection-peer reverse))
                     (check-exception (a.peers) Closed?)
                     (check-exception (a.connections) Closed?)
                     (check-exception (b.listening) Closed?)
                     (check-exception (a.connect! (b.host) []) Closed?)
                     (check-exception (a.listen! (address "closed")) Closed?))))))
           '(unix tls)))

       (test-case "invalid policies and lifetime combinations leave new, pending and live state unchanged"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (using (impl (interface-instance-object a) :- fault#EnsembleNetwork)
               (let* ((addr (b.listen! (address "policy-validation")))
                      (control (APIMonitor))
                      (expire (+ (current-time-seconds) 60)))
                 (def (reject-invalid!)
                   => :void
                   (check-exception (a.connect! (b.host) [addr] lease: 'connection) true)
                   (check-exception (a.connect! (b.host) [addr] lease: 'renewable ttl: 1) IOError?)
                   (check-exception (a.connect! (b.host) [addr] lease: 'renewable expire: 0) IOError?)
                   (check-exception (a.connect! (b.host) [addr] lease: 'renewable
                                                ttl: 1 expire: expire) IOError?)
                   ;; expire's precedence cannot hide an invalid ttl contract.
                   (check-exception (a.connect! (b.host) [addr] ttl: -1 expire: expire) true)
                   (void))
                 (reject-invalid!)
                 (do-with-lock impl.mutex
                   (check (impl.sessions.ref (b.host) #f) => #f)
                   (check impl.jobs => [])
                   (do-with-lock impl.owner.mutex
                     (check impl.owner.generation => 0)
                     (check impl.owner.pending => [])))
                 (check (APIMonitor-events ma) => [])
                 (APIMonitor-allow-hook-set! ma
                   (lambda (peer direction)
                     (api-record! control 'pending #t)
                     (api-await control 'release (lambda (_) #t))))
                 (unwind-protect
                   (let (caller (start (lambda () (a.connect! (b.host) [addr]))))
                     (api-await control 'pending (lambda (_) #t))
                     (reject-invalid!)
                     (using (session (do-with-lock impl.mutex (impl.sessions.ref (b.host) #f))
                                     :- fault#NetworkSession)
                       (do-with-lock impl.mutex
                         (check session.state => 'pending)
                         (check session.renewable? => #f)
                         (check session.seed => #f)
                         (check session.policy-owner => #f)
                         (check session.active => 1))
                       (api-record! control 'release #t)
                       (let* ((conn (thread-join!/error caller 8))
                              (before (Connection-expire conn)))
                         (reject-invalid!)
                         (check-eq? (a.connect! (b.host) [] ttl: 1 expire: before lease: #f) conn)
                         (check (Connection-expire conn) => before)
                         (do-with-lock impl.mutex
                           (check-eq? (impl.sessions.ref (b.host) #f) session)
                           (check session.renewable? => #f)
                           (check session.seed => #f)))))
                   (api-record! control 'release #t)))))
           fault#new-network))

       (test-case "insufficient protected capacity rejects policy before outgoing work or live attachment"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (using (impl (interface-instance-object a) :- fault#EnsembleNetwork)
               (let (addr (b.listen! (address "policy-capacity")))
                 (check-exception (a.connect! (b.host) [addr] lease: 'renewable) IOError?)
                 (do-with-lock impl.mutex
                   (check (impl.sessions.ref (b.host) #f) => #f)
                   (check impl.jobs => [])
                   (do-with-lock impl.owner.mutex
                     (check impl.owner.generation => 0)))
                 (let* ((conn (a.connect! (b.host) [addr]))
                        (before (Connection-expire conn)))
                   (check-exception (a.connect! (b.host) [] lease: 'renewable) IOError?)
                   (check-exception (a.connect! (b.host) [] expire: (+ before 1)) IOError?)
                   (check-eq? (a.connect! (b.host) []) conn)
                   (check (Connection-expire conn) => before)
                   (do-with-lock impl.mutex
                     (using (session (impl.sessions.ref (b.host) #f) :- fault#NetworkSession)
                       (check session.renewable? => #f)
                       (check session.seed => #f)))))))
           (lambda ((host : :string) (ctx : CapabilityContext) (monitor : NetworkMonitor)
                    config: (config : NetworkConfig) limits: (limits : NetworkLimits))
             (fault#new-network host ctx monitor config: config
                                limits: (NetworkLimits connection-limits: (ConnectionLimits pending-control-frames: 3))))))

       (test-case "renewable seeds survive timed-out waiters before and after the activation cutover"
         (for-each
           (lambda (initial-lease)
             (let ((control (APIMonitor)) (small #f))
               (parameterize
                   ((fault#current-network-hook
                     (lambda (stage (setup : fault#NetworkSetup) (candidate :? Handshake))
                       (when (equal? setup.network.owner.host small)
                         (case stage
                           ((confirmed)
                            (api-record! control 'confirmed setup)
                            (api-await control 'transfer (lambda (_) #t)))
                           ((activating)
                            (api-record! control 'cutover setup)
                            (api-await control 'activate (lambda (_) #t)))
                           ((activated)
                            (api-record! control 'activated setup)
                            (api-await control 'publish (lambda (_) #t)))))))
                    (fault#current-network-policy-hook
                     (lambda ((conn : NetworkConnection) (seed :? Token))
                       (when (equal? (Network-host conn.network) small)
                         ;; This hook runs only AFTER the real parent attachment returns.
                         (api-record! control 'attached [conn seed])))))
                 (call-with-api-networks 'unix
                   (lambda ((a : Network) (b : Network) ma mb address start)
                     (set! small (a.host))
                     (let* ((addr (b.listen! (address "policy-cutover")))
                            (caller (start (lambda () (a.connect! (b.host) [addr] lease: initial-lease)))))
                       (unwind-protect
                         (using (setup (api-await control 'confirmed (lambda (_) #t)) :- fault#NetworkSetup)
                           (let* ((ctx setup.network.context)
                                  (expiry (+ (current-time-seconds) 300))
                                  (early (CapabilityContext-grant! ctx DELEGATE (b.host) (a.host) "/network" expiry))
                                  (late (CapabilityContext-grant! ctx DELEGATE (b.host) (a.host) "/network" expiry))
                                  (latest (CapabilityContext-grant! ctx DELEGATE (b.host) (a.host) "/network" expiry)))
                             (def (attach-and-timeout! (seed :? Token))
                               => :void
                               (parameterize ((fault#current-network-wait-hook
                                               (lambda () (raise-timeout network-api-test "Detached policy waiter"))))
                                 (check-exception (a.connect! (b.host) [] seed lease: 'renewable) Timeout?))
                               (do-with-lock setup.network.mutex
                                 (check setup.session.renewable? => #t)
                                 (when seed (check-eq? setup.session.seed seed)))
                               (void))
                             (check setup.job.connection.candidate.adaptive? => (not (not initial-lease)))
                             (if initial-lease
                               (begin
                                 (check setup.session.work.min-auth-expire => 0)
                                 (attach-and-timeout! early))
                               (check (> setup.session.work.min-auth-expire (current-time-seconds)) => #t))
                             (do-with-lock setup.network.mutex (check setup.session.policy-owner => #f))
                             (api-record! control 'transfer #t)
                             (api-await control 'cutover (lambda (_) #t))
                             (do-with-lock setup.network.mutex
                               (check-eq? setup.session.policy-owner setup.job.connection)
                               (check setup.session.state => 'pending))
                             (when initial-lease
                               (check-eq? (car (api-await control 'attached (lambda (x) (eq? (cadr x) early))))
                                          setup.job.connection))
                             (attach-and-timeout! late)
                             (api-await control 'attached (lambda (x) (eq? (cadr x) late)))
                             (api-record! control 'activate #t)
                             (api-await control 'activated (lambda (_) #t))
                             (attach-and-timeout! latest)
                             (api-await control 'attached (lambda (x) (eq? (cadr x) latest)))
                             (attach-and-timeout! #f)
                             (check-exception (a.connect! (b.host) [] early lease: 'renewable ttl: 1) IOError?)
                             (do-with-lock setup.network.mutex (check-eq? setup.session.seed latest))
                             (api-record! control 'publish #t)
                             (let* ((conn (thread-join!/error caller 8))
                                    (before (Connection-expire conn)))
                               (check-eq? (a.connect! (b.host) [] lease: 'renewable) conn)
                               (check-eq? (a.connect! (b.host) []) conn)
                               (check (Connection-expire conn) => before)
                               (check (> before (current-time-seconds)) => #t)
                               (do-with-lock setup.network.mutex (check-eq? setup.session.seed latest))
                               (check (length (filter (lambda (e) (eq? (car e) 'connection-open))
                                                      (APIMonitor-events ma))) => 1))))
                         (begin
                           (api-record! control 'transfer #t)
                           (api-record! control 'activate #t)
                           (api-record! control 'publish #t)))))
                   fault#new-network
                   (NetworkConfig connection-ttl: 120 handshake-timeout: 8 renewal-timeout: 2)))))
           '(#f renewable)))

       (test-case "refused admission and inbound callback errors leave the shared connection usable"
         (for-each
           (lambda (mode)
             (call-with-api-networks mode
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let (addr (b.listen! (address "server")))
                   (APIMonitor-connection?-set! ma #f)
                   (check-exception (a.connect! (b.host) [addr]) IOError?)
                   (check (APIMonitor-events ma) => [])
                   (APIMonitor-connection?-set! ma #t)
                   (let (conn (a.connect! (b.host) [addr]))
                     (APIMonitor-stream?-set! mb #f)
                     (check-exception (Connection-open-stream! conn "/public/refused/v0") IOError?)
                     (APIMonitor-stream?-set! mb #t)
                     (APIMonitor-stream-hook-set! mb
                       (lambda (stream)
                         (api-record! mb 'stream-rejected stream)
                         (raise (Error "Inbound admission"))))
                     ;; The peer may already have accepted before its local open
                     ;; callback fails. Either refusal or an accepted-then-reset
                     ;; stream is valid; neither may destroy the shared connection.
                     (let (result (with-catch identity
                                              (lambda () (Connection-open-stream! conn "/public/rejected/v0"))))
                       (if (Stream? result)
                         (check-exception (Reader-read (Stream-reader result) (make-u8vector 1) 0 1 1) Closed?)
                         (check result ? IOError?)))
                     (api-await mb 'stream-rejected (lambda (s) #t))
                     (APIMonitor-stream-hook-set! mb void)
                     (let* ((stream (Connection-open-stream! conn "/public/healthy/v0"))
                            (incoming (api-await mb 'stream-open
                                                 (lambda (s) (equal? (Stream-protocol s) "/public/healthy/v0"))))
                            (buffer (make-u8vector 1)))
                       (check-eq? (a.connect! (b.host) []) conn)
                       (check (Writer-write (Stream-writer stream) #u8(42)) => 1)
                       (check (Reader-read (Stream-reader incoming) buffer 0 1 1) => 1)
                       (check buffer => #u8(42))))))))
           '(unix tls)))

       (test-case "local stream callback exception identity, including false, and callback-safe close"
         (call-with-api-networks 'unix
           (lambda ((a : Network) (b : Network) ma mb address start)
             (let* ((addr (b.listen! (address "server")))
                    (conn (a.connect! (b.host) [addr])))
               (for-each
                 (lambda (failure)
                   (APIMonitor-stream-hook-set! ma
                     (lambda (stream) (Stream-close stream) (raise failure)))
                   (check-eq? (with-catch identity
                                          (lambda () (Connection-open-stream! conn "/public/callback/v0")))
                              failure))
                 [#f (Closed "Local final admission") (Error "Local final admission")])
               (APIMonitor-stream-hook-set! ma void)
               (check-eq? (a.connect! (b.host) []) conn)
               (check (filter (lambda (event) (eq? (car event) 'stream-close))
                              (APIMonitor-events ma)) => [])))))

       (test-case "connection callback failure is unpaired, normal callback-close is paired"
         (for-each
           (lambda (reject?)
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let ((failure (Closed "Connection callback refusal"))
                       (addr (b.listen! (address "server"))))
                   (APIMonitor-connection-hook-set! ma
                     (lambda ((conn : Connection))
                       ;; Metadata exists, but no framed reader or stream may start yet.
                       (check (conn.peer) => (b.host))
                       (check-exception (conn.open-stream! "/public/too-early/v0") Closed?)
                       (conn.close)
                       (when reject? (raise failure))))
                   (let (result (with-catch identity (lambda () (a.connect! (b.host) [addr]))))
                     (if reject? (check-eq? result failure) (check result ? Closed?)))
                   (check (length (APIMonitor-events ma)) => (if reject? 0 2))))))
           '(#f #t)))

       (test-case "crossed attempts and empty-address joiners publish one live connection per peer"
         (for-each
           (lambda (mode)
             (call-with-api-networks mode
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (let* ((aa (a.listen! (address "left"))) (ba (b.listen! (address "right")))
                        (mx (make-mutex 'api-crossed))
                        (cv (make-condition-variable 'api-crossed))
                        (entered 0) (released? #f))
                   (def (gate (peer      : :string)
                              (direction : :fixnum))
                     => :void
                     (when (= direction DIRECTION-OUT)
                       (let (deadline (seconds->time (+ (##current-time-point) 5)))
                         (unwind-protect
                           (begin
                             (mutex-lock! mx)
                             (set! entered (+ entered 1))
                             (condition-variable-broadcast! cv)
                             (let loop ()
                               (unless released?
                                 (unless (mutex-unlock! mx cv deadline)
                                   (raise-timeout gate "Crossed caller gate expired"))
                                 (mutex-lock! mx)
                                 (loop))))
                           (when (eq? (mutex-state mx) (current-thread)) (mutex-unlock! mx))))))
                   (APIMonitor-allow-hook-set! ma gate)
                   (APIMonitor-allow-hook-set! mb gate)
                   (let ((left (start (lambda () (a.connect! (b.host) [ba]))))
                         (right (start (lambda () (b.connect! (a.host) [aa])))))
                     (unwind-protect
                       (let wait ()
                         (mutex-lock! mx)
                         (unless (= entered 2)
                           (unless (mutex-unlock! mx cv 5)
                             (raise-timeout gate "Both outgoing callers must reach admission"))
                           (wait)))
                       (when (eq? (mutex-state mx) (current-thread)) (mutex-unlock! mx)))
                     (let* ((longer-target (+ (current-time-seconds) 60))
                            (joined-left (start (lambda () (a.connect! (b.host) []))))
                            (joined-right (start (lambda () (b.connect! (a.host) []))))
                            (longer (start (lambda ()
                                             (a.connect! (b.host) []
                                                         expire: longer-target))))
                            (failure (Closed "Detached connect waiter")))
                       (api-wait-for-network! joined-left)
                       (api-wait-for-network! joined-right)
                       (api-wait-for-network! longer)
                       ;; Only this caller fails at its synchronous wait boundary;
                       ;; the shared session and its other waiters remain owned.
                       (let (cancelled
                             (start (lambda ()
                                      (parameterize ((fault#current-network-wait-hook (lambda () (raise failure))))
                                        (a.connect! (b.host) [])))))
                         (check-eq? (with-catch identity (cut thread-join!/error cancelled 2)) failure))
                       (do-with-lock mx
                         (set! released? #t)
                         (condition-variable-broadcast! cv))
                       (let ((lc (thread-join!/error left 8))
                             (rc (thread-join!/error right 8)))
                         (check-eq? (thread-join!/error joined-left 8) lc)
                         (check-eq? (thread-join!/error joined-right 8) rc)
                         (let (renewed (thread-join!/error longer 8))
                           (check-eq? renewed lc))
                         (check (>= (Connection-expire lc) longer-target) => #t)
                         (check (>= (Connection-expire rc) longer-target) => #t)
                         (check (a.connections) => [lc])
                         (check (b.connections) => [rc])
                         (check (length (filter (lambda (e) (eq? (car e) 'connection-open))
                                                (APIMonitor-events ma))) => 1)
                         (check (length (filter (lambda (e) (eq? (car e) 'connection-open))
                                                (APIMonitor-events mb))) => 1)
                         ;; Preference applies only once the smaller endpoint has
                         ;; reserved its outgoing transport, not while allow is held.
                         (check (Connection-direction lc) =>
                                (if (= (Connection-direction rc) DIRECTION-IN)
                                  DIRECTION-OUT DIRECTION-IN)))))))
               fault#new-network))
           '(unix tls)))

       (test-case "committed failure cannot transfer old waiters to a fresh incoming election"
         (let ((control (APIMonitor)) (small #f) (fallback #f)
               (held? #f) (closed? #f))
           (parameterize
               ((fault#current-network-hook
                 (lambda (stage (setup : fault#NetworkSetup) (candidate :? Handshake))
                   (if (equal? setup.network.owner.host small)
                     (case stage
                       ((connected)
                        (when (and candidate candidate.initiator?)
                          (api-record! control 'outgoing-connected #t)))
                       ((identified)
                        (when (and candidate (not candidate.initiator?) (not fallback))
                          (set! fallback setup)
                          (api-record! control 'fallback-identified setup)))
                       ((cleaned)
                        (when (and (eq? setup fallback) (not held?))
                          (set! held? #t)
                          ;; The cutoff has retired, but this member has not yet
                          ;; decremented the old session's active count.
                          (api-record! control 'fallback-retired #t)
                          (api-await control 'release-fallback (lambda (_) #t))))
                       ((finished)
                        (unless (eq? setup fallback)
                          (api-record! control 'local-selected-finished #t))))
                     (when (and (eq? stage 'finished) setup.session
                                (= setup.session.active 0))
                       (api-record! control 'remote-session-finished #t))))))
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (set! small (a.host))
                 (let ((aa (a.listen! (address "left")))
                       (ba (b.listen! (address "right"))))
                   (APIMonitor-allow-hook-set! ma
                     (lambda (peer direction)
                       (when (= direction DIRECTION-OUT)
                         (api-record! control 'local-outgoing #t)
                         (api-await control 'release-local (lambda (_) #t)))))
                   (APIMonitor-allow-hook-set! mb
                     (lambda (peer direction)
                       (when (= direction DIRECTION-OUT)
                         (api-record! control 'remote-outgoing #t)
                         (api-await control 'release-remote (lambda (_) #t)))))
                   (APIMonitor-connection-hook-set! mb
                     (lambda ((conn : Connection))
                       (unless closed?
                         (set! closed? #t)
                         (api-await control 'fallback-identified (lambda (_) #t))
                         ;; A has sent committing ACCEPT. It sees an ordinary
                         ;; socket failure waiting for CONFIRM, not a local
                         ;; on-open exception, while its fallback remains owned.
                         (conn.close))))
                   (unwind-protect
                     (let ((left (start (lambda () (a.connect! (b.host) [ba]))))
                           (right (start (lambda () (b.connect! (a.host) [aa])))))
                       (api-await control 'local-outgoing (lambda (_) #t))
                       (api-await control 'remote-outgoing (lambda (_) #t))
                       (api-record! control 'release-local #t)
                       ;; Ensure the smaller endpoint has really reserved/dialed
                       ;; its preferred candidate before letting the fallback dial.
                       (api-await control 'outgoing-connected (lambda (_) #t))
                       (api-record! control 'release-remote #t)
                       (api-await control 'fallback-retired (lambda (_) #t))
                       (api-await control 'remote-session-finished (lambda (_) #t))
                       (api-await control 'local-selected-finished (lambda (_) #t))
                       (check (with-catch identity (cut thread-join!/error right 2)) ? IOError?)
                       (let* ((fresh (start (lambda () (b.connect! (a.host) [aa]))))
                              (remote (thread-join!/error fresh 5))
                              (local (a.connect! (b.host) [])))
                         ;; The old waiter must fail even though Z succeeded while
                         ;; Y was held between reservation and session retirement.
                         (check (with-catch identity (cut thread-join!/error left 2)) ? IOError?)
                         (check (fault#NetworkSession-state (fault#NetworkSetup-session fallback)) => 'failed)
                         (check (fault#NetworkSession-active (fault#NetworkSetup-session fallback)) => 1)
                         (check (a.connections) => [local])
                         (check (b.connections) => [remote])))
                     (begin
                       (api-record! control 'release-local #t)
                       (api-record! control 'release-remote #t)
                       (api-record! control 'release-fallback #t)))))
               fault#new-network))))

       (test-case "identity pruning wakes another peer before credential processing resumes"
         (let ((control (APIMonitor)) (small #f) (key (generate-ed25519-key)))
           (unwind-protect
             (parameterize
                 ((fault#current-network-hook
                   (lambda (stage (setup : fault#NetworkSetup) (candidate :? Handshake))
                     (when (and (equal? setup.network.owner.host small)
                                candidate (not candidate.initiator?))
                       (case stage
                         ((connected)
                          (api-record! control 'unknown-connected setup)
                          (api-await control 'release-identity (lambda (_) #t)))
                         ((identified)
                          (api-record! control 'identity-registered setup)
                          (api-await control 'release-auth (lambda (_) #t))))))))
               (call-with-api-networks 'unix
                 (lambda ((a : Network) (b : Network) ma mb address start)
                   (set! small (a.host))
                   (let* ((aa (a.listen! (address "identity")))
                          (peer (private-key->did key))
                          (failure (Error "History waiter reached outgoing admission"))
                          (incoming (start (lambda () (b.connect! (a.host) [aa])))))
                     (unwind-protect
                       (using (unknown (api-await control 'unknown-connected (lambda (_) #t)) :- fault#NetworkSetup)
                         (using (owner unknown.network.owner :- fault#NetworkOwner)
                           ;; Seed only the retained history, with the same trusted
                           ;; transitions used by network-test. The unknown socket
                           ;; and its subsequent identity proof are entirely real.
                           (let* ((deadline unknown.reservation.deadline)
                                  (selected (fault#network-reserve! owner #f deadline))
                                  (now (current-time-seconds)))
                             (fault#network-identify! owner selected peer)
                             (fault#network-ready! owner selected (+ deadline 30))
                             (fault#network-claim-opening! owner selected now)
                             (fault#network-commit! owner selected now)
                             (fault#network-retire! owner selected))
                           (check owner.commits => 1)
                           (APIMonitor-allow-hook-set! ma
                             (lambda (did direction)
                               (when (equal? did peer)
                                 (api-record! control 'history-unpinned #t)
                                 (raise failure))))
                           (let (waiting (start (lambda () (a.connect! peer [aa]))))
                             (api-wait-for-network! waiting)
                             (api-record! control 'release-identity #t)
                             (api-await control 'identity-registered (lambda (_) #t))
                             (api-await control 'history-unpinned (lambda (_) #t) 2)
                             (check-eq? (with-catch identity (cut thread-join!/error waiting 2)) failure)
                             (check owner.commits => 0)
                             (check unknown.reservation.identified? => #t)
                             (check unknown.reservation.retired? => #f)
                             (api-record! control 'release-auth #t)
                             (check (thread-join!/error incoming 5) ? Connection?))))
                       (begin
                         (api-record! control 'release-identity #t)
                         (api-record! control 'release-auth #t)))))
                 fault#new-network))
             (foreign-release! (PrivKey-key key)))))

       (test-case "construction and callback-return synchronous faults retain their cleanup owners"
         (for-each
           (lambda (boundary)
             (let ((control (APIMonitor)) (small #f)
                   (failure (Error "Injected ownership boundary failure")) (parent-worker #f))
               (parameterize
                   ((fault#current-network-construction-hook
                     (lambda ((setup : fault#NetworkSetup) worker)
                       (when (equal? setup.network.owner.host small)
                         (set! parent-worker worker)
                         (when (eq? boundary 'constructed)
                           (api-record! control 'returned setup)
                           (raise failure)))))
                    (fault#current-network-hook
                     (lambda (stage (setup : fault#NetworkSetup) (candidate :? Handshake))
                       (when (and (eq? boundary 'returned) (eq? stage 'open-lock)
                                  (equal? setup.network.owner.host small))
                         (api-record! control 'returned setup)
                         (raise failure)))))
                 (call-with-api-networks 'unix
                   (lambda ((a : Network) (b : Network) ma mb address start)
                     (set! small (a.host))
                     (let* ((addr (b.listen! (address "callback-lock")))
                            (caller (start (lambda () (a.connect! (b.host) [addr])))))
                       (using (setup (api-await control 'returned (lambda (_) #t)) :- fault#NetworkSetup)
                         (check-eq? (with-catch identity (cut thread-join!/error caller 3)) failure)
                         (check (length (filter (lambda (e) (eq? (car e) 'connection-open))
                                                (APIMonitor-events ma))) => (if (eq? boundary 'returned) 1 0))
                         (check (length (filter (lambda (e) (eq? (car e) 'connection-close))
                                                (APIMonitor-events ma))) => (if (eq? boundary 'returned) 1 0))
                         ;; The constructor starts this real worker before
                         ;; job.connection makes it visible to the supervisor.
                         (check (network-thread-join! parent-worker 3) => (void))
                         (check setup.job.connection => #f)
                         (check (a.connections) => []))))
                   fault#new-network))))
           '(constructed returned)))

       (test-case "failed publication retains pending capacity throughout close notification"
         (let ((control (APIMonitor)) (small #f))
           (parameterize
               ((fault#current-network-hook
                 (lambda (stage (setup : fault#NetworkSetup) (candidate :? Handshake))
                   (when (equal? setup.network.owner.host small)
                     (case stage
                       ((activated)
                        (api-record! control 'activated setup)
                        (api-await control 'publish (lambda (_) #t)))
                       ((cleaned) (api-record! control 'cleaned #t)))))))
             (call-with-api-networks 'unix
               (lambda ((a : Network) (b : Network) ma mb address start)
                 (set! small (a.host))
                 (APIMonitor-close-hook-set! ma
                   (lambda (conn)
                     (api-record! control 'closing #t)
                     (api-await control 'release-close (lambda (_) #t))))
                 (let* ((addr (b.listen! (address "publication-lock")))
                        (caller (start (lambda () (a.connect! (b.host) [addr])))))
                   (unwind-protect
                     (using (setup (api-await control 'activated (lambda (_) #t)) :- fault#NetworkSetup)
                       (let ((reservation setup.reservation)
                             (mx setup.job.connection.parent.mx))
                         (unwind-protect
                           (begin
                             (mutex-lock! mx)
                             (api-record! control 'publish #t)
                             (api-wait-for-mutex! setup.job.worker mx)
                             ;; Publication is blocked on its last lock, not an
                             ;; artificial sleep before entering the critical section.
                             (thread-sleep! (seconds->time setup.session.deadline)))
                           (when (eq? (mutex-state mx) (current-thread)) (mutex-unlock! mx)))
                         (api-await control 'closing (lambda (_) #t))
                         (do-with-lock setup.network.mutex
                           (do-with-lock setup.network.owner.mutex
                             (check-eq? setup.reservation reservation)
                             (check (fault#NetworkReservation-retired? reservation) => #f)
                             (check (memq reservation setup.network.owner.pending) ? pair?)
                             (check setup.session.state => 'aborting)
                             (check setup.published? => #f)))
                         (check (a.connections) => [])
                         (api-record! control 'release-close #t)
                         (api-await control 'cleaned (lambda (_) #t))
                         (check (fault#NetworkReservation-retired? reservation) => #t)
                         (check (with-catch identity (cut thread-join!/error caller 3)) ? Timeout?)))
                     (begin
                       (api-record! control 'publish #t)
                       (api-record! control 'release-close #t)))))
               fault#new-network
               (NetworkConfig connection-ttl: 30 handshake-timeout: 4)))))

       (test-case "fallback honors fixed/adaptive preference budgets while credential processing stays held"
         (for-each
           (lambda (boundary)
             (let ((control (APIMonitor)) (small #f))
               (parameterize
                   ((fault#current-network-hook
                     (lambda (stage (setup : fault#NetworkSetup) (candidate :? Handshake))
                       (when (and (eq? stage 'connected) candidate.initiator?)
                         ;; A real reservation/socket exists, but this outgoing
                         ;; endpoint cannot exchange HELLO or prove identity yet.
                         (api-record! control 'dialed setup.network.owner.host)
                         (api-await control 'release-dials (lambda (_) #t)))
                       (when (and (eq? stage 'identified) (equal? setup.network.owner.host small))
                         (check candidate.identity-proven? => #t)
                         (check candidate.phase => 'identified)
                         (if candidate.initiator?
                           (begin
                             ;; Unix AUTH construction and identity proof precede
                             ;; this gate; credential verification is still held.
                             (api-record! control 'preferred setup)
                             (api-await control 'release-credentials (lambda (_) #t)))
                           (begin
                             (api-record! control 'fallback setup)
                             (api-await control 'release-fallback (lambda (_) #t))))))))
                 (call-with-api-networks 'unix
                   (lambda ((a : Network) (b : Network) ma mb address start)
                     (set! small (a.host))
                     (let* ((aa (a.listen! (address "expiry-left")))
                            (ba (b.listen! (address "expiry-right")))
                            ;; The real AUTH bundle must cover handshake headroom
                            ;; before either Unix identified! hook can run.
                            (left (start (lambda () (a.connect! (b.host) [ba]
                                                                lease: (and (eq? boundary 'adaptive-deadline)
                                                                            'renewable)))))
                            (right (start (lambda () (b.connect! (a.host) [aa])))))
                       (unwind-protect
                         (begin
                           (api-await control 'dialed (lambda (host) (equal? host (a.host))))
                           (api-await control 'dialed (lambda (host) (equal? host (b.host))))
                           (api-record! control 'release-dials #t)
                           (using (preferred (api-await control 'preferred (lambda (_) #t)) :- fault#NetworkSetup)
                             (using (fallback (api-await control 'fallback (lambda (_) #t)) :- fault#NetworkSetup)
                               (let (expiry (+ (current-time-seconds) 3))
                                 ;; Change only the real registered work's election
                                 ;; viability. Keep socket/handshake/caller budgets
                                 ;; valid so they cannot manufacture the wakeup.
                                 (do-with-lock preferred.network.owner.mutex
                                   (using (work preferred.reservation.work :- fault#NetworkOutgoing)
                                     (check-eq? work preferred.session.work)
                                     (check work.started? => #t)
                                     (check (< expiry work.deadline) => #t)
                                     (if (eq? boundary 'adaptive-deadline)
                                       (check work.min-auth-expire => 0)
                                       (check (< expiry work.min-auth-expire) => #t))
                                     (if (eq? boundary 'min-auth-expire)
                                       (set! work.min-auth-expire expiry)
                                       (set! work.deadline expiry))))
                                 (api-record! control 'release-fallback #t)
                                 (api-wait-for-network! fallback.job.worker)
                                 (check (< (current-time-seconds) expiry) => #t)
                                 (let* ((remote (thread-join!/error right 6))
                                        (local (thread-join!/error left 2)))
                                   (check (Connection-direction local) => DIRECTION-IN)
                                   (check (Connection-direction remote) => DIRECTION-OUT)
                                   (check (>= (current-time-seconds) expiry) => #t)
                                   (check (a.connections) => [local])
                                   (do-with-lock preferred.network.owner.mutex
                                     (check preferred.session.work.finished? => #f)
                                     (check preferred.reservation.retired? => #f))
                                   ;; A published incoming winner must not make its
                                   ;; blocked outgoing loser's queue a seed history.
                                   (using ((credentials preferred.session.credentials :- ConnectorCredentials)
                                           (conn (interface-instance-object local) :- NetworkConnection))
                                     (let-values (((queued seen)
                                                   (do-with-lock credentials.mutex
                                                     (check credentials.closed? => #f)
                                                     (values (length credentials.parents)
                                                             (credentials.seen.length)))))
                                       (for-each
                                         (lambda (offset)
                                           ;; Distinct signed parents defeat structural dedup.
                                           (let (seed (CapabilityContext-grant!
                                                       preferred.network.context DELEGATE (b.host) (a.host)
                                                       "/network" (+ (current-time-seconds) 300 offset)))
                                             (check-eq? (a.connect! (b.host) [] seed lease: 'renewable) local)
                                             (do-with-lock preferred.network.mutex
                                               (check-eq? preferred.session.seed seed))
                                             (do-with-lock conn.parent.mx
                                               (check conn.renewal.automatic? => #t)
                                               (check-eq? conn.renewal.seed seed))
                                             (do-with-lock credentials.mutex
                                               (check credentials.closed? => #f)
                                               (check (length credentials.parents) => queued)
                                               (check (credentials.seen.length) => seen))))
                                         '(1 2 3)))))))))
                         (begin
                           (api-record! control 'release-dials #t)
                           (api-record! control 'release-fallback #t)
                           (api-record! control 'release-credentials #t)))))
                   fault#new-network
                   (NetworkConfig connection-ttl: 30 handshake-timeout: 12)))))
           '(deadline min-auth-expire adaptive-deadline)))

       (test-case "CONFIRM cannot extend the handoff or publication deadline"
         (for-each
           (lambda (boundary)
             (let ((control (APIMonitor)) (small #f) (activated? #f))
               (parameterize
                   ((fault#current-network-hook
                     (lambda (stage (setup : fault#NetworkSetup) (candidate :? Handshake))
                       (when (equal? setup.network.owner.host small)
                         (when (eq? stage 'activated) (set! activated? #t))
                         (when (eq? stage boundary)
                           (api-record! control 'at-boundary candidate)
                           (api-await control 'release-boundary (lambda (_) #t)))
                         (when (eq? stage 'cleaned)
                           (api-record! control 'attempt-cleaned #t))))))
                 (call-with-api-networks 'unix
                   (lambda ((a : Network) (b : Network) ma mb address start)
                     (set! small (a.host))
                     (let* ((addr (b.listen! (address "deadline")))
                            (caller (start (lambda () (a.connect! (b.host) [addr])))))
                       (unwind-protect
                         (using (candidate (api-await control 'at-boundary (lambda (_) #t)) :- Handshake)
                           (check candidate.phase => 'confirmed)
                           (thread-sleep! (seconds->time candidate.deadline))
                           (api-record! control 'release-boundary #t)
                           (api-await control 'attempt-cleaned (lambda (_) #t))
                           (check (with-catch identity (cut thread-join!/error caller 2)) ? Timeout?)
                           (check activated? => (eq? boundary 'activated))
                           (check (a.connections) => [])
                           (check (length (filter (lambda (e) (eq? (car e) 'connection-close))
                                                  (APIMonitor-events ma))) => 1))
                         (api-record! control 'release-boundary #t))))
                   fault#new-network
                   (NetworkConfig connection-ttl: 30 handshake-timeout: 3)))))
           '(confirmed activated))))))
  (else))
