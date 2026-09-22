# Capability Utilities

Import `:std/ensemble/ucan/cap` for capability inclusion, token signing,
chain validation, and trust-matching predicates. Types and result constants
come from [interface](interface.md); serialization comes from [util](util.md).

## Capability Inclusion

`capability-includes?` takes two strings, the granted capability and the
requested capability, and returns a boolean. Matching is literal and
case-sensitive, with these rules:

- An empty grant includes only the empty string.
- `"/"` includes every capability string, including the empty string.
- Equal strings include one another.
- Otherwise, the grant must be a prefix of the request and the next character
  in the request must be `/`.

| Grant | Request | Included? |
| --- | --- | --- |
| `/svc` | `/svc` | Yes |
| `/svc` | `/svc/read` | Yes |
| `/svc` | `/svcx` | No |
| `/svc` | `/svc-read` | No |
| `/svc/read` | `/svc` | No |
| `/svc/` | `/svc/read` | No |

There is no path normalization, decoding, or interpretation of `.` and `..`.
Trailing slashes are significant, as shown above.

`group-capability-includes?` accepts strings or `#f`. Two absent groups match.
An absent group does not include a present group, and a present group does
not include an absent group, even if the grant is `"/"`. When both are
strings, the ordinary capability-inclusion rules apply.

## Signing

`sign-token!` takes a `Token` and `CapabilityContext`, modifies the token's
nonce/signature, and returns void. It obtains the private key through the
context's `get-principal` method.

If a parent exists, signing checks that it is `DELEGATE`, that its audience
is the child's issuer or `"*"`, that its chain verifies, and that the child
does not extend its expiration, protocol capability, or group capability.
Equal expiration times are allowed. Invalid delegation raises a contract
violation rather than producing a verification-result value.

DID identity comparisons use the context's `normalize-did` method: supported
`did:key:z` and canonical `did:key:u` spellings of the same Ed25519 key match.
The wildcard audience `"*"` is handled explicitly, never passed to DID
normalization, and permits any child issuer on a delegation edge.

Signing uses a shallow unsigned copy, a fresh `nonce-length`-byte nonce
(`nonce-length` is 16), and `digest-sign!` over `marshal-token` output. The
original nonce and signature are updated only after signing succeeds.
The signature covers the nonce, other token fields, and the parent chain,
including ancestor signatures; only the token's own signature is omitted.
Low-level signing preserves the caller's issuer and audience spellings, including
valid aliases. It does not canonicalize token fields or rewrite borrowed chains.
Fresh construction through [extensions](ext.md) canonicalizes new fields before
signing instead.

Signing does not establish root/anchor trust and does not itself reject an
already-expired leaf. Callers must not mutate token contents or ancestors
concurrently with signing. Changing an ancestor after signing a descendant
invalidates the descendant's signature too.

## Verification

`verify-token-signature` takes a token and context and returns a
`VerificationResult`. It requires non-`#f` nonce and signature fields, resolves
the issuer's public key through `public-key`, and verifies the same unsigned
serialized representation used for signing. It does not modify the supplied
token, check expiration, or establish trust. Missing fields return
`!MalformedTokenVerificationError`; an invalid signature returns
`!SignatureVerificationError`; success returns `!VerificationOK`.

`verify-token` checks the entire delegation chain. It samples
`current-time-seconds` once and applies these checks:

1. Reject an expired leaf before public-key lookup or signature work.
2. Verify the leaf signature. Its DAG serialization also rejects cycles.
3. For each parent, reject expiration before verifying its signature.
4. Require the parent to be `DELEGATE` and its audience to match the child's
   issuer or be `"*"`.
5. Require the child to expire no later than the parent and to narrow both
   protocol and group capabilities.

An expiration at or before the sampled time is expired; zero has no special
"never expires" meaning. The first failed check determines the returned
result. Key lookup, marshalling, and native crypto errors can raise rather
than return a verification result.

Delegation edges compare canonical DID identities through the context, without
changing any signed field. Signature verification always uses the original
signed spelling, so previously signed alias tokens remain verifiable and
`marshal-token` output is unchanged by verification or trust matching. Invalid
DID encodings can raise from normalization rather than return a mismatch result.

**Successful chain validation is not authorization.** This helper does not
check a root/input anchor or an intended recipient supplied by the caller.
Those decisions belong to `CapabilityContext.verify` and the surrounding
operation's policy.

## Trust Predicates

`(token-rooted-at? token did ctx)` requires a `CapabilityContext` as its last
argument. It returns true if that DID is
the issuer of the token or any ancestor. Roots represent full trust in that
issuer, not merely trust in the final ancestor of a chain.

`(token-anchored-at? token anchor ctx)` also requires the context last. It requires the submitted
token's expiration to be no later than the anchor's. It then searches the
token and its ancestors for matching issuer and audience identities, with
protocol/group capabilities included by the anchor.

Both predicates normalize DID comparison operands through `ctx.normalize-did`,
with stable root/anchor operands normalized once before traversing the chain.
For anchor matching, `"*"` matches only `"*"`, not an arbitrary DID audience.
Neither predicate mutates the submitted token, its ancestors, or the anchor.

Anchor matching is type-independent and bounds the submitted leaf's
expiration, not the expiration of the particular matching ancestor. It does
not compare nonces, signatures, or revocation arguments, and it does not
validate the anchor's signature.

Both predicates require a previously verified, acyclic chain. They neither
verify signatures nor perform their own cycle or current-time checks. Use
them as components of context policy, not as standalone validators.
