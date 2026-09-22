;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Network orchestration and establishment election transitions
(import :std/error
        :std/interface
        :std/io
        :std/net/address
        :std/net/ssl
        :std/number/misc
        :std/sync/threads
        :std/time/time
        :std/time/timeout
        (only-in :std/os/socket
                 AF_UNIX)
        ../ucan/interface
        ../ucan/did
        ./auth
        ./config
        ./connection
        ./connector
        ./handshake
        ./interface
        ./listener
        ./log
        (only-in ./renewal
                 renewal-check-capacity!)
        ./tls
        ./thread
        ./wire)
(export new-network
        (struct-out NetworkOwner
                    NetworkOutgoing
                    NetworkReservation)
        make-network-owner
        network-outgoing!
        network-finish-outgoing!
        network-reserve!
        network-identify!
        network-attach!
        network-ready!
        network-claim-opening!
        network-commit!
        network-retire!
        network-shutdown!)

;; Logical work survives physical failures and retry gaps. Its budget never moves.
;; A zero target denotes adaptive establishment, not an expired authorization.
(defclass NetworkOutgoing
  ((peer            : :string)
   (deadline        : :integer)
   (min-auth-expire : :integer)
   (started?        : :boolean := #f)
   (finished?       : :boolean := #f))
  final: #t)

;; Only the owner transitions these records, under its mutex. A reservation is
;; counted until its worker has completed cleanup, not just until cancellation.
(defclass NetworkReservation
  ((peer        :? :string := #f)
   (generation  :  :integer)
   (work        :? NetworkOutgoing := #f)
   (deadline    :  :integer)
   (expire      :  :integer := 0)
   (socket      :? StreamSocket := #f)
   (identified? :  :boolean := #f)
   (ready?      :  :boolean := #f)
   (retired?    :  :boolean := #f))
  final: #t)

(defclass NetworkPeer
  ((work          :? NetworkOutgoing := #f)
   (opening       :? NetworkReservation := #f)
   (commit-cutoff :? :integer := #f))
  final: #t)

;; This is not Network: no application callbacks, Connections, or worker joins.
(defclass NetworkOwner
  ((host       : :string)
   (limits     : NetworkLimits)
   (peers      : HashTable := (make-hash-table))
   (pending    : :list := [])
   (generation : :integer := 0)
   (commits    : :fixnum := 0)
   (closed?    : :boolean := #f)
   (mutex      : :mutex := (make-mutex 'network-owner)))
  final: #t)

(def (make-network-owner (host : :string)
                         (limits : NetworkLimits))
  => NetworkOwner
  (NetworkOwner host: (normalize-did host) limits: limits))

;; Called under the owner lock. Empty cohorts are removed only after all work
;; retires, so a committed election cannot be retargeted to a retained fallback.
(def (network-peer (self : NetworkOwner)
                   (peer : :string))
  => NetworkPeer
  (when (equal? self.host peer)
    (raise-io-error network-peer "Self connection" peer))
  (or (self.peers.ref peer #f)
      (let (entry (NetworkPeer))
        (self.peers.set! peer entry)
        entry)))

(def (network-prune! (self : NetworkOwner))
  => :void
  (let (empty [])
    (self.peers.for-each
     (lambda ((peer :- :string) (entry :- NetworkPeer))
       (when (and entry.commit-cutoff
                  (not entry.work)
                  (not (ormap (lambda ((candidate :- NetworkReservation))
                                (and (<= candidate.generation entry.commit-cutoff)
                                     (or (not candidate.peer) (equal? candidate.peer peer))))
                              self.pending)))
         (set! entry.commit-cutoff #f)
         (set! self.commits (fx- self.commits 1)))
       (unless (or entry.work entry.commit-cutoff
                   (ormap (lambda ((candidate :- NetworkReservation))
                            (equal? candidate.peer peer)) self.pending))
         (set! empty (cons peer empty)))))
    (for-each (lambda ((peer :- :string)) (self.peers.delete! peer)) empty)))

;; Called under the owner lock at first local/observed commitment. Never extend
;; the cutoff on repeated calls. Bound history independently of physical capacity:
;; one stalled unknown reservation must not pin unlimited completed peer entries.
(def (network-record-commit! (self : NetworkOwner)
                             (entry : NetworkPeer))
  => :void
  (unless entry.commit-cutoff
    (when (fx>= self.commits self.limits.election-history)
      (raise-io-error network-record-commit! "Pending election history capacity exhausted"))
    (set! entry.commit-cutoff self.generation)
    (set! self.commits (fx+ self.commits 1))))

;; Return the existing logical work unchanged to join it. Opening/committed work
;; cannot be displaced by a newly requested outgoing attempt; #f means join the
;; existing election instead. No physical capacity is consumed here.
(def (network-outgoing! (self            : NetworkOwner)
                        (peer            : :string)
                        (deadline        : :integer)
                        (min-auth-expire : :integer))
  => (Maybe NetworkOutgoing)
  (let (peer (normalize-did peer))
    (do-with-lock self.mutex
      (when self.closed?
        (raise-io-closed network-outgoing! "Owner closed"))
      (using (entry (network-peer self peer) :- NetworkPeer)
        (or entry.work
            (and (not entry.opening) (not entry.commit-cutoff)
                 (let (work (NetworkOutgoing peer: peer deadline: deadline
                                             min-auth-expire: min-auth-expire))
                   (set! entry.work work)
                   work)))))))

;; The connector worker calls this after its entire retry driver has finished.
(def (network-finish-outgoing! (self : NetworkOwner)
                               (work : NetworkOutgoing))
  => :void
  (do-with-lock self.mutex
    (unless work.finished?
      (set! work.finished? #t)
      (using (entry (self.peers.ref work.peer #f) :- NetworkPeer)
        (set! entry.work #f))
      (network-prune! self))))

;; #f work reserves an unidentified incoming transport. Outgoing reservations
;; are registered under the expected DID before dialing. Capacity failure returns
;; #f without consuming a slot or activating previously unstarted logical work.
(def (network-reserve! (self     :  NetworkOwner)
                       (work     :? NetworkOutgoing)
                       (deadline :  :integer))
  => (Maybe NetworkReservation)
  (do-with-lock self.mutex
    (when self.closed?
      (raise-io-closed network-reserve! "Owner closed"))
    (when (and work work.finished?)
      (raise-io-closed network-reserve! "Outgoing work finished"))
    (and (fx< (length self.pending) self.limits.pending-connections)
         (let (candidate
               (NetworkReservation generation: (+ self.generation 1)
                                   work: work peer: (and work work.peer)
                                   deadline: (if work work.deadline deadline)))
           (set! self.generation (+ self.generation 1))
           (when work (set! work.started? #t))
           (set! self.pending (cons candidate self.pending))
           candidate))))

;; Called only after transport/Unix proof. Identity registration is not UCAN
;; authorization. The expected outgoing identity may not be replaced.
(def (network-identify! (self : NetworkOwner)
                        (candidate : NetworkReservation)
                        (peer : :string))
  => :void
  (let (peer (normalize-did peer))
    (do-with-lock self.mutex
      (when (or self.closed? candidate.retired?)
        (raise-io-closed network-identify! "Owner or reservation closed"))
      (when (and candidate.peer (not (equal? candidate.peer peer)))
        (raise-io-error network-identify! "Unexpected peer identity" peer))
      (network-peer self peer)
      (set! candidate.peer peer)
      (set! candidate.identified? #t)
      ;; Resolving to another peer can release old tombstones immediately.
      (network-prune! self))))

;; Atomically replace the raw view with its upgraded view, or reject shutdown.
;; Setup still owns cleanup until handoff. Rejection closes outside the mutex;
;; a shutdown snapshot holding the old raw view is safe at the SSL boundary.
(def (network-attach! (self : NetworkOwner)
                      (candidate : NetworkReservation)
                      (socket : StreamSocket))
  => :void
  (unless (do-with-lock self.mutex
            (and (not self.closed?) (not candidate.retired?)
                 (begin (set! candidate.socket socket) #t)))
    (socket.close)
    (raise-io-closed network-attach! "Owner or reservation closed")))

;; Readiness is never exclusive, particularly at the larger DID. The driver
;; reports this only after authorization/advisory admission and peer readiness.
(def (network-ready! (self : NetworkOwner)
                     (candidate : NetworkReservation)
                     (expire : :integer))
  => :void
  (do-with-lock self.mutex
    (when (or self.closed? candidate.retired?)
      (raise-io-closed network-ready! "Owner or reservation closed"))
    (unless candidate.identified?
      (raise-context-error network-ready! "Identity not proven"))
    (set! candidate.expire expire)
    (set! candidate.ready? #t)))

;; Nonblocking transition: 'wait retains a viable fallback; 'duplicate cannot
;; open in this cohort; 'opening grants exclusive ownership. The larger endpoint
;; calls only AFTER receiving the smaller endpoint's committing ACCEPT, never as
;; a prerequisite for sending readiness or preparing the opposite attempt.
(def (network-claim-opening! (self      : NetworkOwner)
                             (candidate : NetworkReservation)
                             (now       : :integer))
  => :symbol
  (do-with-lock self.mutex
    (when (or self.closed? candidate.retired?)
      (raise-io-closed network-claim-opening! "Owner or reservation closed"))
    (when (>= now candidate.deadline)
      (raise-timeout network-claim-opening! "Establishment deadline expired"))
    (unless candidate.ready?
      (raise-context-error network-claim-opening! "Candidate not ready"))
    (when (>= now candidate.expire)
      (raise-io-closed network-claim-opening! "Candidate authorization expired"))
    (using (entry (self.peers.ref candidate.peer #f) :- NetworkPeer)
      (cond
       ((eq? entry.opening candidate) 'opening)
       (entry.commit-cutoff
        (if (<= candidate.generation entry.commit-cutoff) 'duplicate 'wait))
       (entry.opening 'wait)
       ((and (string<? self.host candidate.peer)
             entry.work entry.work.started? (not entry.work.finished?)
             (< now entry.work.deadline)
             (or (zero? entry.work.min-auth-expire) (< now entry.work.min-auth-expire))
             (not (eq? candidate.work entry.work)))
        'wait)
       (else
        ;; The larger endpoint has already observed the remote commit.
        (unless (string<? self.host candidate.peer)
          (network-record-commit! self entry))
        (set! entry.opening candidate)
        'opening)))))

;; The smaller endpoint calls immediately BEFORE committing ACCEPT to output.
;; This marker survives selected-candidate retirement until the whole cohort ends.
(def (network-commit! (self : NetworkOwner)
                      (candidate : NetworkReservation)
                      (now : :integer))
  => :void
  (do-with-lock self.mutex
    (when (or self.closed? candidate.retired?)
      (raise-io-closed network-commit! "Owner or reservation closed"))
    (when (>= now candidate.deadline)
      (raise-timeout network-commit! "Establishment deadline expired"))
    (when (>= now candidate.expire)
      (raise-io-closed network-commit! "Candidate authorization expired"))
    (using (entry (self.peers.ref candidate.peer #f) :- NetworkPeer)
      (unless (eq? entry.opening candidate)
        (raise-context-error network-commit! "Candidate does not own opening"))
      (network-record-commit! self entry))))

;; Worker cleanup must finish before calling. No I/O or callbacks under this lock.
;; Retiring a physical failure does not retire the connector's logical work.
(def (network-retire! (self      : NetworkOwner)
                      (candidate : NetworkReservation))
  => :void
  (do-with-lock self.mutex
    (network-retire-locked! self candidate)))

;; Shared by completed cleanup and checked publication, with the owner mutex held.
(def (network-retire-locked! (self      : NetworkOwner)
                             (candidate : NetworkReservation))
  => :void
  (unless candidate.retired?
    (set! candidate.retired? #t)
    (set! candidate.socket #f)
    (set! self.pending (remq1 candidate self.pending))
    (when candidate.peer
      (using (entry (self.peers.ref candidate.peer #f) :- NetworkPeer)
        (when (eq? entry.opening candidate) (set! entry.opening #f))))
    (network-prune! self)))

;; Begin shutdown, interrupting every attached transport before any future joins.
;; Continue cleanup on close errors and rethrow the first; do not hide failures.
;; Reservations remain counted until workers retire. This is NOT Network.close.
(def (network-shutdown! (self : NetworkOwner))
  => :void
  (let ((sockets
         (do-with-lock self.mutex
           (if self.closed? []
               (begin
                 (set! self.closed? #t)
                 (filter-map (lambda ((candidate :- NetworkReservation)) candidate.socket)
                             self.pending)))))
        (errors []))
    (for-each
      (lambda ((socket :- StreamSocket))
        (try (socket.close) (catch (e) (set! errors (cons e errors)))))
      sockets)
    (unless (null? errors)
      (raise (last errors)))))

;;; Public network and renewable lease policy

;; The public mutex precedes the election mutex and any parent mutex. Socket IO,
;; application callbacks and joins never run under it. A session is shared by
;; callers, not owned by the caller that happened to initiate establishment.
(defclass NetworkSession
  ((peer         :  :string)
   (deadline     :  :integer)
   (state        :  :symbol := 'pending)
   (active       :  :fixnum := 0)
   (connection   :? NetworkConnection := #f)
   (renewable?   :  :boolean := #f)
   (seed         :? Token := #f)
   (policy-owner :? NetworkConnection := #f)
   (work         :? NetworkOutgoing := #f)
   (credentials  :? ConnectorCredentials := #f)
   (failed?      :  :boolean := #f)
   (error        :  :t := #f))
  final: #t)

;; A job owns either listener setup/lifetime or candidate setup/connection lifetime.
;; done? means cleanup finished; only the supervisor removes a handle after joining.
(defclass NetworkJob
  ((worker     :? :thread := #f)
   (done?      : :boolean := #f)
   (listener   :? Listener := #f)
   (connection :? NetworkConnection := #f)
   (status     : :symbol := 'pending)
   (error      : :t := #f))
  final: #t)

(defclass EnsembleNetwork
  ((this      : Network)
   (acceptor  : ListenerMonitor)
   (context   : CapabilityContext)
   (monitor   : NetworkMonitor)
   (owner     : NetworkOwner)
   (config    : NetworkConfig)
   (tls       : :foreign)
   (mutex     : :mutex)
   (cv        : :condvar)
   (sessions  : HashTable)
   (jobs      : :list)
   (closed?   : :boolean)
   (worker    :? :thread))
  final: #t
  constructor: :init!)

(defmethod {:init! EnsembleNetwork}
  (lambda (self
           (context : CapabilityContext)
           (monitor : NetworkMonitor)
           (owner   : NetworkOwner)
           (config  : NetworkConfig)
           (tls     : :foreign))
    (set! self.context context)
    (set! self.monitor monitor)
    (set! self.owner owner)
    (set! self.config config)
    (set! self.tls tls)
    (set! self.mutex (make-mutex 'network))
    (set! self.cv (make-condition-variable 'network))
    (set! self.sessions (make-hash-table))
    (set! self.jobs [])
    (set! self.this (Network self))
    (set! self.acceptor (ListenerMonitor self))))

;; One adapter per driver; outgoing retries replace only the physical reservation.
;; opened? records normal callback return, independently of connection liveness.
(defclass NetworkSetup
  ((network     : EnsembleNetwork)
   (job         : NetworkJob)
   (session     :? NetworkSession := #f)
   (reservation :? NetworkReservation := #f)
   (opened?     : :boolean := #f)
   (published?  : :boolean := #f)
   (terminal?   : :boolean := #f))
  final: #t)

;; A CV wait temporarily releases the mutex. In particular, cancellation must not
;; unlock a mutex another thread acquired while this caller was asleep.
(defrule (with-network-wait-lock value body ...)
  (using (network value :- EnsembleNetwork)
    (let (mx network.mutex)
      (unwind-protect
        (begin (mutex-lock! mx) body ...)
        (when (eq? (mutex-state mx) (current-thread))
          (mutex-unlock! mx))))))

(def (network-wait! (self     : EnsembleNetwork)
                    (deadline : :t := #f))
  => :void
  (mutex-unlock! self.mutex self.cv deadline)
  (mutex-lock! self.mutex)
  (void))

;; Borrow the context, its cached principal and the supplied monitor. Only the
;; freshly created TLS context belongs to this constructor and its supervisor.
(def (new-network (host           : :string)
                  (context        : CapabilityContext)
                  (monitor        : NetworkMonitor)
                  limits: (limits : NetworkLimits := (NetworkLimits))
                  config: (config : NetworkConfig := (NetworkConfig)))
  => Network
  (using (owner (make-network-owner host limits) :- NetworkOwner)
    (let (tls (make-tls-context (context.get-principal owner.host)))
      (try
        (using (self (EnsembleNetwork context monitor owner config tls) :- EnsembleNetwork)
          (do-with-lock self.mutex
            (set! self.worker (spawn-network-thread 'network (lambda () (network-thread self)))))
          self.this)
        (catch (e)
          (foreign-release! tls)
          (raise e))))))

;; Called under the public mutex; the worker cannot enter user code until its
;; handle and ownership are published. A failed spawn leaves no retained job.
(def (network-start-job! (self : EnsembleNetwork)
                         (job  : NetworkJob)
                         (proc : :procedure))
  => :void
  (set! job.worker
    (spawn-network-thread 'network-job
     (lambda ()
       (do-with-lock self.mutex (void))
       (unwind-protect
         (proc)
         (do-with-lock self.mutex
           (set! job.done? #t)
           (condition-variable-broadcast! self.cv))))))
  (set! self.jobs (cons job self.jobs)))

(def (network-host (self : EnsembleNetwork))
  => :string
  self.owner.host)

(def (network-check-open! (self : EnsembleNetwork))
  => :void
  (when self.closed?
    (raise-io-closed network "Network closed")))

;; Called with the public mutex, then the parent mutex. Metadata is retained by
;; the concrete connection; a closed parent is not a reusable registry entry.
(def (network-connection-live? (conn : NetworkConnection))
  => :boolean
  (do-with-lock conn.parent.mx
    (and conn.ready? (not conn.parent.closed?)
         (> conn.parent.expire (current-time-seconds)))))

(def (network-connections (self : EnsembleNetwork))
  => :list
  (do-with-lock self.mutex
    (network-check-open! self)
    (let (result [])
      (self.sessions.for-each
       (lambda ((peer    :- :string)
                (session :- NetworkSession))
         (when (and (eq? session.state 'ready)
                    (network-connection-live? session.connection))
           (set! result (cons session.connection.this result)))))
      result)))

(def (network-peers (self : EnsembleNetwork))
  => :list
  (map (lambda ((conn :- Connection)) (conn.peer)) (network-connections self)))

(def (network-listening (self : EnsembleNetwork))
  => :list
  (do-with-lock self.mutex
    (network-check-open! self)
    (filter-map
     (lambda ((job :- NetworkJob))
       (and job.listener (not job.done?) (not (listener-closed? job.listener))
            job.listener.address))
     self.jobs)))

;; Policy attachment is serialized with the pre-activation owner cutover. A waiter
;; owns only its wait: accepted intent and shared work survive its timeout/failure.
;; Uncovered finite requirements wait on the parent only after releasing our lock.
(def (network-connect! (self           :  EnsembleNetwork)
                       (peer           :  :string)
                       (addrs          :~ (list-of? Address?) :- :list)
                       (auth           :? Token := #f)
                       ttl: (ttl       :~ (? (or not positive-integer?)) := #f)
                       expire: (expire :~ (? (or not uint64?))           := #f)
                       lease: (lease   :~ (one-of #f renewable) := #f))
  => Connection
  (when (and lease (or ttl expire))
    (raise-io-error network-connect! "Lease policy cannot be combined with ttl or expire"))
  (let* ((start (current-time-seconds))
         (peer (normalize-did peer))
         (required (and (or ttl expire)
                        (resolve-auth-expiration start self.config.connection-ttl
                                                 ttl: ttl expire: expire)))
         (deadline (operation-deadline start self.config.handshake-timeout)))
    (let-values (((session wait-deadline)
                  (with-network-wait-lock self
                    (network-check-open! self)
                    ;; Validate before creating logical work. A cut-over parent
                    ;; additionally checks its real available allowance below.
                    (when lease (renewal-check-capacity! self.owner.limits.connection-limits))
                    (using (session
                            (let select ()
                              (network-check-open! self)
                              (when (equal? peer self.owner.host)
                                (raise-io-error network-connect! "Self connection" peer))
                              (using (old (self.sessions.ref peer #f) :? NetworkSession)
                                (cond
                                 ((and old (not (and (eq? old.state 'ready)
                                                     (not (network-connection-live? old.connection)))))
                                  old)
                                 ((null? addrs)
                                  (raise-io-error network-connect! "No live connection or pending establishment" peer))
                                 (else
                                  (when (>= (current-time-seconds) deadline)
                                    (raise-timeout network-connect! "Establishment deadline expired" peer))
                                  (let* ((target (if lease 0
                                                     (or required
                                                         (resolve-auth-expiration start self.config.connection-ttl))))
                                         ;; Do not duplicate a still-finishing driver
                                         ;; after its published connection has closed.
                                         (work (and (not (and old old.work (not old.work.finished?)))
                                                    (network-outgoing! self.owner peer deadline target))))
                                    (if (not work)
                                      (begin
                                        ;; A committed cohort is not an address retry.
                                        (network-wait! self (seconds->time deadline))
                                        (select))
                                      (using (session (NetworkSession peer: peer deadline: deadline work: work
                                                                      credentials: (make-connector-credentials auth)
                                                                      active: 1)
                                                      :- NetworkSession)
                                        (try
                                          (let* ((job (NetworkJob))
                                                 (setup (NetworkSetup network: self job: job session: session)))
                                            (network-start-job! self job
                                              (lambda () (network-outgoing-thread setup addrs start target))))
                                          (catch (e)
                                            (network-finish-outgoing! self.owner work)
                                            (raise e)))
                                        (self.sessions.set! peer session)
                                        session)))))))
                            :- NetworkSession)
                      (when (and lease (memq session.state '(pending ready)))
                        ;; This helper obtains the parent lock itself. Publish the
                        ;; fallback copy only after actual parent admission succeeds.
                        (when session.policy-owner
                          (connection-enable-renewable! session.policy-owner auth))
                        (set! session.renewable? #t)
                        (when auth (set! session.seed auth)))
                      (when (and (eq? session.state 'pending) auth session.credentials)
                        ;; Serialize contribution with publication: a blocked loser
                        ;; can retain its open queue after another candidate wins.
                        ;; Exhaustion is advisory; it cannot replace the shared result.
                        (try (connector-add-credential! session.credentials auth)
                             (catch (Closed? e) (void))))
                      (values session
                              (and (not (eq? session.state 'ready))
                                   (min deadline session.deadline)))))))
      (using (session :- NetworkSession)
        (using (conn
                (with-network-wait-lock self
                  (let loop ()
                    (network-check-open! self)
                    (case session.state
                      ((ready)
                       (unless (network-connection-live? session.connection)
                         (raise-io-closed network-connect! "Connection closed before delivery" peer))
                       session.connection)
                      ((failed)
                       (raise session.error))
                      (else
                       (when (>= (current-time-seconds) wait-deadline)
                         (raise-timeout network-connect! "Establishment deadline expired" peer))
                       (network-wait! self (seconds->time wait-deadline))
                       (loop)))))
                :- NetworkConnection)
          ;; Default/renewable reuse and covered finite requests never queue behind
          ;; a longer round. The parent rechecks coverage/liveness on admission;
          ;; ready reuse derives its deadline from start, never from delivery time.
          (when (and required (> required (connection-expiration conn)))
            (let (request-deadline
                  (if wait-deadline
                    (operation-deadline (current-time-seconds) self.config.renewal-timeout
                                        deadline: wait-deadline)
                    (operation-deadline start self.config.renewal-timeout)))
              (connection-protect-renewal! conn)
              (connection-request-renewal! conn required request-deadline auth)))
          conn.this)))))

(def (network-listen! (self : EnsembleNetwork)
                      (addr : Address))
  => Address
  (using (job (NetworkJob) :- NetworkJob)
    (do-with-lock self.mutex
      (network-check-open! self)
      (network-start-job! self job (lambda () (network-listener-thread self job addr))))
    (with-network-wait-lock self
      (let loop ()
        (network-check-open! self)
        (case job.status
          ((ready) job.listener.address)
          ((failed) (raise job.error))
          (else (network-wait! self) (loop)))))))

(def (network-listener-thread (self : EnsembleNetwork)
                              (job  : NetworkJob)
                              (addr : Address))
  => :void
  (try
    (using (listener (make-listener self.acceptor addr) :- Listener)
      (unwind-protect
        (begin
          (do-with-lock self.mutex
            ;; Track even a late construction so shutdown owns its join.
            (set! job.listener listener)
            (network-check-open! self)
            (set! job.status 'ready)
            (condition-variable-broadcast! self.cv))
          (network-thread-join! listener.worker))
        (begin
          (listener-close! listener)
          (network-thread-join! listener.worker))))
    (catch (e)
      (let (published?
            (do-with-lock self.mutex
              (let (published? (eq? job.status 'ready))
                (set! job.error e)
                (set! job.status 'failed)
                (condition-variable-broadcast! self.cv)
                published?)))
        ;; Construction failure belongs to listen!'s caller. A later listener
        ;; cleanup failure must also reach the supervisor's blocking close result.
        (when published? (raise e))))))

;; Accept transfers a raw socket only after reserving capacity and publishing its
;; worker. TLS and the entire handshake consume the deadline captured here.
(def (network-accept! (self     : EnsembleNetwork)
                      (listener : Listener)
                      (socket   : StreamSocket))
  => :boolean
  (let* ((start (current-time-seconds))
         (deadline (operation-deadline start self.config.handshake-timeout)))
    (do-with-lock self.mutex
      (and (not self.closed?)
           (let (reservation (network-reserve! self.owner #f deadline))
             (and reservation
                  (try
                    (let* ((job (NetworkJob))
                           (setup (NetworkSetup network: self job: job reservation: reservation)))
                      (network-attach! self.owner reservation socket)
                      (network-start-job! self job
                        (lambda () (network-incoming-thread setup socket start deadline)))
                      #t)
                    (catch (e)
                      (network-retire! self.owner reservation)
                      (raise e)))))))))

(def (network-listener-closed! (self     : EnsembleNetwork)
                               (listener : Listener))
  => :void
  (do-with-lock self.mutex
    (condition-variable-broadcast! self.cv)))

(def (network-setup-connecting! (setup   : NetworkSetup)
                                (address : Address)
                                (start   : :integer))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (do-with-lock self.mutex
      (network-check-open! self)
      (unless (eq? setup.session.state 'pending)
        (raise-io-closed network-connect! "Establishment already resolved" setup.session.peer))
      (set! setup.reservation
        (network-reserve! self.owner setup.session.work setup.session.deadline))
      (unless setup.reservation
        (raise-io-error network-connect! "Pending connection capacity exhausted")))))

(def (network-setup-attach! (setup  : NetworkSetup)
                            (socket : StreamSocket))
  => :void
  (network-attach! setup.network.owner setup.reservation socket))

(def (network-setup-connected! (setup     : NetworkSetup)
                               (candidate : Handshake))
  => :void
  (network-setup-attach! setup candidate.socket))

(def (network-setup-identified! (setup     : NetworkSetup)
                                (candidate : Handshake))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (do-with-lock self.mutex
      (network-check-open! self)
      (network-identify! self.owner setup.reservation candidate.peer)
      ;; Resolving this identity can release another peer's committed history.
      ;; Wake that peer before any later credential work or callback can stall.
      (condition-variable-broadcast! self.cv)
      (unless setup.session
        (using (old (self.sessions.ref candidate.peer #f) :? NetworkSession)
          (when (and old
                     (or (memq old.state '(aborting failed))
                         (and (eq? old.state 'ready)
                              (not (network-connection-live? old.connection))
                              (or (not old.work) old.work.finished?))))
            (set! old #f))
          (let (session
                (or old
                    (let (session (NetworkSession peer: candidate.peer deadline: candidate.deadline))
                      (self.sessions.set! candidate.peer session)
                      session)))
            (set! setup.session session)
            (set! setup.session.active (fx+ setup.session.active 1))))))))

(def (network-setup-admit! (setup     : NetworkSetup)
                           (candidate : Handshake))
  => :boolean
  (network-allow-connection? setup.network candidate.peer DIRECTION-IN))

(def (network-allow-connection? (self      : EnsembleNetwork)
                                (peer      : :string)
                                (direction : :fixnum))
  => :boolean
  (do-with-lock self.mutex (network-check-open! self))
  (try
    (self.monitor.allow-connection? peer direction)
    (catch (e)
      (unless (Closed? e)
        (log.error "Connection admission callback failed"
                   peer: peer exception: (exception->string e)))
      (raise e))))

(def (network-setup-open! (setup     : NetworkSetup)
                          (candidate : Handshake))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (let (decision
          (with-network-wait-lock self
            (network-ready! self.owner setup.reservation candidate.expire)
            (let loop ()
              (network-check-open! self)
              (unless (eq? setup.session.state 'pending)
                (raise-io-closed network-connect! "Establishment already resolved" candidate.peer))
              (let (decision (network-claim-opening! self.owner setup.reservation
                                                     (current-time-seconds)))
                (if (eq? decision 'wait)
                  (begin
                    ;; A preference expiry is a wakeup, not this candidate's
                    ;; operation timeout. Raw CV timeout returns normally.
                    (mutex-unlock! self.mutex self.cv
                                   (seconds->time
                                    (network-opening-deadline self.owner setup.reservation)))
                    (mutex-lock! self.mutex)
                    (loop))
                  decision)))))
      (when (eq? decision 'duplicate)
        (handshake-reject! candidate reason-duplicate)
        (raise-io-closed network-connect! "Duplicate connection" candidate.peer)))
    (try
      (using (conn (make-network-connection self.this self.monitor candidate self.config
                                            self.owner.limits.connection-limits)
                   :- NetworkConnection)
        ;; Construction already owns a parent worker. Until the job accepts it,
        ;; a cancelled lock acquisition must close/join that unregistered parent.
        (unwind-protect
          (with-network-wait-lock self
            (set! setup.job.connection conn)
            (network-check-open! self))
          (unless (eq? setup.job.connection conn)
            (connection-shutdown! conn)))
        (try
          (self.monitor.on-open-connection conn.this)
          (catch (e)
            (unless (Closed? e)
              (log.error "Connection open callback failed"
                         peer: candidate.peer exception: (exception->string e)))
            (raise e)))
        ;; Only this setup worker reads/writes eligibility. Record normal return
        ;; before the next interruptible lock acquisition, not inside that lock.
        (set! setup.opened? #t)
        (with-network-wait-lock self
          (network-check-open! self)
          (when (do-with-lock conn.parent.mx conn.parent.closed?)
            (raise-io-closed network-connect! "Connection closed by open callback" candidate.peer))
          (when candidate.smaller?
            (network-commit! self.owner setup.reservation (current-time-seconds)))))
      (catch (e)
        ;; Final admission is terminal for the cohort, never an address retry.
        ;; Waiters are released only after the affected object's cleanup finishes.
        (do-with-lock self.mutex
          (network-seal-session! setup)
          (when setup.terminal?
            (set! setup.session.failed? #t)
            (set! setup.session.error e))
          (condition-variable-broadcast! self.cv))
        (raise e)))))

;; The caller holds the public mutex. A blocked preferred credential worker need
;; not produce another notification when its original viability budget expires.
(def (network-opening-deadline (self      : NetworkOwner)
                               (candidate : NetworkReservation))
  => :integer
  (do-with-lock self.mutex
    (using (entry (self.peers.ref candidate.peer #f) :- NetworkPeer)
      (let (deadline (min candidate.deadline candidate.expire))
        (if (and (not entry.opening) (not entry.commit-cutoff)
                 (string<? self.host candidate.peer)
                 entry.work entry.work.started? (not entry.work.finished?)
                 (not (eq? candidate.work entry.work)))
          ;; Even if expiry passed while acquiring this lock, wake immediately
          ;; and let claim-opening! re-evaluate instead of sleeping past it.
          (let (deadline (min deadline entry.work.deadline))
            (if (zero? entry.work.min-auth-expire) deadline
                (min deadline entry.work.min-auth-expire)))
          deadline)))))

;; Called under the public mutex before retirement or failed publication can
;; expose a new election to identity registration and waiting callers.
;; Only one failing setup owns terminal completion; losing candidates cannot turn
;; a published winner into a failed session or replace a sealed session's error.
(def (network-seal-session! (setup : NetworkSetup))
  => :void
  (when (and setup.session (eq? setup.session.state 'pending))
    (set! setup.terminal? #t)
    (set! setup.session.state 'aborting)
    ;; Earlier, nonselected candidate failures are not this committed failure.
    (set! setup.session.failed? #f)
    (set! setup.session.error #f)))

;; Both serialized publication boundaries use the original operation budget and
;; authenticated lease. Passing CONFIRM does not grant extra scheduling headroom.
(def (network-setup-check-live! (candidate : Handshake)
                                (expire    : :integer))
  => :void
  (let (now (current-time-seconds))
    (when (>= now candidate.deadline)
      (raise-timeout network-connect! "Establishment deadline expired" candidate.peer))
    (when (>= now expire)
      (raise-io-closed network-connect! "Connection authorization expired" candidate.peer))))

(def (network-setup-complete! (setup     : NetworkSetup)
                              (candidate : Handshake))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (using (conn setup.job.connection :- NetworkConnection)
      (do-with-lock self.mutex
        (network-check-open! self)
        (unless (and (eq? setup.session.state 'pending) setup.opened?)
          (raise-io-closed network-connect! "Establishment no longer owns publication" candidate.peer))
        (when (do-with-lock conn.parent.mx conn.parent.closed?)
          (raise-io-closed network-connect! "Connection closed before handoff" candidate.peer))
        ;; No handshake IO remains after CONFIRM. The job now owns the dormant
        ;; concrete parent even if activation or the final publication check fails.
        (do-with-lock self.owner.mutex
          (network-setup-check-live! candidate (connection-expiration conn))
          (set! setup.reservation.socket #f))
        ;; Cut over every session, including a currently fixed one, before framed
        ;; activation. Later renewable joiners must use this parent's real allowance.
        (when setup.session.renewable?
          (connection-enable-renewable! conn setup.session.seed))
        (set! setup.session.policy-owner conn))
      (connection-activate! conn)
      (do-with-lock self.mutex
        (try
          (network-check-open! self)
          (unless (eq? setup.session.state 'pending)
            (raise-io-closed network-connect! "Establishment no longer owns publication" candidate.peer))
          (do-with-lock self.owner.mutex
            (do-with-lock conn.parent.mx
              (when (or self.owner.closed? setup.reservation.retired?
                        (not conn.ready?) conn.parent.closed?)
                (raise-io-closed network-connect! "Connection closed during activation" candidate.peer))
              ;; Check after every lock wait; retirement and publication share
              ;; these locks so failure cannot release pending cleanup capacity.
              (network-setup-check-live! candidate conn.parent.expire)
              (network-retire-locked! self.owner setup.reservation)
              (set! setup.reservation #f)
              (set! setup.session.connection conn)
              (set! setup.session.state 'ready)
              (set! setup.published? #t)))
          (condition-variable-broadcast! self.cv)
          (catch (e)
            ;; Keep the reservation through cleanup, and seal before unlocking
            ;; so a new identity cannot attach to these old waiters.
            (network-seal-session! setup)
            (when setup.terminal?
              (set! setup.session.failed? #t)
              (set! setup.session.error e))
            (condition-variable-broadcast! self.cv)
            (raise e)))))))

;; Both failed setup and lifetime reaping close before joining. The connection
;; helper finishes all stream callbacks; only then can this owner pair connection
;; notification. A normally returning callback that closed conn is still eligible.
;; connection-shutdown! finishes owned joins before reporting recorded worker
;; failures. Do not retry that whole operation here after it completed.
(def (network-setup-cleanup! (setup : NetworkSetup))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (unwind-protect
      (when setup.job.connection
        (using (conn setup.job.connection :- NetworkConnection)
          (unwind-protect
            (connection-shutdown! conn)
            (when setup.opened?
              (set! setup.opened? #f)
              (try (self.monitor.on-close-connection conn.this)
                   (catch (e)
                     (log.error "Connection close callback failed"
                                peer: conn.candidate.peer exception: (exception->string e))))))))
      (do-with-lock self.mutex
        ;; Clear before reservation retirement can allow a precommit fallback.
        ;; Its next cutover inherits the accepted session policy/seed unchanged.
        (when (and setup.session
                   (eq? setup.session.policy-owner setup.job.connection))
          (set! setup.session.policy-owner #f))
        (set! setup.job.connection #f)
        (when setup.reservation
          (network-retire! self.owner setup.reservation)
          (set! setup.reservation #f))
        (condition-variable-broadcast! self.cv)))))

(def (network-setup-closed! (setup     : NetworkSetup)
                            (candidate : Handshake))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (do-with-lock self.mutex
      (when (and setup.session (eq? setup.session.state 'pending)
                 (or candidate.committed?
                     (and setup.reservation
                          (do-with-lock self.owner.mutex
                            (using (entry (self.owner.peers.ref candidate.peer #f) :? NetworkPeer)
                              (and entry entry.commit-cutoff
                                   (eq? entry.opening setup.reservation)))))))
        (network-seal-session! setup)
        (condition-variable-broadcast! self.cv))))
  (network-setup-cleanup! setup))

(def (network-setup-failed! (setup   : NetworkSetup)
                            (address : Address)
                            (error   : :t))
  => :void
  (network-setup-cleanup! setup))

;; Lifetime join observes the parent terminal transition without initiating it.
;; Swallow only its exact recorded close failure, including a recorded #f.
(def (network-connection-thread (setup : NetworkSetup))
  => :void
  (using (conn setup.job.connection :- NetworkConnection)
    (try
      (connection-parent-join! conn.parent)
      (catch (e)
        (unless (do-with-lock conn.parent.mx
                  (and conn.parent.closed? (eq? e conn.parent.error)))
          (raise e))))))

;; Finish session bookkeeping after candidate cleanup, keeping the first failure
;; (even #f). A failed physical outgoing retry does not finish this logical member.
(def (network-session-finished! (setup   : NetworkSetup)
                                (failed? : :boolean)
                                (error   : :t))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (do-with-lock self.mutex
      (when setup.session
        (using (session setup.session :- NetworkSession)
          (set! session.active (fx- session.active 1))
          (when (and failed? (not session.failed?)
                     (or setup.terminal? (eq? session.state 'pending)))
            (set! session.failed? #t)
            (set! session.error error))
          (when (or setup.terminal?
                    (and (eq? session.state 'pending) (fxzero? session.active)))
            (set! session.state 'failed))
          (when (and (fxzero? session.active)
                     (eq? (self.sessions.ref session.peer #f) session))
            (self.sessions.delete! session.peer))))
      (condition-variable-broadcast! self.cv))))

(def (network-outgoing-thread (setup  : NetworkSetup)
                              (addrs  : :list)
                              (start  : :integer)
                              (target : :integer))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (let ((failed? #f) (failure #f))
      (try
        (unwind-protect
          (begin
            (unless (network-allow-connection? self setup.session.peer DIRECTION-OUT)
              (raise-io-error network-connect! "Connection admission refused" setup.session.peer))
            (unless (connector-connect! (ConnectorMonitor setup) self.context self.tls
                                        self.owner.host setup.session.peer addrs setup.session.credentials
                                        start setup.session.deadline target adaptive?: (zero? target)
                                        config: self.config
                                        limits: self.owner.limits.connection-limits)
              (raise-io-error network-connect! "Connection handshake rejected" setup.session.peer)))
          (begin
            (connector-close-credentials! setup.session.credentials)
            (do-with-lock self.mutex
              (network-finish-outgoing! self.owner setup.session.work)
              (condition-variable-broadcast! self.cv))))
        (network-connection-thread setup)
        (catch (e) (set! failed? #t) (set! failure e))
        (finally
          (unwind-protect
            (network-setup-cleanup! setup)
            (network-session-finished! setup failed? failure))))
      (when (and failed?
                 (or setup.published?
                     (and setup.terminal? (not (eq? failure setup.session.error)))))
        (raise failure)))))

(def (network-incoming-thread (setup    : NetworkSetup)
                              (socket   : StreamSocket)
                              (start    : :integer)
                              (deadline : :integer))
  => :void
  (using (self setup.network :- EnsembleNetwork)
    (let ((handed? #f) (failed? #f) (failure #f))
      (try
        (unless (fx= (socket.domain) AF_UNIX)
          (set! socket (ssl-server-upgrade socket self.tls timeout: (IOTimeout (seconds->time deadline))))
          (network-setup-attach! setup socket))
        (using (candidate (make-handshake socket self.context self.owner.host #f DIRECTION-IN
                                          start deadline 0 config: self.config
                                          limits: self.owner.limits.connection-limits)
                          :- Handshake)
          (unless (run-handshake! candidate (HandshakeMonitor setup))
            (raise-io-error network "Incoming handshake rejected" candidate.reason))
          (set! handed? #t))
        (network-connection-thread setup)
        (catch (e) (set! failed? #t) (set! failure e))
        (finally
          (unwind-protect
            (unless handed? (socket.close))
            (unwind-protect
              (network-setup-cleanup! setup)
              (network-session-finished! setup failed? failure)))))
      (when (and failed?
                 (or setup.published?
                     (and setup.terminal? (not (eq? failure setup.session.error)))))
        (raise failure)))))

;; The supervisor is the sole TLS cleanup owner and joins completed job handles
;; continuously, rather than retaining an unbounded history until Network.close.
;; Closing every native resource precedes any shutdown join. Late constructors
;; observe closed? and clean up in their already registered jobs.
(def (network-thread (self : EnsembleNetwork))
  => :void
  (let ((closing? #f) (failed? #f) (failure #f))
    (def (attempt (proc : :procedure))
      => :void
      (try (proc)
           (catch (e)
             (unless failed? (set! failed? #t) (set! failure e))))
      (void))
    (unwind-protect
      (let loop ()
        (let-values (((shutdown? jobs)
                      (with-network-wait-lock self
                        (let wait ()
                          (let (done (filter (lambda ((job :- NetworkJob)) job.done?) self.jobs))
                            (cond
                             ((and self.closed? (not closing?)) (values #t self.jobs))
                             ((or (pair? done) (and closing? (null? self.jobs))) (values #f done))
                             (else (network-wait! self) (wait))))))))
          (if shutdown?
            (begin
              (set! closing? #t)
              (attempt (lambda () (network-shutdown! self.owner)))
              (for-each
                (lambda ((job :- NetworkJob))
                  (let-values (((listener conn)
                                (do-with-lock self.mutex
                                  (values job.listener job.connection))))
                    (when listener
                      (using (listener :- Listener)
                        (do-with-lock listener.mutex (set! listener.closed? #t))
                        (attempt (lambda () (listener.socket.close)))))
                    (when conn
                      (using (conn :- NetworkConnection)
                        (attempt (lambda () (conn.this.close)))))))
                jobs)
              (loop))
            (begin
              (for-each
                (lambda ((job :- NetworkJob))
                  (unless (eq? job.worker (current-thread))
                    (attempt (lambda () (network-thread-join! job.worker)))))
                jobs)
              (do-with-lock self.mutex
                (for-each (lambda ((job :- NetworkJob)) (set! self.jobs (remq1 job self.jobs))) jobs))
              (unless (and closing? (do-with-lock self.mutex (null? self.jobs)))
                (loop))))))
      (foreign-release! self.tls))
    (when failed? (raise failure))))

(def (network-close (self : EnsembleNetwork))
  => :void
  (when (thread-local-get network-thread-key)
    (raise-contract-violation network-close
      "Network.close requires an application thread, not a network worker"
      host: self.owner.host worker: (current-thread)))
  (do-with-lock self.mutex
    (set! self.closed? #t)
    (condition-variable-broadcast! self.cv))
  (network-thread-join! self.worker)
  (void))

(implement Network EnsembleNetwork
  (host __network-host)
  (connect! __network-connect!)
  (listen! __network-listen!)
  (peers __network-peers)
  (connections __network-connections)
  (listening __network-listening)
  (close __network-close))

(implement ListenerMonitor EnsembleNetwork
  (accept! __network-accept!)
  (closed! __network-listener-closed!))

(implement HandshakeMonitor NetworkSetup
  (connected! __network-setup-connected!)
  (identified! __network-setup-identified!)
  (admit! __network-setup-admit!)
  (open! __network-setup-open!)
  (complete! __network-setup-complete!)
  (closed! __network-setup-closed!))

(implement ConnectorMonitor NetworkSetup
  (connecting! __network-setup-connecting!)
  (attach! __network-setup-attach!)
  (failed! __network-setup-failed!))
