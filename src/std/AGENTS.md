# The gerbil stdlib

This is the gerbil stdlib tree, which contains the standard library
batteries included. The library aims to provide high quality
implementations for common tasks, available with every gerbil
installation.

## How to build the stdlib
First you need to tell the build system how many cores to use to parallelize the build.
Use `export GERBIL_BUILD_CORES=<number-of-cores-to-use>` to specify the build cores.

If you the user wants to use all the cores do `export GERBIL_BUILD_CORES=$(ncpu)`.
Ask the user how many cores to use for the build.

You can then incrementally build the stdlib with `make stdlib` at the top of the gerbil source tree.
This builds all the files (that have changed) as listed in `build-spec.ss`.
If you are adding a new module to build, you need to add it to `build-spec.ss`.

If you need to clean the stdlib build do `make stdlib-clean`

Important notes:
- never do a full build when working with stdlib code, unless the user tells you otherwise; only incrementally build with `make stdlib`.
- never run `build.sh` directly for anything other than tests.
- never set GERBIL_HOME directly.

## How to run tests
First you need to ensure the test runner is build. You can do this incrementally with `make tools`. You only need to do this once.

You can run the tests you want with `./build.sh test <test-to-run>` at the gerbil source tree top directory. The script runs in the `src` directory. So in order to run a test, for example the test for the `:std/func` module, cd into the gerbil source tree top directory and do `./build.sh test std/func-test.ss`.

If you want to run all the tests in a directory, do `./build.sh test your-directory`.
If you want to run all the tests in a directory and
it's subdirectory recursively, do `./build.sh test your-directory/...`.
If you want to run all tests in the stdlib do `./build.sh test std/...`

## Coding Recommendations

Try to follow these conventions:
- write idiomatic gerbil code, as seen in the gerbil core source and the rest of the stdlib.
- use macros and/or utility procedures instead of repeating yourself.
- all the exported procedures that are part of the public module API need to have a type signature.
- all the defined classes and structs must have a type annotation.

## Coding Conventions

Trust Gerbil's type system, interfaces, and standard library instead of adding
parallel machinery around them. Prefer the smallest implementation that clearly
expresses the required contracts and behavior.
Avoid defensive machinery against programmer behavior that has explicitly been
ruled out. Retain validation for external data and real resource failures.

### Structure and dispatch

- Use an internal interface and concrete subclasses for backend specialization,
  not procedure slots in a struct. Procedure-slot specialization is hard to reason about.
- Cache the implementation's interface view in a `this` slot to avoid repeated casting.
- Initialize slots directly with `set!` in custom constructors instead of using
  `class-instance-init!`.
- Object allocation initializes slots to `#f`; custom constructors need not
  explicitly initialize fields whose initial value is `#f`.
- For a single-class implementation, use `(implement Interface Class method ...)`.
- Prefix procedures constructing interface instances with `new-`, not `make-`.
- In production `implement` blocks, use the generated `__` unchecked bindings of
  typed top-level procedures. Interface signatures check arguments at the call
  site, and the compiler can eliminate checks it can statically verify.
- Keep checked procedure bindings in interpreted tests. Production performance
  optimizations are unnecessary there.
- Export public APIs explicitly. Internal structs, interfaces, and helpers may
  be exported between implementation modules, but must not leak through the
  public API or its re-exporting facade.
- Use descriptive internal names such as `keystore-transaction`, not a blanket
  `~` prefix. Generated unchecked bindings and library primitives are separate
  conventions, not reasons to invent cryptic internal names.
- Name worker procedures with a `-thread` suffix, such as `ucan-db-cleanup-thread`.
  Choose struct slot names that do not make generated accessors collide with
  those procedures.
- Use `spawn-thread` for plain joinable threads; use `spawn/name` when actor
  behavior is desired. Never call raw Gambit `make-thread`/`thread-start!` directly,
  except in the underlying runtime implementation that wraps `thread-main`.
  Its abortive handler ensures stack unwinding without the actor logging wrapper.
  `spawn-thread` starts immediately; establish any required ownership before the
  worker uses it, using existing synchronization where needed.
