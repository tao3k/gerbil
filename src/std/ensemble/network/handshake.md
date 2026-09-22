# Candidate Handshake

`(import :std/ensemble/network/handshake)` implements the initial version-1 exchange for
one connected transport. It is an internal, staged protocol driver, not a Network
or Connection implementation. It does not dial, accept, reserve capacity, elect
between candidates, publish a connection, or run established transport workers.
`run-handshake!` invokes internal owner hooks in protocol order; policy and actual
ownership remain the network owner's responsibility.

## Construction And Ownership

`make-handshake(socket, context, host, peer, direction, start, deadline, min-auth-expire,
auth:, adaptive?: #f, config:, limits:)` consumes a connected `StreamSocket`. Failure closes it;
success returns a `Handshake` retaining that socket and cached Reader/Writer views.
The context and its key wrappers are borrowed. Configuration and limits are
immutable by convention and use the existing NetworkConfig/ConnectionLimits.

Pass DIRECTION-OUT for the physical initiator and DIRECTION-IN for its recipient.
The initiator must supply an expected peer and, in fixed mode, a positive required
expiration. `adaptive?:` is a boolean keyword, default `#f`; an adaptive initiator
must pass required expiration zero. The recipient always passes zero required
expiration and may pass `#f` for an unknown peer. Its local adaptive flag begins
false regardless of the constructor option and adopts only the decoded initiator
HELLO mode. Host/expected peer DIDs are normalized, and self-connections are rejected.

`start`, `deadline`, and `min-auth-expire` are integer Unix seconds. The owner captures
start/deadline at reservation, before dialing/TLS; fallback must not restart them.
Headroom is fixed as start plus the configured handshake timeout. The supplied
absolute deadline is installed for both socket directions and remains installed
through confirmation. Deadlines and authorization liveness are also checked at
stage boundaries, not just by potentially blocking I/O.

HELLO version 1 appends `lease-mode:u8` as the seventh field after version, host,
challenge, required expiration, max-data and max-control. Only the physical
initiator chooses mode: `lease-mode-fixed` (0) with a positive target, or
`lease-mode-adaptive` (1) with target zero. The responder's HELLO always carries
mode 0 and target zero; simultaneous HELLO exchange cannot mirror an unseen peer
mode. Unknown modes and inconsistent role/mode/target combinations are rejected.
The authorization capability remains `/network/connect/v0`; its name is independent
of this binary-layout version.

Unix sockets use signed plaintext under the agreed local OS trust model. Every
non-Unix transport must implement TLS; plaintext TCP is rejected. For TLS, the
constructor derives the peer DID from the actual certificate key and compares it
with the expected identity, not merely the certificate hostname. Successful
construction already exposes `peer` and `identity-proven?` for incoming TLS
registration. The owner must upgrade TLS under the same absolute deadline;
`ssl-server-upgrade` now accepts `timeout:` just like the client upgrade.

## Owner Sequence

`run-handshake!(candidate, monitor)` drives the stages below and returns a boolean.
`HandshakeMonitor.connected!` attaches the candidate; `identified!` registers TLS
identity before HELLO or Unix identity after proof. Incoming `admit!` runs after
authentication. `open!` runs before COMMIT for the smaller DID and after COMMIT for
the larger. `complete!` transfers the confirmed candidate and must atomically
recheck owner liveness before publication. Failure closes the socket before
`closed!` retires its reservation. Cleanup does not suppress monitor programming
errors. These are internal hooks, not application NetworkMonitor methods.

Wrong local phase raises ContextError. Plaintext TCP violates the constructor's
TLS precondition and raises ContractViolation. Missing/unacceptable certificate
identity or wrong expected DID raises TLSPeerIdentityError at the policy check.
Crypto and contract failures are not wrapped as peer errors.

One driver serializes calls for a candidate. A candidate mutex serializes close
with phase transitions, so cancellation cannot resurrect a completed stage.
Socket I/O and worker joins never hold this mutex. Methods return `#t` on completion,
or `#f` for a well-formed local/remote rejection. Exceptions close the candidate
and propagate without classification by message or irritants.

| Call | Before | After | Owner responsibility |
| --- | --- | --- | --- |
| `handshake-identify!` | `new` | `identified` | Register incoming TLS before this call; register proven Unix identity after it. |
| `handshake-authenticate!` | `identified` | `authenticated` | On success perform incoming advisory monitor admission. Outgoing advisory admission must already have occurred before dialing. |
| `handshake-ready!` | `authenticated` | `ready` | Larger DID sends ACCEPT readiness; smaller DID receives it and derives the lease. The smaller owner now performs election and its open callback. |
| `handshake-commit!` | `ready` | `committed` | Smaller DID sends committing ACCEPT after its callback. Larger DID receives it, derives the lease, and then performs its open callback. |
| `handshake-confirm!` | `committed` | `confirmed` | Larger DID sends CONFIRM after its callback; smaller DID receives it. Only after success may the owner publish and release pending accounting. |

The two coordination roles differ: physical direction determines HELLO's required
expiration and Unix signature roles, while canonical DID ordering determines
ACCEPT/CONFIRM order. Larger-DID readiness does not select an exclusive candidate.
The smaller owner can wait for its reserved preferred outgoing attempt or choose
an eligible fallback between readiness and commitment. It must not invoke monitor
callbacks or wait for election while holding shared network locks.

An owner rejection calls `handshake-reject!` with the appropriate nonzero reason,
or closes the candidate. `handshake-reject!` closes even when rejection output
fails; the output exception propagates. `handshake-close!` is idempotent and closes
the complete transport, never TLS directional shutdown. External cancellation
must close the socket to interrupt blocked I/O. The owner must gate publication
against cancellation/shutdown and finish cleanup before releasing reservations.

