;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Single-candidate establishment exchanges, driven by the network owner
(import :std/error
        :std/interface
        :std/io
        :std/net/ssl
        :std/number/misc
        :std/crypto/random
        :std/sync/threads
        :std/time/time
        :std/time/timeout
        :std/vector/u8vector
        (only-in :std/os/device
                 DIRECTION-IN
                 DIRECTION-OUT)
        (only-in :std/os/socket
                 AF_UNIX)
        ../ucan/interface
        ../ucan/did
        ../ucan/util
        ./auth
        ./config
        ./tls
        ./thread
        ./wire)
(export (struct-out Handshake)
        HandshakeMonitor
        run-handshake!
        make-handshake
        handshake-identify!
        handshake-authenticate!
        handshake-ready!
        handshake-commit!
        handshake-confirm!
        handshake-reject!
        handshake-close!)

(def handshake-version 1)

;; Internal owner/candidate record, not an application Connection. Only its driver
;; mutates it. External cancellation closes the socket; the owner must also gate
;; publication against its own lifecycle/election state. Credentials are retained.
(defclass Handshake
  ((socket           :  StreamSocket)
   (reader           :  Reader)
   (writer           :  Writer)
   (context          :  CapabilityContext)
   (host             :  :string)
   (expected-peer    :? :string)
   (peer             :? :string := #f)
   (initiator?       :  :boolean)
   (adaptive?        :  :boolean := #f)
   (unix?            :  :boolean)
   (smaller?         :  :boolean := #f)
   (identity-proven? :  :boolean := #f)
   (deadline         :  :integer)
   (headroom         :  :integer)
   (min-auth-expire  :  :integer)
   (auth-window      :  :integer)
   (limits           :  ConnectionLimits)
   (output-limits    :  ConnectionLimits)
   (parent           :? Token := #f)
   (local-hello      :  :u8vector := #u8())
   (peer-hello       :  :u8vector := #u8())
   (local-bundle     :  :list := [])
   (local-tokens     :  :vector := #())
   (peer-bundle      :  :list := [])
   (selection        :? AuthCandidate := #f)
   (local-selection  :? Token := #f)
   (expire           :  :integer := 0)
   (mutex            :  :mutex := (make-mutex 'network-handshake))
   (phase            :  :symbol := 'new)
   (committed?       :  :boolean := #f)
   (peer-rejected?   :  :boolean := #f)
   (reason           :  :fixnum := reason-ok))
  final: #t)

;; Internal owner hooks, distinct from application NetworkMonitor callbacks.
;; connected! attaches the socket to owned work. identified! registers proven
;; identity before UCAN verification. admit! is the recipient's advisory gate.
;; open! performs election/final admission; complete! publishes and releases the
;; successful reservation. closed! retires failed candidates and their reservation,
;; isolating application close-notification errors rather than raising them here.
(interface HandshakeMonitor
  (connected! (candidate : Handshake)) => :void
  (identified! (candidate : Handshake)) => :void
  (admit! (candidate : Handshake)) => :boolean
  (open! (candidate : Handshake)) => :void
  (complete! (candidate : Handshake)) => :void
  (closed! (candidate : Handshake)) => :void)

;; Drive one candidate without implementing owner policy. All callbacks run
;; outside candidate locks. Failure closes before retirement; success transfers
;; ownership through complete!. Any exception is terminal for this candidate.
(def (run-handshake! (self    : Handshake)
                     (monitor : HandshakeMonitor))
  => :boolean
  (let (complete? #f)
    (unwind-protect
      (begin
        (monitor.connected! self)
        (when self.identity-proven? (monitor.identified! self))
        (and (handshake-identify! self)
             (begin
               (when self.unix? (monitor.identified! self))
               #t)
             (handshake-authenticate! self)
             (or self.initiator?
                 (monitor.admit! self)
                 (handshake-reject! self reason-refused))
             (handshake-ready! self)
             (begin
               (when self.smaller? (monitor.open! self))
               #t)
             (handshake-commit! self)
             (begin
               (unless self.smaller? (monitor.open! self))
               #t)
             (handshake-confirm! self)
             (begin
               ;; The owner must recheck network/election liveness atomically
               ;; when publishing; protocol completion alone does not publish.
               (monitor.complete! self)
               (set! complete? #t)
               #t)))
      (unless complete?
        (ignore-errors (handshake-close! self))
        (monitor.closed! self)))))

;; Consume an already connected transport, upgraded to mutual TLS for TCP. The
;; caller captures start/deadline at reservation, before dialing/TLS; neither is
;; restarted here. A physical responder or adaptive initiator passes target zero;
;; the responder adopts the initiator's mode only after reading its HELLO.
;; Failure closes the socket; success retains the deadline through CONFIRM.
(def (make-handshake (socket               :  StreamSocket)
                     (context              :  CapabilityContext)
                     (host                 :  :string)
                     (peer                 :? :string)
                     (direction            :  :fixnum)
                     (start                :~ uint64? :- :integer)
                     (deadline             :~ uint64? :- :integer)
                     (min-auth-expire      :~ uint64? :- :integer)
                     auth: (auth           :? Token := #f)
                     adaptive?: (adaptive? :  :boolean := #f)
                     config: (config       :  NetworkConfig := (NetworkConfig))
                     limits: (limits       :  ConnectionLimits := (ConnectionLimits)))
  => Handshake
  (try
    (unless (or (fx= direction DIRECTION-IN) (fx= direction DIRECTION-OUT))
      (raise-bad-argument make-handshake "Invalid connection direction" direction))
    (let* ((host (normalize-did host))
           (peer (and peer (normalize-did peer)))
           (initiator? (fx= direction DIRECTION-OUT))
           (unix? (fx= (socket.domain) AF_UNIX))
           (timeo (IOTimeout (seconds->time deadline))))
      (when (equal? host peer)
        (raise-io-error make-handshake "Self connection" host))
      (unless (if initiator?
                (and peer (if adaptive? (= min-auth-expire 0) (> min-auth-expire 0)))
                (= min-auth-expire 0))
        (raise-bad-argument make-handshake "Invalid initiator peer or required expiration"))
      (socket.set-input-timeout! timeo)
      (socket.set-output-timeout! timeo)
      (using (self (Handshake socket: socket reader: (socket.reader) writer: (socket.writer)
                              context: context host: host expected-peer: peer
                              initiator?: initiator? unix?: unix? deadline: deadline
                              adaptive?: (and initiator? adaptive?) auth-window: config.connection-ttl
                              headroom: (auth-headroom start config.handshake-timeout)
                              min-auth-expire: min-auth-expire limits: limits output-limits: limits parent: auth)
                   :- Handshake)
        (unless unix?
          (unless (is-TLS? socket)
            (raise-bad-argument make-handshake "TCP requires TLS"))
          (let (certificate (TLS-peer-certificate socket))
            (unless certificate
              (raise-tls-peer-identity-error make-handshake "Missing peer certificate"))
            (let-values (((hostname did) (tls-certificate->hostname+did certificate)))
              (when (or (equal? host did) (and peer (not (equal? peer did))))
                (raise-tls-peer-identity-error make-handshake "Unexpected certificate identity" did))
              (set! self.peer did)
              (set! self.identity-proven? #t))))
        (handshake-check-live! self)
        self))
    (catch (e)
      (ignore-errors (socket.close))
      (raise e))))

(def (handshake-close! (self : Handshake))
  => :void
  (do-with-lock self.mutex
    (set! self.phase 'closed))
  (self.socket.close))

(def (handshake-check-live! (self : Handshake))
  => :void
  (when (eq? self.phase 'closed)
    (raise-io-closed handshake-check-live! "Candidate closed"))
  (let (now (current-time-seconds))
    (when (operation-expired? self.deadline now)
      (raise-timeout handshake-check-live! "Establishment deadline expired"))
    (when (or (and (> self.min-auth-expire 0) (>= now self.min-auth-expire))
              (and (> self.expire 0) (>= now self.expire)))
      (raise-io-closed handshake-check-live! "Candidate authorization expired"))))

;; No exception classification: failure aborts the candidate and propagates.
(defrule (with-handshake-step self before after body ...)
  (using (candidate self :- Handshake)
    (try
     (do-with-lock candidate.mutex
       (handshake-check-live! candidate)
       (unless (eq? candidate.phase before)
         (raise-context-error handshake "Invalid local handshake phase" candidate.phase before)))
     (let (success? (begin body ...))
       (when success?
         (do-with-lock candidate.mutex
           (handshake-check-live! candidate)
           (set! candidate.phase after)))
       success?)
     (catch (e)
       (ignore-errors (handshake-close! candidate))
       (raise e)))))

(def (handshake-write! (self    : Handshake)
                       (type    : :fixnum)
                       (payload : :u8vector)
                       commit?: (commit? : :boolean := #f))
  => :void
  (handshake-check-live! self)
  (let (header (encode-frame-header
                (FrameHeader type: type stream-id: 0 payload-length: (u8vector-length payload))
                limits: self.output-limits))
    (when commit?
      (do-with-lock self.mutex
        (handshake-check-live! self)
        (set! self.committed? #t)))
    (self.writer.write header)
    (unless (fxzero? (u8vector-length payload))
      (self.writer.write payload))))

;; Validate the envelope and phase before allocating the payload. A well-formed
;; REJECT is a result, not an exception; identity-proven? tells the owner whether
;; its reason can be attributed to the expected peer.
(def (handshake-read! (self     : Handshake)
                      (expected : :fixnum))
  => (Maybe :u8vector)
  (handshake-check-live! self)
  (let (bytes (make-u8vector frame-header-size))
    (self.reader.read bytes 0 frame-header-size frame-header-size)
    (using (header (decode-frame-header bytes limits: self.limits) :- FrameHeader)
      (unless (or (fx= header.type expected) (fx= header.type frame-reject))
        (raise-io-error handshake-read! "Unexpected handshake frame" header.type expected))
      (let* ((size header.payload-length)
             (payload (make-u8vector size)))
        (unless (zero? size)
          (self.reader.read payload 0 size size))
        (handshake-check-live! self)
        (if (fx= header.type frame-reject)
          (begin
            (set! self.reason (##vector-ref (decode-frame-payload frame-reject payload limits: self.limits) 0))
            (set! self.peer-rejected? #t)
            (handshake-close! self)
            #f)
          payload)))))

;; HELLO and AUTH must permit reading while writing. Always join the temporary
;; output worker before returning, closing first on failure to interrupt its I/O.
(def (handshake-exchange! (self    : Handshake)
                          (type    : :fixnum)
                          (payload : :u8vector))
  => (Maybe :u8vector)
  (let (worker
        (spawn-network-thread 'network-handshake-write
         (lambda ()
           (try
             (handshake-write! self type payload)
             (catch (e)
               (self.socket.close)
               (raise e))))))
    (try
      (handshake-read! self type)
      (catch (e)
        (self.socket.close)
        (raise e))
      (finally
        (network-thread-join! worker)))))

;; Explicit local refusal, called by the driver for credential/admission/election
;; rejection. Output is best-effort in the sense that failure still closes; its
;; exception propagates instead of being interpreted or silently swallowed.
(def (handshake-reject! (self   : Handshake)
                        (reason : :fixnum))
  => :boolean
  (set! self.reason reason)
  (unwind-protect
    (handshake-write! self frame-reject
                      (encode-frame-payload frame-reject [reason] limits: self.output-limits))
    (handshake-close! self))
  #f)

;; No monitor/election call occurs here. TLS identity is available at construction;
;; Unix identity becomes proven only after verifying AUTH over the exact bytes.
(def (handshake-identify! (self : Handshake))
  => :boolean
  (with-handshake-step self 'new 'identified
    (set! self.local-hello
      (encode-frame-payload frame-hello
                            [handshake-version self.host (random-bytes 32) self.min-auth-expire
                                               self.limits.data-payload self.limits.control-payload
                                               (if (and self.initiator? self.adaptive?)
                                                 lease-mode-adaptive lease-mode-fixed)]
                            limits: self.limits))
    (let (hello (handshake-exchange! self frame-hello self.local-hello))
      (and hello
           (let* (;; The validated HELLO envelope guarantees the u16 prefix. Do
                  ;; not decode version-1 fields from an unsupported layout.
                  (version (&u8vector-uint-ref/be hello 0 2))
                  (_ (unless (fx= version handshake-version)
                       (raise-io-error handshake-identify! "Unsupported network version" version)))
                  (fields (decode-frame-payload frame-hello hello limits: self.limits))
                  (peer (##vector-ref fields 1))
                  (min-auth-expire (##vector-ref fields 3))
                  (mode (##vector-ref fields 6)))
             (unless (and (equal? peer (normalize-did peer))
                          (not (equal? peer self.host))
                          (or (not self.expected-peer) (equal? peer self.expected-peer))
                          (or self.unix? (equal? peer self.peer)))
               (raise-io-error handshake-identify! "Unexpected HELLO identity" peer))
             (unless (if self.initiator?
                       (and (fx= mode lease-mode-fixed) (= min-auth-expire 0))
                       (or (and (fx= mode lease-mode-fixed) (> min-auth-expire 0))
                           (and (fx= mode lease-mode-adaptive) (= min-auth-expire 0))))
               (raise-io-error handshake-identify! "Invalid HELLO mode or expiration for role"))
             (set! self.peer peer)
             (set! self.peer-hello hello)
             (set! self.smaller? (string<? self.host peer))
             (unless self.initiator?
               (set! self.min-auth-expire min-auth-expire)
               (set! self.adaptive? (fx= mode lease-mode-adaptive)))
             (set! self.output-limits
               (ConnectionLimits hello-payload: self.limits.hello-payload
                                 data-payload: (min self.limits.data-payload (##vector-ref fields 4))
                                 control-payload: (min self.limits.control-payload (##vector-ref fields 5))))
             (handshake-check-live! self)
             (set! self.local-bundle
               (if self.adaptive?
                 (encode-auth-bundle
                  (make-adaptive-auth-tokens self.context self.host peer proto:/network/connect
                                             self.min-auth-expire self.headroom (current-time-seconds)
                                             self.auth-window seed: self.parent)
                  (:- (min (- self.output-limits.control-payload (if self.unix? 64 0))
                           (##greatest-fixnum)) :fixnum))
                 (make-auth-bundle self.context self.host peer proto:/network/connect
                                   self.min-auth-expire self.headroom (current-time-seconds) self.parent)))
             (if (null? self.local-bundle)
               (handshake-reject! self reason-no-credentials)
               (let* ((bundle (encode-frame-payload frame-auth [self.local-bundle]
                                                    limits: self.output-limits))
                      (initiator (if self.initiator? self.local-hello hello))
                      (responder (if self.initiator? hello self.local-hello))
                      (payload
                       (if self.unix?
                         (encode-frame-payload frame-auth
                                               [self.local-bundle
                                                (sign-unix-auth (self.context.get-principal self.host)
                                                                initiator responder (if self.initiator? 0 1) bundle)]
                                               limits: self.output-limits unix?: #t)
                         bundle)))
                 (set! self.local-tokens (list->vector (map unmarshal-token self.local-bundle)))
                 (let (auth (handshake-exchange! self frame-auth payload))
                   (and auth
                        (let (fields (decode-frame-payload frame-auth auth
                                                           limits: self.limits unix?: self.unix?))
                          (when self.unix?
                            (unless (verify-unix-auth (self.context.public-key peer)
                                                      initiator responder (if self.initiator? 1 0)
                                                      (subu8vector auth 0 (fx- (u8vector-length auth) 64)) (##vector-ref fields 1))
                              (raise-io-error handshake-identify! "Invalid Unix identity proof" peer))
                            (set! self.identity-proven? #t))
                          (set! self.peer-bundle (##vector-ref fields 0))
                          #t))))))))))

;; The owner registers the proven peer before entering UCAN verification. An
;; authenticated identity alone is not permission to admit or publish a connection.
(def (handshake-authenticate! (self : Handshake))
  => :boolean
  (with-handshake-step self 'identified 'authenticated
    (using (selection
            (select-auth-candidate self.context (decode-auth-bundle self.peer-bundle)
                                   self.peer self.host proto:/network/connect self.min-auth-expire self.headroom
                                   (current-time-seconds))
            :- AuthSelection)
      (if selection.candidate
        (begin (set! self.selection selection.candidate) #t)
        (handshake-reject! self selection.reason)))))

;; Validate a peer acknowledgment by original bundle index, deriving the lease
;; exclusively from selected tokens. Neither peer-provided deadlines nor indexes
;; are authority by themselves.
(def (handshake-accept! (self    : Handshake)
                        (payload : :u8vector))
  => :void
  (let (index (##vector-ref (decode-frame-payload frame-accept payload limits: self.limits) 0))
    (unless (< index (vector-length self.local-tokens))
      (raise-io-error handshake-accept! "Invalid selected token index" index))
    (using (token (##vector-ref self.local-tokens index) :- Token)
      (unless (auth-lifetime? token.expire self.min-auth-expire self.headroom (current-time-seconds))
        (raise-io-error handshake-accept! "Selected credential has insufficient lifetime"))
      (set! self.local-selection token)
      (set! self.expire (min token.expire self.selection.token.expire)))))

;; Call after advisory admission. The larger DID sends readiness without claiming
;; an exclusive election slot. The smaller DID receives it before local election.
(def (handshake-ready! (self : Handshake))
  => :boolean
  (with-handshake-step self 'authenticated 'ready
    (if self.smaller?
      (let (payload (handshake-read! self frame-accept))
        (and payload (begin (handshake-accept! self payload) #t)))
      (begin
        (handshake-write! self frame-accept
                          (encode-frame-payload frame-accept [self.selection.index] limits: self.output-limits))
        #t))))

;; The smaller DID's owner elects the candidate and finishes its open callback
;; BEFORE this call. The larger DID receives commitment here and then performs
;; its own final admission/open callback BEFORE handshake-confirm!.
(def (handshake-commit! (self : Handshake))
  => :boolean
  (with-handshake-step self 'ready 'committed
    (if self.smaller?
      (begin
        (handshake-write! self frame-accept
                          (encode-frame-payload frame-accept [self.selection.index] limits: self.output-limits)
                          commit?: #t)
        #t)
      (let (payload (handshake-read! self frame-accept))
        (and payload
             (begin
               (set! self.committed? #t)
               (handshake-accept! self payload)
               #t))))))

;; Owner publication and installation of established I/O policy follow successful
;; return, never precede it. No transport reader consumes early stream frames here.
(def (handshake-confirm! (self : Handshake))
  => :boolean
  (with-handshake-step self 'committed 'confirmed
    (if self.smaller?
      (let (payload (handshake-read! self frame-confirm))
        (and payload
             (begin (decode-frame-payload frame-confirm payload limits: self.limits) #t)))
      (begin
        (handshake-write! self frame-confirm #u8())
        #t))))
