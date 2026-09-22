# Ensemble Networks

Import `:std/ensemble/network` for `new-network`, the public `Network`, `Connection`,
`Stream` and `NetworkMonitor` interfaces, direction constants, and the
`NetworkConfig`, `NetworkLimits`, `ConnectionLimits` and `StreamLimits` classes.
The connection capability protocol constants are exported here as well.
The facade deliberately does not re-export setup, socket, scheduler or owner records.
The generated interface bindings (including the `@Connection` and `@Stream` forward
aliases) and configuration constructors/accessors are included; internal renewal
records and grant-installation helpers are not.

## Interaction Guide

New to the design? Start with the [sequence diagrams](network/interactions.md):

- [Opening a connection](network/interactions.md#opening-a-connection): transport,
  identity, mutual authorization, election and public readiness.
- [Opening a stream](network/interactions.md#opening-a-stream): admission callbacks,
  OPEN/OPEN-ACCEPT and initial flow-control windows.
- [Sending data](network/interactions.md#sending-data): local buffering, transport
  ownership and read-driven credit replenishment.
- [Gracefully closing a stream](network/interactions.md#gracefully-closing-a-stream):
  independent Writer half-closes, FIN, EOF and eventual retirement.

## Construction

### Connection Capability

Use `proto:/network/connect` as the protocol argument when creating UCAN credentials
for network connections. It currently refers to `proto:/network/connect/v0`, whose
value is `"/network/connect/v0"`. The unversioned name selects the implementation's
current connection capability; the versioned name explicitly selects v0.
Treat these shared strings as immutable. This capability version is independent
of the transport's HELLO version.

### Network Instance

`new-network(host, context, monitor, limits: (NetworkLimits), config: (NetworkConfig))`
returns a concrete `Network` interface. The host DID, `CapabilityContext` and
`NetworkMonitor` are required positional arguments, in that order; neither context
nor monitor may be `#f`. The context must contain the host's private principal.
Construction canonicalizes the host DID and prepares
mutual TLS, but does not connect or listen automatically.

The network borrows its context and monitor. Keep them usable until `Network.close`
finishes; shutdown does not close either. Configuration/limits and identity metadata
are immutable by convention; lease getters report the latest locally installed
finite authority. The network owns its TLS context, listeners, physical
connections, streams and network workers.

## Public Methods

| Interface | Operations |
| --- | --- |
| `Network` | `host`, `listen!(address)`, `connect!(peer, addresses, [auth], ttl:, expire:, lease:)`, `peers`, `connections`, `listening`, `close` |
| `Connection` | `network`, `peer`, `address`, `peer-address`, `direction`, `expire`, `open-stream!(protocol, [auth], ttl:, expire:, lease:)`, IO timeout setters, `close` |
| `Stream` | `connection`, `id`, `direction`, `protocol`, `expire`, `reader`, `writer`, IO timeout setters, `close` |
| `NetworkMonitor` | Connection/stream admission predicates and paired open/close notifications |

See [interface.md](network/interface.md) for argument contracts and full interface
requirements, [config.md](network/config.md) for defaults and resource limits, and
[network.md](network/network.md) for orchestration, callback ordering and ownership.
There is no separate public renewal/request method: an uncovered finite requirement
on `connect!` requests renewal of the shared connection.

`listen!` returns the actual bound address, including an assigned TCP port for a
port-zero request. Unix listeners use the existing [sidecar-lock ownership
contract](network/listener.md). TCP always uses mutual TLS; Unix uses signed identity
proofs over plaintext under the trusted local OS/path threat model. Both paths
require mutual UCAN authorization before publishing a connection.

`connect!` shares one live connection per canonical peer DID. A new attempt uses
Unix addresses first, then the remaining supplied preferences. Concurrent callers
join the same attempt without replacing addresses or restarting its budget. Empty
addresses mean reuse-or-join only, with no implicit discovery or reconnect. Supplied
`auth` is an optional positional DELEGATE parent, not transport identity. Omitted
auth uses the context's output policy.

Each finite lifetime override is resolved once at call start. `expire:` takes precedence
over `ttl:`; explicit false means omitted. Both arguments retain their public type
contracts even when one takes precedence. A stream's authorized expiration is
independent of the connection's lease; opening a stream never renews its connection.

## Lease Policies

`Network.connect!` accepts `lease: 'renewable` to maintain finite credential-backed
leases without an application-requested final expiration. `#f` retains fixed/default
behavior. `Connection.open-stream!` accepts `lease: 'connection` for a stream that
follows successful connection extensions through protocol-specific reauthorization;
`#f` retains fixed stream behavior. Reject any other policy, and reject a nonfalse
policy with a nonfalse `ttl:` or `expire:` before reserving work or changing policy.
Fixed calls may still supply both lifetime arguments with the existing precedence.

| `connect!` request | Behavior |
| --- | --- |
| New default/fixed | Existing finite configured TTL or strict explicit expiration |
| New renewable | Adaptive establishment with currently usable finite credentials; no infinite timestamp or weakened validity check |
| Live default | Reuse without requesting renewal or disabling existing automatic interest |
| Live covered finite requirement | Immediate reuse, even during a longer renewal round |
| Live uncovered finite requirement | Wait for mutual renewal covering it in full on the same Connection, or raise |
| Live renewable | Attach sticky local automatic interest and reuse; no new handshake or gratuitous round |
| Pending renewable joiner | Attach interest to the eventual winner without changing the active establishment target, mode or deadline |

Renewable interest lasts until that shared connection closes. Acceptance is the
serialized policy attachment, not caller return: it survives waiter timeout. Each
accepted nonfalse `auth` accompanying renewable policy replaces one retained seed;
omitted auth leaves the seed unchanged. Each automatic operation considers that
seed and refreshed context authority rather than pinning policy to an expired parent.
Explicit finite renewal parents belong only to their shared operation. Policy never
silently transfers to a new physical connection after closure or failed establishment.

Accepting renewal policy or work requires protected capacity within the existing
control budget: four frames and `control-payload + 13 + 3 * 38` bytes. Inadequate
configured or currently available capacity fails admission before policy changes;
this is not extra capacity or a reason to revoke already borrowed buffers. Pending
interest first validates configuration, then the winning parent admits the actual
allowance before activation. Later joiners use that parent's real capacity even
before the connection becomes publicly ready.

Already-ready renewal requests use `renewal-timeout` measured from the original
`connect!` call start. Establishment joiners retain the original handshake budget;
any additional renewal phase is capped by its remainder and the renewal timeout.
Covered/default callers are not held for unrelated work. The Network mutex is not
held during a renewal wait.

Renewal preserves Connection/Stream identity, addresses, direction and IO handles,
and does not repeat open/allow callbacks. `Connection.expire` is the last installed
finite parent lease; `Stream.expire` is independently installed stream authority.
Linked streams can follow explicit extensions on a fixed connection without enabling
automatic connection renewal themselves. Opening a stream never initiates connection
renewal. Fixed streams do not gain renewal behavior. No IO timeout is reset by renewal.

The revised transport uses HELLO version 1, with no version-0 fallback. Its
connection capability protocol remains `/network/connect/v0`. See the
[renewal runtime](network/renewal.md#current-implementation) for protocol, timing,
bounded resource ownership and precommit/postcommit failure rules; the
[renewal handoff](network/renewal-plan.md) preserves the design baseline.

## Integration Status

Public Unix/TLS networks, authorized multiplexed streams, explicit connection renewal,
dual-endpoint automatic policy, linked-stream renewal and delegated credential refresh
are implemented. They are not contract-only or codec-only placeholders.

The final-coverage baseline `15f010bf` records a successful eight-core stdlib build,
44 focused renewal cases (23 protocol, 12 policy, 9 limits), and a passing 41-module
regression. The [main-owned current checkpoint](network/implementation-notes.md#current-checkpoint)
is authoritative for commands, revision scope, failures and final-acceptance results,
including the separate retained-resource and bounded mixed-load work. This
documentation audit checks source contracts; it does not rerun that verification or
claim final acceptance on its own.

The subsequent [final acceptance workload and resource audit](network/acceptance.md)
cover retained public views after joined shutdown, a verifier that outlives service,
and bounded renewal/stream churn under backpressure on Unix and TLS. Consult the
current checkpoint for its exact results and sign-off status.

### Historical Checkpoints

The following records earlier integration/removal milestones, not current feature
limitations or current suite counts.

The public integration suite is `network/network-api-test.ss`, with focused OPEN
ownership coverage in `network/connection-opening-test.ss`. Earlier case counts
and regression results describe historical revisions, not verification of the
latest API/recovery removal. Before that withdrawal, main verification passed all 11 public
network API and 12 OPEN ownership cases, the 8-core stdlib build and the broad
33-module network/UCAN/shared-IO regression. The regression excludes
`std/sync/threads-test` and `std/sync/rwlock-test`, unchanged at that checkpoint.
A formatting-only rebuild and all 23 public
API/OPEN cases passed again. Exact commands and revision scope are recorded in the
[main-owned implementation handoff](network/implementation-notes.md). That milestone
did not include renewal or claim a fix for the native thread-as-PC crash.
These older results do not verify the later removal. Main has now verified that
revision: the 8-core `make stdlib` full transitive stdlib rebuild after `std/error`
changed passed, without a core/full Gambit build. All 54 focused cases passed
(RWLock 3, framed 16, transport 20, native Reader 15). The revised 33-module command
passed all network, UCAN and supporting IO tests, replacing deleted `std/error-test`
with cooperative `std/sync/rwlock-test` and excluding the shared `std/sync/threads-test`
intentional-termination suite. Main found no `Interrupt` references in `src/**/*.ss`
and no export through `build/lib` introspection. Static review found no normal-cleanup
regressions or missed asynchronous-only overhead; CV ownership guards still handle
ordinary timeout after mutex release, and release/notification flags protect ordinary
errors. Native SSL lifetime cleanup and Reader minimum/EOF fixes remain. Main's
handoff is authoritative for commands/revision scope; any final formatting-only
rebuild is a separate checkpoint for main to document, not yet claimed complete here.

## Callbacks And Shutdown

Callbacks run promptly outside owner/connection locks. Connection-open completes
before activation and framed admission; it is not a readiness notification. Its
Connection supports metadata, close and timeout settings, but not stream opening
yet. An application worker needing readiness must obtain the connection through
`Network.connect!` (an empty address list joins pending establishment); do not block
the callback on that call. Only normal open-callback return qualifies for a
matching close notification. Local callback exceptions retain their identity after
cleanup. Inbound stream rejection is stream-local. Eligible stream-close callbacks
finish before connection-close notification; close-callback exceptions are logged
without preventing further cleanup.

`Connection.close` and `Stream.close` are safe from monitor callbacks. Closing the
whole stream or reader aborts; writer close drains accepted DATA and sends FIN, leaving
the reverse direction available. IO timeouts do not extend authorization.
Stream Reader/Writer handles are stable, including after close. They transfer
`u8vector` bytes, not characters: each `Writer.write` consumes the whole
requested slice or raises, under one captured deadline. See the
[byte IO contract](network/interface.md#byte-io) for read minimums, buffer ownership
and deadline behavior across renewal.

`Network.close` is idempotent and blocking. It stops admission, closes owned sockets
before joins, finishes worker/resource cleanup and eligible notifications, then
releases TLS. Calling it from any network-owned worker, including monitor callbacks
and finalizers, raises contextual `ContractViolation` before acquiring the network
mutex, changing shutdown state or joining workers. This applies to another network
and to an already closing or closed network too. Dispatch global shutdown to an
application worker instead: a thread spawned by a callback does not inherit the
network-worker marker. Let the callback return; do not wait there for the closer.
No early public
waiter-cancel API is added; public callers use existing deadlines and global close.
Internal waiter withdrawal affects only that caller, not shared network-owned work.
After close, `host` and object metadata remain accessible, while network operations
and registry queries raise `Closed`. Connection/Stream IO, opening and timeout
operations preserve an earlier stored failure rather than replacing it with `Closed`.

Cancellation is cooperative: publish close/abort/pending state under the associated
mutex and notify its CVs while holding that mutex. Socket close interrupts blocked
IO structurally, not through exception-raising `thread-interrupt!`; production
network cancellation does not invoke it. Credential/admission workers finish their
current context, encoder or callback call without unsafe preemption, then observe
cancellation. Quotas and ownership remain held until work, cleanup and eligible
callbacks actually finish, even if a waiting caller has already returned.

Constructor and callback failures, including failures after normal callback return,
still require cleanup and eligible callback pairing. Synchronous source-private
fault injection is the test policy. vyzo explicitly withdrew the `Interrupt` API
and asynchronous raising-recovery machinery, not deprecated it or retained a fallback.
Arbitrary external thread interruption and forced termination remain unsupported.
See the [withdrawal](network/design-notes.md#agreed-interrupt-api-withdrawal-2026-09-12).

All network test source is now free of `thread-interrupt!` and `thread-terminate!`.
Production network code never calls `thread-interrupt!`; the new explicit retry
wrappers in stage-handler/completion/join paths were removed first. The remaining
`Interrupt` catches and abort/release/wake/native-close retries are now removed too.
Normal ownership cleanup, SSL lifetime cleanup and the shared Reader minimum-read
fix are preserved. Preexisting debugger/profiler/REPL interrupt primitives are outside
this withdrawal's scope.
