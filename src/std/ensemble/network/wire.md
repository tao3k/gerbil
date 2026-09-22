# Ensemble Wire Codecs

Import `:std/ensemble/network/wire` for buffer-only frame encoding and decoding.
This is an implementation module, not a transport or authentication API. It has
no socket I/O, token deserialization, clock access, or protocol state machine.

The current transport uses HELLO version 1, including lease modes and dedicated
stream reauthorization tags. The [handshake](handshake.ss) and
[connection runtime](connection.ss) implement establishment and renewal; this module
supplies their codecs. [renewal-plan.md](renewal-plan.md) preserves the design handoff,
not the current implementation status.

## Envelope API

`FrameHeader` is a typed final class with keyword fields `type:`, `stream-id:`,
and `payload-length:`. The type is a fixnum; ID and length are integers pending
wire-range validation. Its constructor, predicate, accessors, and
checked setters are exported through `struct-out`. Treat instances as immutable
while using a codec. Construction alone does not validate wire semantics.

- `(encode-frame-header header limits: limits)` returns a new 13-byte u8vector.
- `(decode-frame-header bytes limits: limits)` consumes exactly 13 bytes and
  returns a validated `FrameHeader`. No payload buffer is required or allocated.
- `frame-header-size` is 13. The envelope is `type:u8`, `stream-id:u64`,
  `payload-length:u32`, in big-endian order. Length excludes the envelope.

Both operations validate known types, unsigned ranges, stream-ID scope, and the
applicable configured payload bound. Numeric reads/writes use the unchecked
big-endian u8vector procedures after their buffer bounds are established; encoding
also validates integer ranges before writing. Fixed-layout payload lengths must
equal the schema length; variable-layout lengths must meet the schema's structural minimum,
including string/bundle prefixes and at least one DATA byte. AUTH's header minimum
is four bytes, conservatively independent of transport mode. Handshake and
connection renewal (`0x20` through `0x26`) require stream ID zero; ordinary stream
frames (`0x10` through `0x16`) and stream renewal (`0x30` through `0x34`) require a
nonzero ID. Neither stream parity nor ID monotonicity is checked here.

Decode the header **before allocating or reading its payload**. Then obtain
exactly `FrameHeader-payload-length` bytes and call the payload decoder. The header
rejects impossible fixed/minimum lengths before payload allocation; the payload
decoder additionally checks internal lengths, contents, exact consumption, and
the transport-specific AUTH suffix. The separate APIs intentionally do not accept a
combined frame buffer that would require allocating an unchecked payload first.

## Payload API

- `(encode-frame-payload type fields limits: limits unix?: #f)` returns a new
  u8vector. `fields` is a proper list in the order below, including for DATA and
  empty payloads. Wrong field counts fail.
- `frame-payload-size(type, fields, limits) -> :fixnum` measures and validates those
  fields through the encoder's same traversal without allocating the encoded
  payload. It returns **payload bytes only**, excluding the 13-byte header, and
  checks field counts, values and local/native size bounds. All three arguments
  are positional; `limits` is required. It uses the non-Unix layout (`unix? = #f`),
  with no Unix AUTH signature option. Connection admission uses it before control
  reservation (and to measure completed OPEN fields before refunding unused encoding
  allowance); it neither reserves capacity nor checks the header's ID/phase.
- Payload codec `type` arguments are fixnums, matching the one-byte frame tag.
- `(decode-frame-payload type bytes limits: limits unix?: #f)` returns that ordered
  field vector for constant-time indexed access. Empty payloads return `#()`;
  DATA returns a one-field vector containing its raw byte vector. Token bundles
  remain lists inside the field vector. It consumes the entire buffer, rejecting
  truncation or trailing bytes. Encoder input remains a field list.
- `limits:` defaults to a fresh `ConnectionLimits` from `config.ss` on the four
  encode/decode procedures; the size helper takes explicit positional limits.
  HELLO uses `hello-payload` (4096 by default), DATA uses `data-payload`
  (16384), and all others use `control-payload` (65536). These exclude headers.
- `unix?:` is explicit local transport state. Only initial AUTH changes layout;
  Unix requires exactly 64 signature bytes, and TLS permits no signature suffix.

