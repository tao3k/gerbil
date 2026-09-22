# Base64 Validation

The `:std/encoding/base64` module exports a strict validator in addition to its
existing encoder and permissive decoder.

## `base64-decoded-length`

```scheme
(base64-decoded-length str (start 0) (end (string-length str))
                       padding: #t urlsafe: #f)
;; => (Maybe :fixnum)
```

Validates only the half-open range `str[start,end)` and returns its exact decoded
byte count, or `#f` if the selected text is not canonical Base64. An empty range
returns `0`. Characters outside the range do not affect validation.

- `str` must be a string; `start` and `end` must be fixnums satisfying
  `0 <= start <= end <= (string-length str)`. Invalid arguments raise
  `ContractViolation`; invalid bounds use `raise-bad-argument`.
- `padding:` and `urlsafe:` are booleans.
- With `padding: #t`, incomplete groups require exactly two `=` characters for
  one decoded byte or one `=` for two decoded bytes. Complete groups have no
  padding. Padding is allowed only at the end of the selected range.
- With `padding: #f`, every `=` is rejected. The character count modulo four
  must be zero, two, or three, never one.
- With `urlsafe: #f`, the alphabet is `A-Z`, `a-z`, `0-9`, `+`, `/`.
  With `urlsafe: #t`, `-` and `_` replace `+` and `/`; mixed alphabets are invalid.
- Whitespace, non-ASCII characters, and all other nonalphabet characters are
  rejected. The low four bits of a two-sextet tail and the low two bits of a
  three-sextet tail must be zero, in both padding modes.

The validator scans the original string in linear time and constant auxiliary
space. It allocates neither a substring nor decoded byte vectors. Index and
byte-count arithmetic stays within the validated string length; no multiplied
input length or speculative index past `end` is needed.

This API does not change `base64-decode` or `base64-substring->u8vector`.
Those decoders remain permissive: they can skip nonalphabet characters, ignore
unused bits, and stop at padding without checking the remaining input. Their
`no-padding: #t` option permits omitted padding rather than forbidding padding.
For strict decoding, validate the same range and modes before using the decoder;
do not mutate the string between validation and decoding.