- Ensemble network-owned workers are an explicit exception: use the internal
  `spawn-network-thread` helper, backed by `spawn/name`, to mark entry with a
  non-inherited thread local in the actor's own slots. Preserve named joinable
  ownership and cleanup. Its outer `with-catch` unwinds worker cleanup before
  debug logging and returning an internal `NetworkThreadError`; use
  `network-thread-join!` to rethrow the original failure, including `#f`.
  The actor/root abortive safety remains underneath. Only `Network.close`
  checks the marker, before locks, state changes or joins.
- Give persisted category values descriptive named constants. Use those constants
  for validation and iteration rather than magic numeric values or category counts.

### Types and validation

- Use `:? Type` for nullable type annotations, not `:~ (? (or not Type?))`.
- After an `if`/`when` or equivalent nonfalse check, use dotted access directly
  on nullable typed values; do not add redundant casts or predicate checks.
- Give every top-level procedure parameter and return type signatures, not just
  exported procedures. Use precise types where known.
- Let contracts enforce declared types; remove redundant manual type checks.
  For example, a `:list` contract uses `list?`, which rejects improper and cyclic lists.
- Validate properties the types do not establish, such as byte lengths, format
  versions, authentication, capacity, and filesystem state.
- Do not recheck guarantees supplied by the chosen algorithm or API. Successful
  scrypt derives the requested length; AES-CTR update produces one output byte
  per input byte and finalization produces none; valid regular-file sizes are
  nonnegative. Keep these assumptions scoped to the APIs and modes that guarantee them.
- Use fixnum primitives for bounded indexes, lengths, counters, and native status
  codes. Retain generic arithmetic for potentially large filesystem values and
  decoded integers until their range has been validated. Do not introduce overflow
  while validating untrusted lengths or counts.
- In production callbacks passed to `for-each`, use `:-` annotations when element
  types are already known. The compiler cannot currently eliminate checked
  callback argument contracts there. Do not bypass necessary input validation.
- Use `##vector-ref` when the vector type and index bounds are established, such
  as access by a named, validated cache category.

### Standard library reuse

- Prefer the higher-level `:std/crypto/kdf`, `:std/crypto/cipher`,
  `:std/crypto/hmac`, `:std/crypto/random`, and `:std/crypto/pkey` APIs over
  duplicating their operations with raw libcrypto FFI calls.
- Use numeric accessors from `:std/vector/u8vector` instead of handwritten byte
  loops. Its `&` unchecked primitives are appropriate when bounds are established.
- Use `length`, `for-each`, and other existing collection procedures instead of
  unnecessary custom traversals.
- Iterate hash tables directly instead of iterating over `hash->list`. Avoid
  allocating intermediate entry lists when the hash-table iteration API suffices.
- Use cached objects directly rather than repeatedly deserializing cached bytes.
  Do not defensively copy strings or objects when callers are expected to treat
  them as immutable; document that ownership convention.
- Avoid helpers that merely obscure a simple expression; inline trivial one-use
  wrappers rather than creating another abstraction.
- Use Gerbil file primitives, including `:std/io/file`, for persistence rather
  than adding a private filesystem FFI. Use shared advisory locks for reads and
  exclusive locks for writes. Lock a stable sidecar when replacing data files by rename.

### Locking and database resources

- Use `unwind-protect!` for audited nonescaping bodies: it cleans up on normal
  return and raised exceptions without dynamic-wind overhead. Keep `unwind-protect`
  for bodies that may invoke escaping callbacks or continuations. Check transitive
  calls and cleanup ordering, not just textual absence of call/cc: the fast variant
  runs cleanup before forwarding to an outer exception handler, potentially before
  an inner dynamic-wind finalizer has run. Do not mechanically replace try/finally.
- Hold the associated mutex when signaling or broadcasting a condition variable.
- Prefer `do-with-lock` for ordinary mutex-protected code whose body does not
  escape its continuation. It uses the faster `with-lock` path instead of manual
  lock/`unwind-protect`/unlock boilerplate. Keep separate cleanup for other resources.
- Put reusable-resource cleanup at the return boundary. `statement-cache-get`
  borrows an idle statement; `statement-cache-put` resets execution, clears
  bindings, and returns it to the cache. Callers should return statements on
  success and failure rather than duplicate reset/clear logic.
- Separate creating storage from opening it: check existence first, initialize
  only new storage, and require the expected schema version for an existing database.
