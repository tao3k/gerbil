# Network Authentication Foundations

`(import :std/ensemble/network/auth)` supplies internal authentication utilities
for handshake, stream-opening, and renewal owners. It does not
implement a transport, monitor admission, timers, credential-retry state, renewal,
or connection publication. It borrows its capability context and key wrappers.
It does not close contexts or release context-owned keys.

## Identities And Bundles

`proto:/network/connect/v0` is `"/network/connect/v0"`.
`proto:/network/connect` refers to the current connection capability, presently v0.
Both are also exported by the public `:std/ensemble/network` facade for creating
UCAN credentials without embedding a protocol string. They replace the internal
`connection-auth-protocol` name; the protocol value and authentication behavior
are unchanged. Treat these strings as immutable.

[`normalize-did(did)`](../ucan/did.md#normalize-did), exported by
`:std/ensemble/ucan/did`, produces the canonical Base64url Ed25519 DID without
allocating a native public key. Context-backed
issuance, parent filtering, and selection use `CapabilityContext.normalize-did`
for canonical comparison projections. Equivalent `did:key:z` and `did:key:u`
spellings identify the same key, including roots configured with `z` spellings.
Signed token issuer, audience, and ancestor fields are never rewritten by these
comparisons; signatures and marshaled bytes retain their original spelling.
New tokens issued through `grant!` or `delegate!` have canonical fields, whereas
low-level `sign!` preserves the supplied fields. The handshake owner must
reject noncanonical HELLO identities, bind them to the authenticated key, and
reject self-connections before proceeding.

`make-auth-tokens(ctx, issuer, audience, protocol, expire, headroom, now, [parent])`
returns a fresh list of newly issued Token objects in stable descending expiration
order, without marshaling the outgoing credentials. It has the same positional
arguments and contracts as `make-auth-bundle`: a `CapabilityContext`, three strings,
three u64 integers (`expire`, `headroom`, `now`), and an optional Token parent
defaulting to `#f`; the return type is `:list`. With no parent it uses
`CapabilityContext.provide!`; with a supplied parent it uses `delegate!` to create
a singleton INVOKE list. The requested expiration must cover the fixed headroom
and remain live. A supplied parent must cover that entire expiration, so delegation
clamping never silently shortens a successful request. The UCAN extension/signing
checks validate delegation authority; this module does not duplicate capability inclusion checks.
Issuance neither saves tokens nor implies recipient trust.

`make-auth-bundle(ctx, issuer, audience, protocol, expire, headroom, now, [parent])`
retains its existing signature and handshake behavior: it maps `marshal-token`
over `make-auth-tokens` and returns opaque blobs. This compatibility entry point
does not impose an encoding byte limit. Issuance/signing can still perform its own
serialization internally; `make-auth-tokens` only separates issuance from retained
outgoing blob construction.

`make-adaptive-auth-tokens(ctx, issuer, audience, protocol, required, headroom, now,
window, seed: #f) -> :list` is a separate internal issuance path. Context and
identity/protocol types match the fixed helper; `required`, `headroom`, and `now`
are u64 integers, `window` is a positive exact integer number of seconds, and
`seed:` is a nullable Token. Zero `required` means no explicit lower bound, not
infinite authority. It does not change either fixed helper's behavior.

The direct INVOKE grant expires at `max(now + window, required)`. The window sum
must fit u64 before issuance; overflow raises `IOError`. If that finite expiration
cannot cover headroom and current validity, the result is empty, without issuing
any tokens or silently extending the window to headroom. An explicit required
target may extend the window, but is never weakened. No maximum-u64 policy sentinel
is minted. Direct issuance does not require the issuer in local roots or input
anchors: the recipient alone decides whether to trust it.

After the direct grant, issuance considers the explicit seed and freshly queried
applicable output parents, in that order. Context applicability uses DELEGATE type,
an audience whose canonical projection matches the issuer or is the literal
wildcard `"*"`, and protocol/group inclusion, as `provide!` does. Normalizing a
parent's audience for comparison does not mutate the parent or its signed bytes.
Each delegated target is the minimum expiration over its **entire parent chain**,
not just the supplied leaf, and must be a live u64 covering required/headroom.
Exhausted parents, including an expired seed or one with an expired ancestor, are
ignored without preventing fresh context alternatives. A lifetime-eligible explicit
seed still passes through `delegate!`'s type/audience/protocol contracts and signing
validation. Computing a chain horizon does not repair an invalid chain or bypass
any signature or delegation constraint.

Structurally equal parents are deduplicated before issuing randomized children,
preserving first occurrence. The final stable descending-expiration sort retains
direct, seed, then context order on ties. Context, signing, and encoding exceptions
propagate, including a raised `#f`; they are not candidate refusals. Contexts,
parents, and seeds remain borrowed and immutable. Owners retain/replace their seed
under their own serialization and call this helper anew for each operation.

An empty result means the local choice cannot supply credentials. Owners try
eligible alternatives within their original operation budget before sending
`reason-no-credentials` (12). An empty result here means insufficient lifetime.
Delegation, identity, serialization, context, storage, and cryptographic exceptions
propagate to the owner for abort. In particular, a missing host principal key
is a broken local prerequisite, not a credential alternative to skip; the original
keystore error propagates in both construction paths.
`CapabilityContext` cryptographically validates input and output anchors at
insertion, checking signatures, delegation chains, and expiration before storage.
Invalid anchors are rejected without replacing existing valid alternatives.
Admission requires no existing recipient-side trust. Verification uses the
recipient context's implicit principal roots, explicit roots, and input anchors.
Output-anchor insertion does not confer recipient-side trust.
`provide!` returns the direct grant followed by all selected anchor delegations
in the context's listing order; it does not silently skip corrupt credentials.
Its signing/context exceptions propagate through network construction, as do all
exceptions from the supplied-parent path. No exception contents are inspected.

`encode-auth-bundle(tokens: :list, limit: :fixnum) -> :list` encodes already-issued
Tokens without reordering them. Its cumulative byte allowance includes the
four-byte bundle count and every four-byte blob-length prefix:
`4 + sum(4 + blob-length) <= limit`. The returned list contains only the opaque
token blobs, not those framing bytes. `[]` is valid with a limit of at least four;
any insufficient limit, including a negative one, raises `IOError`. Non-Token
elements fail the Token contract. Tokens and their parameters come from trusted
local sources and must remain immutable during encoding; encoding does not
authenticate them or establish recipient trust.

Encoding uses a fresh `marshal-context(dag: #t)` and `BufferedWriter.serialize`
for each token, preserving the existing binary representation byte for byte,
including shared acyclic data. A narrow bounded BufferedWriter checks both
single-byte and bulk writes before forwarding to a growable `:std/io` memory
writer. The delegate starts with a small buffer, not a preallocation of the full
allowance. Its logical output is bounded while serializing, not checked only
after an unbounded marshal. Each memory writer is closed on success and failure;
successful output transfers to the caller, and failed output returns its cached
buffer. DAG/cycle and other serialization errors propagate unchanged.

These helpers are explicitly exported only by the internal auth module, not the
public network facade. An outgoing OPEN owner can issue tokens first, but must
reserve connection control space **before** calling `encode-auth-bundle`, then
refund unused reservation once the actual encoded size is known. The owner must
allow separately for frame headers and other OPEN fields, and release its
reservation on failure. These helpers do not reserve, wait for, or refund control
space themselves. The byte allowance bounds logical serialized output, not token
construction, serde graph scanning/metadata, decoder resources, or exact heap
usage including memory-writer capacity rounding.

`order-auth-tokens(tokens)` returns a fresh, stably sorted list of Token objects,
longest expiration first. It can order supplied parents before an owner performs
failover; it does not deduplicate, authenticate, or mutate them.

`decode-auth-bundle(blobs)` accepts the ordered opaque byte-vector list from the
wire codec. It decodes with `unmarshal-token` and its existing DAG environment,
propagates any decoding failure, and sorts candidates stably by decreasing
expiration. A malformed blob aborts decoding of the bundle, even if other blobs
are valid. `AuthCandidate` contains:

| Field | Meaning |
| --- | --- |
| `index` | Original zero-based wire index, independent of sorting |
| `token` | Decoded Token; not yet authenticated |
| `bytes` | The original supplied byte vector, retained by identity |

Pass this sorted list unchanged to
`select-auth-candidate(ctx, candidates, issuer, audience, protocol, min-auth-expire, headroom, now)`.
The expected endpoint identities and signed issuer/audience comparison projections
are normalized through the context. Selection accepts equivalent `z`/`u` spellings
in either direction without modifying signed fields or retained wire bytes. It
requires an INVOKE leaf, matching canonical issuer/audience projections, exact
protocol, u64 expiration, current
validity, full requested lifetime, and the fixed headroom. It invokes
`CapabilityContext.verify`, which checks signatures, delegation, and implicit-root,
explicit-root, or input-anchor trust. Merely using `verify-token` would not
establish that trust.
Unlike delegation-parent applicability, leaf selection rejects wildcard audience
`"*"`; it does not normalize the wildcard or treat it as the expected endpoint.

`AuthSelection` contains `candidate` and `reason`. Success has the selected
AuthCandidate and `reason-ok` (0). Failure has no candidate and
`reason-auth-failed` (3), or `reason-lifetime` (4) if a matching, currently live,
context-verified candidate was found but could not cover the required expiration
or headroom. Invalid/untrusted long-lived candidates never mask a valid shorter
alternative. Expired tokens are invalid candidates, not evidence of sufficient
trust to report the more specific lifetime failure.

Classes use the ordinary generated constructors and checked accessors/setters.
They are internal module-transfer objects, not a public network facade. Treat
lists, candidates, tokens, and retained byte vectors as immutable while in use.
In particular, do not manufacture cyclic candidates or mutate a decoded candidate
before selection. Owners validate acknowledgment indices against the original
bundle, not the sorted candidate position, and recheck timing before publication.

## Failure Boundary

Encoding, decoding, normalization, and context exceptions propagate unchanged.
Do not inspect exception messages or irritants to infer a recoverable cause, or
turn exceptions into rejected candidates. Data must be well formed; an exception
requires the owner to abort the operation. The existing token codec enforces DAG
structure at encoding/decoding boundaries. Adaptive horizon traversal also rejects
cyclic parent chains using identity tracking before structural deduplication or
delegation; this prevents malformed local seeds from looping before signing can
reach the codec. No new class-loading policy or decoder resource budget is introduced.

Ordinary verification result values remain distinct from exceptions: a well-formed
token with a bad signature, insufficient trust, or inadequate lifetime can be
rejected while considering other candidates. There is no catch-all logger here.
Owners must clean up and report unexpected errors using
the package logger without dumping token blobs, private keys, or secret-bearing
exception irritants. No exception object or diagnostic string is a wire result.

Reasons 3/4 reject the recipient's credentials; reason 12 describes the sender's
own inability. Reason 13 describes insufficient old-lease headroom, not a peer
credential failure. Only owners know whether an authenticated peer's reason and
the current protocol phase permit retry; these utilities do not initiate retries.

## Pure Timing

Timing functions read no clock and own no socket, timer, or renewal state.

| Procedure | Contract |
| --- | --- |
| `resolve-auth-expiration(start, default-ttl, ttl:, expire:)` | Integer u64 Unix-second start; positive exact TTLs. Explicit expire wins, otherwise start plus TTL/default. Both overrides are checked. Reject overflow and expiration at/before start. |
| `auth-headroom(start, timeout)` | U64 Unix-second start plus positive exact integer seconds. Reject thresholds above u64. Capture once per local attempt/round. |
| `auth-lifetime?(expire, min-auth-expire, headroom, now)` | `min-auth-expire`, headroom, and now are u64 Unix seconds. Expiration must be u64, cover `min-auth-expire` and headroom independently, and be strictly later than now. |
| `operation-deadline(start, timeout, deadline:)` | U64 Unix-second start plus positive exact integer seconds. Optional inherited u64 deadline can only shorten it. Overflow is rejected before applying the cap. |
| `operation-expired?(deadline, now)` | Macro expanding to `(>= now deadline)` without type contracts; equality is expired. |

Capture operation starts and current time using `current-time-seconds`. All
authentication timestamps and operation deadlines use exact integer Unix seconds,
locally and on the wire. Fractional and inexact timestamps/durations are rejected;
there is no scaling, real-number conversion, or quantization machinery. The
separate `IOTimeout` API is unchanged.

Both fixed and connection-linked initial OPEN pass zero extra headroom, while
requiring full coverage of their captured expiration. Renewal owners supply their
captured required expiration and operation headroom; adaptive initial connections
pass required zero with fixed handshake headroom.
Renewal owners check `auth-lifetime?` on the old lease before starting a round and
map insufficient headroom to reason 13 without changing that lease. A new retry
captures a new headroom threshold but retains the original operation deadline.
The owners keep no-override connection reuse separate from new-operation lifetime
resolution. These functions do not alter the `!NoTimeout` I/O defaults.

## Unix Identity Proof

`unix-auth-transcript(initiator-hello, responder-hello, role, bundle)` accepts raw
byte vectors and returns exactly:

```text
ASCII gerbil:ensemble:network:unix-auth:v0
u32be initiator-length | exact initiator HELLO payload
u32be responder-length | exact responder HELLO payload
u8 physical-sender-role (0 initiator, 1 responder)
u32be bundle-length | exact sender bundle encoding
```

No NUL terminator, frame headers, hash, or signature is included. Length arithmetic
is checked before allocation; validated lengths use the standard unchecked
big-endian u8vector writer. Physical direction is independent of DID election role.

`sign-unix-auth(key, initiator-hello, responder-hello, role, bundle)` uses the
existing `digest-sign!` API and an Ed25519 PrivKey, returning 64 signature bytes.
`verify-unix-auth(key, initiator-hello, responder-hello, role, bundle, signature)`
uses `digest-verify!` with the known DID's PubKey. It rejects non-64-byte signatures
and returns false on a signature mismatch; unsupported key types and unexpected
crypto failures raise.

The wire codec validates HELLO structure and the exact 32-byte challenge and Unix
64-byte AUTH suffix. The owner generates fresh random challenges, validates
version, physical roles, HELLO IDs/required-expiration semantics, and envelope
state. It must retain both raw HELLO payloads and the raw AUTH prefix excluding
its last 64 bytes. Do not reconstruct the bundle from decoded blobs or tokens for
proof verification, even if normal local encoding would produce equal bytes.
Only outgoing construction may use the wire AUTH codec without its Unix suffix
to obtain the bundle bytes before signing.

This is the agreed plaintext-Unix identity proof, not per-frame integrity or
protection against malicious local relays. TLS and renewal add no such proof.

## Tests

Run from the repository root after `make stdlib`:

```sh
./build.sh test std/ensemble/network/...
```

`auth-test.ss` includes integer-second range/deadline/contract tests, actual Ed25519
transcript tests, empty-bundle bounds, and oversized/cyclic token failures that
check cached-output return and rejection before memory-buffer growth. With SQLite
enabled, it also checks fresh token issuance and bounded encoding against
`map marshal-token` at exact byte boundaries, including count/prefix overhead,
original order, shared DAG data, UTF-8, and bulk writes. It uses the real capability context
and encrypted memory keystore for output/input/root trust, delegation, malformed
blobs, cycles, every proper token truncation, stable ties and wire indices,
mixed signed/API DID spellings in both directions, roots configured with aliases,
unchanged signed bytes, wildcard-leaf rejection, lifetime rejection, missing keys,
and invalid signatures.
Small deliberately failing contexts test unexpected-error propagation. None of
these tests open a network socket or claim completed transport authentication.

Adaptive cases add finite direct windows without implicit trust, accepted shorter
alternatives, explicit-target extension, full-chain horizons, expired-seed context
refresh, signed alias-audience output parents without rewriting parent bytes,
structural deduplication before signing, stable ties/original indices,
bounded encoding, numeric contracts, and unchanged exception identity. These cases
are included in the integrated network regression; see the
[main-owned current checkpoint](implementation-notes.md#current-checkpoint) for
revision-scoped build and runtime evidence.
