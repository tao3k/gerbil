# Encrypted Keystores

Import `:std/ensemble/keystore` for the public interface and constructors.
The same API is available from `:std/ensemble/keystore/api`. Implementation
modules export only their public constructors, not secret-bearing objects.

Internally, memory and persistent stores subclass a shared `keystore` struct
and implement `KeystoreBackend` methods for snapshot I/O, locking, and resource
cleanup. The base struct caches its backend interface instance in `this`.
Neither the backend interface nor the concrete implementation types are
re-exported by the public API.

The current implementation stores Ed25519 private keys, identified by their
public-key DIDs. It is intended for small stores of at most 4096 keys.

## Constructors

| Procedure | Arguments | Result |
| --- | --- | --- |
| `make-memory-keystore` | passphrase bytevector | New empty `Keystore` |
| `create-persistent-keystore` | directory path, passphrase bytevector | New empty `Keystore` |
| `open-persistent-keystore` | directory path, passphrase bytevector | Existing authenticated `Keystore` |

Passphrases are `u8vector`s. Encoding text or prompting without terminal echo
is the application's responsibility. Constructors borrow the supplied bytes:
they neither modify nor retain the passphrase. The caller should clear its
own passphrase buffer when it is no longer needed. Empty passphrases are
accepted, but provide no meaningful protection against offline guessing.

Creation requires an existing parent directory and fails if the keystore
path already exists. Opening never creates a missing store. Paths may be
absolute or relative, but must end in a directory name, not a trailing slash,
`.` or `..`. A failed creation can leave a partial directory; it is never
silently overwritten or reused.

## Keystore Interface

`Keystore` extends `Closer`. Each method also has its generated procedure
form, such as `Keystore-get-private-key`, with the store as the first argument.

| Method | Arguments | Result |
| --- | --- | --- |
| `get-private-key` | DID string | Fresh `PrivKey` |
| `put-private-key!` | `PrivKey` | Canonical DID of the stored key |
| `generate-key!` | none | Canonical DID of a newly generated and stored key |
| `list-keys` | none | Sorted list of canonical DID strings |
| `close` | none | Void |

The canonical DID encoding is the Base64url form produced by
`:std/ensemble/ucan/did`. Lookup normalizes all DID encodings accepted by that
module, so aliases for the same public key resolve to the same entry.
Missing or invalid DIDs, unsupported key types, corrupt authenticated content,
and operations on closed stores raise `ContractViolation`.

Insertion does not retain the caller's `PrivKey` and inserting an existing key
is idempotent. Retrieval returns a new native key owned by the caller; it
remains usable after the store is closed. `generate-key!` uses the same insertion
logic as `put-private-key!`. A new insertion into a persistent store returns
only after the snapshot has been written and synced. Duplicate insertion
authenticates the current snapshot but does not rewrite it.

Close is idempotent. It clears the retained derivation material on a
best-effort basis and closes persistent file handles. Callers must explicitly
close their stores, normally from an `unwind-protect` cleanup.

## Persistence And Locking

The persistent implementation is pure Gerbil using `:std/io/file`,
`:std/os/file`, and `:std/os/flock`; it has no private filesystem FFI.

The keystore directory must be owned by the current user with mode `0700`.
It contains `keys` (the encrypted snapshot) and `lock` (a stable advisory lock
file), each owned by that user with mode `0600`. Regular files must have one
link. Unsafe file types, symlinks, ownership, or modes are rejected rather
than repaired. Parent directories must be trusted: path-replacement and
symlink races are outside the threat model.

Readers acquire a shared lock; insertion and generation acquire an exclusive
lock. Every operation reloads and authenticates the snapshot while locked,
so independent cooperating handles and processes do not overwrite stale
state. A per-instance mutex serializes operations using the same handle.
The stable lock file must not be replaced or removed while a store is open.

Writes use a newly created, mode-`0600` temporary in the same directory,
followed by file fsync, atomic rename, and directory fsync. Creation also
syncs the parent directory. No plaintext is written to temporary files.
If a sync fails after publication, the operation reports that the snapshot
was committed but durability failed; it does not claim rollback. Failed
saves may leave ciphertext temporary files.

These guarantees require local POSIX filesystem semantics, advisory locking,
and directory fsync. Network filesystems and fork-inherited store handles
are not supported. Filesystem errors propagate separately from authentication
and key-lookup errors.

## Cryptographic Format

Both backends retain encrypted snapshots. The memory backend has no disk
storage; the persistent backend uses the same snapshot encoding.

Each store has a random 32-byte salt. Profile 1 derives 64 bytes with scrypt
(`N=131072`, `r=8`, `p=1`, explicit 256 MiB maximum memory), using approximately
128 MiB of working memory per derivation. The first 32 bytes form an AES-256-CTR
key and the remaining 32 bytes form an HMAC-SHA256 key. Every new snapshot has
a fresh random 16-byte IV. The MAC covers the entire header and ciphertext
and is checked with OpenSSL's constant-time comparison before decryption.

All integers are unsigned big-endian. Version 1 has the following layout:

| Offset | Field |
| --- | --- |
| 0 | Four-byte magic `GKS1` |
| 4 | Version byte: 1 |
| 5 | Crypto profile byte: 1 |
| 6 | 32-byte salt |
| 38 | 16-byte IV |
| 54 | Four-byte ciphertext length |
| 58 | Ciphertext |
| After ciphertext | 32-byte HMAC-SHA256 tag |

Plaintext contains a four-byte entry count followed by 32-byte Ed25519 seeds.
DIDs are derived rather than stored separately. Readers validate lengths,
version, profile, and duplicates; the maximum file size is 131166 bytes.
Wrong passphrases and authentication failures have the same generic error.

## Security Limits

The derived keys remain in memory while a store is open. Temporary plaintext
and retained keys are explicitly cleansed, but moving garbage collection,
swap, native allocations, and crash dumps prevent a guaranteed-erasure claim.
This is protection for stored keys, not against a compromised running process,
root, or hostile code with the same user identity.

Snapshot length reveals the entry count. Authentication does not prevent
deletion or replay of an older valid snapshot. Every operation is linear in
the number of stored keys; updates rewrite the entire snapshot. Passphrase
rotation, deletion, rollback protection, and additional key types are not
part of this API.
