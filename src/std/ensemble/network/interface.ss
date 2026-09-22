;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network interface
(import :std/io/interface
        :std/number/misc
        :std/time/timeout
        :std/net/address
        (only-in :std/os/device
                 DIRECTION-IN
                 DIRECTION-OUT)
        ../ucan/interface)
(export #t
        DIRECTION-IN
        DIRECTION-OUT)

(deftype @Connection Connection)
(deftype @Stream Stream)

;; Network is the interface for managing an ensemble host's peer connections and listeners.
;; Network instances own listeners, connections, streams, and network workers,
;; but borrow the capability context and monitor; shutdown does not close either.
;; host remains available after close. Live operations and registry queries raise
;; Closed after close; snapshots do not guarantee continued object liveness.
;; close is idempotent and blocks until owned work and notifications finish.
;; Any network-owned worker (including callbacks/finalizers) gets ContractViolation
;; before shutdown changes or waits, even for another or already closing network.
;; Dispatch close to an application thread; the worker marker is not inherited.
(interface (Network Closer)
  ;; the DID of the network host
  (host)
  => :string

  ;; Opens, reuses, or joins the one shared connection to a canonical peer DID.
  ;; - peer is the peer host's DID.
  ;; - addrs is a list of addresses to use when establishing
  ;;   a new connection. they will be tried by order of
  ;;   preference, with local UNIX addresses tried first.
  ;;   An empty list only reuses a live connection or joins pending establishment;
  ;;   if neither exists, fail without dialing or implicit address discovery.
  ;;   All TCP connections are secured with TLS.
  ;; - auth is an optional DELEGATE parent for local UCAN evidence, not transport
  ;;   identity or a per-caller provenance requirement on a shared connection.
  ;;   Without auth, use the borrowed capability context's output trust policy.
  ;; - In fixed mode, ttl is positive exact seconds; expire is absolute u64 Unix seconds.
  ;;   #f means omitted. expire takes precedence; otherwise resolve start + ttl
  ;;   once, using NetworkConfig's connection TTL for new establishment only.
  ;;   With no override, reuse does not renew. A covered deadline reuses the lease;
  ;;   a later deadline requires explicit mutual renewal covering it in full.
  ;;   Check time validity and resolved wire range in the implementation, not here.
  ;; - lease is #f for fixed behavior or 'renewable for adaptive finite leases.
  ;;   Renewable interest is sticky on the shared connection until close; default
  ;;   reuse does not disable it. Pending joiners do not retarget active work.
  ;;   The implementation rejects a nonfalse lease with a nonfalse ttl or expire
  ;;   before reserving work or changing policy, while validating both lifetimes.
  ;; Success requires completed on-open callbacks and local protocol completion.
  (connect! (peer           :  :string)
            (addrs          :~ (list-of? Address?) :- :list)
            (auth           :? Token := #f)
            ttl: (ttl       :~ (? (or not positive-integer?)) := #f)
            expire: (expire :~ (? (or not uint64?))           := #f)
            lease: (lease   :~ (one-of #f renewable) := #f))
  => @Connection

  ;; Complete bind/listen and return the actual bound address (assigned port for
  ;; TCP port zero), also recorded in listening. Failed/duplicate binds are errors.
  (listen! (addr : Address))
  => Address

  ;; current network peers
  ;; returns a list of peer host DIDs
  (peers)
  => :list

  ;; current network connections
  ;; returns a list of open connections
  (connections)
  => :list

  ;; current listening addresses
  ;; returns a list of addresses the network is listening to
  (listening)
  => :list
  )

;; Connection is the interface for a network connection.
;; Network connections are point to point to a peer and can multiplex
;; multiple logical streams.
;; Metadata is immutable by convention and remains accessible after close;
;; expire retains the last installed lease, not the close time. Timeout setters
;; and opening streams require a live object. close is idempotent/callback-safe.
(interface (Connection NetworkTimeout Closer)
  ;; the Network instance this connection belongs to
  (network)
  => Network

  ;; the local address of the connection
  (address)
  => Address

  ;; the peer host DID
  (peer)
  => :string

  ;; the remote address of the connection
  (peer-address)
  => Address

  ;; the connection direction:
  ;; - DIRECTION-IN if it is an inbound connection initiated by the peer
  ;; - DIRECTION-OUT if it is an outbound connection initiated by the host
  (direction)
  => :fixnum

  ;; Last installed negotiated authorization expiration, absolute Unix seconds.
  ;; Renewal may advance it; I/O timeouts never extend it.
  (expire)
  => :integer

  ;; opens a new outbound stream.
  ;; - protocol is the protocol of the stream.
  ;; - auth is an optional DELEGATE parent; otherwise use context output policy.
  ;; - In fixed mode, ttl/expire have the connect! contracts and precedence. Resolve
  ;;   once at operation start using the independent NetworkConfig stream TTL.
  ;;   The accepted credential must cover the requested expiration in full.
  ;;   This never renews the connection or clamps the stream lease to its lease.
  ;; - lease is #f for fixed behavior or 'connection to follow installed connection
  ;;   extensions through protocol-specific stream reauthorization. The initial
  ;;   credential must cover the captured connection expiration in full.
  ;;   Linked streams are legal on fixed connections and never enable automatic
  ;;   connection renewal themselves. Reject nonfalse ttl/expire with this policy
  ;;   in the implementation before admission. Connection closure aborts all streams.
  (open-stream! (protocol       :  :string)
                (auth           :? Token := #f)
                ttl: (ttl       :~ (? (or not positive-integer?)) := #f)
                expire: (expire :~ (? (or not uint64?))           := #f)
                lease: (lease   :~ (one-of #f connection) := #f))
  => @Stream
  )

;; Stream represents a logical protocol connection on top of an actual
;; network connection.
;; Multiple streams can be multiplexed in a single network connection.
;; Stable metadata and the existing reader/writer handles survive close, not their
;; usability. Timeout setters require a live stream. Closing the stream or reader
;; aborts; closing the writer drains DATA then FIN under its write timeout.
(interface (Stream NetworkTimeout Closer)
  ;; the connection this stream is multiplexed on
  (connection)
  => Connection

  ;; the stream logical identifier within a connection
  (id)
  => :integer

  ;; the stream direction.
  ;; - DIRECTION-IN if it is a stream opened by the peer
  ;; - DIRECTION-OUT if it is an outbound stream by the host
  (direction)
  => :fixnum

  ;; the protocol of the stream
  (protocol)
  => :string

  ;; Last installed stream credential expiration, absolute Unix seconds; independent
  ;; of Connection.expire. Only stream reauthorization advances a linked stream's
  ;; expiration; a fixed stream and a closed stream retain their installed value.
  (expire)
  => :integer

  ;; the stream data reader
  (reader)
  => Reader

  ;; the stream data writer
  (writer)
  => Writer
  )


;; NetworkMonitor is an interface for entities monitoring
;; and gating network status changes.
;; Callbacks run inline, promptly, outside network/connection locks. allow-* is
;; advisory, not a reservation; unchanged reuse and renewal invoke no allow/open
;; callbacks. Final on-open admission may close the object and raise Closed.
;; Any on-open exception aborts without the corresponding on-close; the monitor
;; must roll back its own registration. Local callers receive the exception after
;; cleanup; inbound stream callback failure remains stream-local.
;; Notify open/close at most once, never overlapping for the same object. Only a
;; normally returning on-open qualifies for on-close, even if it closed the object.
;; Connection open precedes stream opens; eligible stream closes finish before
;; connection close notification. Different objects' callbacks may be concurrent.
;; on-close exceptions are logged and do not stop cleanup/other notifications.
;; It is not safe to call Network.close from a monitor callback: shutdown waits
;; for network workers and can deadlock on the invoking worker. Dispatch global
;; shutdown to an application worker instead. Connection.close and Stream.close
;; remain safe to call from monitor callbacks.
(interface NetworkMonitor
  ;; invoked by the network to control whether a new connection
  ;; should be allowed.
  ;; - peer is the DID of the peer host.
  ;; - direction is the direction of the connection.
  (allow-connection? (peer      : :string)
                     (direction : :fixnum))
  => :boolean

  ;; invoked by the network when a new connection is opened.
  (on-open-connection (conn : Connection))
  => :void

  ;; invoked by the network when a connection is closed.
  (on-close-connection (conn : Connection))
  => :void

  ;; invoked by the network to control whether a new stream
  ;; should be allowed.
  ;; - peer is the DID of the peer host.
  ;; - protocol is the protocol of the stream.
  ;; - direction is the direction of the stream.
  (allow-stream? (peer      : :string)
                 (protocol  : :string)
                 (direction : :fixnum))
  => :boolean

  ;; invoked by the network when a new stream is opened
  (on-open-stream (stream : Stream))
  => :void

  ;; invoked by the network when a new stream is closed
  (on-close-stream (stream : Stream))
  => :void
  )
