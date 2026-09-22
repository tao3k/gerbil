# Token Serialization

Import `:std/ensemble/ucan/util` for the serialization boundary used by
[capability operations](cap.md) and the [database backend](db.md).

| Procedure | Argument | Result |
| --- | --- | --- |
| `marshal-token` | `Token` | Bytevector |
| `unmarshal-token` | Bytevector | `Token` |

## marshal-token

Serializes the complete token with `:std/serde/marshal`, creating a fresh
marshal context with `dag: #t` for each call. Cyclic object graphs are
rejected, including cycles through `chain` or `args`. Shared subobjects
without cycles are allowed.

The result includes the nonce and signature as stored on the supplied token.
This procedure does not sign, verify, clear fields, or change the token.
The signing helpers explicitly construct unsigned copies before calling it.

Callers must not mutate the object graph while it is being serialized.
Fresh per-call contexts prevent references or scan state from leaking
between separate token messages.

## unmarshal-token

Deserializes with `:std/serde/unmarshal`, creating a fresh unmarshal environment
with `dag: #t`. The deserializer resolves and untaints objects, applying the
token's field contracts. A final checked cast requires the decoded root to
be a `Token`.

Cycles and non-token roots are rejected. Shared DAG references are preserved,
including references to the same parent token from multiple fields. Malformed
data and contract failures propagate from the underlying deserializer.

Use this procedure at network boundaries before passing received tokens to
in-process capability utilities. A decoded token is structurally validated,
not cryptographically verified: callers must still check signatures,
expiration, delegation, and trust as appropriate.

## Scope

These procedures use Gerbil's native serialization format and inherit its
supported values and size/number limits. They are not a JWT, CBOR, or general
UCAN interchange codec, and they do not promise format compatibility across
arbitrary Gerbil versions.

The input is a bytevector containing a serialized object, not a framed network
stream. `unmarshal-token` decodes one root and does not add a trailing-byte
check; transports remain responsible for framing and message-size limits.
