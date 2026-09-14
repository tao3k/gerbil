# Nullable Type Metadata

The public value/argument annotation is `:? Type`. Return declarations accept
`(Maybe Type)`; argument and slot type grammar is unchanged. The optimizer
represents nullable values as `(@type (nullable Type::t))`, with a dedicated
`!nullable-type` descriptor. This is not a class descriptor, procedure descriptor,
or general union/SSA implementation.

`T` and false are subtypes of nullable `T`. Nullable covariance follows base-type
subtyping. A nullable value is not evidence of a nonnullable base type. A nullable
type can be a subtype of a wider ordinary type only when both its base and false
are subtypes of that type (notably nullable true and boolean). Nested nullable
types normalize; unknown types remain unknown. Void, EOF and the empty list are
not false.

Type-expression resolution and serialization are separate from class resolution.
Signatures and SSXI retain compound nullable expressions. Joining a known value
type with false produces a nullable type; unknown alternatives are not discarded,
and abortive alternatives do not contribute a returned value. Compound rest types
are parsed as one type expression rather than positional argument entries.

## Contracts and Optimization

Standalone assertions, typed bindings, nullable procedure arguments, and dotted
slot reads retain the qualifier. Checked interface bindings preserve false and
cast only nonfalse values. Generated constructors and setters share these contract
paths. Unchecked procedure bodies use an internal `unchecked:` marker on nullable
bindings to preserve type information without rechecking already converted values.
This marker is an implementation detail, not a recommended user annotation.
Additional predicate contracts keep the forced-check signature sentinel. Raw
implementations still require interface conversion. Runtime `cast` is unchanged.

All three conditional analyzers share branch-local path facts. Stable nullable
references become their base type in the true branch and false in the false
branch. Known `not` reverses the paths before generic predicate handling. Existing
predicate-based true-branch refinement and known-type predicate folding remain.
Mutable bindings, including captured assignments, do not receive these facts.
Immutable copies can be narrowed independently. There is no inference of general
compound implications or reverse alias relationships. Nullable overlap retains
runtime checks conservatively, and nullable callable values retain callable checks.
Folded false predicates preserve evaluation of their operand.

Ordinary untyped getter procedures remain conservative; dotted access carries
effective slot-contract metadata. Explicit unchecked slot mutation retains its
existing meaning and must not be used to bypass required interface conversion.

The dotted binding environment preserves root nullability independently of method
and value-contract checking. Nullable roots and intermediate nullable slots select
checked accessors and mutators for the next dereference; interface calls retain
checked dispatch. Thus `item.x` is legal for an `item :? Item` binding, as is
`holder.item.x` when the slot is nullable, but a live dereference raises at runtime
if its receiver is false. The optimizer may remove receiver checks when it can
prove them redundant, and may discard unused pure reads. Offset-based
accessors for system classes validate with the class predicate, because their
shadow descriptors are not Gambit structure descriptors. Explicit `.?`
continues to raise a nil-dereference contract error on false; it is not optional
chaining. In `(and holder.item holder.item.x)`, the two slot reads are distinct:
the first does not establish that a mutable slot remains nonfalse. A stable local
snapshot can be refined independently.

## Maybe Returns

Return-only type expressions apply to procedures and interface methods:

```scheme
(defclass Item ())
(def (item-result x) => (Maybe Item) x)
(interface Results
  (item x) => (Maybe Item))
```

`Maybe` is an exported empty `defrules` binding, recognized hygienically rather
than by spelling. Renamed imports work, shadowed identifiers are not constructors,
and bare/ordinary uses and malformed arities are syntax errors. The base type uses
the existing class/interface/type-alias resolver. Nested Maybe expressions
normalize to one `(nullable T::t)` in both `@type` and signature/SSXI metadata.
There is no `=>?` sigil or general type-level macro framework.

Maybe returns preserve `#f`, validate every other class value, and adapt raw
implementations to interface views. The expression is evaluated once. Contracts
cover plain and typed procedures, lambdas, inlines, interface method declarations,
extension methods, and checked/unchecked dispatch macros and first-class wrappers,
including optional and keyword paths. `(Maybe :void)` means void or false, unlike
ordinary `=> :void`, which retains its existing unspecified-result meaning.
Empty lists and EOF are not false. `(Maybe :t)` accepts any value.

The internal `@type.return` annotation verifies bodies before adaptation so an
asserted result type cannot hide a definitely incompatible Maybe return. Unknown
or overlapping types retain runtime checks; interface conversion remains a
runtime operation. Typed `def/c` retains its historical ordinary return assertions
for unspecific/overlapping types, but nullable body evidence cannot prove an
ordinary nonnullable return. Existing ordinary signature verification and custom
predicate contracts are not weakened.

