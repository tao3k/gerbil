# Public Streams, Bounded State And IO

`stream.ss` implements public `Stream` views over existing blocking `StreamIO`
Reader/Writer handles, bounded nonblocking `StreamState` transitions and a passive
shared `StreamWake`. It does **not** implement `Connection`, `Network`, stream
opening, credential validation, or frame scheduling.
Construct IO only after the parent has accepted and authorized the stream.
Raw state primitives may return zero for temporary lack of data/capacity; the
Reader/Writer implementations below wait instead.

## Public Stream

`new-stream(connection, id, direction, protocol, io) -> Stream` is an internal
constructor taking five required positional arguments: `Connection`, integer,
fixnum, string and `StreamIO`. It wraps an existing authorized IO; application code
obtains streams through `Connection.open-stream!`, not this helper.
`direction` must be `DIRECTION-IN` for a peer-opened stream or
`DIRECTION-OUT` for a locally opened stream; another fixnum raises `IOError`.
The parent supplies the accepted stream ID and protocol and retains IO ownership.
Construction does not open or register a stream, check connection liveness,
revalidate credentials, or change either authorization lease.

The concrete `NetworkStream` class is private. Its custom initializer assigns all
fields directly and caches one self-referencing `Stream` view in `this` before
returning. `new-stream` is the
public-view constructor; the state/IO exports, including the narrow authorization
installation helpers, remain implementation APIs, not public facade exports.
Imported public interfaces and direction constants are not re-exported here; use
`interface.ss` for those bindings.

| Method | Behavior |
| --- | --- |
| `connection`, `id`, `direction`, `protocol` | Return the retained metadata without locks or liveness checks, including after stream or connection close. The protocol string is retained, not copied; callers must treat it as immutable. |
| `expire` | Under the input mutex, return exactly `io.expire`, the last installed stream credential expiration. It is not clamped to `Connection.expire`, advanced merely by connection renewal, or replaced by the close time. Fixed streams retain their accepted expiration. |
| `reader`, `writer` | Return the existing `io.reader` and `io.writer` interface instances, including after close. Access does not allocate new handles or make a closed handle usable again. |
| `close` | Delegate to `stream-io-abort!`: idempotently abort both directions and wake blocked operations. It does not drain output, join workers, wait for pending work, or invoke monitor callbacks. |
| `set-input-timeout!` | Delegate to `stream-io-set-input-timeout!` with the supplied `IOTimeout`. Expired authorization or fully consumed FIN raises `Closed`; an existing abort rethrows its stored failure. An expected input EOF does not abort reverse output. |
| `set-output-timeout!` | Delegate to `stream-io-set-output-timeout!` with the supplied `IOTimeout`. Expired authorization, draining or finished output raises `Closed`; an existing abort rethrows its stored failure. An expected half-closed output does not abort reverse input. |

The wrapper adds no lock or lifecycle state. IO failures retain the existing first
failure and propagation semantics rather than being translated by the wrapper.
`Stream.close` and `Reader.close` are abortive; `Writer.close` still drains DATA and
FIN under its captured output deadline while leaving input available. Closing the
stream may wait to acquire its IO locks, but never joins the drain or parent work,
so it is safe from a `NetworkMonitor` callback running outside those locks.

The concrete connection calls `new-stream` and owns publication, stream
`NetworkMonitor` open/close callbacks, pending work and final retirement. The
wrapper only uses the IO's existing passive wake path; it installs no callback,
worker, or scheduler hook.

