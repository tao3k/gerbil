;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Outgoing transport setup and credential retry choices
(import :std/error
        :std/interface
        :std/io
        :std/net/address
        :std/net/ssl
        :std/number/misc
        (only-in :std/os/device DIRECTION-OUT)
        :std/os/error
        (only-in :std/os/socket AF_UNIX SocketConnectError?)
        :std/time/time
        :std/time/timeout
        ../ucan/interface
        ../ucan/did
        ./auth
        ./config
        ./handshake
        ./wire
        ./tls)
(export connect-handshake
        ConnectorMonitor
        connector-connect!
        connector-retry-setup?
        (struct-out ConnectorCredentials)
        make-connector-credentials
        connector-add-credential!
        connector-next-credential!
        connector-close-credentials!)

;; Private attempt-owned queue. Tokens are borrowed and immutable; structural
;; equality deduplicates queued and previously selected parents. A single driver
;; consumes choices while joining callers may add parents concurrently.
(defclass ConnectorCredentials
  ((parents  : :list := [])
   (seen     : HashTable := (make-hash-table))
   (provide? : :boolean := #f)
   (closed?  : :boolean := #f)
   (mutex    : :mutex := (make-mutex 'connector-credentials)))
  final: #t)

;; One monitor is bound to the owner's outgoing work item. connecting! performs
;; admission/reservation and checks shutdown before dialing; it must roll back
;; itself if it raises. failed! releases that reservation after a setup failure.
;; Candidate completion/retirement use the inherited handshake hooks instead.
;; attach! records raw transport before TLS, then its upgraded view; it raises on
;; shutdown without taking setup's cleanup responsibility. All hooks are terminal
;; on exception, even when they raise a normally retryable transport error.
(interface (ConnectorMonitor HandshakeMonitor)
  (connecting! (address : Address)
               (start : :integer))
  => :void
  (attach! (socket : StreamSocket)) => :void
  (failed! (address : Address)
           (error : :t))
  => :void)

;; Sequential Unix-first transport fallback and credential retries. Only typed
;; recoverable setup errors advance addresses; all later exceptions abort.
;; A well-formed eligible refusal consumes the next credential and starts again
;; at the rejecting endpoint. Every physical attempt has a fresh headroom start,
;; but the operation deadline and requested authorization expiration never move.
(def (connector-connect! (monitor              :  ConnectorMonitor)
                         (context              :  CapabilityContext)
                         (tls-context          :~ SSL_CTX? :- :foreign)
                         (host                 :  :string)
                         (peer                 :  :string)
                         (addresses            :~ (list-of? Address?) :- :list)
                         (credentials          :  ConnectorCredentials)
                         (start                :~ uint64? :- :integer)
                         (deadline             :~ uint64? :- :integer)
                         (min-auth-expire      :~ uint64? :- :integer)
                         adaptive?: (adaptive? :  :boolean := #f)
                         config: (config       :  NetworkConfig := (NetworkConfig))
                         limits: (limits       :  ConnectionLimits := (ConnectionLimits)))
  => (Maybe Handshake)
  ;; Force unwinding before propagating from a plain joinable worker.
  (with-catch raise
              (lambda ()
                (unwind-protect
                  (let* ((host (normalize-did host))
                         (peer (normalize-did peer))
                         (ordered
                          (list-sort (lambda ((a :- Address)
                                              (b :- Address))
                                       (and (UnixAddress? a) (not (UnixAddress? b))))
                                     addresses)))
                    (when (equal? host peer)
                      (raise-io-error connector-connect! "Self connection" host))
                    (when (null? ordered)
                      (raise-io-error connector-connect! "No addresses for an outgoing attempt" peer))
                    (let next-credential ((sequence ordered) (attempt-start start))
                      (connector-check-live! deadline min-auth-expire adaptive?: adaptive?)
                      (let-values (((available? parent)
                                    (connector-next-credential! credentials min-auth-expire
                                                                (auth-headroom attempt-start config.handshake-timeout)
                                                                (current-time-seconds) adaptive?: adaptive?)))
                        (and available?
                             (let next-address ((pending sequence) (attempt-start attempt-start))
                               (connector-check-live! deadline min-auth-expire adaptive?: adaptive?)
                               (let (address (car pending))
                                 ;; Monitor errors are outside the transport-fallback catch.
                                 (monitor.connecting! address attempt-start)
                                 (let-values (((connected? retry? result)
                                               (connector-setup context tls-context host peer address
                                                                attempt-start deadline min-auth-expire
                                                                parent config limits monitor adaptive?: adaptive?)))
                                   (if (not connected?)
                                     (begin
                                       (monitor.failed! address result)
                                       (if (and retry? (pair? (cdr pending)))
                                         (next-address (cdr pending) (current-time-seconds))
                                         (raise result)))
                                     (using (candidate result :- Handshake)
                                       (let (target #f)
                                         ;; Capture the actual endpoint while its socket is live,
                                         ;; so a DNS credential retry starts at the same address.
                                         (try
                                           (set! target (candidate.socket.peer-address))
                                           (catch (e)
                                             (ignore-errors (handshake-close! candidate))
                                             (monitor.closed! candidate)
                                             (raise e)))
                                         (if (run-handshake! candidate monitor)
                                           candidate
                                           (and (connector-retry-credential? candidate)
                                                (next-credential
                                                 (cons target (remq1 address sequence))
                                                 (current-time-seconds))))))))))))))
                  (connector-close-credentials! credentials)))))

;; Retry endpoint failures, never resource exhaustion or unrelated OS operations.
;; SSLHandshakeError denotes failed negotiation, not necessarily a faulty peer.
(def (connector-retry-setup? (error : :t))
  => :boolean
  (or (and (SocketConnectError? error)
           (let (errno (OSError-errno error))
             (or (fx= errno ECONNREFUSED) (fx= errno ECONNRESET)
                 (fx= errno ECONNABORTED) (fx= errno EHOSTUNREACH)
                 (fx= errno ENETUNREACH) (fx= errno ENETDOWN)
                 (fx= errno ETIMEDOUT) (fx= errno ENOENT)
                 (fx= errno ENOTDIR) (fx= errno EACCES) (fx= errno EPERM))))
      (ResolverError? error)
      (SSLHandshakeError? error)
      (TLSPeerIdentityError? error)))

;; Reasons concern different sides: only peer rejection of OUR credentials, or
;; OUR inability to provide credentials, permits a new local credential choice.
(def (connector-retry-credential? (candidate : Handshake))
  => :boolean
  (and (not candidate.committed?)
       (if candidate.peer-rejected?
         (and candidate.identity-proven?
              (or (fx= candidate.reason reason-auth-failed)
                  (fx= candidate.reason reason-lifetime)))
         (fx= candidate.reason reason-no-credentials))))

(def (make-connector-credentials (auth :? Token := #f))
  => ConnectorCredentials
  (using (self (ConnectorCredentials provide?: (not auth))
               :- ConnectorCredentials)
    (when auth (connector-add-credential! self auth))
    self))

;; Only explicitly supplied parents are added. A no-auth joining caller does not
;; create another provide! choice.
(def (connector-add-credential! (self   : ConnectorCredentials)
                                (parent : Token))
  => :void
  (do-with-lock self.mutex
    (when self.closed?
      (raise-io-closed connector-add-credential! "Credential choices are closed"))
    (unless (self.seen.ref parent #f)
      (self.seen.set! parent #t)
      (set! self.parents (cons parent self.parents)))))

;; Return (values available? parent). Available with parent=#f means provide!.
;; Exhaustion closes atomically: a concurrent add is either seen by selection or
;; rejected as closed, never accepted into an already exhausted attempt. Adaptive
;; setup borrows the selected parent as a seed even if exhausted: its issuer also
;; offers a direct grant and fresh context parents in that same handshake.
(def (connector-next-credential! (self                 :  ConnectorCredentials)
                                 (min-auth-expire      :~ uint64? :- :integer)
                                 (headroom             :~ uint64? :- :integer)
                                 (now                  :~ uint64? :- :integer)
                                 adaptive?: (adaptive? :  :boolean := #f))
  => :values
  (do-with-lock self.mutex
    (when self.closed?
      (raise-io-closed connector-next-credential! "Credential choices are closed"))
    (cond
     (self.provide?
      (set! self.provide? #f)
      (values #t #f))
     (else
      (let loop ()
        (if (null? self.parents)
          (begin
            (set! self.closed? #t)
            (self.seen.clear!)
            (values #f #f))
          (using (parent
                  ;; Parents are stored newest-first. On equal expirations the
                  ;; later element in this traversal is the earlier arrival.
                  (foldl (lambda ((token :- Token)
                                  (best  :- Token))
                           (if (>= token.expire best.expire) token best))
                         (car self.parents) (cdr self.parents))
                  :- Token)
            (set! self.parents (remq1 parent self.parents))
            (if (or adaptive? (auth-lifetime? parent.expire min-auth-expire headroom now))
              (values #t parent)
              (loop)))))))))

(def (connector-close-credentials! (self : ConnectorCredentials))
  => :void
  (do-with-lock self.mutex
    (unless self.closed?
      (set! self.closed? #t)
      (set! self.provide? #f)
      (set! self.parents [])
      (self.seen.clear!))))

;; The owner reserves the attempt and captures start/deadline/min-auth-expire before
;; calling. Resolution, connect and TLS consume that same budget. This procedure
;; borrows both contexts and transfers the connected socket to the returned
;; Handshake; every failure after connect closes it and propagates unchanged.
;; Attachment does not transfer cleanup ownership. No HELLO/AUTH or publication
;; runs here. An omitted monitor is for standalone single-candidate callers.
(def (connect-handshake (context              :  CapabilityContext)
                        (tls-context          :~ SSL_CTX? :- :foreign)
                        (host                 :  :string)
                        (peer                 :  :string)
                        (address              :  Address)
                        (start                :~ uint64? :- :integer)
                        (deadline             :~ uint64? :- :integer)
                        (min-auth-expire      :~ uint64? :- :integer)
                        adaptive?: (adaptive? :  :boolean := #f)
                        auth: (auth           :? Token := #f)
                        config: (config       :  NetworkConfig := (NetworkConfig))
                        limits: (limits       :  ConnectionLimits := (ConnectionLimits))
                        monitor: (monitor     :? ConnectorMonitor := #f))
  => Handshake
  (let-values (((connected? retry? result)
                (connector-setup context tls-context host peer address start deadline
                                 min-auth-expire auth config limits monitor adaptive?: adaptive?)))
    (if connected? result
        (raise result))))

;; Return setup success, retry eligibility, and candidate/original exception.
;; Keep provenance separate from exception type: an attachment callback throwing
;; a transport error is still terminal. Cleanup precedes every failure result.
(def (connector-setup (context              :  CapabilityContext)
                      (tls-context          :~ SSL_CTX? :- :foreign)
                      (host                 :  :string)
                      (peer                 :  :string)
                      (address              :  Address)
                      (start                :  :integer)
                      (deadline             :  :integer)
                      (min-auth-expire      :  :integer)
                      (auth                 :? Token)
                      (config               :  NetworkConfig)
                      (limits               :  ConnectionLimits)
                      (monitor              :? ConnectorMonitor)
                      adaptive?: (adaptive? :  :boolean := #f))
  => :values
  (let (retry? #t)
    (try
      (connector-check-live! deadline min-auth-expire adaptive?: adaptive?)
      (let ((host (normalize-did host))
            (peer (normalize-did peer))
            (timeo (IOTimeout (seconds->time deadline))))
        (when (equal? host peer)
          (raise-io-error connect-handshake "Self connection" host))
        (connector-check-live! deadline min-auth-expire adaptive?: adaptive?)
        (using (socket (stream-connect address timeo)
                       :- StreamSocket)
          (try
            (when monitor
              (set! retry? #f)
              (monitor.attach! socket)
              (set! retry? #t))
            (connector-check-live! deadline min-auth-expire adaptive?: adaptive?)
            (unless (fx= (socket.domain) AF_UNIX)
              (set! socket
                (ssl-client-upgrade socket timeout: timeo context: tls-context
                                    host: (did->hostname peer)))
              (when monitor
                (set! retry? #f)
                (monitor.attach! socket)
                (set! retry? #t)))
            ;; Verify the actual TLS key and reinstall the deadline cleared by TLS.
            (values #t #f
                    (make-handshake socket context host peer DIRECTION-OUT start deadline min-auth-expire
                                    auth: auth adaptive?: adaptive? config: config limits: limits))
            (catch (e)
              (ignore-errors (socket.close))
              (raise e)))))
      (catch (e) (values #f (and retry? (connector-retry-setup? e)) e)))))

(def (connector-check-live! (deadline             :~ uint64? :- :integer)
                            (min-auth-expire      :~ uint64? :- :integer)
                            adaptive?: (adaptive? :  :boolean := #f))
  => :void
  (let (now (current-time-seconds))
    (when (operation-expired? deadline now)
      (raise-timeout connect-handshake "Establishment deadline expired"))
    (when (and adaptive? (not (= min-auth-expire 0)))
      (raise-bad-argument connect-handshake "Adaptive establishment requires target zero"))
    (when (and (not adaptive?) (<= min-auth-expire now))
      (raise-io-closed connect-handshake "Required authorization expired"))))