## Stdlib Return Contracts

The return-contract inventory covers existing `=> :t` declarations and adjacent
commented nullable contracts under `src/std`, excluding `ensemble.TODO` and
`ensemble`. It does not add contracts to every unannotated procedure.

| Module | Declaration | Return contract |
| --- | --- | --- |
| actor/host | ActorHost.lookup | `(Maybe Handle)` |
| actor/state | actor-local-host? | `(Maybe ActorHost)` |
| list/walist | AListOps.assoc, AListOps.assf, wassoc, wassf | `(Maybe :pair)` |
| os/flock | flock, flock-fd | `(Maybe :fixnum)` |
| os/inotify | inotify | `(Maybe :list)` |
| os/kqueue | kevent-udata | `(Maybe :foreign)` |
| io/file-test | try-file-lock | `(Maybe :fixnum)` |
| os/inotify-test | find-inotify-event, wait-for-inotify-event | `(Maybe InotifyEvent)` |

The pair contracts describe whole association pairs, not their arbitrary values.
The inotify result is a list rather than a pair (and not its byte buffer).
Flock returns syscall zero or false, so fixnum is appropriate. Kqueue returns
a foreign pointer or false for NULL. ActorHost results use interface adaptation;
Handle and InotifyEvent results use their concrete class contracts. These contracts
do not change implementations or default arguments.

Four extensible-vector/bit-vector push and fill-pointer declarations use
`(Maybe :fixnum)` because they can return false when growth is disabled.

### Retained Top Returns

These declarations remain `=> :t` rather than being narrowed to Maybe:

| Module | Declarations retained | Reason |
| --- | --- | --- |
| actor/interaction | ->> | Arbitrary reply message |
| db/interface | Query.fetch!, Query.row, Query.columns | EOF and heterogeneous database values/metadata |
| format/reader | parse-sharp-index loop | Generic anchor/reference parsing result |
| io/file | Four call-with-file reader/writer variants | Arbitrary callback results |
| io/interface/bio | read-u8, peek-u8 | Byte or EOF, not false |
| io/interface/socket | getsockopt | Option-dependent value types |
| iter/interface | Iterator.next! | Arbitrary element or EOF |
| net/repl | taint! | Previous arbitrary thread-group-specific value |
| net/websocket/interface | WebSocket.protocol | Raw sockets support non-string protocol values; socket-test uses symbol `unix` |
| net/websocket/server | default-select-protocol | Returns the first arbitrary list element; no nullable branch |
| os/signal-handler | Unsupported-platform make-signal-handler | Always raises |
| os/socket | socket-device-accept | SocketDevice or negative fixnum status, not false |
| serde/interface | ObjectBuilder.finish!, Anchor.set!, Anchor.resolve! | Generic constructed/deserialized objects |
| string/misc | string-any | Arbitrary truthy predicate result |
| struct/queue | dequeue!, queue-peek | Arbitrary stored values and caller-supplied defaults |
| time/timeout | AbsTimeout.abs-timeout | False, flonum seconds, or Gambit time objects |

Generic value lookups (`waget`, `waref`, `wagetf`), custom-default/callback timeout
conversion (`timeout->abs-timeout`), and other unannotated generic APIs are not
narrowed. Empty lists, EOF, void, arbitrary callback results, and nonfalse syscall
status codes are not treated as false. AbsTimeout must preserve both seconds and
time-object implementations; the mismatch with helpers expecting seconds is
outside this return-contract migration.

## Test Coverage

Tests cover false-forwarding rejection, source interface binding/casting, native
direct/indirect forwarding, cross-module nullable return metadata, aliases,
optional/keyword arguments, generated and custom constructors, inherited slots,
false/value/false setters, guards, captured mutation, escaped closures, immutable
snapshots, predicate evaluation counts, and shadowed `not`. Negative fixtures
reject known-incompatible Maybe bodies, including typed and Maybe-void returns,
and nullable bodies declared nonnullable.

`nullable-dotted.ss` covers checked reads, procedure-slot applications, interface
calls, and typed/untyped writes through nullable class and struct receivers,
including aliases, inherited slots, longer chains, explicit nil checks, guarded
reads, mutation, stable snapshots, interface-valued setter adaptation, and system
class offset fallbacks. The same fixture runs from source and as optimized native
code. Optimizer introspection tests distinguish nullable bases in both global and
local type snapshots. Direct nullable parameters and `using` locals cover false
rejection, valid receivers, uncontracted writes, mutable roots, and captured
assignments. Checked-accessor AST tests verify that only stable truthy guards
eliminate nullable receiver checks.

