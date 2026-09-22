# Ensemble Network Design Notes

## Purpose And Status

Current implementation and verification: see the [public facade](../network.md#integration-status),
[interface contracts](interface.md), [renewal runtime](renewal.md#current-implementation),
and [main-owned checkpoint](implementation-notes.md#current-checkpoint). Public
networks and opt-in renewal are implemented. The early status summary, interface
snapshot and dated checkpoints below are chronological history; later explicit
decisions supersede their deferrals, sketches and earlier verification scope.

Latest cancellation decision: vyzo explicitly withdrew the added `Interrupt` API
and asynchronous raising-recovery machinery. See the
[withdrawal record](#agreed-interrupt-api-withdrawal-2026-09-12) for current scope;
main has verified that source revision as recorded below. Earlier approvals and successful
test checkpoints below are chronological records, not current retry guidance.

Latest constructor naming refinement: procedures constructing interface instances
use new-, not make-. The public constructor is `new-network`, superseding
make-network in the chronological agreements below; its arguments and ownership
contract are unchanged. Concrete class constructors are not renamed by this rule.

Design the canonical implementation of the `Network` interface interactively
with vyzo, then implement it. This file is the running record for review,
context compaction, and future sessions.

Participants: vyzo (project author) and astra (assistant). Use these names when
attributing decisions, rather than referring to vyzo as "the user".

Historical early-design summary: construction/ownership, inline inbound-stream
delivery, and the basic transport authentication model have been agreed. Mutual
UCAN authorization and token-bundle acceptance are also agreed. The Unix host/OS trust boundary is
explicit; connections close on authorization expiry. vyzo approved limited in-band
renewal, triggered explicitly by connect! when a supplied TTL requests a later
expiration. Automatic/background renewal remains deferred.
First-valid credential selection, lease acknowledgment, and configurable defaults
of one hour for token lifetime and ten seconds for the handshake are agreed.
Renewal failure semantics, full requested-TTL enforcement, and a Connection.expire
getter are agreed. Required expiration is fixed at connect! start plus TTL.
The one-hour lifetime is a default, not a ceiling on peer requests. The initial
HELLO/AUTH/asymmetric-ACCEPT/CONFIRM and one shared connection per peer are agreed.
Pending-attempt joining and lexicographic initiator preference for crossed attempts
are agreed. Canonical network DIDs and rejection of same-DID/self connections
are agreed. Stream authorization is opener-to-recipient and expiration-bound,
with no stream-specific renewal initially. Stream credentials have an independent
default TTL rather than inheriting connection expiration. Stream TTL defaults to
one hour, with strict credential coverage and a Stream.expire accessor. Both
connect! and open-stream! will accept ttl: and expire:, with expire: taking precedence.
Detailed stream opening and multiplexing frames remain open.

Keep agreed decisions separate from proposals. Update these notes as decisions
are made, retaining a short explanation when a previous decision is superseded.
Do not treat an unanswered proposal as an approved requirement.

## Existing Contracts

### Approved Explicit Cancellation Policy (2026-09-12)

Historical agreement, initially superseded for network correctness by the later
[cooperative cancellation decision](#agreed-cooperative-network-cancellation-2026-09-12)
and then explicitly withdrawn in the
[API withdrawal](#agreed-interrupt-api-withdrawal-2026-09-12).
The following records the former policy, not current API or retry guidance.

vyzo initially approved global intentional-cancellation classification through
`:std/error`: requests used distinct `Interrupt` instances, inheriting `Exception`
and `StackTrace`, not `Error`. The former policy limited raising `thread-interrupt!`
to known safe operation boundaries, not arbitrary running code. Plain workers used
`spawn-thread` for abortive root unwinding, which remains the worker convention.

That policy permitted one classified cancellation retry at a supported boundary,
not retries for ordinary `Error`, `Closed`, `Timeout`, backend failures or raised
`#f`. It superseded the earlier classification of arbitrary raised exceptions as
retryable. It also required RWLock holder restoration and waiter withdrawal on
failure. Those asynchronous acquisition requirements have since been withdrawn;
normal ownership cleanup remains distinct from operation retry.

The former design assigned separate recovery retries to native close, admission
locking, notification and stream abort, without replaying completed outer phases.
It retained socket-first abort and ended-borrow release even on cleanup failure.
Repeated interruption during recovery, arbitrary-instruction delivery, forced
termination and abandoned legitimate lock owners were unsupported even then.

### Approved Owner Increment (2026-09-11)

vyzo approved the Owner Integration Boundary Inspection proposal: expose raw and
upgraded StreamSocket attachment through the internal ConnectorMonitor; serialize
attachment/rejection against owner shutdown with I/O outside locks; retain setup
cleanup ownership until handoff and report failed setup only after cleanup.
Attachment callback exceptions remain terminal regardless of their exception type.
Resolve native SSL ownership at the SSL boundary, including retained raw closure,
without network FFI. Verify silent TLS interruption and successful-upgrade races.

The independently useful owner registry/reservation/election transitions belong
in planned `network.ss`. Logical outgoing work survives physical retry retirement;
only physical reservations consume pending capacity. Smaller-DID preference holds
viable fallbacks only for actual viable reserved work; larger-DID readiness never
claims an exclusive slot or blocks opposite preparation. Opening is exclusive,
and commitment prevents retargeting even after selected-transport cleanup.

This increment does not implement public Network/Connection/Stream objects or
application callbacks. Actual publication, one published live connection per peer,
callback pairing, CONFIRM-to-stream gating, joined-caller delivery, full blocking
shutdown completion, streams, and renewal remain subsequent integration work.
No fake facade or interface-only dispatch probes are part of this boundary.

### Public Interfaces

The authoritative API is [interface.ss](interface.ss), documented in
[interface.md](interface.md).

- `Network` extends `Closer`: `host`, `connect!`, `listen!`, `peers`,
  `connections`, and `listening`.
- `connect!` takes a peer DID, an address list, and an optional UCAN token.
  It may reuse an existing connection. An empty address list requests reuse only.
  Unix addresses are preferred; other addresses follow preference order.
  All TCP connections use TLS.
- `Connection` extends `NetworkTimeout` and `Closer`: `network`, `address`,
  `peer`, `peer-address`, `direction`, and `open-stream!`.
- A connection multiplexes logical streams. `open-stream!` takes a protocol
  string and an optional UCAN token.
- `Stream` extends `NetworkTimeout` and `Closer`: `connection`, `id`,
  `direction`, `protocol`, `reader`, and `writer`.
- `NetworkMonitor` provides connection/stream admission predicates and open/close
  notifications. The interface itself does not prescribe registration, callback
  scheduling, exception handling, or reentrancy.
- Directions use `DIRECTION-IN` and `DIRECTION-OUT` from `:std/os/device`.

These interfaces constrain the public API, but do not yet settle the wire
protocol, concurrency model, or detailed lifecycle semantics.

## Available Infrastructure

- [tls.ss](tls.ss) creates mutually authenticated, self-signed TLS 1.3 contexts
  from Ed25519 private keys. Hostnames encode the multicodec/key bytes in
  lowercase unpadded Base32, followed by `.internal`.
- [tls.md](tls.md) explains the trust boundary: a certificate can claim another
  host's name. The network must compare the DID derived from the certificate's
  public key with the expected peer, rather than trusting its common name alone.
- [../ucan/context.ss](../ucan/context.ss) implements `CapabilityContext` with
  permanent private-key caching, public-key LRU caching, and an owned UCAN database.
  Cached native keys are shared; callers must not explicitly release them.
- [../ucan/cap.ss](../ucan/cap.ss) supplies signature, delegation, expiration,
  and trust-matching helpers. The context's `verify` also checks root/input-anchor trust.
- [../ucan/ext.ss](../ucan/ext.ss) constructs grants and delegations and selects
  output anchors. Signing does not automatically save tokens or choose a parent.
- [../ucan/util.ss](../ucan/util.ss) provides DAG-constrained token serialization
  and deserialization for boundaries. Transport framing and size limits are
  still the network implementation's responsibility.
- Use the existing `:std/io` socket/reader/writer abstractions, address types,
  timeout support, synchronization primitives, and binary encoding helpers.

An earlier implementation exists under
`src/v0.19-WIP/v0.19-TODIE-std/ensemble.TODO/network/`, including `network.ss`,
`connection.ss`, `connector.ss`, `listener.ss`, `handshake.ss`, `stream.ss`, and
`network-test.ss`. These are reference material, not an approved design or
current API. Their contents have not yet been reviewed for this design discussion.
Ignore editor backup files ending in `~`.

## Agreed Process

- Implementation priority refinement (2026-09-12): vyzo approved reaching a
  public-only end-to-end network/stream exchange before implementing renewal.
  Next, connect framed socket IO to the scheduler, then prioritize the coherent
  public Network/Connection/Stream vertical slice, including authorized opening,
  bidirectional data, FIN, callback pairing and shutdown. Renewal remains part of
  the complete agreed API, not a prerequisite for this original-lease milestone.
  See implementation-notes.md for the concrete milestone and remaining stages.
- Design collaboratively before writing the implementation.
- Keep this file current as a restartable record of decisions and remaining work.
- Follow `src/std/AGENTS.md`, particularly interface-based specialization,
  cached `this` interface views, typed procedures, named constants, library reuse,
  and `do-with-lock` for suitable critical sections.
- Separate peer identity authentication from UCAN authorization and monitor policy.
- Do not add compatibility with the obsolete prototype without an explicit need.

## Agreed: Construction And Ownership

vyzo explicitly approved this ownership model:

- The constructor receives a host DID, a `CapabilityContext`, and a `NetworkMonitor`.
- The host's private key must be available through the capability context.
- The network borrows the capability context and monitor rather than closing them.
- The network owns its TLS context, listeners, connections, streams, and worker threads.
- Closing a network shuts down those owned resources, but leaves the supplied
  capability context available to its caller.

The constructor API is settled below: make-network with limits: and config:, and
one supplied monitor. No ownership transfer of the context or monitor occurs.

## Agreed: Inbound Stream Delivery

vyzo confirmed that monitor-based stream dispatch was the intended design
and selected model 1: inline, prompt-return callbacks.

- After authentication, authorization, and successful stream-open negotiation,
  deliver an inbound stream through `NetworkMonitor.on-open-stream`.
- Invoke `on-open-stream` inline, outside network/connection locks; do not
  create a separate network callback worker for each notification.
- The callback dispatches the stream by protocol and hands it to an application
  worker and returns promptly. Actual stream I/O runs in the application worker.
- In particular, the callback must not block waiting for work that requires the
  invoking connection's read/dispatch path to progress.

Detailed frame-reader/writer scheduling, notification ordering, and callback
exception policy remain to be designed.

## Agreed: Transport And Peer Authentication

vyzo approved the following transport direction:

- Use the same logical framing and multiplexing protocol over TCP/TLS and Unix
  domain sockets.
- TCP uses the existing mutual TLS helper, checking the actual certificate key
  against the expected peer DID.
- Unix sockets carry plaintext, but use a signed challenge-response handshake
  to establish both host DIDs rather than trusting an asserted DID solely from
  access to the socket. The exact transcript and replay/reflection protections
  would be designed with the handshake.

vyzo explicitly excludes a compromised physical host and malicious local
relays from the Unix threat model. Local socket paths/endpoints and OS protections
are trusted to provide channel integrity after establishment. Therefore Unix
connections remain plaintext, without TLS or an added per-frame MAC; the signed
handshake still establishes host DIDs as previously agreed.

This is a threat-model assumption, not a claim that handshake signatures provide
ongoing protection for plaintext. Remote peers and network input remain untrusted.

## Agreed: Mutual UCAN Handshake Authorization

- Apply UCAN authorization during both TCP/TLS and Unix handshakes.
- Use protocol capability `/network/connect/v0` and leaf token type `INVOKE`.
- Each side presents authorization evidence simultaneously with the other side.
- Generate evidence using the `provide!` extension so appropriate output trust
  anchors can be used.
- If the initiating caller supplies `auth` to `connect!`, use `delegate!` with
  that token instead. It must be a usable `DELEGATE` parent, not an existing
  invocation token treated as a delegatable credential.
- The recipient verifies through its `CapabilityContext`, and also checks the
  leaf issuer and audience against the connection endpoints.

- Authorization is symmetric: A sends an A-issued token addressed to B, and B
  sends a B-issued token addressed to A. "Issuer" means the sender in each
  direction, not the transport initiator in both directions.
- `provide!` returns a list, including a direct root grant and anchor-backed
  alternatives. Exchange that list as a token bundle. If `connect!` supplies a
  parent token, send a singleton bundle containing the delegated invocation.
- Accept when at least one
  candidate has the required type, exact protocol, endpoint identities, and a
  successful context verification. An untrusted direct grant must not prevent
  trying a valid anchor-backed alternative. Reject when no candidate qualifies.
- Bind the leaf issuer to the peer identity proven by TLS or the signed Unix
  handshake, not merely a DID asserted in the hello. Require the audience to be
  the local host DID. Identity canonicalization remains to be specified.
- A supplied parent affects the initiator's evidence only; the responder still
  needs its own usable authorization path back to the initiator.

Details still to settle:

- For Unix, finalize the transcript's concrete encoding. The agreed handshake
  binds both hellos, sender role, and the sender's credential bundle.
  A token's random nonce is not itself a fresh challenge-response proof.
- Bound bundle size, token count, and verification work. Their numeric limits
  remain open; lifetime and handshake defaults are agreed below.
- Simultaneous presentation must permit reading while writing, rather than two
  potentially blocking send-all operations before either side starts reading.
- Do not publish the connection or notify successful opening before the required
  authentication, authorization, and monitor admission steps complete. Exact
  acknowledgment and notification ordering is still open.

The existing context does not yet implement individual token revocation. Do not
describe handshake authorization as providing revocation beyond existing trust
policy changes and token expiration.

## Agreed: Expiration-Bound Connections

vyzo chose expiration-bound connections, explicitly citing future token
revocation support. The earlier admission-only proposal is superseded.

- Connection authorization must remain valid for the connection's lifetime;
  successful admission is not an indefinite grant of access.
- Retain authorization credentials rather than discarding them after the handshake,
  so expiration and future revocation can be enforced on live connections.
- Future revocation handling must account for delegating ancestors and trust policy,
  not merely the leaf invocation token. The revocation mechanism is not implemented
  or specified yet; expiration enforcement alone must not be described as revocation.

Lease mechanics:

- Each endpoint enforces the expiration of its accepted peer authorization. A
  mutually usable connection is bounded by the earlier deadline of the two
  directions. Acknowledgments identify the accepted candidate by bundle index.
- Expiration closes the connection and terminates its streams; there is no grace
  period that permits further unauthorized network traffic. Detailed buffered-I/O
  and close notification semantics remain part of the lifecycle design.
- Preserve the presented bundle and sufficient selected-credential information
  for future reauthorization/revocation checks. Selection is first-valid in
  longest-expiration-first order, as refined below; future failover to another
  authorization path after establishment is not specified.

vyzo initially selected close-on-expiry with renewal deferred because of its
complexity. The later per-connect TTL proposal below revisits this for explicit
renewal requests; do not overlook that change when resuming the design. Expiry
still closes a connection unless a replacement lease has been authorized. vyzo places
application-specific reconnect logic in the network monitor as needed, not in
an automatic network reconnect loop. Such work must be dispatched rather than
blocking the agreed inline callbacks. Address fallback during a connect! call
is a separate topic still to be designed.

## Agreed: Credential Selection And Lease Acknowledgment

vyzo approved this selection and acknowledgment scheme:

- Try credentials in descending expiration order and stop at the first valid
  matching candidate. vyzo subsequently requested longest-expiration-first
  ordering, superseding the original received-order selection rule.
- A matching candidate must cover the required expiration, not merely be valid
  at the moment of verification. Skip shorter-lived alternatives and fail if no
  acceptable credential can meet the requested lease.
- Each endpoint acknowledges the index of the peer credential it accepted.
- Both endpoints compute the connection deadline as the earlier expiration of
  the two selected tokens. Derive expiration from those tokens, not an arbitrary
  deadline claimed by the peer; validate acknowledgment indexes against the bundle.
- Keep authorization expiry independent of configurable I/O timeouts. Changing
  a connection or stream timeout must not extend its authorization lifetime.

Exact acknowledgment framing and the final transition to an open connection
remain to be specified. Lifetime and handshake defaults are agreed below.

## Agreed: Lifetime And Deadline Defaults

vyzo approved these defaults, with reconnect policy supplied by the monitor:

- Request connection invocation tokens with a configurable lifetime, defaulting
  to one hour (3600 seconds) from the start of connect!.
- Use a separate configurable handshake deadline, defaulting to 10 seconds.
- These settings are distinct from connection/stream I/O timeouts and from the
  effective authorization deadline derived from the selected credentials.

Existing helper behavior to account for: delegate! clamps a requested expiration
to its supplied parent's expiration. provide! only selects output anchors that
cover the full requested lifetime; it does not shorten the request to accommodate
an earlier-expiring anchor. Thus the default lifetime affects anchor eligibility.

## Agreed: Per-Connect TTL And Explicit Renewal

vyzo approved an optional connection TTL and later added an absolute expire:
argument. When neither is supplied, reuse the current lease; when either supplies
a required expiration, renew only if that deadline exceeds the current lease.
This supersedes astra's proposal that a per-call TTL
would never affect reused connections, and the earlier blanket deferral of in-band
renewal. The agreed behavior is:

- Use optional `ttl:` and `expire:` keywords, so callers need not supply a
  positional auth placeholder. The absolute expire: value takes precedence.
- Default to `#f`: use the configured token lifetime for new connections, but
  do not renew an existing connection merely because connect! was called.
- An explicit TTL is a positive integer number of seconds, not an I/O timeout.
- Apply it when generating local connection credentials for a new connection.
  Parent-token expiration and peer policy constrain whether the request can be
  met; they must not silently shorten a successful request's required lease.
- For an existing connection, compare the resolved required expiration with the
  current negotiated absolute expiration, rather than comparing original durations.
  Reuse without changes if the requested deadline is not later.
- A later requested deadline requires fresh mutual INVOKE authorization and
  acknowledgment before updating the lease. Never extend a local timer beyond
  the credentials that both sides have accepted.
- The old valid lease governs while renewal is pending. If it expires first,
  close the connection; there is no expired-authorization grace period.
- Renewing must not shorten the existing lease. Parent and peer limits can prevent
  the requested extension. An ordinary failed extension leaves a still-valid old
  lease intact and reports failure to the requesting connect! caller.
- Reuse of an expired connection is not renewal: a fresh connection is needed.

Limited in-band reauthorization of the same connection is now in initial scope.
Automatic/background renewal remains deferred; monitors may request renewal or
reconnection explicitly according to application policy.
Message correlation, concurrent renewal requests, acceptance/commit ordering,
and monitor policy checks during renewal still need design.

The interface signatures have not been edited; record the agreed ttl:/expire: additions when
implementation begins after the remaining design discussion.

## Agreed: Renewal Failure Handling

vyzo approved the following failure behavior:

- If renewal is refused or cannot meet the requested TTL, but the existing authorization
  remains valid, leave the connection and its streams on the old lease and report
  renewal failure to the connect! caller. Do not silently report an extension.
- If existing authorization has expired or is known to be invalid/revoked, close
  the connection instead. Malformed protocol exchanges or transport failure may
  also require closing it; these are distinct from an ordinary refusal to renew.
- A failed extension must not tear down an otherwise valid shared connection merely
  because one caller requested a longer TTL.

## Agreed: Required TTL And Lease Visibility

vyzo rejected partial extensions: connect! must fail and report that the requested
TTL cannot be met if the credentials do not authorize it in full. Merely extending
the old lease by a smaller amount is not successful renewal.

- Both selected credentials, and hence their minimum expiration, must cover the
  request's required deadline before establishment or renewal reports success.
- A failed renewal preserves the still-valid old connection and streams as agreed
  above; do not install a partial extension.
- Add a read-only `Connection.expire` method returning the negotiated absolute
  expiration in Unix seconds. vyzo explicitly approved this accessor.

The getter's behavior after closure will be settled with other metadata and
lifecycle semantics. The interface file has not yet been changed.

## Agreed: Fixed Required Expiration

vyzo approved the fixed-deadline interpretation:

- Use an explicit expire: unchanged, or compute the required expiration once as
  the operation's start time plus TTL. Do not move the target during negotiation.
- Carry that absolute expiration in the establishment/renewal request so the
  peer can attempt credentials covering it or refuse. An independent default
  must not silently lower the negotiated result below the caller's requirement.
- This defines TTL from the start of connect!, not as a fresh full duration
  starting when connect! returns; time spent negotiating consumes part of it.

## Agreed: Responder Lifetime Policy

vyzo confirmed that the one-hour setting is just a default:

- Treat the one-hour lifetime setting as a default for locally initiated requests,
  not an implicit ceiling on peer requests.
- The responder attempts to produce authorization covering the requested absolute
  expiration, subject to its available credentials and admission policy. It must
  refuse rather than silently substitute a shorter lifetime.
- No separate maximum-TTL setting has been selected. If a local duration ceiling
  is desired, make it an explicit policy instead of conflating it with the default.

This distinction matters when a caller explicitly asks for a lease longer than
one hour: independently minting only a default one-hour response would always
prevent that request from succeeding.

## Agreed: Initial Handshake Exchanges

vyzo initially approved HELLO/AUTH/ACCEPT, then refined selection/publication with
asymmetric ACCEPT and CONFIRM as detailed below:

1. HELLO exchange: protocol version, host DID, and a fresh challenge from each
   endpoint. The transport initiator also supplies the fixed required expiration.
   On TCP, the advertised DID must match the certificate key's DID.
2. AUTH exchange: both endpoints send their token bundles. On Unix, each also
   signs a domain-separated transcript containing the ordered initiator/responder
   hellos, its sender role, and its own bundle. Verify the identity proof before
   relying on the UCAN evidence. TCP relies on TLS's existing key proof and record
   integrity rather than adding this extra application signature.
3. ACCEPT: the larger DID acknowledges its selected token as candidate readiness.
   The smaller DID selects a candidate, completes its open callback, and commits
   selection with its ACCEPT. Validate both selected credentials and the lease.
4. CONFIRM: the larger DID completes its open callback and confirms establishment.
   It publishes after successful CONFIRM output; the smaller DID publishes on
   receipt, subject to liveness/deadline checks. Mutual ACCEPT alone does not publish.

Each exchange must allow both endpoints to read while sending. A rejection,
unexpected message, failed proof, or handshake timeout prevents establishment.
Exact framing, challenge sizes, error messages, and callback ordering remain open.

The Unix proof binds the sender's own bundle, with both hellos shared by
both proofs. Requiring each proof to include both bundles would need an additional
exchange; that stronger transcript layout was considered earlier but not agreed.
This section covers initial establishment only; renewal correlation and commit
ordering still need a separate design.

## Agreed: Connection Reuse

vyzo approved the one-connection-per-peer model and raised the handshake-window race:

- Keep one shared, published live connection per peer DID in a Network instance.
  Do not retain separate application-visible connections for TCP and Unix paths
  to the same peer merely because different callers supplied different addresses.
- Coalesce concurrent local connect! calls for the same peer instead of launching
  independent dials. Each caller still has its own fixed required expiration;
  coalescing must not silently discard a later caller's TTL requirement.
- Reuse follows the agreed TTL rules: no explicit TTL preserves the current lease;
  a covered required deadline reuses it; a later deadline requests renewal.
- Closing or expired connections are not eligible for reuse.

How to resolve simultaneous dialing by both hosts, and how waiting callers with
different TTLs share establishment/renewal work, remain to be designed. Multiple
provisional transport connections may exist while resolving a race; the requirement
is one published connection, not an assumption that physical races cannot occur.

## Agreed: Pending Attempts And Duplicate Resolution

vyzo suggested three related approaches:

- Lexicographic DID comparison to choose between competing physical connections.
- Keeping the first connection to complete its handshake.
- Tracking identity-authenticated TLS connections that are still in the application
  handshake, allowing connect! callers to join rather than start another connection.
  This still leaves Unix identity establishment and the pre-TLS interval to resolve.

vyzo approved the hybrid of pending-attempt joining and deterministic resolution:

1. Maintain a per-peer entry for established connections and pending work. Reserve
   outgoing attempts under the expected peer DID before starting TCP/TLS, not only
   after TLS finishes. Register incoming attempts under that DID once peer identity
   is proven: after mutual TLS on TCP, or the signed AUTH proof on Unix.
2. New local connect! calls join appropriate pending work, waiting outside the
   network mutex. Do not confuse authenticated identity with completed UCAN
   authorization/monitor admission.
3. For crossed physical attempts in the unresolved window, prefer the connection
   initiated by the lexicographically smaller canonical host DID. Both endpoints
   compute the same preference, independent of local completion order.
4. Apply election before the smaller DID's committing ACCEPT/publication, including when a preferred outgoing
   attempt is still pending. Do not let each incoming handshake blindly wait for
   its own outgoing counterpart: both hosts doing that can deadlock.
5. The tie-break is only for competing establishment attempts, not a requirement
   that the smaller DID always initiate connections. Do not replace an already
   healthy established connection solely to obtain the preferred direction.
6. Do not discard a viable fallback merely because a preferred candidate exists:
   it must still complete authorization/admission. If it fails, remaining candidates
   may proceed subject to their deadlines. Exact rejection/cancellation signaling
   and fallback state transitions are still to be specified.
7. Joining must preserve an explicit TTL caller's fixed required expiration. If
   an already-fixed handshake cannot cover it, that caller can wait for subsequent
   authorized renewal, or receive failure; it must not get an undersized lease.
   Joining does not reset the original attempt's timeout. Default/no-TTL waiters
   should not accidentally cause automatic renewal; exact waiter policy remains open.

Why independent "first completed wins" is insufficient: A can complete the
A-initiated connection first while B completes the B-initiated one first. If each
keeps its local winner and closes the other socket, both physical connections can
be lost. First-completion selection can work with an agreed coordinator, but that
requires explicit coordination rather than independent local decisions.

Further cases to settle: simultaneous renewal, different supplied auth/address lists
among waiters, detecting stale established connections, and same-DID/self connections.
The DID comparison must use a common canonical representation, not caller aliases.

## Agreed: Canonical Identity And Self-Connections

vyzo approved these identity conventions:

- Use the canonical DID spelling produced by the existing key-to-DID helpers for
  Network.host, peer registry keys, HELLO identities, and lexicographic comparison.
  This is the canonical Base64url DID, not the separate Base32 TLS hostname.
- Normalize host/peer identities supplied to the public API, and require the
  advertised HELLO identity to be canonical and match its authenticated key.
- Do not rewrite issuer or audience fields inside signed UCAN tokens. Token
  issuance must use compatible identity spelling to satisfy the existing exact
  issuer/audience comparisons.
- Reject connections to the network's own host DID in the initial implementation,
  rather than introducing an implicit loopback transport or leaving equal-DID
  duplicate election undefined.

The same-DID rule also rejects a second Network instance sharing that host
identity. Supporting such connections or a loopback abstraction would need an
explicit design rather than applying the distinct-peer tie-break unchanged.

## Agreed: Stream Authorization

vyzo confirmed opener-to-recipient stream authorization:

- Authorize a new stream in the opener-to-recipient direction. The opener
  presents an INVOKE bundle with its host DID as issuer, the peer host DID as
  audience, and the requested stream protocol as the capability.
- Generate this bundle using provide!, or delegate! from the optional auth parent
  passed to open-stream!, following the connection credential-generation pattern.
- The receiver checks the bundle against its CapabilityContext and the established
  connection identities, and applies NetworkMonitor.allow-stream? before accepting.
- Do not require a reciprocal stream invocation token merely to send responses
  on an accepted bidirectional stream; mutual peer/connection authorization has
  already been established.
- Stream direction identifies the opener, not a restriction to one-way data flow.
- Outgoing monitor admission and successful stream-open notification ordering
  still need to be specified with the OPEN/accept exchange.

## Agreed: Stream Lifetime

vyzo approved this lifetime model:

- Enforce the accepted stream token's expiration as well as the connection lease.
  Close a stream when its own authorization expires, even if the connection is
  still authorized. Closing the connection terminates all its streams.
- Connection renewal does not change a stream token's expiration. It can remove
  an earlier transport deadline only while the stream's own token still authorizes
  continued use; it does not mint or imply new protocol-specific authority.
- Do not add stream-specific in-band renewal initially. Reopen a stream with new
  credentials when its authorization expires.

Stream tokens have an independent lifetime as agreed below, with ttl:/expire:
overrides and a Stream.expire accessor.
Do not automatically clamp or extend stream credentials as a side effect of
connection renewal.

## Agreed: Independent Stream Token Expiration

vyzo selected option 2:

- Mint stream tokens with an independent default TTL from open-stream! start.
  Connection expiry can still end the stream earlier, but renewing the connection
  can preserve it while its own credential remains valid.
- Do not derive the default stream token expiration from the connection's current
  expiration. That alternative was rejected because existing credentials would
  remain tied to the old connection deadline after renewal.

vyzo subsequently approved one hour as the configurable stream-token default,
separate from the connection-token default.

## Agreed: Stream Lifetime API And Visibility

vyzo approved the independent stream-lifetime API and then added expire: precedence:

- Add optional ttl: and expire: keywords to open-stream!. Without either, use
  the configured one-hour stream-token TTL. An explicit TTL is a positive integer
  in seconds; an explicit expiration is an absolute Unix timestamp.
- Use expire: if supplied, otherwise open-stream! start plus the selected TTL. The
  accepted stream credential must cover that deadline, or opening fails; do not
  silently accept a shorter credential.
- This requests protocol-specific authorization lifetime, not renewal of transport
  authority. Allow the stream token to outlive the current connection lease, but
  close the stream if the connection expires unless it is explicitly renewed.
- Do not renew the connection implicitly from open-stream!. Callers/monitors can
  use connect! to arrange a sufficiently long connection lease when needed.
- Add Stream.expire returning the accepted stream credential's expiration. The
  effective authorization limit is the minimum of this value and Connection.expire.

This explicitly distinguishes a fully covered stream credential from a guarantee
that the existing transport lease covers the same duration. A higher-level host
API will be able to arrange both leases using one absolute expiration, as below.

## Agreed: Absolute Expiration For API Composition

vyzo requested both ttl: and expire: on connect! and open-stream!, with expire:
taking precedence when present. This refines, rather than removes, the fixed
required-expiration model.

- Resolve the requested deadline once: explicit expire:, otherwise start time plus
  explicit ttl:, otherwise the appropriate configured default for a new operation.
- When connect! finds an existing connection and neither override is supplied,
  reuse without renewal. An explicit deadline that is already covered also reuses
  it; a later one triggers the agreed mutual renewal procedure.
- Do not add time to an explicit expiration or recompute it after connecting.
- A future host-level open-stream! can compute E once, call connect! with expire: E,
  and then open-stream! with expire: E. This arranges connection and stream lease
  coverage through the same E without successive relative TTLs creating drift.
- The low-level stream method still does not implicitly renew its connection.
  Coordinating both leases belongs to that higher-level API.

astra recommends interpreting #f as an omitted override and rejecting an already
expired explicit deadline rather than falling back to ttl:. Argument types and
precise deadline-error reporting will be finalized with the interface changes.
No source interfaces or implementation code have been changed during design.

## Agreed: Stream Opening Exchange

vyzo approved the following opening exchange:

- Allocate monotonically increasing stream IDs with disjoint parity by physical
  connection role: connection initiator uses odd IDs, responder uses even IDs.
  Reserve zero for connection control; never reuse an ID within a connection.
  ID width and exhaustion handling remain to be specified.
- Send OPEN with the stream ID, protocol, fixed required expiration, and INVOKE
  bundle. Do not send application data speculatively before acceptance.
- The receiver validates authorization and applies stream admission, then sends
  OPEN-ACCEPT identifying the selected credential by bundle index, or OPEN-REJECT.
  An ordinary stream rejection fails that opening, not the shared connection.
- The opener checks the acceptance and credential lifetime before open-stream!
  returns a usable stream. Rejection or connection loss fails the pending call.
- Order OPEN-ACCEPT before any response DATA for that stream. Inbound monitor
  delivery remains inline and outside locks; the dispatched application worker
  must not be able to put DATA ahead of the acceptance.

Exact frame encoding, resource bounds, pending-open timeout/cancellation races,
outgoing monitor admission, and full callback/error ordering remain open. This
proposal does not settle buffering or flow control.

## Agreed: Per-Stream Backpressure

vyzo requires a configurable maximum window of unread data per stream. The
receiver must not accept more stream data beyond that window until the
application consumes buffered data. This must provide backpressure to the sender.

## Agreed: Receiver-Advertised Byte Credits

vyzo approved the following credit mechanism:

- Each direction of a stream has its own receive window, chosen by its receiver.
  OPEN advertises the opener's receive window; OPEN-ACCEPT advertises the
  accepting endpoint's receive window. The no-speculative-DATA rule still applies.
- The sender consumes byte credit when committing DATA for transmission and must
  not exceed its available credit. Bound outbound buffering as well, so a stalled
  stream eventually blocks application writes rather than accumulating data.
- Return credit through WINDOW-UPDATE only as the application consumes bytes,
  not merely when the connection reader moves them into another buffer. Account
  for all stream receive buffers; buffered bytes plus outstanding granted credit
  must not exceed the configured receive window. Credit covers in-flight data.
- Batch credit updates without withholding them indefinitely; the exact update
  threshold and scheduling policy remain to be chosen.
- Waiting for stream credit must not hold a shared connection lock or block its
  reader/writer worker from servicing other streams and control frames.
- DATA exceeding granted credit is a protocol violation, not a reason to block
  the shared connection reader until the application drains that stream.

Window defaults, frame-size bounds, aggregate memory/open-stream limits, writer
scheduling, violation handling, and close/cancellation wakeups remain to be
specified. Per-stream windows alone do not bound connection-wide memory use.

## Agreed: Initial Buffering Limits

vyzo approved these limits and the aggregate-bounding approach, subsequently
increasing both per-stream DATA buffering defaults from 64 KiB to 256 KiB for
performance headroom. The frame-size limits are unchanged.

- Default to a configurable 256 KiB receive window per stream at each endpoint.
- Cap pending plus established streams per connection, counting both opening
  directions together; use a configurable default of 128. Reserve a slot
  before admitting an opening, and release it on failed opening or final stream
  retirement. Graceful retirement must account for remaining unread data.
- With these defaults, stream receive payload buffering is bounded by 32 MiB per
  connection per endpoint. This is not a bound on total memory: token bundles,
  metadata, transport buffers, and control work need their own limits.
- Bound network-owned outbound DATA buffering separately, with a configurable
  256 KiB per stream, independent of the peer's advertised receive window. A large
  remote window must not authorize unbounded local send-buffer allocation.
- At capacity, fail a local opening or reject a remote opening rather than
  silently evicting an existing stream or keeping an unbounded waiter queue.
- Initially omit a separate connection-wide credit protocol; the stream count
  and per-stream buffering bounds provide aggregate DATA-buffer bounds.

These are limits, not instructions to preallocate full windows for idle streams.
Exact frame sizes, control/token limits, late-frame handling after stream closure,
and network-wide connection limits remain open.

## Agreed: Limits Module, Implementation Deferred

vyzo requested a dedicated limits module containing classes through which network
users can supply resource limits appropriate to their needs. The agreed defaults
above must be configurable through these objects, not hardwired into transport
or stream implementations.

Later module-plan refinement: these classes share `config.ss` with NetworkConfig,
rather than living in a separate limits module. See the agreement below.

Class names, grouping/composition, validation, and how the network constructor
accepts these objects remain to be designed. Do not treat exploratory API ideas
as approved decisions.

vyzo explicitly clarified that this is a design requirement only: do not implement
the limits module until the overall design discussion is finalized. No limits
source, tests, build entries, or API implementation have been added.

## Agreed: Stream Shutdown

vyzo approved the distinction between graceful directional completion and abort:

- Closing Stream.writer ends the sending direction gracefully. Previously
  accepted writes drain before FIN; subsequent writes fail.
- Receiving FIN produces EOF after already-buffered data is consumed. The
  opposite direction remains usable.
- Closing the whole Stream aborts both directions: discard unread and unsent
  buffered data, send RESET when possible, and wake blocked readers/writers with
  a closed-state error.
- Stream authorization expiration also aborts; do not drain queued application
  data after expiry. Connection loss or expiration aborts all its streams.
- Two completed directions retire the stream normally. Retain its slot until
  final unread data has been consumed or explicitly discarded, so graceful
  closing cannot bypass the buffering bound.

Closing only Stream.reader, graceful writer-close blocking/timeout behavior,
late frames, and exact lifecycle notification ordering still need specification.

## Agreed: Connection I/O Workers And Scheduling

vyzo approved this worker and scheduling model:

- Use one transport reader worker and one transport writer worker per established
  connection. Application workers access bounded per-stream buffers, not the
  transport directly; no additional network-owned I/O worker per stream.
- The reader dispatches DATA into credit-reserved receive capacity without
  waiting for application consumption. Preserve the agreed inline, prompt,
  outside-lock inbound stream notification. Admission scheduling remains open.
- The writer schedules ready streams round-robin, with at most one bounded DATA
  frame per stream per round. Skip streams with no send credit rather than waiting
  on them and preventing other traffic from progressing.
- Prefer ready control traffic in bounded bursts, so credit updates, resets, and
  renewal messages progress without allowing continuous control traffic to starve
  DATA. Preserve protocol ordering: ACCEPT precedes response DATA and FIN follows
  all earlier accepted writes; priority does not bypass those dependencies.
- Application writes wait when their stream's outbound buffer is full. Waiting
  for data, capacity, or credit must release shared locks. Shutdown wakes waiters;
  expiration handling must not depend on the transport reader making progress.

Frame quantum, control-burst limit, bounded control-work representation, credit
update batching, and precise timeout/flush semantics remain open.

## Agreed: Fixed Frame Envelope

vyzo approved the fixed header for efficiency and implementation simplicity:

- Use the same fixed envelope over TCP/TLS and Unix transports: one-byte frame
  type, unsigned 64-bit stream ID, unsigned 32-bit payload length, followed by
  exactly that many payload bytes. Multi-byte integers use network byte order.
  The header is 13 bytes; payload length excludes the header.
- Reserve stream ID zero for connection-level messages, including the initial
  handshake and renewal. Stream messages carry their nonzero stream ID.
- Keep DATA payloads as raw bytes. Encode structured control payloads separately;
  their codec and exact fields are not settled by this envelope proposal.
- Validate frame type, permitted stream-ID use, and the applicable payload-length
  bound before allocating/reading the payload. The 32-bit length field is an
  encoding range, not permission to allocate that much memory.
- Reject unknown frame types and malformed framing by closing the connection in
  this protocol version; ordinary well-formed stream admission rejection remains
  stream-local. Late frames for retired streams require separate lifecycle rules.
- Never wrap or reuse stream IDs. Exhaustion prevents further local openings on
  that connection; existing streams need not be aborted solely for exhaustion.

Frame type numbers, per-type payload limits, how peers advertise those limits,
control encoding, and version compatibility remain to be specified.

## Agreed: Control Payload Encoding

vyzo approved this control encoding and Unix transcript representation:

- Use explicit binary layouts for control messages: fixed-width numeric fields
  in network byte order, length-prefixed UTF-8 strings, and counted sequences.
  The frame type determines the layout; avoid a general object envelope for
  network-control metadata.
- Carry UCAN tokens as length-prefixed opaque blobs produced by the existing
  marshal-token helper and decoded with unmarshal-token. A bundle is a count
  followed by these blobs in candidate order. Do not introduce a second token
  serialization format or alter signed token fields.
- Check string lengths, candidate counts, and blob lengths against configured
  bounds and remaining frame bytes before processing them. Require exact payload
  consumption; reject truncated fields and trailing bytes. Token decoding also
  needs resource-bound review; a bounded wire size alone does not bound decoded
  allocations or nesting.
- For Unix AUTH, sign an unambiguously length-delimited, domain-separated
  transcript containing the ordered raw HELLO encodings, sender role, and sender's
  encoded token bundle, excluding the signature itself. Verify against the exact
  received encodings, not a reconstruction from decoded objects.

Exact field widths, message layouts, bounds, transcript domain tag, and decoder
resource controls remain to be specified. This proposal preserves the already
agreed Unix signature coverage and chooses its byte representation.

## Agreed: Control Frame Allowance

vyzo selected 64 KiB for other control messages and 4 KiB for HELLO. Both are
configurable receive payload limits, excluding the header. After clarifying that
tokens are in AUTH, vyzo restored the 4 KiB HELLO allowance; the briefly proposed
uniform 64 KiB control limit is superseded.

Clarification: in the agreed HELLO/AUTH/ACCEPT/CONFIRM sequence, token bundles are in AUTH,
not HELLO. The message sequence is unchanged. HELLO carries version, identity,
challenge, and the initiator's required
expiration, with receive-limit advertisements proposed below.

## Agreed: Frame Limits And Advertisement

vyzo approved the 16 KiB DATA default and these advertisement/enforcement rules:

- Use the agreed configurable limits of 4 KiB for HELLO and 64 KiB for other
  control messages, and a 16 KiB DATA receive limit. These exclude the header.
  Fixed-layout messages also enforce their exact lengths; the general control
  ceiling does not permit arbitrary padding or extra fields.
- Enforce the local HELLO bound before decoding any advertised limits. Each
  HELLO advertises that endpoint's DATA and other-control receive limits.
  These advertisements are covered by the agreed TLS/Unix identity protection.
- Retain the advertised limits for the connection's lifetime; do not introduce
  in-band limit renegotiation initially. A peer advertisement never raises the
  local receive or outbound buffering limits.
- Split DATA according to the local frame quantum, peer DATA limit, and available
  stream credit. Use the configured local DATA frame limit as the quantum.
- Do not fragment control messages initially. If an outgoing control message
  exceeds the peer's limit, fail the affected operation before sending it. An
  oversized OPEN or renewal request need not destroy an existing valid connection;
  an initial AUTH that cannot fit prevents establishment.
- Reject incoming oversized frames from their headers, without allocating their
  claimed payloads, using the agreed connection-fatal framing-error behavior.

Token counts, individual token sizes, decoded-object limits, control-work queue
bounds, and control scheduling burst defaults remain to be specified separately.

## Agreed: Stream Opening Timeout And Cancellation

vyzo approved this timeout/cancellation model, accepting that eliminating the
remote-acceptance race would require disproportionate complexity:

- Give stream opening a configurable timeout, with a separate 10-second
  default measured from open-stream! start. Credential construction, queueing,
  and the OPEN/accept exchange consume that budget. This is separate from ttl:
  and expire:, which specify authorization lifetime, and from stream DATA I/O
  timeouts. Authorization expiry can end the operation sooner.
- On timeout or cancellation before OPEN is committed for transmission, cancel
  the pending opening locally and release its reservation without sending OPEN.
- If OPEN has already been committed, terminate the local pending opening and
  send RESET when possible. Preserve OPEN-before-RESET ordering on the wire.
- Resolve acceptance versus cancellation through one pending-state transition:
  a late OPEN-ACCEPT must not resurrect a cancelled opening or leak a live stream.
  The cancelled call reports failure, and any peer-side accepted stream is reset.
- At the receiver, RESET cancels a still-pending opening or aborts an already
  accepted stream. Once cancellation is observed, pending admission work must
  not subsequently publish the stream.
- A failed or cancelled opening does not prove the peer never accepted it. The
  peer application may already have been notified before RESET arrives; that
  stream then follows the ordinary abort lifecycle.
- An ordinary opening timeout/cancellation does not close the shared connection.

The exact API cancellation mechanism, timeout error details, bounded bookkeeping
for late frames, and callback race ordering remain to be specified.

## Agreed For Initial Version: Closing The Stream Reader

vyzo accepted this initial behavior, explicitly leaving it open to reconsideration
if it causes problems in application programming:

- Closing Stream.reader explicitly aborts the whole stream, equivalent to closing
  Stream: discard unread/unsent buffers, send RESET when possible, and wake blocked
  operations. It does not silently stop returning credit while leaving the peer's
  writer stranded.
- Keep graceful half-close only on Stream.writer through FIN. Do not introduce
  an independent receive-side cancellation/STOP-SENDING frame initially.
- Reading EOF is not an explicit reader close and does not abort the opposite
  direction. An application may finish receiving and continue sending normally.

This favors the existing FIN/RESET model over another directional shutdown state.
Writer-close blocking/timeout semantics and exact callback ordering remain open.

## Agreed: Graceful Writer Close Completion

vyzo approved this completion and timeout behavior:

- Closing Stream.writer first prohibits further application writes, then waits
  for previously accepted DATA and the following FIN to be written to the
  transport. Successful close does not wait for peer consumption or acknowledgment.
- Apply the stream's write timeout to the entire close/drain operation, rather
  than restarting it on each chunk or credit update. With no write timeout, close
  may wait indefinitely for peer credit unless cancellation, reset, or expiry
  terminates it.
- If that stream-level close operation times out or is cancelled before finishing,
  abort the stream using RESET instead of leaving an ambiguous background drain.
  Previously transmitted data cannot be withdrawn; do not imply atomic delivery.
- A stream-level drain timeout does not by itself close the shared connection.
  A transport write failure that leaves framing incomplete remains connection-fatal.
- Whole-stream close and explicit reader close retain abort semantics and do not
  wait for queued application DATA to drain.

Repeated/concurrent close calls and precise transport-flush integration still
need specification alongside the concrete I/O interfaces.

## Agreed: Monitor Admission Purpose And Renewal Exclusion

vyzo clarified that the monitor's allow methods are resource-admission gates:
they let the host limit live connections and streams, bound memory use, and resist
trivial resource-exhaustion attacks. They are not recurring authorization checks.

- Do not call allow-connection? for renewal of an existing connection. Renewal
  consumes no new connection slot and must not be rejected merely because the
  host is already at capacity.
- Renewal still requires fresh mutual UCAN authorization and acknowledgment
  covering the requested expiration; skipping monitor admission does not bypass
  those checks.
- Unchanged connection reuse likewise consumes no new slot and does not rerun
  monitor admission. Fresh establishment after closure is a new admission.

The previous proposal to rerun allow-connection? during renewal is superseded.
Pending reservation lifetime and notification ordering are settled below. The
monitor's allow checks are advisory; its open callbacks perform final admission.

## Agreed: Monitor Admission Scheduling

vyzo approved these advisory admission call points:

- Require allow-connection? for a new outgoing connection before dialing and for
  an incoming connection after identity and UCAN validation, before acceptance.
  Outgoing policy checks use the expected canonical peer DID; they do not prove
  the identity of the eventual transport peer.
- Require allow-stream? locally before committing an outgoing OPEN, and remotely
  after stream credential validation, before OPEN-ACCEPT. Use DIRECTION-OUT for
  the opener's local admission and DIRECTION-IN for the recipient's admission.
- Neither unchanged connection reuse nor renewal reruns monitor admission, as
  clarified above. Only creating a new connection or stream requires admission.
- Admission callbacks run inline and outside network/connection locks, and must
  return promptly without blocking I/O or waiting on the invoking network path.
  Policies requiring external work must arrange it outside the callback and
  consult ready policy state here; no admission worker pool is proposed.
- False denies the affected new connection or stream opening.

Notification ordering, callback exception handling, and reentrant lifecycle calls
are settled in the later lifecycle sections. This adds no callbacks for unchanged
reuse or successful renewal.

## Agreed: Separate Pending Limits

vyzo requested configurable maximum pending-connection and pending-stream counts,
to be supplied through the planned configuration module's limits classes. Pending work must be bounded
independently of established/live objects. The scopes and reservation lifecycle
below are approved; numerical defaults remain to be selected.

## Agreed: Pending Reservation Scope And Lifecycle

vyzo approved this scope and reservation model as simple and efficient:

- Count pending physical connection attempts network-wide, across inbound and
  outbound directions. Reserve outbound capacity before dialing and inbound
  capacity before starting TLS or the application handshake. Reject/close an
  accepted inbound socket promptly when no reservation is available.
- Each competing physical attempt consumes a reservation, even if another attempt
  targets the same peer. Callers joining an existing attempt do not create another
  physical-attempt reservation; waiter-count bounds are a separate concern.
- Count pending stream openings per connection, across both opening directions.
  Reserve outgoing capacity before credential construction/OPEN, and incoming
  capacity before token decoding/verification and monitor admission.
- Retain the agreed 128 default cap on pending plus established streams per
  connection. The new pending-stream cap is an additional sublimit, not extra
  capacity on top of that total.
- On success, retain pending accounting through final open notification and local
  protocol completion, as subsequently refined below. Release reservations on
  rejection, failure, timeout, or cancellation only after associated work and
  cleanup have actually stopped consuming the bounded resource.
- Apply reservations under internal synchronization, but invoke monitor callbacks
  outside locks. Monitor policy may impose additional host-level limits; separate
  pending caps alone do not solve races in a monitor's own live-count accounting.

Network-wide stream caps, live connection caps, concurrent waiter bounds, and
monitor admission/notification coordination remain open. Do not infer numerical
pending defaults from the existing total stream cap.

## Agreed: Pending Limit Defaults

vyzo approved these configurable starting defaults:

- Default to 32 pending physical connection attempts per Network, combining
  inbound and outbound attempts.
- Default to 16 pending stream openings per Connection, combining both opening
  directions and remaining inside the agreed 128 pending-plus-established cap.
- Both defaults are user-configurable through the planned limits classes. They
  are starting policy choices, not performance conclusions from measurements.
- These caps limit simultaneous admission work, not the number of established
  connections or the duration of a lease. Timeout coverage and live-count monitor
  coordination still need to be finalized.

## Agreed: Advisory Allow And Explicit Open Rejection

vyzo chose advisory allow-connection?/allow-stream? checks rather than extending
the monitor with capacity reservation/rollback machinery. The monitor can reject
a connection or stream explicitly in its on-open callback by closing that object
and raising Closed.

- An allow result of true is not a reservation or a guarantee of final acceptance.
  False still rejects early. Concurrent checks may all pass; the open callback is
  the host's opportunity for a final decision using its own synchronized accounting.
- Rejection in on-open-connection closes that connection and raises Closed.
  Rejection in on-open-stream closes that stream and raises Closed, without
  requiring closure of its shared connection.
- The agreed internal pending limits and total per-connection stream cap remain
  hard bounds independent of the monitor's advisory checks.
- No additional strict live-connection cap or monitor reservation API is selected
  by this decision. Monitor callbacks still execute outside network locks.

## Agreed: Open Callback Rejection Handling

vyzo approved this expected-rejection and callback-completion behavior:

- Treat Closed from an explicitly rejecting on-open callback as an expected
  lifecycle outcome, not an unexpected worker failure. In particular, it must
  not escape inbound stream dispatch and tear down the shared connection.
- Complete the open callback before reporting success to initiating connect!/
  open-stream! callers or joined waiters. If it rejects, those callers receive
  Closed rather than a supposedly successful but rejected object. Publication
  and pending-completion ordering must preserve this distinction.
- The peer may already have accepted the protocol exchange and observes ordinary
  connection closure or stream RESET; do not attempt to undo remote notification.
- If an open callback raises, abort the object without a close notification, as
  subsequently clarified below. The failing callback must roll back any monitor
  registration/accounting it performed; network cleanup remains unconditional.

Other callback exceptions and per-object notification ordering are settled below.

## Agreed: Other Monitor Callback Exceptions

vyzo approved this error policy and requested package-wide logging:

- If an allow callback raises, fail that new connection or stream admission.
  Do not treat an exception as permission. A stream admission failure leaves
  unrelated streams and the shared connection intact.
- If an on-open callback raises anything other than the deliberate Closed
  rejection, close the affected object so an unclaimed live object is not left
  behind. A connection callback failure closes that connection; a stream callback
  failure resets only that stream.
- For locally initiated operations, propagate the callback exception to the
  waiting caller after cleanup. Incoming dispatch handles the failure locally
  instead of allowing it to escape the shared reader worker.
- Log unexpected callback failures at error level through the shared network
  package logger, with appropriate public context;
  do not send exception objects, stack traces, or credential contents to peers.
  Peers receive ordinary rejection/reset/closure as appropriate to the phase.
- If an on-close callback raises, report it and continue cleanup and other close
  notifications. Resource release must not depend on callback success, and a
  failed close notification must not cause recursive close notification.
- Deliberate close-and-Closed rejection in on-open remains an expected outcome,
  not an unexpected callback error.

Per-object notification ordering and reentrancy are settled below.

## Agreed: Network Package Logger

vyzo requested one shared logger for the entire network package. Log unexpected
exceptions as errors, including unexpected monitor callback failures. Expected
close-and-Closed rejection is not an unexpected exception. Preserve the existing
rule against leaking tokens/private material in diagnostics or sending local
exception details to peers. Logger declaration and module placement will be
chosen during implementation; do not implement logging during design.

## Agreed: Lifecycle Notification Ordering

vyzo approved per-object ordering, with the refinement that any exception from an
open callback aborts the object without a close notification. This applies equally
to connections and streams; the earlier notify-close-after-failed-open proposal
is superseded.

- Deliver each object's on-open notification at most once and each on-close
  notification at most once. Objects that fail before reaching open notification
  do not receive an unmatched close notification; their internal cleanup still
  completes normally.
- Only a normally returning on-open qualifies the object for on-close notification.
  If on-open raises Closed or any other exception, abort and release resources/
  reservations without on-close. The monitor must roll back any registration it
  performed before raising. Closed is expected rejection; other exceptions are
  logged as errors, and initiating callers/joined waiters fail as already agreed.
- Do not overlap open and close notifications for the same object. If closure
  occurs during on-open, including explicit close from that callback, mark the
  object closed and wake operations immediately, but defer on-close notification
  until on-open finishes. Deliver it if on-open returns normally, including when
  the callback explicitly closed the object; suppress it if on-open raises.
- Closing an already closing/closed object is idempotent and does not recursively
  notify. A close callback may close its object again without another callback.
- Finish on-open-connection before delivering stream-open notifications for that
  connection. Callbacks for different objects may run concurrently; the monitor
  owns synchronization of host-wide accounting.
- Continue to invoke callbacks outside network/connection locks. Deferred close
  notification does not defer resource shutdown or require a worker per callback.

Ordering between connection-close and its streams' close notifications remains a
separate decision; the above fixes per-object ordering and the connection-open
prerequisite.

## Agreed: Connection Close Notification Order

vyzo approved this cross-object shutdown ordering:

- On connection closure, mark it and all its streams closed, release resources,
  and wake blocked operations without waiting for monitor callbacks.
- Deliver eligible stream-close notifications before on-close-connection. No
  particular ordering is required between different streams' close callbacks.
- If a stream-open callback is still running, apply the agreed per-object rule:
  after it finishes, either deliver stream-close on normal return or suppress it
  on exception. Defer connection-close notification until these outcomes and
  outstanding stream-close callbacks are complete.
- A stream-close callback exception is logged but still counts as completion;
  it must not prevent connection-close notification or resource cleanup.
- Do not make a reentrant connection close wait for the invoking callback to
  finish. Callback ordering may defer notifications, not the resource shutdown.
- If on-open-connection itself failed, its abort still has no connection-close
  notification, as agreed.

This lets the monitor retire stream accounting before retiring the connection's
accounting, without invoking callbacks under network locks.

## Agreed: Credit Coalescing And Control Burst

vyzo approved this coalescing and scheduling policy:

- Accumulate consumed receive bytes in one pending-credit counter per stream.
  When it becomes nonzero, mark a WINDOW-UPDATE ready for the connection writer;
  do not allocate a separate queued update for every application read.
- Coalesce further consumption until the writer commits the update. Consumption
  after that commit contributes to the next update. Preserve the receive-window
  accounting invariant when pending credit becomes granted credit.
- Do not impose a minimum consumed-byte threshold or a batching timer initially.
  Even a small read makes its replenishment eligible immediately, avoiding an
  artificial stall when the peer has exhausted credit. The writer's scheduling
  naturally provides coalescing.
- Use a configurable control burst of eight ready control frames, followed
  by one DATA frame from the next ready stream when DATA is available. If no
  DATA is ready, continue serving control traffic without an artificial pause.
- Apply the existing acceptance/DATA/FIN ordering dependencies before a frame
  becomes eligible; control priority must not reorder the stream protocol.

Control-work queue bounds and overflow behavior remain separate decisions; this
proposal bounds duplicate credit-update work, not all pending control traffic.

## Agreed: Pending Control Traffic Bounds

vyzo approved these queue bounds and overflow semantics:

- Bound network-owned pending outbound control traffic per connection by both
  frame count and encoded bytes, with configurable defaults of 256 frames
  and 256 KiB. Byte accounting includes headers; these are aggregate queue limits,
  distinct from the 64 KiB per-control-payload limit.
- Include a selected/in-flight control frame in accounting until its network-owned
  buffer can be released. Do not free queue budget merely by moving a frame to
  another internal buffer or worker-local backlog.
- Count coalesced credit updates as single pending updates, not one per read.
  Reserve accounting when control work is admitted, before constructing an
  unbounded serialized-message backlog. Do not preallocate the full budget.
- If a new local opening or renewal cannot obtain control capacity, fail that
  operation locally without disturbing an otherwise valid connection.
- If required protocol output, such as an acceptance, rejection, RESET, or credit
  update, cannot be represented within the control budget, close the connection
  rather than accumulating an unbounded backlog or silently dropping required
  messages. Do not block the shared reader waiting for outbound queue capacity.

This deliberately chooses connection closure under exhausted mandatory-control
capacity. Exact control-work representation, reservation sizes, and any reserved
headroom for essential frames remain implementation/design details to settle.
It is not a rate limit on peer input or a bound on token-decoding allocations.

## Observed: Existing Token Decoder Bounds

Design-time source inspection, not a runtime/security verification:

- ucan/util.ss currently calls unmarshal-token with a fresh DAG environment but
  does not accept a caller-supplied resource policy.
- serde/unmarshal.ss has per-container max-elements checks before vector/string/
  hash-table allocation. Its environment has no cumulative allocation or nesting
  budget; nested declared containers can therefore allocate substantially more
  than the encoded frame size before parsing fails.
- The environment stores max-integer-bits, but the inspected uint/sint parsers
  delegate directly to reader varint methods without using that field. Integer
  bound enforcement needs review along with other decoder resource checks.
- Existing DAG/cycle rejection is not a replacement for allocation/work bounds.

## Deferred: Token Decode And Verification Budgets

vyzo chose to punt on this proposal. He considers the encoded-byte bound sufficient
for the initial scope and is not convinced that amplification warrants additional
machinery. Do not implement these extra budgets or make them a prerequisite for
the network implementation. No runtime reproducer or quantified amplification
measurement was produced during this discussion; the source-inspection concerns
above remain audit notes, not a demonstrated catastrophic failure.

Deferred proposal, retained for possible future review:

- Bound candidate count before token decoding and delegation-chain length before
  expensive signature verification. These complement the encoded control-frame
  limit rather than replacing it.
- Add cumulative allocation/work and nesting budgets at the shared serde decoder
  layer, enforced before allocation/descent and through resolution/untainting as
  needed. Check declared lengths and scalar encodings as well as object counts.
- Apply a cumulative decode budget across all candidates in a received bundle,
  rather than granting a fresh full allowance to every alternative token.
- Keep using the existing UCAN token encoding and DAG validation. Expose the
  necessary decode-policy plumbing through the token helper rather than writing
  a separate network-specific object parser.
- Supply network policy through the planned limits classes. Exact budget units,
  numerical defaults, allowed classes, and over-budget candidate/error handling
  remain to be designed.

No shared serde/UCAN helper changes are approved by this discussion. Reconsider
only if warranted by concrete evidence or a subsequent design decision. Retain
the agreed encoded frame/field validation, existing decoder checks, and DAG
validation; no source code was changed during this inspection.

## Agreed: Whole-Attempt Connection Deadline

vyzo approved applying the configurable 10-second handshake timeout to the whole
pending physical connection attempt, and noted that the socket timeout can be set
to an absolute deadline computed at the start.

- Outbound: start when the pending slot is reserved, covering dialing, TLS where
  applicable, and HELLO/AUTH/ACCEPT/CONFIRM.
- Inbound: start when the accepted socket obtains its pending reservation, before
  TLS or application protocol reads.
- Use the same absolute deadline for socket I/O throughout establishment. Progress
  and joined callers do not restart the budget.
- On timeout, close the provisional transport and release the reservation after
  cleanup. This timeout is distinct from the requested authorization expiration.

Implementation follow-through: transition socket timeouts to established-connection
I/O policy on success; do not leave the handshake deadline installed. Check the
deadline at completion as well, rather than assuming socket timeouts cover work
that performs no socket I/O. Established I/O defaults remain to be specified.

## Agreed: Address Fallback Budget

vyzo approved this sequential fallback and shared-budget policy:

- Try addresses sequentially in the existing preference order, with Unix addresses
  first. Do not introduce parallel address racing initially.
- Close and clean up a failed candidate before trying the next one; a sequential
  fallback must not accumulate provisional sockets or handshake workers.
- Keep the original outgoing establishment deadline across address candidates,
  rather than granting each failed address another full 10 seconds. This refines
  whole-attempt timing to cover the outgoing fallback sequence as one budget.
- Preserve the caller's fixed authorization expiration across fallback as well.
  Stop when the establishment budget or required authorization lifetime expires.

Which failure categories permit fallback, final error reporting, and interactions
with duplicate-election candidates and joined callers remain to be specified.

## Agreed: Address Fallback Failure Categories

vyzo approved these fallback failure categories:

- Try the next address after address/transport failures such as refusal,
  unreachability, transport loss during establishment, or TLS failure, provided
  the original establishment budget remains.
- An endpoint that cannot prove the expected peer DID is not the requested peer:
  close it and try the next address with all identity checks intact. Never accept
  the wrong DID or downgrade authentication merely to make fallback succeed.
- Once the expected peer is authenticated, an explicit authorization or admission
  rejection stops address cycling for that attempt. A subsequent refinement
  permits retrying alternative credentials supplied by joined callers after a
  credential rejection; this is not permission to bypass monitor admission.
- Local invalid arguments, local monitor rejection, and exhausted deadlines fail
  the operation rather than triggering another address attempt. Unavailable or
  insufficient local credentials may fall through to another supplied credential
  candidate under the joined-caller policy below.
- An on-open callback rejection is final for that opening; do not hide it by
  silently creating a replacement connection.
- This does not discard independently viable candidates retained by the agreed
  duplicate-election policy; address cycling and candidate election are distinct.

Protocol-version/malformed-handshake failures and the final multi-address error
representation still need specification. Deadline expiration ends fallback even
when the underlying failure would otherwise be retryable.

## Agreed: Joined Connect Callers With Credential Failover

vyzo approved the joining model with one refinement: when callers supply competing
credentials and authentication fails, try the other supplied credentials too.

- The caller that starts an outgoing establishment supplies that attempt's
  address list and initial auth parent. Joining callers do not replace the address
  list or restart the deadline, but their supplied auth parents are retained as
  alternatives for credential failover. Incoming attempts retain their own inputs.
- Interpret auth as credentials to use when starting establishment or renewal,
  not a per-caller credential-provenance requirement on an already shared
  connection. Joining another authorized attempt follows the same sharing model
  as reusing an established connection.
- Preserve each caller's original fixed required expiration. After establishment
  and successful open notification, return to callers whose requirements are
  covered. Callers needing a later deadline request authorized renewal before
  returning; do not delay satisfied callers for those longer leases.
- A caller with neither ttl: nor expire: accepts the established valid lease
  without initiating renewal merely because it waited.
- Cancelling a waiter detaches that caller, not other waiters or network-owned
  establishment work. An attempt remains bounded by its original deadline and
  may finish even if its initiating caller has stopped waiting.
- On credential failure, try other supplied credential candidates before failing
  the shared establishment, subject to the original deadline and required lease.
  This supersedes the earlier blanket no-auth-retry proposal.
- After eligible alternatives are exhausted, report the shared failure to waiters.
  Do not automatically launch separate per-waiter address-list searches. Callers
  may explicitly retry after failure.

Renewal request coalescing, differing renewal auth inputs, caller-count bounds,
and empty-address-list behavior while an attempt is pending remain to be settled.

## Agreed: Credential Failover Mechanics

vyzo approved this credential retry mechanism:

- Try distinct supplied parent credentials longest-expiration-first, at most once
  each within the shared establishment. This supersedes the initial arrival-order
  rule. Each candidate must cover the attempt's fixed required expiration and the
  minimum authentication lifetime below. Exact deduplication remains to be chosen.
- Trigger credential failover for unusable local credentials or rejection of our
  connection invocation. Do not confuse failed peer identity authentication or
  our rejection of the peer's credentials with rejection of our own credentials.
- Monitor admission rejection and on-open callback rejection remain terminal;
  switching credentials is not a way to override resource admission.
- After an on-wire credential rejection, clean up that physical candidate and
  perform a fresh handshake with the alternative credentials, starting with the
  rejecting endpoint, under the original shared deadline. Do not introduce an
  in-band AUTH retry exchange initially. Locally unusable credentials can be
  skipped without opening a transport for that candidate.
- Retried physical candidates remain subject to pending-connection reservations,
  duplicate election, and all original identity/authorization checks.

Credential retry uses the agreed initial handshake, now including CONFIRM.
Precise failure classification and late
credential arrival versus terminal-failure synchronization remain to be specified.

## Agreed: Renewal Coordination

vyzo approved this single-coordinator renewal model:

- Use the original physical connection initiator as the renewal coordinator for
  that connection's lifetime. Either endpoint may request a later expiration;
  the responder sends its request to the coordinator rather than independently
  starting a competing exchange.
- Permit only one active mutual reauthorization exchange per connection. The
  coordinator fixes that round's target expiration before requesting credentials;
  do not change the target after the round starts.
- Requests already covered by the current lease return without renewal. Requests
  covered by the active round's target can wait for that round. Requests needing
  a later target wait for a subsequent round, preserving their original required
  expirations; they do not restart or mutate the active exchange.
- The coordinator only orders exchanges. It cannot grant authority on behalf of
  the other endpoint: both directions still require valid accepted INVOKE tokens
  and the agreed acknowledgments before lease extension.
- Keep DATA/other stream traffic running during renewal. Use a renewal-operation
  deadline rather than replacing the shared connection's socket timeout, so an
  ordinary renewal timeout need not destroy a still-valid old connection.
- Continue enforcing the old lease while renewal is pending, and do not invoke
  monitor allow/open callbacks merely for renewal.

Renewal message sequence, correlation IDs, commit/acknowledgment ordering, timeout
default, credential failover, and bounded request bookkeeping remain to be settled.

## Agreed: Renewal Exchange And Commit Boundary

vyzo approved this exchange and commit-boundary failure policy:

- Correlate each round with a coordinator-assigned ID that is never reused within
  the connection. A responder-originated request asks the coordinator to start
  a round; it does not independently commit an extension.
- RENEW-OFFER: coordinator sends round ID, fixed required expiration, and its
  invocation-token bundle.
- RENEW-AUTH: responder verifies the offer and returns its own bundle plus the
  selected index from the coordinator's bundle. Neither endpoint changes its
  lease yet. An ordinary refusal ends the round with the old lease unchanged.
- RENEW-COMMIT: coordinator validates the response and sends the selected index
  from the responder's bundle. Both selected credentials must cover the target;
  the new lease is their minimum expiration, not merely the requested target.
- On valid COMMIT, the responder installs the new lease and sends RENEW-ACK. The
  coordinator installs it after receiving ACK. Completion is asymmetric over
  the wire; do not claim the two clocks/state updates occur atomically.
- Before COMMIT is committed for transmission, refusal, timeout, or cancellation
  can abandon the round while preserving the old valid lease. Prevent stale work
  from committing an abandoned round.
- Once COMMIT may have been sent, do not pretend rollback preserves the old lease
  at both endpoints: the responder may already have extended it. Complete the
  exchange, or close the connection if confirmation cannot be obtained within the
  round deadline. This is a proposed connection-fatal ambiguous-commit case,
  distinct from ordinary pre-commit renewal refusal/timeout.
- The old lease remains binding at an endpoint until its commit transition;
  expiry before that transition still closes the connection.

Exact refusal/cancellation messages, stale-round handling, round timeout default,
responder waiter completion, and credential retry between rounds remain open.
Post-commit uncertainty is an approved connection-fatal exception to preserving
the old lease on ordinary pre-commit renewal refusal/failure.

## Agreed: Minimum Authentication And Renewal Headroom

vyzo requires renewal to start before the old lease expires, with at least the
renewal timeout remaining. He also requires skipping credentials that expire in
less than the timeout, for both renewal and initial connection authentication.

- The renewal timeout defaults to 10 seconds. Require at least the applicable
  configured timeout of remaining old-lease lifetime when starting renewal.
- Require connection authentication credentials to have at least the applicable
  timeout remaining when starting the authentication attempt/renewal round, in
  addition to covering the caller's fixed required expiration.
- Credential retries remain subject to those eligibility checks and the original
  shared deadline; retries do not restart the operation budget.
- These are eligibility rules for explicit renewal, not approval of automatic
  background renewal. A too-late renewal fails without prematurely closing an
  otherwise valid old connection; normal expiry still closes it.

Do not silently move an explicit requested expiration to accommodate the minimum.
The fixed local start-checkpoint rule is settled below; operation deadlines remain
independent of that captured eligibility threshold. No additional minimum
stream-token lifetime is selected by this connection-authentication decision.

## Agreed: Longest-Expiration-First Credentials

vyzo requested longest-expiration-first credential ordering; astra agrees.

- Prefer longer-lived candidate credentials before shorter-lived alternatives,
  including competing supplied parents retained for connection failover.
- Ordering does not substitute for identity, signature, chain, trust, protocol,
  audience, minimum-lifetime, or full requested-expiration checks. Skip invalid or
  insufficient candidates normally.
- Locally generated invocations remain bounded by their requested expiration;
  choosing a longer-lived parent does not silently lengthen the invocation.

vyzo approved stable descending expiration order, preserving bundle/arrival order
for ties. When ranking received candidates, keep their original wire indices for
acknowledgments and retain the exact signed encodings. Do not reindex a bundle or
reconstruct its signed transcript merely to change selection order.

## Agreed: Renewal Abort And Stale Rounds

vyzo approved this round retirement and late-message policy:

- Use monotonically increasing coordinator-assigned round IDs, not merely unique
  arbitrary IDs. Keep the active round plus a retired-ID high-water mark rather
  than retaining every completed round's credentials/state.
- Use one RENEW-ABORT message carrying round ID and a bounded reason code for
  pre-commit refusal, timeout, or abandonment. Aborting the round preserves the
  old valid lease; it is not a whole-connection abort at this stage.
- Serialize the abort decision with the writer's COMMIT commitment. Before that
  commitment, cancel queued COMMIT work and prevent stale validation work from
  reviving the round. After COMMIT may have been sent, apply the agreed completion
  or connection-closure rule instead of claiming safe rollback.
- Frames for retired rounds do not revive state or change the lease. Discard
  their bounded payloads without decoding old token bundles. Apart from a valid
  new coordinator OFFER, messages for unknown future rounds are protocol errors.
- After credential rejection, eligible supplied alternatives may be tried in a
  new round with a fresh ID, preserving longest-expiration-first ordering and
  the original renewal operation's deadline. Do not grant a fresh full timeout
  per credential retry; old-lease and credential headroom checks still apply.
- Cancelling an individual waiting caller only detaches it, as with connection
  establishment; it does not unilaterally abort shared renewal work.

Wire ordering between retirement and the next OFFER must prevent overlapping
rounds. Exact reason codes, responder-originated request correlation/completion,
and handling of unexpected messages within the active round remain open.

## Agreed: Responder Renewal Requests

vyzo approved this responder request/reply layer:

- A responder needing a later lease sends RENEW-REQUEST with a monotonically
  increasing request ID and its fixed required expiration. Request IDs identify
  requests, separately from coordinator-assigned reauthorization round IDs.
- The coordinator answers RENEW-RESULT with the request ID and success or a bounded
  failure reason. This permits explicit refusal before any OFFER, for example
  when insufficient old-lease headroom remains or local credentials cannot qualify.
- RESULT does not grant authority or change expiration. A successful result must
  correspond to an already installed local lease covering the requested deadline;
  only the agreed OFFER/AUTH/COMMIT/ACK exchange installs a renewed lease.
- Permit one outstanding wire request from the responder at a time. Local callers
  whose deadlines it covers can join it; later required expirations remain queued
  locally for a subsequent request. Do not create a wire request per waiter.
- Retain supplied parent credentials locally for the AUTH stage and credential
  failover. Do not duplicate token bundles in REQUEST merely to ask for renewal.
- Coordinator-local callers use its local pending state, not loopback REQUEST
  frames. The coordinator can satisfy a peer request through a covering active
  round, a subsequent round, or a lease already covering it.
- Late results for retired request IDs cannot revive cancelled/completed caller
  state. Request bookkeeping must remain bounded independently of waiter count.

The request wait deadline, its interaction with round/credential-retry budgets,
and waiter success timing versus local lease installation still need specification.

## Agreed: Renewal Request Deadlines And Completion

vyzo approved this request/operation deadline and completion model:

- Fix a renewal request's deadline when it is made, before queueing, using the
  configured renewal timeout (default 10 seconds). Queueing, REQUEST delivery,
  credential work/retries, and result delivery consume that budget; do not reset
  it at each phase.
- Carry the request deadline separately from the required lease expiration in
  RENEW-REQUEST. A request that expires before a round can serve it fails without
  starting new work on its behalf.
- A newly started shared renewal operation inherits its initiating request's
  remaining budget, subject to local timeout policy. Carry the operation's fixed
  deadline in OFFER so both endpoints know the coordinator's cutoff; local policy
  may impose an earlier cutoff but never extend the offered one.
- Joining requests do not change an active operation's deadline or fixed target.
  Each waiter may stop waiting at its own deadline without cancelling work serving
  other requests. Shared credential-retry rounds retain the same operation deadline.
- Coordinator-local callers succeed after ACK and local lease installation.
  Responder request callers succeed after a successful matching RESULT and a
  check that their installed local lease covers the required expiration.
- Request timeout is not proof that renewal never committed. If shared work is
  still active, apply its own deadline and the agreed pre-/post-commit failure
  rules; do not roll back an installed lease merely because a waiter timed out.

All existing old-lease and credential headroom checks remain in force. Peer request
retirement/result delivery and late-message handling must distinguish caller
waiting state from the shared authorization round's state.

## Agreed: Established I/O Timeout Scope

vyzo approved this timeout scope and failure policy:

- Default established connection and stream input/output timeouts to no timeout.
  Authorization expiration still applies independently and closes expired objects.
  Remove the establishment deadline when installing normal connection I/O policy.
- Connection.set-input-timeout!/set-output-timeout! configure the shared transport
  reader/writer. A transport I/O timeout closes the connection and its streams,
  since a partially read/written frame cannot safely be abandoned in place.
- Stream.set-input-timeout!/set-output-timeout! configure that stream's application
  I/O waits only. They do not change the shared socket or other streams' timeouts.
- Abort the affected stream on a stream read/write timeout, preserving
  the shared connection. This avoids implying that a timed-out operation which
  already transferred some bytes can be retried atomically. Writer-close timeout
  already has this agreed abort behavior.
- Use the existing IOTimeout representation for relative or absolute timeouts.
  Resolve relative timeouts once per read/write/close operation, not after every
  wakeup or partial-progress step within that operation.
- Changing a timeout affects subsequent operations, not an already captured
  operation deadline. Do not implicitly copy later connection timeout changes
  into streams; transport failure still affects every stream naturally.

Exact partial-read/write return behavior follows the Reader/Writer contracts and
needs specification with buffering. Timeout defaults/options can be supplied by
the eventual constructor configuration; no timeout implementation is authorized.

## Agreed: Stream Reader/Writer Buffer Semantics

The short-Writer-return clause below is superseded by the explicit whole-write
contract correction of 2026-09-12 at the end of this document.

vyzo approved these buffering and ownership semantics:

- Stream.writer.write copies an accepted prefix into bounded network-owned
  storage and returns its byte count; a short write is allowed by the Writer
  contract. If no capacity is available, wait under the operation deadline.
- Successful write means accepted for transmission, not delivered or consumed by
  the peer. After write returns, the caller may reuse/mutate its source buffer;
  the network must not retain it for asynchronous transmission of that prefix.
- Stream.reader.read copies buffered bytes into the caller's destination and
  returns receive credit as those bytes are consumed, even if the call must wait
  for more bytes to satisfy Reader.read's need argument.
- A requested minimum larger than the receive window must work incrementally:
  consume and replenish while filling the caller-owned buffer. Never wait for
  the whole minimum to accumulate inside the bounded network receive window.
- Follow the Reader contract for EOF and an unmet minimum. FIN exposes EOF only
  after buffered data is consumed; zero must not be used to signal a temporary
  lack of data on a nonempty read request.
- Support concurrent reading and writing on a stream. Require application code
  to serialize concurrent operations in the same direction; do not promise
  atomic application messages or add a network-owned worker per operation.

These ownership semantics preserve the network buffering bounds without counting
caller-owned source/destination allocations as network-owned buffers. Concrete
buffer representation and standard-library I/O integration remain implementation
choices, not authorization to start coding.

## Agreed: Stream ID High-Water Marks And Late Frames

vyzo approved this bounded stream-ID bookkeeping and late-frame policy:

- Require OPEN frames to appear in strictly increasing stream-ID order for each
  opening direction. Allocate IDs when committing OPEN work in wire order, not
  before potentially slow credential construction. Gaps are permitted; IDs are
  never reused.
- Track live/pending stream objects and two high-water marks: locally committed
  OPEN IDs and peer OPEN IDs already observed. Determine ID ownership by the
  agreed parity rule. Record a valid peer OPEN ID even if admission rejects it.
- A repeated or decreasing OPEN ID, or an OPEN using the wrong parity, is a
  protocol error. Do not reopen an old ID or rerun admission for it.
- For non-OPEN stream frames, an active ID uses the normal per-stream state
  machine. An absent ID at or below its owner's high-water mark is non-live:
  discard the bounded frame without recreating stream state or decoding token
  bundles. Do not reply to discarded late frames and create reset/reply loops.
- An ID above the applicable high-water mark has not been opened; non-OPEN frames
  referring to it are protocol errors. Continue enforcing envelope/type/length
  constraints even when a payload will be discarded.
- Explicitly treat skipped IDs below a high-water mark the same as retired IDs.
  Without per-ID history we cannot distinguish them; this is a proposed protocol
  rule, not proof that every lower ID was once an established stream.

This bounds bookkeeping by live/pending objects rather than lifetime stream count.
It tolerates in-flight DATA/FIN/acceptance after local cancellation. Active-stream
state violations and exact protocol-error closure policy remain to be specified.

## Agreed: Protocol Violations Versus Stream Failures

vyzo approved this simple failure-scope boundary:

- Treat invalid active protocol state as connection-fatal, like malformed framing.
  Do not attempt to resynchronize or silently reinterpret an impossible exchange.
- Examples include DATA before a stream is accepted, DATA after the peer's FIN
  while the stream is still active, ACCEPT/REJECT in a state that cannot receive
  it, invalid acknowledgment indices, and renewal messages from the wrong role.
- DATA exceeding granted credit, or WINDOW-UPDATE that is nonpositive or would
  raise available credit above the originally advertised window, is likewise
  connection-fatal. Validate bounds before arithmetic can overflow.
- Keep ordinary stream-level outcomes local: admission refusal, valid RESET,
  cancellation, stream authorization expiry, and stream I/O timeout. They do not
  imply a corrupt connection protocol.
- Preserve the agreed exceptions for retired stream IDs and retired renewal
  rounds: expected late frames are discarded, not promoted into protocol errors.
- A broken/closed transport closes the connection normally; failure classification
  must not turn every expected disconnect or refusal into an unexpected exception
  logged at error level.

Exact wire reason codes and malformed credential versus ordinary invalid-credential
classification remain to be specified. This proposal chooses the failure scope,
not an exception encoding or peer-visible diagnostic format.

## Agreed: Invalid Credentials Versus Malformed Messages

vyzo approved this framing-versus-credential distinction:

- Invalid outer control encoding (bad field lengths/counts, truncated fields,
  trailing payload bytes, or invalid mandatory control fields) is a protocol
  error and closes that connection/candidate transport.
- A well-delimited token blob that cannot decode as a valid Token is an invalid
  candidate, not a loss of control-message framing. Skip it and consider the
  remaining candidates, preserving their original bundle indices.
- Likewise skip candidates with invalid signatures/chains, wrong issuer/audience/
  capability, insufficient trust, expiry, or inadequate lifetime. Rank decodable
  candidates longest-expiration-first, but do not accept them without validation.
- If no usable candidate remains, reject the affected connection authentication,
  stream opening, or renewal. A stream credential rejection leaves its connection
  intact; pre-commit renewal rejection preserves the old valid lease. Supplied
  credential failover remains available under the agreed retry rules.
- Malformed-input and credential-rejection outcomes are expected validation
  failures, not unexpected exceptions to log as errors. Genuine implementation
  exceptions still follow the package error logging and cleanup policy; do not
  indiscriminately swallow every exception as an invalid token.

Exact exception classification will require source-level implementation review.
This does not reopen the deferred decoder-budget work or change token encoding.

## Agreed: Protocol Version And Handshake Fallback

vyzo approved this initial version and fallback policy:

- Support one network wire version initially: v0, explicitly identified in HELLO.
  Both endpoints must use that version; do not add version negotiation, format
  guessing, or automatic protocol downgrade in the initial implementation.
- Validate the peer HELLO, including its version and identity fields, before
  sending AUTH/token bundles. The network version is distinct from the
  application protocol string carried by an individual stream.
- An unsupported version or malformed establishment exchange closes that
  provisional transport, but permits the outgoing attempt to try another address
  within the original fallback budget. Another listener may be the intended
  compatible service; do not reinterpret bytes on the failed transport.
- This does not change the rules for an authenticated credential/admission
  rejection. Credential failover may try other supplied credentials, but resource
  or open-callback rejection is not bypassed by address cycling.
- After establishment, protocol violations close the connection without automatic
  reconnection. HELLO/version renegotiation is not valid on an established session.
- Preserve useful local endpoint/version failure context without sending exception
  objects or internal traces to peers. Exact multi-address error representation
  remains open.

Exact version-field width, frame type codes, and structured control field layouts
still need a final wire-format specification before implementation.

## Agreed: Metadata And Closed Objects

vyzo approved the metadata/closed-object behavior, with the refinement that closed
Network registry queries raise Closed rather than returning empty snapshots, which
could mask bugs in application code.

- Keep connection metadata available after closure: owning Network, peer DID,
  local/remote addresses, original direction, and last installed expiration.
  Capture transport-derived metadata while it is available; do not query a closed
  socket merely to answer a metadata getter.
- Keep stream metadata available after closure: owning Connection, ID, protocol,
  original direction, and accepted credential expiration. Expiration getters do
  not reset to the close time or imply that a closed object remains usable.
- Reader/writer getters return the existing handles. Aborted/explicitly closed
  I/O remains closed; orderly EOF keeps its normal Reader semantics rather than
  being mistaken for an authorization error.
- Operations requiring a live object, such as new connection/stream creation,
  listening, or changing closed-object timeout settings, raise Closed. Repeated
  close remains idempotent.
- Network.host remains available after Network.close. Network.peers/connections/
  listening raise Closed after network closure; do not return empty snapshots
  that could conceal use-after-close bugs. While the network is open, returned
  snapshots are observations, not guarantees that objects remain open.

This makes close callbacks usable for accounting and diagnostics without retaining
live transport resources. Exact graceful-EOF versus explicit-close handle state
will follow the Reader/Writer contract during implementation.

## Agreed: Limits Class Layout

vyzo approved this class grouping and subsequently raised both stream DATA buffer
defaults to 256 KiB:

- NetworkLimits holds the network-wide pending-connection cap (default 32) and
  the ConnectionLimits used for its connections.
- ConnectionLimits holds the total stream cap (128), pending-stream cap (16),
  HELLO payload cap (4 KiB), DATA payload cap (16 KiB), other-control payload cap
  (64 KiB), pending-control count/byte caps (256 frames / 256 KiB), control burst
  (8), and the StreamLimits used for its streams.
- StreamLimits holds the receive window (256 KiB) and network-owned outbound DATA
  buffering cap (256 KiB).
- Compose these objects rather than using class inheritance to mix scopes. A
  Network receives one NetworkLimits object with nested connection/stream limits.
- Treat supplied limits as immutable while in use. Do not add live reconfiguration
  or defensive copying initially; negotiated advertisements remain fixed for each
  connection as already agreed.
- Keep authorization TTLs and operation/I/O timeouts separate from resource-limit
  classes. Their constructor/configuration presentation remains to be chosen.

Class grouping is approved; exact slot/constructor keyword names and validation
details remain to be specified. Per-call/per-peer overrides are not selected by this layout.
Implementation remained deferred until design finalization. The later module-plan
refinement places these classes in `config.ss` alongside NetworkConfig.

## Agreed: NetworkConfig Object For Defaults

vyzo requested a configuration object alongside the limits object to hold network
defaults. This supersedes the proposal to expose individual TTL and operation-
timeout keywords directly on make-network. Resource bounds remain in the agreed
NetworkLimits/ConnectionLimits/StreamLimits classes.

The object was initially called Config; vyzo subsequently named it NetworkConfig
and merged its module with the limits module, as recorded below.

## Agreed: Combined Configuration Module

vyzo requested that configuration defaults and resource-limit classes share one
`config.ss` module, since both are configuration parameters. Do not create a
separate `limits.ss` module.

- Name the defaults aggregate NetworkConfig, not Config, so higher-level modules
  can import it without needing a prefix to avoid a generic Config binding.
- Keep NetworkLimits, ConnectionLimits, and StreamLimits and their approved nesting
  in the same module. This merges source modules, not those distinct class scopes.
- Keep make-network's config: and limits: arguments; config: receives NetworkConfig.
- No defaults, ownership rules, or immutable-while-in-use conventions change.

## Agreed: Network Constructor API

vyzo approved NetworkConfig alongside the limits object, including default I/O timeouts:

- Name the public constructor make-network, taking host DID, CapabilityContext,
  and NetworkMonitor as positional arguments, in that order.
- Accept limits: with a default NetworkLimits object containing the agreed nested
  ConnectionLimits and StreamLimits defaults.
- Accept config: with a default NetworkConfig object. Its connection-ttl and stream-ttl
  fields each default to 3600 seconds; handshake-timeout, stream-open-timeout, and
  renewal-timeout each default to 10 seconds. Timeout fields configure duration
  budgets; operations compute actual deadlines as already agreed.
- Treat NetworkConfig as immutable while in use, like the limits objects. Do not add live
  default reconfiguration initially. Per-call ttl:/expire: overrides remain as
  agreed and do not mutate NetworkConfig.
- NetworkConfig also holds connection-input-timeout, connection-output-timeout,
  stream-input-timeout, and stream-output-timeout defaults, all initially no
  timeout, using the existing IOTimeout representation. Apply these defaults to
  newly created objects; applications and monitor open callbacks can override
  them through the existing per-object NetworkTimeout setters.
- Use exactly the supplied monitor. Do not add monitor registration/fan-out APIs
  initially; applications can compose their own monitor when necessary.
- Construction does not listen or connect automatically. listen! explicitly opens
  listeners and connect! explicitly initiates/joins connection work. Preserve the
  agreed ownership model and fail construction if the host private key is unavailable.

This is an approved design, not an implemented API. Exact source/module exports
and typed signatures will be implemented after the remaining design is finalized.

## Agreed: Empty Address Lists

vyzo approved this reuse-or-join behavior:

- Treat connect! with an empty address list as reuse-or-join: reuse an established
  connection or join already pending work for the canonical peer DID.
- Apply the ordinary lease rules. An existing connection can be renewed to meet
  an explicit ttl:/expire: requirement without needing a new address list.
- If neither a usable connection nor pending establishment exists, fail without
  dialing. Do not guess addresses, use old peer-address metadata as a reconnect
  target, or introduce implicit discovery.
- Joining does not provide another address list or start independent work. The
  existing attempt may still perform its agreed address/credential retries within
  its original budget; supplied auth can participate in that credential failover.
- Shared failure remains failure for the joining caller; an empty-list call does
  not subsequently start a fresh standalone attempt.

This refines the current interface comment's existing-connection-only wording to
include waiting for already pending establishment, without implicit new dialing.

## Agreed: Listener Lifecycle And Bound Address Return

vyzo approved the listener lifecycle and requested that listen! return the actual
bound address, particularly for TCP port-zero listeners.

- listen! completes bind/listen setup and returns the actual bound Address.
  Publish the listener only after setup succeeds; a failed bind does not leave a
  registry entry or worker. Change Network.listen!'s return signature from :void
  to Address during implementation; do not change the interface source yet.
- Report duplicate/address-in-use binds as errors, rather than silently succeeding
  or replacing an existing listener. Do not introduce an unlisten/replace API in
  the initial interface.
- For TCP port zero, return the actual bound address/port directly from listen!
  and record that same address in Network.listening.
  A subsequent port-zero request creates another ephemeral listener, not a lookup
  for the previous port-zero request.
- For filesystem Unix sockets, do not automatically unlink an existing path to
  make bind succeed. Stale-path cleanup after a crash is an explicit application/
  operator action, not permission to delete a possibly active listener's pathname.
- On normal shutdown, remove a filesystem Unix socket path created by that
  listener only if it still identifies the listener's own socket entry. Preserve
  replacement paths owned by another listener/process.
- Network.close stops its listeners and accept workers as well as connection
  work. Expected accept failure caused by shutdown is not an unexpected exception
  to log as an error. Do not let listener cleanup failure prevent other cleanup.

Exact filesystem ownership checks, accepted-socket registration races during
shutdown, and underlying socket options/backlog remain to be specified.

## Agreed: Unix Authentication Proof Encoding

vyzo approved this concrete proof encoding:

- Each HELLO carries a fresh 32-byte cryptographically random challenge, with
  exact size validation. Preserve the agreed challenge exchange on both transports.
- Use the sender's host Ed25519 key for a 64-byte signature over the transcript,
  using the existing signing API rather than introducing another ad hoc hash/sign
  construction. Verification uses the key corresponding to the claimed canonical
  DID; successful Unix proof establishes that identity as already agreed.
- Prefix the transcript with the fixed ASCII domain tag
  gerbil:ensemble:network:unix-auth:v0.
- Follow it with, in order: u32 length plus exact initiator HELLO payload bytes;
  u32 length plus exact responder HELLO payload bytes; a one-byte sender role
  (0 initiator, 1 responder); and u32 length plus exact sender token-bundle bytes.
  Multi-byte lengths use network byte order. Do not reconstruct these signed
  payloads from decoded objects or include the signature in its own transcript.
- The validated HELLO frame type and zero stream ID are fixed by handshake state;
  sign the raw HELLO payloads rather than duplicating their fixed frame headers.
- For TCP/TLS, AUTH contains the token bundle with no Unix proof. For Unix, append
  the fixed 64-byte signature after the bundle. The known transport determines
  the required layout; no peer-controlled optional-proof flag is needed.
- The complete Unix AUTH payload, including its signature, remains subject to
  the peer's control-frame limit. Reject missing/extra proof bytes according to
  the expected transport layout.

This specifies the existing signed plaintext-Unix design, not per-frame integrity
or protection against malicious local relays, which remain outside the agreed
threat model. No cryptographic implementation is being added during design.

## Agreed: Network Shutdown Completion

vyzo accepted this blocking shutdown contract and requested an explicit warning
in the NetworkMonitor source comments against calling Network.close inline.

- Make Network.close a blocking shutdown operation: mark the network closed to
  new work, cancel pending establishment/renewal, close listeners/transports and
  streams, and wait for network-owned workers/work to finish before returning.
- Close transports before waiting, so blocked network I/O is interrupted. Do not
  hold network/connection locks while waiting for workers or invoking callbacks.
- Work finishing concurrently with shutdown must observe closed state before
  registration/publication. Close late accepted/created transports rather than
  publishing them or leaving them unowned.
- Concurrent external close callers wait for the same shutdown completion;
  closing an already fully closed network remains an idempotent no-op.
- Because it waits, do not initiate Network.close inline from a monitor callback
  or network-owned worker. Dispatch global shutdown to an application worker
  instead. Stream.close and Connection.close retain their already agreed
  callback-safe abort behavior; this restriction concerns global shutdown only.
- Borrowed CapabilityContext and monitor ownership remains with the caller.
  Completion means network-owned work no longer uses them; application-owned
  workers using the same objects remain the application's responsibility.

This uses a blocking-operation contract rather than adding a separate public
wait-for-shutdown method. The callback restriction is approved and documented in
interface.ss. This comment-only change is explicitly requested during design;
no executable code or interface signatures have been changed.

## Agreed: Establishment Election With Asymmetric ACCEPT

vyzo approved this refinement of the previous HELLO/AUTH/ACCEPT sequence.
Read-only design review identified the need to distinguish candidate readiness
from exclusive selection: a larger-DID endpoint's early ACCEPT on a nonpreferred
candidate must not prevent it from preparing the smaller-DID-initiated candidate.

- Let A be the smaller canonical DID and B the larger. A coordinates initial
  selection regardless of physical connection direction. This does not change
  renewal coordination, which remains with the original physical initiator, or
  the physical sender-role byte used in the Unix proof.
- B sends ACCEPT after validating a candidate's AUTH and advisory admission. This
  is readiness plus its selected token index, not an exclusive selection or
  publication. B can prepare multiple bounded candidates without election waits.
- A prefers its reserved outgoing candidate while that work remains viable,
  retaining eligible fallback candidates. Once choosing a mutually authorizable
  candidate, A claims the exclusive opening slot under per-peer synchronization
  and invokes its on-open callback outside locks. Later callers join rather than
  starting another outgoing attempt during this callback/selection window.
- After normal callback return and liveness/deadline checks, A sends ACCEPT only
  on the chosen candidate, acknowledging its selected token index. Commitment of
  this ACCEPT for transmission is the election commit boundary. Do not preempt
  it for another candidate after it may have been sent.
- B receives A's ACCEPT, claims its opening slot, validates the resulting lease,
  and invokes its own on-open callback. On normal return with the candidate still
  live and within deadline, B sends a new CONFIRM frame.
- B publishes after successful CONFIRM output; A publishes after receiving it.
  Initiating callers/joined waiters cannot report success earlier. Gate stream
  traffic until the appropriate transition, and order CONFIRM before B's stream
  frames. Handle early arrival of A's first stream frame during B's local output-
  completion scheduling window without falsely reporting a protocol violation.
- B can retire fallback candidates after successful CONFIRM output; A retains
  them until receiving CONFIRM. Before election commit, a preferred transport/
  credential failure can permit an independently viable fallback. After commit,
  complete the selected exchange or fail/close it, without silently retargeting.
- Callback rejection remains terminal for that opening and its affected waiters;
  do not hide it through replacement. Failed open callbacks have no close
  notification; normally completed ones retain their agreed close lifecycle.
- All preparation, selection, callbacks, and CONFIRM consume the existing fixed
  budgets. No grace period waits for hypothetical future preferred connections;
  an already healthy published connection is never displaced for direction alone.

This adds one frame type and one post-AUTH message compared with mutual ACCEPT,
and serializes ACCEPT by DID role. It avoids a separate SELECT/SELECT-ACK pair
while confirming both final monitor decisions. The extra establishment latency
is approximately one round trip; existing stream-opening and renewal exchanges
are unchanged. Exact state transitions and rejection codes still need specification.

## Agreed: Common Wire Field Widths And Units

vyzo approved these field widths and units:

- Use unsigned 64-bit values for stream IDs, renewal round IDs, and renewal
  request IDs. IDs are never reused or wrapped within their connection.
- Encode required lease expirations as unsigned 64-bit Unix seconds, matching
  the API's integer-second expiration convention.
- Encode renewal request/operation deadlines as unsigned 64-bit Unix seconds.
  The auth review superseded the original microsecond units. Use the same integer
  locally and on the wire; operation deadlines remain separate from lease expirations.
- Use unsigned 32-bit fields for UTF-8 byte lengths, token-blob lengths, bundle
  counts, selected-token indices, receive windows, credit increments, and advertised
  payload limits. Thus the maximum representable stream window is 2^32 - 1 bytes.
- Use unsigned 16-bit fields for protocol version and reason/status codes. Keep
  the already agreed one-byte frame type and one-byte Unix sender role.
- All multi-byte values use network byte order. Validate configuration/API values
  against their wire ranges before encoding; never truncate or wrap them.
- Strings are strict UTF-8 with byte lengths, not character counts. Keep nonce
  and signature sizes fixed as already agreed, without redundant length fields.

Exact message layouts, code assignments, and per-field validity (such as whether
zero is meaningful) still need the final wire-format table. This is design only.

## Agreed: Stream Frame Payload Layouts

vyzo approved these layouts; all these frames use their nonzero stream ID in the common
header, rather than repeating it in the payload.

| Frame | Payload, in order |
| --- | --- |
| OPEN | UTF-8 protocol string; u64 required expiration; u32 opener receive window; token bundle |
| OPEN-ACCEPT | u32 selected token index; u32 recipient receive window |
| OPEN-REJECT | u16 reason code |
| DATA | Raw payload bytes |
| WINDOW-UPDATE | u32 returned byte credit |
| FIN | Empty |
| RESET | u16 reason code |

- Strings use u32 byte length plus UTF-8 bytes. A bundle is u32 candidate count,
  followed by u32 byte length plus serialized bytes for each candidate.
- Selected indices are zero-based original bundle indices, independent of the
  longest-expiration-first validation order.
- Do not repeat expiration in OPEN-ACCEPT: both endpoints derive it from the
  selected credential. The required expiration in OPEN remains a lower-bound
  requirement, not an authority grant or implicit connection renewal.
- Require positive advertised receive windows and positive WINDOW-UPDATE amounts.
  No zero-window/rendezvous mode is proposed initially.
- Require nonempty DATA payloads; a zero-length application write does not emit
  a DATA frame. Fixed-layout controls require exactly their specified length.
- Rejection and reset carry bounded numeric reasons, not arbitrary remote exception
  objects or diagnostic strings. Reason-code assignments remain to be chosen.

This specifies payload structure only; preserve all agreed state, deadline,
credit, late-frame, and callback rules. No source implementation is authorized.

## Agreed: Initial Handshake Payload Layouts

vyzo approved these layouts; these frames use stream ID zero in the common header.

| Frame | Payload, in order |
| --- | --- |
| HELLO | u16 version; UTF-8 host DID; 32-byte challenge; u64 required expiration; u32 DATA receive limit; u32 other-control receive limit |
| AUTH | Token bundle; followed by the fixed 64-byte signature on Unix only |
| ACCEPT | u32 selected original token index |
| CONFIRM | Empty |
| REJECT | u16 reason code |

- Use one HELLO layout in both physical directions. The physical initiator supplies
  its requested expiration; the responder puts zero in that field. The zero is
  a role-specific absent-value marker, not a proposed lease. Validate this against
  physical direction, not the separate smaller-DID election role.
- The HELLO cap is enforced locally before advertisements can be trusted. Advertise
  positive DATA/control receive limits; they do not change the sender's local
  buffering allowances or the peer's configured limits.
- ACCEPT's meaning depends on the agreed DID role: larger-DID readiness versus
  smaller-DID exclusive selection. CONFIRM comes only from the larger DID after
  successful final admission. Do not repeat derived lease expiration in these
  acknowledgments.
- REJECT permits an explicit bounded establishment failure reason before the
  candidate is closed, when the transport is still writable. It is best-effort;
  do not delay required cleanup or require an already-closed transport to send it.
- Treat a rejection as coming from the expected peer only once identity is proven:
  mutual TLS on TCP, or a valid Unix AUTH identity proof. An unproven HELLO claim
  alone does not make a rejection an authenticated policy decision.
- A peer may observe only transport closure, particularly when an open callback
  explicitly closes before raising. Do not claim every close conveys a reliable
  refusal reason; apply the observable phase/failure and election-commit rules.

Frame type/reason code assignments and final rejection-to-local-error mappings
remain to be chosen. The token bundle encoding is the same as for stream OPEN.

## Agreed: Renewal Frame Payload Layouts

vyzo approved these layouts; all renewal frames use stream ID zero. Correlation IDs are u64,
expirations and deadlines are both u64 Unix seconds.

| Frame | Payload, in order |
| --- | --- |
| RENEW-REQUEST | Request ID; required expiration; request deadline |
| RENEW-RESULT | Request ID; u16 status/reason |
| RENEW-OFFER | Round ID; required expiration; operation deadline; coordinator token bundle |
| RENEW-AUTH | Round ID; u32 selected coordinator token index; responder token bundle |
| RENEW-COMMIT | Round ID; u32 selected responder token index |
| RENEW-ACK | Round ID |
| RENEW-ABORT | Round ID; u16 reason |

- Put the correlation ID first, allowing stale-round/request handling before
  expensive token decoding. Preserve envelope and structural length checks.
- Use zero status for successful RESULT and nonzero reasons for failures.
  REJECT, OPEN-REJECT, RESET, and RENEW-ABORT do not use success as a reason.
- Do not repeat lease expiration in RESULT or ACK: both endpoints derive the
  installed lease from selected credentials, and RESULT cannot grant authority.
- RENEW-AUTH acknowledges the coordinator's original bundle index; COMMIT
  acknowledges the responder's original bundle index. Neither is a sorted-list
  position. Token bundles use the same encoding as initial AUTH and stream OPEN.
- Initial Unix AUTH is the only payload with that transport-specific identity
  proof suffix. Renewal relies on the established transport identity model and
  fresh signed UCAN credentials; do not add another Unix challenge/signature round.

Exact frame type and nonzero reason-code assignments remain to be chosen. Keep
all agreed coordinator roles, deadlines, commit boundaries, and failure rules.

## Agreed: Frame And Reason Codes

vyzo approved these frame codes and reason/status semantics:

- Assign initial-handshake frame types 0x01 through 0x05, in order: HELLO, AUTH,
  ACCEPT, CONFIRM, REJECT.
- Assign stream frame types 0x10 through 0x16, in order: OPEN, OPEN-ACCEPT,
  OPEN-REJECT, DATA, WINDOW-UPDATE, FIN, RESET.
- Assign renewal frame types 0x20 through 0x26, in order: RENEW-REQUEST,
  RENEW-RESULT, RENEW-OFFER, RENEW-AUTH, RENEW-COMMIT, RENEW-ACK, RENEW-ABORT.
- Other frame types remain invalid for v0 under the agreed unknown-frame rule.

| Reason/status | Code | Meaning |
| --- | --- | --- |
| OK | 0 | Successful RENEW-RESULT only |
| CLOSED | 1 | Object closed |
| REFUSED | 2 | Monitor/application admission refusal |
| AUTH-FAILED | 3 | Recipient's presented credentials rejected |
| LIFETIME | 4 | Recipient's presented credentials have insufficient lifetime |
| LIMIT | 5 | Resource capacity exhausted |
| TIMEOUT | 6 | Operation deadline expired |
| CANCELLED | 7 | Operation abandoned |
| DUPLICATE | 8 | Competing connection candidate not selected |
| VERSION | 9 | Unsupported wire version |
| PROTOCOL | 10 | Invalid protocol exchange |
| INTERNAL | 11 | Unexpected local failure; details remain local |
| NO-CREDENTIALS | 12 | Sender cannot supply eligible credentials of its own |
| HEADROOM | 13 | Existing lease has insufficient time left for renewal |

- Reasons are explanatory, not additional control commands. Treat an
  unknown nonzero reason as a generic failure, retaining its numeric value for
  diagnostics, rather than closing otherwise valid shared transport merely for
  an unfamiliar explanation. Never interpret an unknown reason as success or
  permission to retry credentials.
- Credential failure reasons use the sender/recipient distinction refined below.
  HEADROOM cannot be repaired by switching credentials. Preserve the agreed retry
  rules rather than blindly retrying every failure with another credential.
- Code zero is invalid in rejection, RESET, and ABORT frames. Code values do not
  replace state/role validation or guarantee best-effort reasons reach the peer.

Local exception mapping remains a separate API decision. Do not send local
exception objects, stack traces, or arbitrary diagnostic strings on the wire.

## Design Consistency Review

A read-only review after wire-code agreement identified four consequential items.
All four have now been explicitly resolved; the approved resolutions are:

1. Retain pending reservations through final callbacks and local protocol
   completion, or actual cleanup on failure, not merely object construction.
2. Capture headroom at each local attempt/round start and hold that threshold
   fixed during validation; retries do not restart the operation deadline.
3. AUTH-FAILED/LIFETIME describe the recipient's presented credentials; separate
   NO-CREDENTIALS and HEADROOM codes cover sender inability and old-lease time.
4. Advisory admission runs before outgoing dialing/OPEN and after incoming
   identity/credential validation, inline and outside locks; not on reuse/renewal.

Worker shutdown must include all network-owned work and eligible notifications,
not merely joining transport threads; this follows the existing approved contract.
Waiter-count limits remain separate from physical-attempt limits and have not been
selected. Other old remaining-topic lists include items already settled later.
Do not reopen explicitly deferred decoder budgets or other deferred features.

## Agreed: Retain Pending Reservations Through Completion

vyzo approved this refinement of the earlier pending-to-live transfer rule:

- Keep a pending-connection reservation through authentication, final open callback,
  and local establishment completion: successful CONFIRM output at the larger DID
  or valid CONFIRM receipt at the smaller DID. Only then release pending accounting.
- Keep a pending-stream reservation through successful local open notification
  and acceptance completion: OPEN-ACCEPT output for the recipient, or receipt/
  validation for the opener. A callback-visible object may still consume a
  pending reservation while this work completes.
- Failure/cancellation retains the reservation until associated work and resource
  cleanup have actually finished. Starting cleanup is not enough to recycle it.
- Each stream consumes its total-cap slot exactly once throughout pending/open
  states. Holding pending accounting does not double-count the total stream cap.
- Monitor-owned registration in on-open is separate from internal pending work
  accounting. Keep callbacks outside locks and preserve all notification rules.

This keeps the pending caps meaningful without adding monitor reservation APIs.

## Agreed: Fixed Headroom Checkpoints

vyzo approved this fixed local checkpoint interpretation:

- At each local connection authentication attempt or renewal round start, capture
  an eligibility threshold H = start + the applicable configured timeout T.
  Do not recalculate H as now + T when credentials arrive or validation progresses.
- Require candidate expiration to cover both H and the fixed requested expiration,
  and still be unexpired when used. Signature, identity, chain, and trust checks
  remain unchanged; the actual operation deadline is checked independently.
- Before starting a renewal round, also require the existing local lease to cover
  H. A refusal for insufficient headroom leaves that old valid lease unchanged.
- A fresh authentication/credential-retry round captures its own H but retains
  the original operation deadline. Full configured-timeout eligibility is not
  relaxed merely because queueing or earlier retries left less execution time.
- Each endpoint uses its local start checkpoint: initial attempt setup or renewal
  round handling. Peer arrival delay and clock differences can still make a
  boundary request fail eligibility; exactly T of headroom at one endpoint is
  not a promise that the other endpoint will accept it.

This fixes the reference point without silently lengthening credentials, changing
requested expiration, or restarting operation budgets. Minimum stream-token TTL
and additional decoder budgets remain outside this decision.

## Agreed: Credential Failure Reason Scope

vyzo approved refining two existing reason meanings and adding two codes without
changing any frame layout:

| Reason | Code | Meaning relative to message sender/recipient |
| --- | --- | --- |
| AUTH-FAILED | 3 | Sender rejected the recipient's presented credential bundle |
| LIFETIME | 4 | Recipient's presented credentials cannot cover the required lifetime |
| NO-CREDENTIALS | 12 | Sender cannot supply eligible credentials of its own |
| HEADROOM | 13 | Existing lease has insufficient time left to start renewal |

- Codes 3/4 can trigger eligible alternatives for the recipient's own credentials,
  only when the peer identity and protocol phase make that interpretation valid.
- Before sending NO-CREDENTIALS, the sender considers its own available eligible
  alternatives under the agreed failover policy. Receiving that reason is not a
  reason to cycle the recipient's unrelated supplied parents.
- HEADROOM never triggers credential failover: changing a token cannot add time
  to the old negotiated lease before renewal is authorized.
- Preserve all other codes and the rule that unknown nonzero reasons are generic
  failure. Initial REJECT and renewal ABORT/RESULT retain their existing payloads.

This supersedes reliance on phase alone to distinguish all credential failures,
and separates old-lease headroom from code 4.

## Agreed: Anchor Admission And Missing Host Keys

During auth implementation review, vyzo rejected skipping bad stored output
anchors in `provide!`: invalid anchors must not enter the capability context.
He explicitly requires verification of input anchors as well as output anchors.

- Verify signatures, expiration, and delegation chains before storing either
  anchor kind. Invalid credentials are insertion errors, not alternatives to
  silently skip during outgoing construction.
- Installing an anchor remains an explicit policy decision; credential checking
  does not require an already configured root/input trust path.
- Preserve the simple `provide!` construction path instead of adding repeated
  preverification and per-anchor exception suppression.
- A missing host principal key is a broken local prerequisite. Propagate the
  original keystore error, rather than converting it into no eligible credentials,
  in both direct and supplied-parent network credential construction.

vyzo clarified that the database can be assumed to be manipulated only through
a capability context. Insertion verification plus expired-row cleanup establish
the invariant. Do not reverify, filter, or repair anchors when opening a context.
Manual insertion of invalid anchors bypasses the supported API and is not our
responsibility; such credentials may fail at provide! time. This supersedes the
brief proposals to reject or repair invalid persisted anchors on opening.

## Agreed: Implicit Principal Roots

vyzo requires capability contexts to consider keystore principals as verification
roots, so grants from local principals can verify without separately registering
each DID. At context opening, list the private-key DIDs and retain them in a
private `implicit-roots` slot; check these as roots during token verification.
This supersedes the earlier statement that principal possession confers no trust.
Signatures, expiration, and delegation validation still precede trust matching.

The implementation uses an opening-time snapshot, separate from explicit stored
roots. Explicit root APIs do not remove implicit trust. Keys added after opening
enter the next context's snapshot; an existing context can use add-root! for
immediate explicit trust. No private keys are loaded merely to build the snapshot.

## Agreed: Exceptions Abort Authentication Operations

During auth review, vyzo rejected exception-content inspection and permissive
handling of encoding/decoding errors. Expect well-formed data; any exception is
cause for abort, not an invitation to infer a recoverable cause from its message
or irritants. This applies to identity normalization, token serialization and
deserialization, delegation, and context calls.

Removed the DID-error classifier, cycle precheck, redundant chain identity walk,
and construction/decoding exception handlers. Use the existing UCAN codec and
verification APIs directly and propagate their exceptions to the operation owner.
Ordinary verification failure results remain candidate rejections, not exceptions.

This supersedes the earlier policy of skipping blobs that fail token decoding,
malformed ancestor DIDs, or caught delegation errors. It does not add decoder
budgets or change the token format. Owners must abort on propagated exceptions.

## Agreed: Source-Level Exception Refinement

The approved retry-driver increment distinguishes failures at their sources rather
than wrapping arbitrary exceptions at the connector. SocketConnectError derives
from OSError and IOError at immediate connect and asynchronous SO_ERROR failure;
the existing syscall retry machinery retains EINTR/pending handling and errno.
Only an explicit endpoint errno whitelist permits fallback, never invalid arguments,
descriptor/memory exhaustion, or OSError from other operations. ResolverError
derives from IOError. The approved simplification catches only native OS exceptions
from `host-info` and retains the original argument list, hostname, and source
context. All native OS failures of this lookup are classified as resolver failures;
there is no FFI or native facility/status classifier. Non-OS argument, type,
allocation, and programming exceptions propagate, and address conversion stays
outside the catch. This supersedes the earlier encoded-lookup-status classifier.

SSLHandshakeError derives from SSLError at negotiation, while local setup failures
remain terminal SSLError. Known native allocation/internal/syscall distinctions are retained;
negotiation failure is not a blanket assertion of peer fault. Certificate policy
and wrong expected DID raise TLSPeerIdentityError at the network TLS source checks.
Other crypto/contracts propagate. Timeout and Closed terminate; broad IOError is
never a fallback predicate. Authentication/codec/monitor exceptions still abort.

All setup failures retire reservations after socket cleanup, independently of
whether retry is permitted. Cleanup must not suppress monitor programming errors.
Repeated credential retries carry the current complete endpoint sequence, with
the rejecting DNS entry replaced by its concrete peer endpoint. Owner/election/
streams remain outside this increment; exposing raw sockets during TLS for owner
cancellation is explicitly unresolved integration work.

## Agreed: Integer-Second Authentication Timing

During auth review, vyzo requested integer seconds instead of real timestamps and
microsecond operation deadlines. The subsecond precision had no compelling use
in the initial implementation. All authentication starts, current timestamps,
headroom thresholds, expirations, and operation deadlines use integer Unix seconds.
Handshake, stream-open, and renewal budgets accept positive exact integer seconds.
Remove fractional-time predicates, real conversion, scaling, and quantization.

Renewal deadline fields retain their u64 representation but now mean Unix seconds;
the protocol is unshipped and no compatibility layer is needed. The separate
connection/stream `IOTimeout` API and its precision remain unchanged. Fixed-start
headroom, inherited deadline capping, and independent lease enforcement remain.

## Remaining Engineering Choices

Credential-choice ordering refinement approved by vyzo: if the initiating caller
supplied no auth, try the provide! path first, then distinct supplied parents in
stable longest-expiration-first order. An explicit initial parent participates in
that ordering; a no-auth joining caller adds no new credential choice. Construction
and decoding exceptions remain terminal, while ordinary eligible rejection results
permit retry. The implementation deduplicates transparent Token objects by structural equality
and closes the choice queue atomically on exhaustion to reject late additions.

Later listener review agreement: vyzo approved a cooperative sidecar lock for
Unix sockets. Acquire an exclusive nonblocking advisory lock on `sock.lock`
before binding `sock`; contention fails without touching the socket path. Hold
the lock throughout the listener lifetime. While locked, remove a stale socket
before bind and clean up after failure/shutdown, then release the lock. Never
delete the sidecar itself, since all owners must lock the same inode. Refuse to
delete regular files, directories, or symlinks at the socket path. This supersedes
the earlier blanket prohibition on pre-unlink; it does not restore socket inode
tracking or protect processes that bypass the cooperative lock protocol.

Earlier listener review refinement: vyzo rejected file-info tracking and pathname identity
checks. Let the OS report bind failures; do not pre-unlink existing paths. Retain
the owned Unix pathname for direct deletion on shutdown, assuming it is not
externally removed or replaced while the listener owns it. This supersedes the
earlier device/inode-checked replacement-preservation cleanup proposal.

Latest stream-ring decision (2026-09-11): vyzo explicitly approved adopting
`:std/io/bio/cache` for stream receive/send rings now, overriding the earlier
blanket network-cache deferral for these buffers only. Require positive powers of
two for local `StreamLimits.recv-window` and `outbound-buffer`, retaining u32 and
native-capacity bounds respectively; reject nonpowers without rounding. Peer
receive windows remain arbitrary positive u32 values compatible with native
fixnums. Borrow lazily on first nonempty input; return only nonempty vectors once
at receive FIN/final consumption, output FIN transport completion, or abort.
Abort retains send storage until outstanding DATA transport ownership ends.
Clear ring references on return. No public I/O, waits, or timeout integration is
included, and no performance improvement is asserted.

General wire buffer-cache adoption remains deferred until the network is
implemented. vyzo requested a controlled comparison of large interleaved transfers,
timed with Gambit's time primitive macro, between the existing allocation path
and a cached-buffer variant.
Repeat with reproducible randomized chunk sizes and compare runtime and GC pressure.
See the Cache Adoption Benchmark section in implementation-notes.md for the test
plan. Revisit this after implementation, not as a prerequisite to completing it.

The behavioral decisions above and the four consistency-review resolutions are
approved. The following are not reasons to reopen settled behavior, but still
need concrete choices during implementation/review:

- Exact slot names, typed signatures, constructor validation, and private module
  boundaries. Enforce agreed positivity/wire ranges rather than truncating values.
- Buffer/queue representation, timer integration, cancellation cleanup, ownership
  registration races, and bookkeeping for shutdown completion and deferred callbacks.
- Supplied-credential deduplication and synchronization of late arrivals with
  terminal attempt failure. Do not change the approved candidate ordering/retry rules.
- Existing socket-library integration, listener backlog/options, and Unix socket
  pathname ownership checks. Do not add automatic stale-path deletion.
- Local exception mapping and final public exports/documentation. Approved initial
  approach: reuse Closed, Timeout, and IOError with public diagnostic context,
  preserving original callback/underlying exceptions where already agreed, rather
  than introducing another exception hierarchy.
- Additional joined-caller limits have not been selected. Approved initial scope:
  leave application caller concurrency to the host; do not claim physical pending
  caps bound caller-owned work or silently add a waiter-limit API.

Previously listed open topics elsewhere in this chronological record may have
been settled by later explicit agreements. The latest refinement governs.

## Agreed Implementation Stages

vyzo approved the staged plan and initial scope, requesting that this design-notes
document be committed before implementation begins. Commit the design record
first, then begin with foundations; do not include implementation in that commit.

1. Foundations: NetworkConfig and nested limits classes together in config.ss; approved interface additions
   (ttl:/expire:, expiration getters, listen! returning Address); adjacent docs
   and focused constructor/contract tests.
2. Wire/auth utilities: frame/reason constants, bounded codecs, credential ordering
   and selection, deadline/headroom helpers, and Unix transcript/proof tests using
   existing UCAN and cryptography APIs. No deferred decoder-budget work.
3. Network establishment: listeners, pending accounting, TCP/TLS and Unix identity,
   address/credential fallback, asymmetric ACCEPT/CONFIRM election, publication,
   monitor lifecycle, and shutdown ownership. Test both transports and crossed races.
4. Multiplexed streams: bounded buffers, credits and scheduling, OPEN/accept/reset,
   reader/writer behavior, expiry, I/O timeouts, and late-frame handling. Test
   backpressure, minimum reads larger than the window, and cross-stream isolation.
5. Renewal: coordinator/request coalescing, authorization rounds, credential
   failover, deadlines, commit/ACK transitions, and ambiguous-commit shutdown.
6. Integration: public facade, package logger, end-to-end/failure-race tests,
   documentation review, and security review of new network/I/O code. Logger use
   begins with the first implementation modules, not only at this final stage.

Build and run relevant tests incrementally at each stage with the repository's
stdlib workflow. Do not commit or push without a separate request. No code beyond
the approved monitor comment has been changed during design.

## Resume Here

The design phase has added this notes file and the explicitly requested comment-only
NetworkMonitor shutdown warning in interface.ss. No network implementation code or
interface signature changes have been started. Construction/ownership, inline monitor dispatch, TCP/TLS,
and signed plaintext-Unix establishment are approved. Mutual INVOKE authorization
for `/network/connect/v0` uses provide! bundles or a singleton delegated token;
at least one valid matching candidate must authorize each direction. The local
host/OS is trusted against Unix-channel relays. vyzo chose expiration-bound
connections to accommodate future revocation; admission-only authorization was
rejected. Connections close on expiry. Limited in-band renewal is approved when
an explicit connect! ttl:/expire: requests a later deadline; automatic renewal is deferred.
Renewal refusal preserves a still-valid old lease and reports failure to the caller.
Full requested TTL is required; partial extensions are rejected. Connection.expire
is approved. Required expiration is explicit expire: or fixed at operation start
plus TTL, and the
one-hour setting is a default, not a peer-request ceiling. HELLO/AUTH/ACCEPT/CONFIRM is
approved for initial establishment. One shared connection per peer is approved.
Pending-attempt joining and lexicographic initiator preference for crossed
handshakes are approved. Network identities use canonical DIDs and self/same-DID
connections are rejected. Opener-to-recipient stream authorization is approved.
Streams expire with their own authorization or their connection, and stream-specific
renewal is deferred. Stream-token TTL is independent of the connection lease.
The one-hour stream default and Stream.expire are approved. Both connect! and
open-stream! accept ttl: and expire:, with expire: taking precedence, so a future
host API can coordinate both leases through one deadline. Low-level stream opening
does not implicitly renew the connection. Stream IDs and an
OPEN/OPEN-ACCEPT/OPEN-REJECT exchange with no speculative DATA are approved.
vyzo requires configurable per-stream unread-data windows and backpressure.
Receiver-advertised byte credits and consumption-driven WINDOW-UPDATE frames are
approved, as are the updated 256 KiB receive/send buffering limits and 128-stream
cap, without a separate connection-wide credit protocol. User-supplied limits
classes are required and share config.ss with NetworkConfig under the later
module-plan refinement. Detailed slot/validation choices remain implementation work.
Graceful writer FIN, buffered-data-before-EOF, whole-stream RESET/abort, expiry
abort, and retaining stream slots through final unread-data disposal are approved.
One reader and one writer per connection, round-robin DATA scheduling, and bounded
control priority are approved. The fixed 13-byte frame header (type u8, stream ID
u64, payload length u32, network byte order) is approved. Explicit binary control
layouts, existing marshaled token blobs, and exact encoded bytes for the
domain-separated Unix authentication transcript are approved. The current
control allowances are 4 KiB for HELLO and 64 KiB for other control messages,
as requested by vyzo. Tokens remain in AUTH, not HELLO. The 16 KiB DATA limit,
advertisements in HELLO, fixed per-connection limits, and no control fragmentation
are approved. The separate 10-second stream-opening timeout and cancellation/
late-accept handling are approved. Explicit Stream.reader closure aborts the whole
stream initially, without STOP-SENDING; reading EOF alone preserves the opposite
direction. vyzo may revisit reader-close semantics based on application experience.
Graceful writer close waits for DATA/FIN transport output under one write-timeout
budget and aborts the stream on timeout or cancellation, as approved. Prompt inline
monitor admission on both opening directions is approved. vyzo clarified that
allow methods gate resource use for new objects,
not renewal: neither connection renewal nor unchanged reuse reruns admission.
Renewal still requires mutual UCAN authorization. Separate pending-connection and
pending-stream limits are required. Their approved reservation model counts
physical connection attempts network-wide and stream openings per connection,
with the pending-stream cap inside the existing total stream cap. Defaults of
32 pending connections and 16 pending streams are approved. vyzo chose advisory
allow checks with explicit final rejection in on-open callbacks by closing the
object and raising Closed. No monitor reservation API is needed. Expected Closed
handling and completing callbacks before reporting opening success are approved.
Other callback failures are contained to the affected admission/object, local
errors propagate after cleanup, and cleanup continues despite close-notification
exceptions. One shared network package logger logs unexpected exceptions as
errors. Per-object notification ordering is approved: on-open must return normally
to qualify for on-close; any open exception aborts without a close notification,
for both connections and streams. Failed callbacks roll back their own monitor
registration. Eligible stream-close notifications finish before connection-close,
without delaying resource shutdown, as approved. Consumption-driven credit updates
coalesce per stream without a batching timer or minimum threshold; the default
control burst is eight frames before one ready DATA frame, as approved. Pending
control output is bounded by 256 frames and 256 KiB per connection; new local work
fails at capacity and mandatory-control overflow closes the connection, as
approved. Source inspection found per-container decoder limits but no cumulative
allocation/nesting budget. vyzo explicitly deferred additional decoder budgets,
candidate-count and chain-bound proposals; they are not implementation prerequisites.
Keep the existing encoded-byte and decoder checks. The whole pending connection
attempt has a 10-second default budget starting at reservation, implemented with
an absolute socket deadline, as approved. Sequential address fallback with Unix
first and a shared establishment deadline is approved. Address/transport and
wrong-peer failures permit fallback; admission and callback rejection stop cycling.
Joined callers preserve individual lease requirements and waiter cancellation is
isolated, as approved. vyzo additionally requires trying alternative supplied
credentials after credential failure before failing shared establishment. The
credential-failover mechanism retries distinct credentials using
fresh handshakes under the original deadline, without an in-band AUTH retry, as
approved. The original connection initiator coordinates one renewal round at a
time, with fixed targets and later requests waiting for subsequent rounds, as
approved. RENEW-OFFER/AUTH/COMMIT/ACK, old-lease preservation before commit, and
closure on unresolved post-commit uncertainty are approved. Renewal requires at
least its timeout (default 10 seconds) remaining on the old lease; connection
credentials also need at least the applicable timeout remaining. vyzo requested
longest-expiration-first credential ordering, superseding bundle/arrival order.
Stable ties and acknowledgment by original wire index are approved. Monotonic
round IDs, a retired high-water mark, RENEW-ABORT before commit, and credential
retries under one original renewal deadline are approved. Correlated responder
RENEW-REQUEST/RESULT, one outstanding wire request, and local coalescing are
approved; results do not grant authority. Renewal request deadlines start before
queueing and remain distinct from shared round state, as approved. Established
I/O defaults to no timeout; connection timeouts affect transport and stream
timeouts abort only the affected stream, as approved. Bounded-copy short writes,
caller buffer ownership, incremental minimum reads with credit return, and one
application reader/writer per direction are approved. Monotonically ordered OPENs
and per-direction high-water marks handle late frames without retaining all old
IDs, as approved. Active protocol-state and credit violations are connection-fatal,
while normal stream-local failures and stale-frame exceptions remain local, as
approved. Malformed outer control encoding is fatal, while invalid well-delimited
credential blobs are skipped before rejecting an operation for lack of a usable
candidate, as approved. Wire v0 only, HELLO validation before AUTH, and address
fallback for incompatible/malformed establishment are approved. The current
closed-object API is approved: stable metadata remains usable and normal handle
EOF/closed semantics are preserved, but Network.peers/connections/listening raise
Closed after Network.close. Empty post-close snapshots were explicitly rejected
as masking application bugs. Nested NetworkLimits, ConnectionLimits, and StreamLimits
objects are approved, immutable by convention while in use and separate from TTL/
timeout settings. Both stream DATA buffering defaults are now 256 KiB, giving
32 MiB receive and 32 MiB outbound DATA bounds at the 128-stream cap. The approved
constructor is make-network(host, context, monitor), with limits: and config:, one
monitor, and no implicit listening/connecting. NetworkConfig holds TTLs, operation budgets,
and default connection/stream input/output IOTimeout values. Empty connect!
address lists mean reuse-or-join without independent dialing/discovery, as
approved. Listener lifecycle is approved: publish after successful bind/listen,
reject duplicate binds, and preserve Unix path ownership during bind/cleanup.
Network.listen! will return the actual bound Address (not :void), also recorded
in Network.listening, so port-zero callers can obtain the assigned port directly.
Interface signatures remain unchanged; only the approved shutdown warning was added.
The Unix proof encoding is approved:
32-byte HELLO challenges, 64-byte Ed25519 signatures, and a domain-separated,
length-delimited transcript of exact HELLO payloads, role, and sender bundle.
Network.close waits for owned work and must be dispatched outside monitor
callbacks/network workers, as approved. The requested warning has been added to
NetworkMonitor comments in interface.ss; this is a comment-only design-phase
change, not implementation. The approved election refinement uses the smaller DID
as establishment coordinator: larger-DID ACCEPT means readiness, smaller-DID
ACCEPT commits selection, and larger-DID CONFIRM follows its successful callback.
Common wire widths are approved: u64 IDs/lease seconds/deadline seconds,
u32 lengths/counts/indices/windows/credit, and u16 versions/reason codes. Stream
payload layouts, zero-based token indices, positive windows/credit, and nonempty
DATA are approved. Initial HELLO/AUTH/ACCEPT/CONFIRM/REJECT layouts and best-effort,
identity-qualified rejections are approved. Renewal payloads with correlation IDs
first, zero RESULT status for success, original bundle indices, and no redundant
lease expiry/Unix proof are approved. Grouped frame codes and numeric reasons are
approved; unknown nonzero reasons mean generic failure, not a new protocol action.
The consistency review identified pending-reservation completion, fixed headroom
checkpoints, credential-failure reason scope, and advisory admission call points
for explicit resolution. Pending slots are retained through callbacks and local
protocol completion, not merely object construction, as approved. Fixed local
headroom checkpoints and original operation deadlines across retries are approved.
AUTH-FAILED/LIFETIME refer to the recipient's presented credentials; NO-CREDENTIALS
(12) describes sender-side inability and HEADROOM (13) insufficient old-lease time,
as approved. Advisory admission call points are also approved; all four items from
the consistency review are resolved. vyzo approved the staged implementation plan
and initial scope (existing error types and no new waiter-limit API), requiring
this design document to be committed before implementation. Commit only this
document first; the separately requested interface comment can accompany later
interface work. Then begin the foundations stage. The subsequent module-plan
refinement combines defaults and limits in config.ss and names the defaults
aggregate NetworkConfig; do not introduce a generic Config or separate limits.ss.

Earlier design-phase deferrals in this chronological record do not override this
final approval; explicitly deferred features remain out of scope. Re-read current
source and working-tree status before making changes. This file is a design
record, not a substitute for checking the code. No implementation commits or push
are authorized by the request to commit this design document.

## Agreed: Separate Election History Limit (2026-09-11)

vyzo approved a separate configurable `NetworkLimits.election-history`, default
256, instead of deriving the retained commit-record cap from `pending-connections`.
Like physical admission capacity, it accepts nonnegative fixnums; zero disables
new history reservations. It counts retained and active committed peer records,
not physical setup/handshake reservations. The physical limit remains independent
and defaults to 32, with no cross-field ordering constraint.

History exhaustion keeps the existing `IOError` behavior and never evicts cohort
protection. Generation cutoffs, pruning on identification/retirement, and recovery
after old work resolves are unchanged. This supersedes the provisional shared-value
internal cap, not the existing commit or opening transition timing.

The current internal owner has no application callbacks. Reserving history before
the open callback remains a future integration consideration, not part of this
approval or implementation. No new exception taxonomy, callback adapter, commit,
or push is authorized by this limit change.

## Agreed: Cooperative Network Cancellation (2026-09-12)

Later on 2026-09-12, vyzo explicitly approved replacing exception-raising
`thread-interrupt!` as a network correctness requirement with cooperative
cancellation and synchronous fault injection. At this stage it superseded the earlier
network safe-boundary retry requirements, but left the global exception type/policy
in place. The later API withdrawal below supersedes that limitation. Neither decision
authorizes core/runtime or global documentation changes in this docs-only pass.

- Network close, stream abort and pending cancellation publish terminal/cancelled
  state under the associated mutex and signal/broadcast the corresponding CVs
  while holding that mutex. Waiters recheck state and their existing deadlines.
- Close owned sockets before joins to interrupt blocked IO structurally through
  transport closure, not by injecting an exception into a thread. Production
  network code does not invoke `thread-interrupt!` for cancellation.
- `Connection.close` and whole-stream/reader abort remain callback-safe and do not
  join their invoking callback. Blocking `Network.close` joins owned work and
  completes eligible callbacks before returning; invoke it from an application
  worker, never inline from a monitor callback or network worker.
- A credential/admission worker finishes its current context, encoder or callback
  call, then observes cancellation before further publication. No unsafe preemption
  is permitted. Quotas, staged controls, resource ownership and worker handles
  remain held until the associated work, cleanup and eligible notifications finish.
  A cancelled waiter returning is not worker completion or permission to reclaim
  a live borrow. Shutdown is not a hard real-time guarantee for a stalled external call.
- No early public waiter-cancel API is added. Public callers use existing deadlines
  and global close; source-private cancellation tests exercise internal state/CV
  paths without adding production injection hooks or cancelling shared work merely
  because one waiter leaves.
- Constructor failures, callback exceptions (including raised `#f`), and failures
  after normal callback return still require ownership cleanup. A normally returned
  open callback retains its eligible close notification even when a later step
  fails; a failing open callback does not acquire that eligibility. Use synchronous
  faults at source-private boundaries to test these obligations, not asynchronous
  thread injection. No correctness promise covers arbitrary external
  `thread-interrupt!`, forced termination or arbitrary continuation escapes.

At this intermediate stage, source still contained older defensive catches and
main's removal scope covered only the new retry machinery. Those catches were not
a production cancellation mechanism. The later withdrawal removed them as well;
ordinary address/credential fallback and ownership cleanup remain separate.

Observed evidence: a core failure showed a bogus thread object as the program
counter (thread-as-PC) during a CV wake after earlier interrupt-injection cases.
The cooperative runs passed 2000 CV handovers and 20 real-stage iterations under
live GDB. A
causal connection to the earlier interruption cases is a hypothesis, not proved;
these observations neither establish a core root cause nor claim a core bug fixed.

This entry recorded the decision and reported observations, not a verification run
performed by that docs-only pass. Historical test descriptions/results remain
historical; the later main verification checkpoint below records the replacement
tests separately. Consult the main-owned implementation handoff for revision-specific
commands and results. That earlier pass did not edit the handoff, production, tests,
build files, runtime, AGENTS or global docs, and authorized no commit.

### Historical Main Verification Completed (2026-09-12)

Before the subsequent API withdrawal, main reported the cooperative conversion
verified: all network test source was free
of `thread-interrupt!` and `thread-terminate!`, and production network code never
called `thread-interrupt!`. The new explicit retry wrappers in stage handlers,
completion and join paths had been removed. Some defensive `Interrupt` catches
still remained at that checkpoint, without an asynchronous guarantee. This completed
the intermediate scope, not the subsequent API withdrawal.

- The 8-core stdlib build passed.
- All 11 public network API and 12 OPEN ownership cases passed.
- The broad 33-module network, UCAN and shared-IO regression passed, excluding
  `std/sync/threads-test` and `std/sync/rwlock-test`. Those intentional asynchronous
  hazard tests were unchanged and outside that scope; no pass was claimed for them.
- A formatting-only rebuild passed, followed by another pass of all 23 public
  API/OPEN cases.
- Source case counts then were 16 framed, 20 transport, 15 parent, 25 scheduler
  and 16 StreamIO cases. These counts do not replace older audit checkpoints.

These results do not prove the cause of the native thread-as-PC crash or that it
has been fixed. The live-GDB cooperative observations above support no stronger
causal claim. Renewal is still required for the complete API; that checkpoint verified
the then-current original-lease milestone, not full API completion or later revisions. Exact commands and revision
scope remain in the [main-owned handoff](implementation-notes.md).

## Agreed: Interrupt API Withdrawal (2026-09-12)

After the cooperative-conversion checkpoint above, vyzo explicitly withdrew the
added `:std/error` `Interrupt` API and all asynchronous raising-recovery machinery
from the earlier attempt. This is user-requested removal, not deprecation, an
optional fallback, or an instruction to allocate or retry that exception.

- Current `error.ss` no longer defines or exports the class or its predicate.
  `error-test.ss` contained only the two added Interrupt tests; removing both removed
  that file, not unrelated standard-error coverage.
- RWLock is back to normal acquisition loops, without asynchronous acquisition
  cleanup, holder restoration or interrupted-waiter withdrawal. Normal cleanup for
  successfully acquired lock bodies remains.
- The remaining network `Interrupt` catches and asynchronous abort, release, wake
  and native-close retries are removed, in addition to the earlier removal of
  stage-handler/completion/join retries. No historical defensive catches remain as
  synchronous fallbacks. Ordinary address/credential fallback is unchanged.
- Cooperative state/CV cancellation, normal failure propagation and ownership
  cleanup continue, including socket-first abort and release of ended borrows.
  Lease-gated deferral followed by ungated ownership release is not exception-based
  retry. SSL lifetime cleanup, including native SSL release after retained raw
  socket closure, is preserved. The shared Reader minimum-read fix is unchanged.
- Preexisting debugger, profiler and REPL interrupt primitives are outside scope;
  this withdrawal does not remove those unrelated facilities.

The builds, regressions and live-GDB observations above remain genuine historical
checkpoints, separate from the removal verification below and not proof of a native
crash fix. This docs-only pass performs no builds/tests and
does not modify the main-owned `implementation-notes.md`, implementation, test,
build, core/runtime or global documentation files.

### Removal Verified By Main (2026-09-12)

Main reports the following completed validation of the withdrawn API/recovery code:

- The 8-core `make stdlib` passed, including the full transitive stdlib rebuild
  after the `std/error` change. This was not a core or full Gambit build.
- All 54 focused cases passed: 3 cooperative RWLock, 16 framed connection,
  20 connection transport and 15 native Reader cases.
- The broader 33-module command passed all network, UCAN and supporting IO tests.
  Compared with the previous 33-module command, it removes deleted `std/error-test`
  and adds the new cooperative `std/sync/rwlock-test`. It does not include the shared
  `std/sync/threads-test` intentional-termination suite.
- No `Interrupt` references remain in `src/**/*.ss`; introspection against
  `build/lib` confirms that the built error module no longer exports it.
- Static review found no normal-cleanup regressions or missed asynchronous-only
  overhead. The CV ownership guard remains necessary for ordinary `Timeout` after
  the mutex has been released. The `released?`/`notified?` flags protect ordinary
  error cleanup. Native SSL lifetime cleanup and the Reader minimum/EOF fixes remain.

The [main-owned handoff](implementation-notes.md) is authoritative for exact commands
and revision scope. These are main's reported results, not runs performed by this
docs-only pass. Main may perform a final formatting-only pass and rebuild; that
follow-up is not yet claimed complete and will be documented separately by main.
Neither these results nor earlier checkpoints establish a native crash fix or
complete the deferred renewal API.

## Correction: Writer Consumes The Entire Requested Slice (2026-09-12)

vyzo clarified that `Writer.write` must consume the entire requested slice or raise.
The earlier claim that the interface permits a successful short return was incorrect.
The internal `stream-produce!` ring operation may copy a bounded prefix, but StreamIO
must loop and wait for capacity until all bytes are accepted under one captured
deadline. Success returns `end - start`; a timeout or closure after partial progress
raises rather than reporting that prefix as a successful write.

The prototype end-to-end test's single 4 MiB write exposed this production bug:
the old StreamIO returned 262144 instead of 4194304. Preserve that single-call
assertion and ten concurrent 4 MiB transfers. `io-copy!` correctly relies on the
whole-write contract and must not be patched to hide a nonconforming StreamIO.
Internal bounded buffering, transport ownership and Reader minimum semantics are
unchanged. Later write-timeout setter calls and progress do not reset an ongoing
write's deadline. This correction does not claim support for connection renewal.

## Agreed: Renewable Connections And Connection-Linked Streams (2026-09-12)

vyzo approved explicit API policies for long-lived use without an infinite grant:

- `Network.connect!(..., lease: 'renewable)` maintains finite, mutually authorized
  connection leases using available credentials and fresh credentials on renewal.
- `Connection.open-stream!(..., lease: 'connection)` survives connection renewals
  when its protocol-specific authorization can also be renewed. Connection renewal
  alone never extends a stream grant.
- Preserve Stream/Connection identity, Reader/Writer handles, buffered data, flow
  control and FIN state. Successful renewal does not repeat admission/open callbacks.
- Ordinary stream reauthorization failure is stream-local; connection expiration
  or broken shared transport still ends every stream. Expiration getters report
  installed finite authorization, not requested policy or infinity.
- Existing fixed TTL/absolute-expiration semantics remain unchanged. The new policy
  argument is mutually exclusive with nonfalse lifetime overrides; false still
  means omitted. Connection-linked streams are intended to survive successive
  renewals, not merely capture one connection deadline and stop there.

This supersedes the earlier automatic-renewal and stream-renewal deferrals for
these explicit policies. Cooperative cancellation and the whole-buffer Writer
contract remain binding.

vyzo then requested **design reconciliation and a detailed implementation handoff
for the fast model**, followed by full-model review/finishing touches, rather than
implementation in this pass. [renewal-plan.md](renewal-plan.md) contains the concrete
reconciliation: sticky local connection policy, finite adaptive issuance, linked
stream target/seed behavior, HELLO v1 layouts, independent stream transactions,
commit/ACK/ABORT ordering, mutable authorization versus fixed IO deadlines,
protected connection-renewal capacity and staged implementation/acceptance tests.

The requirements above were explicitly agreed in conversation. Detailed wire,
scheduling and resource choices in the linked plan were selected in this design
pass; they are not assertions that the historical discussion already specified
them. No renewal code or runtime verification is claimed by this checkpoint.
