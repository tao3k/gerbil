# Multibase Encoding

Import `:std/encoding/multibase`.

## Validation

`(multibase-valid? str [start = 0] [end = (string-length str)])` returns `#t` when
`str[start,end)` has a supported prefix and a valid canonical payload, otherwise
`#f`. The prefix is the character at `start`.

| Prefix | Encoding | Payload Validation |
| --- | --- | --- |
| `z` | Base58 Bitcoin | `base58-valid?` with the Bitcoin alphabet |
| `u` | Base64 URL-safe, unpadded | URL-safe alphabet; padding forbidden |
| `U` | Base64 URL-safe, padded | URL-safe alphabet; required padding |
| `m` | Base64, unpadded | Standard alphabet; padding forbidden |
| `M` | Base64, padded | Standard alphabet; required padding |

Base64 validation uses `base64-decoded-length` with the corresponding `padding:`
and `urlsafe:` flags. It rejects whitespace, junk, incorrect padding, invalid
lengths, and nonzero unused pad bits. Complete four-character groups need no
padding in either mode. A successful length, including zero, becomes `#t`.

A prefix alone (`z`, `u`, `U`, `m`, or `M`) is valid: its payload is empty.
An empty substring or unknown prefix is invalid. Validation does not allocate
a substring or decoded bytes.

`str` must be a string; `start` and `end` must be fixnums satisfying
`0 <= start <= end <= (string-length str)`. Invalid argument types or bounds
raise `ContractViolation`.

There is no `multibase-decoded-length` API: exact Base58 decoded sizing requires
numeric conversion, unlike the linear alphabet scan used here. Callers needing
the bytes can decode after validation.

## Encoding And Decoding

`(multibase-encode encoding bytes)` returns a prefixed string; `encoding` is one
of the prefix characters above. The corresponding constants are
`multibase-base58-btc`, `multibase-base64-url`, `multibase-base64-url-pad`,
`multibase-base64`, and `multibase-base64-pad`.

`(multibase-decode str)` returns a u8vector. Its existing decoder semantics are
unchanged; in particular, validation is stricter than the legacy Base64 decoder.
Use `multibase-valid?` when canonical input is required. Missing or unsupported
prefixes raise `ContractViolation` when decoding.
