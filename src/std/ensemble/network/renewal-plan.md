# Renewable Leases: Design And Implementation Handoff

## Status And Authority

This file preserves the 2026-09-12 design handoff. Its implementation sequence and
source-only status below describe that pass, not current missing functionality.
The runtime now implements these renewal policies; see the [public contracts](interface.md),
[current renewal implementation](renewal.md#current-implementation), and
[main-owned current checkpoint](implementation-notes.md#current-checkpoint) for
actual module boundaries, coverage and final-acceptance results.

### Original Handoff Status (2026-09-12)

This is a **design-only handoff**, based on HEAD `837e1622`. No renewal code has
been implemented or runtime-verified by this pass. The original-lease public API,
whole-buffer Writer contract and cooperative cancellation baseline are implemented.

vyzo approved these requirements:

- `connect!(..., lease: 'renewable)` maintains finite credential-backed leases
  without an application-requested final expiration.
- `open-stream!(..., lease: 'connection)` survives connection renewals, provided
  protocol-specific stream authorization can also be maintained.
- Renewal preserves object/stream identity, IO handles, buffers and flow control;
  it does not repeat allow/open callbacks.
- Stream reauthorization failure is isolated to that stream. Connection closure
  still closes every stream. No authority is extended just by changing a clock field.
- Fixed `ttl:`/`expire:` behavior remains unchanged. Explicit lease policies are
  mutually exclusive with nonfalse lifetime overrides.
- The fast model implements this handoff, leaves changes uncommitted, then returns
  for full-model review and finishing touches. This pass makes no code changes.

The concrete protocol, scheduling and resource choices below are the reconciliation
for that implementation. They refine the approved requirements; they are not claims
that every detail was separately approved in the historical discussion. Stop and
ask vyzo before departing from them or changing another public contract.

## Reconciliation With Earlier Decisions

Preserve the existing connection renewal coordinator (original physical initiator),
finite operation deadlines, credential validation, original bundle indices,
COMMIT/ACK installation points, and precommit/postcommit failure distinction.

Supersede the earlier deferral of automatic renewal **only for explicit renewable
policy**. Supersede the prohibition on stream renewal **only for explicitly
connection-linked streams**. Default/fixed streams do not acquire renewal behavior.

Preserve the rule that opening a stream does not implicitly renew its connection.
A linked stream is legal on a fixed connection: it follows successful explicit
connection extensions, but does not enable automatic connection renewal itself.

"Successful renewal" means successful authenticated **local installation** at the
specified protocol transition. The two machines cannot install atomically. A later
confirmation failure can close an object whose local expiration already advanced;
the metadata retains that last installed expiration rather than rolling it back.

No infinite timestamp, overloaded false value, token-expiry bypass, automatic
reconnect, forced thread interruption, or new public cancellation-token API is added.

## Public API

Add `lease:` to the existing two methods and their concrete implementations:

| Method | Accepted `lease:` | Default |
| --- | --- | --- |
| `Network.connect!` | `#f` or `'renewable` | `#f` |
| `Connection.open-stream!` | `#f` or `'connection` | `#f` |

The existing positional `auth` argument remains a nullable DELEGATE parent. Do not
change argument order. Reject any other policy value. If a nonfalse policy and a
nonfalse `ttl:` or `expire:` are both supplied, reject before reserving work or
changing an existing connection's policy. Continue validating both lifetime
arguments even when `expire:` takes precedence; `ttl:` and `expire:` remain legal
together in fixed mode. `#f` continues to mean omitted, not indefinite.

### Connection Behavior

| State/request | Behavior |
| --- | --- |
| New, policy omitted | Existing configured finite TTL establishment |
| New, explicit TTL/expiration | Existing strict finite required expiration |
| New, renewable | Adaptive finite establishment described below |
| Live, policy omitted | Reuse without initiating renewal |
| Live, covered finite requirement | Reuse immediately, even during another renewal |
| Live, uncovered finite requirement | Request mutual renewal covering it in full |
| Live, renewable | Reuse and enable local automatic policy; no gratuitous immediate renegotiation unless its timer is due |
| Pending, renewable joiner | Record policy interest for the eventual winner; do not rewrite an in-progress handshake target/mode/deadline |

Renewable interest is sticky for the lifetime of the shared connection at that
endpoint. Later default/fixed callers cannot disable it. There is no disable API in
this increment. Either endpoint may enable its local interest; a responder's timer
requests a round from the physical initiator. Both endpoints enabling policy must
coalesce, not run competing connection rounds. Serving a peer's renewal does not
require the serving endpoint's own automatic policy to be enabled.

Policy and seed attachment have one serialized acceptance point, after argument
validation and admission of the protected renewal capacity described below. For a
pending session, retain them on that session and transfer them to its elected winner;
for an established connection, use parent serialization. This attachment, not eventual
caller return, determines acceptance and the ordering of concurrent updates.
For a pending session, check the configured capacity requirement before accepting
the intent; the winner installs the actual protected allowance before activation,
when it has no existing stream/control work. This does not require a parent object
to exist when a caller first joins the establishment session.

Define a serialized **policy-owner cutover before activation**. Under Network then
parent locks, transfer current session intent to the selected connection and publish
that connection as the session's policy-attachment owner. Later joiners use that
parent's real available-capacity check and serialized seed/policy attachment even
while the session is still awaiting public ready publication. They must not append
config-only intent after the pre-activation transfer has already happened. Preserve
accepted intent on the pending session too, in the same attachment transition, so
an allowed precommit fallback can inherit it. Clear a failed candidate's attachment
owner under the Network lock; committed failure seals the session rather than
transferring its callers/policy into another election. None of this publishes the
connection as ready before CONFIRM.
Policy survives waiter timeout/detachment once attached to shared work. It does not
survive connection closure or silently transfer to a new physical
connection. A failed establishment leaves no persistent policy entry.

`Connection.expire` reports the installed finite lease. After attachment,
`ConnectionParent.expire`, under its operation mutex, is authoritative. The
handshake candidate's expiration is historical establishment evidence, not a second
mutable lease. Preserve pre-activation metadata access using the candidate only
before attachment. Update all established liveness/wait paths accordingly.

### Stream Behavior

Linked OPEN captures the current installed connection expiration as its initial
required expiration. It must obtain protocol authority covering that value in full;
it is not permission to accept an inadequately authorized initial stream. It may
select a credential valid beyond that target. Recheck the installed connection
lease after OPEN completion: an extension racing with OPEN must schedule the
necessary reauthorization rather than leave a frozen target behind.

After each local connection-lease extension, an accepted linked stream whose
credential already covers the new lease needs no exchange. Otherwise its original
opener schedules stream reauthorization for that connection expiration. Newer
extensions coalesce into a desired-target field; they never mutate an active
stream-round target. A completed round can satisfy a newer target incidentally.

`Stream.expire` reports the stream's installed credential expiration, independently
of the current connection expiration. It advances only through stream authorization
installation. Do not redefine the getter as `min(stream, connection)` or return a
policy symbol/infinity. A fixed stream's expiration never changes.

Successful renewal preserves Stream, Reader, Writer and connection references,
stream ID, direction, protocol, receive/send rings, credit counters, actual DATA
borrows, input FIN, output drain/FIN state and callback eligibility. A half-closed
linked stream may still need authorization for its remaining direction. A fully
retirable/aborted stream is not renewed or resurrected.

## Credential Selection

There are two distinct request modes:

- **Fixed:** the existing required expiration is a strict lower bound. Keep the
  current helpers' behavior and never clamp the caller's request to a shorter grant.
- **Adaptive:** no application upper bound. Present credentials using the longest
  finite lifetime each currently usable parent chain allows. Select longest valid
  evidence with the existing stable ordering and original-wire-index semantics.

For adaptive issuance, enumerate current applicable output parents through the
borrowed capability context and any retained seed described below. Each delegated
candidate is bounded by its entire parent chain. A directly trusted root/principal
can mint arbitrary lifetimes, so it has no meaningful maximum: use the configured
connection TTL (stream TTL for stream credentials) as its normal finite issuance
window, extending that window to the operation's strict required target when
necessary. Never mint maximum-u64 credentials merely to represent the policy.
Always include a direct issuer grant; do not require the issuer to appear in the
local input roots before creating it. As with current provide!, the recipient
decides whether that direct grant is trusted. Before stable expiration sorting,
the tie order is direct grant, explicit seed if present, then applicable context
parents in their returned order. Deduplicate structurally equal parents before
issuance, preserving first occurrence; do not deduplicate freshly randomized child
tokens as a substitute for parent deduplication.

Validate arithmetic and headroom before issuing; a nonsensically short configured
window is not repaired by silently weakening an explicit requirement.

Initial adaptive connection establishment has no explicit required target; both
sides still require current validity and their fixed handshake headroom. A renewal
must produce a strict lease advance: its lower bound is at least old expiration
plus one second, and at least any strict requirement that initiated that operation.
Connection-linked stream issuance is adaptive but must cover its captured finite
connection target. The recipient verifies issuer/audience/protocol, signatures,
trust, chain constraints, validity, lower bound and headroom as usual.

Do not implement adaptive selection by first asking the old fixed helper for an
unbounded timestamp. Add a separate internal issuance path or explicit internal
mode; fixed callers must retain their tested behavior. Context exceptions,
serialization exceptions and token-decoding exceptions terminate the affected
operation, not silently become a rejected candidate. Verification-result refusals
can still select another candidate.

### Credential Ownership And Refresh

Refresh context-provided candidates for each new automatic operation. An explicit
`auth` must not pin an automatic policy forever to a now-expired parent when the
context has fresh usable authority.

Retain at most one explicit **seed parent** per endpoint's renewable connection and
per linked stream. The latest accepted policy attachment carrying a parent replaces
that connection's seed, ordered by its serialized attachment point even if that
caller later times out. Omitted auth does not accumulate another choice.
For linked streams, the original optional parent is the seed. Each automatic
operation considers its seed plus freshly queried context choices, deduplicated by
the established structural-parent rule. Replacing a seed does not change installed
authority or invalidate snapshots already borrowed by active workers.

Explicit finite renewal calls may contribute parents to their current shared
operation as already designed; those choices are dropped when that operation and
its workers retire. Do not retain lifetime lists of every caller's parent. No new
public waiter-count limit is introduced.

## Wire Version And Layouts

Use **HELLO protocol version 1** for this revision. OPEN layout and adaptive
establishment semantics change, so do not silently parse them as version 0. No
dual stack, automatic downgrade or compatibility shim is needed for this unreleased
implementation. Update both ends and the golden/phase tests. Keep the connection
authorization protocol string `/network/connect/v0`: it names the existing
capability, not the binary transport-layout version.

Preserve the 13-byte envelope and existing integer/string/bundle encodings. All
expirations/deadlines remain finite u64 Unix seconds. Add a one-byte mode:

| Message | Version-1 payload, in order |
| --- | --- |
| HELLO `0x01` | version:u16, host:string, challenge:32 bytes, required-expiration:u64, max-data:u32, max-control:u32, lease-mode:u8 |
| OPEN `0x10` | protocol:string, required-expiration:u64, receive-window:u32, bundle, lease-mode:u8 |
| RENEW-REQUEST `0x20` | request-id:u64, required-expiration:u64, deadline:u64, lease-mode:u8 |
| RENEW-OFFER `0x22` | round-id:u64, required-expiration:u64, deadline:u64, bundle, lease-mode:u8 |

For HELLO/connection renewal, mode 0 is fixed and mode 1 is adaptive. Only the
physical initiator's HELLO selects establishment mode; the responder sends mode 0
and required expiration 0, as it cannot mirror an unseen HELLO. Fixed initiator
HELLO requires a positive target; adaptive initiator HELLO uses target 0. That
zero means no explicit lower bound, **not infinite authority**. Renewal targets
are always positive, including adaptive old-expiration-plus-one requests.

For OPEN, mode 0 is fixed and mode 1 is connection-linked; both carry the actual
positive finite initial requirement. Reject unknown modes and inconsistent mode/
target/role combinations. Validate modes and outer fields even at exhausted
admission capacity. Reject unsupported HELLO versions without attempting a v0
fallback; perform the version check early enough not to misinterpret new fields.

Connection AUTH/ACCEPT/CONFIRM and connection renewal RESULT/AUTH/COMMIT/ACK/ABORT
keep their existing payload layouts. Existing connection renewal tags require
envelope stream ID zero. Neither a mode byte nor a RESULT is authorization.

### Stream Reauthorization Frames

Add these dedicated tags, all with the existing **nonzero stream ID** in the
envelope. Do not overload connection frames or fabricate reciprocal stream grants.

| Tag/name | Payload |
| --- | --- |
| `0x30 STREAM-RENEW-OFFER` | round-id:u64, required-expiration:u64, deadline:u64, bundle |
| `0x31 STREAM-RENEW-AUTH` | round-id:u64, selected-index:u32 |
| `0x32 STREAM-RENEW-COMMIT` | round-id:u64 |
| `0x33 STREAM-RENEW-ACK` | round-id:u64 |
| `0x34 STREAM-RENEW-ABORT` | round-id:u64, nonzero-reason:u16 |

The original stream opener is the stream-round coordinator and credential issuer,
regardless of physical connection direction. Only that opener sends OFFER/COMMIT;
the original recipient validates the protocol credential and sends AUTH/ACK. There
is no reciprocal token because stream authorization remains one-way. Both endpoints
learn linked policy from OPEN; a fixed live stream cannot receive a renewal OFFER.

Use the existing control payload/byte/frame budgets and reasons. No changes to
DATA, WINDOW-UPDATE, FIN, RESET or stream IDs. Stream correlation is `(stream-id,
round-id)`; it does not consume the OPEN ID namespace.

## Transactions And Failure Semantics

### Connection Round

Retain the established sequence:

1. Original physical initiator sends OFFER with a fixed mode, target and deadline.
2. Responder validates/selects the initiator grant and sends AUTH with its own bundle.
3. Initiator validates the acknowledgment and responder grant, then commits COMMIT
   to the existing writer. Queuing/preparing COMMIT is not writer commitment.
4. Responder receives valid COMMIT, installs the minimum of both selected credential
   expirations locally, and sends ACK.
5. Initiator receives valid ACK and installs the same finite expiration locally.

The ACK sender remains in an ACK-pending phase until successful ACK output release,
retaining its operation cutoff and output ownership. Installation is not completion
of that output. The ACK receiver completes on validated receipt, even if its own
COMMIT release bookkeeping is still pending. No ACK-of-ACK is added.

ACK selection marks the point after which causally subsequent peer traffic can
arrive before local ACK release bookkeeping. Permit one bounded next OFFER to be
deferred in this scope during that interval, rather than rejecting it as overlapping
or starting a second preparation worker. Activate it only after successful ACK
release and retirement/capacity checks; discard it on closure. A second next OFFER
while the deferred round remains live is an invalid overlapping round. The slot
is an observed, correlation-bearing pending round without a worker: retain its
received deadline, accept a matching precommit ABORT, and let deadline expiry
retire/clear it. Later frames for that retired ID are discarded; a subsequent
valid OFFER is not rejected merely because an abandoned slot once existed.
Recheck the original received deadline before admission. This one input slot is
bounded by control-payload and creates no second output backlog.

At the responder's local installation, establish ACK's mandatory output ordering
before making linked-stream reauthorization eligible. That connection ACK must
precede dependent stream OFFERs. A stream OFFER never proves connection renewal or
installs a connection lease: its target is a stream-authorization lower bound, not
an assertion that it equals the receiver's current connection expiration.

Only a strict forward expiration is an installation. Recheck old installed liveness,
round identity, target, selected credentials and operation deadline at the actual
transition after lock acquisition. Never resurrect a closed/expired owner.

Before COMMIT is selected for output, refusal/timeout/cancellation can abort the
round and preserve the still-valid old lease. After COMMIT might be on the wire,
confirmation failure is connection-fatal by the operation cutoff. The old lease
remains a hard bound until the endpoint's local installation; there is no grace
period. Leave DATA flowing on the old authorization during precommit work.

Coordinator-local callers complete after local installation. A responder's wire
request requires matching successful RESULT **and local installed coverage**.
RESULT cannot install or resurrect a lease. A higher actual installation may
satisfy callers whose requirements were not the active round's original target.

### Stream Round

Use the analogous four-message transaction, scoped to one stream:

1. Opener sends OFFER containing fresh protocol-specific credentials and a finite target.
2. Recipient validates and sends AUTH identifying an original bundle index; neither
   side installs at this point.
3. Opener validates selection/coverage, then commits STREAM-RENEW-COMMIT to output.
4. Recipient validates COMMIT, installs the selected credential expiration and sends
   ACK; opener installs upon receiving that ACK.

Use the same ACK-pending/output-release distinction and single deferred next-OFFER
rule per stream. Its deadline remains enforced until ACK output completes. Retain
resource ownership until release even when the opposite endpoint has already
installed and sent its next message.

Ordinary precommit refusal, failed credential lookup, capacity refusal or timeout
does not immediately discard a still-authorized stream. Keep its old grant until
expiry; record the failed automatic attempt and do not busy-loop. A newer connection
target or a genuinely new renewal operation may try again while enough time remains.
There is no new application open/allow callback during these exchanges.

After stream COMMIT may have been sent, confirmation failure aborts **that stream**
with RESET by its operation cutoff, even if one endpoint installed a longer grant.
It must not close a healthy connection merely to resolve stream-local uncertainty.

Malformed framing, impossible active-state transitions, wrong sender roles or bad
selected indices remain connection-fatal protocol violations. "Stream-local failure"
does not exempt malformed shared wire traffic from the existing protocol rules.
Transport failure or connection expiration naturally closes all streams.

A valid matching ABORT can cross a COMMIT already selected on the opposite side.
This is confirmation failure, not evidence of malformed peer state: close the
connection for a connection round, or RESET only the stream for a stream round.
Dispatch first validates the bounded envelope, then performs locked owner/deadline
retirement, then correlation classification, and only then decodes/validates active
payload fields. In particular, stale acknowledgments with invalid indices do not
become live protocol violations after their scope has already expired or retired.

### Correlation And Retirement

Start owner-generated request/round IDs at 1; zero is invalid in renewal state
transitions even though the generic u64 codec can represent it. IDs strictly
increase, never wrap or reuse; gaps are legal. Keep independent connection request,
connection round and per-linked-stream round namespaces.

Retain active state plus observed/retired high-water marks, not historical token
bundles. A bounded frame for a retired round/request cannot reinstall a lease and
is discarded after envelope validation. A valid higher coordinator OFFER can start
a new round only when no live round owns that scope. Unknown future responses,
wrong-role OFFERs and duplicate messages in an incompatible active state are fatal.
There is no replay/idempotency protocol for active rounds.

A responder has one outstanding wire REQUEST. Newer request IDs can supersede its
older request interest after the sender's original request timeout; at the receiver,
retire the old request record without changing an already-active shared round. Do
not retain or emit a result for every superseded request. A completed RESULT is
ordered before a subsequently issued REQUEST by that sender's state transition.
Local caller lists and one wire request are separate ownership objects.

At namespace exhaustion, fail new renewal work for that scope and disable its
automatic attempts; leave the old authorization valid until expiry. Do not wrap,
reconnect automatically or immediately kill unrelated scopes.
If the installed expiration is already maximum u64, there is no representable
forward target. Suppress automatic work rather than repeatedly overflowing E + 1.

Wire retirement is not resource release. Stale workers/results must be rejected
by identity, and their snapshots, staging reservations and selected buffers stay
owned until their actual use ends. A new round cannot create an unbounded backlog
of retired-but-running workers; apply the resource limits below before spawning.

Before OFFER selection, abandon locally without sending an ABORT for a round the
peer has never observed. After selection, order ABORT behind any already borrowed
OFFER/AUTH; never abandon half a frame. An unselected COMMIT can be cancelled, but
a selected COMMIT requires confirmation or scope closure. Keep operation-cutoff
checks at worker-result publication and actual writer selection, after lock waits.

## Timing And Automatic Scheduling

Retain fixed integer-second request/operation budgets. Let `T` be the local
`NetworkConfig.renewal-timeout`. A request captures its deadline before queueing.
The shared round inherits that original budget, capped by local policy. Each new
round/retry captures `H = local-start + T`; selected new credentials and the old
connection lease must cover H. Stream reauthorization also requires its old stream
grant to cover H. A retry does not reset the operation deadline or reduce H to the
remaining operation budget. Fixed initial stream OPEN retains zero extra headroom.

Choose the oldest admitted unsatisfied explicit request as the next connection
operation's initiating request; inherit its original target/mode/deadline. Other
covered requests join it. Do not take an unsatisfiable maximum across every queued
request and thereby block a smaller satisfiable one, or use a newer request to
refresh older deadlines. Automatic wanted-work is eligible when no explicit
initiator is ready, or joins a compatible active operation.

For connect! on an already-ready connection, capture the renewal request budget at
that call's start using renewal-timeout. A caller that first joins establishment
retains its existing establishment budget; if extra coverage is still needed after
publication, its renewal phase is capped by that remaining budget as well as the
renewal timeout. Do not reset the whole connect! budget after waiting for a handshake.

For automatic connection scheduling use a conservative lead:

`lead = (2 + ceil(linked-live-stream-count / renewing-streams)) * T + 1 second`.

This allows a connection round, bounded waves of stream reauthorization, and a
scheduling margin. It is scheduling policy, not a guarantee against slow peers,
callbacks, clock skew or resource pressure. Recompute when linked streams change,
but never postpone an already scheduled trigger for the same installed lease.
An already-due trigger may run immediately if old-lease headroom still permits it.
If it cannot, retain the old lease and let normal expiration close it; do not spin.

Arm at most one automatic operation per installed connection-expiration generation.
Eligible credential alternatives may be tried within that operation's original
deadline using fresh round IDs. Terminal precommit failure suppresses further
timer retries for that generation. An explicit uncovered finite request is still
a new operation with its own budget and can use newly supplied/context credentials.
Any successful forward installation rearms policy for the new generation.

Also retain a per-scope last-automatic-start time across generations. A subsequent
automatic attempt cannot start before `last-automatic-start + max(1, T)` seconds,
even when its newly computed trigger is already due. Apply this to linked-stream
attempts too. This prevents successful one-second extensions from creating an
immediate renewal loop when a configured lease window is shorter than the lead.
It never extends authority: if the next permissible attempt lacks headroom, let
the existing authorization expire. Explicit requests keep their own budgets and
are not silently delayed by this automatic-policy spacing.

Automatic interest can join an existing fixed or adaptive operation that produces
a forward lease. It need not force an extra maximizing round immediately afterward.
Strict finite callers can join an active target that covers them; higher targets
wait without mutating that round, and check actual installed coverage before starting
another. Never delay an already-satisfied caller for a longer unrelated request.

Linked-stream desired targets update on connection installation and on OPEN
completion. The original opener schedules eligible streams earliest-old-expiration
first; the other endpoint does not independently issue duplicate stream rounds.
While queued for local capacity, retain only desired-target/policy fields in the
existing live entry, not encoded messages or a worker per wake. A real attempt gets
one fixed deadline and target once admitted. Suppress repeated terminal attempts
for the same installed stream expiration/desired target pair.

Keep connection renewal independent of stream rounds: a refused or slow stream
cannot block connection-lease installation. Do not use shared socket IO timeout
setters to implement any renewal operation deadline.

## Mutable Authorization Versus IO Budgets

This prerequisite is essential for linked streams:

- Capture each Reader/Writer application's absolute IO timeout once, separately
  from renewable authorization. Keep the original Writer-close drain budget too.
- At each wait compute `min(fixed-IO-deadline, current-stream-expiration,
  current-connection-bound where owned)`. An absent IO deadline does not remove
  either authorization bound.
- When a timed CV wait returns, reacquire its directional lock and reevaluate
  current state/deadlines before deciding to throw. Expiration advancing while the
  thread was asleep must not produce a false timeout at the old authorization bound.
- Stream installation holds parent -> input -> output; reject terminal/expired
  state there and install into the existing IO. Broadcast both directional CVs and
  notify service/renewal waiters under their respective locks.
- Do not reset the application IO deadline, drain deadline, buffers, credits or FIN
  state when installing authority. With a finite user IO timeout, renewal cannot
  keep an otherwise stalled operation alive past that user deadline.

Use `io.expire` as the single installed stream authority. Make metadata getters
synchronize with installation, and remove established uses of stale opening.expire
copies (or update those copies in the same installation transition with a documented
reason). Preserve initial opening requirements as history, not competing clocks.
Connection installation similarly updates the one authoritative parent lease and
wakes service, waiting connect callers and opening workers. No bare expiry setter
may substitute for verified protocol installation.

## Bounds And Module Responsibilities

Add positive-fixnum `ConnectionLimits.renewing-streams`, default 16. It bounds local
initiated and peer initiated stream-round worker ownership **separately**; at most
twice that many stream renewal scopes, plus one connection renewal scope, can own
round workers at once. Retired-but-running workers still consume their slot. A live
stream owns at most one round. This is not another public caller/waiter limit.

Each charged slot owns at most one credential/preparation worker. Retries with new
round IDs do not spawn another worker while the prior worker retains the slot. A
protocol-retired round is not an active-round conflict: a valid next peer OFFER
with no available worker slot gets bounded ABORT(reason-limit), except for the
single ACK-release deferral described above. Count those deferred input slots
separately, at most one per owned renewal scope, with no worker until admission.

Capacity waiting is not an admitted automatic attempt. Keep a wanted bit/target
and wake it when an actual worker/control owner releases capacity; do not consume
the generation's attempt marker or manufacture fresh deadlines on every service
scan. Create the automatic operation's immutable deadline when it is admitted.
Explicit caller requests retain their already captured deadline while waiting.
At any wait, loss of old-lease headroom makes further attempts ineligible. A
nonreturning provider can therefore prevent its own scope from renewing until
expiry; never free its slot early or force-cancel it to avoid that outcome.

Connection-round capacity is independent so busy stream verification cannot consume
its sole worker slot. Automatic local stream attempts wait cooperatively for capacity
without encoding or repeatedly failing their stream. Peer offers beyond local
capacity receive bounded precommit ABORT(reason-limit); inability to represent a
mandatory reply closes the connection under the existing control-budget rule.

### Protected Connection-Renewal Control Capacity

Worker isolation alone is insufficient: a stalled stream encoder must not occupy
the control bytes required for connection renewal. Before accepting renewable
policy, linked-stream policy, or an explicit connection renewal operation, enable
a protected connection-renewal allowance in the existing aggregate allocator:

- Four control-frame slots.
- `control-payload + frame-header-size + 3 * 38` bytes. Here 38 is the largest
  fixed connection-renewal frame including its header (version-1 REQUEST).

This permits one variable OFFER/AUTH plus three fixed controls. Enforce that no
connection-round transition requires two outgoing variable payloads at once, and
retire its controls before admitting the next operation's encoder. The allowance
is protected capacity, not preallocated buffers or extra capacity beyond the
configured pending-control limits. Charge actual staging/queued/in-flight work as
before; ordinary and stream-renewal work cannot borrow these protected slots/bytes.

If configured aggregate limits cannot accommodate the allowance, reject the new
policy/renewal request with capacity failure before changing policy or installed
authority. Existing default/fixed establishment without renewal continues to use
the old limits. Enabling protection on an existing connection cannot revoke already
borrowed capacity: fail local admission if the allowance cannot currently be
protected, rather than claiming an enabled policy whose progress depends on a
stalled preexisting encoder. Peer-triggered capacity failure follows bounded
precommit refusal; mandatory-reply exhaustion retains its existing fatal behavior.

Once enabled, protection stays until connection close. Both sides enable it for
adaptive establishment and connection-linked OPEN admission, without forcing the
remote endpoint's automatic-interest flag on. A later incoming connection renewal
can enable it as part of its own capacity admission. Treat protection/seed/policy
attachment as one local serialized decision, not partially published state.

Connection controls still obey wire FIFO/dependencies and the normal DATA fairness
rule; protection is not permission to overtake a selected frame. No quota can make
progress when the shared socket is blocked, or when a common credential provider
serializes all callers internally. The isolation guarantee is that network-owned
stream-round workers and staging do not themselves consume connection-round
capacity or become a prerequisite for its installation. Exhaustion of other
mandatory protocol output can still close the connection as already specified.

All connection and stream renewal controls share existing pending frame/byte budgets,
including headers, unqueued encoders and actual in-flight work. Reserve before
encoding, use bounded token serialization, refund only unused allowance, and retain
ownership through IO release. A selected COMMIT is nonwithdrawable. A single queued
or selected frame record must not become a second worker-local output backlog.

Dependency direction:

- `renewal.ss` imports config/wire/auth and defines typed request/operation/round
  records, role/state validation, target/timing decisions and credential preparation
  over immutable snapshots. It must not import `connection.ss`.
- `connection.ss` imports `renewal.ss` and owns the adapters to its existing parent
  lock, scheduler, one reader/writer, service timer, workers and lease installation.
  Worker preparation returns results to a parent-serialized publisher; no procedure
  slots, alternate socket IO loop or generic message-callback framework.
- `stream.ss` supplies narrow locked lease-installation and revised deadline/wait
  behavior for its existing IO. It does not initiate connection renewal from IO.
- `network.ss` handles public policy/reuse/join and delegates uncovered requirements
  only after dropping the Network mutex. It retains establishment/election ownership.

Extend ConnectionWork with explicit typed renewal ownership rather than guessing
commitment from a frame tag or overloading an opening reference. Selection, failed
selection, cancellation and release must distinguish staging, writer commitment,
local installation, waiter completion and resource retirement.

Keep these logical records distinct even if a small implementation combines some
storage: local caller requirement/deadline/result; one responder wire-request
correlation; shared operation with initiating deadline and distinct credential
choices; active round with fixed mode/target/headroom/evidence/phase; retired worker
and frame ownership; persistent automatic-policy/seed/scheduling fields. `closed?`
or explicit status, not error truthiness, distinguishes a stored raised #f.
Installed expiration belongs to the parent/StreamIO, not an uncommitted round.
Do not use a single boolean such as committed? for queued COMMIT, selected COMMIT,
installed lease, ACK output completion and completed resource cleanup.

A new private owner interface is not required for this split. If implementation
shows that it is necessary, explain the concrete dependency cycle to vyzo first.
Do not move all connection/stream records into a catch-all module to evade it.

## Fast-Model Implementation Sequence

1. **API and codecs:** add policy arguments and validation; mode-aware version-1
   HELLO/OPEN/connection renewal layouts and five stream tags; add renewing-streams
   limit; update exact schema/golden/version/role tests. Preserve fixed lifetime
   precedence and public exports. No placeholder successful renewable methods.
2. **Lease/deadline substrate:** make the parent lease authoritative, synchronize
   getters, separate captured IO/drain deadlines from renewable authorization, add
   narrowly owned installation transitions and wakeups. Test old-expiration races
   before relying on the substrate from asynchronous workers.
3. **Explicit connection renewal:** implement the existing REQUEST/RESULT and
   OFFER/AUTH/COMMIT/ACK/ABORT transactions, immutable targets/deadlines, credential
   choices, correlation marks, bounded controls/workers and cooperative shutdown.
   Replace connect!'s UnsupportedMethod branch outside the Network mutex. First
   real test extends an established connection with explicit expire: on each role.
4. **Renewable connection policy:** adaptive initial issuance, sticky local interest
   across reuse/pending joins, current-context refresh, retained seed policy, timer
   trigger/rearming and failure suppression. Test both physical initiator and
   responder driving renewal, with old DATA traffic uninterrupted.
5. **Linked streams:** signal mode in OPEN, retain renewal policy/seed, schedule
   targets after connection installation and raced OPEN completion, implement the
   stream-local transaction and install into the same IO. Preserve fixed streams
   and allow linked streams on connections renewed only through explicit requests.
6. **Integration and failure matrix:** add the real public tests below, review all
   ownership/commit/error boundaries, update adjacent docs and implementation notes.
   Do not call the feature complete based only on state-machine or interface probes.

Build and verify at each coherent integration point, not after producing a giant
untested patch. Keep intermediate limitations explicit. Only main runs builds if
delegating file ownership; never build the same checkout concurrently.

### Acceptance Tests

- Public fixed/default calls remain unchanged; invalid policies and policy/lifetime
  combinations fail before side effects. Covered calls do not wait for longer work.
  A renewable joiner arriving during activation reaches the cut-over parent rather
  than losing its intent or bypassing protection admission before ready publication.
- Real Unix and TLS connections extend explicitly from both physical roles, keeping
  the same public Connection and original address/direction metadata.
- Renewable setup with unequal credential horizons installs their accepted minimum;
  a root uses a finite configured window. Fresh anchors/parents become usable on
  later cycles without reconstructing the Network or pinning an expired seed.
- Local/remote simultaneous requests coalesce, higher requirements do not retarget
  active rounds, caller deadlines do not restart, and retired replies do nothing.
- Precommit refusal preserves the old lease; postcommit confirmation timeout closes
  the appropriate scope; expiry observed under a held publication lock wins over
  a late result. Zero/future IDs, wrong roles and malformed live messages are tested.
- Linked streams survive at least two connection renewals with stable Stream/Reader/
  Writer identity and continuous bytes. Already-covering stream grants skip renewal.
  Fixed streams still expire. Refused fresh linked-stream authority closes only
  that stream while siblings and the renewed connection remain usable.
- Reauthorization races with OPEN completion, RESET, FIN, active DATA borrow and
  stream retirement. It does not reset credit, duplicate callbacks or free a borrow.
- A blocked no-timeout Reader and a backpressured whole-buffer Writer survive a
  timely authorization extension. Finite IO/drain deadlines still expire at their
  original captured values despite repeated renewal and notifications.
- Staged encoding and blocked verification retain limits through cancellation;
  exhausted mandatory output follows the existing fatal rule. Enough simultaneous
  linked streams exercise multiple renewal waves without one slow stream blocking
  connection renewal. Failed automatic attempts do not spin or accumulate history.
  Short root issuance windows cannot cause immediate successful-renewal loops.
  Saturate stream encoders and verify the protected connection quota remains usable.
- Hold ACK release after the peer receives it: the next OFFER is deferred, not
  misclassified as overlapping. Test ABORT crossing committed COMMIT, and ensure
  stream-round uncertainty resets only the stream. Connection ACK precedes dependent
  stream offers when its responder is also a stream opener.
  Abort/expire a deferred OFFER and admit a later one without decoding stale tokens
  or treating the matching ABORT as an unknown-future violation.
- Network shutdown closes sockets before joins and waits for renewal workers and
  existing eligible callbacks, without closing borrowed contexts or using injected
  exceptions. Test synchronous faults at preparation/publication/release boundaries.
- Retain network-e2e-test.ss: one 4 MiB Writer.write and ten concurrent 4 MiB echo
  transfers. Add ongoing transfer coverage across renewal rather than wrapping
  public writes in retry loops. Writer.write consumes the entire slice or raises.

## Build, Review And Stop Conditions

Follow std/AGENTS.md. Use `apply_patch`; format with etc/gerbil-mode.el and local
macro hints, checking that formatting changes only whitespace. Use explicit public
exports and typed helpers. With nullable types in core, use `:?` fields and
generated constructors for nullable defaults, and `(Maybe Type)` for false-or-type
returns. Keep custom constructors only for actual initialization dependencies.
Test-to-test imports use source strings.

Check build conflicts, then use `export GERBIL_BUILD_CORES=8 && make stdlib` from the
repository root. Run tests only through `./build.sh test ...`. No core/full/Gambit
build, manual GERBIL_HOME override, forced thread termination or raising
thread-interrupt! is authorized. Do not repeat no-op freshness builds.

Use build/lib for MCP introspection. Persistent cookbook/features paths are under
`/home/vyzo/.local/state/opencode/gerbil-mcp/`; never put tool data in this repository.
Unrelated untracked `src/std/ensemble/addrbook/` and `host/` are outside this task.

The baseline full command is:

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

Add focused renewal suites and run the baseline after integration. Verify compiler
checks and changed-source security scans; preserve failure identity including #f.
Keep all changes uncommitted for full-model review. Update implementation-notes.md
with exact changed scope, tests, failures and remaining work. Do not claim success
for aborted/truncated harnesses or describe static checks as runtime verification.

Stop and ask before changing wire semantics above, weakening authorization coverage,
adding new callbacks/public cancellation APIs, importing connection from renewal,
or using a second reader/writer. A blocked credential provider is not permission to
force-cancel it or release its reservation early.
