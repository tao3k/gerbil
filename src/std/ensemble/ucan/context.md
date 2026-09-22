# Capability Context

Import `:std/ensemble/ucan/context` for `open-capability-context`. It implements
the complete [CapabilityContext interface](interface.md) using an internally
opened [UCAN database](db.md) and a supplied [Keystore](../keystore.md).
Only the constructor is exported; the concrete implementation remains private.

## Construction

`open-capability-context` takes a database path and an open `Keystore`, and
returns a `CapabilityContext`. Optional keywords are:

| Keyword | Default | Purpose |
| --- | --- | --- |
| `public-key-cache-size:` | 1024 | Capacity of each of the public-key and DID-alias LRUs; must exceed one |
| `cleanup-interval:` | 3600 | Positive interval in seconds for database expiration cleanup |

The path follows `open-ucan-db` semantics: a missing file is initialized, an
existing file must have the expected schema version, and `":memory:"` creates
a transient policy database. The context owns this database and its cleanup
worker. It borrows the supplied keystore and never closes it, including when
construction fails. The caller must keep that keystore open while using the context.

The database is assumed to be manipulated only through a capability context.
Insertion verifies anchors, and database opening removes expired rows. Opening
does not reverify or repair stored anchors. Manual database modification bypasses
this invariant and is unsupported; invalid credentials may fail when used.

Opening lists the keystore's principal DIDs once and retains them in the private
`implicit-roots` slot. These principals are trusted roots for token verification,
without loading their private keys or writing root records into the database.
`Keystore.list-keys` guarantees canonical DIDs, so this snapshot needs no further
normalization.

SQLite support is required. The context does not take a passphrase: encryption
and unlocking are responsibilities of the already-constructed keystore.

## Private Keys

`get-principal` normalizes its DID and checks a canonical-keyed hash-table cache. On a miss it calls
`Keystore.get-private-key` and retains the resulting key until context close.
There is no eviction or expiration for private keys. Repeated signing with the
same DID requires neither keystore access nor DID decoding.

`add-principal!` stores the caller's key through `Keystore.put-private-key!`
before publishing a cache entry, returning its canonical DID. If the DID is
not already cached, it retrieves a separate key object from the keystore.
It does not retain the caller's native key wrapper, so the caller remains free
to release that wrapper after the method returns.

`principals` delegates to the keystore, not the cache. It includes stored
principals that have never been loaded or used for signing. The implicit-root
snapshot is captured at opening: keys added later, including via `add-principal!`,
become implicit roots when a new context opens. Use `add-root!` to establish
explicit trust immediately in an already open context.

## Normalization And Public Keys

`normalize-did(did: string) -> string` strictly validates Ed25519 DIDs and returns
the canonical unpadded base64url spelling. Canonical `u` inputs take the strict
lexical validation path and are returned directly, without occupying an alias
cache entry. Valid `z` aliases are mapped to canonical strings in a bounded LRU;
hits return the identical cached string and refresh recency. Invalid inputs are
never inserted. This cache has its own entries but reuses `public-key-cache-size:`
as its capacity, independent of public-key eviction.

Input and returned strings are borrowed/read-only. Do not mutate them while
retained by the context. Eviction and close drop references, not the validity of
strings already returned to callers.

`public-key` uses `:std/struct/lru`. Hits update recency; misses decode the DID
with `did->public-key` and insert the resulting `PubKey`. The least recently
used entry is evicted when capacity is reached. Failed decoding is not cached.

The private-key cache uses canonical DIDs. The public-key cache uses the supplied
DID string without normalization: equivalent spellings may occupy separate entries,
avoiding normalization overhead on hits. Misses validate while decoding the key.
Trust matching normalizes identities through the context;
the context never rewrites identifiers inside signed tokens or changes their
serialized bytes.

Cached private and public keys are shared, read-only objects. Callers must not
mutate or explicitly release their native pointers. Public-key eviction drops
only the cache reference; it does not invalidate a key held by an in-flight
verifier or another caller. Native storage is reclaimed by normal foreign-object
garbage collection after the last reference disappears.

## Signing And Trust

`sign!` calls `sign-token!` with the context's cached interface instance. It
neither chooses an output anchor nor saves the token automatically. Callers
construct the desired chain and explicitly call `save-token!` when needed.
The optional [extension module](ext.md) adds explicit grant, delegation, and
output-anchor selection helpers without changing this base signing behavior.

`verify` first runs `verify-token`. Any signature, expiration, or delegation
failure is returned immediately. For a valid chain it then accepts either:

- A configured root matching `token-rooted-at?`.
- An opening-time principal DID in `implicit-roots` matching `token-rooted-at?`.
- An unexpired input anchor matching `token-anchored-at?`.

The helper signatures are `(token-rooted-at? token did ctx)` and
`(token-anchored-at? token anchor ctx)`, with the context last.

Otherwise it returns `!AnchorVerificationError`. Output anchors do not authorize
incoming tokens. Opening-time principals authorize both direct grants and valid
chains containing their issuer DID; signatures, expiration, and delegation checks
are never bypassed. Key lookup, decoding, and storage exceptions propagate normally.

`roots`, `add-root!`, and `remove-root!` manage only explicit database roots.
Removing an explicit root does not revoke the same DID's implicit principal trust.
Implicit roots remain an immutable snapshot for the context's lifetime.
The shared database add/remove boundary strictly normalizes explicit roots.
Aliases deduplicate and can remove the same canonical root; malformed roots are
rejected without changing policy. Root listings contain canonical strings.

Both `add-input-anchor!` and `add-output-anchor!` run `verify-token` before storing
the anchor. Invalid signatures, missing signatures/nonces, expired tokens, and
invalid delegation chains are rejected with `ContractViolation`; key lookup,
codec, and crypto exceptions propagate unchanged. Rejection leaves the stored
anchor sets unchanged. Validation runs outside the context mutex because public
key lookup reenters it. The database persists a serialized snapshot.

Insertion does not require existing root/input trust: installing an anchor is
itself an explicit policy decision authorized by the application. Input anchors
confer partial input trust, while output anchors only supply outgoing credentials.
Root and saved-token management still delegate directly to `ucan-db`, as do
expiration filtering and periodic cleanup. A verified anchor must remain unexpired
when used; insertion verification is not an indefinite authorization grant.

Verification does not infer an intended actor, recipient, or requested operation
from the call. The surrounding operation must also check the token's applicability
to its particular subject and capability.

## Concurrency And Close

A mutex protects lifecycle checks, the normalization LRU, and both key caches,
including misses. Normalization rejects unsupported prefixes and validates `u`
DIDs before any locking; only the `z` alias-cache path acquires the mutex.
Private-key lookup normalizes before entering its key-cache critical section;
public-key lookup uses the supplied string directly. Signing
and verification run outside it because their helpers reenter the key methods.
Database operations have their own mutex; user predicates run outside both locks
and can safely call back into the context. Callers must not concurrently mutate
tokens or DID strings passed to these operations.

Close marks the context closed, clears its key and normalization caches, and closes the owned
database outside the context mutex. It is idempotent. Subsequent stateful operations
raise `Closed` through `raise-io-closed`. Pure `u` normalization remains available
after close, and unsupported prefixes still raise a contract violation before
checking state. Key operations still reject closed contexts.
Operations racing close may finish or
raise `Closed` as their subsequent context/database accesses encounter closure.

Previously returned key objects remain valid while referenced. Clearing the
caches therefore does not promise immediate erasure of native private keys.
Close does not close the borrowed keystore or invalidate caller-owned keys
originally passed to `add-principal!`.
