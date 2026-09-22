# Base58 Encoding

Import `:std/encoding/base58`.

## Validation

`(base58-valid? str [start = 0] [end = (string-length str)] [alphabet = base58-btc-alphabet])`
returns a boolean indicating whether every character in `str[start,end)` belongs
to the selected alphabet. Both `base58-btc-alphabet` and
`base58-flickr-alphabet` are supported. They use the same characters in different
orders, so membership validation gives the same result for either alphabet.

The empty substring is valid. Whitespace, padding, non-ASCII characters, and the
excluded characters `0`, `O`, `I`, and `l` are invalid. The scan does not allocate
a substring or decoded bytes, and does not perform numeric conversion.

`str` must be a string; `start` and `end` must be fixnums satisfying
`0 <= start <= end <= (string-length str)`. Invalid argument types or bounds
raise `ContractViolation`, rather than returning `#f`.

## Encoding And Decoding

`(base58-encode bytes [alphabet = base58-btc-alphabet])` returns a string.
`(base58-decode str [alphabet = base58-btc-alphabet])` returns a u8vector and
raises `IOError` for invalid characters. Leading zero bytes are preserved as
leading zero digits (`1` in both supplied alphabets). Empty input encodes or
decodes to empty output. The validator does not change either codec's behavior.
