# Ensemble Network Interfaces

Import `:std/ensemble/network/interface` for the abstractions shared by ensemble
network implementations. This module defines contracts only, not a transport.
`DIRECTION-IN` and `DIRECTION-OUT` are re-exported from `:std/os/device`.
The lifecycle, lease resolution, authorization, and callback rules below are
requirements on implementations, not networking behavior implemented by this
module. The concrete implementation available through the
[network facade](../network.md) supports fixed leases, explicit connection renewal,
opt-in renewable connections, and connection-linked stream reauthorization.
[renewal-plan.md](renewal-plan.md) preserves the design handoff; see
[Implementation Status](#implementation-status) for the current verification scope.

## Ownership And Configuration

A network owns its TLS context, listeners, connections, streams, and network
workers. It borrows the supplied `CapabilityContext` and `NetworkMonitor`; closing
the network does not close either borrowed object. The caller must keep them
usable while the network needs them. Cached keys borrowed from the context must
not be explicitly released by network code.

Defaults and resource limits live together in [config.ss](config.ss), documented
in [config.md](config.md): `NetworkConfig`, `NetworkLimits`, `ConnectionLimits`, and
`StreamLimits`. There is no separate limits module. Configuration, limits, and
returned metadata objects are immutable by convention while in use; no defensive
copying or live configuration update is promised. Per-call lease overrides do not
mutate configuration.

## Network

`Network` extends `Closer` and owns connections and listening addresses.

| Method | Arguments | Result |
| --- | --- | --- |
| `host` | None | Local host DID |
| `connect!` | Peer DID, list of `Address`, optional positional `Token`; `ttl:`, `expire:`, `lease:` | `Connection` |
| `listen!` | `Address` | Actual bound `Address` |
| `peers` | None | List of connected host DIDs |
| `connections` | None | List of open connections |
| `listening` | None | List of listening addresses |

`connect!` opens, reuses, or joins the one shared connection per canonical peer
DID. Implementations normalize public DIDs and reject self-connections. For new
establishment, Unix addresses are tried first, then other addresses in preference
order, sequentially within the original establishment budget. TCP connections use
mutual TLS and verify the actual certificate key against the expected DID. Unix
connections use signed identity proofs over plaintext under the agreed trusted
local-OS/path threat model. UCAN authorization does not replace identity checks.

An empty address list means **reuse-or-join**: reuse a usable established connection
or join pending establishment for that peer, including explicit renewal when
required. If neither exists, fail without dialing, discovery, or reconnecting to
old address metadata. Joining neither replaces the attempt's address list nor
restarts its deadline, and shared failure does not start a new per-waiter attempt.

The optional positional `auth` defaults to `#f`. A supplied token must be a usable
`DELEGATE` parent for local invocation evidence; without one, credential generation
uses the borrowed context's output trust policy. This is not a per-caller
credential-provenance constraint on an already shared connection. Supplied parents
from joined callers may participate in credential failover under the original
budget. Peer identity and mutual UCAN authorization remain required.

`listen!` completes bind/listen setup before returning and publishing a listener.
For TCP port zero it returns the assigned port in the actual `Address`, and records
that same address in `listening`. Another port-zero request creates another
listener. Failed or duplicate/address-in-use binds are errors, not silent reuse or
replacement. Unix listeners first acquire the stable sidecar lock, then remove a
stale socket before binding and clean up the socket before releasing the lock.
Non-socket paths are never removed. This is cooperative pathname ownership, not
inode-based replacement protection: callers must not externally rename or replace
the socket or sidecar while owned. See [listener.md](listener.md).

`host` remains available after close. `peers`, `connections`, and `listening`
return observational snapshots while open, not liveness guarantees. These registry
queries, `connect!`, and `listen!` raise `Closed` after network closure rather than
returning empty snapshots.

## Lease Arguments

Both opening methods retain the optional positional `auth` and accept independent
optional keywords, so no auth placeholder is needed to supply lease arguments:

| Argument | Default | Checked argument contract |
| --- | --- | --- |
| `ttl:` | `#f` | `#f` or a positive exact integer duration in seconds |
| `expire:` | `#f` | `#f` or an exact integer in `[0, 2^64 - 1]`, absolute Unix seconds |
| `Network.connect!` `lease:` | `#f` | Exactly `#f` or the symbol `'renewable` |
| `Connection.open-stream!` `lease:` | `#f` | Exactly `#f` or the symbol `'connection` |

Explicit `#f` means omitted. Both supplied values must satisfy their argument
contracts even when `expire:` takes precedence over `ttl:`. Inexact integer-valued
numbers, fractions, strings, and `#t` are rejected. TTL zero/negative values and
negative/out-of-u64 expirations are rejected. TTL is a duration, not a wire field:
there is no arbitrary duration ceiling in the abstract interface.

Lease policy uses the exact method-specific symbol, not strings, `#t`, numeric
wire modes, or the other method's policy. `#f` means fixed/default behavior, not an
indefinite lease. A nonfalse policy is mutually exclusive with nonfalse `ttl:` or
`expire:`. The concrete implementation rejects that combination **before reserving
work or changing an existing connection's policy**. The signatures check each argument
independently; they do not perform cross-argument validation, reserve resources, or
attach policy through hidden contract side effects. Both lifetime arguments still
require validation, even when `expire:` wins. Fixed mode continues to allow `ttl:`
and `expire:` together, and the positional `auth` order is unchanged.

In fixed mode the implementation resolves the required expiration **once** at
operation start: use non-`#f` `expire:` unchanged, otherwise start plus non-`#f`
`ttl:`, otherwise the configured TTL for new establishment or stream opening. The connection and
stream defaults are independently 3600 seconds. Negotiation, joining, and retries
must not move this target; credentials must cover it in full, not silently shorten
it. Resolved expiration range checks, overflow prevention before encoding, current
time validity, and operation-budget/headroom checks belong to operation code.
Accepting `expire: 0` at the argument boundary is not permission to establish an
expired lease. The interface does not read the clock, select a precedence branch,
or fall back from an unusable explicit expiration to TTL.

For an existing connection, omitted policy and lifetime overrides reuse the valid
lease without renewal. A resolved deadline already covered also reuses it; a later
one requires explicit mutual renewal. Each joined caller retains its own requirement, and
satisfied callers need not wait for longer requests. Ordinary pre-commit renewal
failure preserves the still-valid old lease and reports failure; expiry or
unresolved post-commit uncertainty closes the connection. Default/fixed callers do
not enable automatic renewal. No policy enables implicit reconnect, infinite
timestamps, or an expired-authorization grace period.

`connect!(..., lease: 'renewable)` requests adaptive finite establishment with no
application-requested final expiration. Credentials still bound every installed
lease; directly issued grants use a finite configured TTL window, not maximum-u64
as infinity. On a live connection, it enables sticky local automatic interest and
reuses the same object without gratuitous renegotiation unless its timer is due.
Later default/fixed callers cannot disable that interest. Either physical endpoint
may enable it; the original physical initiator coordinates coalesced renewal rounds.
Serving a peer's round does not enable local automatic interest.

A renewable pending joiner records interest for the elected connection without
changing the active handshake target, mode, or deadline. Acceptance requires
serialized admission of the protected connection-renewal capacity in
[config.md](config.md). Before activation, policy ownership transfers to the parent;
later joiners must attach there without bypassing real capacity checks. Once
accepted, policy survives caller timeout/detachment, but not physical connection
closure or failed establishment. The latest accepted renewable attachment carrying
`auth` replaces the one retained seed parent; each new automatic operation also
queries current context credentials. Omitted auth does not accumulate choices.

Authorization leases are independent of I/O timeouts and the configured handshake,
stream-open, and renewal operation budgets. Timeout changes never extend authority.

## Connection

`Connection` extends `NetworkTimeout` and `Closer`. It is a point-to-point peer
connection that may multiplex multiple logical streams.

| Method | Arguments | Result |
| --- | --- | --- |
| `network` | None | Owning `Network` |
| `address` | None | Local `Address` |
| `peer` | None | Peer host DID |
| `peer-address` | None | Remote `Address` |
| `direction` | None | `DIRECTION-IN` or `DIRECTION-OUT` |
| `expire` | None | Last installed negotiated expiration, integer Unix seconds |
| `open-stream!` | Protocol string, optional positional `Token`; `ttl:`, `expire:`, `lease:` | `Stream` |

Inbound connections were initiated by the peer; outbound connections were
initiated locally. `@Connection` is the forward type alias used by `Network`.

`expire` is the minimum expiration of the two accepted connection credentials,
not merely the requested target. Authorized renewal advances it at the local
commit transition: the responder upon valid COMMIT, the coordinator upon ACK.
These transitions are not globally simultaneous. After closure it retains the
last installed value, not the close time.

`open-stream!` requires opener-to-recipient protocol-specific invocation authority,
using the supplied DELEGATE parent or context policy. No reciprocal stream token
is required merely to send responses on the accepted bidirectional stream. The
stream's accepted credential must cover its independent requested expiration even
when that outlives the connection's current lease. Opening a stream **never renews
the connection**. A higher-level caller can pass the same absolute `expire:` to
`connect!` and `open-stream!` to coordinate both leases without relative-TTL drift.

With `lease: 'connection`, OPEN instead captures the currently installed connection
expiration as its initial strict requirement. Protocol authority must cover that
value in full, though the selected grant may last longer. Linked streams are legal
on fixed connections, following successful explicit extensions without enabling
automatic connection renewal. OPEN completion must recheck for a raced connection
extension and schedule any needed stream reauthorization rather than freeze the
earlier target. The original optional parent is the stream's seed; later operations
also refresh context-provided protocol authority.

The owning network, addresses, peer DID, direction, and last installed expiration
remain accessible after close. Implementations capture transport metadata while
available instead of querying a closed socket. New streams and timeout changes on
a normally closed connection raise `Closed`; a connection closed by another failure
preserves and rethrows that stored failure, including a raised `#f`.

## Stream

`Stream` extends `NetworkTimeout` and `Closer`. Its reader and writer carry the
data of a single logical protocol stream over a connection.

| Method | Arguments | Result |
| --- | --- | --- |
| `connection` | None | Underlying `Connection` |
| `id` | None | Integer stream identifier within the connection |
| `direction` | None | `DIRECTION-IN` or `DIRECTION-OUT` |
| `protocol` | None | Protocol string |
| `expire` | None | Last installed stream credential expiration, integer Unix seconds |
| `reader` | None | `Reader` |
| `writer` | None | `Writer` |

An inbound stream was opened by the peer. `@Stream` is the forward type alias
used by `Connection`. Its lease is independent: connection renewal alone does not
change `Stream.expire`. A fixed stream's installed expiration never changes. A linked
stream advances only through authenticated protocol-specific reauthorization:
the original recipient installs on valid stream COMMIT, the original opener on ACK.
It reports the actual credential expiration, never the minimum of the connection
and stream expirations, a policy symbol, or infinity. Effective usability is bounded
by both expirations; connection closure terminates every stream even if its own
token remains valid.

After a connection extension, already-covering linked-stream authority needs no
exchange; otherwise the original stream opener coordinates a one-way stream round.
New connection targets coalesce without retargeting an active round. Successful
installation preserves the Stream, Reader, Writer, connection reference, ID,
direction, protocol, buffers, credit and actual DATA borrows, FIN/drain state, and
callback eligibility. It repeats neither allow nor open callbacks. A half-closed
stream may still renew for its remaining direction; aborted or fully retirable
streams cannot be resurrected.

Ordinary precommit stream reauthorization failure leaves the old authorization
usable until expiration and suppresses busy-loop retries. Postcommit confirmation
failure resets only that stream by its operation cutoff. Malformed shared framing,
wrong roles, impossible active transitions, and bad active selected indices remain
connection-fatal protocol violations. Renewal never resets an application's captured
I/O or writer-drain deadline; waits must reevaluate current installed authority
without mistaking an extended old expiration for an I/O timeout.

The owning connection, ID, direction, protocol, and accepted expiration remain
available after close. Reader/writer getters return the existing handles, not
fresh usable I/O objects. Expiration getters do not imply continued usability.
Connection and stream return signatures declare `:integer` expiration values;
implementations are responsible for installing validated absolute leases.

Connection and stream inherit `set-input-timeout!` and `set-output-timeout!` from
`NetworkTimeout`, with `IOTimeout` arguments. Configured defaults apply to new
objects. Connection setters affect shared transport IO, not individual stream
application budgets; Stream setters affect the next read or write/drain. Setters
on normally closed directions raise `Closed`; an existing abort rethrows its stored
failure. Neither setter makes a closed direction usable again.

Closing the whole stream or its reader aborts both directions, discards unread
and unsent data, and wakes blocked operations with `Closed` unless an earlier
failure was already recorded. Authorization expiry also aborts without draining
unauthorized traffic. Closing the writer instead prohibits new writes and drains
accepted DATA followed by FIN under the stream's
write timeout, without waiting for peer consumption. Drain timeout/cancellation
aborts that stream, not an otherwise healthy shared connection. Orderly EOF after
buffered data is consumed does not abort the opposite direction. Repeated close
is idempotent.

### Byte IO

The existing [Reader and Writer interfaces](../../io/interface/base.ss) take
`u8vector` buffers, not strings or character ports. Their slice offsets, lengths
and read minimum are byte counts:

| Method | Positional arguments | Result |
| --- | --- | --- |
| `Reader.read` | Buffer, optional start (0), end (buffer length), need (0) | Bytes read; wait for data on a nonempty, non-EOF slice even with need zero. EOF before the minimum raises `PrematureEndOfInput`; EOF with no remaining minimum returns the available count, including zero. |
| `Writer.write` | Buffer, optional start (0), end (buffer length) | Exactly end minus start, or an exception; no successful short write. |

Offsets and need are fixnums with `0 <= start <= end <= buffer length` and
`0 <= need <= end - start`; end is exclusive. Reader additionally requires
`start < buffer length`; Writer permits an empty write. Application code serializes
operations within each direction; reading and writing may proceed concurrently.
Do not mutate a write's source slice or concurrently use a read's destination while
the operation is running. A successful
write has copied every requested byte for transmission and permits source reuse,
but does not acknowledge transport delivery or peer consumption. Failure after
partial progress is not permission to replay the whole write.

Each read, whole-slice write and initial writer-close drain captures one IO deadline.
Partial progress, wakeups, later timeout settings and renewal never restart it.
Waits recheck the currently installed authority; `!NoTimeout` removes the IO deadline,
not either authorization bound. The stream's first recorded abort is rethrown;
otherwise authorization expiry is checked before the captured IO timeout. Orderly
EOF and expected half-close errors do not abort the reverse direction. See
[stream.md](stream.md#blocking-io) for the implementation boundary.

## NetworkMonitor

`NetworkMonitor` supplies admission decisions and lifecycle notifications:

- `allow-connection?` takes a peer DID and direction and returns a boolean.
- `on-open-connection` and `on-close-connection` receive a `Connection`.
- `allow-stream?` takes a peer DID, protocol, and direction and returns a boolean.
- `on-open-stream` and `on-close-stream` receive a `Stream`.

Admission callbacks are advisory resource gates, not authentication or reservations.
Outgoing connection admission uses the expected canonical peer DID before dialing;
incoming admission follows identity and UCAN validation. Stream admission runs
locally before outgoing OPEN and remotely after credential validation before
acceptance. False or an exception fails the new admission. Unchanged connection
reuse and renewal invoke neither allow nor open callbacks; fresh establishment
after closure is a new admission. Internal configured capacity bounds remain hard
bounds independently of advisory monitor results.

All callbacks run inline, outside network/connection locks, and must return
promptly. They must not perform blocking I/O or wait for work requiring the invoking
network path to progress. Inbound stream delivery dispatches application I/O to an
application worker. Different objects' callbacks may run concurrently; the monitor
owns synchronization for host-wide accounting.

`on-open-connection` runs **before activation**, not after public readiness. Its
Connection exposes metadata, callback-safe close and timeout settings, but cannot
yet open streams. An application worker must use `Network.connect!` to await ready
publication before opening a stream; an empty address list joins the pending
establishment without dialing. Merely handing the callback's object to another
worker does not establish readiness. Never wait for that call inside the callback.

The open callback is final admission and completes before success is reported to
initiating callers or joined waiters. It may reject by closing the affected object
and raising `Closed`. This is expected rejection, not an unexpected worker error.
Any open-callback exception, including `Closed`, aborts the object **without its
corresponding close callback**. The failing callback must roll back any registration
it performed. Local callers receive the original exception after cleanup; inbound
stream failure is handled locally rather than escaping the shared reader and
destroying unrelated streams. Remote acceptance/notification cannot be undone.

Each object's open and close notifications occur at most once and never overlap.
Only a normally returning open callback qualifies for a later close notification.
Closure during open marks the object closed and wakes operations immediately,
but defers notification until open finishes: deliver close on normal return, even
if open closed the object; suppress it on any exception. Connection-open finishes
before stream-open notifications. On connection closure, eligible stream-close
notifications finish before connection-close, with no ordering requirement between
different streams. Outstanding stream opens first finish under the same rule.

Unexpected callback errors are logged through the shared network logger without
leaking tokens/private material or local exception details to peers. Close-callback
exceptions count as notification completion and cannot prevent resource cleanup,
other notifications, or cause recursive notification.

## Network Shutdown

`Network.close` is idempotent and blocking: it finishes owned work, resource cleanup,
and eligible notifications before returning. Calls from any network-owned worker,
including monitor callbacks and finalizers, raise contextual `ContractViolation`
before network locking, state mutation or joins. The rule includes cross-network
calls and already closing/closed networks. Dispatch global shutdown to an application
worker instead; callback-spawned threads do not inherit the worker marker. Return
from the callback rather than waiting there for the closer. `Connection.close` and
`Stream.close` remain callback-safe; they must not wait for their invoking callback
to finish. Notification ordering may defer notifications, not resource shutdown.
The borrowed context and monitor remain caller-owned after shutdown.

### Cooperative Cancellation

Network close, stream abort and pending cancellation use explicit state under the
associated mutex and CV notification while holding that mutex. Waiters recheck
state and existing deadlines. Closing owned sockets interrupts blocked IO
structurally before joins; production cancellation does not invoke exception-raising
`thread-interrupt!`. There is no early public waiter-cancel API: public callers use
existing deadlines and global close. Internal waiter withdrawal must not cancel
shared work solely because one caller leaves.

Credential/admission workers finish their current context, encoder or callback call
without unsafe preemption, then observe cancellation before further publication.
Their quotas, resources and worker ownership remain held until work, cleanup and
eligible notifications finish. A waiter returning does not release a still-running
worker's reservation or transport borrow. Network shutdown joins that work and
completes callbacks; it cannot promise bounded completion of an arbitrary external
call that never returns.

Constructor failures, callback exceptions and failures after normal callback return
still require cleanup and the callback-pairing rules above. Use synchronous fault
injection at source-private test boundaries to check those obligations without
adding production hooks. Arbitrary external thread interruption, forced termination
and arbitrary continuation escapes carry no network correctness guarantee.
The `Interrupt` API and asynchronous raising-recovery machinery were explicitly
withdrawn by vyzo, not deprecated or retained as a fallback. The remaining network
catches and abort/release/wake/native-close retries are removed; normal ownership
cleanup, SSL lifetime cleanup and the shared Reader minimum fix remain. See the
later [agreed decision](design-notes.md#agreed-cooperative-network-cancellation-2026-09-12).

### Implementation Status

The runtime implements explicit connection renewal from either
physical role, automatic renewable policy, and linked-stream reauthorization on the
existing objects and I/O handles. Concrete methods validate policy/lifetime exclusion
before admission. Renewal uses bounded workers, protected control staging, and the
existing connection reader/writer and service timer; it is not a contract-only or
codec-only placeholder.

See the [facade integration status](../network.md#integration-status) and
[main-owned current checkpoint](implementation-notes.md#current-checkpoint) for
revision-scoped verification and final acceptance. The design handoff and historical
checkpoints below do not describe current missing functionality. This docs-only
audit does not run builds or tests.

#### Historical Checkpoints

Before the API withdrawal, main verified the concrete original-lease implementation: the 8-core stdlib
build, all 11 public network API and 12 OPEN cases, and the broad 33-module
network/UCAN/shared-IO regression passed. The latter excluded
`std/sync/threads-test` and `std/sync/rwlock-test`, unchanged at that checkpoint.
A formatting-only rebuild and
all 23 public API/OPEN cases passed again. Network test source contains neither
`thread-interrupt!` nor `thread-terminate!`; production never calls `thread-interrupt!`.
No remaining `Interrupt` catches provide a synchronous fallback. These earlier results did not
verify later revisions, prove the native crash fixed or establish full API completion:
renewal was still required at that checkpoint. See the [main-owned handoff](implementation-notes.md) for
exact commands and revision scope; this interface module still defines contracts only.

At the subsequent API-removal checkpoint, main reported a successful 8-core
`make stdlib` full transitive stdlib rebuild after `std/error` changed, not a
core/full Gambit build.
All 54 focused cases passed (RWLock 3, framed 16, transport 20, native Reader 15).
The revised 33-module network/UCAN/supporting-IO command passed, replacing deleted
`std/error-test` with cooperative `std/sync/rwlock-test` and excluding the shared
`std/sync/threads-test` intentional-termination suite. No `Interrupt` references were
found in `src/**/*.ss`; `build/lib` introspection confirmed no export. Static review
found no normal-cleanup regressions or missed asynchronous-only overhead. CV ownership
guards and release/notification flags remain necessary for ordinary timeouts/errors;
native SSL lifetime cleanup and Reader minimum/EOF fixes remain. These results are
reported by main, whose handoff is authoritative for their revision scope. A possible
final formatting-only rebuild was not claimed complete at that checkpoint.

Those checkpoints preceded the Stage 1 renewal contract/codec revision, which had
source-level checks only. Concrete method validation, handshake version/role
handling, and renewal installation, scheduling, resource, and I/O integration were
still pending at that stage. Those implementation limitations do not describe the
current runtime above.
