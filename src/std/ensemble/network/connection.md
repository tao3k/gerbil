# Connection Admission And Scheduling

`connection.ss` implements the public `Connection` interface as `NetworkConnection`,
with real OPEN/OPEN-ACCEPT/OPEN-REJECT admission and concrete public streams. It also
preserves the private, caller-serialized `ConnectionScheduler` and preaccepted
`ConnectionParent` APIs. Applications obtain connections through the public network
facade; implementation records and admission/scheduler helpers are not facade APIs.
Network establishment, election, publication and connection notifications belong
to [network.ss](network.md); stream-local IO belongs to [stream.ss](stream.md).

Both connection paths share bounded control scheduling, borrowed DATA output, one
framed reader and writer, and an independent service/timer. Public activation adds
bounded asynchronous admission and stream notifications; it is not a shortcut that
registers supposedly accepted IO. The public engine implements version-1 explicit
connection renewal, opt-in renewable connection policy, and connection-linked stream
reauthorization. It enforces the **last installed authenticated leases**, not a policy
sentinel or an expiration recomputed from activity. See [Renewal Scope](#renewal-scope)
and [renewal.md](renewal.md#current-implementation) for the current protocol and ownership.

Cancellation follows the later
[cooperative decision](design-notes.md#agreed-cooperative-network-cancellation-2026-09-12):
close/abort and pending cancellation publish state under the associated mutex and
notify its CVs while holding that mutex. Socket close interrupts IO structurally
before joins, never by production `thread-interrupt!` injection. vyzo subsequently
withdrew the `Interrupt` API and asynchronous raising-recovery machinery, not merely
deprecated it. The remaining network catches and abort/release/wake/native-close
retries are removed. Normal socket-first cleanup and ended-borrow release continue;
SSL lifetime cleanup and the shared Reader minimum-read fix are unchanged.
Main has verified this removal with the transitive stdlib rebuild, 54 focused cases
and revised 33-module regression described under Tests; earlier checkpoints remain historical.

## Public Connection

`NetworkConnection` caches its `Connection` view in `this` and retains its owning
Network, monitor, handshake candidate, configuration/limits and parent. Configuration,
limits and returned metadata are immutable by convention while in use.
Its implementation fields are not public mutation or lifecycle controls.

| Public method | Current behavior |
| --- | --- |
| `network`, `address`, `peer-address`, `peer`, `direction` | Return the owner and captured endpoint/identity metadata. Direction follows the physical initiator, not the DID election role. |
| `expire` | Return the last installed expiration under the parent mutex: `ConnectionParent.expire` after attachment, otherwise the handshake candidate's expiration. It is the minimum of the two accepted connection credentials. Closing retains it, not the close time. |
| `open-stream!(protocol, [auth = #f], ttl: #f, expire: #f, lease: #f)` | Open an authorized bidirectional `Stream`, returning only after acceptance and the local open callback complete. `lease: 'connection` opts into linked reauthorization; nonfalse policy excludes nonfalse lifetime overrides. Requires activation. |
| `set-input-timeout!`, `set-output-timeout!` | Set the shared transport's `IOTimeout` policy, not stream application timeouts or authorization. Before activation, retain the policy for installation. |
| `close` | Stop admission and abort owned IO without joining callbacks/workers. Idempotent and callback-safe; it is not blocking Network shutdown. |

### Activation And Metadata

| Internal helper | Contract |
| --- | --- |
| `make-network-connection(network, monitor, candidate, config, limits)` | Capture socket addresses while usable and construct a parent with its service thread. Do not consume the candidate socket or start framed IO. Return the concrete implementation, not its interface view. |
| `connection-activate!(connection)` | Require the candidate's confirmed phase, protect renewal capacity for adaptive candidates, consume its final socket with the initial authenticated expiration, install connection IO policy, associate the public owner, and start framed workers with the physical role and zero initial OPEN marks. Preserve pre-activation policy/seed. |
| `connection-shutdown!(connection)` | Close before joining parent, admission/notification and renewal workers outside locks. After the complete join barrier, retire released renewal owners/operations and completed openings, including owners that outlived service. Finish eligible stream-close notifications before Network emits connection-close; suppress only the exact retained parent-close failure and report distinct cleanup failures. Never self-join. |

Network exposes the metadata-bearing Connection to `on-open-connection` before
activation. Metadata is already available, but `open-stream!` fails at this stage.
The callback is not a readiness event; application workers must await public
`Network.connect!` reuse/join before opening streams on it, outside the callback.
Pre-activation `close` marks the dormant parent closed; setup still owns the
unattached candidate socket and its cleanup. Timeout setters may record policy,
but do not perform framed IO. Activation is after all identity, UCAN and CONFIRM
obligations and handshake IO ownership have ended. The Network owner enforces the
original establishment deadline through handoff/publication; constructing this
object or checking the confirmed phase does not replace those obligations.

Attachment first clears captured handshake IO deadlines to `!NoTimeout`; public
activation then installs `NetworkConfig.connection-input-timeout` and
`connection-output-timeout`, or values set before activation. A separate timeout
mutex serializes these changes with activation. Socket setters run outside parent
and stream locks. Relative and absolute policies use the existing high-level IO
semantics; later changes do not restart an already captured operation deadline.
A transport timeout or abandoned partial frame closes the shared connection.

The installed expiration is never recomputed from activation time, a timeout change
or stream opening. It remains binding with `!NoTimeout` and with no streams. Only
authenticated renewal advances `parent.expire`; the candidate retains historical
establishment evidence. The cached addresses and retained owner, identity, direction
and last installed expiration remain available after close without querying the
closed socket. Valid live operations on a closed parent raise its retained failure.
There is no public expiration setter.

## Bounded Stream Admission

Each `ConnectionOpening` owns one total-stream slot from preparation through final
retirement. `ConnectionLimits.pending-streams` (default 16) is an additional
sublimit within `total-streams` (default 128), shared by both opening directions;
zero disables new admission. Callback-visible or cancelled-but-unfinished openings
still count. The bounded opening list owns worker handles, credential references,
any StreamIO/public Stream, and opening/terminal controls. There is no detached
credential queue, admission pool or callback backlog.

Outgoing admission reserves a slot under the parent mutex before credential work
or monitor callbacks. Incoming OPEN advances its peer high-water mark and reserves
capacity before token decoding/verification or callbacks. The reader validates and
reads one bounded frame, then decodes its outer OPEN fields; cryptographic/context
work runs on a named joinable admission worker. At incoming capacity it queues a
mandatory OPEN-REJECT with `reason-limit` instead of waiting for capacity or starting
another worker. Local capacity refusal fails only the new call.

Each admitted opening has one marked `spawn-network-thread` worker. Its handle is published under
the parent mutex before its initial gate permits external work. That same worker
performs admission, open notification, acceptance waits, terminal waiting and the
eligible close notification. It can outlive the initiating call and remains owned
after admission succeeds; no worker is created per callback or application IO.

In fixed/default mode the required stream expiration is resolved once at local
`open-stream!` entry:
nonfalse `expire:` takes precedence over `ttl:`, otherwise use the independent
`NetworkConfig.stream-ttl` default of 3600 seconds. Both overrides retain their
argument contracts; the resolved target must be a future u64 Unix-second value.
The stream-open deadline is independently captured from `stream-open-timeout`
(default 10 seconds), at local call entry or incoming reservation. Preparation,
queueing, acceptance and callbacks consume that one deadline; progress never
restarts it. Gates recheck cancellation, the connection lease, the pending deadline
and stream authorization after waits/asynchronous results and at selection/dispatch.

Stream authority is opener-to-recipient INVOKE authority for the protocol. A
supplied `auth` is a DELEGATE parent; otherwise generation uses context policy.
The recipient validates identity/capability/trust and full requested lifetime,
selecting longest-expiration-first with stable ties and replying with the
**original bundle index**. Initial OPEN has no extra stream headroom requirement or
reciprocal stream credential for response DATA. `Stream.expire` is the selected
token's expiration, not a clamp to `Connection.expire`; actual usability ends at
either lease or connection closure. Opening a longer-lived stream never renews
the connection.

Linked OPEN instead captures the current installed connection expiration as its
strict initial target, using adaptive finite protocol credentials and the version-1
OPEN mode byte. It is legal on a fixed connection and does not enable automatic
connection renewal. A linked `RenewalScope` is created at accepted IO registration:
validated ACCEPT receipt for the opener, **writer ACCEPT selection** for the callee.
The callee can therefore handle renewal before ACCEPT output release and subsequent
admission-worker bookkeeping; the opener's local open callback need not have finished
either. Renewal eligibility uses registered linked IO and actual lifecycle, not
`pending? = #f`. This does not clear the opening's separate deadline/accounting flags.
Registration captures the current parent expiration as `desired`; connection
installation and successful OPEN completion refresh it, so a raced extension is
not frozen at the original OPEN target. See [renewal.md](renewal.md#current-implementation).

`connection-opening-expiration(entry)` is an internal parent-serialized liveness
helper: its caller already holds `ConnectionParent.mx`; it does not acquire that
mutex. It returns `entry.io.expire` when IO exists, otherwise a positive selected
`entry.expire`, otherwise the current `entry.owner.parent.expire` for linked OPEN
or `entry.required` for fixed OPEN. The linked captured requirement remains the
strict initial credential-coverage target, not an immutable liveness cutoff before
credential selection. A parent renewal can therefore let a linked OPEN cross its
captured target while still awaiting selection or ACCEPT. It cannot restart the
opening deadline or bypass selected-grant coverage and expiration checks; installed
IO authority takes precedence as soon as that IO exists.

### OPEN Encoding Ownership

After issuing local tokens, the worker measures the fixed OPEN fields plus an empty
bundle using `frame-payload-size`. Before producing retained wire blobs it reserves
one control frame and `13 + allowance` bytes. The allowance is the smaller of the
local/peer control payload ceiling and remaining aggregate control-byte capacity
after the header. Insufficient fixed-field space or frame capacity fails locally.

This reservation is **staged and unqueued**, with ID zero as an internal placeholder,
not a valid wire OPEN ID. Token-blob encoding takes place outside parent/stream locks.
Unfinished preparation cannot block ready credit, FIN or other controls at the
FIFO head; those controls still require their own available budget. Cancellation
or connection close leaves the staging reservation fully charged while the worker
owns it, even if serialization has produced blobs but not published ready work.
The scheduler's queue-only close cannot reclaim it. The worker's dynamic finalizer
ends staging ownership and cancels the reservation on failure, cancellation or close.

`encode-auth-bundle` uses a bounded BufferedWriter that checks single-byte and bulk
writes before forwarding to a growable memory writer. Its cumulative allowance
includes the bundle count and each blob-length prefix, in addition to the other
OPEN fields/header accounted above. A fresh DAG marshal context per token preserves
the ordinary token encoding and original order. This is a bound during serialization,
not an unbounded marshal followed by a length check. Tokens and other source fields
must remain immutable throughout preparation and encoding. The allowance bounds
logical serialized output, not exact heap use, token issuance/signing, serde graph
metadata or decoded-object work; extra decoder/count/depth budgets remain deferred.

After encoding, the worker measures the complete payload with the same codec. A
parent-locked gate then rechecks liveness, refunds only unused allowance, and performs
the bounded payload assembly/fill before enqueuing ready OPEN. Its actual
header-inclusive charge remains through writer selection and transport release.
Opening-owned replies use the same payload measurement before control reservation.
Neither admission workers nor the writer create a second selected-frame backlog;
DATA continues to borrow its ring slice without a concatenated frame copy.

### IDs And Acceptance

The physical initiator owns odd IDs and the responder even IDs. Local OPEN stays
at placeholder ID zero through asynchronous preparation. **Writer selection**
allocates the next ID, encodes its header and advances `local-open-id` under the
parent mutex, before socket IO. Thus reverse preparation completion order cannot
put decreasing IDs on the wire. Cancellation before selection consumes no ID and
sends no OPEN. After selection, OPEN is irrevocably before any cancellation RESET
through the single-work writer. Exhaustion refuses new local openings without
wrapping/reusing IDs or invalidating existing streams.

For peer OPEN, dispatch checks parity and strict increase, then advances
`peer-open-id` **before capacity admission, authorization or callbacks**, even when
the opening is rejected. Neither mark is inferred from accepted registry insertion.
The two marks plus bounded pending/live entries support gaps and late frames
without lifetime tombstones. Non-OPEN frames above their owner's mark are fatal;
bounded frames for cancelled, retired or skipped IDs cannot resurrect a stream.

The outgoing side validates OPEN-ACCEPT only in its sent phase, including the
original credential index, lifetime coverage and positive peer window. It creates
and registers IO at that transition, then runs its local `on-open-stream` callback.
On the incoming side, authorization and the normal return of `on-open-stream`
precede queuing OPEN-ACCEPT. Its IO may already be callback-visible but remains
unregistered until ACCEPT selection. Selection registers it for receive dispatch,
since the peer can reply before the local write returns; the single-work writer
still prevents response DATA from preceding ACCEPT. Incoming acceptance completes
only when the real writer releases ACCEPT.

Only the admission owner performs this post-start registration. The preserved
`connection-parent-register!` API remains sealed after startup. Pending accounting
ends on success only after the local open callback and the applicable acceptance
completion (validated receipt for the opener, output release for the recipient).
The total slot and any outstanding control/transport ownership remain separate.

### Callbacks And Retirement

`allow-stream?` runs locally before outgoing OPEN preparation/commit, and remotely
after credential validation before acceptance. It is advisory, not a reservation.
The open callback makes final admission. Callbacks run inline on the owned worker,
outside parent/stream locks, and must return promptly without blocking IO or waiting
for progress on the invoking path. Hand stream IO to an application worker instead.
Different openings may invoke callbacks concurrently; monitor-wide accounting needs
its own synchronization.

Each stream's open and close notifications occur at most once and never overlap.
Only a normally returning open callback qualifies for close notification, including
when it closed the object or concurrent cancellation/expiry already occurred. Any
open exception, including `Closed` or raised `#f`, aborts without an unmatched close
callback; the monitor must roll back its own partial registration. A local caller
receives the original failure. Incoming callback failure is contained to that
opening. Unexpected callback failures are logged; close-callback failure is logged
and counts as completion without preventing cleanup or other notifications.

Cancellation publishes the first opening failure and wakes the caller, but is not
worker/cleanup completion. It aborts even callback-visible **unregistered** IO;
repeated cleanup cannot skip an unfinished abort just because `cancelled?` is set.
Before incoming ACCEPT selection, a required reply is OPEN-REJECT; after selection
it is RESET. Outgoing cancellation after OPEN selection likewise requires RESET.
Registered IO uses managed RESET. Required terminal work has its own retained
ownership. A live pending opening cancelled by remote rejection/reset suppresses
an echo; already-cancelled openings discard late frames. Late acknowledgments cannot
restore cancelled state. No path withdraws an already borrowed frame.

The service includes pending opening deadlines alongside connection/stream timers
and wakes admission CVs as IO progresses. A timed-out or cancelled caller can return
while an encoder or callback is still running. Such work remains counted until it
actually finishes. Credential/admission workers finish their current context,
encoder or callback call without unsafe preemption, then check cancellation before
further publication. Quotas and ownership stay charged until work, cleanup and
eligible notifications finish. Deadlines do not provide hard real-time shutdown.
No early public waiter-cancel API is added: public callers use existing deadlines
and global close; source-private tests exercise internal pending cancellation.

Service and local pre-admission calls reap completed workers: snapshot under the
parent mutex, join outside it, then recheck identity and ownership under the mutex.
Removal requires worker/eligible notification completion and released opening and
terminal controls, plus completed worker/control ownership for any renewal rounds.
Registered streams additionally require retirable IO, no borrowed frame for the ID,
released managed credit/FIN/RESET and completed RESET
admission/suppression. Failed pending entries retain pending capacity until this
removal; successful streams retain their one
total slot until retirement. Public admission owns this reaping; raw scheduler
callers retain explicit removal obligations.

`Connection.close` does not wait for these callbacks to return. Network's
`connection-shutdown!` integration does join the admission/notification and renewal
workers as well as the parent workers before connection-close notification. Blocking
`Network.close` rejects any network worker, including callbacks and finalizers, with
`ContractViolation` before locking or shutdown effects, even for another or already
closing network. Dispatch to an application thread and return from the callback;
the new thread does not inherit the marker. Callback-safe object close does not promise nonblocking lock
acquisition or reclaim a still-running worker's reservation.

### Failure Scope

Envelope errors are always connection-fatal. Malformed decoded outer payloads and
impossible **live protocol state** are also fatal: wrong/repeated/decreasing peer
OPEN IDs, future IDs, DATA/credit/FIN before acceptance, invalid or out-of-phase
acceptance, credit violations and live
post-FIN DATA. Handshake frames remain invalid after activation; public renewal
frames have their own role, correlation and live-state checks. The private preaccepted
path still rejects renewal. Fatal dispatch publishes the exact failure under parent
serialization before socket-first
cleanup; partial transport IO is never resumed as another frame.

Admission refusal, credential failure, local size/capacity refusal, opening
timeout/cancellation, valid RESET and stream-only IO/authorization expiry are local
to the affected stream. Authentication/context/encoding exceptions abort that
opening; they are not silently skipped to try another malformed token. Mandatory
ACCEPT/REJECT/RESET/credit/FIN output that cannot fit the configured control budgets
is connection-fatal rather than dropped or put in an unbounded queue.

Pending expiry/cancellation is checked **before** interpreting an acknowledgment,
so an expired opening's late ACCEPT, even with an otherwise invalid index, is not
a live-state protocol violation. Accepted-stream dispatch likewise checks lifecycle
atomically before decoding live controls. Scope follows the actual state and failure
source, not blanket `Closed`/`Timeout` catches or exception text. A connection-lease
observation at a public call or worker gate still requires native socket close and
sibling abort; setting closed flags alone is not cleanup. First-failure identity,
including false values, and distinct cleanup failures retain the parent rules below.

## Private Scheduler Ownership

`make-connection-scheduler(limits, peer-data, peer-control)` takes immutable local
`ConnectionLimits` and the authenticated peer's positive u32 payload advertisements.
The DATA quantum is the minimum of the local DATA ceiling, peer DATA ceiling and
native fixnum capacity. Control payloads must fit both local and peer ceilings.
Neither advertisement mutates the supplied limits or increases local buffering.

All scheduler transitions must be serialized by the enclosing owner, including
reservation, fill, selection, cancellation, registration, removal, release and
close. This layer has no mutex or wait loop of its own. Applications may use each
registered StreamIO's Reader and Writer concurrently with scheduling, under the
stream module's directional serialization contract. Never hold a stream mutex
when calling the scheduler: its calls acquire StreamIO locks and may perform abort
cleanup. No callback or transport I/O runs inside a scheduler transition.

`ConnectionScheduler`, `ConnectionStream`, `ConnectionWork`, `ConnectionParent`,
`NetworkConnection` and `ConnectionOpening`, along with the separate `renewal.ss`
records, are exported only for implementation modules and tests. Fields are
observations, not a mutation API. Use the appropriate
owner transitions rather than constructing work records or modifying their state.
The public contract is the interface, not these implementation exports.

## Shared Parent

`make-connection-parent(limits, peer-data, peer-control)` creates its own scheduler,
operation mutex and shared `StreamWake`, and starts one named joinable service
thread with `spawn-network-thread`. It uses Gerbil `spawn/name`, preserving
`thread-main`'s abortive unwind handler. The helper catches failures outside the
worker body, after dynamic cleanup unwinds, then logs at debug level and returns
an internal `NetworkThreadError`. Explicit `network-thread-join!` calls rethrow
the original exception, including `#f`, without the actor's unhandled-error trace.
The helper marks entry using actor-slot thread locals, not inherited parameters
or the global plain-thread local-table mutex. Reader, writer, opening and renewal
workers use the same helper, including their finalizers.
The two aggregate join barriers inspect raw completion wrappers before retaining
the first failure and continuing their joins. This distinguishes worker-raised
`Timeout` from join-operation timeout and preserves normal-close identity rules.
See [thread.md](thread.md) for the internal result protocol.
The service does not depend on its worker slot; the constructor stores the join
handle before returning. The raw `ConnectionParent(scheduler: ...)` constructor uses
field defaults for its mutex, wake state and nullable slots; it starts no workers.
Public activation/admission adds output and admission workers separately. Its scheduler
field is an **internal observation**, not permission to mix raw scheduler transitions
with the running parent. Observe mutable fields under the parent operation mutex.

| API | Contract |
| --- | --- |
| `connection-parent-attach!(parent, socket, expire)` | Consume a separately owned, fully established `StreamSocket` and its authenticated absolute Unix-second expiration. Replace handshake IO deadlines with `!NoTimeout`, then attach exactly once under the operation/wake locks. Rejection closes the supplied socket outside locks. |
| `connection-parent-register!(parent, id, io)` | Before framed startup, atomically register an already accepted IO and attach its wake leaf, exactly once. Acceptance wire ordering and authorization validation remain prerequisites. |
| `connection-parent-start!(parent, initiator?, local-open-id, peer-open-id)` | Seal raw registration and start one reader and one writer. The private preaccepted path requires attached transport, no pending OPENs or borrowed output, and trusted explicit OPEN high-water marks. Public activation first installs its admission owner and uses zero marks. Failure closes the parent and joins partially started workers. |
| `connection-parent-next!(parent)` | Block for one `ConnectionWork`. The single output consumer must release that work before borrowing another. Closed parents raise their stored failure, including on subsequent calls. |
| `connection-parent-release!(parent, work)` | End scheduler ownership only after the actual external transport borrow has ended. Work must belong to this parent. Also call after shutdown or transport failure; close first on transport failure. |
| `connection-parent-reset!(parent, id, reason, [send? = #t])` | Serialized managed RESET. A remote RESET must use `send? = #f` here **before** separately aborting IO could publish a wake. |
| `connection-parent-remove!(parent, id)` | Explicitly remove only after actual StreamIO and managed-control retirement, including any in-flight frame or automatic RESET not yet admitted by service. Premature removal raises without closing healthy siblings. |
| `connection-parent-close!(parent, [failure])` | Stop admission/selection, close the owned socket outside all parent/stream/wake locks, then wake service/output and cancel/abort registered streams and public openings, including unregistered IO. Does not release borrowed or worker-staged work or join threads. Default failure is Closed; the first stored failure is preserved even when false. |
| `connection-parent-join!(parent, [timeout, timeout-value])` | Join service, reader and writer, skipping the caller. One absolute deadline covers both worker-snapshot mutex acquisition and all these joins. A timeout returns the explicit timeout value, or raises `Timeout` when omitted. A terminated worker's original failure is retained while joining the others; join-operation failures escape. Call outside all locks, normally after close. Public admission/notification and renewal workers are additionally joined by `connection-shutdown!`. No externally injected thread-interruption recovery is promised. |

### Established Socket Handoff

The attachment API is trusted internal integration, not an authentication API. The
caller must finish **all CONFIRM obligations**, validate the selected credentials,
and stop/join handshake IO before handing off. Socket and raw pre-TLS alias cleanup
ownership must also leave the handshake owner. Pass the final mutual-TLS socket for
TCP, never its original raw socket. Unix identity proof is likewise a prerequisite.
A `StreamSocket` type check, TLS alone, or constructing a `Handshake` does not prove
these conditions; this layer deliberately does not fabricate authority validation.

The parent and socket arguments must satisfy their interface contracts. The expire
argument is checked inside the consuming operation, so malformed metadata (including
nonintegers, inexact integers and values outside u64), an expired deadline, a closed
parent, and second-attachment rejection all close the supplied socket. It must be
**separately owned**: a previous successful attachment already consumed its socket,
so resubmitting that socket or another view of the same native transport violates
the ownership precondition. Rejecting a different candidate does not replace,
reconfigure or close an existing live parent-owned transport. Already closed parents
retain their last installed lifetime and failure, with idempotent native close.

Before acquiring any parent lock, attachment sets both socket timeouts to
`!NoTimeout`. The caller must keep that candidate quiescent throughout setup. A
setter failure closes it without publishing a half-configured transport. Publication
takes `parent operation -> wake leaf`, checks parent liveness and future expiration
after both acquisitions, stores the socket and unchanged expiration, and wakes both
consumers. Close either wins before this publication (the rejected candidate is
closed), or owns the published socket. Failure after publication closes the parent.
No worker is started by attachment; a subsequent IO owner may borrow handles only
after success and must still tolerate concurrent close.

Bare attachment removes the handshake's already captured absolute IO deadline and
accepts no timeout overrides. Public activation separately installs the Connection's
configured per-operation IO policy. The installed connection authorization timer
remains binding with `!NoTimeout`. There is no TTL recomputation or raw renewal setter. The
internal `socket` and `expire` fields are observations under the operation mutex,
not mutable configuration or public lifecycle accessors. Both are retained after
close, even after the native TLS view has cleared its SSL pointer, so closure cannot
turn the parent back into an unattached/reusable owner. An unattached parent retains
`#f` for both and remains a legitimate standalone scheduler with no connection lease.

Registration takes `parent operation -> stream input -> stream output -> wake leaf`.
It acquires the leaf **before** queue publication, then enqueues, installs the
attachment and signals while holding it. No blocking acquisition follows this
publication pair. Rejected/full/closed registration and failed acquisitions
leave the IO unattached and unchanged; an IO already attached elsewhere is never
rebound or aborted. Service cannot observe an expired newly registered IO until
attachment is complete. Attachment is permanent, even after explicit removal; do
not recycle IO into another parent. The leaf has no reference back to the parent.
The contract does not promise safety under arbitrary external thread interruption.

### Private Framed Startup

Without a public admission owner, `connection-parent-start!` remains a **trusted,
quiescent preaccepted setup boundary**. It does not prove authorization or exchange
OPEN/ACCEPT frames. Complete handshake ownership transfer and register all accepted
IO first. The supplied high-water marks describe committed local OPENs and observed
peer OPENs in their respective wire orders, including rejected, skipped and retired
IDs. No admission may remain
pending. Accepted-object insertion order cannot supply this information.

The physical initiator owns odd IDs and the responder even IDs, independently of
DID election roles. Each mark is an exact u64 of the correct parity, or zero for
no OPENs. Every registered ID must be covered by its owner's mark. DATA remains
bidirectional on either parity. These two scalars plus the bounded registry suffice
for late-frame handling; no lifetime tombstones are retained. Startup seals further
raw registration and itself allocates no IDs. The public activation path starts
with zero marks and subsequently advances them at local OPEN writer selection or
peer OPEN observation, independently of accepted-object insertion. It never reuses
or wraps IDs. The raw preaccepted path remains available without enabling OPEN.
Its attachment, registration, startup signatures and trust/ownership prerequisites
are unchanged by renewal. Fixtures must use the version-1 wire layouts; this path
does not acquire public renewal scopes or install grants merely by registering IO.

Stop all manual socket IO and scheduler consumption before startup. After startup,
only the writer calls `next!`/`release!`; reset and retirement still use serialized
parent operations. A second startup, missing attachment, invalid marks or existing
borrow fails the consuming startup operation. Both workers first acquire the parent
mutex; their handles, or startup failure, are published before either can perform
IO or cleanup. Failure closes the socket outside locks, then joins already-started
workers outside locks before propagating. The service handle is also published
under the parent mutex during construction.

The timed worker-snapshot lock uses `unwind-protect!`: its body only acquires a
mutex and reads worker fields, without callbacks or inner resource finalizers.
Startup's close-then-join and the writer's close-then-release keep dynamic cleanup.
Even without continuation escapes, fast outer cleanup could run before close's
inner dynamic finalizers finish native close and stream abort, joining too early
or releasing work out of order. The generic stream-lock protector remains dynamic
for the same nested-accounting requirement.

### Receive Dispatch

The reader reads exactly the 13-byte header with `Reader.read`'s minimum contract.
It validates type, ID scope, local length limits, fixed/minimum lengths, native
buffer capacity and the applicable phase before allocating one payload buffer.
There is no input backlog or read-ahead queue. Without a public owner, OPEN is
rejected and OPEN-ACCEPT/REJECT are allowed only as late frames for non-live IDs.
With public activation, renewal dispatch precedes OPEN-ID dispatch; OPEN and pending
acceptance/reset then go through `ConnectionOpening` before falling through to
accepted IO. Handshake frames are rejected on both paths; renewal frames require
the public owner. Bounded incoming OPEN/renewal blobs remain owned by their admission
entry or round, with only one deferred OFFER per renewal scope. They are not an
unbounded reader-side frame backlog.

Renewal dispatch observes both the active round's deadline and the deferred OFFER's
deadline under the parent mutex after lock acquisition, before classifying any ID
against that scope's state. A higher OFFER first retires an expired deferred slot
rather than misclassifying it as a live overlap. A still-live old ACK owner retains
its original deadline and actual output borrow; a second still-live overlapping
deferred OFFER remains invalid. See [renewal.md](renewal.md#protocol-transitions).

Accepted-IO dispatch holds `parent -> input -> output`, rechecks connection expiry
after lock acquisition, applies stream expiry and examines lifecycle at the transition.
It uses the stream module's locked expiry/abort primitives and raw state transitions,
not a status check followed by a separately locked wrapper. Aborted and fully
retirable entries are non-live even while their managed work retains registry slots.
Absent IDs at/below their owner's mark are also non-live. Their bounded frames are
discarded after envelope validation without interpreting payload fields or replying.
An absent future ID is connection-fatal.

Live DATA goes directly to the receive ring without a second payload-codec copy.
Credit is decoded and checked against the original window; FIN preserves the reverse
direction. Over-credit or post-FIN DATA, duplicate active FIN, zero live credit/reason
and active acceptance replies are connection-fatal. Remote RESET records suppression
before abort notification, then cancels unselected managed controls without echoing.
A late RESET on an aborted entry reached by this dispatch also cancels a queued local
RESET; already-cancelled public openings discard it in opening dispatch. State and
expiry decisions are explicit, never inferred by catching Closed/Timeout or inspecting text.
Fatal dispatch publishes the original failure under parent serialization before
unwinding to socket-first close.

### Writer Ownership

The writer takes exactly one scheduler work item and writes its encoded header and
borrowed payload slice separately through high-level `Writer.write`, whose contract
is full consumption or an exception. The transport helper defensively advances short
counts from a nonconforming/fault-injected writer and rejects zero or out-of-range
counts. Those fault cases do not permit public StreamIO to return partial success.
There is no concatenated DATA buffer or second selected-frame backlog.

Success calls lease-aware parent release only after both writes return. Any IO
failure, including raised `#f`, abandons framing permanently: attempt
socket-first close before releasing the borrow. Its finalizer uses **release-only**
cleanup after that close attempt, not full parent release that would re-enter close.
IO has unwound before buffer return. Distinct close/release exceptions propagate
unchanged while the parent's first-failure record remains unchanged. The writer
does not retry interrupted partial IO or hide cleanup failures behind parent.error.

All scheduler operations run under the parent's operation mutex. Stream operations
only signal the passive leaf; they never acquire the operation mutex or call back
into scheduling. Never acquire parent/stream locks while holding the leaf. Both
consumer bits and their distinct CVs are protected by its mutex, including every
broadcast. Each consumer clears only its own bit, **before** scanning, so a wake
during that scan remains pending for another pass. The output consumer cannot
consume a timer wake, nor can the service consume output readiness. Service-created
controls wake output only, avoiding a self-notification loop. Repeated notifications
remain two booleans, not queued messages or procedure slots.

The service scans the bounded live registry, applies `stream-io-status` expiry under
both stream locks, and admits coalesced credit, drained FIN, or one RESET for an
observed abort. Automatic abort RESETs use generic `reason-closed`; the parent does
not inspect exception messages or classify arbitrary Closed/Timeout exceptions.
Remote suppression is recorded under the operation mutex before abort notification,
and cancels a queued local RESET without withdrawing in-flight work. No stream is
removed or assigned protocol-ID history by this managed-control sweep. With a public
owner, the separate opening reaper handles eligible registration/slot retirement.

On an open parent, removal requires an already terminal StreamIO snapshot. An
aborted stream whose RESET has not yet been admitted or suppressed cannot disappear
before service handles it. Rejecting active snapshots also prevents IO from aborting
between the snapshot and the scheduler's final retirement check. Existing controls
and transport borrows must still be released. Remote-suppressed RESET, completed
graceful retirement and parent shutdown do not require a new wire RESET.

Entry-based progress avoids an ID lookup per hook in this sweep. Ordinary status/
admission work is O(N); cancellation can additionally traverse the bounded control
queue, so the entire failure sweep is not claimed to be strictly O(N). Queue
iteration never mutates its source registry. Existing prepared replacement and
peek/enqueue/dequeue ownership rules remain unchanged.

The next wait uses the minimum installed **connection** deadline, public pending-opening
deadline, renewal request/round/deferred cutoff or automatic trigger, **active** stream
authorization, or unfinished drain deadline as an absolute time. Attachment, lease
installation, opening/renewal work and notifications, new close initiation or
registration wakes service to rescan. The connection deadline remains
present with zero streams, with only retirable entries, and during an output borrow.
Aborted or fully finished streams supply no deadline, even while borrowed work or
controls retain their registry entry. The service continues admitting RESET and
expiring idle siblings while the consumer holds DATA, FIN or another control. It
does not release that borrow or build a second output backlog. A healthy sibling
can be selected after the current borrow ends; stream expiry does not close it.

Lease enforcement is not only a timer wake. Parent registration checks at its
publication boundary after acquiring all locks; next-work checks both before
selection and after any stream-lock waits. If selection acquired work but the second
gate finds expiry, close runs before that **untransferred** work is released; it is
never given to the consumer. Existing consumer work is not reclaimed. Service
admissions, managed RESET, input dispatch and public opening gates also check the
lease under the operation mutex. Raw scheduler calls must not bypass the running
parent. A completed selection is not permission for the writer to delay indefinitely
before writing or to ignore a concurrently closed socket.

Observed expiry records `Closed`, marks parent and scheduler closed under the
operation mutex, then unwinds before native close. Native close uses only the
high-level `StreamSocket` interface, not raw devices, OS calls or graceful
`Writer.close`/TLS shutdown. It precedes any wake-leaf acquisition, stream abort or
join that might block or raise, waking blocked socket reads/writes independently of
stream cleanup. Repeated/concurrent close uses the same retained view's idempotent
native close, not a second owner. Cleanup attempts still run if native close raises;
ordinary backend failures and raised `#f` are failures, not requests for blind retry.
Completed close, notification and release phases must not be replayed by outer
cleanup. Mandatory terminal-state notification and ended-borrow release remain
ownership obligations, not safe-interrupt recovery requirements.

The closed mark and abort are now separate phases. A concurrent consumer release
must finish native close/abort outside the operation lock before releasing DATA or
recording FIN completion; it cannot mistake the closed mark for completed cleanup.
The current parent expiration is also passed to StreamIO release and checked
**under its output mutex after acquisition**, not just before the call under the parent mutex.
An expired source gate returns `#f` without abort, release, notification or FIN
success. Work buffers, DATA ownership and FIN/control accounting remain retained.
The parent treats that observation as authoritative, marks closed, drops its
operation mutex and closes the socket before abort cleanup. It also rechecks its
lease after a completed source release, so a later expiry closes siblings before
returning failure. Release never rewrites `StreamIO.expire`; only authenticated
linked-stream installation can advance it.

Unknown exceptions during a leased release, including synchronous acquisition
failures, also propagate without local error-abort/release. Work release
starts with accounting **retained**, not optimistically completed, and marks the
scheduler failed on such an exception. The parent unwinds its operation mutex and
closes native IO before synchronization with held stream locks. Successful leased
StreamIO release does not reacquire the wake leaf after its local release; the
parent wrapper supplies that wake. Ordinary stream-only expiry/drain errors are
observed directly, not by catching arbitrary exceptions as if they were deadlines.

On failure, parent release uses `finally` to release ended external work **after**
the close/abort attempt, including when that cleanup raises. A cleanup failure must
not strand ended in-flight ownership or replace the first stored parent failure.
Cleanup releases without the lease gate; work state makes
budget return idempotent. An exception can follow partial local progress, so the
consumer must stop using header/payload references on an **attempted** release.
Release after completed shutdown remains legal. No timer closes a borrowed
StreamIO buffer: DATA storage and in-flight accounting stay valid until the actual
consumer calls release. Parent join covers the service and any started transport
workers, without joining itself. If the service itself observes lease expiry,
join propagates the stored `Closed`; if another boundary closes first, the service
may exit normally. Normal external close is not itself an unexpected service failure.
Started transport workers normally exit by raising the retained close failure.
Closed-parent cleanup is outside the initial release-operation catch. Its failure
still reaches `finally` to end the borrow once, but does not blindly close again.
The same `finally` applies to ordinary failures and to a nested cleanup failure.

`next!` owns its single close/abort attempt. Its `finally` calls the private
`connection-parent-release-owned!` directly, never the full
`connection-parent-release!` boundary, which would close an already closed parent
again. Only this selection's provisional/promoted work is released; an earlier
consumer borrow remains owned by that consumer. Successful ownership cleanup
preserves the exact native close failure, including `#f`, or the original selection
failure when close succeeds. A release failure propagates without re-entering close.

The release-only helper serializes ungated work release under the parent mutex.
It must not repeat a completed raw release or replay socket close; final notification
runs outside the parent mutex. The helper is for ended ownership after a close/abort
attempt, not a substitute for that attempt or a guarantee that an ordinarily failing
abort completed successfully. It no longer contains `Interrupt` retry handling.

Mandatory control overflow in a parent-owned scheduler marks the scheduler closed
and raises **before** stream cleanup. The enclosing parent boundary unwinds its
operation mutex and closes the socket before cancellation/abort can wait for a
sibling's input lock. Parent liveness gates also recognize this fatal scheduler
marker during the handoff to close. Fatal overflow, parent-owned selection and
leased release publish the exact error together with `scheduler.closed?` while
the parent operation mutex is still held. A queued liveness check adopts that
error, not a synthetic closed exception. Explicit parent close also adopts an
already fatal scheduler's error: the first terminal transition under the mutex
wins, including raised `#f`. The boolean closed state, never error truthiness,
indicates whether an error has been published. Genuine observed connection expiry
still creates its own `Closed` error. Raw scheduler closed checks retain their
contextual default `Closed` behavior; their cleanup policy is unchanged.
The leased-release error boundary also covers opening/renewal callbacks after
accounting has completed. Their owner references clear on failure even though the
work is already `released`; later cleanup cannot replay the callback or refund the
same charge twice. That late error is latched before the parent mutex unwinds.
Reference cleanup uses the already-established outer catch, with no new protection
setup after accounting becomes irreversible and no added callback guard on DATA.
The private `parent-owned?` flag is installed
by the parent constructor before starting service; it is not public configuration.
Raw standalone schedulers still close and abort synchronously on mandatory overflow.

The historical transport regression suite queues next behind service overflow and queues
next or explicit close behind interrupted selection/leased release raising `#f`.
Exact mutex waits put the competitor ahead of the original caller's close catch.
Unix/TLS fixtures check failure identity through worker join, parent error and
later next, and native close before blocked stream cleanup. Exact verification
history belongs in [implementation-notes.md](implementation-notes.md).

Unexpected service/selection/release exceptions close the parent and propagate
unchanged, rather than being swallowed as ordinary stream expiry. Service failures
remain visible through join and next-work. Cooperative abort must publish terminal
state and its required CV notification, so blocked operations observe closure.
Ordinary failures still run mandatory ownership cleanup and propagate. Constructor
failures and failures after normal callback return preserve resource cleanup and
eligible callback pairing; test these using synchronous source-private faults.
The shared lock macro
retains ownership-checked `try/finally`; `spawn/name` supplies the abortive root
handler needed to unwind it, not a catch/rethrow workaround in the macro. Arbitrary
external thread interruption, forced termination and arbitrary continuation escapes
are unsupported; no safe-interrupt retry guarantee is required.
High-level native close still waits for legitimate socket read-lock holders; this
layer adds no hidden native timeout, forced lock takeover or alternate raw closer.
It does not promise hard real-time
termination while another thread holds a required lock indefinitely.
This socket-first repair covers parent-owned release/selection error cleanup and
mandatory overflow. Ordinary local expiry/status/reset operations and the shared
notifier retain their existing synchronization; this is not a global
redesign eliminating all blocking operations under the parent mutex.

The parent enforces the installed connection lease as well as stream expiry.
Its framed dispatcher closes the connection on live protocol violations; an
automatically queued stream RESET alone is not sufficient. Raw caller-fed source
errors still require the enclosing owner to make that fatal transition. Public
renewal uses these same serialization, socket-first cleanup and transport-release
boundaries; it does not bypass them with a timer-only expiration update.

## Control Reservations

`connection-control-reserve!(scheduler, type, id, size, mandatory?, [queued? = #t], [protected? = #f])`
reserves one frame and `13 + size` encoded bytes before allocating header or payload
storage. The preserved fixed-control API accepts OPEN-ACCEPT (8 bytes), OPEN-REJECT
(2), WINDOW-UPDATE (4), FIN (0), and RESET (2), with a nonzero u64 ID and the exact
fixed size. The public admission extension also accepts variable OPEN size of at
least 21 bytes in version 1, with **internal placeholder ID zero** until writer
selection supplies a real nonzero ID. This placeholder is never a valid encoded OPEN header. All sizes
must leave native fixnum room for the header. It also accepts the version-1
[renewal layouts](wire.md#layouts): connection controls use ID zero and stream
controls use the existing nonzero stream ID. `protected?` is an internal reservation
partition selector requiring prior protection, not permission to initiate renewal
through the raw preaccepted API. Once protection is admitted, public connection
renewal controls use it; OPEN, ordinary controls and stream renewal share the remainder.

The default queues a `reserved` work item. The private `queued? = #f` form instead
returns `staging` work with the same charge and no queue node. Its caller must retain
ownership until fill or cancellation; scheduler close cannot discover it in the FIFO.
Public OPEN preparation uses this form with the worker-owned finalizer described
above. Renewal encoders also stage work, but precharge the full negotiated per-frame
allowance at worker admission, before credential work. See
[renewal.md](renewal.md#capacity-and-ordering) for the independent worker and control
limits. Neither form permits bypassing the public admission/ID lifecycle.

A local capacity refusal returns `#f` without disturbing existing work. If
`mandatory?` is true, inability to fit the payload ceiling or either aggregate
budget closes a **raw standalone** scheduler, aborts registered streams, and raises
`Closed`. A parent-owned scheduler instead marks closed and raises without that
synchronous cleanup, so parent close reaches the transport first. Invalid types, IDs or
sizes raise `IOError`; they are not capacity refusals.

`connection-control-fill!(work, fields)` encodes the previously reserved payload
using the wire codec. The owner must supply fields matching the reserved size;
public admission measures with `frame-payload-size`. Call fill exactly once. OPEN
defers header encoding until its ID is selected; other controls encode it here.
Filling a staging work item enqueues it only after encoding, then marks it ready.
An encoding failure attempts cancellation and propagates. If cancellation preparation
itself fails, that error propagates with the reservation still owned and accounted
for. The renewal sender marks that cleanup failure fatal for socket-first close;
it must not retry fill's failed cancellation. Reservations become
eligible in FIFO order; an unfilled head prevents later controls from overtaking
it, but does not block independent DATA.
Raw fill does not manage StreamIO lifecycle or credit.
Do not use raw FIN/credit/RESET as a substitute for the managed hooks below, or
mix direct StreamIO output commitments with scheduler-owned commitments.

`connection-control-cancel!(work)` removes reserved or ready work immediately,
releases its accounting, and clears storage. It can also cancel unqueued staging
work once its encoding owner has ended that borrow. Public opening cancellation
deliberately leaves active staging to the worker finalizer, including after close.
Cancellation is idempotent and does not cancel already selected work. Immediate
queue removal prevents cancelled tombstones from accumulating across repeated
admission/cancellation cycles.
Head cancellation dequeues directly without allocation. Non-head cancellation
traverses the original queue directly and builds a separate FIFO containing retained work,
then installs it before releasing the cancelled work's budget and storage. A failed
preparation leaves the original queue, work states and accounting unchanged, so
close can still find and cancel every queued reservation through its head-only path.

Renewal reply publication locally owns its newly reserved work until owner-list
attachment, fill and wake publication complete. If attachment raises before the
round can discover the control, this local boundary still cancels it. A cancellation
failure marks the scheduler fatal under parent mx, preserving the unchanged queue
for socket-first close rather than leaving a reserved head behind a failed round.
Fill's existing cancellation attempt is not repeated by send. If fill raises with
its reservation still owned, send marks the scheduler fatal; after successful fill,
notification failures once again belong to send's local cancellation boundary.
Renewal startup similarly covers staging and owner-list publication in its existing
worker-start failure boundary; no worker is invented to clean up a failed startup.

Both aggregate counters include staged, queued reserved, ready and in-flight
controls. Selection does not free capacity, and close does not free an encoding
worker's active staging charge. There is no network-owned secondary output backlog.

## Explicit Managed Progress

Raw scheduler callers register accepted IO, then explicitly drive these ID-based hooks.
They return a `ConnectionWork` when admitting work (or the existing pending credit/
FIN), and `#f` when there is no new work or the ID is absent. A closed scheduler
raises `Closed`. These hooks are not callbacks installed in the Reader or Writer;
`ConnectionParent` uses their entry-based implementations after leaf notification.

- `connection-scheduler-credit!(scheduler, id)` observes pending consumed bytes and
  admits one mandatory WINDOW-UPDATE, reserving one frame and 17 header-inclusive
  bytes. Repeated calls return that pending work without another reservation. The
  frame remains unencoded, with credit still pending, until writer selection calls
  `stream-io-control-commit!` in credit mode. All reads before that commit are
  included, even without another hook call. Later consumption requires another explicit hook call, which
  can admit one distinct pending update while the previous update is in flight.
- `connection-scheduler-fin!(scheduler, id)` admits mandatory FIN only after
  `Writer.close` has begun draining and all accepted DATA has been released. It
  reserves one frame and 13 bytes without committing FIN. Earlier calls return
  `#f`, reserve nothing and do not initiate close. Selection calls
  `stream-io-control-commit!` in FIN mode; transport release calls
  `stream-io-fin-release!`. Close cannot succeed merely because FIN was queued or selected.
- `connection-scheduler-reset!(scheduler, id, reason, [send? = #t])` aborts StreamIO,
  discards unsent managed credit/FIN, then reserves and encodes one mandatory RESET
  (15 bytes). Reasons must be positive u16 values. Deduplication persists through
  RESET completion until registry removal. `send? = #f` handles peer RESET without
  echo, also cancelling a queued local RESET. Neither path cancels an in-flight
  DATA, FIN, credit, RESET or raw control, nor frees its storage/budget early.

The bounded `ConnectionStream` entry stores ID/IO, the latest credit/FIN/RESET work
references and a reset flag. A credit reference can be replaced by the next pending
update while `scheduler.in-flight` independently owns its predecessor. Released
references hold no buffers or StreamIO; they do not accumulate across reads. RESET
deduplication is per live registry entry, not an unbounded history of lifetime IDs.

Managed credit/FIN selection checks expiry and commits under the same ownership-aware
input-then-output locks through `stream-io-control-commit!`. Authorization or drain
expiry while acquiring those locks prevents commitment; a prior readiness result
cannot bypass the deadline. Stale aborted or expired work is cancelled, not emitted;
expired FIN cannot report successful close. Existing directional IO wrappers remain
separate and retain their independent progress contract.
This includes final-read credit queued before authorization expiry on a fully
graceful, retirable stream. Retirement removes its idle timer but does not authorize
later control output: admission/selection cancels stale credit without granting it,
aborting the graceful stream or generating RESET. Cancellation frees the control
budget and permits explicit removal once all other ownership is retired.
Arbitrary raised exceptions, including `Closed` and `Timeout`, propagate after
cleanup rather than being confused with stale state or cooperative cancellation.

In the raw scheduler, control commitment or encoding failure aborts the stream, completes any FIN
ownership release, then cancels the still-accounted reservation before propagating.
Cleanup failure does not remove the obligation to release ended FIN ownership and
account for the reservation; externally injected interruption recovery is not promised.
Credit already granted by a failed commitment is not silently abandoned on a live
stream: the stream is aborted before its work is discarded.

A parent-owned failed managed head instead moves from the control queue to the
existing in-flight slot, retaining its stream reference and entire budget. This
covers a FIN already committed while the work was still queued, and a credit grant
followed by encoding failure. The parent closes the socket outside all locks, then
aborts and releases this **untransferred** work. Queued cancellation cannot erase
the provisional ownership or make its budget disappear early. No new queue or
error hierarchy is involved.

The hooks never scan all streams for pending-ready controls. ID lookup is bounded
by the registry; credit/FIN deduplication and RESET cancellation use the entry's
explicit work references. Stale-head removal happens only during selection.

## DATA Selection

`connection-scheduler-register!(scheduler, id, io)` admits an already authorized
StreamIO to the bounded stream registry. The parent must establish acceptance wire
ordering before registration: the public owner registers at validated ACCEPT receipt
or incoming ACCEPT selection, before later output can overtake it. Registering a
stream alone is not OPEN admission. Duplicate IDs or duplicate IO instances and a
full `total-streams` registry raise `IOError`.

`connection-scheduler-next!(scheduler)` returns a `ConnectionWork` or `#f`. Only one
frame can be in flight across DATA and control traffic. Until it is released,
further selection returns `#f` rather than creating a worker-local backlog.

Ready controls run for at most `control-burst` selections before one available
DATA frame. When no DATA is available, controls continue without an artificial
pause. DATA selection rotates a FIFO in constant time per candidate, making at
most one registry traversal per turn, including turns that discard stale controls.
Empty, credit-blocked, already-aborted and newly expired streams are skipped;
the next successful DATA selection starts after the previous selected stream.

A DATA work holds an encoded header and a borrowed ring slice in `bytes`, `start`
and `end`. It does not copy the payload. Credit is consumed at commitment, while
outbound capacity and the backing buffer remain owned through transport release.
Stream expiry and drain deadlines are checked by the StreamIO commit gate. The
scheduler passes `scan? = #t`, observing aborted/expired state under the output
lock without raising an expected expiry error. A newly observed expiry drops output
before acquiring both stream locks to apply abort, then selection continues to a
healthy sibling. Normal directional progress still uses output only. Arbitrary
raised exceptions are never blanket-suppressed; the default direct StreamIO call
retains its raising behavior.
Raw selection errors abort/release that candidate's untransferred DATA and propagate
unchanged.
Cleanup must account for a committed slice even when constructing its work record
or header fails before publication. This obligation remains subject to ordinary
cleanup failure handling, not an external thread-interruption guarantee.

The parent-owned path precreates a DATA work record with its known StreamIO before
calling commit, and retains it in the existing in-flight slot. A commit exception
or later header/construction failure therefore cannot orphan DATA, even if no slice
was returned to the caller. The stream's `defer-cleanup?` flag and scheduler error
handler pass failure outward without local error-abort/release. No-DATA results
retire just the unused provisional record without calling StreamIO release. This
adds bounded transient allocation during a parent scan, not an output backlog.

`connection-parent-next!` captures any new provisional DATA or promoted control
under the operation mutex, including when selection raises before returning. It
remembers whether a work item was already borrowed on entry and **never** treats
that older borrow as its failed selection. Only newly untransferred work is released
after socket close/abort. A provisional record is not dispatch-ready; consumers may
use only work successfully returned by next-work, not the internal in-flight field.
The rotation peeks, enqueues that entry, then dequeues the original head. The queue
node allocation precedes removal of the ownership reference; allocation failure
therefore leaves the candidate registered for parent close, without committing DATA.
After successful rotation the attempt advances even if stream commitment fails,
so a failed stream does not pin the scan head.

`connection-scheduler-remove!(scheduler, id)` unregisters only after StreamIO is
retirable, all managed controls are released/cancelled, and no frame for that ID
is in flight. An active stream or graceful FIN pair with unread DATA cannot be
removed. It does not abort, cancel pending work, release protocol slots or finish
callbacks; failure raises `IOError`, and a missing ID otherwise does nothing.
Raw unselected controls are still the parent's responsibility, not attached to the
entry. This registry intentionally has no ID allocation, parity, high-water mark
or late-frame policy; the enclosing owner supplies them and must never reuse IDs.
Removal prepares a separate FIFO just like non-head control cancellation, installing
it only on success. Iterator, predicate or enqueue failure cannot orphan the target
or unrelated streams; scheduler close still owns their abort obligations. Preparation
uses bounded O(n) temporary queue storage and preserves retained FIFO order.
The nonmutating `connection-queue-remove(queue, remove?) -> Queue` helper is exported
only from this private implementation module for failure-boundary tests, not through
a public facade. Its predicate must not mutate the original queue or scheduler.

## Transport Completion

After the transport no longer references the work's header or payload, call
`connection-work-release!(work)`. Release dispatches by **frame type**, not the
presence of `work.stream`: DATA and managed controls can both reference StreamIO.
DATA release returns StreamIO transport ownership and wakes capacity waiters;
managed FIN release completes FIN ownership before returning its control budget.
Other controls return their frame/byte budget without calling DATA release.
It clears the work's buffers and stream reference and permits the next selection.
Repeated release is harmless. Release is not a remote receipt acknowledgment.

The internal optional `connection-expire` argument to `connection-work-release!`
passes the current parent lease to DATA/FIN release. A deferred `#f` from the output-lock
gate, or an unknown exception in the leased path, retains the work and budget;
it is not a completed release. Parent
close/abort must precede an ungated retry. With the default `#f` argument, the raw
scheduler's previous void result and cleanup obligations remain unchanged.

For raw scheduler use, close the scheduler on transport failure before releasing work. This aborts
streams before DATA/FIN ownership is released, preventing failure from becoming a
successful drain. StreamIO's release boundary handles authorization/drain expiry
with ownership cleanup before propagating a raised exception. Scheduler ownership
is retained through that cleanup and cleared even when release raises. Arbitrary
external thread interruption, forced termination
and arbitrary continuation escapes are not supported cancellation mechanisms.

`connection-scheduler-close!` prohibits new work, discards queued unselected controls
and aborts registered streams. Unqueued encoding reservations remain charged and
owned by their admission workers until finalization. An in-flight control retains
its buffer and budget; in-flight DATA retains its borrowed ring, and FIN retains
its completion obligation, until explicit release. A closed mark alone cannot
stand in for unfinished stream-abort cleanup. This is not blocking
Network shutdown or a transport join operation.

## Renewal Scope

`connection.ss` runs the version-1 state machine using the records and capacity
helpers in `renewal.ss`. Public `Network.connect!` reuses a covered live lease
immediately; an uncovered finite request waits for authenticated mutual renewal on
the same connection. `lease: 'renewable` enables sticky local automatic interest;
serving the peer or opening a linked stream does not enable that interest. Default
and fixed callers preserve finite TTL behavior and cannot disable accepted policy.

| Internal helper | Contract |
| --- | --- |
| `connection-expiration(connection) -> integer` | Acquire the parent mutex and read its installed expiration, falling back to candidate metadata only before attachment. Do not call while already holding that mutex. |
| `connection-protect-renewal!(connection) -> void` | Atomically admit sticky protected capacity against configured limits and currently owned controls. Does not enable automatic interest or validate/install credentials. Capacity refusal leaves live work intact; observed connection expiry still requires socket-first cleanup. |
| `connection-enable-renewable!(connection, [seed = #f]) -> void` | Admit protection and sticky local automatic interest under the parent mutex, replacing the retained seed only when nonfalse. Wake service; do not perform credential work, wait for a round or repeat callbacks. |
| `connection-request-renewal!(connection, required, deadline, [auth = #f]) -> void` | Require activation and Network-resolved finite target/absolute Unix deadline. Acquire the parent mutex internally, recheck coverage, and register/wait on one caller request only when uncovered. Network calls outside its mutex. Coalesced work can outlive this wait; caller timeout does not revoke another caller's round or installed lease. |

These helpers are implementation dependencies, not facade methods or grant-installation
APIs. Argument resolution belongs to Network; authenticated evidence and protocol
state belong to the engine, not a raw integer passed to a helper. See
[renewal.md](renewal.md#current-implementation) for scope/request/operation/round
ownership, role and frame ordering, ACK-release cutoffs, deferred OFFER retirement,
and protected `C + 13 + 114` control bytes.

Pending callers are checked against their independent deadlines before every
settlement branch, including shared operation completion and wire RESULT. Remote
RESULT cannot report success after its own request cutoff. A waiter may consume an
already timely settled success after reacquiring the parent lock past its deadline;
an unsettled waiter records failure rather than leaving a success-eligible interest.

The final allocated request/round ID remains valid for its active exchange. Once
that exchange and its pending wire result settle, namespace exhaustion fails later
uncovered callers immediately, with a bounded `reason-limit` response for remote
requests. Exhaustion detection does not wait for free worker slots or the release
of a terminal REQUEST's borrowed output. Those owners keep their charges until
actual release. Service completes failure settlement in the same pass, while
covered callers and the previously installed finite lease remain usable.

Graceful IO retirement and close-callback completion stop new stream work, but do
not expire an already owned renewal round. Its actual installed lease and operation
cutoff remain authoritative through COMMIT/ACK and actual output release. Committed
installation may update authenticated metadata on gracefully finished IO without
reopening it or resetting a peer with unread data. Abort and real expiry still win.

After ACK release, a live deferred OFFER continues to exclude competing offers
until admission or retirement. Live duplicate OFFER/REQUEST IDs are rejected before
high-water filtering; that filter only discards retired IDs. A matching live deferred
ABORT must decode successfully with a nonzero reason before cancellation. The same
malformed payload is ignored once its correlation has retired.

Linked stream renewal preserves the same Stream, Reader, Writer, ID, rings, credit,
actual DATA borrows and FIN/drain state. It changes only authenticated installed
authority, never repeats allow/open callbacks, and preserves each existing open/close
pair. Stream failure is isolated unless shared framing/protocol state is invalid;
connection closure still aborts all streams. IO budgets are captured once, waits
reevaluate installed authority, and `Writer.write` still consumes the whole supplied
slice or raises. Cancellation remains cooperative only, with no forced preemption,
expired-lease grace period, infinite timestamp or implicit reconnect.

## Tests

For current verification use the [main-owned checkpoint](implementation-notes.md#current-checkpoint)
and [renewal status](renewal.md#status). The revision-specific results below are
historical; they do not supersede later coverage or require another implementation
increment.

### Historical Renewal Review

Current renewal coverage and the reported verification boundary are in
[renewal.md](renewal.md#status). The final formatted production build passed with
`export GERBIL_BUILD_CORES=8 && make stdlib`. The final review-focused command
passed all twelve renewal protocol cases and twenty-five StreamIO cases:

```sh
./build.sh test -v 5 std/ensemble/network/renewal-protocol-test.ss std/ensemble/network/stream-io-test.ss
```

The original nine renewal cases/fifteen scenarios also passed; the protocol suite's
twelve cases bring combined renewal coverage to twenty-one named
cases. All fourteen public API cases passed after the native
SSL error-queue repair, and temporary diagnostics have since been removed. The final
formatted revision passed all 36 modules in the network/UCAN/supporting-IO regression,
including both renewal suites, the single and ten-concurrent 4 MiB transfers, and
native SSL/Reader coverage. The latest complete test-only run took 551.305 seconds
and finished with HARNESS-OK and final OK without errors, under a 1200000 ms timeout.
Exact commands and revision scope are in [implementation-notes.md](implementation-notes.md).

The fourteen-case `connection-opening-test.ss` suite now includes two source-loaded
unit cases. The first contains four linked/fixed crossings of the captured
requirement before IO exists, covering both before OPEN selection and after
selection but before ACCEPT. A controlled parent extension lets linked admission
continue; fixed admission still expires. The second contains four selected-grant
scenarios: insufficient coverage of the captured requirement, later expiration and
the exact-current-clock boundary cannot be rescued by parent renewal.

These two cases hold the parent mutex and change only the source fixture's unit
clock. They initialize owner records and a prepared token vector without a Network,
socket, service or admission worker; cryptographic authorization and a real parent
renewal are not under test. The source loader checks its selected definitions and
hook expressions against drift; other boundary cases and compiled transport workers
retain the real clock. This is source-level OPEN check/selection/ACCEPT-dispatch
coverage, not a second public end-to-end implementation.

The two new protocol cases instead retain real authenticated old ACK owners on
connection/Unix and linked-stream/TLS scopes. Subsequent higher OFFERs enter the
compiled renewal dispatcher directly under the parent mutex held across a received
deadline, excluding service without changing the clock. They prove deferred expiry
before ID classification and retention of the old ACK's ownership, not genuine
second public rounds. See [renewal.md](renewal.md#additional-boundary-coverage) and
the source-gate comments for exact boundaries, and its
[selected coverage](renewal.md#remaining-matrix) for the later acceptance boundary.
The later Deferred stream OFFER completion case supplies real next-OFFER completion
evidence; these earlier direct-dispatch cases alone do not.

The descriptions below preserve earlier test coverage, not a new verification run.
Interruption-injection cases are historical, not current correctness requirements
or verified replacements. Cooperative state/CV cancellation and synchronous
source-private fault tests are the agreed policy.

Before the API withdrawal, main verification passed all 11 public API and 12 OPEN ownership cases,
the 8-core stdlib build and the broad 33-module network/UCAN/shared-IO regression.
That regression excluded `std/sync/threads-test` and `std/sync/rwlock-test`; they were
unchanged at that checkpoint. A formatting-only rebuild
and all 23 public API/OPEN cases passed again. Source counts then were 16 framed,
20 transport, 15 parent and 25 scheduler cases. All network test source is free of
`thread-interrupt!` and `thread-terminate!`; production never calls the former.
The first conversion removed stage-handler/completion/join retry wrappers; the later
explicit withdrawal also removed the remaining `Interrupt` catches and recovery
retries. These historical results
do not prove the current revision, a native crash fix, or complete renewal.

For the removal revision, main reports an 8-core `make stdlib` pass with the full
transitive stdlib rebuild after `std/error` changed, not a core/full Gambit build.
All 54 focused cases passed: RWLock 3, framed 16, transport 20 and native Reader 15.
The revised 33-module network/UCAN/supporting-IO command also passed; it replaces
deleted `std/error-test` with cooperative `std/sync/rwlock-test` and excludes the
shared `std/sync/threads-test` intentional-termination suite. Source inspection found
no `Interrupt` references in `src/**/*.ss`, and `build/lib` introspection found no
export. Main's static review found no normal-cleanup regressions or missed
asynchronous-only overhead: CV ownership guards still handle ordinary timeout after
mutex release, and release/notification flags protect ordinary errors. Native SSL
lifetime cleanup and Reader minimum/EOF fixes remain. The latest formatted production
build and subsequent complete 36-module regression are recorded above.

Exact commands, results and revision scope belong in the main implementation
handoff, [implementation-notes.md](implementation-notes.md); an earlier suite result
does not establish a later source revision's status.

The earlier `network-api-test.ss` checkpoint had eight public-network cases using real keystore-backed
capability contexts and monitors. They cover Unix/TLS connect and authorized duplex
streams, directional FIN, original-lease reuse and unsupported renewal, stream-local
refusal/callback failure, original local exception identity including `#f`, metadata
before activation, callback-safe close/pairing, crossed attempts, joined empty-address
callers, cancellation and blocking shutdown. Source-gated owner cases additionally
exercise retired fallback isolation, identity-pruning wakeup and the unchanged
CONFIRM-to-handoff/publication deadline. These are real public objects, not facade
dispatch mocks; see [network.md](network.md) for owner coverage.

The earlier `connection-opening-test.ss` checkpoint had six real-connection ownership cases. They cover
public operation lease gates ahead of the idle timer, pending expiry before late ACK
interpretation with sibling isolation, interrupted abort of callback-visible but
unregistered incoming IO, and an incoming admission worker closing a backpressured
native writer on connection expiry. Two source-gated preparation cases hold the
actual encoder boundary before/after serialization: staging remains unqueued and
fully charged through cancellation/close, credit/FIN and sibling IO keep progressing
when budget remains, reverse preparation completion preserves wire-order IDs, and
held/cancelled callbacks retain admission capacity until worker cleanup. These Unix
fixtures retain the compiled reader/writer/scheduler and real sockets, use bounded
waits/joins and controlled deadline metadata where needed, and add no production
injection hooks.

The historical 17-case private `connection-framed-test.ss` imports the confirmed Unix/TLS fixture
with a relative source-file string, not a compiled test-module path. It covers four duplex
streams across both parities, 8-byte rings/4-byte frames with large minimum reads,
FIN and reverse traffic, RESET suppression/retirement, HWM gaps/future IDs, malformed
headers without payload, live protocol violations, terminal-frame discards, stream
and connection expiry including held-lock dispatch, blocked IO shutdown and real
native backpressure. Source-loaded production boundaries additionally test second
spawn failure, exact short-count framing, partial-frame failure, no close replay,
distinct cleanup exceptions and caller cancellation during join. A held-dispatch
regression verifies zero, relative and absolute join deadlines while the parent
mutex remains owned by the reader, with both raising and explicit-value outcomes.
The short Writer view forwards to real socket IO; this suite exercises the preserved
preaccepted bridge rather than public OPEN admission, without a fake StreamSocket.
All waits and cleanup joins are bounded; no test releases a still-running borrow.

`connection-test.ss` exercises header-inclusive and in-flight accounting, fixed
payload admission and peer ceilings, fill failure/cancellation cleanup, mandatory
overflow, borrowed DATA retention on close, bounded bursts, round-robin fairness,
credit-blocked skipping, unfilled control ordering, registry removal, expiry and
interrupted release. A construction-failure fixture deliberately lowers the header
limit after capturing the DATA quantum, forcing header encoding to fail after a
real stream commitment. It tests cleanup with and without an interrupted abort;
this is controlled fault injection, not supported live reconfiguration or a claim
of a naturally occurring allocation failure. DATA is produced through actual
StreamIO Writer handles, not raw buffer mutation. The driver explicitly selects/
releases frames; it is not a production transport worker. Blocking fixtures have
finite waits and joins.
Managed-control cases use real Reader consumption and concurrent Writer.close:
coalescing before selection and a distinct update afterward, queued plus in-flight
mandatory budgets, DATA-before-FIN admission, FIN release completion, graceful
unread retirement, RESET cancellation/deduplication/peer suppression, and RESET
during DATA/FIN/credit borrows. A concurrent minimum read requests 24 bytes through
an 8-byte receive window. After the initial window, only selected managed credit
permits the fixture to feed more input. Explicit credit hooks and next/release calls
drive all three updates; no direct StreamIO credit commit is used. Assertions cover
partial contents while blocked, final contents/count, exact grants, fixed ring
capacity, exhausted/replenished credit and the two-frame/34-byte budget with an
in-flight update plus newly pending consumption. Writer.close readiness and held
mutex gates use bounded observations of the exact CV/mutex wait, not short timed
joins as a scheduling assumption. Timed noncompletion assertions follow an
established gate; the wait observer retains its bounded 1 ms join to avoid starvation.
Controlled expiry metadata under both stream locks
tests stale authorization/drain controls without relying on the closer's timer.
Controlled invalid header metadata tests post-commit encoding cleanup for both
credit and FIN. Interruption tests cover managed selection, FIN release (including
expiry-triggered abort) and RESET, preserving budgets and the real mutex owner until
cleanup completes. Existing DATA post-commit/interrupted-abort regressions remain.
Additional queued-mutex tests let a real Writer.close deadline expire while selection
waits for output, and interrupt abort after managed credit/FIN commitment followed by
encoding failure. They observe actual wait states rather than relying on scheduling
delays, checking ownership and accounting before releasing the test's locks.
Removal regressions raise the identical controlled exception from the real helper's
predicate after copying one retained entry and excluding the target. They verify
original queue identity, contents, control states/budgets, successful cancellation
retry, retained in-flight accounting, and scheduler-driven close aborts before the
fixture's independent fallback cleanup. Successful registry removal covers middle,
missing, head and tail IDs. Selection failure also checks the complete rotated
registry and close obligations. These tests do not force an allocator/OOM failure
or asynchronous interruption between individual queue mutations; allocation-safe
rotation relies on `std/struct/queue` allocating its new node before linking it.

A separate managed RESET regression source-loads the unchanged RESET, cancellation
and private lookup definitions into a test-only lexical module at expansion time.
Its queue-removal wrapper delegates to the real compiled preparation helper, with a
scoped predicate visit fault after copying the retained head and excluding managed
credit. The exception therefore comes through the actual RESET cancellation path,
not merely a direct helper call. Both local and peer RESET check exact exception
identity, unchanged original control FIFO/states/budget, retained registry, aborted
target and failed Writer.close. Each is tested with ordinary compiled-API retry and
with immediate scheduler close; all registered streams must be aborted and their
buffers released before fixture fallback. This requires the adjacent production
source when expanding tests, but does not edit it, mutate compiled bindings, corrupt
queue metadata or add application hooks. It tests source-level RESET composition
with deterministic preparation failure, not allocator exhaustion or fault injection
inside the installed RESET binary. The original helper-only regressions remain.

`connection-parent-test.ss` separately tests automatic duplex 24-byte minimum reads
through 8-byte windows with Writer.close; consumers only select, feed test peers
and release frames. It covers idle DATA wakeup, independently coalesced consumer
bits, before-sleep and during-scan notification boundaries, idle authorization and
earlier drain expiry, expiry during DATA/FIN borrows with healthy sibling progress,
RESET/remote suppression, registration ownership and interruption, shutdown with
blocked next/read/write/close, and exact-lock interruption cleanup. A synthetic
drain deadline isolates the service timer from the application's own close timer;
it is controlled metadata, not production reconfiguration. Plain joinable workers
and bounded exact wait-state observations exercise failure identity, including the
no-outer-catch abort-notification case. Mandatory output overflow also checks parent
failure and sibling cleanup. No real OOM, sockets or production injection procedures
are used. Tests are auto-discovered without a build entry.

`connection-transport-test.ss` is a separate SQLite-enabled integration suite.
Each fixture completes real Unix AUTH or mutual TLS with identity-checked
`make-handshake`, UCAN verification, and CONFIRM using implicit-root principals.
All handshake workers finish before handoff; no bare-TLS authority claim or fake
public Connection/Network/Stream is involved. Accepted StreamIO fixtures and the
one next-work consumer are test drivers, not production dispatch workers.

Cases cover zero-stream and all-retirable fixed expiry, silent minimum header reads,
real socket backpressure, removal of old absolute handshake read/write deadlines,
malformed/expired/closed-parent/setup-failure rejection, preservation of an existing
socket on second attachment, 12 repeated attach/close races per transport, active
sibling abort, borrowed DATA validity through closure, delayed registration/selection
and FIN release gates, and native closure before interrupted stream abort or wake
notification. Lifetimes are captured dynamically, waits use the actual absolute
deadline, and workers have finite waits/joins. IO wait observations do not inspect
raw devices or descriptors. The tests use the shared Reader minimum/EOF contract
directly, without a fixture-local repair.

Fixture leases that do not await expiry are 5 seconds, and stream expirations used
to outlive the connection are 5 seconds later than its expiry. These are lifetime
margins, not sleeps. Expiry-only scenarios use 2-second leases; the read/write
deadline-removal scenarios retain 4 seconds so IO must remain blocked past the
old 2-second handshake deadline. IO timeouts and finite join limits are unchanged.
The fixture timing choices do not alter the transport ownership assertions.

Review regressions additionally hold the actual StreamIO output mutex across
connection expiry while the stream TTL remains later, preventing the timer from
rescuing the release gate. DATA/FIN expiry-plus-cleanup-interruption fixtures park
service, retain a sibling input lock, and check socket closure and intact work/
accounting before unlocking; afterward the original interruption propagates and
ownership/accounting are cleared. Mandatory credit overflow uses a real 16-byte
budget (WINDOW-UPDATE needs 17), with no next-work/extra closer driving shutdown.
The native interruption fixture holds a real socket's read lock via its typed
`basic-socket` view and checks the writer wait/retry and final lock state on both
Unix and TLS sockets. It uses high-level close and the shared RWLock implementation.
The additional output-setter-failure case uses real Unix half-close:
it passes native `SHUT_WR` to the high-level shutdown API, not the device's
`DIRECTION-OUT` mask. Input timeout setup succeeds, output setup fails, and attachment closes the remaining
input. TLS has no independent directional half-close; that case is not claimed for TLS.

The earlier acquisition-interruption regression holds output across connection
expiry, then interrupts DATA/FIN release before its source gate can execute. Native
Reader completion is required while output remains held; work/accounting must remain
retained until abort and cleanup can finish, with no successful FIN. Separate cases
interrupt DATA/FIN/credit selection and a next-work waiter behind an earlier borrow.
Only new provisional/promoted work is reclaimed; the earlier DATA borrow stays valid
until its own explicit release. Post-commit encoding tests use the same controlled
DATA-limit and managed-ID faults as the raw suite to check provisional DATA and
promoted FIN/credit accounting through blocked cleanup. They do not simulate OOM
or permit live metadata reconfiguration. Internal held-lock ownership observations
are not permission for consumers to read payload after attempting release.