`nullable-type-test.ss` directly asserts optimizer ASTs and descriptors: both
predicate categories fold known values, unknown predicate tests refine their true
branch, nullable predicates remain checked outside guards, guarded predicates fold,
false predicate folding retains effects, mutable references have no branch facts,
compound signatures normalize, and unknown case-lambda returns remain unknown.

`compiler-test.ss` runs the optimized `-S` pipeline (`invoke-gsc: #f`) on nullable
and Maybe fixtures, reads generated Scheme as datums, and locates checked entry
points and live unchecked bodies. Assertions verify:

- Truthy guards eliminate repeated class/view predicates and class assertions or
  interface casts, while retaining guards and false branches.
- Predicate guards retain one predicate test and fold repeated true-branch checks.
- Unguarded nullable checks/casts remain. Raw `Item` to `View` conversion still
  calls `cast`; `View?` tests the view type, not `is-View?` implementation satisfaction.
- Provider SSXI and loaded optimizer signatures retain exact nullable returns
  across module boundaries, including nested aliases and fixnum/void/top types.

The harness native-compiles and executes those exact generated files, including
false-case rejection and conversion smoke checks. Each fixture has an isolated
expander context to prevent leaked imports or inherited `main` entry points.
Reusing generated files avoids re-expanding a cached module twice in one process.

Stdlib tests cover absent/present actor lookups and raw/view host adaptation,
association pairs and custom defaults, flock/inotify/file failure and success
paths, and vector growth failure. Timeout regression coverage preserves false,
flonum, and both time-object implementations. Kqueue has a BSD-only null/non-null
pointer regression.

## Build and Verification

For a fresh checkout, initialize the pinned Gambit submodule and build locally
with a temporary installation prefix. From the repository root:

```sh
git submodule update --init src/gambit
./configure --prefix=/tmp/gerbil-nullable-check
make -j8
```

This builds the bootstrap, core, stdlib, and tools without installing into the
prefix. Subsequent core and stdlib rebuilds use `make -j8 stage1` and
`make -j8 stdlib`. Use `run.sh` for build-local interpreter commands; do not set
`GERBIL_HOME` manually.

Run focused compiler/contract tests from the repository root:

```sh
./build.sh test -v 10 gerbil/test/compiler-test.ss gerbil/test/nullable-type-test.ss gerbil/test/interface-test.ss gerbil/test/maybe-test.ss
```

Broader core and supporting suites:

```sh
./build.sh test -v 10 gerbil/test/c3-test.ss gerbil/test/compiler-test.ss gerbil/test/control-test.ss gerbil/test/interface-test.ss gerbil/test/metaclass-test.ss gerbil/test/mop-test.ss gerbil/test/nullable-type-test.ss gerbil/test/quasiquote-test.ss gerbil/test/sugar-test.ss gerbil/test/table-test.ss gerbil/test/util-test.ss gerbil/test/maybe-test.ss
./build.sh test -v 10 gerbil/test/maybe-test.ss
./build.sh test -v 10 std/make-test.ss std/struct/queue-test.ss std/sync/rwlock-test.ss std/os/flock-test.ss std/net/address/address-test.ss std/io/socket/socket-test.ss std/net/ssl/ssl-test.ss std/io/bio/bio-test.ss std/sync/channel-test.ss std/vector/extensible-test.ss
```

Focused stdlib return-contract suites:

```sh
./build.sh test -v 10 std/actor/interaction-test.ss std/actor/proto-test.ss std/list/walist-test.ss std/list/alist-test.ss std/os/flock-test.ss std/os/inotify-test.ss std/os/kqueue-test.ss std/io/file-test.ss std/time/timeout-test.ss std/vector/extensible-test.ss
```

Inspect harness output for `OK` and absence of `ERROR`/`FAIL` markers; shell status
alone is insufficient because the harness can return zero after failed checks.

### Verification Limitations

The full local build, focused compiler/contract suites, and selected core and
supporting stdlib suites passed on Linux.
This is not full-repository or cross-platform verification:

- The build uses the committed bootstrap sources; regenerating those sources is
  a separate step from compiling them.
- Broader `gxc-test.ss` static executable tests are outside the focused commands.
- On Linux, `kqueue-test.ss` exports no suite. Its BSD-only pointer regression has
  not been executed or native-compiled in this verification.
- Ensemble tests are outside the verified scope.