For outgoing messages the owner supplies appropriate send ceilings, including
the peer's advertised DATA/control bounds and applicable local limits. Peer
advertisements must never increase local receive or buffering limits. No limit
negotiation or persistent shared default object is hidden in this module.

The encoder first validates and measures all fields against the applicable limit,
then allocates the exact aggregate output. It measures UTF-8 without constructing
encoded strings in that first pass. Numeric representability is not allocation
permission. The encoder also bounds output size by the platform's maximum fixnum
for buffer indexing. It checks remaining capacity before fixnum cursor addition.
Input lists, strings, and byte buffers must not be mutated between measurement
and encoding or concurrently with either; the passes rely on this ownership convention.

Strings have a u32 **byte** length and strict UTF-8 content. Bundles are proper
lists of opaque u8vectors, encoded as a u32 count followed by a u32 length and
bytes for each candidate. Impossible counts are rejected against remaining
input before accumulating candidates; every blob/string length is checked before
copying. There is no additional candidate-count cap or token-object budget.
Empty bundles and empty token blobs are structurally valid. Bundle order and every
candidate, including empty ones, are preserved without sorting or filtering. Token
contents are decoded by the authentication layer, where decoding exceptions cause abort.

Decoded byte fields are new copies, including DATA and bundle candidates. Strings
are decoded values. For Unix signature verification the owner must retain the
original received HELLO and AUTH payload bytes and use the exact encoded bundle
prefix (AUTH without its last 64 bytes), not reconstructed objects. This module
does not construct or verify the signed transcript.

## Layouts

All integers are unsigned big-endian. `string` and `bundle` use the shared
length/count encoding above. Fixed bytes have no length prefix. The private `mode`
descriptor is a single byte accepting **only exact 0 or 1**, not a generic u8.
Encoding, size measurement, and decoding all reject other modes. The exported
constants are `lease-mode-fixed = 0` and `lease-mode-adaptive = 1`.

| Exported Type | Code | Ordered Fields |
| --- | --- | --- |
| `frame-hello` | 0x01 | version:u16, host:string, challenge:32 bytes, required-expiration:u64, max-data:positive u32, max-control:positive u32, lease-mode:mode |
| `frame-auth` | 0x02 | bundle, signature:64 bytes (Unix only) |
| `frame-accept` | 0x03 | selected-index:u32 |
| `frame-confirm` | 0x04 | none (`[]`) |
| `frame-reject` | 0x05 | reason:nonzero u16 |
| `frame-open` | 0x10 | protocol:string, required-expiration:u64, receive-window:positive u32, bundle, lease-mode:mode |
| `frame-open-accept` | 0x11 | selected-index:u32, receive-window:positive u32 |
| `frame-open-reject` | 0x12 | reason:nonzero u16 |
| `frame-data` | 0x13 | nonempty raw u8vector |
| `frame-window-update` | 0x14 | credit:positive u32 |
| `frame-fin` | 0x15 | none (`[]`) |
| `frame-reset` | 0x16 | reason:nonzero u16 |
| `frame-renew-request` | 0x20 | request-id:u64, required-expiration:u64, deadline:u64, lease-mode:mode |
| `frame-renew-result` | 0x21 | request-id:u64, status:u16 |
| `frame-renew-offer` | 0x22 | round-id:u64, required-expiration:u64, deadline:u64, bundle, lease-mode:mode |
| `frame-renew-auth` | 0x23 | round-id:u64, selected-index:u32, bundle |
| `frame-renew-commit` | 0x24 | round-id:u64, selected-index:u32 |
| `frame-renew-ack` | 0x25 | round-id:u64 |
| `frame-renew-abort` | 0x26 | round-id:u64, reason:nonzero u16 |
| `frame-stream-renew-offer` | 0x30 | round-id:u64, required-expiration:u64, deadline:u64, bundle |
| `frame-stream-renew-auth` | 0x31 | round-id:u64, selected-index:u32 |
| `frame-stream-renew-commit` | 0x32 | round-id:u64 |
| `frame-stream-renew-ack` | 0x33 | round-id:u64 |
| `frame-stream-renew-abort` | 0x34 | round-id:u64, reason:nonzero u16 |

