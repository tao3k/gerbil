# UCAN Database

`:std/ensemble/ucan/db` is the internal SQLite backend for the
[capability context](context.md). It stores saved tokens, roots, input
anchors, and output anchors. It does not implement an interface, store private
keys, sign tokens, or decide whether a token is trusted.

## Procedures

| Procedure | Arguments | Result |
| --- | --- | --- |
| `open-ucan-db` | database path; optional `cleanup-interval:` | `ucan-db` |
| `close-ucan-db!` | database | Void |
| `ucan-db-save-token!` | database, token | Void |
| `ucan-db-list-tokens` | database, predicate | List of tokens |
| `ucan-db-add-root!` | database, DID string | Void |
| `ucan-db-remove-root!` | database, DID string | Void |
| `ucan-db-roots` | database | Sorted list of DID strings |
| `ucan-db-add-input-anchor!` | database, token | Void |
| `ucan-db-remove-input-anchor!` | database, token | Void |
| `ucan-db-input-anchors` | database, predicate | List of tokens |
| `ucan-db-add-output-anchor!` | database, token | Void |
| `ucan-db-remove-output-anchor!` | database, token | Void |
| `ucan-db-output-anchors` | database, predicate | List of tokens |

Opening checks whether the path exists before opening SQLite, creates the
schema only for a missing database, deletes expired token rows, and then loads
the remaining records into memory. `cleanup-interval:` is a positive number
of seconds, defaulting to 3600; fractional values permit short test intervals.
Use a dedicated SQLite file, or `":memory:"` for a transient database. An
unsupported schema version or malformed stored token causes opening to fail
and releases the connection. Closing wakes and joins the cleanup worker,
releases the statement cache and connection, and is idempotent. Subsequent
operations raise `Closed` through `raise-io-closed`.

## Storage And Identity

`db.sql` contains the schema, included at compile time. Initialization uses
[`exec-schema!`](../../db/schema.md) from `:std/db/schema` to split it on
semicolons, remove full-line `--` comments, and execute each nonempty statement
separately within the initialization transaction. Schema
comments must not contain semicolons. `PRAGMA user_version` records schema
version 1. Existing databases
must have that exact version, including rejection of version 0; they are never
initialized or migrated implicitly. `":memory:"` always creates a fresh schema.

`ucan_roots` stores canonical Ed25519 DID strings as primary keys. Both
`ucan-db-add-root!(database, did: string)` and
`ucan-db-remove-root!(database, did: string)` return void and strictly normalize
the supplied DID at this shared boundary, under the database mutex after checking
closed state. Valid base58btc (`z`) aliases and canonical unpadded base64url (`u`)
DIDs therefore deduplicate and remove the same identity. Invalid roots raise a
contract violation before SQL or cache mutation. Listings return sorted canonical
strings. Root strings are borrowed/read-only and must not be mutated.

This is the initial, unreleased schema policy: no migration or opening-time repair
of previously noncanonical roots is provided. Writes through this boundary ensure
that reopened databases retain canonical roots.

`ucan_tokens` uses a composite primary key of category and serialized token.
Category 0 stores saved tokens, 1 input anchors, and 2 output anchors. The same
token may occur independently in all three categories. The indexed `expire`
column stores the token's expiration in Unix seconds, allowing SQLite to
delete expired entries without decoding their payloads.

Tokens are serialized through `marshal-token` and loaded through
`unmarshal-token`, preserving the token graph and rejecting cycles. Equality
for insertion/removal is exact serialized content, not Scheme object identity.
DID normalization applies to root identities, never to serialized token fields;
tokens containing signed alias spellings retain their exact bytes.
Duplicate insertions and removal of missing roots or anchors are no-ops.
Expiration is retained in the serialized token and copied to the SQLite
integer column. Stored expiration values must fit SQLite's signed 64-bit range.

The database is not encrypted. Place it in an appropriately protected directory.
It contains no private keys, but can contain sensitive capability tokens and
trust policy. Signature and authorization checks remain the context's responsibility.

## Caching And Concurrency

All roots and decoded token records are cached at open. There is one mutex
around the SQLite connection, its `StatementCache`, and cache access. SQL
queries are named constants and values are bound as parameters. Statements are
borrowed with `statement-cache-get` and returned with `statement-cache-put`,
which resets execution and clears bindings even after a failed operation.

Writes complete in SQLite before the cache is updated. A failed SQL operation
does not change the cached records. Other handles or processes must not modify
the same database while this owner is active; there is no external invalidation.

Listings read only the cache. Token and anchor listings exclude tokens whose
expiration is at or before the current time, then apply the supplied predicate.
Their order is unspecified. Expired records are purged on opening and by a
background worker at the configured interval, so listing does not need to wait
for the next purge to hide an expired token.

The worker waits using `thread-receive` with the interval as its timeout and
`#f` as the timeout value. A timeout triggers deletion of expired rows and
matching cache entries under the mutex, using one timestamp for both. Roots
are not subject to expiration. Failed cleanup is reported and retried at the
next interval without changing the caches when the SQL delete fails.

Closing sends the worker a `'close` message. The worker checks closed state
under the mutex before touching the database; joining it happens outside the
mutex to avoid deadlock. Callers must close the database explicitly, since the
worker retains its database object while running.

The cache owns serialized/decoded token snapshots rather than the caller's
mutable token. Listings return those cached tokens directly, without decoding
them again. Callers and predicates must treat the returned tokens as read-only.
Predicates run outside the mutex, so they can call back into the module without
deadlocking. Mutating the original input token does not alter the stored snapshot.
To remove an anchor, supply a token with the same serialized contents as that snapshot.

The module is built only when SQLite support is enabled. Its build specification
tracks `db.sql` as an extra input so schema edits trigger recompilation.
