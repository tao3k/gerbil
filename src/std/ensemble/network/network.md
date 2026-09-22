# Network Orchestration

`network.ss` implements the concrete public `Network` and retains the independently
testable owner registry/election transitions below. Applications should import the
public [`:std/ensemble/network` facade](../network.md), not these internal records.
It owns Unix and mutual-TLS establishment, shared-connection reuse, renewable policy
attachment and delegation of explicit renewal requests to the connection engine.
Renewal does not establish another physical connection or repeat admission callbacks.
The [renewal runtime](renewal.md#current-implementation) describes the authenticated
transactions. See the [facade integration status](../network.md#integration-status)
and [main-owned current checkpoint](implementation-notes.md#current-checkpoint) for
current verification; the source-only checkpoints below are historical.

## Constructor

`new-network(host, context, monitor, limits: (NetworkLimits), config: (NetworkConfig))`
returns a `Network`. The three positional arguments are the host DID,
`CapabilityContext` and `NetworkMonitor`, in that order. This is the `new-` naming
refinement in [design-notes.md](design-notes.md), not the superseded `make-network`
spelling in the older chronological notes.

Construction canonicalizes the DID, obtains the host's private principal from the
context, creates an owned mutual-TLS context and starts its owner supervisor. A
missing principal fails construction. The capability context, its cached private
key, the monitor and immutable configuration are borrowed; only the TLS context and
network resources are released by shutdown. Construction neither listens nor dials.

## Public Operations

- `listen!(address)` registers a joinable listener-construction job before binding.
  It returns the actual bound address after publication, including an assigned TCP
  port. Accepted sockets transfer to separately reserved setup workers; no TLS,
  credential work or application callback blocks the accept loop. Unix path handling
  uses the existing [cooperative sidecar-lock contract](listener.md), including stale
  socket recovery under that lock, not a new path-removal policy.
- `connect!(peer, addresses, [auth], ttl:, expire:, lease:)` canonicalizes the peer and rejects
  self-connections. New outgoing work retains the first caller's addresses, original
  operation deadline and resolved authorization requirement. The existing connector
  performs only its documented Unix-first address and credential fallback; arbitrary
  callback, authentication or cleanup exceptions never request an orchestration retry.
- Concurrent callers join a peer session. Empty addresses only reuse or join; they
  never discover, dial or reconnect using old metadata. Explicit joined parents can
  contribute to the existing credential queue while it remains open. Each caller
  retains its own required expiration. Internal waiter withdrawal does not cancel
  shared network work. No early public waiter-cancel API is added; public callers
  use existing deadlines and global close. No waiter list or new waiter-limit API
  is added.
- A valid live connection is reused for omitted or covered requirements. An uncovered
  finite requirement waits for authenticated renewal covering it in full, on the same
  `Connection`. That wait runs outside the Network mutex. Default reuse does not
  initiate renewal, and covered callers do not wait for a longer unrelated round.
  No request shortens a lease or returns success with inadequate installed coverage.
  Expired/closed connections are never returned as reusable.
- `connections`, `peers` and `listening` are snapshots of live published objects.
  They, `listen!` and `connect!` raise `Closed` after network closure. `host` and the
  connection/stream metadata retain their normal post-close interface behavior.

## Renewable Policy

`lease:` accepts only `#f` (the default) or `'renewable`. Reject a nonfalse policy
combined with a nonfalse `ttl:` or `expire:` before any work reservation or policy
mutation. Both lifetime arguments retain their contracts; fixed calls can supply
both, with `expire:` taking precedence. False lifetime values still mean omitted,
not infinite authority. An explicit positional `auth` remains a nullable DELEGATE
parent, not transport identity or a separate per-caller provenance requirement.

A new renewable outgoing attempt uses adaptive establishment: its immutable
`min-auth-expire` is zero and the connector receives `adaptive?: #t`. This means no
explicit finite lower bound, not an infinite lease. HELLO version 1 carries the
adaptive mode; validated current finite credentials still determine the negotiated
expiration. A new default/fixed attempt retains the existing strict finite target.
A renewable joiner does not rewrite a pending driver's target, mode or deadline.

`NetworkSession` holds sticky `renewable?`, at most one nullable `seed`, and a
nullable concrete `policy-owner`. Policy attachment is accepted under the Network
mutex. Before a parent exists, `renewal-check-capacity!` verifies that configured
control limits can protect four frames and `control-payload + 13 + 3 * 38` bytes.
This is validation, not reservation of an imaginary parent. Before activation,
the winner enables protection and transfers the session's current policy/seed,
then becomes its attachment owner under the same Network lock. This cutover happens
even for a session that has no renewable interest yet. It does not publish ready.

Subsequent pending or ready renewable callers invoke `connection-enable-renewable!`
on that owner without already holding its parent mutex. The helper acquires it,
admits the actual protected capacity, and attaches sticky interest/seed. Only after
success does Network update its session copy, in the same serialized acceptance
transition. A nonfalse seed replaces the previous one; omitted auth leaves it alone.
Accepted interest survives waiter timeout or detachment, even if that caller never
receives the connection. Default/fixed calls cannot disable it. The connection engine
owns automatic scheduling and fresh context lookup; enabling live policy returns
reuse without a gratuitous immediate round, unless its normal timer is already due.

Cleanup clears a failed candidate's attachment owner under the Network mutex before
retiring its reservation. The session copy remains available for an allowed precommit
fallback. Committed failure instead seals the session; its policy and callers cannot
move into another election. There is no persistent policy entry after failed
establishment, nor any transfer across closure to a newly dialed connection.

An already-ready uncovered call derives its renewal deadline from its original call
start plus `NetworkConfig.renewal-timeout`, including time spent acquiring Network
and parent locks. A caller joining establishment retains the earlier of its own
handshake budget and the session's original deadline. After publication, any needed
renewal is capped by that deadline and a renewal-timeout budget for the remaining
phase. It never restarts the whole `connect!` budget. Expiration and liveness use
the synchronized installed `ConnectionParent.expire`, not the historical handshake
expiration. The candidate is used only for pre-attachment metadata.

## Publication And Cleanup

`NetworkSetup` explicitly implements both `ConnectorMonitor` and its base
`HandshakeMonitor`. Implementing the derived interface alone does not install the
base interface's dispatch bindings.
Incoming identity registration happens only after TLS certificate verification or
the Unix signed proof. UCAN validation and advisory admission precede election. The
existing smaller-DID preference, larger-DID post-ACCEPT claim and committed cohort
tombstones remain authoritative. Identity registration broadcasts the public CV
immediately: proving one peer can prune another peer's retained commitment, and its
waiters must wake before subsequent credential processing or callbacks stall.
Retirement also wakes election waiters; waiting for an old committed cohort never
introduces a synthetic retry error or resets a deadline.

The elected candidate constructs a dormant `NetworkConnection`. Its metadata is
available to `on-open-connection`, but it has no framed admission before activation.
This notification is not a ready-to-open-stream event. An application worker uses
public `connect!` reuse/join to await readiness; it must not block the callback.
The callback runs outside both owner locks. Only a normal return records close
notification eligibility before subsequent fallible work, even if the callback
itself closed the connection. A later synchronous failure or cooperative cancellation
cannot erase the obligation to pair the returned callback. Any
callback exception is terminal for that session and retains its identity, including
raised `#f`; waiters receive it after the affected object's cleanup finishes.

Any failed committed candidate also seals its still-pending session before reservation
retirement can expose a new election. Commitment is recognized from the handshake's
flag or the owner's committed opening reservation, including commitment recorded
before socket output.
Only the sealing worker completes that session's terminal error after cleanup;
earlier/nonselected failures cannot replace it or release waiters early. A duplicate
loser's failure does not seal an already published winner. New incoming elections
get a fresh session rather than inheriting waiters from an aborting/failed session,
even during the gap between cutoff retirement and final worker bookkeeping.

After successful CONFIRM, `complete!` relinquishes setup's attached socket ownership,
performs the policy-owner cutover, calls `connection-activate!`, rechecks
network/parent liveness, and publishes one
concrete connection to the session. The job already owns the concrete parent during
handoff, so shutdown cannot miss an activation in progress. Activation failure is
cleaned up by the same job and never publishes a placeholder or dormant object.
The original handshake deadline and authoritative expiration are checked at both
serialized boundaries: immediately before detaching setup ownership, and after the
final owner/parent lock acquisitions immediately before publishing `ready`. Successful
retirement and publication hold all three locks in public, election, parent order;
the already-locked retirement helper does not acquire the election mutex again.
Failed publication retains its pending reservation until connection shutdown and
the eligible close notification finish. Its session is sealed under the public
mutex before another candidate can identify into it. CONFIRM does not
extend the budget. A caller can receive an already published result later; this is
not permission to publish a new result after its operation deadline.

A successful setup job remains the lifetime reaper. It waits for the parent to
terminate, then calls `connection-shutdown!` to finish stream admissions, transport
workers and eligible stream-close notifications before `on-close-connection`.
Normal parent-close failure is recognized only by identity with the stored parent
failure; unrelated errors are not suppressed as ordinary closure. Connection close
callback exceptions are logged, count as completed notifications, and do not prevent
other cleanup. Neither stream callbacks nor framed IO are implemented again here.
The cleanup finalizers require `connection-shutdown!` to finish all owned joins
and eligible callbacks before returning or rethrowing a cleanup failure. Constructor
failures and failures after normal callback return retain these cleanup obligations.
Network cleanup must not replay a completed shutdown operation. This is not a
requirement to recover from an externally injected thread exception at a join.

The network supervisor continuously joins completed job handles rather than keeping
an unbounded worker history. `Network.close` marks admission closed and wakes callers;
the supervisor closes pending sockets, listeners and concrete parents before waiting
for shutdown completion. Late listener/connection constructors remain tracked and
clean themselves up when they observe closure. TLS is released only after every job
has finished, including notifications and listener cleanup. Concurrent/repeated close
application callers join the same supervisor and observe its result. Before any
lock, state mutation or join, `Network.close` rejects a marked network worker with
contextual `ContractViolation`, even for another or already closing/closed network.

The internal `spawn-network-thread(name, thunk)` uses `spawn/name` and marks the
actual worker at entry with a non-inherited thread local. Actor-thread slots avoid
the global plain-thread local-table mutex. An outer `with-catch` unwinds the worker
body before debug logging through `/ensemble/network` and returning an internal
`NetworkThreadError`. `network-thread-join!` delegates timeout handling to
`thread-join!/error` and reraises the exact original exception, including `#f`.
Normal results are unchanged; expected worker failures no longer reach the actor's
unhandled-error trace wrapper. Its root abortive safety remains in place. Named
handles, publication gates and cleanup/join ownership are unchanged. The wrapper
and helpers are not public facade exports; see [thread.md](thread.md).
This covers supervisor and setup jobs, listener accept, temporary handshake output,
connection service/reader/writer, incoming and outgoing openings, renewal, and all
their finalizers. Connector and handshake drivers run inside marked setup jobs;
outgoing stream-opening workers mark themselves even when started by an application.
No callback callsite guards or per-network worker registry are added.

Callbacks and IO run outside network, election and parent locks. The public mutex
precedes the election or parent mutex. CV cancellation cleanup releases only a mutex
actually owned by that caller. Close/abort and pending cancellation publish state
under the associated mutex and notify its CVs while holding that mutex; waiters
recheck state and existing deadlines. Production shutdown cancels socket IO by
closing its owner structurally before joins; it does not invoke exception-raising
`thread-interrupt!`. Credential/admission workers finish the current context,
encoder or callback call without unsafe preemption, then observe cancellation.
Quotas, staged controls and ownership remain held until work, cleanup and eligible
notifications finish, not merely until a cancelled waiter returns.
`Network.close` rejects inline callback shutdown: dispatch it to an application
thread, which does not inherit the marker, and let the callback return rather than
waiting for that thread. `Connection.close` and `Stream.close` are
callback-safe and do not wait for their invoking callback.

vyzo explicitly withdrew the `Interrupt` API and asynchronous raising-recovery
machinery, not deprecated it or retained it as a fallback. The remaining network
catches and abort/release/wake/native-close retries are removed. Normal cleanup,
including SSL lifetime cleanup, continues. Synchronous faults at source-private test boundaries exercise
constructor/callback-return cleanup without production injection hooks. Arbitrary
external thread interruption, forced termination and hard real-time completion of
a stalled external call are not promised. See the later
[agreed decision](design-notes.md#agreed-cooperative-network-cancellation-2026-09-12).

## Internal Owner Registry

## Ownership

`make-network-owner(host, limits)` normalizes the local DID and borrows immutable
`NetworkLimits`. All registry and record mutations occur under one owner mutex.
Records and their fields are implementation-private despite their inter-module
exports: callers must not modify them, mix owners, or use a reservation with a
different work item. Supplied deadlines and expiration values are integer Unix
seconds. No transition resets a budget or computes fresh headroom.

`NetworkOutgoing` represents one logical connector invocation across all address
and credential retries. `NetworkReservation` represents one physical setup or
handshake. Only physical reservations consume `pending-connections`; an incoming
transport consumes capacity even before its identity can be registered.

## Transitions

| Procedure | Contract |
| --- | --- |
| `network-outgoing!(owner, peer, deadline, min-auth-expire)` | Return existing logical work unchanged, or create it. Return `#f` if an opening/committed election already exists without outgoing work; the eventual caller joins that election instead of dialing. |
| `network-reserve!(owner, work-or-false, deadline)` | Reserve physical capacity, returning a reservation or `#f` at capacity. Outgoing reservations inherit the work's original deadline and expected DID; false work means unidentified incoming setup. |
| `network-identify!(owner, reservation, peer)` | Register identity after TLS or Unix proof, rejecting self/mismatched identity. This is not credential verification. |
| `network-attach!(owner, reservation, socket)` | Atomically attach raw/upgraded transport or reject shutdown/retirement. Rejected sockets close outside the mutex and the call raises `Closed`. |
| `network-ready!(owner, reservation, expire)` | Mark an identified, authorized/admitted candidate ready, retaining its verified lease expiration. No election wait or exclusive claim occurs here. |
| `network-claim-opening!(owner, reservation, now)` | Return `opening`, `wait`, or `duplicate`. Check owner/candidate liveness, deadline, and authorization expiration. |
| `network-commit!(owner, reservation, now)` | Check exclusive ownership and liveness, then irreversibly mark election commitment before ACCEPT can be sent. |
| `network-retire!(owner, reservation)` | Release physical capacity exactly once, only after associated work/resource cleanup has actually finished. Does not finish logical outgoing work. |
| `network-finish-outgoing!(owner, work)` | Retire logical work after the complete connector driver terminates, including its cleanup. Idempotent. |
| `network-shutdown!(owner)` | Mark closed and close every captured transport outside the mutex. Preserve reservations for worker retirement. Continue closing after errors, then propagate the first error. |

Setup owns cleanup until candidate handoff. The connector monitor's `attach!`
adapter calls `network-attach!` immediately after connect and again after TLS.
Shutdown may capture the old raw view while upgrade finishes. SSL closure now
releases native SSL ownership even if that raw view already closed the shared
device. No network code accesses a native pointer or duplicates socket I/O.

`network-shutdown!` is a state-and-socket-close transition, **not** blocking `Network.close`.
It does not join workers, wait for another shutdown caller, close listeners, or
retire pending capacity prematurely. The public owner orchestration must wait
for all work and eligible notifications after closing transports.

## Election

The smaller canonical DID coordinates. It prefers a started, still-viable logical
outgoing work item over an incoming fallback. A failed physical reservation does
not release that preference while the connector can still retry. Work that never
acquired its first reservation, exhausted/finished work, or work whose original
deadline/finite required expiration has elapsed does not cause preference waits.
Adaptive work's zero target has no separate expiration cutoff; its original
operation deadline still limits preference.

`wait` retains a viable fallback; it is a nonblocking decision, not a sleeping
worker or a notification service. The public orchestrator revisits the decision
on relevant progress/deadline events without holding the owner mutex. A fallback's
CV wake budget includes its own deadline/lease and the preferred outgoing work's
original deadline and, for fixed work, minimum authorization expiration. Adaptive
zero is excluded from the timed wake calculation, so it cannot cause a busy loop.
Preferred work can remain
blocked in credential processing after losing viability, with no notification;
the timed wake rechecks election without treating that earlier preference expiry
as the fallback's operation timeout. With no
actual competing work, a ready incoming candidate opens immediately.

At the larger DID, readiness does not claim an opening slot. The driver calls
`network-claim-opening!` only **after receiving the smaller peer's committing
ACCEPT**. That claim records the observed commitment immediately. Thus preparing
one candidate cannot block the opposite candidate from reaching readiness.

An opening claim is exclusive. The smaller side calls `network-commit!` immediately
before committing ACCEPT to output. After commitment, retiring the selected
transport leaves a committed marker: retained fallbacks cannot replace it.
The peer entry disappears only after all reservations and logical work in that
cohort retire; independent later establishment can then begin normally.

Each physical reservation has a monotonically increasing generation. First commit
captures the current generation as an immutable cutoff, including then-unidentified
incoming reservations. Retiring the selected transport cannot erase commitment
while one of those reservations could still prove the same peer. Identification
and retirement sweep retained records: proof of a different peer releases that
reservation's hold immediately. Repeating commit never advances the cutoff.

Reservations newer than the cutoff cannot extend the old cohort. A newer candidate
for the same peer returns `wait`, not `duplicate`, while the old cohort remains;
it can claim opening after the old cohort resolves/retires, even if newer unknown
sockets keep arriving. The entry is retained without the old commit marker if a
newer identified candidate still needs it.

Cutoffs alone do not bound history: one stalled unknown could otherwise pin
arbitrarily many different completed peers. Retained commit records, including
active committed entries, therefore have a separate configurable
`NetworkLimits.election-history` cap (default 256, nonnegative fixnum). Zero disables
new history reservations. Exhausting it raises `IOError` before recording another
commit (and before claiming the larger endpoint's opening). Existing protection
is never evicted. Physical reservations retain their original independent capacity
accounting under `pending-connections` (default 32). Neither limit is derived from
the other, and no global unknown-socket barrier is introduced.
Normal worker deadlines/cleanup remain responsible for retiring stalled transports.

These helpers do not classify authentication, programming, or callback failures
as retryable. The orchestrator aborts affected work on terminal errors rather than
feeding those failures into ordinary fallback selection. An ordinary precommit
candidate failure can release its opening claim after cleanup.

## Connection Integration

The connection module supplies `NetworkConnection` with `this`, `parent`, `ready?`
and `candidate` fields, plus these internal helpers:

| Helper | Network's expectation |
| --- | --- |
| `make-network-connection(network, monitor, candidate, config, limits)` | Prepare a dormant concrete parent and capture metadata; do not consume/close the candidate socket before CONFIRM. Pre-activation close marks the parent closed; stream opening is not allowed. |
| `connection-activate!(impl)` | Consume the confirmed socket, install the initial finite lease and connection IO defaults, protect renewal capacity for adaptive candidates even without local automatic interest, and start real framed admission. Preserve pre-activation policy/seed. |
| `connection-shutdown!(impl)` | Close before joining all parent/admission/notification workers, finish eligible stream-close callbacks, and suppress only the exact stored parent-close failure. |
| `connection-expiration(impl) -> integer` | Return synchronized installed parent expiration, or candidate expiration before attachment. Called without the parent mutex. |
| `connection-enable-renewable!(impl, [seed = #f]) -> void` | Acquire parent mutex internally; atomically validate/enable protection, sticky local automatic interest, and nonfalse seed replacement. No IO, crypto, callbacks or joins; safe under Network's public-to-parent lock order. |
| `connection-protect-renewal!(impl) -> void` | Acquire parent mutex internally and admit only the protected allowance. Network uses it for uncovered explicit requests outside its own mutex. |
| `connection-request-renewal!(impl, required, deadline, [auth = #f]) -> void` | Block/coalesce after Network unlocks. Required expiration and absolute Unix deadline are integers. Return only with installed coverage or raise, preserving the same Connection and not repeating callbacks. Shared work may outlive a caller's wait. |

The pure `renewal.ss` module supplies `renewal-check-capacity!(ConnectionLimits) ->
void` for pending policy validation. These are implementation dependencies, not
additional public facade exports. The connection constructor, activation and
shutdown signatures remain unchanged. Network reads parent expiration directly
only when it already holds that parent's mutex; it never recursively calls the
synchronized getter in that scope.

`connection-parent-join!` and `ConnectionParent.mx/closed?/error` provide the lifetime
wait and exact terminal-result observation. Network never imports stream internals;
connection imports the shared interface/handshake modules, not this owner module.
The facade exposes no owner, handshake, transport or scheduler implementation types.

The separate history limit does not change reservation timing: the smaller endpoint
records history at `network-commit!`, and the larger endpoint at its opening claim
after observing ACCEPT. The transition layer itself has no application callback.
At the smaller endpoint, history-capacity failure after a normally returning open
callback cleans up and delivers its eligible close callback, rather than changing
the commit timing.

## Tests And Status

Current public integration and renewal are covered by the main-owned
[current checkpoint](implementation-notes.md#current-checkpoint), with detailed
[renewal coverage](renewal.md#coverage). The records below preserve earlier source-only
and original-lease verification boundaries, not current implementation limitations.

### Historical Integration Checkpoint

The renewable-policy/public-request integration is source-only at this checkpoint;
no build, compiler or runtime tests were run by the Network file owner. Main owns
the integrated verification, including the new connection renewal engine and its
separate renewal suites. `network-api-test.ss` now requires real same-object forward
extensions from both Unix/TLS physical roles and from an uncovered establishment
joiner. It also checks invalid policies/combinations before new, pending and live
side effects, inadequate protection limits, and accepted seed ordering before
cutover, before activation and before ready publication, for initially fixed and
adaptive sessions. The cutover test injects synchronous waiter `Timeout`s, not thread
interrupts; it invokes the real parent attachment helper and retains the session
seed after those callers detach. The fallback gate also covers an adaptive outgoing
target of zero, retaining preference until its real deadline without immediate
expiry wakes. The owned API tests contain no raw HELLO payload producers to migrate.

Source-only checks cover delimiter balance, duplicate definitions, assertion shape
and changed-source security scanning. The production file has no scanner findings;
the test fixture's low-severity unused-`mode` warning is a false positive: `mode`
selects Unix versus TCP addresses in its nested address procedure. These checks do
not substitute for compilation or execution.

The descriptions below preserve earlier coverage and review history, not a new
verification run. Interruption-injection cases are historical, not current network
requirements or evidence for later replacements. Before the API withdrawal, main
recorded all 11 public network API and 12 OPEN ownership cases,
the 8-core stdlib build and the broad 33-module network/UCAN/shared-IO regression
passed. The regression excludes `std/sync/threads-test` and `std/sync/rwlock-test`,
unchanged at that checkpoint. A formatting-only
rebuild and all 23 public API/OPEN cases passed again. Exact commands and revision
scope belong in the [main-owned implementation handoff](implementation-notes.md).
Those earlier results do not verify the subsequent removal. Main has now verified
that revision with an 8-core `make stdlib` full transitive stdlib rebuild after the
`std/error` change, not a core/full Gambit build. All 54 focused cases passed
(RWLock 3, framed 16, transport 20, native Reader 15), and the revised 33-module
network/UCAN/supporting-IO command passed. The latter replaces deleted `std/error-test`
with cooperative `std/sync/rwlock-test`; it excludes the shared `std/sync/threads-test`
intentional-termination suite. Main found no `Interrupt` references in `src/**/*.ss`
and no export through `build/lib` introspection. Static review found no normal-cleanup
regressions or missed asynchronous-only overhead. CV ownership guards still cover
ordinary timeout after mutex release; release/notification flags protect ordinary
errors. Native SSL lifetime cleanup and Reader minimum/EOF fixes remain. Main's
handoff is authoritative; any final formatting-only rebuild is a separate checkpoint
for main to document, not yet claimed complete here.

All network test source is free of `thread-interrupt!` and `thread-terminate!`;
production network code never calls `thread-interrupt!`. New explicit retry wrappers
in stage-handler/completion/join paths were removed first. The subsequent withdrawal
removed the remaining `Interrupt` catches and recovery retries as well.
The native thread-as-PC crash is not proved fixed: 2000 CV handovers and 20
cooperative real-stage iterations passed under live GDB, but the causal hypothesis
remains unproved. Those runs do not verify this renewal integration.

### Historical Coverage

The vertical-slice cases in `network-api-test.ss` use the public network facade for
network/connection/stream operations, with real keystore-backed capability contexts
and application monitors. They cover Unix/TLS duplex authorized streams and FIN, original-lease reuse
and unsupported renewal, refused admission, inbound stream callback isolation, local
exception identity, callback-safe close and pairing, crossed attempts, joined empty-
address callers, historical waiter cancellation, borrowed context lifetime and blocking
shutdown. The earlier explicit waiter cancellation was issued from a rooted fixture
worker; that fixture required the interrupted caller to retain its original fresh
`Interrupt` and checked the issuing worker's native abandoned-mutex exception
separately. This is historical injection coverage, not the current cancellation API.

Source-gated cases reload the real owner implementation in a private
test module, without production injection hooks or replacement Network/Connection/
Stream implementations. They hold a fallback after physical retirement while a
fresh public connection establishes, hold actual Unix identity verification before
credential processing while another peer's seeded history is unpinned, and hold a
real confirmed handshake before handoff or after activation until its original
deadline. The last case also verifies that an expired handoff never activates.
The source loader checks its exact hook boundaries and uses checked handler bindings
for interpreted `implement` forms. Monitor gates and joins have finite deadlines.

Three earlier review regressions covered a fresh `Interrupt` at the real mutex
acquisition after normal connection callback return, retained pending ownership
through a held close notification after publication waited past its deadline on
the parent mutex, and fallback wake on preferred authorization expiry while the
real preferred worker remains gated between identity proof and credential processing.
They use real Unix handshakes and public operations, not replacement public methods.
At that earlier checkpoint, these additions and associated review repairs had
static checks only, with build/compiler/runtime verification reserved for main.
The current decision
requires synchronous callback-return fault tests and cooperative cancellation,
not the earlier proposed safe-interrupt join recovery.

Historically, the preceding eight public cases passed after integration with the concrete connection and
stream implementations. The final 35-module regression, 8-core stdlib build and
unchanged no-op follow-up passed on 2026-09-12. These are not current case counts or
verification of replacement tests. See the main-owned implementation
handoff for exact commands, development failures and review repairs. Renewal was
outside that original-lease milestone; the source-only integration above supersedes
its unsupported-request branch without claiming new runtime results.

`network-test.ss` tests lifecycle transitions, physical capacity contention,
identity registration, retry-gap preference, viable fallback release, larger-DID
readiness, no retargeting after commit, independent physical/history limits under
churn, history exhaustion/recovery, and zero history in both DID roles.
`connector-test.ss` exercises the
attachment/shutdown boundary with real sockets, including silent TLS interruption
and shutdown between successful upgrade and upgraded attachment. `tls-test.ss`
checks native release after retained raw closure and repeated/concurrent close.
