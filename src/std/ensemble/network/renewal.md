# Connection And Stream Renewal

The current public engine in [connection.ss](connection.ss) implements version-1
explicit connection renewal, opt-in renewable connection policy, and connection-linked
stream reauthorization. [renewal.ss](renewal.ss) supplies the four state records and
capacity helpers; it is not a standalone transport or public grant-installation API.
See [connection.md](connection.md#renewal-scope) for integration helper contracts and
[renewal-plan.md](renewal-plan.md) for the design baseline. That plan's design-only
status and earlier original-lease checkpoints are historical, not the current
implementation status. Runtime evidence and remaining coverage are separated below.

## Current Implementation

### Requests And Policy

Public `Network.connect!` reuses the same live connection without starting renewal
when policy/lifetime overrides are omitted or an explicit finite requirement is
already covered. An uncovered `ttl:`/`expire:` requirement uses
`connection-protect-renewal!` and `connection-request-renewal!` after releasing the
Network mutex. The target is resolved once; a ready-reuse caller's renewal deadline
comes from its original call start, while an establishment joiner is additionally
capped by its inherited establishment deadline. Satisfied callers need not wait for
a larger unrelated request. These internal helpers accept resolved operation inputs,
not proof of a valid grant; only the authenticated engine installs authority.

Every pending caller is checked against its own cutoff before operation, wire-result,
or general-coverage settlement. A longer shared round cannot grant late success to
a shorter-budget caller. Remote RESULT settlement applies the remote request cutoff
too. A result settled in time remains valid when its waiter reacquires the parent
mutex after its deadline; a still-pending waiter records timeout before unwinding.

`lease: 'renewable` enables sticky **local** automatic interest through
`connection-enable-renewable!`. A pending session transfers accepted policy/seed to
the elected parent before activation; later attachments check that parent's actual
capacity. The latest accepted nonfalse seed replaces the one retained connection
seed. Omitted auth and later fixed/default callers do not clear it or disable policy.
Accepted policy survives caller detachment, not physical connection closure. Serving
a peer's renewal admits protection but does not enable local automatic interest.

`Connection.open-stream!` with `lease: 'connection` captures the installed connection
expiration as the initial strict protocol-authority target. It does not renew the
connection or enable its automatic policy. The original optional parent becomes the
stream's seed. Linked scope creation occurs at accepted IO registration: validated
ACCEPT receipt for the opener, writer ACCEPT selection for the recipient. Thus the
recipient can process a peer renewal before local ACCEPT release/bookkeeping, and
the opener can participate before its local open callback finishes. Registered linked
IO, not completed `pending?`/`success?` bookkeeping, establishes renewal eligibility;
the separate opening deadline and callback/accounting obligations still apply.
Registration, connection installation and successful OPEN completion refresh the
desired connection target. An already-covering stream needs no exchange; otherwise
the original opener schedules reauthorization, coalescing newer desired targets
without changing an active round.

The parent-serialized `connection-opening-expiration` helper uses the installed
StreamIO lease when IO exists, otherwise the selected positive opening expiration,
otherwise the current parent expiration for linked OPEN or the captured requirement
for fixed OPEN. The caller holds `ConnectionParent.mx`. A linked OPEN's captured
requirement remains its initial credential-coverage target, not an immutable
pre-selection liveness cutoff. Parent renewal neither restarts the separate opening
deadline nor makes an invalid or expired selected stream grant acceptable.

Both policies exclude nonfalse `ttl:`/`expire:` before admission or policy mutation.
Omitted policy preserves the independent fixed connection/stream TTL defaults of
3600 seconds. No automatic reconnect, infinite expiration or expired-authority grace
period is supplied. Automatic operations query current context output authority plus
the retained seed, so an expired seed need not pin future renewal. Adaptive direct
grants use the finite configured TTL window, extended to the strict target when
necessary; delegated grants respect the entire parent-chain horizon. Selection
preserves longest-valid-expiration ordering and original bundle indices.

### Ownership

`ConnectionParent.mx` serializes renewal admission, protocol transitions and shared
publication; credential preparation belongs to the admitted worker. These records
are implementation exports, not public mutation APIs:

| Record | Ownership |
| --- | --- |
| `RenewalScope` | Stable scope zero for the connection or existing nonzero linked-stream ID; coordinator role, policy/seed, desired target, monotone request/round marks, automatic-attempt state, active round, one deferred OFFER, and still-owned retired rounds. It does not hold the installed lease. |
| `RenewalRequest` | One local caller or correlated wire request with its own immutable target/deadline, optional credential contribution, outcome and REQUEST/RESULT control. A request is not a grant or ownership of the shared worker. |
| `RenewalOperation` | One initiating requirement, mode and absolute deadline shared across credential retries. Later callers may add parent choices but cannot retarget it or restart its budget. Explicit pending requests are chosen in serialized arrival order. |
| `RenewalRound` | One correlation ID, target/deadline/headroom/old-expiration snapshot, evidence, phase and commitment flags, one joinable worker, staged/queued/in-flight controls and completion CV. Protocol retirement is distinct from worker/control release. |

`ConnectionParent.expire` is the actual installed connection lease after attachment;
`Connection.expire` reads it under the parent mutex, falling back to the candidate
only before attachment. `StreamIO.expire` is the actual installed stream grant,
independent of the connection minimum and the opening's historical expiration.
Renewal does not mutate the handshake candidate, reconstruct public objects or
reinterpret historical opening metadata as installed authority. Last installed
values remain observable after failure/close and never roll backward.

### Protocol Transitions

HELLO uses version 1, with no version-0 fallback. The connection capability remains
`/network/connect/v0`; it is not the transport version. Mode bytes distinguish fixed
and adaptive HELLO/connection operations, and fixed versus linked OPEN. The 13-byte
envelope and private preaccepted startup API remain unchanged. That trusted private
path still has no renewal dispatcher or authority-validation shortcut. Full payload
schemas are in [wire.md](wire.md#layouts).

| Exchange | Role, Evidence And State |
| --- | --- |
| RENEW-REQUEST / RENEW-RESULT (`0x20` / `0x21`) | Only the physical responder requests a connection round from the original physical initiator. RESULT reports the request outcome, not a grant; success requires locally installed coverage. Request IDs are separate from round IDs. |
| RENEW-OFFER / RENEW-AUTH (`0x22` / `0x23`) | Physical initiator coordinates mutual connection authority. OFFER presents its bundle; responder AUTH selects an original OFFER index and supplies the reciprocal bundle. AUTH is valid only for the coordinator's selected OFFER in `offered` phase. |
| RENEW-COMMIT / RENEW-ACK (`0x24` / `0x25`) | Coordinator selects the reciprocal index. Responder accepts COMMIT only in `auth-sent`, queues ACK before exposing the new lease, and installs the accepted credential minimum. Coordinator installs only on ACK in `commit-sent`. |
| STREAM-RENEW-OFFER / AUTH (`0x30` / `0x31`) | Original stream opener coordinates, independently of physical connection role. Recipient validates opener-to-recipient protocol authority and returns an original selected index, with no reciprocal stream bundle. |
| STREAM-RENEW-COMMIT / ACK (`0x32` / `0x33`) | No COMMIT index is needed. Original recipient installs on COMMIT, original opener on ACK, advancing only that existing StreamIO's grant. The same live phase checks apply. |
| RENEW-ABORT / STREAM-RENEW-ABORT (`0x26` / `0x34`) | Either side can fail the correlated round. Before commitment the old grant survives; after commitment uncertainty closes the connection scope or resets only the stream scope. A valid ABORT crossing a selected COMMIT is this scope failure, not automatically malformed traffic. |

Round/request IDs start at one, never wrap or reuse, and require no lifetime
tombstone list. Connection frames use envelope stream ID zero; stream renewal uses
the already committed OPEN ID plus its own round ID. The reader validates the bounded
envelope before allocation, then extracts correlation before interpreting live
payloads. Zero IDs and live-scope future responses, wrong roles, fixed/unregistered
stream renewal and impossible active phases/indices are connection-fatal. Correlated
late responses for retired rounds/streams are discarded without deserializing stale credentials;
ordinary lifecycle expiry is handled before live-payload interpretation.

Namespace exhaustion is independent of available worker/control slots. After the
last permitted active/deferred exchange and any pending wire result settle, new
uncovered interests fail with `Closed` (remote requests receive `reason-limit`)
without waiting for their operation cutoffs. Retired workers and terminal wire
controls may remain owned; failure of new work cannot release them. Service settles
newly exhausted scopes in the same pass. Covered callers and installed authority
remain valid, and automatic targets never overflow a maximum-u64 installed lease.

Under the parent mutex, after lock acquisition, renewal dispatch observes both the
active round's deadline and the deferred OFFER's deadline before classifying any
ID against that scope's state. An expired deferred descriptor retires before a
higher OFFER's overlap check; the still-live old ACK owner keeps its original
deadline and actual output borrow. This does not permit a second still-live
overlapping deferred OFFER.

The deferred slot remains an overlap owner after ACK release and until admission or
retirement, independently of `scope.active`. Matching live OFFERs and pending live
REQUESTs are fatal duplicates, not retired traffic just because their IDs equal a
high-water mark. Matching deferred ABORTs decode and validate the entire live payload,
including a nonzero reason, before changing state. Retired payload garbage remains
ignored after bounded envelope/correlation validation.

Credential generation, token decoding/verification and bounded token-bundle
serialization run on the admitted asynchronous worker, outside parent/stream locks,
never on the reader, writer or service thread. Final bounded payload/header fill and
queue publication use parent serialization. Worker handles are published before
external work starts; workers recheck lifecycle after asynchronous results and unwind via the
throwing worker gate. Reader/installation paths use the boolean lifecycle gate:
old authorization/drain expiry or aborted StreamIO returns false, not an invalid
protocol exception. Invalid live installation lifetime or live role/index/phase
still raises; no blanket `Closed`/`Timeout` catch converts bad wire into cancellation.
Renewal headroom is captured as round-admission time plus `renewal-timeout`, even
when the inherited operation deadline is earlier. Old scope/connection leases and
selected credentials must meet it, and installation must strictly advance authority.

The coordinator becomes committed at actual COMMIT writer selection, not queueing.
The recipient becomes committed on valid COMMIT receipt and remains accountable
through **actual ACK output release**. Its earlier local installation does not
retire the round or cancel its original cutoff. Failure/cutoff during that interval
closes the connection or resets only the affected stream, retaining installed
metadata and any actual output borrow. The coordinator may receive ACK, install,
and send the next OFFER before the recipient releases the previous ACK. In
`ack-sent` the recipient retains at most one bounded deferred OFFER descriptor,
with original ID/target/deadline and no preparation worker or staged output. It
admits that descriptor only after the old round has retired and released all worker/
control ownership, rechecking remaining deadline, headroom and capacity. ABORT or
expiry retires the deferred slot independently of the ACK owner; a second overlapping
deferred OFFER or premature non-ABORT response is not another queue entry.

### Capacity And Ordering

Protection is sticky and admitted atomically against configured **and currently
available** control capacity. With `C = ConnectionLimits.control-payload`, it
partitions four frame slots and `C + 13 + 114` bytes (`114 = 3 * 38`, three
header-inclusive REQUEST-sized controls) inside the existing aggregate limits.
It neither raises those limits nor eagerly allocates buffers. Once enabled,
connection renewal uses this partition; OPEN, stream renewal and ordinary controls use the remainder.
Protected capacity is not automatic interest, and ordinary work cannot borrow the
unused protected allowance. No existing borrow is revoked to enable protection.

The connection round has an independent worker slot. `renewing-streams` (default
16) separately caps locally coordinated and peer-coordinated stream worker ownership,
at most twice that many stream scopes plus the connection scope. It is independent
of pending/total OPEN admission and caller count. Each scope owns at most one worker;
a retired but still-running encoder or unreleased control keeps its slot charged.
Service considers connection scope first, then linked streams by installed expiration;
within a scope explicit requests precede automatic interest. All output still shares
the existing FIFO, control-burst/DATA fairness and single selected transport borrow.
Worker priority is not permission to bypass selected or queued wire ownership.

Before starting credential work, an encoding round reserves one unqueued control
and **the full per-frame payload allowance plus 13 bytes**, with the payload ceiling
the minimum of local and peer control limits. It does not serialize into a tiny
currently free remainder and misclassify transient contention as credential failure.
Automatic work waits for its slot and full allowance without consuming an attempt
or creating a worker. The stream recipient has no bundle to encode and checks fixed
AUTH capacity instead. Encoding uses the existing bounded `encode-auth-bundle`;
unused allowance is refunded only after a live publication gate measures the final
payload. The actual header-inclusive charge survives queueing, selection and output
until release. Mandatory replies that cannot fit remain connection-fatal, not dropped
or queued elsewhere. Close/cancellation cannot reclaim active staging; its worker finalizer
does so after the provider/encoder returns. This bounds serialized output and owned
workers, not arbitrary context work, decoded-object heap use or shutdown latency.

Automatic connection timing leads expiry by `(2 + ceil(linked / renewing-streams)) *
T + 1` seconds, where `T` is `renewal-timeout`; the trigger never moves later within
one installed generation. Starts are spaced by at least `T`. Attempts are remembered
per installed connection expiration, or per stream expiration/desired target, to
avoid retry spinning after refusal. New targets coalesce; old work must actually
release before a replacement worker starts. Only the specified precommit peer
authentication/lifetime refusals permit credential failover under the same operation
budget; exceptions and other failures are not unlimited retry permission.

### Stream IO And Cleanup

Parent stream installation holds `parent -> input -> output`, rechecks parent
liveness and the round cutoff after the directional lock waits, then calls
`stream-io-install-lease-locked!`. That helper first applies old stream/drain expiry
and refuses aborted or actually expired state. By default it also refuses gracefully
retirable IO. The internal `committed?` argument permits an authenticated transaction
already in progress to finish installation on gracefully retirable IO, without
changing FIN, rings, credits, drain state or callback eligibility. It validates a positive u64 strictly forward proposal,
but **does not validate credentials, connection authority or protocol state**; the
engine supplies that authenticated context. The lock-taking wrapper is only an
internal standalone owner/test seam, not a sufficient parent installation boundary.
See [stream.md](stream.md#authorization-installation) for the locked helper contract.

New-work eligibility is separate from existing-round liveness. A final read after
FIN, or completion of the normal close callback (`entry.done?`), cannot turn a live
owned exchange into timeout or discard its COMMIT/ACK. Existing rounds retain the
actual installed lease and their original operation cutoff; only their actual
workers/controls release ownership. Finishing committed metadata installation is
not resurrection and must not RESET a peer that still has unread buffered data.

Successful installation wakes both directional CVs and the existing passive leaf,
preserving object/handle identity, rings, credit, real DATA borrows and FIN/drain
state. A half-closed stream can renew; an aborted or fully retirable stream cannot
be resurrected. Application IO captures only its user budget once; waits combine
that budget with the **current** installed authority and reacquire the mutex even
after a timed wait before deciding expiry. Renewal and timeout setters never restart
a Reader, whole-slice Writer or initial Writer.close drain budget. `!NoTimeout`
does not mean unlimited authorization. `Writer.write` still consumes the complete
supplied slice or raises, not a short successful prefix.

Renewal repeats no allow/open callbacks and creates no second open/close pair.
Original callback eligibility and stream-before-connection close ordering remain.
Cancellation is cooperative only: publish state and notify under the associated
mutex, close native IO before potentially blocking stream cleanup, and join workers
outside locks after their external calls finish. Protocol retirement/close never
releases a still-borrowed frame or a still-running worker's staging charge. Reaping
joins completed workers, then checks retirement and all control releases before
returning slots; Network shutdown includes these workers before connection-close.

After a complete shutdown join barrier, a final renewal retirement pass handles
workers and controls that outlived service. It removes released round ownership,
obsolete operations and terminal released wire requests before completed openings
are pruned. It uses the same worker/control-release checks as live reaping without
rejoining and changing an already-recorded error. Seeds, installed leases, public
metadata and unfinished caller-owned request finalizers are not indiscriminately
cleared. See [acceptance.md](acceptance.md) for retained-view evidence and limits.

Startup cleanup covers reservation and owner-list publication as well as worker
creation. Failure before a worker starts cancels its staging and finishes the round
with the original error. Reply publication retains local ownership through attachment,
fill and notification, cancelling that exact reservation if publication fails. If
cancellation itself fails, the scheduler records the cleanup error as fatal under
parent mx, leaving queued ownership for socket-first close rather than blocking FIFO.
Fill owns its own cancellation attempt. Send tracks entry/normal return from fill:
if fill raises with work still owned, send latches the failure as fatal without
retrying cancellation; a released reservation needs no further cleanup. Attachment
and post-fill notification failures retain send's separate cleanup responsibility.

Actual output release returns accounting and marks work released before notifying
opening/renewal owners. References clear even if a notification raises; the late
failure is published under parent mx before unwinding. Ungated cleanup cannot replay
completed accounting or notifications, and a competing close cannot replace the
already-recorded failure, including a raised #f.
Reference cleanup uses the outer catch established before release. No additional
callback protection is allocated after irreversible bookkeeping, including for
ordinary DATA frames without opening or renewal callbacks.

## Status

The final bounded coverage increment adds fifteen named cases: three protocol quota
cases, three public policy/stream-seed cases, and nine source-unit namespace cases.
The focused run passes all 44 cases across those three suites (23 protocol, 12 policy,
9 limits). See the [main-owned current checkpoint](implementation-notes.md#current-checkpoint)
for build/full-regression results and the separate final acceptance, retained-resource
and bounded mixed-load findings. This baseline is not itself final acceptance.
The [acceptance workload](acceptance.md) documents the subsequent bounded Unix/TLS
soak, late-verifier retirement regression and safe fixture teardown.

### Historical Verification

The preceding hardening increment added eight protocol cases containing eighteen scenarios.
The review-fix focused command with `renewal-protocol-test.ss`,
`connection-transport-test.ss` and `connection-framed-test.ss` passes all 56 cases
(20, 20 and 16 respectively). Revision-scoped
build/full-regression evidence is recorded in
[implementation-notes.md](implementation-notes.md). The older review results below
are historical checkpoints, not the current coverage count.

Main reports that the final formatted production source built successfully with:

```sh
export GERBIL_BUILD_CORES=8 && make stdlib
```

The final review-focused command passed all twelve protocol cases and twenty-five
StreamIO cases, with both MODULE-OK markers, HARNESS-OK and final OK:

```sh
./build.sh test -v 5 std/ensemble/network/renewal-protocol-test.ss std/ensemble/network/stream-io-test.ss
```

All nine original `renewal-test.ss` cases, containing fifteen real-network scenarios,
also passed on Unix/TLS. The `:std/io` import and minimum-zero EOF-read fixes remain.
All fourteen `network-api-test.ss` public API cases passed after the native SSL
error-queue repair; temporary diagnostics have since been removed.

Together with the original renewal suite, this is **twenty-one named renewal cases**,
with the proof levels distinguished below. The fourteen opening cases are a separate
count: their two new source-loaded unit cases cover four linked/fixed pre-IO expiry
crossings and four invalid/expired selected-grant scenarios. See
[connection.md](connection.md#tests) for their unit-clock boundary, not a real
connection-renewal claim.

The final formatted revision passed the full 36-module network/UCAN/supporting-IO
regression, including both renewal suites, the existing single and ten-concurrent
4 MiB transfers, and native SSL/Reader coverage. Every module reported MODULE-OK,
followed by HARNESS-OK and final OK, without errors; the latest test-only run took
551.305 seconds with a 1200000 ms timeout. Logs are
`/tmp/opencode/renewal-review-focused-20260913.log` and
`/tmp/opencode/renewal-review-full-20260913.log`. Exact
commands, earlier failures and remaining review belong in
[implementation-notes.md](implementation-notes.md). Passing that command does not
close the dedicated acceptance-matrix gaps listed below.

For combined renewal-suite runs, allow a 300-second harness budget. The original
longer scenarios use 32-second observation windows, and credential-refusal scenarios
use 24 seconds. The protocol suite uses TTL 60 and renewal timeout four seconds,
with twelve-second emergency gate bounds. Gates are released before joined fixture
cleanup begins.

## Coverage

| Cases | Assertions |
| --- | --- |
| Unix and TLS explicit renewal | Both physical roles extend a fixed connection through public `connect! expire:`. Two linked streams, opened in opposite directions, reauthorize twice. Connection, address, direction, stream ID, Reader and Writer identities stay stable. Fixed stream expiration and duplex traffic are unchanged. |
| Unix initiator and TLS responder automatic renewal | Root-backed finite policy advances expiration twice without intervening `connect!` calls. One no-timeout Reader and one backpressured, whole-slice Writer remain blocked past their original authorization bounds, then deliver exact bytes. A half-closed linked stream preserves FIN and carries traffic between cycles. A fixed sibling expires normally. |
| Unix and TLS context refresh | Independent peer keystores require real common-root delegation. Unequal parent horizons install their accepted minimum. New output anchors are selected on later automatic cycles; the second cycle runs after the original explicit seed has expired. Networks and contexts are not replaced. |
| Unix and TLS authorization refusal | Unsatisfiable explicit requests from both roles preserve the old connection lease. Removing one stream protocol's output anchor makes fresh stream authorization fail without revoking its installed grant early. Only that stream expires; the renewed connection and sibling still transfer bytes. The sibling's already-covering credential needs no stream round. |
| Coalescing | A gate on the real capability-context mutex holds the first preparation worker. Local and remote equal requests share its round; a higher request cannot rewrite the active target or deadline. Covered callers return through the gate. Two exact installations satisfy the callers. A retired AUTH with an invalid index is ignored before subsequent real DATA. |
| Malformed wire traffic | Zero/future connection IDs, a future linked-stream response, a wrong-role OFFER, and an invalid active AUTH index close the real connection without advancing expiration. The gated verifier retains its worker ownership until it can finish. |
| Finite application budgets | Real linked renewal occurs twice while a Reader, a whole-slice Writer and Writer.close are stalled. Relative IO budgets are captured once, including the drain budget. Later timeout setters and renewal do not restart them; a join-timeout sentinel cannot masquerade as an operation Timeout. The connection remains usable afterward. |

The public tests retain exactly-once open/close pairing checks, including
stream-before-connection close ordering. After initial admission, the policy tests
deny new allow callbacks; renewal must not ask the monitor for admission again.

## Additional Boundary Coverage

The twenty-case hardening baseline below lives in `renewal-protocol-test.ss`, separately from the
nine-case baseline. They use real Unix/TLS transports and public
Network/Connection/Stream objects. The proof levels below distinguish native wire
execution from direct compiled-dispatcher inputs, internal operation admission and
fault-triggering seams.

| Case | Scenarios And Proof Level |
| --- | --- |
| Independent caller cutoffs | Real parent mutex, source-loaded production settlement and synthetic request records. Operation, wire success/failure, general coverage and remote RESULT branches enforce shorter deadlines while preserving other callers and timely settled results. Direct compiled REQUEST inputs distinguish live duplicates from retired malformed payloads. |
| Waiter lock cutoff | Real authenticated connection round with ACK selected on its original writer. Direct compiled ACK receipt under the coordinator mutex places installation before or after a shorter caller cutoff; source-loaded settlement then checks actual waiter outcomes after mutex reacquisition. The longer public caller succeeds in both cases. |
| Final read after FIN | Two real Unix stream-renewal scenarios hold ACK before native output or after complete output. Both FINs and all application bytes use the real transport. One endpoint consumes its final bytes and closes normally; ACK receipt/release still completes without RESET and its peer reads its exact remaining bytes and EOF. |
| Live deferred correlation | Real connection/stream ACK owners with direct compiled bounded inputs. Active/deferred duplicate OFFERs and zero-reason live ABORTs raise; the actual release hook proves a higher OFFER cannot overtake a deferred slot after the old active round clears. Valid ABORT retires the slot, after which identical malformed payloads are ignored. |
| ACK receipt before ACK release | Unix, instrumented real wire. A public caller receives installation while its peer's completely written ACK still owns output. A second public request arrives as a deferred OFFER, with no worker/control allocation. Releasing the original writer admits and completes the new round. |
| ABORT of a deferred OFFER | TLS, real wire with an injected ABORT through the existing writer. The deferred ID retires without disturbing the ACK owner. The abandoned caller keeps its own cutoff; a later public renewal is accepted. |
| Higher connection OFFER after deferred expiry | Unix, a real authenticated old ACK owner plus direct compiled-dispatcher inputs under the parent mutex. Holding that mutex across the received deferred deadline excludes service. A higher OFFER retires the expired descriptor before overlap classification and occupies the deferred slot without a worker or controls. The old ACK retains its original deadline, ownership and output bytes. |
| Higher stream OFFER after deferred expiry | TLS linked-stream scope, the same authenticated ACK-owner and compiled-dispatcher boundary. Coordinator receipt/installation is observed before the direct subsequent OFFERs. Expiry retires the first descriptor before the higher ID is classified; a stale AUTH with an invalid selected index is discarded, while the old ACK remains owned. Neither new descriptor is a genuine second public round. |
| Postcommit ACK cutoff | Connection scope on Unix and stream scope on TLS, instrumented real wire. Stop the ACK after selection but before its header write. The original operation cutoff closes the connection or only the stream, respectively. Installed recipient metadata remains installed, while the coordinator never installs. In-flight ownership survives the cutoff until the actual writer resumes and releases it. |
| ABORT crossing selected COMMIT | Connection scope on Unix and stream scope on TLS. OFFER/AUTH preparation and validation are real. A source-loaded precommit failure transition at the recipient generates the crossing ABORT; its coordinator receives that ABORT on the real socket after selecting COMMIT. The assertions distinguish scope failure from malformed traffic and check sibling survival for stream failure. |
| Cancelled/closed encoder ownership | Unix, mixed internal admission and real wire. Two operations are admitted by the source-loaded production launcher on existing linked-stream entries. Actual grants are checked by the real recipient context; both serializers stop immediately before bounded encoding. Public connection renewal succeeds using protected capacity. Cancelling a stream and closing the connection retain both staging charges until the workers resume and finish; queued stream work does not consume an attempt or bypass the occupied slots. |
| Multiple linked renewal waves | Unix and TLS, public connection extension and normal automatic stream admission. With `renewing-streams=1`, three linked streams complete one wave at a time. Each COMMIT is held after native output while its ACK installs. Exactly one scope remains charged until that COMMIT's real release; successive snapshots show one, two, then three installed streams, stable IO identities, exact callback counts and duplex bytes. |

The eight hardening cases add the following coverage:

| Case | Scenarios And Proof Level |
| --- | --- |
| Deferred stream OFFER completion | Unix with the physical initiator opening the stream, TLS with the responder opening it. Internal admission starts a real encoder for T1 while public connection renewal installs T2. After T1 ACK receipt, the normal service generates T2's OFFER, deferred behind the recipient's held ACK. Actual writer release admits and completes the authenticated replacement round. Both endpoints install T2 and retire owned rounds; unread bytes, stream IDs and IO identities survive, followed by duplex traffic. |
| Mandatory stream ACK exhaustion | Unix, real OFFER/AUTH/COMMIT. Immutable limits leave exactly 25 ordinary bytes beside one source-admitted, held stream encoder. The peer's completely written stream AUTH retains those 25 bytes. COMMIT receipt cannot reserve its 21-byte ACK, although protected connection bytes remain available. Native socket close precedes deliberately blocked wake/abort cleanup; a real queued public renewal waiter gets the same failure. Encoder and AUTH remain charged until their workers resume; final counters are zero. No installed grant or accounting counter is fabricated. |
| Synchronous publication failures | Six Unix scenarios: Error and raised #f before scope-owner publication, before COMMIT owner-list attachment, and before staging fill after its allowance refund. Internal admission uses actual credentials and peer traffic; the latter two attach real public waiters. Failed work is released, old leases remain usable, and a subsequent public renewal succeeds without a reserved FIFO barrier. |
| Publication cancellation failure | Two Unix scenarios add a second synchronous error at cancellation after COMMIT attachment failed. The cleanup failure, including #f, becomes connection-fatal; callers see its identity, close retires the still-queued reservation, and final counters are zero. The seam models cancellation failure, not actual allocator OOM. |
| Committed worker failure | Error on Unix and raised #f on TLS from the renewal worker after the original writer selects stream COMMIT. The affected stream resets while COMMIT remains borrowed and charged; worker completion does not release its slot early. After real writer release, sibling bytes and connection reuse succeed. Recipient metadata may reflect COMMIT crossing RESET; rollback is not asserted. |
| Late ACK release failure | Error on Unix and raised #f on TLS after ACK accounting/storage release but before its renewal callback. A different-error closer is queued on the held parent mutex before the hook raises. Writer and retained parent error match the injected failure, references clear, completed accounting is not replayed, leases stay installed, and joined shutdown has zero control charges. |
| Fill-owned cancellation failure | Two Unix scenarios raise during actual fill's encoding expression and then from its cancellation attempt. The caller and fatal parent retain the cleanup error, including #f. Exactly one fill cancellation and zero send cancellations occur, followed by joined shutdown with no retained accounting. These are synchronous source seams, not actual allocation failures. |
| DATA protection setup | A real public stream transfer observes entry into every source-loaded release `try`. Establishing protection after work becomes released raises before that protection can install its finalizer. The corrected path reaches all entries while still owning work, then releases once and continues duplex traffic. This tests setup ordering, not a claim that all release operations allocate zero bytes. |

The staging case does not claim that the normal automatic scheduler admitted its
two artificial initiating operations. It tests the actual launch/preparation and
ownership transitions; the wave case separately exercises normal public-triggered
automatic admission. The crossing-ABORT case likewise identifies its internal
fault-triggering transition rather than presenting it as a public cancellation API.

In both higher-OFFER expiry cases, the old ACK comes from real authenticated
renewal, and coordinator receipt/installation precedes the boundary inputs. The
subsequent OFFERs have opaque undecodable bundles and no matching coordinator
rounds. They enter the **compiled renewal dispatcher directly**, with the parent
mutex held across the real received deadline, not a changed clock or a service
sweep. Both cases also discard an invalid-index AUTH for the retired ID. The fixture
closes before releasing the old ACK so neither timeout replies nor deferred
credential work reach the real peer engine; only the original writer releases its
borrow. These are expiry-before-classification and retained-ownership proofs, not
end-to-end completion of a second public renewal. Source-gate details and cleanup
constraints are recorded in the test comments.

## Timing And IO

The timer fixture uses connection TTL 14, stream TTL 14 and renewal timeout `T=2`.
With two linked streams and the default renewing-stream limit 16, the lead is
`(2 + ceil(2 / 16)) * 2 + 1 = 7` seconds. Root-backed automatic rounds should
therefore be separated by about seven seconds. Gated fixed-mode tests instead use
TTL 30 and `T=4` so inspection does not consume almost all of an integer-second
operation budget.

Explicit targets are calculated from captured installed connection and stream
expirations. They exceed the old stream grants, so these cases cannot pass merely
because the original grant already covers both connection extensions. The separate
sibling case deliberately tests the already-covering path.

All networks use four-byte DATA frames and eight-byte receive/send buffers. The
64-byte test payload requires credit replenishment and ring reuse. Each Writer
application call supplies its entire slice once; there are no partial-success
retry loops. The blocked Reader owns a separate buffer from the heartbeat reads.

## Dependencies And Seams

Both files are guarded by `config-have-sqlite`, matching the existing real-network
suites. It needs the current version-1 wire codec, `renewal.ss`, the updated public
lease APIs, UCAN context/extension methods, memory keystores, and the existing TLS
backend. It adds no build target or production export.

The source-string `only-in` import from `network-api-test.ss` uses
`call-with-api-networks`, `APIMonitor`, its event/mutex accessors and policy setters,
`api-record!`, `api-await`, and `api-check-pairs!`. The existing fixture owns its
joinable application workers and network shutdown. Its shared keystore is suitable
for root-policy tests, but not for removing peer trust: both principals are implicit
roots in both contexts.

`call-with-renewal-authorities` is local to this test module. It creates three
independent memory keystores and real SQLite-backed contexts. The root issues actual
DELEGATE parents through `CapabilityContext.grant!`; peers add/remove actual output
anchors. Cleanup starts all network closes before joining, then joins application
workers, and only closes contexts and keystores after successful joins. Stuck
shutdown retains the borrowed resources rather than closing them underneath a
worker.

The baseline uses private implementation bindings for these seams; the new suite's
additional admission and failure transitions are distinguished above:

- `NetworkConnection`, `ConnectionOpening`, and renewal records expose locked
  observations of active targets, deadlines, worker ownership, and stream rounds.
- `NetworkConnection.candidate.context` supplies the real context whose private
  `mutex` slot gates preparation/verification. The test does not substitute a
  context implementation or mutate installed authorization.
- Stream IO condition variables identify genuinely blocked Reader/Writer calls.
- `connection-control-reserve!`, `connection-control-fill!`, wire sizing, and the
  existing wakeup enqueue intentionally invalid frames through the original writer.
  Waiting for actual output release prevents DATA fairness from invalidating the
  stale-frame ordering witness.

The baseline file now additionally exports eight existing test helpers, imported
by source string and `only-in` from the protocol suite. No baseline test behavior
was changed by that extraction, and no production export was added.

The protocol suite source-loads thirty-one exact connection definitions: transport
activation/startup/release dependencies, control fill, renewal launch/preparation and
request settlement. Its source loader checks twelve fixed hook-expression patterns
at fourteen sites and instruments release protection entries. It fails when fixed
counts or selected definitions change. It retains the compiled Connection classes, scheduler,
service, renewal dispatcher and normal renewal workers. The Network orchestration
source is loaded with only its activation import redirected and its four
`implement` blocks using checked procedure bindings for interpreted loading.

Three hooks run on their owning workers outside parent/stream locks: before
the selected header write, after the complete payload write but before release,
and before bounded serialization of already-issued grants. Only the original
writer releases actual output work. A post-release hook observes actual release under
the parent mutex, before service can admit a deferred worker; it never releases a
borrow itself. A fixture-local finalizer releases all gates
before the API fixture starts closing and joining networks, including on failures.

Transition hooks cover owner publication, cancellation, fill, the worker's final
completion wait, and release callbacks after irreversible accounting. All except
the completion-wait hook run under parent mx. Background validation raises ordinary
errors, never the test runner's escape continuation; test-thread locked assertions
in the new cases use dynamic cleanup. The late-release competitor is observed blocked
on parent mx, not joined while that mutex is held.

There are no fake Networks, replacement sockets, second transport readers/writers,
production hooks, forced thread termination, or asynchronous exception injection.

## Remaining Matrix

The five selected final coverage groups are now exercised:

| Group | Evidence And Limits |
| --- | --- |
| Protected connection frame quota | Real Unix AUTH held on its original writer, followed by actual peer ABORT and fresh authenticated-peer OFFERs. Three correlated `reason-limit` ABORTs retain their received targets/deadlines behind the retired AUTH owner. A fifth protected control fails although aggregate slots and protected bytes have room. The real reader closes the socket before held-wake/stream cleanup, a blocked peer read and public waiter fail, queued controls retire, and AUTH remains charged until its writer resumes. Local precommit cancellation is an explicit source seam; counters and leases are never fabricated. |
| Fixed REQUEST/RESULT admission | Real Unix fixed streams generate three or four WINDOW-UPDATEs against four aggregate slots before renewal protection is enabled. With three, a bounded refusal RESULT fits and the old connection is reusable. With four, mandatory RESULT allocation fails and socket-first close retains the selected credit until actual writer release. Complete decoded RESULT/correlation, original deadlines, authority, caller outcomes and zero final counters are checked. |
| Namespace and expiration limits | Nine source-unit cases use real classes, copied production functions and real allocator/codec operations without a fabricated authenticated network. They test last request/connection/stream IDs, same-pass failure of queued/later uncovered interests, retained retired staging, a terminal wire result with retained output or same-pass cancellation, an active final round, and maximum-u64 automatic targets. Fresh first scans at maxu64-1 test overflow suppression without a prior exhausted flag. These are finite-state boundaries, not 2^64 exchanges; round allocation stops at a deliberate staging refusal before a worker/context is required. |
| Dual automatic policy | Unix and TLS enable local renewable interest at both ends. Real context gates expose two REQUEST/OFFER generations, physical-initiator coordination, matching IDs and coalesced immutable targets/deadlines. Linked duplex traffic, fixed inter-generation spacing, stable identities, completed ownership and callback pairing are checked. |
| Linked stream seed refresh | Unix and TLS use independent peer contexts/keystores and actual common-root delegation. The physical responder opens a linked stream with an explicit bounded seed. A later target beyond that seed's horizon uses a fresh protocol-specific output anchor; the actual offered/selected/recipient-verified token retains the fresh delegation chain. Direct peer grants are untrusted, a distinct-authority sibling is unchanged, and both streams keep identities and duplex bytes. The old seed is unusable for the target; the test does not wait for its wall-clock expiration. |

No extra lifecycle cases were needed. `stream-io-test.ss` already checks renewal
with a held DATA borrow, credit/ring/FIN preservation and unchanged IO budgets;
the protocol suite's cancelled/closed encoder case covers RESET/close while real
preparation still owns staging. Existing OPEN crossings and direct-dispatch expiry
fixtures retain their explicitly narrower proof levels.

This closes the selected coverage increment, not every conceivable interleaving.
The separate final API/documentation, resource-retention and bounded mixed-load
acceptance pass is tracked in the [current checkpoint](implementation-notes.md#current-checkpoint).
A truly nonreturning provider still retains ownership
and can delay joined shutdown. No reconnect, pooling, new limits policy or broader
exhaustive race matrix is part of this completion criterion.

Existing API validation, wire, handshake, authorization, stream IO and network
ownership suites remain necessary. In particular, retain `network-e2e-test.ss` for
the single and ten-concurrent 4 MiB Writer transfers. The focused results above do
not replace the final full regression; see
[implementation-notes.md](implementation-notes.md) for its final result.