- Changes during review of an initial, uncommitted schema belong to that initial
  version. Do not bump its version as if it had already shipped.
- Define SQL schemas and queries as named constants. A schema can live in a
  separate file included with `:std/text/include`; track that file as an extra
  build input.
- SQLite prepared statements execute one SQL statement, not a semicolon-separated
  script. Use `exec-schema!` from `:std/db/schema` to execute simple schema scripts
  instead of duplicating splitting and comment filtering. The caller owns transaction
  boundaries. Keep scripts free of embedded semicolons in comments, literals, or
  compound statements; the helper is not a general SQL parser.

### Errors and documentation

- Use `raise-io-closed` for operations on closed stateful objects. `Closed` is
  the general-purpose closed-state exception, not just an I/O-stream exception.
- Use contextual raising macros with a `where` argument, a specific message,
  and useful diagnostic irritants. In secret-handling code, report lengths,
  offsets, public metadata, and status codes rather than secret buffers.
- Let underlying exceptions propagate unless translation serves a concrete purpose.
- vyzo explicitly withdrew the added `:std/error` `Interrupt` API and asynchronous
  raising-recovery machinery. This is removal, not deprecation or a fallback API.
  Do not allocate that exception or add exception-class-based cancellation retries.
  Preexisting debugger, profiler and REPL interrupt primitives are outside this scope.
- Ensemble network cancellation is cooperative: update owned state, signal waits,
  close sockets to unblock IO, and join workers after their callbacks finish.
  Do not inject exceptions with `thread-interrupt!` or force thread termination in
  network implementation/tests. Use synchronous fault hooks to test cleanup. This
  supersedes the earlier interrupted-wait recovery requirement. The remaining
  network `Interrupt` catches and abort/release/wake/native-close retries are removed.
- Preserve normal ownership cleanup and failure propagation, including raised `#f`,
  without replaying completed cleanup or blindly retrying failures. RWLock uses its
  normal acquisition loops, without asynchronous holder-restoration/waiter-withdrawal
  machinery; normal acquired-body cleanup remains. SSL lifetime cleanup and the
  shared Reader minimum-read fix are preserved. Keep `spawn-thread` as the abortive
  root for plain joinable workers.
- Retain CV ownership guards: an ordinary `Timeout` can arrive after the wait has
  released its mutex. Release/notification progress flags protect ordinary error
  cleanup too; they are not leftover asynchronous-only recovery overhead.
- Main verified the withdrawal with an 8-core `make stdlib` full transitive stdlib
  rebuild after the error-module change, not a core/full Gambit build. All 54 focused
  cases (3 RWLock, 16 framed, 20 transport, 15 native Reader) and the revised 33-module
  network/UCAN/supporting-IO command passed. That command replaces deleted
  `std/error-test` with cooperative `std/sync/rwlock-test` and excludes the shared
  `std/sync/threads-test` intentional-termination suite. Main reports no `Interrupt`
  references in `src/**/*.ss` and no export in `build/lib` introspection; static review
  found no normal-cleanup regressions or missed asynchronous-only overhead. See the
  main-owned network implementation handoff for authoritative commands/revision scope.
  Any final formatting-only rebuild is a separate checkpoint for main to document.
- Document interfaces, their methods, and all nontrivial procedures. Explain
  contracts, ownership, locking, cleanup, and failure behavior rather than
  narrating obvious assignments. Record non-obvious algorithmic reasoning,
  such as why CTR encryption and decryption use the same operation.
- For v0.19, place documentation beside the source it documents, for example
  `src/std/ensemble/keystore.md`, rather than adding it under `doc/reference/std`.
- Credit generated source and test files with `;;; © Gerbil contributors`.
  Never assign copyright to gerbil-mcp. Preserve existing authorship in files
  that are merely being modified.

### Formatting

- Align argument annotation sigils within typed procedure signatures.
- Put a conditional check's raising expression on a separate line from the condition.
- Format production procedure signatures with one argument per line, keeping
  the first argument on the same line as the procedure name.
- Put each imported module and exported binding on its own line.
- Separate top-level procedures with blank lines, keeping documentation comments
  attached to the procedure they describe.

During a review pass, honor requests to defer builds and tests until the user
explicitly authorizes them. Do not describe static inspection as runtime verification.
