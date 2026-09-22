# Connector Foundations

`connect-handshake` creates the transport for one outgoing candidate and returns
a new `Handshake`. It is internal implementation code, not `Network.connect!`.
The module also supplies the attempt's credential-choice queue and sequential
`connector-connect!` driver. Reservation/election transitions, joining callers and
actual connection publication belong to [network.ss](network.md).

## Retry Driver

`connector-connect!(monitor, context, tls-context, host, peer, addresses, credentials,
start, deadline, min-auth-expire, adaptive?: #f, config:, limits:)` returns a confirmed Handshake,
returns false for ordinary terminal rejection/credential exhaustion, or propagates
the original failure. It always closes the credential queue when finished.

Addresses are stably ordered Unix-first. Setup fallback preserves the current
credential. An eligible precommit credential rejection selects another credential
and starts at the rejecting concrete endpoint, replacing its DNS entry in the
current complete ordered sequence. Repeated retries do not reintroduce that DNS
entry; other addresses, including earlier failed endpoints, remain available.
Each physical retry has a fresh start/headroom, but deadline and min-auth-expire
never move. Only proven peer auth-failed/lifetime refusals or local no-credentials
permit a new credential. Admission refusal, unproven refusal, peer no-credentials,
and any postcommit rejection terminate.

`adaptive?:` is an optional boolean keyword and is forwarded through transport
setup to `make-handshake`. Adaptive establishment requires `min-auth-expire = 0`;
nonzero targets are rejected before reservation/dialing. The zero is not an
expired lease: operation deadlines still apply, and the handshake enforces fixed
headroom and actual credential validity. Fixed callers keep the old positive-target
liveness checks and retry behavior. Neither setup mode nor target changes during
fallback or credential retry.

`ConnectorMonitor` extends `HandshakeMonitor`. `connecting!(address, start)`
reserves/checks owner liveness before setup and must roll itself back if it raises.
`attach!(socket)` exposes the raw `StreamSocket` immediately after connect, before
TLS, then exposes the upgraded view before Handshake construction. The monitor
atomically attaches or rejects against owner shutdown, without holding owner locks
for socket close/I/O. Attachment does not transfer setup's cleanup responsibility.
Every subsequent setup exception calls `failed!(address, error)` after transport
cleanup, including terminal exceptions. Once a candidate exists, the inherited
`closed!`/`complete!` hooks retire or transfer it instead. Monitor exceptions are
never fallback signals and are not suppressed by cleanup.
Setup tracks callback provenance separately from exception type: even an attachment
callback throwing `SSLHandshakeError` or another retryable transport type terminates
the driver with the original exception after cleanup and `failed!`.

Setup fallback accepts only these source-level failures:

- `SocketConnectError` derives from OSError and IOError and retains positive errno.
  Only ECONNREFUSED, ECONNRESET, ECONNABORTED, EHOSTUNREACH, ENETUNREACH, ENETDOWN,
  ETIMEDOUT, ENOENT, ENOTDIR, EACCES, and EPERM advance endpoints. EINVAL, EBADF,
  allocation/fd exhaustion, and other OS operations terminate.
- `ResolverError` derives from IOError and translates only native OS exceptions
  raised by `host-info`, preserving its original argument list plus the hostname
  and source context. All native OS failures of that lookup permit fallback;
  no facility/status classifier is used. Non-OS argument, type, allocation, and
  programming exceptions propagate. Address conversion is outside the catch.
  Synchronous resolver work is not preempted.
- `SSLHandshakeError` derives from SSLError and marks negotiation failure, not
  proof of peer fault. Native result details remain available. Known allocation
  and internal failures, and SSL_ERROR_SYSCALL (whose errno the native wrapper
  does not retain) stay terminal SSLError, as do local SSL setup failures.
- `TLSPeerIdentityError` derives from IOError and marks certificate policy or
  expected-DID mismatch, not arbitrary crypto or contract failures.

Timeout, Closed, broad IOError/SSLError, arbitrary exceptions, and all exceptions
after setup terminate. No messages or irritants are inspected by the retry driver.

## Credential Choices

`make-connector-credentials([auth])` creates an internal `ConnectorCredentials`
queue. When the initiating caller supplied no auth, its first choice is `provide!`.
Otherwise its parent enters the supplied-parent queue. Joining callers add only
explicit parents through `connector-add-credential!(choices, parent)`; a caller
without auth adds no new choice.

`connector-next-credential!(choices, min-auth-expire, headroom, now, adaptive?: #f)` returns two
values: `available?` and `parent`. `#t, #f` selects the initial `provide!` path;
`#t, token` selects that parent; `#f, #f` means exhausted. Supplied parents are
selected longest-expiration-first, with arrival order breaking ties. A later
addition cannot preempt a choice already returned to the driver.

The queue uses Tokens directly as keys in `make-hash-table`, relying on their
transparent structural equality to deduplicate both queued and previously selected
parents. Caller tokens are borrowed and must remain immutable while used as keys.
Every distinct parent is considered at most once. Parents failing the ordinary
`auth-lifetime?` check for the supplied threshold/headroom/clock are discarded.
The clock and thresholds are integer Unix seconds supplied by the driver; the
queue reads no clock and does not change the attempt's operation deadline.

With `adaptive?: #t`, selection preserves the same queue order and exhaustion
rules but does not discard a selected seed for insufficient/expired leaf lifetime.
The adaptive issuer must inspect the entire chain and still consider direct
authority and fresh context parents in the same handshake. This is important for
`make-connector-credentials(expired-parent)`, whose fixed-mode queue intentionally
has no initial `provide!` choice. Adaptive setup must not exhaust it before querying
fresh context authority. No extra initial-seed retrieval API or queue record is
needed; the driver supplies this keyword internally. Structural queue dedup and
the adaptive issuer's seed/context parent dedup are separate responsibilities.

