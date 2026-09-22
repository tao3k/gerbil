# SQL Schema Execution

Import `:std/db/schema`, or the aggregate `:std/db`, for `exec-schema!`.

`exec-schema!` takes a `DB` and a schema string and returns void. It splits
the string on semicolons, removes full-line `--` comments from each fragment,
trims whitespace, and executes each remaining statement separately with no
bound parameters. Empty and comment-only fragments are skipped. Leading
whitespace before a comment is allowed, and a final semicolon is optional.

This supports simple table/index creation scripts, including schema text
embedded with `include-text` from `:std/text/include`. It avoids depending on
a driver accepting multiple statements in a single prepared statement.

It is deliberately not a general SQL parser. Do not place semicolons inside
string literals, comments, or compound statements such as trigger bodies.
Block comments are not stripped by the helper. Only use trusted schema text;
application data should be supplied through parameterized queries instead.

The caller owns the database connection, synchronization, and transaction
boundaries. Execution stops on the first exception and propagates it. If
atomic initialization is required, begin a transaction before calling
`exec-schema!`, commit afterward, and roll back on failure. The helper does
not commit or roll back an existing transaction.
