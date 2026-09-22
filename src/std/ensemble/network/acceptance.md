# Network Acceptance

The final acceptance workload is `network-acceptance-test.ss`. It uses production
Network/Connection/Stream implementations, real Unix sockets and mutual TLS, actual
UCAN authorization, and the shared application-monitor fixture. There are no
replacement sockets, production hooks, forced termination or injected exceptions.
The [current checkpoint](implementation-notes.md#current-checkpoint) records exact
build and full-regression evidence and the sign-off status.

## Current Status

PR review follow-up (2026-09-18): after strict DID validation, context-owned identity
normalization, the Network.close worker guard and revocation-stub removal, the
43-module supporting-library regression passed, including all 31 ensemble modules.
The full `./build.sh test std/...` run completed across 142 modules without a native
crash, but reported 14 HTTP server test failures in one module. The other 141 modules
had no harness-recorded failures. HTTP source/tests are identical to v0.19-staging;
staging was not run separately. See the current checkpoint for commands and failure
analysis. This is not a claim that the full stdlib suite passed.

Earlier acceptance checkpoint:

After rebasing onto reviewed v0.19-staging at 3964ba4e and rebuilding from clean
artifacts, both verbose and nonverbose ensemble-only runs passed all 30 modules,
including the five acceptance cases and both previously crashing paths. The verbose
run reported 375 passing named cases. No new crash reproduced in either run.

The earlier full regression and GDB diagnostic crashes remain historical failures,
not passes. Their invalid Scheme return/dispatch state has not been traced to an
exact cause. The reviewed core adds nullable dotted-receiver safety checks, but
these runs alone do not prove which change removed the observed failure. See the
current checkpoint for build/rebase details, logs and preserved core evidence.
The acceptance work is ready for review on this base; no additional crash fix or
claim of exhaustive intermittent-fault elimination is made.

## Bounded Workload

Each transport runs three persistent linked streams for three explicit connection
renewal cycles. Requesters alternate physical initiator, responder, initiator. Each
cycle also creates two fixed streams: one drains both writers through FIN and EOF,
and the other closes with RESET. Both short-lived streams retire before the next
cycle, leaving the three persistent streams live.

| Bound | Value per transport |
| --- | --- |
| Persistent linked streams | 3 |
| Renewal cycles | 3 |
| Churn streams | 6 total, at most 2 concurrently |
| Maximum live streams | 5 |
| Bulk bytes | 16 KiB per stream, direction and cycle: 288 KiB total |
| Churn bytes | 48 total |
| Workload workers | 39 tracked readers, writers and renewal callers |
| DATA frame ceiling | 256 bytes |
| Receive/send rings | 1024/2048 bytes |
| Control payload ceiling | 8192 bytes; other control/renewal quotas use defaults |
| TTL / renewal timeout | 120 / 4 seconds |
| IO timeout | 10 seconds |
| Observation/join cutoff | One captured 90-second deadline |

Writers submit whole 16 KiB slices, not retries of short successful writes. Readers
cycle through chunk sizes 1, 31, 257, 1024 and 4096. Byte `offset` for stream index
`0..2`, cycle `1..3` and direction `0..1` is
`(offset + 17*index + 31*cycle + 97*direction) mod 256`; no random seed is needed.

Reader gates create actual full rings and writers waiting on their output CVs.
Renewal and stream churn proceed while those persistent writers are backpressured.
The gates release only after both connection/stream installations and associated
worker/control retirement are observed. Readers then verify every byte. This proves
bounded coexistence and progress, not sustained simultaneous throughput or that
every churn step overlaps an active round.

At each cycle, synchronized checks verify configured ownership bounds, return to
three registry/opening entries, zero completed control charges, returned credit,
empty rings after consumption, stable views/handles and one additional renewal ID.
Monitor hooks count actual allow callbacks as well as open/close callbacks: reuse
and renewal must not repeat admission. Joined shutdown is followed by checks on
retained public views, native socket closure, empty jobs/sessions, stable metadata,
released rings and usable borrowed capability contexts.

The existing single-write 4 MiB and ten-concurrent 4 MiB E2E cases remain unchanged
and run separately in the full regression.

## Late Ownership

Two additional cases, Unix and TLS, complete one real connection/stream renewal,
then hold a verifier during a second renewal after it receives AUTH. Its actual
local token and peer-field snapshots are populated. Network closes start while
that real capability-context mutex remains held.

The test joins the service thread before releasing the verifier. A separate join
observer identifies the verifier's real completion CV; the connection-cleanup worker
must be waiting on that same CV, and the public closer must have reached its wait.
Thus a short sleep is not the evidence that shutdown waits. While held, the round
is retired but still owns its unchanged snapshots, and `worker-done?` is false.
After release and actual joined close, obsolete round/operation/opening ownership
must disappear without changing installed expirations, metadata or IO identity.

This reproduced a retention defect: service could exit before the final owner
finished, and shutdown joined without performing its last retirement pass. The
repair performs renewal retirement before opening retirement only after a complete
owned-worker join barrier. Private `joined?` reaper arguments avoid rejoining and
rethrowing failures already recorded by shutdown. Existing worker/control-release
checks remain authoritative; no counter is zeroed to conceal retained ownership.
A skipped self-join or incomplete join does not authorize that final pass.

Public callers remove their own waiter records in their finalizers. Network close
does not mean every application caller has already finished; the acceptance tests
join their application workers before requiring those lists to be empty.

## Failure Teardown

The shared API fixture retains closer handles, attempts all joins under one finite
cleanup deadline, and only then releases borrowed contexts, the store and its Unix
directory. If a closer or unknown join failure leaves completion uncertain, these
resources remain retained. An ordinary terminated application failure, including
raised `#f`, is not confused with a join timeout.

A dedicated case deliberately holds a real close callback and tracked application
worker beyond a 0.1-second cleanup budget. It verifies `Timeout` and intact borrowed
resources/path, then releases gates, joins the actual owners and cleans up manually.
It also checks normal fixture cleanup after a known terminated worker raises `#f`.

Observation/join cutoffs and fixture cleanup budgets are watchdogs, not hard
real-time bounds across arbitrary lock acquisition or nonreturning callbacks.

## Audit Limits

The public facade and current documentation are checked against actual exports and
signatures. Internal scheduler, opening, renewal and installation helpers remain
outside the facade. Current docs distinguish pre-activation open callbacks from
readiness, Unix sidecar ownership, nullable/default arguments, finite lease policy,
whole-slice byte IO, independent deadlines and retained failure identity.

One historical handshake candidate, configured seeds, fixed terminated worker
handles, errors and public metadata may remain reachable from retained views.
Application monitors may retain their own event history. Returned ring buffers may
remain in the shared bounded cache; closed TLS views may retain a cached certificate
wrapper. These are not claims of zero retained fields or a native allocation census.
The tests establish network-owned lifecycle retirement, not RSS reduction or GC
collection of every object reachable through a user-retained exception.

Pooling, reconnect, new decoder/waiter budgets, host/address-book work, and exhaustive
scheduling permutations are outside the agreed completion scope. A nonreturning
provider retains ownership and can delay joined shutdown. Final results and any
concrete sign-off blocker belong in the implementation checkpoint, not an expanding
test matrix.