The later [cooperative cancellation decision](design-notes.md#agreed-cooperative-network-cancellation-2026-09-12)
governs this contract. Abort publishes state under the directional locks and
notifies the corresponding CVs while holding their mutexes; blocked operations
recheck state and existing deadlines. Parent socket closure interrupts transport IO
structurally, not through production exception-raising `thread-interrupt!` calls.
vyzo subsequently withdrew the `Interrupt` API and asynchronous raising-recovery
machinery, rather than deprecating it. The remaining network catches and recovery
retries are removed, including wake retries. Normal abort, notification and
ended-borrow cleanup continue; arbitrary external thread interruption and forced
termination remain unsupported. Main has verified this removal; see Tests below.

Pending cancellation belongs to the connection owner and follows the same state/CV
policy. No early public waiter-cancel API is added; use existing deadlines and global
close. Credential/admission workers finish their current context, encoder or callback
call without unsafe preemption. Their quotas, staged work and ownership remain held
until work, cleanup and eligible callbacks finish. Stream abort does not join them;
blocking Network shutdown does. Constructor and callback-return failures still
require cleanup and eligible callback pairing, tested through synchronous faults at
source-private boundaries rather than production injection hooks.

## Construction And Storage

`make-stream-state(limits, peer-window)` returns a concrete `StreamState`, using
`StreamLimits.recv-window` and `StreamLimits.outbound-buffer` independently. Both
local defaults are 256 KiB and local capacities must be positive powers of two,
without rounding. The peer's positive u32 receive window limits credit, not local
allocation, and need not be a power of two. Both the peer window and receive
storage must also fit native fixnums.

`StreamState` and `StreamBuffer` are exported for implementation use only. Their
fields are observational outside this module; use the transitions, not generated
setters or constructors, to manage state. Raw state callers serialize transitions
and observations. `StreamIO` supplies separate directional mutexes and condition
variables, with both locks held for shared abort and retirement observations.
Do not mix raw transitions with IO wrappers on the same state. Cache get/put use
the shared cache's own synchronization. No stream worker or callback is allocated.

Each direction borrows a circular byte vector from `:std/io/bio/cache` on the first
nonempty input. Power-of-two requests guarantee exactly the configured capacity.
An idle direction allocates no payload storage. Cached contents are unspecified;
only bytes actually written into the ring may be read. Storage remains bounded:
there is no growth, compaction, per-write queue node, or copied transport backlog.
Existing BIO memory output grows and its input helpers do not provide this
credit-reserved circular ownership model. Cache adoption here is for stream rings
only; general wire-buffer pooling and its benchmark remain deferred. No measured
performance improvement is claimed.

The send ring includes a committed transport slice until release. Appending new
bytes never overwrites it, including when the ring wraps. Physical allocated
payload storage stays within each local capacity. Empty active rings retain their
allocation for reuse. Completed send directions release storage at FIN completion;
completed receive directions release storage at FIN if empty, otherwise when the
last buffered byte is read.
Abort releases receive storage immediately and send storage after any DATA release.
`stream-buffer-release!` clears the owner reference to `#u8()` and resets ring
bookkeeping before returning nonempty storage. Empty vectors are never put into
the cache. Repeated abort, DATA-release, or FIN-completion transitions cannot put
the same allocation twice; duplicate received FIN still raises `IOError`.
Returned allocations may remain in the shared cache, outside live stream ownership;
local capacities are not a bound on total process memory or cache retention.
Transport framing/decoder storage and caller-owned buffers are separate resources.

## Receive And Credit

- `stream-receive!(state, bytes)` copies one nonempty DATA payload into reserved
  receive capacity and subtracts granted credit. Over-credit DATA or DATA after FIN
  raises `IOError` and must be treated as a **connection-fatal protocol error** by
  the dispatcher. It never waits for the application to consume data.
- `stream-consume!(state, destination, start, end)` copies available bytes and
  returns their count. Every consumed byte immediately contributes to the single
  `pending-credit` counter. Zero means no buffered bytes, not necessarily EOF.
- `stream-credit-commit!(state)` transfers pending credit to granted credit and
  returns the increment, or zero when none is ready/after abort. Call this only
  after reserving mandatory control capacity and satisfying wire ordering. It
  creates no encoded control frame or queue entry. Further reads accrue to the
  next update; even one byte is eligible, with no threshold or batching timer.
- `stream-credit-receive!(state, integer)` validates a peer WINDOW-UPDATE before
  bounded arithmetic. Nonpositive increments or credit beyond the originally
  advertised peer window raise parent-fatal `IOError`.

For a nonaborted stream, the receive invariant is:

`buffered bytes + granted credit + pending credit = local receive window`.

The Reader consumes and returns credit incrementally while satisfying
`need`, even when `need` exceeds the window. It waits on empty non-EOF input,
and applies the standard premature-EOF behavior when FIN cannot satisfy `need`.
The raw state primitives alone do not implement these wait/minimum semantics.

## Send And Completion

- `stream-produce!(state, source, start, end)` copies the accepted prefix into
  remaining local capacity. The caller can mutate the source immediately. It does
  not consume peer credit. Zero on nonempty input means capacity-blocked, requiring
  a wait in the Writer rather than a successful zero-byte write.
- `stream-data-commit!(state, quantum)` returns three values: backing bytes, start,
  and end; or `#f, 0, 0` when no DATA is eligible. Quantum must already incorporate
  the local frame quantum and peer DATA limit. A circular boundary can shorten the
  slice further. Commitment consumes peer credit, **not** outbound capacity.
- `stream-data-release!(state)` ends transport ownership of the one outstanding
  slice and frees its capacity. The writer must retain no reference to that slice
  after release. On transport failure, abort first and then release; do not refund
  peer credit or imply committed bytes can be withdrawn.
- `stream-end-output!(state)` idempotently prohibits new writes and starts draining.
- `stream-fin-commit!(state)` returns true once draining DATA has been released,
  marking FIN in flight. It returns false otherwise, including repeated calls.
- `stream-fin-release!(state)` records successful FIN transport completion, or
  releases FIN ownership after abort. On failure abort before releasing. A successful
  close must not be reported merely because FIN was committed.

Writer.close encloses drain and FIN completion in one captured write deadline and
aborts on timeout/cancellation. There is no peer-consumption ACK.

## Lifecycle Boundary

`stream-fin-receive!` marks inbound FIN; a second FIN is a protocol error.
`stream-eof?` becomes true only after buffered receive data is exhausted, without
closing the sending direction. `stream-abort!` is idempotent, discards unread and
unsent data, suppresses further output commitments, and causes direct application
buffer operations to raise `Closed`. A transport-owned DATA slice remains valid
until release. An in-flight FIN also prevents retirement until release.

`stream-retirable?` checks buffer/transport completion only. Graceful retirement
requires completed local FIN and received FIN with no unread data. Abort requires
release of in-flight transport work. The parent must additionally finish its own
control accounting, pending work, and lifecycle notifications before releasing a slot.

Raw state has no clock; StreamIO enforces its installed finite integer-second
authorization expiry and separate fractional IOTimeout deadlines. Only a verified
stream authorization installation may advance that expiry; connection renewal
alone must not change it or implicitly renew stream authority. The parent also
owns acceptance/publication gating before DATA, fatal protocol-error handling,
RESET scheduling, mandatory-control overflow, late-ID handling, and round-robin
multiplexing. None of those protections can be inferred from buffer construction.

## Blocking IO

`make-stream-io(limits, peer-window, expire, [config])` returns a concrete `StreamIO`
with its own `StreamState`. `expire` is the accepted credential's absolute Unix
second expiration and must be in the future; zero does not disable authorization.
`config` defaults to `NetworkConfig`, whose stream input/output timeouts default to
`!NoTimeout`. The custom `StreamIO(state, expire, input-timeout, output-timeout)`
initializer explicitly initializes all slot defaults and constructs both real
interface views before returning, without taking locks. Its `reader : Reader` and
`writer : Writer` fields are nonnullable; callers reuse these fields rather than
constructing new views. These are not public network objects. The private
`new-stream-reader` and `new-stream-writer` helpers construct each implementation
and cache its interface in `this`; only the StreamIO initializer calls them.

| API | Behavior |
| --- | --- |
| `io.reader` / `StreamIO-reader(io)` | Access the preconstructed Reader view. Reads consume incrementally through `need`, waiting on empty non-EOF input. EOF with an unmet minimum raises `PrematureEndOfInput` without aborting output. |
| `io.writer` / `StreamIO-writer(io)` | Access the preconstructed Writer view. A write copies the entire requested slice through bounded storage, waiting for capacity as necessary, and returns `end - start`; failure raises rather than returning a partial count. |
| `Reader.close` | Abort both directions, discarding unread/unsent data but retaining in-flight DATA until release. |
| `Writer.close` | Prohibit new writes, then wait for DATA drain and FIN transport completion under the first close's single deadline. Repeated close joins that drain or returns after completion. Reverse input remains usable. |
| `stream-io-set-input-timeout!(io, timeout)` | Set the next read's IOTimeout; require live, non-EOF input, preserving any stored abort failure. |
| `stream-io-set-output-timeout!(io, timeout)` | Set the next write/close's IOTimeout; require live, open output, preserving any stored abort failure. |
| `stream-io-abort!(io, [error])` | Idempotently record the first failure, abort state and wake both directions. The default reason is Closed. Parent reset/connection failure uses this hook. |
| `stream-io-expire!(io)` | Explicit raw-owner expiry hook, aborting expired authorization or an overdue unfinished drain. |
| `stream-io-status(io)` | Under both locks, apply expiry and return two values: aborted? and the next active absolute deadline (or #f). The concrete parent service uses this for idle expiry. |
| `stream-io-install-lease!(io, expire)` | Internal lock-taking installation seam described below; not a public renewal or lease-setter API. |
| `stream-io-install-lease-locked!(io, expire, [committed? = #f])` | Internal installation boundary requiring both directional locks and the parent's post-acquisition authorization checks. Committed work may finish authenticated metadata installation after graceful IO retirement, without reopening either direction; abort and actual old-lease expiry still refuse installation. |

The private `stream-io-deadline(timeout: IOTimeout)` captures
`timeout->abs-timeout` once with `value: seconds->time`, returning an absolute user
IO time or exactly `absent-obj`. It does not capture or clamp to authorization.
One write may cross many ring refills and peer-window updates. Partial progress,
notifications, authorization installations and later timeout-setter calls do not
restart its deadline. Internal `stream-produce!` still accepts a bounded prefix,
but that is not a public Writer
return. Successful write means all requested bytes were copied for transmission,
not necessarily delivered; the application may then reuse its input buffer.
The source slice must remain unchanged until the write returns; after partial
progress an exception is not a retryable short count. Reader destinations likewise
remain exclusive to the running read. Both handles operate on `u8vector` bytes,
with the [standard positional slice/minimum arguments](interface.md#byte-io).
The private `stream-io-wait!(io, mutex, cv, deadline)` takes the already captured
user deadline. With the directional mutex held, **each wait** computes the minimum
of that budget, when present, and the current `io.expire`. No time conversion or
`min` is applied to `absent-obj`; no-timeout IO is still authorization-bounded.
Three-argument `mutex-unlock!(mutex, cv, effective-deadline)` releases and waits.
Both true and false results reacquire the directional mutex before the caller's
loop rechecks state, current authorization and the unchanged user budget. A false
result only says that the sampled wait bound elapsed: a timely installation may
have superseded it, including while reacquiring the lock. It is not by itself
permission to raise `Closed` or `Timeout`. No read/write/drain loop recaptures its
user deadline, and completed FIN remains distinct from an overdue unfinished drain.

`output-state`, not `drain-deadline == absent-obj`, identifies whether close has
started. `open` means no drain; `draining` and `fin-in-flight` share the first
close's captured budget. That budget may be `absent-obj` for an unlimited **IO**
drain, still bounded by current authorization. Repeated close joins that drain
without recapturing a budget. `finished` no longer has a drain timer. Installation
does not rewrite any of these states or the captured deadline.

Input locking owns the receive ring, granted/pending receive credit and received
FIN. Output locking owns the send ring, peer credit, DATA ownership and output/FIN
state. Authorization installation, abort and retirement observation acquire input
then output. Either mutex protects authorization reads, so `Stream.expire` uses
the input mutex and remains readable after termination. A failing direction
releases its lock before acquiring both for abort. All acquisitions,
including nested lifecycle locks, use ownership-aware cleanup: a failing
waiter cannot unlock a mutex held by another thread. Accessing the preconstructed
handles takes no lock. The lock macro retains ownership-checked `try/finally`,
including CV waits that release the mutex and explicitly reacquire it. It is not
an ordinary `do-with-lock` critical section. Plain joinable workers must use Gerbil
`spawn-thread`: its `thread-main` abortive handler ensures unwinding without the
actor logging wrapper. No explicit catch cleanup or catch-and-reraise workaround
is needed in the lock macro; raw Gambit thread creation is not supported here.
The ownership guard remains necessary for an ordinary `Timeout` after a CV wait
has released the mutex; it is not asynchronous-only recovery machinery.
Ordinary worker
exceptions propagate unchanged after cleanup; expected EOF or already-closed
direction errors do not abort the opposite direction. Application code must
serialize operations within each direction. Arbitrary external thread interruption,
forced termination and arbitrary continuation escapes are not supported cancellation;
use the explicit abort hook.

## Authorization Installation

The exported implementation helpers have these exact positional contracts:

- `stream-io-install-lease-locked!(self: StreamIO, expire: integer, [committed?: boolean = #f]) -> boolean`
  requires **both input and output mutexes already held**. It does not acquire or
  release them. First it applies current authorization/drain expiry through
  `stream-io-expire-locked!`. Aborted, newly expired or overdue-draining state
  returns `#f` without installing. Fully retirable state also refuses by default;
  `committed?` permits the parent to finish an already authenticated transaction's
  metadata installation after graceful retirement, without reopening IO or
  bypassing actual expiry. A live proposal must be in
  `1..#xffffffffffffffff` and strictly greater than `io.expire`; invalid-range,
  equal or backward proposals raise contextual `ContractViolation` without aborting
  a live stream. Terminal refusal precedes these live-proposal checks. Type
  contracts still reject noninteger programmer arguments.
- `stream-io-install-lease!(self: StreamIO, expire: integer) -> boolean` acquires
  input then output and delegates to the locked helper. It is a standalone internal
  owner/test seam, not a sufficient parent protocol installation boundary.

Successful installation assigns only `io.expire`, broadcasts both directional CVs
under their mutexes and signals the existing passive wake leaf under its own mutex,
then returns `#t`. It preserves the Stream/connection references, stream ID,
direction/protocol, Reader/Writer instances, rings and their backing vectors,
credits, actual DATA borrow, received FIN, output drain/FIN state, user timeout
settings and captured drain budget. A half-closed stream, including finished output
with unread input, can still renew. Abort and full retirement cannot be resurrected.
The custom initializers and cached interface construction are unchanged.

The parent must hold **parent operation -> input -> output** at the authenticated
installation transition. Recheck its current installed connection lease, closure,
round identity, selected credential coverage/target and operation deadline **after
both stream-lock waits**, immediately before calling the locked helper. Checking
only before calling the lock-taking wrapper is insufficient: the connection or
round can expire during those waits even though parent state is serialized. The
helper has no connection reference or credential evidence and cannot perform those
checks itself. Parent renewal waiters also need notification under the parent's
mutex; the stream helper supplies only directional and existing leaf notifications.

Neither helper initiates renewal, enables policy, validates credentials, invokes
allow/open/monitor callbacks, nor modifies `Connection`. Do not expose them through
the public facade or use generated expiration setters in place of this transition.
Fixed streams never use installation. `io.expire` is the sole installed stream
authority; the parent must not keep an opening's historical expiration as a second
established clock. Once installation has occurred, later protocol/output failure
may close the stream, but must not roll its reported installed expiration backward.
See [renewal-plan.md](renewal-plan.md) for the parent-owned protocol integration.

## Parent Integration

Framed receive dispatch in `connection.ss` holds the parent operation mutex and
both stream locks, in input-then-output order, across lookup/lifecycle validation
and the raw state transition. The private exports `stream-io-expire-locked!` and
`stream-io-abort-locked!` require **both locks**; they do not acquire them. This lets
the parent distinguish ordinary terminal/expired streams from live protocol errors
atomically, and suppress remote RESET echo before abort notification. Directional
wrappers below must not be called while those locks are held. These locked helpers
are not public Stream methods or a new callback/connection backreference.

The expiry-gated wrappers are `stream-io-receive!`, `stream-io-credit-receive!`,
`stream-io-fin-receive!`, `stream-io-credit-commit!`, `stream-io-data-commit!` and
`stream-io-fin-commit!`, with the same non-IO arguments/results as their state
counterparts. They take only the owning directional lock. Output commits also
enforce the captured drain deadline. Protocol errors abort the affected stream and
propagate; the parent must still treat them as connection-fatal.
`stream-io-data-commit!(io, quantum, [scan? = #f], [defer-cleanup? = #f])` supports the
internal scheduler scan: with `#t`, already-aborted or newly expired state observed
under output returns `#f, 0, 0`. On newly observed expiry it drops output before
acquiring input then output to apply abort. Normal DATA commitment still uses only
output. The expiry branch is source-level state handling, not a catch-all
Closed/Timeout filter: arbitrary raised acquisition/cancellation failures propagate
with their original identity. Default direct-call behavior remains raising.
The private parent scheduler sets `defer-cleanup? = #t` only after retaining a
provisional work record with the StreamIO reference. Unknown exceptions then
propagate without the local error-abort handler, allowing the parent to close its
socket outside the operation mutex before abort/release. A commit can already own
DATA even if it raises before returning its slice. This flag does not suppress
ordinary observed stream expiry or change standalone default behavior.

By default, `stream-io-data-release!` and `stream-io-fin-release!` always release
transport ownership and return void, including after abort/expiry. A failed liveness check aborts before
recording completion, so it cannot turn expired output into a successful close.
Release records that failure on the stream rather than throwing it instead of
freeing the retained buffer. Subsequent IO observes the failure.
Cleanup waits for the actual lock owner; it never steals the lock or reports
successful expired FIN. Normal release after an existing abort remains nonthrowing.
Ordinary `Error`, `Closed`, `Timeout` and raised `#f` are failures, not cancellation
requests. The outer release handler still aborts and returns ended transport
ownership on failure; `finally` retains that obligation even if abort itself raises.
Completed release and attempted notification must be tracked so cleanup does not
replay a completed release or blindly reissue a failed wake. An abort's required
terminal notification is distinct from retrying the failed operation. No injected
exception recovery is supported; use cooperative abort and synchronous fault tests.

Both accept an optional internal `connection-expire` absolute integer Unix-second
deadline, default `#f`. This is the parent's current installed connection lease,
not a new relative timeout or a mutation of `StreamIO.expire`. They check it under
the **actual output mutex**, after any acquisition wait and before recording DATA
release or FIN completion. If that lease is expired, they return `#f` without
aborting, releasing storage, publishing FIN success, or notifying waiters. The
parent retains ownership and must close its socket outside its operation mutex,
abort the connection's streams, then retry release with the default `#f` argument.
With a supplied lease, **unknown raised exceptions also bypass local error cleanup**,
including synchronous failures before the output lease gate executes.
The parent retains work/accounting, closes its socket, then aborts and retries
ungated. This is ownership-based handling, not an exception-class filter. Stream-only
authorization/drain failures are observed directly and can still abort locally
without closing healthy siblings; arbitrary exceptions are not caught and mistaken
for those observations. A successful leased release omits its redundant leaf wake:
the parent wrapper supplies that notification. It still broadcasts the directional
CV and returns void. No connection reference, callback, procedure slot or renewal
policy is installed on StreamIO. This argument and its release-time gate are
unchanged by the stream substrate: stream installation cannot extend the supplied
connection bound. The parent must supply its authoritative lease while serializing
connection installation; the release reads current `io.expire` under output, not a
copy of the stream's opening authorization.

An exception may follow partial release/notification progress. Callers must stop
using payload/header references when they attempt release, not only when it returns.
The source release primitives are idempotent; parent abort precedes the ungated
retry, and scheduler accounting is returned once. Ordinary standalone release still
performs its own abort/release before propagating a failure.

`stream-io-input-ready?` observes pending credit. `stream-io-output-ready?` observes
eligible DATA or FIN. These are expiry-gated observations, not reservations; the
parent must recheck through commit. Wrappers broadcast the directional CV on
progress. Never call wrappers while holding a stream lock.
`stream-io-control-ready?(io, credit?)` is the internal scheduler observation for
pending credit (`#t`) or drained FIN (`#f`). It acquires input then output with
ownership-aware cleanup, applies authorization/drain expiry, and returns false for
aborted or expired state rather than raising the stored error. It does not reserve output or
grant credit; commitment must still recheck liveness. Existing directional IO gates
and their independent progress are unchanged.

`stream-io-control-commit!(io, credit?)` is the managed selection boundary. Under
both locks, it checks authorization and drain expiry immediately before committing
credit (`#t`) or FIN (`#f`). It returns the granted credit count or FIN success
boolean, respectively; terminal/not-ready state returns zero or false. Holding
both locks prevents a grant after a drain deadline that expired between a prior
readiness observation and commitment. Raised acquisition/commit exceptions propagate
to the scheduler's abort/release cleanup. This does not change the input-only direct
credit wrapper or output-only DATA/FIN wrappers.

Graceful retirement suppresses the idle timer, not authorization checks at either
managed control gate. Final-read credit may remain pending after both directions
finish; once authorization expires, readiness is false and credit commitment returns
zero without granting credit, aborting the retired stream, or scheduling RESET.
The scheduler cancels the stale reservation and frees its budget. The graceful EOF
state and retirement predicate remain unchanged; direct Reader expiry behavior is
outside this managed-control policy.

The private [connection parent](connection.md) now supplies automatic progress over
the managed scheduler. Registration atomically attaches one shared `StreamWake` to
an existing accepted IO while excluding both directions and parent service. The
constructor initializes `io.wake` to #f; unregistered IO remains independently usable
without a notifier. Attachment is an exactly-once internal ownership contract, not
a rebind/detach API. Do not set the field directly or register the same IO with raw
and automatic schedulers concurrently.

Notifications occur on every positive partial read **inside** the minimum-read loop,
accepted write, first Writer.close initiation **before** waiting, credit receipt,
input FIN/final consumption, DATA/FIN release (including error cleanup), and first
abort, and successful authorization installation. Stream code only touches the
passive wake leaf, never the scheduler or parent operation mutex. Successful
status/readiness/commit observations do not
self-notify. First abort must publish its terminal notification; terminal state
alone cannot stand in for an unfinished wake. This is a state/CV obligation, not
a requirement to retry an injected thread exception. There is no callback,
procedure slot, per-read message or stream worker.

The lock order is **parent operation -> stream input -> output -> wake leaf**.
Never acquire parent/stream locks while holding the leaf. `StreamWake` holds one
mutex, two CVs and two coalesced booleans: service and output consumers cannot clear
each other's notifications. `stream-wake-signal!` marks both by default; its #f
service flag marks output only. The internal `stream-wake-signal-locked!` variant
is for atomic registration while already holding the leaf. All broadcasts hold
their associated mutex.

`stream-wake-take!(wake, service?, deadline, [wait? = #t])` waits on that consumer's
bit (or the absolute time deadline; #f means indefinitely), then clears only that
bit **before** the caller scans. With wait? false it clears without sleeping for an
initial scan. After mutex-unlock! releases/waits it explicitly reacquires; spurious
wakes retain the same absolute deadline. Ownership-aware cleanup never unlocks a
mutex held by another thread after a failed wait/reacquisition. Wakes during
a scan remain pending for the next pass.

`stream-io-status` observes/applies the latest authorization expiry and the unchanged
active unfinished drain budget atomically under input then output. Its next deadline
is their minimum when the drain has an IO limit, otherwise current authorization.
Output state distinguishes an active unlimited drain from no drain. Aborted or
fully finished/retirable streams return no deadline, including
aborted DATA/FIN borrows whose registry entries must remain owned. A finished
output direction with unfinished input retains the authorization timer but not an
old drain timer. Connection lease validation and renewal remain owner integration;
neither this helper nor stream notification grants connection authority.

`stream-io-retirable?` synchronizes the state-only retirement predicate; the parent
additionally checks managed control ownership before allowing explicit removal.
The service does not remove protocol slots or implement callback/publication policy.

## Tests

Current build/regression and final-acceptance evidence belongs to the
[main-owned checkpoint](implementation-notes.md#current-checkpoint). The results
below preserve earlier revision-scoped review evidence, not the latest suite counts.

### Historical Review Checkpoints

The final renewal-review build and focused runtime run passed all 25 StreamIO
cases and 12 renewal protocol cases. The latter includes real FIN/final-read races
with ACK receipt and release, preserving peer unread data. The complete 36-module
regression also passed in 551.305 seconds. Exact commands, logs and residual
coverage are recorded in [implementation-notes.md](implementation-notes.md).

The StreamIO suite now includes internal forward-installation/range/terminal checks,
expiry after an input-then-output lock wait, actual no-timeout Reader/Writer waits
surviving the old authorization bound, and a false timed CV return that must queue
on output rather than start abort on input before reacquisition. Further cases cover
fixed read/write/drain budgets despite repeated installation, an overdue drain
rejecting installation, unchanged rings/credits and actual borrowed bytes, passive
wake bits, half-closed renewal, and full-retirement rejection. The unlimited-drain
case crosses the old authorization bound without losing close/FIN state.

A new 9 MiB transfer uses one `Writer.write` and one full-minimum `Reader.read` on
the original cached handles, backpressured across renewal through 256 KiB rings and
windows. Only parent DATA/credit pumping loops; no application retry loop masks a
short write. These tests use explicit internal installations as **unit seams**,
not fake public proof of authenticated renewal. Gates observe actual mutex/CV wait
states and release cooperatively; cleanup aborts, joins and then releases borrows.
No injected thread interruption, forced termination, substitute Connection, or
second transport implementation is added.

`network-e2e-test.ss` additionally verifies basic echo, a single 4 MiB write and ten
concurrent 4 MiB writes through real public TLS connections with delegated trust.
Each write is one call and must report the full size; echoed bytes and normal FIN
completion are checked. The focused StreamIO suite also verifies whole writes
larger than the ring/window, nonzero slices, empty writes, retained transport
borrows and timeout/abort after partial progress. No caller retry loop masks a
short successful write.

The public `Stream` wrapper is exercised through real Networks and Connections in
the public API and OPEN ownership suites. Earlier eight/six-case counts and the
35-module regression after an 8-core build on 2026-09-12 are historical checkpoints,
not verification of later replacements. Before the API withdrawal, main verification passed
all 11 public API and 12 OPEN cases, the 8-core stdlib build and the broad 33-module
network/UCAN/shared-IO regression. The latter excludes `std/sync/threads-test` and
`std/sync/rwlock-test`, unchanged at that checkpoint.
A formatting-only rebuild and all 23 public API/OPEN cases passed again.
The StreamIO suite then had 16 source cases. Those earlier results do not verify
the later withdrawal. The shared Reader
minimum-read fix and SSL lifetime cleanup remain unchanged. See the main-owned implementation
handoff for commands and revision scope. No substitute Connection/Network fixtures
are used for the public byte-path milestone.

Main has now verified the removal: the 8-core `make stdlib` full transitive stdlib
rebuild after `std/error` changed passed, without a core/full Gambit build. All 54
focused cases passed (RWLock 3, framed 16, transport 20, native Reader 15), as did the
revised 33-module network/UCAN/supporting-IO command. That command replaces deleted
`std/error-test` with cooperative `std/sync/rwlock-test`, and excludes the shared
`std/sync/threads-test` intentional-termination suite. Main found no `Interrupt`
references in `src/**/*.ss` and no export through `build/lib` introspection. Static
review found no normal-cleanup regressions or missed asynchronous-only overhead;
`released?`/`notified?` flags still protect ordinary errors, and native SSL lifetime
cleanup and Reader minimum/EOF fixes remain. Main owns authoritative command/revision
records and any separate final formatting-only rebuild, not yet claimed complete here.

The descriptions below preserve earlier coverage. Interruption-injection cases are
historical, not current network correctness requirements. The agreed replacement
policy is cooperative cancellation and synchronous source-private fault injection.
All network test source is now free of `thread-interrupt!` and `thread-terminate!`;
production never calls `thread-interrupt!`. The remaining `Interrupt` catches have
now also been removed, not retained as synchronous fallbacks. The results above do not prove the
native thread-as-PC crash fixed; the 2000 CV handovers and 20 cooperative real-stage
iterations that passed under live GDB leave the causal hypothesis unproved.

`stream-test.ss` tests copied short writes, lazy independent limits, circular
wraparound with a live transport slice, receive/credit invariants, credit exhaustion,
a finite incremental transfer larger than the receive window, malformed credits and
DATA/FIN state, graceful unread retention, abort during DATA/FIN ownership, and
independent streams. Cache-isolated fixtures check actual identity reuse, exact
capacities, idle storage, distinct receive/send ownership, once-only return counts,
and transport-owned DATA remaining unavailable for reuse until release. Fixtures
flush only the BIO buffer cache and clean up stream ownership on exit.
They discard prior buffer-cache contents rather than snapshotting/restoring them,
and assume no concurrent users of that cache during count/identity assertions.
Thirty-two caller-serialized abort/release races have finite
thread join limits. These are actual buffer/lifecycle tests, not interface probes
or claims of a working public network or transport multiplexer.

`stream-io-test.ss` also retains actual cached Reader/Writer coverage for independent
directional lock progress (deliberately holding the opposite lock), simultaneous
bidirectional minimum reads larger than capacity, feed/release wakeups, whole-slice
writes, EOF and reverse use, DATA/FIN close completion, reset/expiry wakeups, parent
gates and transport-owned cache retention through abort races. Parent pumping and
thread joins are finite; cleanup aborts, joins workers and releases transport
ownership. The suite drives parent progress explicitly, not production connection
scheduling. Earlier acquisition/release interruption tests are historical, not
current coverage.

`connection-parent-test.ss` tests the automatic service and notifications, including
minimum reads, idle expiry, in-flight ownership, coalesced/lost-wake boundaries,
remote RESET suppression, registration rejection, shutdown and single raised
interruptions in waits, releases and first-abort notification. The original raw
StreamIO tests remain useful for independent directional progress and direct-call
exception behavior.

An earlier checkpoint recorded the reviewed custom constructor and adjusted tests
passing a build and 23-module regression after a `:condvar` predicate change. This
historical result is not a claim that the later bogus thread-as-PC failure during
CV wake has been fixed. See the later decision's observations and causal caveat,
and the historical verification checkpoint in implementation-notes.md.