After successful confirmation, install established I/O timeouts before handing
the socket to the connection's workers. This module does not consume stream frames,
so data arriving just after CONFIRM remains available to those workers. A closed
or failed candidate must never be published, even if its open callback ran.

## Retained State

The internal Handshake class exposes fields to its owner; it is not a public
facade export. Apart from cancellation, the driver owns mutations. Important
fields are:

- `peer`, `identity-proven?`, `initiator?`, and `smaller?`: identity and role state.
- `adaptive?`: immutable initiator choice, or responder-adopted HELLO mode. This
  selects issuance, not the owner's sticky automatic-renewal interest.
- `auth-window`: configured connection TTL captured at construction. Adaptive
  direct grants use the current issuance time plus this finite window.
- `phase`: the local stage, or `closed` after rejection/failure/explicit close.
- `committed?`: remains true after commitment even if confirmation later fails;
  the owner must not retarget that election to a fallback after possible commit.
- `local-hello` and `peer-hello`: exact raw payloads, including random challenges.
- `local-bundle`, `local-tokens`, and `peer-bundle`: original credential encodings
  and locally decoded tokens, retained for the eventual connection owner.
  `local-tokens` is a vector in original bundle order for constant-time index
  validation and lookup; the encoded bundles remain lists.
- `selection`: the accepted peer AuthCandidate, retaining its original index.
- `local-selection`: our Token selected by the peer; `expire` is the minimum of
  both selected expirations. Before receiving the peer's ACCEPT these are unset/zero.
- `reason` and `peer-rejected?`: explicit rejection metadata. A peer reason can
  be attributed to the expected identity only when `identity-proven?` is true.
- `limits` and `output-limits`: local receive bounds and outbound bounds capped
  by the peer's HELLO advertisements. Advertisements cannot raise local limits.

## Exchange Safety

HELLO and AUTH exchanges use a temporary output worker while the driver reads,
avoiding two send-all operations deadlocking before either endpoint reads. The
worker is joined before the stage returns; on failure, close precedes joining.
The named marked worker closes the socket to wake the reader before completing
with an internal failure wrapper. `spawn-network-thread` unwinds its cleanup before
debug logging, without an unhandled actor stack trace. The driver joins once through
`network-thread-join!`, which delegates to `:std/sync/threads`'s `thread-join!/error`
and reraises the original exception (including `#f`) from the internal result. If both
directions fail, the worker exception raised during joining takes precedence.
There is no shared error/result slot or orphan worker.
The [network owner](network.md) handles logging and lifecycle notifications; no
unused logger is introduced in this module.

Headers are checked for type, scope, length bounds, and expected phase before
payload allocation. Before decoding any version-1 HELLO fields, the owner checks
its first u16 version and raises `IOError` for unsupported versions. There is no
v0 fallback. The codec's 55-byte HELLO minimum still applies upfront: a minimum-size
54-byte v0 envelope fails the length check without reading payload or classifying
its version. Longer v0 payloads, including canonical DIDs with the new mode byte
absent, fail the version check before field decoding. Other structured payloads
use the strict wire codec. Canonical identity, self-identity, and role-specific
mode/expiration are validated before AUTH output. Unix proofs cover the ordered exact HELLOs,
physical sender role, and exact raw AUTH prefix, excluding its signature. No
received token is unmarshaled before its Unix proof succeeds.

Fixed issuance still uses `make-auth-bundle` unchanged. Adaptive issuance uses
`make-adaptive-auth-tokens` with required zero, captured handshake headroom,
`auth-window`, and `parent` as the optional seed. It offers direct authority plus
the seed and fresh context alternatives, rather than treating an expired seed as
the only choice. Outgoing adaptive AUTH uses `encode-auth-bundle` with the negotiated
control-payload allowance minus the 64-byte Unix proof suffix (zero for TLS), so
serialization is bounded before framing. The handshake owns no established
connection control reservations.

Credential selection uses the capability context, strict required expiration
(zero only for adaptive setup), fixed headroom, and current liveness. A malformed blob or any other exception
aborts; a normal failed verification result can try another candidate. ACCEPT
indexes refer to the original local bundle and are range-checked before lookup.
Leases come from selected tokens, never a claimed acknowledgment deadline.
The installed setup expiration remains the actual minimum of the two selected
token expirations, even when the endpoints offer unequal adaptive horizons.

## Verification

Run `./build.sh test std/ensemble/network/...` after the stdlib build. The
handshake suite uses real Unix sockets and mutually authenticated TLS connections,
including both physical DID orientations and post-CONFIRM bidirectional bytes.
Scripted peers exercise malformed envelopes, unexpected identity, invalid proof,
malformed tokens with valid proof, refusal, invalid ACCEPT indexes, and missing
confirmation after commitment. It does not claim to test network election,
monitor accounting, capacity reservations, or publication races.

Backpressured AUTH cancellation tests use real small socket buffers and large
credentials on both transports, checking that the temporary writer is joined.
A delayed real context verification tests deadline enforcement after non-I/O work.
Large-string credentials exposed a BIO UTF-8 buffer-growth retry bug; the shared
writer now refreshes its buffer reference/capacity after a drain, with separate
small-buffer UTF-8 regressions. No network buffer pooling or decoder policy changed.

Adaptive cases cover finite root windows and unequal delegated
horizons over Unix/TLS, responder mode adoption, version rejection before field
decoding, invalid mode/target/role combinations, unchanged handshake headroom, and
the bounded Unix AUTH suffix. Existing scripted HELLOs use version 1 and fixed
mode. These cases are included in the integrated network regression; see the
[main-owned current checkpoint](implementation-notes.md#current-checkpoint) for
verification. Public renewable-policy ownership belongs to the network/connection
implementation, not this handshake module.
