# Network Configuration

Import `:std/ensemble/network/config` for `NetworkConfig`, `NetworkLimits`,
`ConnectionLimits`, and `StreamLimits`. Each is a final typed class with keyword
construction, generated predicates, accessors, and setters. For example,
`(NetworkConfig connection-ttl: 7200)` overrides one default.

Treat these objects, their nested limits, and their `IOTimeout` values as immutable
while in use. Supplied nested objects are retained, not defensively copied. Default
nested limits are freshly constructed; no-timeout defaults use the shared
preconstructed `!NoTimeout` object. Do not mutate that sentinel. No transport or
network constructor is implemented by this module.

## Defaults

`NetworkConfig` separates authorization lifetimes, operation budgets, and I/O:

| Keyword | Default | Contract |
| --- | --- | --- |
| `connection-ttl:` | 3600 | Positive exact integer seconds |
| `stream-ttl:` | 3600 | Positive exact integer seconds |
| `handshake-timeout:` | 10 | Positive exact integer seconds |
| `stream-open-timeout:` | 10 | Positive exact integer seconds |
| `renewal-timeout:` | 10 | Positive exact integer seconds |
| `connection-input-timeout:` | `!NoTimeout` | `IOTimeout` |
| `connection-output-timeout:` | `!NoTimeout` | `IOTimeout` |
| `stream-input-timeout:` | `!NoTimeout` | `IOTimeout` |
| `stream-output-timeout:` | `!NoTimeout` | `IOTimeout` |

Import `:std/time/timeout` to construct I/O overrides, such as `(IOTimeout 30)`.
The wrapper uses the existing timeout semantics; bare numbers and `#f` are not
accepted in these fields. Operation budgets instead take durations, not wrappers
or absolute times. Fractional and inexact operation durations are rejected; the
separate `IOTimeout` representation retains its existing precision and semantics.
TTLs are defaults, not lifetime ceilings. Operation code, not configuration
construction, validates resolved expirations/deadlines against the wire range
before encoding.

## Resource Limits

| Class | Keyword | Default | Contract |
| --- | --- | --- | --- |
| `NetworkLimits` | `pending-connections:` | 32 | Nonnegative fixnum |
| `NetworkLimits` | `election-history:` | 256 | Nonnegative fixnum |
| `NetworkLimits` | `connection-limits:` | `(ConnectionLimits)` | `ConnectionLimits` |
| `ConnectionLimits` | `total-streams:` | 128 | Nonnegative fixnum |
| `ConnectionLimits` | `pending-streams:` | 16 | Nonnegative fixnum |
| `ConnectionLimits` | `renewing-streams:` | 16 | Positive fixnum |
| `ConnectionLimits` | `hello-payload:` | 4096 | Positive u32 bytes |
| `ConnectionLimits` | `data-payload:` | 16384 | Positive u32 bytes |
| `ConnectionLimits` | `control-payload:` | 65536 | Positive u32 bytes |
| `ConnectionLimits` | `pending-control-frames:` | 256 | Positive fixnum |
| `ConnectionLimits` | `pending-control-bytes:` | 262144 | Positive fixnum bytes |
| `ConnectionLimits` | `control-burst:` | 8 | Positive fixnum |
| `ConnectionLimits` | `stream-limits:` | `(StreamLimits)` | `StreamLimits` |
| `StreamLimits` | `recv-window:` | 262144 | Positive power-of-two u32 bytes |
| `StreamLimits` | `outbound-buffer:` | 262144 | Positive power-of-two fixnum bytes |

Positive u32 means an exact integer from 1 through `4294967295`, inclusive.
Local stream capacities must additionally be powers of two, including 1; values
such as 3 and 5 are rejected, never rounded. The largest configured receive window
is `2147483648`; constructing stream state also requires native fixnum indexes.
The peer's advertised receive window remains any positive u32 that fits a native
fixnum, with no power-of-two requirement. Payload and control limits are unchanged.
Zero admission caps disable admission. Total streams counts pending and open streams
in both directions together. Payload limits exclude the 13-byte frame header;
pending-control bytes include headers. The control burst bounds control scheduling
before ready DATA gets a turn.

`renewing-streams` bounds local-initiated and peer-initiated stream renewal worker
ownership **separately**. At most twice this limit of stream renewal scopes, plus
one independent connection renewal scope, may own workers. Each charged slot owns
at most one worker; retired-but-running workers retain their charge until actual
release. A live stream owns at most one admitted round; a deferred next OFFER has
no worker. This is neither an OPEN admission cap nor a caller/waiter limit, and
zero is not accepted. The field adds generated
`ConnectionLimits-renewing-streams` and `ConnectionLimits-renewing-streams-set!`
exports. Construction and checked setters enforce the positive-fixnum contract.

The [connection runtime](connection.ss) enforces these worker bounds and schedules
renewal. Connection-round capacity is independent of stream-round worker quotas;
all renewal output uses the existing aggregate control budgets. Renewable/linked
policy and connection renewal require four protected control-frame slots and
`control-payload + 13 + 3 * 38` bytes within those budgets. The 38-byte bound is the
version-1 RENEW-REQUEST including its header. This is protected capacity, not extra
capacity or preallocated buffers. Insufficient configured or currently available
capacity is an operation-admission failure before policy changes, not a new
cross-field constructor constraint.

Pending renewable joins check configured capacity before accepting interest; the
elected connection installs actual protection before activation. Later attachments
check that parent's available capacity. Once enabled, protection lasts until
connection close. Ordinary and stream-renewal staging, queued frames, and in-flight
work use only the unprotected remainder. Capacity waiting does not consume an
automatic attempt or start credential encoding. See [renewal-plan.md](renewal-plan.md)
for the preserved design handoff.

`pending-connections` bounds physical setup/handshake reservations.
`election-history` independently bounds retained commit records, including active
committed entries and completed peers still protected against delayed unidentified
reservations. Zero disables new history reservations, not physical reservations.
History exhaustion raises `IOError` without evicting existing protection; resolving
or retiring the old cohort releases history capacity. Neither limit constrains the
other's configured value. See [network.md](network.md) for transition timing.

Limits are independent: pending streams need not be less than total streams, a
window need not hold a full DATA frame, and a control queue need not hold the largest
allowed control payload. Each bound applies independently; small limits can make
some operations impossible rather than invalidate the configuration.

Stream rings borrow exact-capacity vectors lazily from `:std/io/bio/cache` on first
nonempty input and return them when ownership ends; see [stream.md](stream.md).
Buffer ceilings do not eagerly allocate memory. The default 128-stream cap allows
32 MiB of receive DATA and 32 MiB of outbound DATA buffering per connection, not
including metadata, control work, or transport buffers.

Invalid constructor fields raise contract exceptions. Checked generated setters
also enforce field contracts, but mutation while in use is unsupported. There is
no separate validation framework or live reconfiguration API.