The four mode-bearing layouts append their mode after every existing field. No
version-0 layout, downgrade, or compatibility decoder is provided. All other
existing payload layouts, including Unix AUTH's signature suffix, are unchanged.
The changed/new header length checks are:

| Frame | Payload Bytes | Including Header |
| --- | --- | --- |
| HELLO | Minimum 55 | Minimum 68 |
| OPEN | Minimum 21 | Minimum 34 |
| RENEW-REQUEST | Exactly 25 | Exactly 38 |
| RENEW-OFFER | Minimum 29 | Minimum 42 |
| STREAM-RENEW-OFFER | Minimum 28 | Minimum 41 |
| STREAM-RENEW-AUTH | Exactly 12 | Exactly 25 |
| STREAM-RENEW-COMMIT | Exactly 8 | Exactly 21 |
| STREAM-RENEW-ACK | Exactly 8 | Exactly 21 |
| STREAM-RENEW-ABORT | Exactly 10 | Exactly 23 |

These minima include empty string/bundle prefixes; actual fields usually require
more bytes. All five stream renewal controls use `control-payload` and the existing
aggregate control budgets, including their headers, not a separate allocation path.

HELLO and connection renewal interpret mode 0 as fixed and mode 1 as adaptive.
OPEN interprets the same values as fixed and connection-linked, respectively; the
public stream policy is `lease: 'connection`, not `'renewable` or a numeric bit.
Only the physical initiator's HELLO selects establishment mode: fixed requires a
positive target, adaptive uses target zero (no explicit lower bound, not infinity).
The responder sends mode 0 and target zero. Both OPEN modes and both connection
renewal modes require positive finite targets. The owner checks these role/target
relationships; the codec only checks the mode's representation.

The original stream opener sends stream OFFER/COMMIT and the original recipient
sends AUTH/ACK. Stream authorization is one-way: stream AUTH has no reciprocal
bundle, and stream COMMIT has no selected index. Correlation is `(stream-id,
round-id)` without consuming another OPEN ID. Role, linked-policy eligibility,
transaction state and authenticated installation remain owner responsibilities.

Request/round IDs include zero in their encoding range; the renewal runtime rejects
zero in state transitions and generates IDs starting at 1. Never-reuse/monotonicity
checks belong to the owner. Selected indices are zero-based **original bundle**
indices; checking them against an earlier bundle belongs to handshake/renewal.
Expirations and deadlines both encode integer Unix seconds. No clock conversion,
expiry check, or headroom check happens here. HELLO version is any u16 at this
layer. The handshake requires version 1 after envelope validation and before
decoding the remaining HELLO fields, with no v0 fallback. The connection
capability remains `/network/connect/v0`; that string does not name
the transport version. Canonical host DID and protocol phase are also owner checks.

## Reasons And Failures

| Export | Code | Meaning |
| --- | --- | --- |
| `reason-ok` | 0 | Successful RENEW-RESULT only |
| `reason-closed` | 1 | Closed |
| `reason-refused` | 2 | Admission refused |
| `reason-auth-failed` | 3 | Recipient's presented credentials rejected |
| `reason-lifetime` | 4 | Recipient's presented credentials too short-lived |
| `reason-limit` | 5 | Resource limit |
| `reason-timeout` | 6 | Deadline expired |
| `reason-cancelled` | 7 | Abandoned |
| `reason-duplicate` | 8 | Candidate not selected |
| `reason-version` | 9 | Unsupported version |
| `reason-protocol` | 10 | Protocol violation |
| `reason-internal` | 11 | Unexpected local failure |
| `reason-no-credentials` | 12 | Sender cannot supply its own eligible credentials |
| `reason-headroom` | 13 | Old lease has insufficient renewal headroom |

Unknown nonzero u16 reasons remain valid and retain their value. They indicate
generic failure, not success or authorization to retry. Reason zero is rejected
in REJECT, OPEN-REJECT, RESET, RENEW-ABORT, and STREAM-RENEW-ABORT. Codes are
explanatory, not commands.

Structural/range/limit violations raise contextual `IOError` without embedding
token bytes in diagnostic irritants. Type contracts and strict UTF-8 conversion
exceptions propagate unchanged. The owner maps failures to protocol cleanup or
local operation failure; these codecs never close a connection themselves.
