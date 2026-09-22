# UCAN Types And Context

Import `:std/ensemble/ucan/interface` for the token model, capability-context
interface, and verification results. This module defines contracts, not a
concrete context implementation. See [context](context.md) for the implementation
combining a keystore, SQLite persistence, and cached keys.

The model uses UCAN-style delegation chains. See the
[UCAN specifications](https://github.com/ucan-wg/spec) for background. The
serialization used here is Gerbil's token encoding, not a JWT or DAG-CBOR wire format.

## Token

`Token` is a final class with the following slots:

| Slot | Type | Meaning/default |
| --- | --- | --- |
| `type` | Fixnum | Token kind; see constants below |
| `issuer` | String | Issuing principal's DID |
| `audience` | String | Recipient DID, or `"*"` for any recipient |
| `protocol` | String | Granted protocol capability |
| `group` | String or `#f` | Broadcast group capability; defaults to `#f` |
| `args` | List | Keyword/value arguments reserved for future revocation; defaults to `[]` |
| `expire` | Integer | Expiration in Unix seconds |
| `chain` | `Token` or `#f` | Immediate parent delegation; defaults to `#f` |
| `nonce` | Bytevector or `#f` | Set when signing; defaults to `#f` |
| `signature` | Bytevector or `#f` | Issuer's signature; defaults to `#f` |

The kind constants are `DELEGATE = 0`, `INVOKE = 1`, `BROADCAST = 2`, and
`REVOKE = 3`. `REVOKE` is reserved; revocation is not implemented.
`token-type?` is the type-slot contract helper. `@Token` is the forward type alias
used for recursive token fields.

A chain points from a child toward its parent, not toward descendants. The
parent's audience authorizes the child's issuer, and each child must stay
within its parent's capabilities and expiration. See [cap](cap.md) for the
exact validation rules.

Token fields are mutable, but changing signed fields or ancestors invalidates
signatures that cover them. Callers must coordinate concurrent mutation.
Deserialize boundary data through [unmarshal-token](util.md), which checks
the token's field contracts and rejects cycles.

## CapabilityContext

`CapabilityContext` extends `Closer`. Generated call procedures use the
interface name as a prefix, for example `CapabilityContext-get-principal`;
the context is their first argument. Typed interface values also support
method-call notation.

### Principals And Keys

| Method | Arguments | Result |
| --- | --- | --- |
| `add-principal!` | `PrivKey` | Principal DID string |
| `normalize-did` | DID string | Canonical DID string |
| `get-principal` | DID string | `PrivKey` |
| `principals` | None | List of principal DIDs |
| `public-key` | DID string | `PubKey` |

Adding a principal makes its private key available for signing. Public keys
are encoded in their DIDs and may be cached to avoid repeated decoding.
The interface does not prescribe whether returned native key objects are
shared or freshly allocated; callers must follow the implementation's
ownership policy rather than release possibly cached keys themselves.

`normalize-did(did: string) -> string` strictly validates an Ed25519 `did:key`
and returns its canonical unpadded base64url (`u`) spelling. Valid base58btc
(`z`) aliases denote the same identity; malformed or unsupported DIDs raise a
contract violation. The result is borrowed and read-only, and may be the input
string or a shared cached string. Inputs retained by the context must also be
treated as immutable. Normalization never rewrites fields inside signed tokens.

### Tokens

| Method | Arguments | Result |
| --- | --- | --- |
| `sign!` | `Token` | Void |
| `verify` | `Token` | `VerificationResult` |
| `save-token!` | `Token` | Void |
| `list-tokens` | Token predicate | List of saved, unexpired tokens |

Signing requires the issuer's private key to be available in the context.
Saving retains a token for future revocation support; it is distinct from signing
and does not revoke tokens.

A context's `verify` policy must establish valid signatures, unexpired
tokens, delegation narrowing, and trust through a root or input anchor.
The standalone [verify-token](cap.md) helper performs chain validation only;
its success is not sufficient to establish authorization.

The keystore-backed context also treats principal DIDs present at opening as
implicit roots. These are separate from explicit database roots; see
[Signing And Trust](context.md#signing-and-trust) for snapshot semantics.

### Trust

| Method | Arguments | Result |
| --- | --- | --- |
| `add-output-anchor!` | `Token` | Void |
| `remove-output-anchor!` | `Token` | Void |
| `output-anchors` | Token predicate | List of unexpired output anchors |
| `add-input-anchor!` | `Token` | Void |
| `remove-input-anchor!` | `Token` | Void |
| `input-anchors` | Token predicate | List of unexpired input anchors |
| `add-root!` | DID string | Void |
| `remove-root!` | DID string | Void |
| `roots` | None | List of root DIDs |

Output anchors are parent tokens used to authorize outgoing operations, such
as sending a message or opening a stream. Input anchors confer partial trust
for particular audiences and capabilities. A root is fully trusted as an
issuer anywhere in a valid chain, so roots should be reserved for entities
such as the owner of the host or organization.

The concrete context stores explicit roots canonically: adding either accepted
spelling deduplicates the identity, and removing either spelling removes it.
Root listings return borrowed, read-only canonical strings.

Both anchor insertion methods require valid signatures, unexpired tokens and
valid delegation chains. Reject invalid anchors before changing policy. This is
credential verification, not a requirement for an already configured root/input
trust path: installing an anchor is an explicit application policy decision.

Inherited `close` releases implementation resources. Persistence, caching,
ordering, and duplicate-handling details are implementation-specific. The
internal [database backend](db.md) supplies storage, while the
[keystore](../keystore.md) supplies private-key storage; neither is itself a
complete `CapabilityContext`.

## Verification Results

`VerificationResult` is the base struct; `@VerificationResult` is its forward
type alias. `VerificationOK` is the success subtype. `VerificationError` has
a string `reason` slot, accessible with `VerificationError-reason`.

The shared success value is `!VerificationOK`. `!VerificationOK?` uses object
identity with that singleton, not merely the `VerificationOK` type predicate.
Implementations using that helper should return the shared success value.

| Shared error value | Meaning |
| --- | --- |
| `!SignatureVerificationError` | Signature verification failed |
| `!DelegationVerificationError` | Delegation verification failed |
| `!ExpirationVerificationError` | Delegation extends its parent's expiration |
| `!IssuerVerificationError` | Issuer/delegation audience mismatch |
| `!CapabilityVerificationError` | Capability narrowing failed |
| `!AnchorVerificationError` | Anchor verification failed |
| `!TokenExpiredVerificationError` | Token expired |
| `!MalformedTokenVerificationError` | Malformed token |
| `!MessageExpiredVerificationError` | Message expired |
| `!MessageVerificationError` | Message verification failed |

These shared results describe policy failures. Underlying key lookup,
serialization, and cryptographic operations can also raise exceptions;
the presence of a result type does not make verification exception-free.
