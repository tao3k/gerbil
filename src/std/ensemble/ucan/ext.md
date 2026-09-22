# Capability Context Extensions

Import `:std/ensemble/ucan/ext` to use these extension methods on a typed
`CapabilityContext`. They construct and sign tokens through the context's
existing methods; they do not add required methods to the runtime interface.

The corresponding generated procedures use the `CapabilityContext-` prefix,
for example `CapabilityContext-grant!`, with the context as their first argument.
See [context](context.md) for the concrete implementation and [cap](cap.md)
for signing and verification semantics.

## Construction Methods

| Method | Arguments after the context | Result |
| --- | --- | --- |
| `grant!` | type, issuer, audience, protocol, expiration, optional group | Signed root `Token` |
| `delegate!` | parent, type, issuer, audience, protocol, optional expiration and group | Signed chained `Token` |
| `invoke!` | parent, issuer, audience, protocol, optional expiration and group | Signed `INVOKE` token |
| `broadcast!` | parent, issuer, audience, protocol, optional expiration and group | Signed `BROADCAST` token |

The generic type arguments accept `DELEGATE`, `INVOKE`, or `BROADCAST`.
Issuer, audience, and protocol are strings; expiration is an integer Unix
timestamp. `grant!` creates a token without a parent chain. Default token
arguments are empty, and the nonce and signature are populated by signing.

`grant!` and `delegate!` normalize the new issuer and any non-wildcard audience
through `ctx.normalize-did` before signing. Supported `did:key:z` aliases become
canonical `did:key:u` strings; audience `"*"` remains literal and is never passed
to normalization. Invalid DIDs raise. This applies to invocation, broadcast, and
provide wrappers too. Low-level `sign-token!` and `ctx.sign!` instead preserve
caller-chosen signed spellings, including valid aliases.

`delegate!` requires a `DELEGATE` parent whose audience is the new issuer or
`"*"`, and whose protocol/group capabilities include the requested ones.
Expiration defaults to the parent's expiration and is clamped to its maximum
when explicitly supplied. Zero is an ordinary timestamp, not a "never expires"
sentinel. Signing an expired leaf can succeed, but verification rejects it.

Parent audience and child issuer are compared by canonical DID identity through
the context, so mixed `z`/`u` encodings match only when they represent the same
key. The parent's wildcard audience permits any issuer. The parent chain is
borrowed unchanged, not normalized or copied; its original fields, signatures,
and serialized bytes are preserved.

`invoke!` and `broadcast!` use the same delegation path rather than duplicating
validation. The optional group defaults to `#f` for grant, delegate, and invoke.
A present parent group does not include an absent child group under the current
capability rules; specify the desired group when required.

For `broadcast!`, the group defaults to the parent's group and must be a string.
The caller may supply a narrower group explicitly. A parent without group
capability cannot authorize a broadcast group.

The context's `sign!` method performs the actual signature operation. These
methods do not save tokens automatically or establish trust at a recipient.

## Providing Output Tokens

`provide!` takes type, issuer, audience, protocol, expiration, and an optional
group (default `#f`). It returns a signed direct grant followed by signed
delegations through matching output anchors.

An output anchor must:

- Be an unexpired `DELEGATE` token, as selected through `output-anchors`.
- Address the requested issuer, or use the wildcard audience `"*"`.
- Expire no earlier than the requested expiration; equality is allowed.
- Include the requested protocol and group capabilities.

Output-anchor audience comparisons use `ctx.normalize-did`, with the requested
issuer canonicalized before scanning anchors. The requested non-wildcard audience
is also canonicalized once before constructing the alternatives. Selection never
rewrites stored anchors. Unlike delegation eligibility, input-anchor trust
matching treats `"*"` as matching only `"*"`; see [cap](cap.md).

The direct grant is returned even when no output anchor matches. Anchor-backed
tokens retain the requested expiration because selection already requires
the anchor to cover that lifetime. `CapabilityContext` cryptographically validates
both input and output anchors at insertion, including signatures, delegation
chains, and expiration. Invalid anchors are rejected rather than stored.
Admission requires no existing root or input-anchor trust: trust is explicitly
configured with `add-root!` or `add-input-anchor!`; adding an output anchor does
not establish recipient-side trust.

`provide!` returns the direct root grant followed by a delegation for each selected
anchor in `output-anchors` order. It does not silently skip corrupt credentials
or add a separate verification/cycle-filtering pass.

Exceptions from anchor retrieval, public-key lookup, crypto, and signing propagate
unchanged, including `ContractViolation` from a custom context. In particular,
failure to sign the direct grant is never suppressed. Decoder/key lookup exceptions
are not reclassified as verification results. Tokens must not be mutated
concurrently with construction; signing still performs its normal validation.

Convenience methods select the token type:

| Method | Arguments after the context |
| --- | --- |
| `provide-delegate!` | issuer, audience, protocol, expiration, optional group |
| `provide-invoke!` | issuer, audience, protocol, expiration, optional group |
| `provide-broadcast!` | issuer, protocol, expiration, group |

`provide-broadcast!` uses audience `"*"` and requires a string group. In all
three wrappers, expiration precedes group in the argument order.

## Revocation

These extensions do not provide a revocation API or implement revocation token
construction or revocation policy.