One driver consumes choices, while joining callers may add them concurrently.
No token marshaling is needed for deduplication. Selection and additions are
serialized; exhaustion atomically closes the queue, so a racing addition either
participates or raises `Closed`, never silently revives exhausted work. The owner
calls `connector-close-credentials!` on success, cancellation, or terminal failure
to release retained choices. Close is idempotent; add/next on closed queues raise.

These helpers do not interpret handshake outcomes or catch construction/decoding
exceptions. The driver requests another choice only for an ordinary eligible
credential rejection; exceptions abort the operation. Context selection does not
bypass the recipient's verification or the existing lifetime/headroom checks.

## API And Ownership

`connect-handshake(context, tls-context, host, peer, address, start, deadline,
min-auth-expire, auth:, adaptive?: #f, config:, limits:, monitor:)` borrows the capability and TLS contexts.
`monitor:` uses `:? ConnectorMonitor`, defaulting to `#f` for
standalone single-candidate callers. `connector-connect!` always supplies its monitor.
The TLS context must be the network's mutual-TLS context for the host principal.
Unix candidates borrow it as well but do not use it. All timing values are
integer Unix seconds; config and limits have the same defaults and immutable
ownership conventions as `make-handshake`.

The owner reserves and tracks the attempt before calling and passes the already
captured start, absolute deadline, and required authorization expiration. The
connector does not reset these values or mint new credentials. It checks liveness
before dialing and after connection establishment. The same absolute `IOTimeout`
is supplied to `stream-connect` and TCP's `ssl-client-upgrade`, and the handshake
constructor checks completion and reinstalls that deadline after TLS clears it.

`stream-connect` handles endpoint resolution, including DNS addresses, and selects
Unix or TCP. The returned socket's domain selects plaintext Unix versus mandatory
TLS. TLS uses the expected peer DID's hostname, and `make-handshake` additionally
checks the actual peer certificate key against that DID. A hostname match alone
is insufficient. Local identities are normalized and self-connections rejected
before dialing.

Success transfers the socket to the returned candidate in phase `new`. TCP peer
identity is already proven; Unix identity still requires the signed HELLO/AUTH
exchange. No application-handshake frames or application callbacks are emitted here.
The caller drives the staged handshake and eventual publication.

Any exception after dialing closes the current raw/TLS socket and propagates the
original exception. There is no exception-content inspection or silent fallback.
The owner must retain its pending reservation until the call and cleanup finish.
The raw attachment allows shutdown to interrupt blocked TLS. A late completed
upgrade must attach again and can be rejected. Raw/upgraded views share a device
and lock; SSL close releases its native state independently of whether raw close
already closed that device. Certificate lookup is also synchronized with closure.
Resolver calls remain synchronous: the fixed budget is checked when they return,
not a promise of interruptible DNS lookup. The Network owner remains responsible
for closing attached sockets, joining workers and retaining reservations through cleanup.

## Tests

`connector-test.ss` exercises real Unix and DNS-address TCP/TLS candidates and
then drives both application handshake endpoints through confirmation. It checks
deadline/headroom/input forwarding and bidirectional bytes. DNS fixtures reuse
the listener's resolved loopback endpoint to avoid randomly selecting a different
address family for the same ephemeral port.

Negative cases cover a certificate with the expected hostname but a different
key, expired operations that never dial, and a silent TCP peer causing TLS timeout
and transport closure. Driver tests cover real address fallback, both DID orderings,
credential retries, repeated DNS pinning through exhaustion, terminal reservation
cleanup, exact exception identity, and monitor failures before/after commitment.
Additional cases cover atomic attachment versus shutdown, silent TLS interruption
before the original deadline, completed-upgrade rejection after raw closure, and
terminal attachment callback exceptions with transport-error types. Failure hooks
observe the closed transport before reservation retirement.

Credential tests cover initial/default ordering, stable ties, structurally equal
Token copies, lifetime boundaries, additions between choices, close/exhaustion, and
concurrent add versus exhaustion. A real Unix test drives an initial `provide!`
grant to rejection and then confirms a fresh candidate using the queued parent.
These tests use the production retry driver directly; shared Network.connect!
ownership and Connection publication are outside this suite. Internal election
transitions have their own [owner tests](network.md).

Adaptive tests exercise both the standalone setup and full driver
with target zero, an expired explicit seed, fresh context authority, actual finite
selected expiration, and unchanged deadlines. They also cover invalid nonzero
adaptive targets before reservation/dialing and fixed-versus-adaptive queue
filtering. They are included in the integrated network regression; current build
and runtime evidence is in the [main-owned checkpoint](implementation-notes.md#current-checkpoint).

## Integration Handoff

The public network owner maps new `lease: 'renewable` setup to target zero and
`connector-connect!(..., adaptive?: #t)`, retaining its original
`ConnectorCredentials` argument. `connect-handshake` accepts the same keyword;
`run-handshake!` remains a driver of the already configured candidate with unchanged
arguments. Incoming constructors need no mode argument because the peer HELLO
chooses it. Setup mode is not persistent automatic-interest state. The
[network owner](network.md#renewable-policy) implements serialized policy/seed
attachment and session cutover; the [connection engine](renewal.md#current-implementation)
owns protected control capacity and renewal scheduling. These are not missing
connector features or additional public exports.
