# DID Utilities

Import `:std/ensemble/ucan/did` for conversion between Ed25519 keys and
`did:key` identifiers. The identifier contains the public key only; deriving
a DID from a private key does not disclose its private bytes.

## Exports

| Procedure | Arguments | Result |
| --- | --- | --- |
| [`private-key->did`](#private-key-did) | `PrivKey` | Canonical DID string |
| [`public-key->did`](#public-key-did) | `PubKey` | Canonical DID string |
| [`public-key-bytes->did`](#public-key-bytes-did) | Codec bytevector, public-key bytevector | Canonical DID string |
| [`did->public-key`](#did-public-key) | DID string | Newly imported `PubKey` |
| [`normalize-did`](#normalize-did) | DID string | Validated canonical DID string |
| [`DID-KEY-ED25519`](#did-key-ed25519) | Constant | Ed25519 multicodec number |
| [`DID-KEY-ED25519-code`](#did-key-ed25519-code) | Constant | Canonical codec bytes |
| [`did-key-prefix`](#did-key-prefix) | Constant | DID method prefix |

Only Ed25519 is supported. The key-to-DID procedures reject other key types.
`public-key-bytes->did` requires the Ed25519 codec bytes and exactly 32 public
key bytes. It encodes those bytes; it does not prove possession of a private key.

## Encoding

| Constant | Value |
| --- | --- |
| `DID-KEY-ED25519` | Multicodec number `#xed` |
| `DID-KEY-ED25519-code` | Canonical varint bytes `#u8(#xed #x01)` |
| `did-key-prefix` | `"did:key:"` |

The encoded payload is the two codec bytes followed by the 32 public-key
bytes. Output always uses unpadded Base64url multibase encoding (`u`). Pass
`DID-KEY-ED25519-code`, not the numeric constant, to `public-key-bytes->did`.

The fixed vector in `did-test.ss` maps public-key hex
`b4c1edaa41b7147b312782e3c090334237194f107f9c2d15d654261da24b9e2c` to:

```text
did:key:u7QG0we2qQbcUezEnguPAkDNCNxlPEH-cLRXWVCYdokueLA
```

`did->public-key` and `normalize-did` require the exact `did:key:` prefix,
canonical Ed25519 codec and 32-byte key. The accepted encodings are:

| Prefix | Encoding |
| --- | --- |
| `z` | Base58btc |
| `u` | Unpadded Base64url |

Padding, ignored characters, whitespace, nonzero unused Base64 bits and other
multibase encodings are rejected. Generic multibase decoder permissiveness does
not apply to DIDs.

`normalize-did` returns canonical `u` input unchanged after a lexical scan, without
allocating a substring, decoded bytevector or native key. It checks the codec from
the leading sextets. Base58 input is length-bounded before conversion, decoded once,
validated and re-encoded as `u`, without importing a native public key.

The [capability helpers](cap.md) compare canonical identity projections through
the [capability context](context.md), which caches valid Base58 aliases. Root
storage and newly constructed grants use canonical DIDs. Identifiers inside an
already signed token are not rewritten, since they are covered by its signature.

Unsupported DID methods, codecs, and incorrect lengths raise contract
violations, as do malformed encodings. The returned
`PubKey` is a new native key object; callers may retain or cache it according
to their ownership policy.

## Reference

### private-key->did

Returns the canonical DID for an Ed25519 private key's public component. Rejects
unsupported key types; does not disclose private key bytes.

### public-key->did

Returns the canonical DID for an Ed25519 public key. Rejects unsupported key types.

### public-key-bytes->did

Accepts the canonical codec bytevector and exactly 32 public-key bytes, returning
their `did:key:u` encoding. Does not establish possession of the private key.

### did->public-key

Validates a strict Ed25519 DID and imports a new native public key. The caller owns
the returned key. Invalid DID encodings raise a contract violation.

### normalize-did

Returns the canonical `did:key:u` spelling of a valid Ed25519 DID. Canonical input
is returned as the same string object and is borrowed, not defensively copied.
Malformed representations raise a contract violation rather than being repaired.
Do not replace signed token fields with the result; normalization for identity
comparison must preserve the signed representation.

### DID-KEY-ED25519

The Ed25519 multicodec number, `#xed`.

### DID-KEY-ED25519-code

The canonical multicodec varint bytes, `#u8(#xed #x01)`. Treat this shared value as immutable.

### did-key-prefix

The method prefix `"did:key:"`. Treat this shared string as immutable.
