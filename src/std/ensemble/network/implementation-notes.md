# Ensemble Network Implementation Notes

## Purpose And Authority

This records the completed network implementation handoff for vyzo and astra.
The handoff is closed as of 2026-09-14; earlier checkpoints remain as design,
verification and investigation history, not an outstanding implementation queue.
The filename corrects the earlier `implentation-notes.md` typo at vyzo's request.
Whenever making an authorized commit, include any pending changes to this document
and ensure its checkpoint matches the code being committed. Do not leave changed
implementation notes behind while committing the work they describe.

- [design-notes.md](design-notes.md) records the agreed behavioral design and
  superseded proposals. Later explicit decisions take precedence over earlier
  chronological notes.
- This document tracks module boundaries, actual progress, verification, and
  remaining work. It does not silently change the agreed design.
- vyzo approved staged implementation, then requested agreement on module
  decomposition before starting. The decomposition below is now approved.
- Ask vyzo whenever input is useful, particularly for behavioral changes,
  ambiguous contracts, or a significant departure from these boundaries.

## Current Checkpoint

### PR 1493 Broad Verification And Revocation Removal (2026-09-18)

- Removed the unimplemented `revoke!` extension and its TODO-expectation assertion;
  updated extension/interface documentation. Reserved `REVOKE`, token `args`, and
  `save-token!` support are unchanged. Revocation is not implemented.
- Both edited Scheme files passed baseline/post-edit MCP balance checks and
  module-context syntax expansion. Eight-core incremental stdlib and tools builds
  passed. The following previously requested supporting-library regression passed
  all 43 modules, including all 31 ensemble modules:

  ```sh
  GERBIL_BUILD_CORES=8 make stdlib
  GERBIL_BUILD_CORES=8 make tools
  ./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/ensemble/keystore/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss
  ./build.sh test std/...
  ```

- The full stdlib command exercised 142 modules and completed its final error
  report without a native crash. It did NOT pass: 14 cases in
  std/net/http/server/server-test.ss failed; the other 141 modules had no
  harness-recorded failures. MODULE-OK/HARNESS-OK notices alone are not success
  evidence because the runner emits them before summarizing contained failures.
- HTTP failures comprise seven empty-response/EOF cases, two receive timeouts,
  and five unexpected status responses. They cover malformed request lines,
  header whitespace/names/control bytes, missing/duplicate Host, invalid
  Content-Length, Transfer-Encoding/Content-Length conflicts, and Expect/Continue.
  Static inspection matches missing validation/error responses and missing automatic
  100 Continue handling. `git diff v0.19-staging -- src/std/net/http` is empty,
  including the failing tests. This is source-level attribution only: staging was
  not executed separately, and shared IO changes exist in this PR. No HTTP code
  was changed or assertions weakened to hide these failures.
- Vyzo confirmed that these are recently introduced HTTP compliance edge cases
  and explicitly excluded fixing them from this PR.
- Full stdlib output is retained locally at
  `/home/vyzo/.local/share/opencode/tool-output/tool_0b339c621001oV9MOgmDKT6oUv`.
  Some unrelated websocket/SSL background threads logged Scheme exceptions; those
  did not become additional harness failures. No invalid-return/dispatch native
  crash reproduced in either broad run. The historical crash cause remains unproved.
- Remaining integration work is reconciliation of v0.19-std-ensemble-host with
  these fixes. The full stdlib HTTP failures need a separate follow-up; this result
  closes the missing-run evidence gap, not a claim of a green full stdlib suite.
- This supersedes the historical notes below deferring stub removal, not their
  recorded verification scope.

### Network Worker Completion Verification (2026-09-18)

- Eight-core incremental stdlib build passed after the debug-logging/error-wrapper
  refinement. All four thread-test cases passed, covering ordinary results, original
  exception identity including #f, cleanup-before-completion and timeout distinctions.
- `./build.sh test std/ensemble/network/...` passed all 22 modules with a 1200-second
  command budget and no unhandled worker exception stack-trace noise. The preceding
  600-second attempt completed 21 modules before timing out in the final auth module;
  auth also passed separately. Earlier timeouts remain historical observations, not
  proof of a diagnosed deadlock or its elimination.
- The close guard, actor-backed worker markers, normalized completion and audited
  joins are now runtime-verified together. Broad supporting-library/full stdlib
  regression and revoke! removal remain subsequent review work.

### Quiet Network Worker Failure Results (2026-09-18, Source Only)

- User-approved refinement of the pending worker guard, not a replacement for it.
  `spawn-network-thread` retains `spawn/name`, entry marking, named ownership and
  the runtime abortive root. Its outer `with-catch` grafts out of the body before
  debug logging through the existing network logger and returning final typed
  `NetworkThreadError(exception : :t)`. Cleanup finishes before logging/wrapping;
  normal results are unchanged and raised `#f` is not a success sentinel.
- Internal `network-thread-join!` delegates to `thread-join!/error`, then reraises
  the exact wrapped exception. A private join-timeout sentinel preserves arbitrary
  explicit timeout values, including a wrapper value. Returned ordinary exception
  objects are not reinterpreted. The wrapper is reserved internal completion data,
  not an application result type, and no public facade exports were added.
- All ten production joins of marked workers were audited. Eight now use the shared
  helper; the two aggregate barriers intentionally keep native joins and inspect
  completed wrappers before recording the original error. A worker-raised `Timeout`
  cannot short-circuit later joins as if the join itself timed out. First failure,
  exact parent-close suppression, distinct cleanup failures and cooperative resource
  ownership are unchanged. No catch-all was added to conceal join-operation errors.

| Production File | Exact Join Sites |
| --- | --- |
| `network.ss` | `network-listener-thread`: body and finalizer joins of `listener.worker`; `network-thread`: each `job.worker`; `network-close`: `self.worker` |
| `handshake.ss` | `handshake-exchange!`: temporary output `worker` in the finalizer |
| `listener.ss` | `listener-close!`: `self.worker`, retaining its nonthrowing close contract |
| `connection.ss` | `connection-parent-join!`: native join of each published service/reader/writer; `connection-reap-openings!`: `entry.worker`; `connection-shutdown!`'s `join-worker`: native aggregate join; `connection-renewal-reap!`: `round.worker` |

| Test File | Exact Marked/Mixed Join And State Audit |
| --- | --- |
| `listener-test.ss` | All seven `listener.worker` joins use the helper; bounded construction/close driver joins remain ordinary |
| `connection-opening-test.ss` | `opening-test-wait!`; all eight `entry.worker` joins; the setup `job.worker` alias; both reader-error assertions; writer polling and error assertion; the final service/reader loop use the helper. `opening-test-join!` deliberately uses native join to prove termination and now explicitly recognizes a returned wrapper, alongside native application failures |
| `connection-framed-test.ss` | Mixed fixture cleanup list and direct writer-cleanup-failure assertion use the helper. Both state checks assert termination only, not success; original failures are independently asserted through aggregate/direct joins |
| `connection-parent-test.ss` | `parent-test-wait!` polls both service and ordinary workers through the helper; other joins are ordinary fixture consumers |
| `connection-transport-test.ss` | `transport-test-wait!` polls service/IO and ordinary workers through the helper; endpoint/consumer/release joins remain ordinary |
| `network-api-test.ss` | Both polling helpers, three direct guard-worker joins, and the captured parent-service join use the helper. The raw fixture cleanup joins only its ordinary `start` workers, so its native completion/error classification remains unchanged |
| `renewal-protocol-test.ss` | Both `round.worker` joins and the direct parent-writer failure join use the helper |
| `network-acceptance-test.ss` | The renewal observer and captured service join use the helper. The normal-termination assertion for `entry.worker` additionally joins to verify success; other terminal-state checks assert only completion |
| `thread-test.ss` | Explicit native joins inspect completed wrapper results and capture a native join-timeout exception for identity testing; these are intentional protocol tests |

- Repository-wide spawn/join/terminal-state searches found no other marked-worker
  consumers outside this network implementation. Joins in `connection-test`,
  `connector-test`, `handshake-test`, `tls-test`, `stream-test`, `stream-io-test`,
  `network-test`, `network-e2e-test` and `renewal-test` belong to ordinary application,
  driver or fixture workers; their returned caught-error and native join contracts
  are unchanged. No native terminal-state exception/reason accessor needs translation.
- Added four focused test cases in `thread-test.ss`: ordinary/returned-error results,
  exact failure identity and `#f` for marked and plain workers, gated nested dynamic
  finalizer completion with marker retention, and timeout/default/sentinel behavior
  including worker-raised native join timeout. Existing expected-fault assertions
  still require their original exceptions. Debug logging was source-reviewed, not
  tested by changing shared global logger configuration or timing sink delivery.
- Every edited existing `.ss` file had a passing MCP baseline; the new test started
  with an empty-source baseline. Every edit passed immediate MCP balance checking
  and syntax expansion before another source edit. MCP checked the helper directly;
  dependent modules required checkout-local `./run.sh gxi` expansion because MCP
  resolved the old compiled helper exports. The final source-registry pass expanded
  all five changed production modules, all nine changed/new test modules, plus
  renewal-limits and end-to-end source-fixture consumers (16 modules), without
  evaluating runtime bodies. The first combined verification command hit a missing
  compiled test-module path while registering results; the corrected command only
  registers production compiled aliases and expanded all 16 successfully.
- New test assertion audit and `git diff --check` passed. Security scans of all 14
  edited/new source modules found no production issues; the three test warnings
  are existing used `mode` parameters in API, transport and renewal-protocol fixtures.
  Updated worker docs and conventions. No builds or runtime tests were run for this
  refinement: main owns serialized eight-core builds and the runtime checkpoint.
  Neither `revoke!` nor the previously observed unrelated full-run hang was changed.

After main's serialized `GERBIL_BUILD_CORES=8 make stdlib`, the focused command is:

```sh
./build.sh test -v 5 std/ensemble/network/thread-test.ss std/ensemble/network/listener-test.ss std/ensemble/network/handshake-test.ss std/ensemble/network/connection-parent-test.ss std/ensemble/network/connection-transport-test.ss std/ensemble/network/connection-framed-test.ss std/ensemble/network/connection-opening-test.ss std/ensemble/network/network-api-test.ss std/ensemble/network/renewal-protocol-test.ss std/ensemble/network/network-acceptance-test.ss
./build.sh test std/ensemble/network/...
```

### PR 1493: Network.close Worker Guard (2026-09-18)

- `network-close` alone checks an actual, non-inherited thread-local marker before
  network locking, state mutation or joins. Any marked worker gets contextual
  `ContractViolation`, including cross-network calls and already closing/closed
  networks. `Connection.close`, `Stream.close`, and callback callsites are unchanged.
- New internal `network/thread.ss` provides `spawn-network-thread(name, thunk)`.
  It uses `spawn/name` (hence `spawn-actor`) and sets the marker at worker entry.
  Actor-local slots avoid the global plain-thread table/mutex on marked workers;
  the actor trace wrapper is accepted. Named joinable handles, publication gates
  and cleanup ownership are preserved, with no per-network registry or global cache.
- Audited all ten owned spawn sites: supervisor and setup/listener jobs, listener
  accept, temporary handshake writer, connection service/reader/writer, incoming
  admission, outgoing opening started by an application caller, and renewal round.
  Connector/handshake drivers and connection lifetime reapers run in marked setup
  jobs. The marker remains set throughout finalizers; application child threads
  start unmarked. Added the helper to the build spec and scoped the stdlib worker
  convention exception to ensemble network workers.
- Added three bounded public API regression cases: a held-mutex pre-effect check
  and fully closed target; all six monitor callback kinds on both endpoints,
  own/cross-network rejection, live registries and byte transfer; callback-dispatched
  application close with both plain and actor children, plus close-callback rejection
  during shutdown and external idempotence. Gates release through unwind cleanup;
  timed-out fixture workers retain borrowed resources rather than freeing live ones.
  Updated the framed spawn-failure and renewal source-unit hooks for the helper.
- Source-only verification: baseline and post-edit MCP balance checks, MCP syntax
  checks or checkout-local `gx#import-module` expansion with source fallback passed.
  `build-spec.ss` is syntax-checked in its real `build-std.ss` include context.
  The new unbuilt helper cannot resolve through MCP's compiled-only load path;
  checkout-local expansion appends `src` after the normal build load path and does
  not evaluate module runtime bodies. A final source-registry pass expanded all six
  implementation modules plus API, framed, renewal-limits, opening, renewal-protocol,
  end-to-end and acceptance tests against the changed source dependencies (13 modules).
  Assertion audit and `git diff --check` passed. Security scans found no production
  issues; the sole test warning is a false positive on the fixture's used `mode`
  argument. No build or runtime tests were run for this increment; main owns
  serialized approved eight-core builds.
- Main's build succeeded. The focused run passed framed and renewal-limits tests;
  the API held-mutex guard case failed first on its incorrect string-only
  `Error-where` assertion. Source-fixture forms have no source locations, so the
  contextual error correctly names the instrumented module with a symbol.
  The failed check then escaped by continuation through `do-with-lock`, leaving
  the mutex held and causing the secondary fixture-cleanup join timeout. The test
  now checks that exact module symbol and uses `with-dynamic-lock` so assertion
  exits also unlock. Production guard and actor logging are unchanged. Baseline,
  post-edit balance and module syntax checks passed; runtime rerun remains with main.
- Main's focused three-suite rerun passed. The full network run then reported only
  four acceptance failures: post-shutdown `open-stream!` expected `Closed`, but
  retained Unix `PrematureEndOfInput` or TLS `SSLError`. Concurrent endpoint closes
  do not order local parent closure before peer EOF: the reader can store the
  transport failure first, and later explicit close preserves it. Actor scheduling
  and diagnostics may expose this race; first-failure semantics are unchanged.
  `acceptance-check-closed!` now captures `impl.parent.error` after joined shutdown
  and requires exact `eq?` exception identity for opening and both timeout setters,
  including a retained `#f`. Native-socket/stream assertions, production code and
  logging remain unchanged. Baseline/post-edit balance and module syntax checks
  passed; no runtime tests were run for this correction. Main owns the rerun.
- Final checkpoint: eight-core stdlib build passed; the focused API/framed/
  renewal-limits command passed after the fixture correction, and the corrected
  acceptance module passed separately. A subsequent full network run timed out
  at 600 seconds while executing connection-framed-test.ss, without a final harness
  result. Its cause remains unestablished; this is not a full network pass.
  Actor trace wrappers now print expected worker termination/fault exceptions,
  including ordinary connection close, without changing their propagation.
  Full-run output: `/home/vyzo/.local/share/opencode/tool-output/tool_0b1644a99001OzLjCWMLSuPq3o`.
  Verification commands:

  ```sh
  ./build.sh test -v 5 std/ensemble/network/network-api-test.ss std/ensemble/network/connection-framed-test.ss std/ensemble/network/renewal-limits-test.ss
   ./build.sh test std/ensemble/network/...
   ./build.sh test std/ensemble/network/network-acceptance-test.ss
  ```

- `revoke!` removal remains deferred. Earlier runtime results below do not verify
  this guard increment; broad supporting-library/full stdlib regressions remain.

### PR 1493: Context-Owned Identity Normalization (2026-09-17)

- Added CapabilityContext.normalize-did and a context-owned bounded alias LRU,
  using the existing public-key-cache-size capacity and context mutex. Canonical
  `u` inputs are strictly scanned without allocating normalization payloads or
  consuming alias entries; validated `z` aliases reuse canonical strings. Invalid
  inputs are not cached. Close clears the cache without invalidating borrowed
  strings. Review refinement: prefix rejection and canonical `u` validation run
  before any lock, including on closed contexts; only the `z` path locks and
  checks closure. Private-key operations normalize before their key-cache critical
  section and still check closure there. A held-mutex regression covers the lock-free paths.
- Private-key caches use canonical identities. Per review, public-key lookup uses
  the supplied DID string directly, avoiding normalization on cache hits. Equivalent
  spellings may occupy separate bounded entries; misses validate during key decoding.
  Explicit roots normalize at the shared
  database add/remove boundary, deduplicate by canonical DID, and reopen canonically.
  No migration is needed for this unreleased code. Existing implicit-root snapshot
  semantics and exact serialized token/anchor storage remain unchanged.
- token-rooted-at? and token-anchored-at? now require CapabilityContext as their
  last argument. Delegation, root, anchor and network selection comparisons use
  context normalization; signed fields remain untouched. Fresh grant/delegate
  constructors canonicalize identities before signing. Wildcard audience behavior
  is unchanged: an input-anchor wildcard matches only a wildcard, and network
  INVOKE selection still requires a concrete audience.
- Updated synthetic contexts and tests for mixed signed/API spellings, root
  insertion/removal/reopen, key and normalization cache reuse/eviction/closure,
  wildcard boundaries, and unchanged marshaled credential bytes.
- Eight-core incremental stdlib and tools builds passed. The focused 11-module
  UCAN/keystore/authentication/handshake command passed, followed by all 30 ensemble
  modules with `./build.sh test std/ensemble/...`. MCP balance checks and source
  syntax expansion passed; stale compiled interface exports during editing required
  checkout-local source-registry expansion. Security scans reported only low-level
  false positives on used parameters and the intentional authentication domain tag.
- Remaining PR work: Network.close callback guard, revoke! stub removal, and broad
  supporting-library/full stdlib regressions. Branch reconciliation with
  v0.19-std-ensemble-host must preserve this context cache and comparison contract,
  merge its normalization callers with these changes, and update any new callers
  or synthetic contexts for the required method and predicate arguments.
- Review cleanup removed the redundant network DID wrapper; remaining setup/wire
  callers import normalize-did directly from ucan/did. The eight-core incremental
  build passed. A subsequent ensemble run timed out after reaching
  connection-transport-test.ss; a focused rerun of that module plus auth, handshake,
  connector and network-api passed. The timeout's cause is not established, and
  that interrupted run is not a new full-ensemble pass.

### PR 1493: Strict DID Encoding Increment (2026-09-17)

- Added substring-aware `base64-decoded-length`, `base58-valid?` and
  `multibase-valid?`. Strict Base64 inspection validates alphabet, exact padding
  policy and unused bits while computing decoded length without decoded buffers.
  Existing generic decoder behavior is unchanged; Base58 validation does not
  pretend that exact decoded size is obtainable from character count alone.
- `normalize-did` and `did->public-key` accept only strict Ed25519 `z`/`u` DIDs.
  Canonical `u` normalization returns the original string after a lexical scan,
  checking the codec through leading sextets without decoding. Base58 normalization
  bounds input length before conversion and does not create a native public key.
- Updated rejection/normalization tests and the keystore test that previously
  accepted padded Base64 DIDs. UCAN root and signed-identity comparison semantics
  are not changed in this increment. No persisted-root compatibility is required:
  this code has not been released.
- Verification: MCP balance and syntax checks (checkout-local module expansion
  where source-relative imports or fresh dependencies required it), security scan
  of did.ss, and whitespace checks passed. Eight-core stdlib/tools builds and the
  following 13-module command passed:

  ```sh
  ./build.sh test std/encoding/base64-test.ss std/encoding/base58-test.ss std/encoding/multibase-test.ss std/ensemble/ucan/... std/ensemble/keystore/... std/ensemble/network/auth-test.ss
  ```

- The first incremental build timed out. Fresh generated interfaces paired with
  old dynamic objects, plus an empty wire.ssi, subsequently blocked test loading.
  Targeted recompilation was insufficient; `make stdlib-clean`, then sequential
  eight-core stdlib and tools builds repaired the artifact state. No core rebuild
  or source workaround was used. This is separate from the historical native crashes.
- Remaining review increments: consistent UCAN identity/root normalization without
  modifying signed token bytes; fail-fast Network.close callback guard; removal of
  the revoke! stub; broad and full stdlib regression verification.
- Branch reconciliation is required after the review fixes: v0.19-std-ensemble-host
  already introduces normalize-did, DID documentation/tests and callers in network
  auth and keystore store. Preserve this strict, allocation-light implementation
  when rebasing that branch; do not restore its permissive fallback or pad-bit
  acceptance test. Retain and reconcile its callers rather than duplicating helpers.

### Network Handoff Closed (2026-09-14)

- Vyzo accepted the final documentation polish, authorized its commit and closed
  this handoff. The agreed network scope is complete: public Unix/TLS connections,
  authorized multiplexed streams, finite renewal policies, reviewed ownership and
  cleanup, bounded acceptance coverage, public capability constants, and interaction
  diagrams with checked-in PNGs. No further implementation increment is planned.
- Last executable change is 55a71c1e. Its eight-core stdlib build and all 30 ensemble
  modules passed; this closing commit changes documentation and rendered assets only.
  The prior crashes did not reproduce after the reviewed staging-core rebase and
  clean rebuild. Their exact cause remains unproved; diagnostic records are retained
  without claiming exhaustive elimination of intermittent faults.
- Historical pending/deferred labels below do not reopen completed work. Pooling,
  reconnect, new policy limits, and host/address-book work remain outside this scope.
  Unrelated untracked addrbook/host files, backup branches, stash and diagnostics are
  preserved. No push is authorized or performed.

### Human Interaction Diagrams (2026-09-14)

- Documentation-only polish: added interactions.md with four Mermaid sequence
  diagrams and linked them from the public network overview. Covers fresh connection
  establishment, stream OPEN/OPEN-ACCEPT, DATA and read-driven credit, and graceful
  Writer half-close through FIN/EOF and local retirement.
- Checked ordering against handshake, admission, stream IO and release source.
  The connection example explicitly assumes the dialer has the smaller DID; notes
  distinguish DID election from physical direction, pre-activation callbacks from
  public readiness, local write buffering from delivery, and transport release from
  credit replenishment. Graceful closure uses Writer.close, not abortive Stream.close.
  Close callbacks may finish before renewal ownership releases; slot reclamation
  must still wait. These are explanatory interleavings, not additional wire rules.
- Source review, relative links/anchors and whitespace checks passed. At vyzo's
  request, installed Mermaid CLI 11.17.0 and a headless browser in the isolated
  `/tmp/opencode/ensemble-diagram-render/` workspace using Bun. All four diagrams
  parsed and rendered successfully as SVG and PNG; PNG previews were inspected for
  layout and clipped text. `preview.html` in that directory links all eight images.
  At vyzo's subsequent request, added the four rendered PNGs under network/diagrams/
  and linked each from interactions.md so Emacs/image viewers need no browser.
  Included the renderer configuration and regeneration instructions; renderer
  dependencies remain outside the repository. Copied PNG hashes match the inspected
  renders exactly. The Mermaid blocks remain the editable source.
  No source/tests, build registration, or behavior changed; no Gerbil build or
  runtime tests were run. This entry accompanies the authorized documentation
  commit; no push, and addrbook/host work is untouched.

### Public Connection Capability Constants (2026-09-14)

- This checkpoint accompanies vyzo's authorized commit of the reviewed acceptance
  work and final protocol-constant polish, including source, tests and documentation.
  The successful ensemble runs below remain the verification evidence. No push.

- Added the requested `proto:/network/connect` public capability name and explicit
  `proto:/network/connect/v0` name, both exported through :std/ensemble/network.
  The versioned value is "/network/connect/v0"; the unversioned name refers to the
  same string. No UCAN protocol value, HELLO version or authorization rule changed.
- Replaced the internal connection-auth-protocol name in auth/handshake/renewal
  implementation and tests. Public renewal credential tests use the facade constant
  rather than embedding the protocol string. Added a public-export/value/identity
  test and documented current versus version-specific usage and string immutability.
- Clear sole-builder conflict check; 8-core make stdlib passed. Build-local facade
  import returned the expected string and identical current/versioned values.
  `./build.sh test std/ensemble/...` passed all 30 modules, HARNESS-OK and final OK
  without errors or segfault in 10m14.817s. Log:
  `/tmp/opencode/ensemble-protocol-constants-tests.log`. Syntax and whitespace checks
  passed; auth security findings are existing low used-parameter/domain-string
  warnings, not a new boundary change. No core/Gambit or supporting-library edits.
- Unrelated addrbook/host work and the preserved rebase stash are untouched.

### Reviewed Staging Core: Crash Not Reproduced (2026-09-14, Uncommitted)

- At vyzo's request, stashed all current work including untracked files, switched
  to v0.19-staging and pulled the reviewed nullable-types merge at 3964ba4e. Rebased
  only the 70 ensemble commits above the old v0.19-nullable-types base onto staging,
  avoiding replay of incorporated core commits. New branch HEAD is 2ad7d16b.
  Rebase/restoration had no conflicts; range-diff shows all 70 patches unchanged,
  and restored tracked ensemble content matched the stash exactly before this
  checkpoint update. Untracked addrbook/host and acceptance files were restored.
- Recovery branch: backup/ensemble-before-staging-rebase-20260914. The restored
  stash remains as a safety copy; the older unrelated stash is untouched. Archived
  the old executable and build/lib before cleaning for core 617216 analysis:
  `/tmp/opencode/gerbil-pre-staging-review-617216.tar.gz`.
- Ran the requested clean/configure/build sequence with eight build cores.
  `make clean` removed build/ and bootstrap/, then failed only because the fresh
  Gambit checkout had no generated makefile/clean target. Continued with
  `./configure --prefix=/usr/local/gerbil` and `make -j8`; the full build, including
  Gambit, core, stdlib, libraries, languages and tools, completed with Done.
  Logs: `/tmp/opencode/ensemble-staging-clean-build.log` and
  `/tmp/opencode/ensemble-staging-configure-build.log`. No install was run.
- Build-local runtime reports v0.19-dev-124-g2ad7d16b. Gambit remains pinned at
  dcd677cd. The reviewed core adds checked nullable receivers throughout dotted
  getter/setter/application traversal and preserves nullable type expressions in
  optimizer metadata. These safety changes are relevant, but have not been proven
  to be the precise cause of the old invalid-dispatch crashes.
- The broader regression reproduction was interrupted before execution. Vyzo then
  scoped verification to ensemble tests only unless supporting code changes. Ran
  `./build.sh test -v 5 std/ensemble/...`: all 30 modules and 375 named cases passed,
  with HARNESS-OK, final OK and no errors or segfault, in 7m51.054s. This includes
  both previously crashing cases, all five acceptance cases and large E2E transfers.
  Log: `/tmp/opencode/ensemble-reviewed-core-reproduction.log`.
- One nonverbose confirmation run, `./build.sh test std/ensemble/...`, also passed
  all 30 modules with HARNESS-OK, final OK and no errors/segfault in 10m16.402s.
  Log: `/tmp/opencode/ensemble-reviewed-core-confirmation.log`. These are two
  successful runs after a substantive core update and clean rebuild, not retries
  of unchanged failing binaries until a lucky pass. No additional source fix was
  added during reproduction and the broader supporting regression was not rerun.
- Current conclusion: the old crash is not reproducible on this reviewed, rebuilt
  base in the authorized ensemble test scope. Keep its core/logs and historical
  diagnosis below; do not claim an exact root cause or proof that an intermittent
  fault can never recur. Acceptance work remains uncommitted for review/sign-off.
  No push or unrelated worktree changes.

### Final Acceptance: Native Crash Blocker (2026-09-14, Uncommitted)

- Continued from 15f010bf using `/tmp/opencode/ensemble-final-acceptance-handoff.txt`.
  The API/documentation audit, bounded workload and demonstrated retirement repair
  are implemented, but final sign-off is BLOCKED by native control-flow crashes in
  full regression. Do not call this increment fully accepted or count the failed
  full runs as passes. No commit/push, core/Gambit edit/rebuild, submodule change or
  addrbook/host edit. All changes remain in the worktree for review/investigation.
- Current facade/exports, defaults, nullable signatures, policy exclusions,
  expiration precedence, callbacks, byte IO and ownership were audited against
  source and compiled metadata. No internal facade leak or unsettled API conflict
  was found. Twelve adjacent Markdown documents correct stale current claims while
  preserving historical evidence: notably pre-activation connection-open versus
  readiness, Unix sidecar ownership, zero extra initial OPEN headroom, whole-slice
  writes, and first-failure identity. No runnable code examples changed.
- New network-acceptance-test.ss has five named cases: Unix/TLS mixed-load soak,
  Unix/TLS late verifier retirement, and timeout-safe fixture teardown. acceptance.md
  records exact workload and proof limits. Per transport, the soak uses three linked
  streams, three explicit renewals, two churn streams per cycle (FIN and RESET),
  288 KiB bulk plus 48 churn bytes, 39 tracked workload workers, a captured 90-second
  observation/join cutoff, DATA 256 and receive/send rings 1024/2048. Byte patterns
  and read chunks are deterministic. Actual output-CV waits/full rings establish
  backpressure; application reader gates release after installed leases and owner
  retirement. This is bounded coexistence/progress, not a throughput benchmark.
- Live-cycle checks include quantitative bounds, returned credits/charges, stable
  views, one generation per cycle and actual allow/open/close callback counts.
  Retained closed public views preserve metadata, installed expirations and IO
  identity; buffers, jobs/sessions, completed openings and renewal owners retire.
  Native sockets are closed and borrowed capability contexts remain usable.
- The late-verifier regression first completes genuine renewal, then blocks the
  next real verifier after AUTH with populated tokens and peer-fields. It joins
  service while that worker remains blocked. A join observer identifies the exact
  verifier completion CV; the connection-cleanup worker must wait on it and the
  public closer must have reached its own wait before the gate is released. This
  replaces a scheduling-dependent short join-timeout observation.
- Before repair, both transports retained one obsolete renewal round after joined
  close; both soak cases retained three completed opening records. The focused
  red run is `/tmp/opencode/network-acceptance-before-retirement.log`.
  connection-shutdown! now performs final renewal retirement, detaches obsolete
  operations/terminal released wire requests, then reaps completed openings after
  its complete owned-worker join barrier. Private joined? reaper arguments skip
  redundant joins and preserve previously recorded errors. Existing actual-release
  conditions still gate retirement; skipped self/incomplete joins cannot authorize
  final pruning. Seeds, historical candidates, fixed worker/error/public metadata
  and caller-owned waiter finalizers remain distinct from obsolete owner roots.
- Review found inherited unsafe fixture teardown: timed-out closer joins could skip
  app joins yet close their borrowed contexts/store/path. network-api-test.ss now
  retains/reuses closer handles, attempts all joins with one cleanup deadline and
  guards borrowed cleanup with proven completion. A fixture-only optional cleanup
  timeout supports a real 0.1-second timeout regression with a held close callback
  and application worker. The test verifies retained contexts/store/directory, then
  releases and joins owners before manual cleanup. Known terminated app failure,
  including #f, still permits normal cleanup. No background test assertions or
  forced cancellation were added. A stream-allow hook supplies actual admission
  counts for the soak; production monitor APIs are unchanged.
- The sole-builder 8-core `export GERBIL_BUILD_CORES=8 && make stdlib` passed after
  the retirement fix. Both new acceptance and modified API test files passed
  build-local `./run.sh gxc -S -d /tmp/opencode ...`. The acceptance/API focused run
  passed 19 cases; the final acceptance-only run passed all five after stronger
  admission/job/context checks. Logs:
  `/tmp/opencode/network-acceptance-fixture-reviewed.log` and
  `/tmp/opencode/network-acceptance-reviewed.log`. The protocol suite also passed
  all 23 cases standalone during crash isolation; that does not clear the blocker.
- Scoped etc/gerbil-mode.el formatting proved 31896 exact tokens across connection.ss,
  network-api-test.ss and the new acceptance test, with balance, idempotence,
  reproducibility, exact literals/comments/outside-scope text. Production was
  unchanged by formatting after its successful build; no no-op freshness build.
  Proofs: `/tmp/opencode/network-acceptance-final-format/`. Security scans found no
  production/new-test issue and one low used-mode fixture false positive. Assertion
  audit and whitespace checks passed. Installed MCP runtime/compiler versions are
  older than build/lib; native repository verification is authoritative.

#### Blocking Full Regression

- The exact normal command below segfaulted after 3m57.203s when entering the
  renewal-protocol module, before the acceptance module ran. Log:
  `/tmp/opencode/network-final-acceptance-regression.log`.
- systemd retains core PID 617216, timestamp 2026-09-14 15:16:35 EEST, executable
  `/home/vyzo/gerbil/build/bin/gerbil`. Inspect with `coredumpctl info 617216` or
  `coredumpctl debug 617216`. No source or binary changed after that dump.
- GDB native backtrace is a null indirect target from ___call. Raw processor state
  identifies the current Scheme thread as `network`, with SELF resolving to
  ##thread-signaled-condvar-action! and RA to ##kernel-handlers. Scheme PC points
  at the permanent condition-variable TYPE DESCRIPTOR (subtype 4), not a procedure
  or return label. The thread's dynamic test context identifies the first protocol
  case: `independent caller cutoffs precede operation, wire, general and remote
  settlement`. This is evidence of invalid return/dispatch state, not proof of the
  instruction or subsystem that corrupted it. Postmortem helper:
  `/tmp/opencode/acceptance-core-inspect.gdb` (read-only; its generic base~0.c parameter
  lookup is ambiguous, but the dynamic-object traversal recovers the test context).
- The first live batch-GDB attempt stopped at an expected SIGPIPE in an SSL negative
  test and is not a full-run result. The corrected diagnostic used
  `handle SIGPIPE nostop noprint pass`, normal program signal delivery, case verbosity
  5 and the same full test list. It passed the entire protocol/limits suites and
  later segfaulted in `fallback honors fixed/adaptive preference budgets while
  credential processing stays held` in network-api-test.ss, again from ___call,
  this time at native address 0x0000100800005555. Log:
  `/tmp/opencode/network-final-acceptance-gdb-diagnostic.log`.
- The second fault was stopped by GDB; no second core was explicitly saved. The
  first core, both diagnostic logs and unchanged worktree remain available. The
  earlier September 12 crash is only a historical lead; do not claim a shared cause,
  blame core/Gambit, or infer a repair from a passing standalone run. No async
  exception injection was used. No test was weakened or rerun until a lucky pass.
- Next action requires a separately scoped native crash investigation, potentially
  spanning compiler/runtime/FFI. Locate the corruption and establish a regression
  before any core/Gambit change. The current acceptance stop condition has not been
  met; no further feature or edge-case increment is needed, but this concrete crash
  blocks network sign-off.

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/ensemble/keystore/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Final Bounded Coverage (2026-09-14)

- This checkpoint accompanies vyzo's authorized commit after review. It includes
  the namespace repair, all new coverage, and adjacent documentation. Verification
  remains the final successful build and 41-module regression below. No push.

- Continued from 1f706d48 using `/tmp/opencode/ensemble-final-coverage-handoff.txt`.
  All five selected coverage groups are implemented with fifteen new named cases:
  three protocol capacity cases, three public policy/seed cases and nine limits
  source units. Production changes are limited to namespace exhaustion in three
  connection.ss procedures. No push, core/Gambit change, new public API,
  wire change or extra build target. Untracked addrbook/host work is untouched.
- Protected connection quota: an actual responder AUTH remains selected while a
  real peer ABORT retires its round. Three subsequent real OFFERs receive correlated
  capacity-refusal ABORTs queued behind that held AUTH; the fifth protected frame
  fails even though aggregate frames and protected bytes have room. Tests retain
  originating/receiving IDs, targets/deadlines and queued controls, prove native
  close before held-wake/stream cleanup, and verify actual borrower retirement and
  zero final accounting. Precommit local cancellation uses a labeled source seam;
  no counters, grants or installed expirations are fabricated.
- Fixed REQUEST/RESULT admission: three versus four real WINDOW-UPDATEs occupy a
  four-frame fixed connection before protection. Three allow a bounded reason-limit
  RESULT and connection reuse; four cause mandatory RESULT exhaustion and socket-
  first close. Full refusal correlation/payload, pending caller outcome, unchanged
  authority and selected-credit ownership through real release are checked.
- Dual automatic interest runs on Unix and TLS for two generations with linked
  duplex traffic. Context gates expose actual responder REQUEST and coordinator
  OFFER coalescing, physical roles, fixed IDs/targets/deadlines and bounded ownership.
  Successful generations respect spacing and preserve public identities/callbacks.
- Linked-stream seed refresh also runs on Unix/TLS, with independent contexts and
  keystores plus real common-root delegation. A target beyond the explicit stream
  seed's horizon selects and authenticates a fresh protocol-specific anchor chain.
  Direct peer grants are untrusted; a distinct-authority sibling remains unchanged.
  Bytes and handles survive. This tests a seed unusable for the requested target,
  not wall-clock expiry of that seed during the run.
- New renewal-limits-test.ss is source-discovered and uses real unattached classes,
  copied production functions and allocator/codec operations. Nine named cases
  cover last request/connection/stream IDs, queued/later callers, retained retired
  staging, live final rounds and REQUESTs, terminal RESULT state with held output
  or same-scan cancellation, and maxu64 automatic targets. Independent fixtures
  first scanned at maxu64-1 avoid masking overflow checks behind an earlier flag.
  Round allocation stops at an explicit source staging refusal; other synthetic
  owner/result records are labeled unit inputs, not authenticated peer exchanges.
  Raw scheduler borrows are owned/released by that unit, never by a fake writer.
- These cases exposed namespace exhaustion waiting for capacity or caller timeout:
  higher/later callers stayed pending; retired final-ID staging prevented detection;
  terminal wire results retained a pointer until output release, also blocking
  detection. Fixed launch to check namespace before capacity. Settlement now checks
  after wire outcomes, distinguishes pending result from terminal-but-owned control,
  preserves active final-ID exchanges, terminates impossible retries, satisfies
  covered callers and rejects uncovered local/remote work without releasing owners.
  Service repeats settlement in the same pass when exhaustion is newly discovered,
  including the request-ID path that has no operation object.
- Review strengthened protected-quota proof: actual input-CV wait before the fatal
  OFFER, Closed rather than arbitrary failure/timeout, receiving IO still unaborted
  at the held-wake snapshot, fatal cutoff rechecks, full ABORT correlations and
  direct queued-work release checks. No additional lifecycle permutations were
  added: existing StreamIO held-DATA/credit/FIN renewal and protocol cancelled/closed
  encoder tests already cover the two selected invariants. No further matrix goals.
- Development failures are not counted as passes: typed ordinary let bindings and
  untyped dotted fixture aliases failed expansion and were corrected with using.
  The new responder-opened seed case initially used its pre-activation notification
  object; public b.connect! reuse now waits for readiness before opening a stream.
  Namespace red tests recorded pending callers with no possible next ID, including
  retained staging and terminal wire ownership; the final versions all pass.
- Main was sole builder; conflict checks were clear. Necessary revisions and the
  final scoped-formatted production source passed
  `export GERBIL_BUILD_CORES=8 && make stdlib`. No core/full/Gambit build, manual
  GERBIL_HOME, unchanged freshness rebuild, exception injection or forced termination.
  Build-local gxc -S passed renewal-limits-test.ss, renewal-test.ss and
  renewal-protocol-test.ss. Installed MCP subprocess versions remain older than
  build/lib; native repository checks are authoritative.
- Final reviewed focused command below passed all 44 cases: 23 protocol, 12 public
  renewal/policy and 9 namespace units, all three MODULE-OK, HARNESS-OK and final OK.
  Log: `/tmp/opencode/ensemble-final-reviewed-focused.log`.
- Final formatted full regression passed all 41 modules, HARNESS-OK and final OK,
  no ERROR output, in 7m52.697s with a 1200000 ms allowance. Includes unchanged
  single/ten-concurrent 4 MiB E2E transfers, StreamIO, native socket/SSL, UCAN and
  keystores. Log: `/tmp/opencode/ensemble-final-coverage-regression.log`.
- Scoped etc/gerbil-mode.el proof covers 51127 exact tokens across four files,
  including the whole new limits test: balanced, reproducible/idempotent formatting,
  exact literals/comments and outside-scope text. Proof directory:
  `/tmp/opencode/ensemble-final-coverage-format/`. Security scans found no production
  or limits-unit issue and six low used-mode false positives in existing fixtures
  and new policy helpers. The limits assertion warning is a multiline => comparison.
  Tracked and new-file whitespace checks pass.
- Ready for full-model review. The next increment is the separately scoped final
  API/documentation, retained-resource and bounded mixed-load acceptance pass, not
  another expanding edge-case matrix. Pooling, reconnect, new budget policies and
  host/address-book work remain outside network completion. A nonreturning provider
  still retains its resources and can delay joined shutdown as documented.

`./build.sh test -v 5 std/ensemble/network/renewal-limits-test.ss std/ensemble/network/renewal-test.ss std/ensemble/network/renewal-protocol-test.ss`

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/ensemble/keystore/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Renewal Review Fixes (2026-09-14)

- This checkpoint accompanies vyzo's authorized commit of the reviewed hardening
  increment, review fixes, tests and documentation. The final verification below
  remains authoritative; no source changed during commit preparation. No push.

- Fixed both authorized review findings over the existing hardening
  increment. Core, Gambit and untracked addrbook/host work remain
  untouched. The newer verification below supersedes the previous checkpoint's
  test counts and final results, not its coverage distinctions or remaining matrix.
- connection-renewal-send! now tracks fill's cleanup ownership from invocation until
  normal return. If fill raises with work still owned, send records that error as
  fatal under parent mx without attempting cancellation again. Released work needs
  no cleanup; pre-fill attachment and post-fill notification failures retain send's
  separate cancellation responsibility. Failure identity includes a raised #f.
- connection-work-release! no longer establishes an additional try/finally after
  accounting/state release. Normal return clears owner references directly; the
  already-established outer catch clears them after irreversible release on failure.
  Unfinished DATA/FIN ownership remains intact. This removes the unconditional
  callback guard from DATA while retaining late-failure publication under parent mx.
- Added two named cases, three scenarios: actual source-loaded fill encoding and
  cancellation faults (Error and #f), plus real DATA observing every release
  protection entry. Before repair, fill cancellation counted (1 1) rather than
  (1 0) for fill/send, and late DATA protection setup raised after ownership ended.
  After repair, fill cleanup occurs once, send never retries it, the original
  cleanup failure is connection-fatal, and normal DATA completes with no late
  protection setup. These are deterministic source-boundary tests, not allocator
  OOM or zero-allocation performance claims. Protocol suite now has 20 cases;
  the entire hardening increment adds eight cases with eighteen scenarios.
- The 8-core `export GERBIL_BUILD_CORES=8 && make stdlib` passed after the production
  fixes, with clear sole-builder conflict checks. Focused protocol/transport/framed
  testing passed all 56 cases (20/20/16), all MODULE-OK, HARNESS-OK and final OK.
  Log: `/tmp/opencode/renewal-review-fixes-focused.log`.
- Two later full regressions failed in unchanged repeated attachment/close fixture
  establishment before any parent attachment: first native recv timeout, then
  handshake-check-live! deadline expiry. The original fixture has a two-second
  integer-second setup budget; its isolated transport suite passed. No causal claim
  about GC or scheduler delay is established by those observations. These full
  runs are failures, not passes, and are retained in
  `/tmp/opencode/renewal-review-fixes-full-regression.log` and
  `/tmp/opencode/renewal-review-fixes-final-regression.log`.
- Only that non-expiry race now requests a five-second setup budget and a twelve-
  second lease authenticated before CONFIRM. All other helper callers retain the
  two-second default. The twelve Unix/TLS iterations, alternating lock queue order,
  expiration identity, socket-close, race waits and joins are unchanged. No retry
  loop, post-authentication lease extension or production timeout change was added.
- Final full regression below passed all 40 modules, HARNESS-OK and final OK with
  no ERROR output in 7m26.593s. Includes both renewal suites, large concurrent E2E,
  native socket/SSL, UCAN and keystores. Log:
  `/tmp/opencode/renewal-review-fixes-verified-regression.log`.
- Scoped etc/gerbil-mode.el formatting proved 40230 exact tokens across production,
  protocol and transport test files; balanced/reproducible/idempotent layout and
  exact literals/comments/outside-scope text. Production remained byte-identical
  after its successful build, so no unchanged freshness build was run. Proofs:
  `/tmp/opencode/renewal-review-fixes-verified-format/`. Build-local gxc -S passed
  both protocol and transport tests. Security review found no production issue and only existing
  low used-mode fixture warnings. git diff --check passed. No new source hooks in
  production, asynchronous exception injection or forced worker termination.

`./build.sh test -v 5 std/ensemble/network/renewal-protocol-test.ss std/ensemble/network/connection-transport-test.ss std/ensemble/network/connection-framed-test.ss`

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/ensemble/keystore/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Renewal Protocol Hardening (2026-09-14, Uncommitted)

- Continued from 40e3f390 using `/tmp/opencode/ensemble-next-increment-handoff.txt`.
  Implemented all three scoped coverage groups with six new named protocol cases
  and fifteen scenarios. Only connection.ss, renewal-protocol-test.ss, their
  connection/renewal docs and this handoff changed. No commit or push is authorized.
  Untracked addrbook/host work and the Gambit submodule remain untouched.
- Deferred stream OFFER completion runs on Unix with the physical initiator as
  opener and TLS with the responder as opener. A source-admitted real encoder holds
  target T1 while public connection renewal installs T2. After authenticated T1 ACK
  receipt, the normal service generates the next OFFER, which the recipient defers
  behind its still-owned ACK. Actual writer release admits and completes T2 at both
  endpoints, with both scopes' ownership retired, stable public IO/ID identities and
  exact unread bytes followed by duplex traffic. First-round admission is an internal
  seam, not a claim that the public automatic scheduler initiated that first round.
- Mandatory stream ACK exhaustion uses immutable limits: protected bytes R, one
  genuinely held encoder allowance Q, and exactly 25 ordinary bytes for the real
  stream AUTH. Written AUTH remains owned while actual COMMIT arrives; its mandatory
  21-byte ACK cannot fit. A held wake leaf proves native socket close precedes abort/
  queue cleanup. A real queued public renewal waiter gets the retained capacity
  error. Encoder and AUTH remain charged until their original workers finish, then
  joined cleanup has zero counters. No fabricated installed leases or counters.
- Synchronous publication tests cover pre-worker scope publication, unlinked COMMIT
  reservation publication, and staging fill after the exact allowance refund, each
  with Error and raised #f. Real waiters in the worker-driven cases get the original
  failure; old grants/sibling traffic and later public renewal survive. A separate
  compound failure at publication cancellation verifies fatal cleanup error identity
  and eventual FIFO/accounting recovery through close, not an actual allocator OOM.
- A renewal worker fault after actual stream COMMIT selection resets only its
  stream, retaining the writer borrow and worker slot until real release; siblings
  and connection reuse remain usable. Late connection ACK release faults occur after
  irreversible accounting but before the renewal callback. A different-error closer
  is deliberately queued on parent mx; the original Error/#f wins and no completed
  accounting/callback is replayed. Both groups run Error/Unix and #f/TLS scenarios.
- Production repairs remain in three procedures. connection-renewal-start! extends
  its existing failure boundary over staging and owner-list publication, not only
  spawn. connection-renewal-send! retains local reservation cleanup through attachment,
  fill and notification; failed cancellation marks the scheduler fatal under parent
  mx so close can recover an otherwise undiscoverable queued reservation.
  connection-work-release! clears opening/renewal/request references unconditionally
  after accounting, and its leased failure latch includes late callbacks before
  unwinding parent mx. Raw release/leased deferral semantics remain unchanged.
- Before repair, the new scope-publication test exposed escaping failure with staging
  still owned; late ACK release retained its renewal reference and failed joined
  shutdown. Read-only review additionally identified the cancellation-failure FIFO
  case. Tests were strengthened to wait for both endpoints' installation/slot return,
  witness both credit replies before exact exhaustion accounting, avoid test-runner
  continuation escapes from background hooks, and use dynamic cleanup around new
  locked assertions. All these repairs and checks are included in final verification.
- Development-only failures are not passes: initial fixture expansion used the wrong
  receive-ring slot name and omitted the control-release predicate argument. A -r
  case-name filter selected no suite; only the later unfiltered CASE-OK runs count.
  No assertions were weakened to turn those failures into success.
- Main was sole builder; conflict checks were clear. Each necessary production
  revision passed `export GERBIL_BUILD_CORES=8 && make stdlib`; the final successful
  build precedes test-only formatting, which left production source byte-identical.
  No redundant unchanged freshness build, core/full/Gambit rebuild or GERBIL_HOME
  override. Build-local `./run.sh gxc -S -d /tmp/opencode
  src/std/ensemble/network/renewal-protocol-test.ss` passed. The MCP compiler still
  fails before source compilation because its installed version predates build/lib.
- Focused command below passed all 52 cases: 18 protocol, 9 renewal, 25 StreamIO,
  with all three MODULE-OK, HARNESS-OK and final OK. Log:
  `/tmp/opencode/renewal-hardening-review-focused.log`.
- Final formatted full regression passed all 40 modules, HARNESS-OK and final OK
  with no ERROR output. Elapsed test time: 9m30.516s; timeout 1200000 ms. This includes
  both renewal suites, UCAN/keystores, native Reader/SSL and unchanged single/ten-
  concurrent 4 MiB E2E transfers. Log:
  `/tmp/opencode/renewal-hardening-full-regression.log`.
- Scoped etc/gerbil-mode.el formatting proved 32295 exact tokens across two files,
  unchanged literals/comments/outside-scope text, balanced forms and idempotent,
  reproducible layout. Proof directory: `/tmp/opencode/renewal-hardening-final-format/`.
  Security scans found no production issues and one low used-mode false positive.
  The assertion audit warning was a multiline check with its => #t intact.
  `git diff --check` passed. No production hooks, fake public interfaces, added
  transport loops, asynchronous exception injection or forced termination.
- Remaining matrix: protected connection frame-quota and fixed REQUEST/RESULT
  protection-admission exhaustion variants, exhaustive OPEN/RESET/DATA-borrow races,
  namespace exhaustion, simultaneous automatic interest, and linked seed refresh.
  A truly nonreturning provider still owns its charge and may delay joined shutdown.
  This increment is ready for full-model review, not a claim of exhaustive coverage.

`./build.sh test -v 5 std/ensemble/network/renewal-protocol-test.ss std/ensemble/network/renewal-test.ss std/ensemble/network/stream-io-test.ss`

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/ensemble/keystore/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Native Nullable Contracts After Rebase (2026-09-13)

- This checkpoint accompanies vyzo's authorized nullable-cleanup commit, including
  the reviewed source, tests, compatibility repairs and documentation. Verification
  remains the final successful build and 40-module regression below. No push.

- Rebased onto v0.19-nullable-types at 67cac274; the ensemble baseline is now
  c1bc65bc. Core fixes already in the base were not replayed; the condvar commit
  retained only its handoff notes. Gambit is a clean submodule at dcd677cd.
- Removed six nullable-interface workaround constructors: ConnectionParent,
  ConnectionOpening, Listener, StreamReader, StreamWriter and ConnectorFixture.
  Generated constructors now use explicit field defaults, including `:?` interface
  slots initialized to #f. Converted all five positional Parent/Opening call sites
  to keywords and added assertions for their initial values and synchronization
  fields in the existing worker-free opening fixture.
- connect-handshake and connector-setup use `:? ConnectorMonitor`; guarded attach
  dispatch uses dotted methods. NetworkReservation.socket uses `:? StreamSocket`,
  including normal false initialization and clearing on retirement/handoff.
  Retained real self-view/lifecycle constructors, not nullable workarounds.
  NetworkConnection.this is nonnullable because its constructor installs it before
  starting owned work. The old nullable-interface exceptions below are superseded.
- Audited all ensemble `=> :t` returns and converted 24 to `(Maybe Type)`: optional
  work/registry/opening records, outgoing work/reservations, handshake payloads and
  candidates, service deadlines and deferred-release results. Service deadline
  inputs are `:? :time`; successful release remains void and deferral remains #f.
  A local cancellation predicate now returns :boolean. Arbitrary callback/timeout
  results, absent-obj deadlines and mixed integer/boolean results remain broad.
  Numeric TTL/uint64 predicates retain their bounds; no public contract was weakened.
- New metadata exposed phase invariants previously hidden by nullable erasure.
  Keystore snapshot loading explicitly rejects absent closed storage while keeping
  its bytevector return. Public peer/stream and linked-parent expiry use narrow
  assertions at authenticated/successful/attached boundaries; they never promise
  optional public results. Renewal owner lookup expresses its existing contextual
  failures through if/or. UCAN verification's nullable group loop argument now uses
  `:? :string` rather than an incorrect nonnullable assertion.
- Rebase compatibility repair: replaced all ten ensemble ##max-fixnum references
  with `(##greatest-fixnum)` in codecs, handshake, scheduler and config tests. The
  newer Gambit no longer binds the old variable. No core or Gambit edits/rebuilds.
- Verification: main was the sole builder, with clear conflict checks and 8-core
  stdlib builds. Initial failures exposed the above return-contract mismatches and
  incomplete generated renewal metadata. Failed builds also left new .ssi files
  alongside stale native objects, blocking test startup at SocketConnectError.
  `export GERBIL_BUILD_CORES=8 && make stdlib-clean && make stdlib` repaired that
  artifact mismatch. The first full test run then exposed the obsolete Gambit
  constant; it is not a pass. After its repair and scoped formatting, the final
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed with Done.
- Final regression below passed all 40 MODULE-OK markers, HARNESS-OK and final OK,
  with no ERROR output. Test elapsed time: 7m5.508s. It includes all four keystore
  suites and the unchanged single/ten-concurrent 4 MiB transfer cases. Log:
  `/tmp/opencode/ensemble-nullable-final-regression-20260913.log`.
- Scoped etc/gerbil-mode.el formatting proved 62608 exact tokens across 13 source/
  test files, unchanged literals/comments/outside-scope text, balanced forms and
  reproducible/idempotent layout. Proofs are under
  `/tmp/opencode/ensemble-nullable-final-format-20260913/`. Security scans found only
  ten low used-parameter false positives; the assertion warning was a multiline
  check with its existing => 1 intact. Diff whitespace checks pass.
- MCP subprocess compilation with build/lib is incompatible with its older installed
  compiler; the successful native repository build/harness are authoritative.
  No push, core/full build, unchanged freshness rebuild or addrbook/host edit.
  Remaining renewal matrix gaps recorded below are unchanged by this type cleanup.

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/ensemble/keystore/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Renewable Network Milestone Commit (2026-09-13)

- This checkpoint accompanies the authorized network implementation commit after
  SSL commit `0c1cf48d`. It includes renewal source/records, public contracts,
  version-1 codecs, adaptive establishment, linked streams, review fixes, nullable
  interface workarounds, tests, build entry and adjacent documentation.
- Earlier uncommitted labels below are historical. The full regression passed after
  the five review fixes; the later lease-contract and nullable-interface cleanups
  passed their recorded builds and focused suites. Remaining matrix gaps and narrow
  nullable-interface exceptions remain explicitly documented rather than claimed
  solved. No new source changes were made during commit preparation.
- No network draft is intentionally excluded from this commit. Unrelated untracked
  addrbook/host files remain outside scope. No push is authorized. Next work is a
  separately scoped core contract fix, not another stdlib predicate workaround.

### Authorized Split Commits (2026-09-13)

- vyzo authorized committing the current work, with SSL changes in a separate
  commit, then scoping the nullable-interface core repair. No push was requested.
- The first commit contains only the shared SSL error-queue fix, its native
  regression, and this live handoff. The network implementation described below
  remains in the worktree for the immediately following network commit; this
  checkpoint does not attribute it to the SSL-only source commit.
- Verification is unchanged from the recorded successful runs below: full
  36-module regression after the five review repairs, followed by the contract
  cleanup build/tests and final nullable-interface build/seven-suite pass. No
  source changes or redundant builds are needed for committing that tested state.
- Unrelated addrbook/host work remains excluded. Core investigation is read-only;
  no core change, workaround removal or core rebuild is part of these commits.

### Nullable Interface Contracts (2026-09-13, Uncommitted)

- Inspected all network implementation/test nullable class/interface predicates.
  Converted Listener.lock, StreamReader.this, StreamWriter.this and
  ConnectorFixture.listener to `:?` with narrow typed custom constructors. Allocation
  leaves nullable interfaces false; constructors initialize required nonfalse state.
  Existing cached-view helpers still install Reader/Writer before publication.
  Listener unlink and fixture cleanup now use dotted close after truthiness checks.
- Retained verified exceptions, not a blanket predicate-field workaround:
  connect-handshake and connector-setup monitor arguments, the Listener constructor's
  lock argument, and NetworkReservation.socket. The initial all-seven conversion
  compiled but failed runtime tests: false optional monitors and constructor lock
  arguments are cast by with-interface before their bodies, and retirement's socket
  setter casts #f. core/contract.ss with-interface's nullable branch casts before
  testing truthiness. A custom constructor alone cannot fix arguments or setters.
  Restored those predicates and documented the reason beside the declarations;
  removed the unnecessary experimental reservation constructor. Completing these
  conversions needs a separate core fix, outside this stdlib-only change.
- Existing ConnectionOpening/ConnectionParent and other custom constructors remain
  unchanged, as do numeric predicate contracts. No addrbook/host, SSL, core,
  build-spec or unrelated source edits; no commit/push or cookbook/FFI lesson writes.
- Sole-builder conflict checks were clear. Both necessary revisions passed
  `export GERBIL_BUILD_CORES=8 && make stdlib`; no full/core or unchanged freshness
  build. The initial failing test run is not a pass. The final command passed all
  seven MODULE-OK markers, HARNESS-OK and final OK:

  `./build.sh test std/ensemble/network/connector-test.ss std/ensemble/network/listener-test.ss std/ensemble/network/stream-test.ss std/ensemble/network/stream-io-test.ss std/ensemble/network/network-test.ss std/ensemble/network/network-api-test.ss std/ensemble/network/connection-opening-test.ss`

- Existing suites cover false/nonfalse monitors, TCP/no-lock and Unix/lock listener
  construction, fixture cleanup, cached IO handles, reservation retirement and
  existing opening constructors. No assertions were weakened. connector-test.ss
  also passed gxc -S with build/lib. Generic MCP syntax checking hit an installed
  std/time/timeout expansion error; the successful native build and repository
  harness are authoritative. Security scans covered all five touched source/test
  files: four existing low used-parameter false positives in connector.ss, no other
  findings. Diff/whitespace review passed; all preexisting dirty work is preserved.

### Lease Contract Cleanup (2026-09-13, Uncommitted)

- At vyzo's request, all four public/concrete lease contracts now use
  `(one-of #f renewable)` or `(one-of #f connection)` rather than lambdas.
  Alternatives are bare symbols: one-of quotes them itself. The first edit retained
  quoted symbols and failed public API checks; corrected the preexisting concrete
  connection contract as well as the three replacements.
- The corrected revision passed the 8-core stdlib build and
  `./build.sh test std/ensemble/network/network-api-test.ss std/ensemble/network/renewal-test.ss`
  with both MODULE-OK, HARNESS-OK and final OK. The earlier full regression below
  predates this contract-only cleanup. No commit or push.

### Five Renewal Review Repairs (2026-09-13, Uncommitted)

- Implemented all five authorized findings over the existing dirty renewal draft.
  This turn changed only connection.ss, stream.ss, renewal-protocol-test.ss and
  adjacent connection/stream/renewal documentation plus this checkpoint. No commit,
  push, addrbook/host edit, SSL/native edit, FFI lesson or cookbook addition.
- Graceful FIN/final-read retirement is now distinct from existing-round liveness.
  New admission remains ineligible, but owned exchanges keep their actual installed
  lease and operation cutoff through COMMIT/ACK. Normal close-callback completion
  (`entry.done?`) likewise cannot discard an active ACK or turn its release into
  timeout. Committed authenticated installation can finish metadata on gracefully
  terminal IO without reopening directions or resetting a peer's unread buffers.
  Abort, actual expiry, original cutoff, and actual worker/control ownership remain
  enforced. The default standalone installation seam still rejects terminal IO.
- Every local settlement branch checks the individual pending request deadline:
  operation completion, wire success/failure and general coverage. Remote RESULT
  publication also enforces its own request cutoff. Timely settled success survives
  delayed waiter mutex reacquisition; pending waiter timeout records failure before
  unwinding and cannot cancel the longer shared operation or another caller.
- A live deferred OFFER excludes competing offers even after successful old ACK
  release clears active state. Dispatch retires elapsed descriptors first. Live
  duplicate active/deferred OFFER and pending REQUEST IDs are fatal rather than
  silently discarded by high-water filtering. A matching deferred ABORT validates
  its complete payload and nonzero reason before cancellation; retired malformed
  payloads remain ignored.
- Four new named protocol cases cover these boundaries. Actual Unix FIN/data and
  final reads interleave with selected/written ACKs at both endpoints, checking
  exact peer unread bytes and EOF. Real authenticated ACK owners support compiled
  direct-dispatch duplicate/ABORT/overlap tests; a source hook runs after actual
  ACK release under the parent mutex and before deferred admission. Request tests
  distinguish synthetic branch records from real active-round ACK/waiter lock
  interleavings. No injected exceptions, force termination, extra transport loop,
  weakened baseline assertions or production test hooks were added.

#### Exact Verification

- Sole builder; conflict checks were clear before each necessary 8-core
  `export GERBIL_BUILD_CORES=8 && make stdlib`. Final source build passed. No
  core/Gambit build, manual GERBIL_HOME or duplicate unchanged freshness build.
- Final focused command passed all 37 cases (12 protocol, 25 StreamIO), both
  MODULE-OK markers, HARNESS-OK and final OK, without errors:

  `./build.sh test -v 5 std/ensemble/network/renewal-protocol-test.ss std/ensemble/network/stream-io-test.ss`

  Log: `/tmp/opencode/renewal-review-focused-20260913.log`.
- Final full command passed all 36 modules, HARNESS-OK and final OK, with no errors.
  Test-only elapsed time: **551.305 seconds (9m11.305s)**; timeout was 1200000 ms.
  It includes both renewal suites, unchanged one/ten-concurrent 4 MiB E2E transfers,
  UCAN, native Reader/SSL and supporting IO. This run completed, not truncated:

  `./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

  Log: `/tmp/opencode/renewal-review-full-20260913.log`.
- gxc -S checks passed for connection.ss and renewal-protocol-test.ss using build/lib;
  the native stdlib build additionally compiled stream.ss and transitive consumers.
  Security scans found no production issues and one low false positive on the
  fixture's used `mode` parameter, which is passed to call-with-api-networks.
- Scoped etc/gerbil-mode.el formatting, local hints and exact-token proof covered
  29857 tokens across three files, with exact literals/comments/outside-scope text,
  balanced forms and reproducible/idempotent indentation. Final snapshots/proof:
  `/tmp/opencode/gerbil-renewal-review-final-format-20260913/`. The formatter needed
  convergent indentation passes for new nested test forms; no tokens were changed.
  Tracked whitespace checks passed. The final build/tests include formatted source.
- Development failures are not counted as passes: the first test expansion lacked
  required adaptive?: on a synthetic operation; the first graceful EOF probe used
  minimum one instead of zero. After correcting those fixtures, the real final-read
  case exposed the additional entry.done? liveness bug described above. It was fixed
  in production rather than weakening the cancelled?/unread-data assertions.

#### Residual Coverage

- No blocker remains for these five repairs. The older remaining-matrix item for
  competing live deferred OFFERs is now covered at the compiled dispatch/actual
  release boundary, not as a full malformed-peer socket shutdown scenario.
- Dedicated gaps still include end-to-end stream next-OFFER completion, mandatory
  renewal-reply exhaustion, synchronous publication/release failure cleanup,
  namespace exhaustion, simultaneous automatic policy at both endpoints, stream
  seed refresh and exhaustive OPEN/RESET/DATA-borrow permutations. Direct-dispatch
  and synthetic settlement cases are explicitly not complete end-to-end exchanges.
  Nonreturning providers retain ownership and can delay joined shutdown as before.

### Renewal Implementation Draft (2026-09-13, Uncommitted)

- Implemented the authorized increment from renewal-plan.md over design commit
  `0495e95d`, with pushed `837e1622` as its working implementation baseline.
  Changes remain uncommitted and unpushed for full-model review. Unrelated
  `src/std/ensemble/addrbook/` and `host/` work was not modified or staged.
- Public APIs now implement explicit uncovered finite connection renewal,
  `connect! lease: 'renewable`, and `open-stream! lease: 'connection`. Default/fixed
  behavior, expire-over-ttl precedence, callback pairing, cooperative cancellation,
  and whole-slice Writer.write remain unchanged. No placeholder methods, additional
  socket loop, automatic reconnect or public cancellation API were added.
- Scope includes version-1 wire codecs and policy contracts in wire/interface/config;
  adaptive credential issuance and establishment in auth/handshake/connector;
  StreamIO installation/deadline separation; connection protocol/scheduler/service
  integration; and Network reuse, pending policy ownership and waiter budgets.
  New renewal.ss contains typed scope/request/operation/round records and helpers,
  imports no connection implementation, and has one new std/build-spec.ss entry.
  Adjacent module docs, the network overview and existing tests are updated; the
  new renewal-test.ss and renewal-protocol-test.ss suites are source-discovered.
- Connection renewal uses the original physical initiator; stream renewal uses the
  original opener. Operation targets and deadlines are immutable. Credential
  refresh considers current context choices plus one retained seed, with finite
  direct issuance windows and full-chain delegated bounds. Installed authority is
  parent.expire / io.expire, not historical handshake/opening evidence. Existing
  Stream/Reader/Writer identities, rings, credits, borrows and FIN state survive.
- Sticky local policy and seed attachment are serialized, including pre-activation
  policy-owner cutover and timed-out pending joiners. Ready finite renewal waits
  occur outside the Network mutex. Establishment credential contributions stop
  when the session leaves pending state; losing work cannot accumulate seed history.
- The existing allocator protects four frames and control-payload + 13 + 3 * 38
  bytes for connection renewal, inside aggregate limits. Admission requires the
  full per-frame staging allowance before credential work. renewing-streams defaults
  to 16 and counts initiated/received stream ownership separately, including
  retired-but-running workers and unreleased controls. Automatic work preserves
  wanted targets while waiting for capacity, with generation suppression and
  positive spacing rather than fresh deadlines or workers on every wake.
- COMMIT selection, local installation, ACK receipt, ACK output release and resource
  retirement are separate transitions. Postcommit uncertainty closes the connection
  scope or resets only its stream. One deferred next OFFER retains correlation and
  deadline without a worker; actual writer/encoder ownership is never released by
  protocol cancellation. Shutdown closes sockets before joined cleanup.
- Review fixes include linked-scope creation at accepted IO registration rather
  than delayed callback bookkeeping; active and deferred lifecycle observation
  before correlation/payload classification; cutoff rechecks after directional
  lock waits; oldest local/remote request ordering; retained staging/worker slots;
  and deferred admission only after the previous actual owners finish.
- connection-opening-expiration now centralizes pending liveness. It uses installed
  IO expiry, otherwise selected credential expiry, otherwise the current parent
  lease for linked OPEN or the original requirement for fixed OPEN. A linked
  pre-IO opening may cross its captured target after connection renewal, but must
  still meet its original opening deadline and actual selected credential validity.
  New deterministic cases cover selection/ACCEPT crossings and expired grants.
- A separate shared SSL prerequisite fix remains in net/ssl/libssl.ss and
  net/ssl/socket-test.ss. Crossed-TLS testing exposed stale OpenSSL error-queue
  contamination. The wrapper clears that queue before SSL operations and captures
  SSL_get_error before peeking at the queued diagnostic, preserving errno/result
  handling. The network continues to use std/net/ssl; no separate network FFI was
  introduced. Temporary crossed-renewal diagnostics were removed after verification.

#### Verification And Failures

- The final formatted source passed `export GERBIL_BUILD_CORES=8 && make stdlib`.
  Build conflicts were checked; main was the sole builder. No core/full/Gambit
  build, manual GERBIL_HOME override or redundant unchanged freshness build ran.
- Final full regression: all 36 modules reported MODULE-OK, followed by HARNESS-OK
  and final OK, with no error output. Test-only elapsed time was 419.47 seconds.
  Output is retained at `/tmp/opencode/renewal-full-regression-20260913.log`.
  The exact command, also covering both new suites by directory discovery, was:

  `./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

- Focused verification before final formatting passed all 14 opening cases and
  eight protocol-boundary cases with:

  `./build.sh test -v 5 std/ensemble/network/connection-opening-test.ss std/ensemble/network/renewal-protocol-test.ss`

- The nine original renewal cases contain 15 scenarios; eight protocol cases add
  11 scenarios. All 17 named renewal cases and the 14 public API cases passed in
  the final full run. Coverage includes real Unix/TLS renewal from both roles,
  automatic/context-refreshed authority, stream failure isolation, fixed IO/drain
  budgets, coalescing, ACK deferral/ABORT/uncertainty, protected staging and bounded
  linked waves. renewal.md distinguishes real peer traffic from source-loaded
  unit-clock and direct-dispatch boundary inputs; those seams are not represented
  as complete end-to-end replacement rounds.
- The unchanged network-e2e-test.ss passed its basic echo, one 4 MiB Writer.write,
  and ten concurrent 4 MiB transfers. Native Reader and SSL suites passed as part
  of the full command. The dedicated SSL error-queue reproduction had previously
  failed against the old wrapper with (-1 1 167772418) instead of the expected
  character; after the repair its healthy read and genuine EOF diagnostic passed:

  `./build.sh test -v 5 -r '^ssl-error-test$' std/net/ssl/socket-test.ss`

- Do not count earlier partial runs as full passes. One combined final build/test
  attempt reached the framed suite before the 600-second shell limit. All 16 framed
  cases then passed standalone, followed by the complete test-only run above with
  a larger shell budget. A timing-wrapper attempt using absent /usr/bin/time did
  not start the harness; the successful retry used Bash's built-in time.
- Earlier integration exposed a missing :std/io test import, incorrect minimum-one
  EOF reads, an opening fixture using historical connection expiry, and the SSL
  error-queue bug. Those were corrected rather than weakening the behavioral checks.
  An earlier failed compile also left fresh config/interface/wire .ssi metadata
  without matching native jobs; deleting only those generated build/lib artifacts
  and rebuilding repaired the build. No source or unrelated changes were reverted.
- Scoped Emacs formatting verified 105961 exact tokens across 21 files; strings,
  comments and outside-scope text were unchanged. Twenty files changed whitespace;
  config.ss needed none. Production signatures/imports/exports and changed test
  forms were checked. Snapshots and proofs are in
  `/tmp/opencode/gerbil-renewal-format-20260913/`. The final build/full tests above
  include these formatting changes. gxc -S checks of renewal.ss and
  renewal-protocol-test.ss additionally passed with build/lib resolution.
- Security scanning covered all 32 network source/test files and both changed SSL
  files. Network findings were 30 low-severity used-parameter/domain-string
  warnings. Native scanning mislabeled 27 existing ordinary NULL/zero error returns
  as conditional stubs, plus two existing public identifying strings; source review
  found no such stubs or new security regression in the SSL diff. socket-test.ss
  had no findings. No obfuscation or unrelated native cleanup was attempted.

#### Remaining Review

- This is a tested implementation draft, not a claim that every acceptance-matrix
  permutation is covered. Dedicated gaps remain for end-to-end stream next-OFFER
  completion after ACK deferral, a second simultaneously live deferred OFFER,
  renewal mandatory-reply exhaustion, synchronous renewal publication/release
  faults, namespace exhaustion, both endpoints enabling automatic interest, linked
  stream seed refresh, and exhaustive OPEN/RESET/DATA-borrow interleavings.
- The new expired-deferral cases cover both scopes using a real authenticated ACK
  owner and parent-locked compiled dispatch inputs. They prove retirement before
  higher-ID classification and retained output ownership, not authentication or
  completion of the artificial replacement OFFERs. The new OPEN cases use a
  source-loaded clock fixture; public linked renewal is covered separately.
- Full-model review and finishing touches remain as requested. Preserve the finite
  authority, cooperative cancellation and whole-write invariants when extending
  coverage. A nonreturning provider still owns its worker/charge and can delay joined
  shutdown indefinitely; this is the documented ownership contract, not permission
  to force-cancel it. Do not commit or push without new authorization.

### Renewal Design Reconciliation And Fast-Model Handoff (2026-09-12)

- Implementation baseline is pushed commit 837e1622 on v0.19-std-ensemble. This pass is DESIGN
  ONLY at vyzo's explicit request: prepare the fast model's implementation plan,
  then return for full-model review and finishing touches. No source, build-spec,
  public interface, wire codec or tests changed; no build/runtime test was run.
- Read [renewal-plan.md](renewal-plan.md) in full before implementing. It separates
  the newly agreed API behavior from technical decisions made in this reconciliation,
  specifies the wire/state/authorization/resource rules, and lists staged work and
  acceptance tests. The final design-notes.md entry links the new decision and
  supersedes earlier automatic/stream-renewal deferrals for explicit policy modes.
- Agreed API: connect! gains lease: 'renewable; open-stream! gains lease: 'connection
  and linked streams survive connection renewals through fresh protocol authority.
  Both default to #f; policies are mutually exclusive with nonfalse ttl:/expire:.
  Existing fixed lifetimes, expire-over-ttl precedence, whole-buffer Writer behavior,
  cooperative cancellation and callback pairing remain unchanged.
- Reconciled connection policy is sticky locally on shared work; either endpoint
  can drive requests through the original physical-initiator coordinator. Initial
  adaptive authorization selects finite maximal applicable credential horizons;
  direct root issuance uses a finite configured window, not an infinity sentinel.
  Refresh context credentials, retain at most one seed per renewable scope, and
  order seed/policy attachment before caller delivery. Policy-owner cutover before
  activation closes the late-joining-policy race while the session is still pending.
- A linked stream captures the installed connection expiration for initial OPEN,
  requiring full coverage. It does not enable parent automatic renewal. After a
  successful connection extension, already-covering stream credentials require no
  exchange; otherwise the original stream opener renews protocol authority with
  the same Stream/Reader/Writer/ID/credit/FIN state. Fixed streams do not renew.
- Protocol design uses HELLO v1, explicit mode bytes and five stream-scoped renewal
  tags. It preserves connection REQUEST/RESULT and COMMIT/ACK semantics, including
  asymmetric local installation. Stream reauthorization has its own COMMIT/ACK
  transaction and stream-local uncertainty cleanup, not an implicit clock extension.
  Review the plan's explicit ACK-output/deferred-next-OFFER/ABORT-crossing rules;
  installation, wire completion and resource release are different transitions.
- Automatic timing has finite headroom, immutable operation deadlines, coalescing,
  per-generation failure suppression and positive spacing across successful
  generations. Protected connection-renewal control capacity prevents slow stream
  encoders consuming that round's budget; worker limits count retired-but-running
  work. See exact allowance, admission and overload semantics in the plan, not an
  inferred limit or unbounded queue in implementation.
- Critical prerequisite: parent.expire is the authoritative established connection
  lease; io.expire is installed stream authority. Stop using handshake/opening
  expiration copies for live timers. Separate fixed application IO/drain deadlines
  from mutable authorization and reevaluate after reacquiring a timed wait's mutex.
  Otherwise timely renewal still aborts IO at its stale captured expiration.
- Implementation sequence: API/versioned codecs and records; mutable-lease/wait
  substrate; explicit connection renewal/public uncovered-expire branch; adaptive
  automatic connection policy; linked-stream transaction; real failure/large-transfer
  integration. Use renewal.ss below connection.ss in the import graph for typed
  protocol state and snapshot-based auth work; connection owns transport/installation
  adapters. Do not introduce a cycle, second IO loop or speculative owner interface.
- Acceptance includes both physical roles over real Unix/TLS, coalesced finite and
  automatic requests, fresh credentials, protected budgets, pre/postcommit failure,
  expired/retired messages, stable linked-stream identity through multiple renewals,
  one-stream authorization failure isolation, unchanged finite IO deadlines, joined
  cleanup, and the existing single-write 4 MiB/ten-stream E2E baseline.
- Two read-only design reviews identified and reconciled ACK retirement/causal next
  traffic, ABORT/COMMIT crossing, protected budget isolation, worker-slot retention,
  request-initiation deadlines, seed attachment, successful-renewal spin and pending
  activation policy races. These are design checks, not implementation verification.
- Fast model must leave implementation uncommitted with exact scope/results in this
  handoff for full-model review. Follow the plan's stop conditions for departures.
  One 8-core stdlib build per necessary revision; no redundant freshness builds,
  core/Gambit rebuild, manual GERBIL_HOME, async exception injection or force-kill.
  Unrelated untracked addrbook/ and host/ work remains outside scope. vyzo authorized
  committing these three design/handoff documents after completion. No push is authorized.

### Whole-Write Contract And Large Transfers (2026-09-12)

- vyzo authorized committing this fix, explicitly including network-e2e-test.ss.
  This checkpoint accompanies the whole-write/large-transfer commit following
  9c29d58d. No push is authorized.
- vyzo supplied network-e2e-test.ss from the prototype and requested production
  construction plus passing large/concurrent transfers. Its single-write assertions
  uncovered a production StreamIO bug, not an io-copy! bug: the old writer returned
  262144 for a 4194304-byte request. Both large cases reproduced that failure before
  the implementation change; the basic echo already passed after adapting setup.
- vyzo clarified that Writer.write consumes the ENTIRE requested region or raises.
  The earlier design-note/cookbook claim permitting short successful public writes
  was incorrect and is explicitly superseded. io/interface/base.ss now documents
  full consumption and the actual exclusive end/default-length contract. io-copy!
  and native socket IO implementations are unchanged.
- stream-writer-write now advances an internal offset and waits for capacity until
  the complete slice is copied, returning end - start. One captured deadline spans
  partial progress, wakeups and timeout-setter changes. Internal stream-produce!
  remains a bounded-prefix primitive. Transport selection does not free borrowed
  capacity; actual release still does. Closure/timeout after partial progress raises
  instead of reporting a successful prefix. Empty writes return zero.
- Adapted the supplied test in place, preserving vyzo's authorship, three cases,
  one 4 MiB write and ten concurrent 4 MiB writes. It now uses the public facade,
  separate memory keystores/capability contexts, genuine common-root DELEGATE
  chains, production TLS construction, DID-based connect and ephemeral TCP ports.
  Monitor predicates/CVs replace timing guesses; application handlers are tracked
  and joined. Normal FIN and callback pairing are checked before connection close,
  and networks finish before borrowed contexts/stores are closed. No asynchronous
  interruption, fake public objects, client-side partial-write workaround or new
  build entry is needed for this source-discovered test.
- Corrected the old tests that accepted bounded-prefix Writer returns. Stream IO
  tests now make one 97-byte write per direction across 4-byte windows, verify a
  nonzero oversized slice/empty request, held transport borrows, source reuse only
  after completion, partial-write abort and one deadline despite progress/setters.
  The parent transfer test also uses one full write. Framed fault fixtures may
  deliberately return short counts, but are documented as nonconforming Writers.
- Fixed a test-helper mistake found by broad validation: wrapping an expected-to-
  fail worker write directly in check intercepted its ordinary shutdown exception.
  The helper now evaluates IO outside the assertion machinery and raises only for
  an incorrect successful count, preserving the actual worker failure through join.
- Verification: 8-core make stdlib passed, including transitive recompilation from
  the interface comment change and final scoped-formatting rebuild. All three E2E
  cases and 18 StreamIO cases passed together; E2E/parent/framed passed again after
  the helper repair. One broad run was interrupted by the user and is not counted
  as complete. The final 34-module command below passed every MODULE-OK, HARNESS-OK,
  final OK and no ERROR output, including network-e2e-test.ss in directory discovery.
  A final local-macro indentation correction changed whitespace only; its single
  stdlib build and both E2E/StreamIO suites passed afterward. vyzo explicitly ended
  duplicate no-op freshness builds: the freshness fix is conclusive, so do not
  repeat an unchanged stdlib build merely to re-prove it on future increments.
  E2E gxc -S, security/assertion audits and tracked/new-file whitespace checks pass.
  Emacs verified exact tokens/literals, scoped whitespace-only indentation and
  parentheses. A too-broad initial formatter pass was restored using its verified
  indentation-only snapshot before applying scoped formatting; no code was reverted.
- Current docs and persistent writer-complete-borrowed-slices cookbook record now
  state the whole-write contract. Unrelated addrbook/
  and host/ work remains untouched. After review, renewal is still the next feature.

`./build.sh test -v 5 std/ensemble/network/network-e2e-test.ss std/ensemble/network/stream-io-test.ss`

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Public Network Milestone Commit (2026-09-12)

- This checkpoint accompanies the authorized network-package commit, following
  4fed7fed (shared Interrupt removal and RWLock simplification). It commits the
  real public Network/Connection/Stream original-lease milestone, authorized OPEN,
  bounded credential/control staging, election/publication/shutdown integration,
  cooperative cancellation, review fixes, adjacent docs, facade and build entry.
- All earlier uncommitted/pending labels below are historical. Final verification
  is the successful 8-core build, 54 focused cases, revised 33-module regression,
  security/whitespace checks and no-op follow-up recorded in the withdrawal entry.
  The 11 public API and 12 OPEN ownership cases are included. The native crash
  investigated under exception injection remains an unproved separate hypothesis,
  not a claimed runtime repair. No core/full Gambit build or push was performed.
- No network implementation draft remains after this commit. Unrelated addrbook/
  and host/ files are excluded and remain in the worktree. Keep those changes intact.
- Next functional increment is renewal in the approved renewal.ss boundary using
  the existing transport loop. Connect requests beyond an installed original lease
  currently fail explicitly; implement mutual coverage, coordinator/request/round
  deadlines, credential failover and commit uncertainty before claiming the complete
  API. Preserve independent Stream.expire and the real public-only test baseline.
- Cancellation is cooperative. Never restore Interrupt, exception-injecting tests,
  or asynchronous retry overhead from historical checkpoints. Follow current
  std/AGENTS.md, use the existing 8-core stdlib-only build and revised test command,
  and leave the next implementation increment uncommitted for review unless vyzo
  authorizes otherwise. This two-commit authorization does not authorize a push.

### Shared Stdlib Removal Commit (2026-09-12)

- vyzo authorized two commits: shared stdlib changes first, then the network
  package. This first commit removes Interrupt from std/error, removes its dedicated
  tests, simplifies RWLock and replaces its injection tests with cooperative tests.
  It also updates std/AGENTS.md and includes all pending handoff changes as required
  by this document's commit policy.
- Network sources/tests/docs, facade and its build-spec entry remain in the
  worktree for the immediately following network commit. Detailed verified entries
  below describe that combined worktree, not network implementation contained in
  this shared-only commit. The prior 54-case focused and 33-module regression runs
  cover these shared changes with the corresponding network removal in place.
- No push is authorized. Unrelated addrbook/ and host/ work remains excluded.

### Withdrawn Interrupt API And Recovery Overhead (2026-09-12, Uncommitted)

- vyzo explicitly requested removing Interrupt from std/error and the overhead
  added while attempting to make asynchronous raising safe. Removed the class and
  exports, with no replacement marker or compatibility shim. Deleted error-test.ss:
  it contained only the two tests introducing/raising that class. Source scan finds
  no remaining Interrupt references in src/**/*.ss; rebuilt :std/error metadata
  confirms that it no longer exports Interrupt.
- RWLock read/write acquisition is back to its straightforward writer-preference
  loops. Removed cancelled-writer withdrawal, acquisition finalizers, ownership
  probes, entered/recovery flags and asynchronous tests. Keep normal waiter counts
  and their once-only waiting? loop state. Scoped acquisition occurs before the
  body-exception handler, so only completed entry is paired with exit; ordinary
  body failure and inverse read-scope cleanup are preserved.
- Removed all remaining ensemble Interrupt retries from managed RESET, provisional
  DATA/FIN cleanup, parent release, admission-stop/abort phases, socket close and
  stream wake publication. Parent close no longer allocates local functions solely
  for retrying those phases. Each phase gets one attempt, with dynamic finalizers
  preserving socket-before-abort and mandatory ended-borrow release after failure.
  Tests now use ordinary Error/Closed/Timeout/#f and assert single-attempt behavior.
- Native socket audit identified no further asynchronous-only machinery outside
  RWLock and the ensemble close wrapper. Kept f2ad527e's Reader remaining-need/EOF
  and TLS exact-minimum fixes; they fix normal reads. Kept 6b731968's SSL-state
  release and certificate serialization, which protect ordinary shared-device
  closure. Kept OSDevice/resource finalizers and unwind-protect!: they are ordinary
  cleanup, not injected-exception support. No core or native socket code was edited.
- Retained the stream-lock ownership check because ordinary timed CV waits can
  raise AFTER unlocking, while another thread owns the mutex. Retained release/
  notification progress flags because ordinary failures can follow partial progress.
  Cooperative cancellation and actual buffer/slot ownership remain the contract;
  the earlier entries saying defensive Interrupt catches remain are superseded.
- Replaced RWLock injection tests with three default cooperative cases: shared
  readers plus queued-writer priority/counts, body-exception cleanup before the
  outer handler, and inverse read-scope restoration. The old opt-in timing stress
  cases remain non-injecting. Shared thread-join!/error Timeout behavior is unchanged.
  Preexisting debugger/profiler/REPL interrupt primitives were not introduced by
  this effort and remain outside this removal.
- Updated std/AGENTS.md, adjacent API/design docs and the persistent cookbook's
  explicit-interrupt-safe-boundary-retry record to withdraw its executable advice.
  Do not restore the old marker or retries from historical notes/cookbook examples.
- Verification: clear conflict check and 8-core make stdlib succeeded, rebuilding
  the transitive stdlib affected by std/error (not a core/full Gambit build). All
  54 focused cases passed: RWLock 3, framed 16, transport 20 and native Reader 15.
  The revised 33-module command below passed all MODULE-OK, HARNESS-OK and final OK
  with no ERROR output. It removes the deleted error-test and includes the now-safe
  RWLock suite; shared threads-test's intentional termination cases remain excluded.
  Static re-review found no normal-cleanup regression or overlooked async-only
  overhead in these paths. Changed production security scans and whitespace checks
  pass. The final comment/formatting-only rebuild passed, and its unchanged
  follow-up compiled zero modules. Emacs verified identical tokens/literals and
  leading-whitespace-only indentation, with parentheses and idempotence checks.
- All shared and network changes remain uncommitted. Preserve unrelated addrbook/
  and host/ work. The public original-lease milestone remains ready for review;
  renewal is still the next functional increment. The earlier native crash was not
  proven caused by interruption and is not claimed fixed by this policy removal.

`./build.sh test -v 5 std/sync/rwlock-test.ss std/ensemble/network/connection-framed-test.ss std/ensemble/network/connection-transport-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss`

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Review Repairs And Cooperative Cancellation (2026-09-12, Uncommitted)

#### Current Contract And Scope

- vyzo approved focusing the network on cooperative cancellation, not supporting
  exceptions injected by thread-interrupt!. Production had no injection calls;
  all network test calls to thread-interrupt! and thread-terminate! are now removed.
  Use owned cancellation state/CV broadcasts, deadlines, socket close, IO abort and
  joined cleanup. Credential calls and callbacks must return before ownership and
  reservations retire. No public early-waiter cancellation API was added.
- This explicit decision supersedes the older safe-boundary Interrupt requirements
  below and is recorded in design-notes.md and std/AGENTS.md. Removed the new scoped
  retry scaffolding in staging cleanup, admission failure/completion and shutdown
  joins. Historical defensive catches remain for synchronous failures, not a claim
  that arbitrary injected exceptions or forced thread termination are safe.
- Synchronous source hooks test operation failures and callback-return boundaries;
  cooperative private cancellation tests preserve real caller failure identity,
  wire ordering, sibling progress and staging budget through actual worker cleanup.
  No fake public Network/Connection/Stream or StreamSocket was introduced.

#### Review Findings Addressed

- Shutdown now snapshots and joins every parent/admission worker, recording only
  exceptions proving worker termination before moving to the next join. It does
  not treat a generic join-operation error as completed worker cleanup. Eligible
  stream-close callbacks precede connection-close and job retirement.
- Encoding exceptions return staging budget after the encoder unwinds. Unsupported
  asynchronous-finalizer cancellation is no longer a contract or test premise.
  Both stream and connection normal callback completion are recorded before the
  next mutex acquisition, preserving close eligibility on later synchronous failure.
- ACCEPT registration rechecks pending deadline and credential expiry after all
  stream/wake locks are acquired. An expired/aborted admission returns false and
  cancels locally after releasing those locks, without emitting ACCEPT. Outgoing
  acknowledgment registration honors the same checked transition.
- Full pending capacity still validates fresh OPEN's bounded outer fields before
  emitting reason-limit; only token decoding/authorization is skipped. Invalid
  lengths/counts remain fatal independent of capacity.
- Public publication holds public -> owner -> parent locks, checks deadlines after
  acquisition, then retires/publishes in one transition. A failed publication keeps
  its reservation until resource and close-callback cleanup finishes.
- Preferred outgoing deadline/min-auth expiration bounds election waits, causing
  nonfatal reevaluation while the fallback still has time. The regression gates
  both actual outgoing connected/reserved attempts BEFORE identity processing;
  this avoids mistaking ordinary join reuse for a crossed physical attempt.
- Service reaps after its control/expiry scan, so cancelling the final stale credit
  no longer pins a retired stream until unrelated traffic. Connection view allocation
  precedes service creation. The newly constructed parent also has local cleanup
  protection until the NetworkJob publication acquisition transfers its ownership.
- Preserved ordinary lease/socket/control/FIN/backpressure coverage while removing
  15 legacy named interruption-only cases, converting six others and trimming one
  mixed case. Eight fixture forced-termination cleanup sites became cooperative
  close/gate-release/join. No opt-in hidden asynchronous network cases remain.

#### Verification And Investigation Record

- Final cooperative public suites: 11 network-api cases and 12 connection-opening
  cases pass. Existing network suites now include 16 framed, 20 transport, 15 parent
  and 25 scheduler cases, plus the remaining IO/protocol/handshake tests.
- The 33-module command below passed every module with HARNESS-OK, final OK and no
  ERROR output. Unlike the historical 35-module run, it intentionally omits shared
  sync/threads-test and sync/rwlock-test, which exercise termination/asynchronous
  interruption. Those shared modules/tests were left unchanged in this repair.
- Clear build-conflict checks, 8-core make stdlib and the final formatting-only
  rebuild passed. The final unchanged build compiled no modules. Both new suites
  passed again after formatting; tracked/new-file whitespace checks passed. Emacs verified
  exact tokens/literals/comments, leading-whitespace-only indentation, parentheses
  and idempotence. Production connection/network security scans are clean; fixture
  mode warnings are used-parameter false positives. No core/full build or commit.
- One earlier exception-injection run segfaulted while printing the staging case.
  Core is retained by systemd-coredump for PID 2305497, 2026-09-12 20:48:31 EEST.
  GDB identified a thread object misused as a code/return label and a jump to a
  tagged staging-worker closure in heap storage. The affected worker was resuming
  api-await after the second encoder's api-record! broadcast. The core did not
  establish an unchecked #f access or identify the instruction that damaged the
  continuation. Prior interruption cases had run; their causal role is plausible,
  not proven. Do NOT describe the native crash as fixed or the core runtime as bad.
- Per vyzo, live diagnosis used ./build.sh gdb gerbil with `run test ...`. A pure
  monitor diagnostic passed 2000 handoffs without interruption, and the actual
  staging case with cooperative cancellation passed 20 repetitions under GDB.
  Temporary diagnostics are /tmp/opencode/cv-handoff-test.ss and
  /tmp/opencode/cooperative-staging-test.ss; no repository test or runtime was
  changed to conceal the crash. Unsupported async tests were removed by explicit
  policy decision, independently of root-cause proof.
- Development regressions also found fixture errors: too-short AUTH headroom,
  an intended fallback becoming an ordinary joined call, joining the synchronous
  interrupt sender before its target could finish, and comparing mutable expected
  errors before joins completed. Cooperative replacements avoid the interruption
  cases and fix the remaining ordering gates/assertions; final runs pass.
- The original-lease public milestone and all current repairs remain uncommitted
  for review. Unrelated addrbook/ and host/ work is preserved. After review, renewal
  remains the next functional increment; retain the public-only baseline and the
  cooperative cancellation contract. Do not rerun the historical async test matrix.

`export GERBIL_BUILD_CORES=8 && make stdlib`

`./build.sh test -v 5 std/ensemble/network/network-api-test.ss std/ensemble/network/connection-opening-test.ss`

`./build.sh test std/error-test.ss std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Public Original-Lease Milestone (2026-09-12, Uncommitted)

#### Scope And Verified State

- Continued from clean 4fd23e11. vyzo explicitly chose the larger public end-to-end
  increment rather than another internal-only OPEN layer: implement real Network
  orchestration together with authorized OPEN and concrete public objects. This
  first original-lease milestone is now implemented and verified. Leave all changes
  uncommitted for review; no commit/push or core/full build was authorized or run.
- New facade src/std/ensemble/network.ss exports new-network, public interfaces,
  directions and config/limits only; one build-spec entry adds it. No scheduler,
  owner, socket, admission record or authentication helper leaks through the facade.
- network/network.ss now supplies concrete EnsembleNetwork orchestration over the
  existing owner/election, listener, connector and handshake mechanisms. Real Unix
  or mutual TLS setup completes identity, UCAN and CONFIRM before activation and
  publication. Canonical peers share one live connection; callers reuse/join without
  replacing addresses or extending operation budgets. Cancellation detaches a
  waiter, not shared establishment. Shutdown closes before joining all jobs and
  releasing owned TLS; capability context and monitor remain borrowed.
- connection.ss now supplies NetworkConnection and bounded ConnectionOpening
  records. Incoming OPEN observes a strictly increasing, correct-parity peer ID
  before admission work; outgoing IDs are committed at writer selection after
  credential preparation. No ID reuse/wrap or accepted-order HWM inference. Pending
  and total caps count callback/cleanup obligations as well as IO. Worker publication
  is gated under parent mx, and both open and eligible close callbacks run outside
  parent/stream locks on each reservation's worker without overlap.
- Public activation installs the connection admission owner before starting framed
  IO with zero marks. The private preaccepted start/register/mark path remains for
  its existing tests; it does not silently become an unrestricted public insert API.
  Real OPEN/ACCEPT/REJECT, receive windows and original credential indexes now share
  the existing reader/writer/service. StreamIO becomes schedulable at the acceptance
  ordering boundary, while pending accounting remains through callback success and
  actual ACCEPT completion. Late/expired pending acknowledgments cancel locally;
  genuine bad indexes/state/framing remain connection-fatal.
- stream.ss adds a concrete cached public Stream view with immutable metadata,
  existing Reader/Writer handles, abortive close and live timeout setters. Its
  connection is a real public Connection and that connection's network is real.
  ConnectionOpening uses a custom constructor for its initially false Stream slot,
  retaining the known nullable-interface constructor workaround without core edits.
- auth.ss separates make-auth-tokens from make-auth-bundle and adds bounded
  encode-auth-bundle. It checks writes through a narrow BufferedWriter adapter
  before a memory writer can grow past its logical byte allowance; DAG encoding,
  token order and original wire bytes are preserved. The connection charges an
  UNQUEUED staging control reservation before serialization, refunds unused allowance
  after exact sizing, and enqueues only when ready. Cancellation/close cannot return
  staging budget before the encoder relinquishes it or block unrelated controls
  behind cancelled preparation. wire.ss exposes payload sizing using the same codec.
- The public original-lease milestone includes duplex bytes/FIN and paired callbacks
  after joined shutdown. Renewal is still unimplemented: connect! requesting beyond
  a live installed lease raises UnsupportedMethod for renew-connection!, leaving
  that lease unchanged. Do not call this the complete renewal-capable API.

#### Review Repairs And Tests

- Corrected missing :std/interface import for implement (per vyzo), missing
  HandshakeMonitor methods on NetworkSetup, and dotted bindings requiring explicit
  types. The initial nullable Stream constructor CastError is fixed by the custom
  ConnectionOpening initializer. These development build/runtime failures are resolved.
- Review found and repaired committed-session retargeting after failure, identity
  pruning that did not wake another peer's election waiter, and publication after
  the original handshake deadline. Source-gated real-network tests force each
  boundary, including delayed CONFIRM handoff and post-activation publication.
- Review also repaired flag-only connection expiry in public/admission operations,
  late valid ACK expiry escalated as a protocol error, interrupted abort of an
  exposed/unregistered IO, early staging budget release/queue blocking, missing
  callback-failure logs and re-caught cleanup exceptions that replayed close.
  Attachment/start retain their own cleanup boundary; timeout configuration and
  local cancellation catches never replay their completed close attempts.
- network-api-test.ss has eight cases, exercising the public Unix/TLS path, refused
  admission, callback exception identity (including #f), callback-safe close and
  pairing, joined/crossed attempts, waiter cancellation and the three owner repairs.
  connection-opening-test.ss has six real-Unix ownership cases: public expiry ahead
  of service, late ACK after pending expiry with sibling isolation, interrupted
  unregistered abort, admission-worker expiry while native output is blocked,
  staging accounting/sibling progress through cancellation and close, and reversed
  preparation order with wire IDs and retained pending callback capacity.
- The abort fixture gates the ACTUAL parent-close owner after native EOF, rather
  than assuming the explicit closer wins against reader/writer cleanup. Remote EOF
  failures are compared to the remote parent's exact first error, not assumed to
  be the local Closed object. Join results are captured before evaluating their
  expected error field; the earlier assertion timing race is resolved.
- Four new auth cases cover token issuance, bounded encoding equality/exact limits,
  prefixes, oversized/cyclic tokens and memory-buffer cleanup. Existing raw framed
  (17), scheduler (27), parent (21), stream, transport, wire and auth suites remain
  enabled and pass. No fake Network/Connection/Stream or StreamSocket implementation
  stands in for the public byte path; source-injection tests use actual functions
  and real objects only at otherwise inaccessible synchronization boundaries.

#### Final Verification

- Clear build-conflict checks and 8-core make stdlib passed. A combined build plus
  no-op tool call hit its 180-second wall limit during the second invocation; the
  build had completed successfully. A separate conflict check and unchanged build
  then passed with zero compilations. No build recovery/core rebuild was needed.
- The 35-module command below passed with all MODULE-OK, HARNESS-OK, final OK and no
  ERROR output. It includes both new suites, all network/UCAN modules and shared
  error/queue/thread/native IO regressions. gxc -S with build/lib passed connection.ss
  and network.ss. A final unused-import/comment cleanup was rebuilt and both new
  public/OPEN suites passed again afterward. The generic MCP runtime still emits
  stale-core warnings during
  some introspection; executable verification uses the correct ./build.sh context.
- Emacs etc/gerbil-mode.el formatting verified identical tokens and literal/comment
  contents before/after, leading-whitespace-only indentation, parenthesis balance
  and idempotence. Signatures, slots, imports and exports follow std/AGENTS.md.
  Changed-source security scan had 19 low findings: intentional existing auth-domain
  strings and false used-parameter warnings, no actionable vulnerability. Tracked
  whitespace checks passed, including the new network source/test files and facade
  documentation.
- Separate untracked src/std/ensemble/addrbook/ and host/ appeared during this work;
  they are not part of this increment and were neither edited nor reverted.

`export GERBIL_BUILD_CORES=8 && make stdlib`

`./build.sh test -v 5 std/ensemble/network/network-api-test.ss std/ensemble/network/auth-test.ss`

`./build.sh test -v 5 std/ensemble/network/connection-opening-test.ss std/ensemble/network/connection-framed-test.ss std/ensemble/network/wire-test.ss`

`./build.sh test std/error-test.ss std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

#### Next Increment

- Review this larger uncommitted public milestone first. Do not reintroduce blanket
  Closed/Timeout filters, arbitrary cancellation retries or placeholder public
  objects. Callback completion, protocol completion and resource retirement remain
  distinct boundaries with separate obligations.
- Then implement renewal in planned renewal.ss using the existing transport loop,
  not another reader/writer. Apply the agreed request/round deadlines, original
  physical-initiator coordinator, credential failover, commit uncertainty and mutual
  lease coverage. Wire connect!'s uncovered-lease branch into actual renewal; never
  silently clamp the requested expiration. Preserve independent Stream.expire.
- Keep the public-only original-lease tests as baseline and add real public renewal
  tests before claiming the complete API. Follow the existing module boundaries,
  8-core stdlib-only build, source-string test imports, type/ownership/Interrupt
  rules, persistent tool-data paths and uncommitted-review policy below.

### Framed Transport Commit And Next Increment (2026-09-12)

#### Repository And Verification

- vyzo authorized committing the reviewed framed transport and preparing this
  handoff. This checkpoint accompanies `add framed ensemble connection transport`
  on v0.19-std-ensemble, following 20b00ad0 (shared thread-join!/error Timeout
  translation). All seven remaining network source/test/doc files belong to this
  commit. Earlier entries marked uncommitted below are historical, superseded here.
  No push is authorized. No pending implementation draft or unresolved test failure.
- Implemented: real high-level Unix/TLS framed reader/dispatch and writer workers,
  independent fixed-lease/service timer, bounded late-ID handling, atomic stream
  lifecycle dispatch, short-count output, socket-first partial-frame cleanup,
  safe worker publication and timed multi-worker join. The 17-case framed suite
  establishes real identity/UCAN/CONFIRM before exercising the byte path.
- Final production change simplified writer cleanup to one try/catch/finally;
  macro expansion places the dynamic protector outside the catch. Its 8-core
  stdlib rebuild and full framed suite passed. Immediately preceding that syntax
  simplification, all 51 cases in core control/shared threads/framed/parent passed
  after the snapshot unwind-protect! conversion and interruption regression.
  The 33-module regression recorded below passed after timed-join repair, before
  these cleanup-only changes. Security scans, Emacs parenthesis/whitespace-only
  formatting checks and tracked/new-file whitespace checks passed. No core build.

#### Next Increment: Authorized OPEN And Public Streams

- Resume implementation toward the approved public-only original-lease vertical
  slice, not another scheduler/cleanup optimization audit. Read design-notes.md's
  current OPEN/cancellation/admission decisions and interface.ss/interface.md, then
  connection.ss/connection.md, auth.ss, stream.ss and network.ss owner boundaries.
  Ask vyzo about significant API or behavioral departures; do not invent policy.
- Implement real OPEN/OPEN-ACCEPT/OPEN-REJECT, authorization and bounded pending
  reservations, alongside concrete public Stream/Connection behavior needed to
  exercise them. Preserve original bundle indexes, authenticated expiration and
  receive-window negotiation. Credential work and monitor callbacks must not block
  the reader or run under parent/stream locks. Admission rejection is stream-local;
  genuine framing/protocol errors and unrepresentable mandatory output are fatal.
- Replace the RESTRICTED startup-only admission boundary intentionally, not with a
  permissive registration shortcut. Current connection-parent-start! requires an
  attached socket, already accepted registry, explicit local/peer OPEN marks and
  no pending admissions; it seals registration and rejects OPEN/renewal frames.
  It is not a usable public connect/open implementation. New API design must carry
  identities/context/authorization and pending lifecycle without fake acceptance.
- Commit local IDs in actual OPEN wire order after potentially slow preparation;
  observe peer IDs before asynchronous admission completes, including rejected
  OPENs. Physical initiator owns odd IDs, responder even; no reuse/wrap. Keep
  high-water marks independent of accepted insertion order. Preserve bounded late
  frames for retired/skipped IDs, fatal future IDs, and DATA in both directions.
  Pending streams need their own state validation; accepted-only dispatch is not
  sufficient. Cancellation before OPEN commitment is local; after commitment,
  preserve ordered OPEN-then-RESET and prevent late ACCEPT from resurrecting it.
- Reserve limits/control budget before admitting or encoding work. Do not add an
  unbounded credential/callback queue or a second selected-frame backlog. Stream
  and protocol slots remain owned until pending work, actual transport borrows and
  required notifications retire. Exercise delayed/reordered authorization, limits,
  cancellation/timeout/close races, late acceptance and sibling isolation.
- Continue into new-network/listen!/connect! using existing setup/election owners,
  single-live publication, joined callers, callback pairing and blocking shutdown.
  The milestone is two real public networks opening an authorized stream, exchanging
  bytes bidirectionally, FIN and joined shutdown within original leases. Do not
  present placeholder public methods or internal-only tests as completion. Renewal
  follows this first public milestone and remains required for the full API.

#### Constraints And Verification To Retain

- Keep approved module boundaries: connection owns transport/admission/scheduling,
  stream owns local IO/state, network owns peer publication/orchestration. No new
  private interface module absent a concrete dependency need. Keep internals out
  of the public facade; no procedure-slot specialization or parallel IO machinery.
- Lock order parent -> input -> output -> wake; IO and joins outside these locks.
  Lifecycle check plus transition must stay atomic. Timed join includes snapshot
  lock acquisition. Publish handles before worker callbacks/cleanup; never self-join.
  Preserve first failure including #f without hiding distinct cleanup failures.
- Use spawn-thread and fresh Interrupt only at known safe cancellation boundaries.
  Never resume an abandoned partial frame or retry an ordinary cleanup error. Close
  before ending a real borrow; use release-only cleanup after an owned close attempt.
  Keep dynamic cleanup where inner finalizers must precede outer cleanup. Only the
  audited snapshot uses unwind-protect!; do not fast-convert parent/stream locks.
  A single try with catch and finally already provides outer dynamic cleanup.
- Follow std/AGENTS.md and retain nullable-interface custom initialization until
  the deferred generated-constructor bug is separately authorized. Import test-to-test
  dependencies using source strings, e.g. (only-in "./connection-transport-test.ss"
  ...). In interpreted tests, define implement procedure bindings before implement.
- Check build conflicts, then `export GERBIL_BUILD_CORES=8 && make stdlib`; tests
  use `./build.sh test ...` from the root. No core/full build is authorized for the
  next increment and no GERBIL_HOME override. Use build/lib for MCP introspection.
  Durable MCP cookbook/features paths remain under
  /home/vyzo/.local/state/opencode/gerbil-mcp/ as recorded below. Format with Emacs
  etc/gerbil-mode.el and local macro hints, asserting whitespace-only formatting.
- Add a real authorized-opening regression, run the framed/parent/stream tests and
  the full network/UCAN/shared-IO regression below. Update this handoff with exact
  scope/results. Leave the next increment uncommitted for review unless vyzo requests
  otherwise; this commit authorization does not extend to future implementation.

### New Cleanup-Site Audit (2026-09-12, Uncommitted)

- Per vyzo, collapsed the writer's redundant outer-finally/inner-catch try pair
  into one try/catch/finally. Verified expansion puts with-unwind-protect outside
  with-catch, preserving the required cleanup order without redundant nesting.
  Subsequent 8-core stdlib build and complete framed suite passed; security and
  formatting checks passed. This is a syntax simplification, not a fast-cleanup
  conversion of the writer ownership boundary.
- Audited the new try/finally sites for both escapes and nested finalizer ordering.
  Converted the timed worker-snapshot mutex cleanup to unwind-protect!: its body
  only acquires the mutex and snapshots fields. The ownership check remains, so
  timeout/interruption never unlocks the dispatcher's mutex.
- Kept startup close/join and writer close/release dynamic. connection-parent-close!
  can rethrow from its stop-admission retry before its dynamic native-close/wake/
  abort finalizers have run. A fast outer finalizer would join blocked workers or
  release work before those cleanup obligations unwind. Added comments documenting
  that concrete ordering constraint. Generic stream lock protection is unchanged.
- The test Writer's delegate/parameterized hook is not a closed nonescaping body;
  its active/unwinds observations must follow inner IO finalizers, so it and the
  callback-taking test fixtures retain dynamic protection. No catch-only try was
  rewritten and no earlier cleanup policy was mechanically broadened.
- Extended the existing held-dispatch timeout case with a fresh Interrupt delivered
  while join waits for the actual snapshot mutex. The original exception reaches
  the joiner and the dispatcher remains the lock owner. Unix/TLS cases pass.
- Verification: 8-core stdlib build passed; core control (8), shared threads (5),
  framed transport (17) and parent (21) cases all passed with HARNESS-OK/final OK.
  This includes the core test proving fast cleanup precedes inner dynamic cleanup.
  Emacs formatting asserted leading-whitespace-only changes and checked parentheses;
  changed-source security scans are clean. No core build, commit or push.

`./build.sh test -v 5 gerbil/test/control-test.ss std/sync/threads-test.ss std/ensemble/network/connection-framed-test.ss std/ensemble/network/connection-parent-test.ss`

### Separate Thread Join Timeout Commit (2026-09-12)

- vyzo authorized committing only the shared thread-join!/error change separately
  from ensemble implementation. This commit contains std/sync/threads.ss, its tests
  and the pending handoff updates required by this document's commit policy.
- The wrapper translates its own native join timeout into Timeout, preserves explicit
  timeout values and worker exception identity, and uses spawn-thread in the touched
  exception fixture. The successful build, focused tests and 33-module regression
  recorded below cover this shared change.
- Framed transport, parent timed snapshot acquisition, stream locked-helper exports,
  their tests and adjacent docs remain uncommitted. Checkpoints below describe that
  verified worktree state, not implementation included in this separate commit.
  No push is authorized.

### Timed Join Review Repair (2026-09-12, Uncommitted)

- Fixed the review finding: connection-parent-join! now captures its absolute
  deadline before acquiring the worker-snapshot mutex and passes that same deadline
  to mutex-lock! and all worker joins. Acquisition failure does not unlock another
  thread's mutex. Explicit timeout values, including #f, are returned unchanged.
- Per vyzo, generalized native join-timeout translation in std/sync/threads.ss:
  thread-join!/error raises std/error Timeout for its own native join timeout.
  It classifies before unwrapping worker failures, so even a worker-raised native
  join-timeout is preserved by identity. Termination and caller cancellation remain
  unchanged. Parent join likewise raises Timeout for snapshot or worker wait expiry;
  it retains raw worker wrappers internally to distinguish termination from a caller
  interruption and continue joining other workers safely. No new primitive is used.
- New held-dispatch regression failed against the old code with result stuck before
  the repair. It now passes on Unix/TLS for zero/relative/absolute deadlines with
  omitted, false and symbolic timeout values; dispatch remains locked throughout,
  and subsequent stream IO verifies unchanged parent/stream ownership. Shared thread
  tests cover Timeout translation, explicit values and a worker's original native
  timeout identity. The framed suite now has 17 cases.
- Verification: 8-core make stdlib passed; a combined build/test tool invocation hit
  its 180-second wall limit mid-suite without test failures. The separate full focused
  rerun passed all 17 framed and five thread cases. The 33-module regression command
  below then passed again with HARNESS-OK, final OK and no ERROR output. Static
  re-review found no further correctness issue. Emacs formatting checked parentheses
  and asserted only leading-whitespace changes; security scans are clean. Final
  unchanged stdlib build compiled no modules; tracked/new-file whitespace checks pass.
- Shared threads.ss/test changes are separately identifiable from the uncommitted
  ensemble increment. No commit/push or core build. The next implementation scope
  remains OPEN admission/public integration as recorded below.

### Framed Accepted-Stream Transport (2026-09-12, Uncommitted)

- Continued from clean HEAD 59d352a5 on v0.19-std-ensemble. This increment remains
  uncommitted for full-model review. No core/full build or push was performed.
- connection.ss now has one framed reader/dispatcher and one writer alongside the
  independent service/timer. The reader validates the 13-byte envelope, phase and
  native payload bound before allocation. DATA bypasses the copying payload codec;
  writer output keeps the encoded header and borrowed ring slice separate, handles
  short counts, and retains exactly one selected work item through actual IO.
- New internal connection-parent-start!(parent, initiator?, local-open-id,
  peer-open-id) is a restricted TRUSTED ALREADY-ACCEPTED setup boundary. Attach and
  register all accepted IO first, with no pending OPENs or external output borrow.
  Explicit u64/parity-checked marks describe committed local/observed peer OPEN
  wire order, not registry insertion order. Every registered ID must be covered.
  Startup seals registration. No ID allocation, asynchronous OPEN, fake acceptance,
  renewal, public objects, publication or callbacks are supplied by this boundary.
- Absent IDs at/below their owner's mark, including gaps, are non-live; bounded
  frames are discarded after envelope validation without decoding payload fields.
  Future IDs are fatal. DATA is bidirectional on both parities. Terminal registered
  streams are also non-live while work retains their slots. Retirement stays explicit.
- Dispatch serializes parent -> input -> output across lease/stream-expiry checks,
  lifecycle and raw transitions, not status-then-wrapper. stream.ss exports its
  existing locked expiry/abort primitives only for that internal use; callers hold
  both locks. Remote RESET suppression precedes notification and cancels queued
  local controls without touching actual borrows. Genuine protocol errors publish
  the first failure under parent mx before socket-first cleanup outside locks.
- Both transport handles (or startup failure) are published under parent mx before
  workers can perform IO/cleanup. Service handle publication now uses the same gate.
  Partial startup closes before joining. Parent join snapshots all three handles,
  skips itself, captures one absolute timeout and joins remaining workers after an
  uncaught worker failure. Caller Interrupt and other join-operation errors escape
  immediately, never masquerading as a terminated worker.
- Static review caught and repaired partial-write cleanup re-entering close through
  full release, an outer writer catch hiding distinct cleanup errors, and join
  treating caller cancellation as worker completion. Failed IO now attempts close
  once then uses release-only cleanup; no resumable partial framing, even on
  Interrupt. Parent.error retains the first failure, including #f, while distinct
  close/release exceptions propagate normally. Targeted runtime regressions pass.
- New connection-framed-test.ss has 16 passing cases looping over real confirmed
  Unix/TLS sockets: four-stream duplex minimum reads with 8-byte windows/4-byte
  frames, FIN/reverse IO, RESET/late frames/removal, HWM gaps/future IDs, invalid
  startup, header-before-payload validation, live protocol errors, ordinary stream
  expiry and connection expiry, held-lock dispatch expiry, idle/partial-header
  shutdown, real backpressure, short Writer counts, partial-frame failure, second
  spawn failure, distinct cleanup failures/no reclose and join-caller cancellation.
  Test source injection observes actual implementations and forwards short writes
  to native sockets; no production injection hooks or fake public interfaces.
- Development tests first failed on a compiled test-to-test module import, then
  interpreted implement binding order. Per vyzo, the fixture now imports via
  (only-in "./connection-transport-test.ss" ...); implement follows its procedures.
  Only the fixture export list changed in that existing suite. All failures resolved.
- Verification: clear conflict checks, authorized 8-core make stdlib passed; focused
  verbose run reported all 16 CASE-OK, SUITE-OK, MODULE-OK, HARNESS-OK and final OK.
  The 33-module command below passed with no ERROR output. gxc -S with build/lib
  passed connection.ss and the framed test. MCP's contextless syntax tool failed against its stale
  default timeout module; that is not counted as validation or repaired in core.
  Emacs etc/gerbil-mode.el formatting checked parentheses and asserted only leading
  whitespace changed. A final formatting-only production rebuild passed; its
  unchanged follow-up compiled zero modules. The final verbose 16-case run also
  passed after aligning all fixture role flags with physical responder/initiator
  ownership. Security scans are clean except the existing false unused-mode warning
  in the confirmed transport fixture. Tracked/new-file whitespace checks passed.
  The assertion audit's five multiline-operator warnings were inspected: all have
  actual => or ? assertions. No unresolved implementation/test failure remains.
- Next: review this uncommitted increment, then implement real OPEN/ACCEPT/REJECT
  with authorization, pending reservations, wire-order ID observation/commit and
  concrete public Stream/Connection objects. Do not extend the startup marks by
  taking max accepted ID: pending/rejected OPENs advance independently of acceptance.
  Continue into public Network listen/connect, election publication, paired callbacks
  and joined shutdown. Reach the approved public-only original-lease end-to-end test
  before renewal. Existing build/ownership/Interrupt constraints below still apply.

`export GERBIL_BUILD_CORES=8 && make stdlib`

`./build.sh test -v 5 std/ensemble/network/connection-framed-test.ss`

`./build.sh test std/error-test.ss std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Fast Model Implementation Restart (2026-09-12)

#### Repository And Verified State

- Branch v0.19-std-ensemble; HEAD 853f126c. Worktree was clean before this
  documentation-only handoff update. No implementation draft is pending.
- 930ab6d3 contains the reviewed fixed-lease/socket ownership boundary and was
  pushed. Later local commits are 337979b8 (public end-to-end milestone), b10054c1
  (exception-only cleanup primitive/macro and eight core tests), f7b3bac4 (Emacs
  support), c6ebead6 (non-ensemble adoption), and 853f126c (ensemble adoption).
- Core stage1 and stdlib were rebuilt with 8 cores after the new primitive. The
  45-module regression command in the cleanup audit below passed; unchanged make
  stdlib is a no-op. No pending build, failing test or recovery task remains.

#### Next Increment: Framed Socket Transport

- Resume implementation, not another optimization audit. Connect actual socket IO
  to the existing parent/scheduler: one reader/dispatch worker and one writer,
  retaining the independent parent service/timer. Use planned connection.ss unless
  a concrete module dependency warrants discussing a boundary change with vyzo.
- Writer consumes connection-parent-next!, writes the encoded header and borrowed
  payload slice through high-level std/io, handles Writer short counts, and releases
  through connection-parent-release! only after actual IO relinquishes the buffers.
  No concatenated DATA copy or second selected-frame backlog. Partial-frame failure
  closes transport/parent before cleanup; never resume framing after abandoning IO.
- Reader validates the 13-byte envelope/type/length before allocating payload,
  then dispatches accepted-stream DATA, credit, FIN and RESET with connection-fatal
  handling of genuine framing/protocol errors. Use the fixed Reader need/EOF
  contract; do not reintroduce workarounds for the shared bugs fixed in f2ad527e.
- Establish bounded ID/lifecycle bookkeeping required by dispatch. Physical
  initiator owns odd IDs and responder even; DATA is bidirectional regardless of
  ID ownership. Absent IDs at/below their owner's high-water mark are non-live and
  their bounded late frames are discarded; unknown future IDs are protocol errors.
  Never reuse/wrap IDs. The current raw registry has no high-water/parity policy.
- Future OPEN observes/commits IDs before asynchronous admission completes. Do not
  silently equate accepted-object insertion order with OPEN wire order or implement
  an unrestricted max-ID registration shortcut. If the first bridge needs a
  restricted already-accepted setup boundary, state that limitation explicitly
  and discuss significant API changes rather than inventing fake OPEN behavior.
- Serialize lifecycle lookup/dispatch against reset, expiry and retirement.
  A status check followed by an unguarded StreamIO call is not atomic. Distinguish
  ordinary terminal/expired streams from actual peer protocol violations at the
  state transition, not through blanket Closed/Timeout catches or error text.
- Attach only after full identity/UCAN/CONFIRM completion and setup ownership/IO
  handoff. The existing parent already clears handshake IO deadlines, enforces its
  fixed lease, closes the socket outside locks, and preserves borrowed ownership.
  Do not duplicate those policies. Publish worker handles safely before observable
  callbacks/cleanup; close before joining, join outside locks, never self-join.
- Aim for a real Unix/TLS multi-stream byte-path test with bounded backpressure,
  large minimum reads, FIN, RESET, late frames, malformed input, lease expiry,
  blocked IO shutdown and partial-startup failure. Preserve sibling isolation.

#### Constraints To Carry Forward

- Prioritize the approved public-only vertical slice after framed transport:
  authorized OPEN, concrete public objects, network listen/connect orchestration,
  callback pairing and shutdown. Reach the first original-lease end-to-end test
  before renewal; renewal is still required for the complete API. No placeholder
  public methods or interface-only dispatch tests.
- Parent scheduler transitions require parent serialization; socket IO and joins
  must not hold that lock. Lock order remains parent -> input -> output -> wake.
  Wake bits are bounded and independent for service/output. Do not mutate a queue
  while traversing its noncopying in-queue iterator.
- Use spawn-thread, never raw Gambit thread creation. Intentional asynchronous
  cancellation uses fresh Interrupt instances at known-safe boundaries. Retry only
  Interrupt, not ordinary errors; mandatory ownership cleanup still handles all
  failures, including raised #f. Preserve first-failure identity across threads.
- Use unwind-protect! only where body and transitive calls cannot escape AND early
  exception cleanup is safe. Keep the dynamic parent/stream lock protector: inner
  finally clauses must finish scheduler accounting before the outer lock releases.
  Persistent constructor outer cleanup similarly waits for transaction unlocking.
- Nullable types use :? and dotted access after a nonfalse guard. ConnectionParent
  has a custom constructor because the generated nullable-interface constructor
  issue is deferred; allocation supplies #f for fields needing that initial value.
- Follow std/AGENTS.md, use apply_patch, and indent with Emacs etc/gerbil-mode.el
  plus appropriate local macro hints. Verify formatting changes only whitespace.
- Check build conflicts, use `export GERBIL_BUILD_CORES=8 && make stdlib`, and run
  tests through `./build.sh test ...`. No further core/full build is authorized by
  this continuation; the required core environment is already built. Never set
  GERBIL_HOME manually. Use build/lib for MCP introspection of this checkout.
- Persistent cookbook_path is
  /home/vyzo/.local/state/opencode/gerbil-mcp/cookbooks.json; features_path is
  /home/vyzo/.local/state/opencode/gerbil-mcp/features.json. Pass paths explicitly;
  do not create repository data/ or put durable discoveries in /tmp.
- Leave the next implementation increment uncommitted for full-model review.
  Update this handoff with exact scope, tests, failures and remaining work. Ask vyzo
  for significant design departures; do not turn prerequisites into endless
  isolated helpers instead of advancing the agreed public milestone.

### Reviewed Cleanup Adoption Commit (2026-09-12)

- vyzo approved committing the remaining ensemble cleanup conversions, selection
  guidance and audit record. Core primitive/macro/tests are in b10054c1, Emacs
  support in f7b3bac4, and non-ensemble stdlib conversions in c6ebead6.
- This commit contains the remaining audited ensemble conversions and comments,
  std/AGENTS.md guidance, and this handoff. The successful 45-module regression
  and builds recorded below cover these changes; no executable edits followed.
- Continuation-aware protection remains where callbacks may escape or inner
  finalizers must finish before outer resources are released. Next network work
  remains the approved framed-transport/public-API milestone. No push authorized.

### Exception-Only Cleanup Audit (2026-09-12, Uncommitted)

- Preserved vyzo's new unwind-protect! macro, runtime export and Emacs support.
  Corrected the with-exception-handler spelling and marked unwinding before fini
  on both normal and exception paths. The normal path also avoids repeating fini
  after a returning handler. Exception cleanup and forwarding run under the exact
  saved handler via ##with-exception-handler, preventing handler reentry.
- New gerbil/test/control-test.ss has eight cases: zero/one/multiple return values,
  cleanup before nonabortive handlers, exception identity, cleanup-failure
  precedence, handler-context restoration, macro finalizers, mixed fast/dynamic
  cleanup order, and deliberate continuation-escape bypass. The fast form does
  not promise continuation-escape cleanup or reentry protection.
- Audited all explicit production stdlib unwind-protect sites (68 in 22 modules),
  plus 34 try/finally clauses as a secondary inventory. This was a source/call-chain
  audit, not an assertion that textual absence of call/cc proves safety.
- Converted 31 explicit sites in 12 modules, with concrete internal/native bodies:
  crypto/kdf (2), os/device (1), log/rotate stop/join (1), ensemble/keystore/crypto
  (3), memory (2), persistent (8), store (4), ensemble/ucan/context cache clearing
  (1), ensemble/network/auth (1), tls (2), listener cleanup (4), sync/rwlock (2).
  RWLock acquisition loops now use the fast primitive directly; removed redundant
  saved-handler forwarding layers while preserving owned-mutex checks, canceled
  writer withdrawal, wakeups and cleanup before outer handlers acquire a read lock.
- Kept continuation-aware protection for callback-taking file/tempfile/buffered-IO
  helpers, generic keystore backend/transaction operations, generic DB/Statement
  cleanup, configurable writer/port dispatch, and network monitor callbacks.
  Other try/finally forms were not mechanically rewritten.
- Kept the persistent-keystore constructor's outer protector: its nested generic
  transaction must unlock storage before constructor cleanup closes devices.
  Likewise an attempted fast with-stream-io-lock conversion was rejected in static
  review: it could unlock the parent before inner dynamic finalizers finish queue/
  accounting updates. Restored the original try/finally and documented why. Core
  tests now explicitly demonstrate this fast-before-inner-dynamic ordering hazard.
  No runtime failure was observed in the initial focused run; static review, not
  a failing test, identified the unsafe lock-helper conversion.
- Verification: authorized 8-core make stage1 passed. Core control/sugar tests then
  passed. After selective conversion, 8-core make stdlib passed; final incremental
  build and unchanged second build passed, with the second performing no compilation.
  Only the existing std/net/request deprecation warning remains. The full command
  below passed all 45 modules with HARNESS-OK, final OK and no ERROR output.
  Security scan findings were existing import/protocol/log strings, used-parameter
  false positives and false executable-IO matches on core runtime export lists;
  no actionable new finding. Whitespace checks passed. No benchmark-derived speedup
  is claimed, no commit or push. Broad callback/continuation behavior remains intact.
- Recorded selection guidance in std/AGENTS.md. This optimization does not advance
  the pending public-network milestone: next remains framed socket transport and
  the approved public API vertical slice before renewal.

`./build.sh test gerbil/test/control-test.ss gerbil/test/sugar-test.ss std/error-test.ss std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/ensemble/keystore/... std/crypto/... std/log/system-test.ss std/io/file-test.ss std/io/util-test.ss std/os/pipe-test.ss std/sync/threads-test.ss std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Approved Public End-To-End Milestone (2026-09-12)

- vyzo approved prioritizing a coherent public-API vertical slice over further
  isolated helpers. Current implementation is committed and pushed in 930ab6d3;
  its tests exercise internal APIs, not completed public Network orchestration.
- Next increment: move actual framed bytes over sockets using scheduler-driven
  output and a reader/dispatch worker, with protocol-state validation and bounded
  late-stream-ID handling. Preserve current flow control, expiry and ownership.
- Then implement OPEN/ACCEPT/REJECT, stream authorization/admission and pending
  reservations, alongside concrete public Stream and Connection objects.
- Wire new-network, listen! and connect! through existing setup/election machinery,
  one-live-connection publication, joined callers, callback pairing and blocking
  network shutdown. These stages overlap; use reviewable increments that advance
  the public vertical slice rather than adding placeholder public interfaces.
- First public-only end-to-end test: construct two networks with real capability
  contexts and monitors; listen and connect; open an authorized protocol stream;
  receive it through on-open-stream; exchange bytes bidirectionally; finish with
  FIN; close both networks; assert callback pairing and shutdown completion.
  Connection and stream exchanges stay within their original authorized leases.
- Reach this milestone before implementing renewal. Renewal remains required for
  the complete agreed API; this sequencing decision does not remove or weaken its
  requirements, and the initial milestone must not claim full API completion.
- Estimated remaining scope is three to five bounded implementation/review
  increments absent further shared-library blockers. This is a planning estimate,
  not a time commitment or evidence of implemented behavior.

### Reviewed Fixed-Lease Commit (2026-09-12)

- vyzo authorized committing the remaining work and pushing v0.19-std-ensemble.
  This checkpoint accompanies the fixed-lease/socket ownership integration,
  Interrupt-specific recovery, custom ConnectionParent constructor, regression
  tests, documentation and std/AGENTS.md conventions.
- Shared prerequisites are isolated in preceding commits: 8eed7816 adds Interrupt,
  1f2c9e21 fixes RWLock acquisition cleanup, and f2ad527e fixes socket Reader minimum
  handling. They are not folded into this ensemble commit.
- Final production validation is the successful 8-core build, no-op follow-up
  build and full 32-module regression recorded below. Subsequent timing-only test
  edits passed the complete 23-case transport suite twice, reducing wall time from
  152.4 seconds to about 108 seconds. Static/security/whitespace checks passed;
  only the reviewed false unused-mode fixture warning remains.
- Next increment remains actual transport dispatch/workers and protocol lifecycle
  integration. Attachment requires completed authentication/CONFIRM and relinquished
  setup ownership; it does not implement OPEN, renewal, publication, callbacks or
  public Network/Connection/Stream objects. The nullable-interface generated
  constructor issue remains explicitly deferred; keep the custom initializer.

### Transport Test Timing (2026-09-12, Verified, Uncommitted)

- Timing-only edits to connection-transport-test.ss: non-expiring fixtures use
  5-second leases instead of 60; later stream-expiry margins are 5 seconds instead
  of 30, including matching assertions. Those margins are not direct waits.
- Seven expiry-only cases (22 Unix/TLS scenarios) use 2-second instead of 4-second
  leases. The two old-handshake-deadline read/write cases keep 4-second leases so
  their IO remains blocked beyond the unchanged 2-second handshake deadline.
  Handshake headroom remains 1 second; IO timeouts, gates, joins, real establishment,
  and the complete 23-case coverage matrix are unchanged. No production edits.
- Authorized focused baseline passed in 152.418 seconds wall time (54.990 user,
  2.539 system). Two revised verbose runs each reported 23 CASE-OK, SUITE-OK,
  MODULE-OK, HARNESS-OK and final OK: 107.939 seconds (54.350 user, 2.428 system)
  and 108.405 seconds (54.428 user, 2.488 system). Roughly 44 seconds / 29% saved,
  from shorter actual expiry waits rather than the 60/30-second margin changes.
- Commands, from the repository root; Bash timing was used because /usr/bin/time
  is unavailable. Baseline omitted `-v 5`; both revised runs included it:

  ```sh
  bash -c 'TIMEFORMAT="BASELINE wall=%3R user=%3U sys=%3S"; time ./build.sh test std/ensemble/network/connection-transport-test.ss'
  bash -c 'TIMEFORMAT="AFTER-1 wall=%3R user=%3U sys=%3S"; time ./build.sh test -v 5 std/ensemble/network/connection-transport-test.ss'
  bash -c 'TIMEFORMAT="AFTER-2 wall=%3R user=%3U sys=%3S"; time ./build.sh test -v 5 std/ensemble/network/connection-transport-test.ss'
  ```

- Balance check passed. Security scan reported only the existing low false positive
  for the fixture's used mode parameter. No production rebuild was needed or run;
  tests load this source directly. No commit; unrelated dirty work is preserved.

### Explicit Interrupt Validation (2026-09-11, Uncommitted)

- Implemented vyzo's explicit Interrupt policy: std/error exports Interrupt and
  Interrupt?, inheriting Exception and StackTrace but not Error. Fresh instances
  capture their stack on raise. Intentional asynchronous cancellation fixtures use
  Interrupt; ordinary Error/Closed/Timeout/#f remain distinct failure tests.
- Only Interrupt-specific handlers retry interrupted operations. Mandatory resource
  cleanup remains unconditional. Parent close phases avoid replaying native close
  after a later wake/abort failure, and failed selection now uses release-only
  cleanup rather than indirectly closing the socket twice. Source-loaded counting
  regressions cover ordinary failures, Interrupt, a failed retry, and selection
  cleanup while preserving an earlier external borrow.
- ConnectionParent.socket retains :? StreamSocket. Runtime tests exposed the
  generated nullable-interface constructor/setter cast bug; core repair is explicitly
  deferred. Its custom constructor initializes only scheduler, mutex and wake;
  allocation supplies #f for the remaining slots. No predicate-wrapper fallback,
  unchecked initialization setter or core change remains.
- Validation also caught and fixed error-test's missing typed binding for dotted
  continuation access and parent close returning the admission phase's socket rather
  than void. An earlier build was interrupted by vyzo; a clear conflict check and
  completed rebuild followed. These development failures are resolved.
- Final 8-core make stdlib passed; the unchanged follow-up build performed zero
  compilations. Focused verbose tests passed both Interrupt cases, all six RWLock
  cases and all 23 transport cases. The full command below passed all 32 modules
  with HARNESS-OK, final OK and no ERROR output. Connection verification and changed
  source security scans passed apart from the existing false unused-mode fixture
  warning. Whitespace checks passed. No commit/push; previous pending entries below
  are superseded by this checkpoint, and all earlier dirty work is preserved.

`./build.sh test std/error-test.ss std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Next Cleanup Reclose P2 (2026-09-12, Unverified)

- Main reports that Interrupt std/error and its tests pass. Main also supplied the
  three-nonfalse-field ConnectionParent initializer, retaining `:? StreamSocket`,
  and corrected stop-admission to return void. Those changes are preserved; the
  nullable-interface core constructor issue remains deferred by vyzo.
- Fixed next's indirect second close: its failure boundary attempts parent close
  once, then releases only its own untransferred work through the private
  connection-parent-release-owned! helper. It no longer calls full parent-release!
  from finally. Earlier consumer borrows are still excluded by the existing capture.
- Both parent-release! cleanup branches use the same release-only helper after
  their close attempt. The helper retries only Interrupt while work is in flight;
  notification has its own finally/retry scope, outside parent mx. No close calls,
  new policy fields, public exports, constructor changes or recovery framework.
  Successful cleanup preserves the prior failure; ordinary release failures
  propagate without retrying native close. Abort remains an attempt, not a new
  promise that arbitrary failing cleanup always completes successfully.
- The source-injection module now loads real next and the private helper. Added
  Unix/TLS cases for post-commit DATA header failure, post-selection lease failure,
  and lease rejection with an earlier consumer borrow. Native close hooks inject
  Error/Closed/Timeout/#f; a post-close wake injects Interrupt. Counters require
  exactly one native close and one owned release (zero for an earlier borrow),
  preserving bytes/accounting until ownership ends. Ordinary post-release faults
  also propagate without native retry. A separate exact-mutex-gated fresh Interrupt
  test covers release acquisition after successful close, with finite rooted joins.
- This repair owns connection.ss, connection-transport-test.ss, connection.md and
  this handoff only. No builds, compiler checks or runtime tests were run; main is
  sole builder and must rebuild/run the focused suites before verifying this repair.
- Static checks pass: both source files balance; production has no duplicate
  definitions; the transport assertion audit is clean. Emacs checked parentheses
  and for-each shapes (1 production, 20 transport), formatting only the changed
  forms with absolute paths, local macro hints and a leading-whitespace-only
  assertion. Security scans report no production issue and only the existing low
  false positive for the transport fixture's used mode parameter.
- Persistent tool data must use
  /home/vyzo/.local/state/opencode/gerbil-mcp/cookbooks.json. The older checkpoint's
  /home/vyzo/src/gerbil-mcp/data path is not the authoritative persistent location.
  Updated explicit-interrupt-safe-boundary-retry there with the indirect-reclose
  warning and pending runtime status, superseding the unsafe background example.

- Constructor review: ConnectionParent retains `:? StreamSocket` with a custom
  initializer for scheduler, mutex and wake only. Allocation supplies #f for the
  other fields; no checked or unchecked socket setter is needed for initialization.
  The generated nullable-interface constructor issue remains deferred. Latest
  build was interrupted by vyzo; final Interrupt/constructor validation is pending.

### Explicit Interrupt Policy (2026-09-12, Unverified)

- This checkpoint supersedes earlier verification claims for the current dirty
  sources. Main is the sole builder. No build, compiler check or runtime suite was
  run for this policy change; the installed `:std/error` still lacks Interrupt.
- Parallel-agent `std/error` work supplies `Interrupt`/`Interrupt?`; this pass owns
  network production/tests/docs and the stdlib convention. RWLock production and
  native socket/SSL changes remain untouched; RWLock edits are cancellation fixtures
  only, retaining ordinary body-error/outer-handler propagation coverage.
- All network cancellation-retry catches now use `(catch (Interrupt? e) ...)`.
  Parent close separates admission, native close, wake and abort recovery, avoiding
  whole-close replay on an inner rethrow. Closed-parent release cleanup is outside
  the operation catch and always ends the borrow via finally, even on nested failure.
  Standalone stream release retains all-failure ownership cleanup but does not
  repeat a completed release or attempted wake. Abort retry skips terminal streams
  whose leaf notification already owns recovery. False raised failures are not the
  with-stream-operation expected-EOF sentinel.
- Intentional asynchronous fixtures now allocate fresh Interrupt instances; the
  queued first-failure #f fixture and generalized ordinary-error propagation cases
  deliberately remain ordinary failures. StreamIO cancellation delivery now uses
  exact finite wait gates rather than scheduling delays.
- Added isolated source-loaded real close/wake boundaries to the Unix/TLS transport
  suite. Hooks count actual native closes and locked broadcasts, then inject Error,
  Closed, Timeout, #f or Interrupt. Both direct parent close and closed-parent DATA
  release assert no blind outer reclose, one retry only for Interrupt, and ended
  ownership. A nested ordinary failure on the Interrupt retry also reaches final
  release without a third close. No public facade, fake socket backend or production
  injection hooks.
- Static validation: all seven touched Scheme files pass delimiter balance and
  Emacs check-parens. Emacs used absolute paths and local macro hints, asserting
  leading-whitespace-only formatting changes. Production duplicate checks and the
  transport assertion audit pass; tracked and untracked whitespace checks pass.
  Read-only Emacs for-each shape checks pass on all seven files (82 calls total).
  Security scans report
  no issue except the existing low false positive for the transport fixture's used
  mode parameter. The reader tool returned no forms for the conditional test module,
  so that result is not counted as validation. Catch syntax was checked separately
  with a local predicate placeholder, not against the pending Interrupt runtime.
- Updated the persistent /home/vyzo/src/gerbil-mcp/data/cookbooks.json historical
  background-service recipe warning: arbitrary raising interruption and catch-all
  service retries are unsafe; only explicit cancellation has a bounded retry policy.
  Superseded it with explicit-interrupt-safe-boundary-retry, marking the new export
  and policy as pending main runtime verification rather than claiming a tested recipe.
- Main must rebuild the stdlib including std/error, then run error, RWLock,
  connection-transport, connection-parent, connection and stream-io suites. Re-run
  the broader network/native socket suites before upgrading this checkpoint.

Main-only focused command after rebuilding:

`./build.sh test -v 5 std/error-test.ss std/sync/rwlock-test.ss std/ensemble/network/connection-transport-test.ss std/ensemble/network/connection-parent-test.ss std/ensemble/network/connection-test.ss std/ensemble/network/stream-io-test.ss`

- Review type cleanup: ConnectionParent.socket now uses `:? StreamSocket` rather
  than a false-or-predicate contract. Recorded the nullable annotation convention
  in std/AGENTS.md. Builds/tests deferred during this review edit.
- Nullable typed values support dotted access after a nonfalse if/when check;
  use that narrowing rather than redundant casts. Recorded in std/AGENTS.md.

### Failure Ordering Review Fixes Verified (2026-09-11, Uncommitted)

- Fixed both latest review findings. RWLock acquisition now performs its real
  cleanup before invoking a saved outer exception handler. Writer withdrawal clears
  the waiting flag under the internal mutex before forwarding, so subsequent unwind
  cannot double-decrement. Raw and scoped canceled-writer tests require the outer
  non-abortive handler to acquire/release a read lock while the original reader
  remains held. The six default-enabled RWLock regression cases pass.
- Scheduler fatal transitions now publish the original error with closed state
  under parent serialization. Parent liveness/close adopts that error rather than
  manufacturing a competing diagnostic. Overflow, selection and leased release
  preserve first-failure identity, including raised #f. Two new Unix/TLS cases
  force queued next/close operations ahead of the failing worker's outer cleanup;
  all twenty transport lifetime cases pass.
- Final verification: clear build-conflict checks; 8-core make stdlib succeeded.
  Focused verbose RWLock/transport tests and the full 31-module command recorded
  below passed with HARNESS-OK, final OK and no ERROR output. An unchanged second
  stdlib build performed zero compilations. Changed-source security scan has only
  the existing false unused-mode warning in the transport fixture. Whitespace
  checks passed. No commit/push; shared fixes remain separable from ensemble.

### Fatal Error Publication Review P2 (2026-09-11, Uncommitted)

- Supersedes the verification status below for this source revision: PENDING MAIN
  BUILD/TEST VERIFICATION. Main is sole builder; no build, compilation or runtime
  tests were run for this repair. Prior compiled successes do not verify it.
- Owns only connection.ss, connection-transport-test.ss, connection.md and this
  checkpoint. No RWLock, native Reader/socket, StreamIO or other-agent edits.
- ConnectionScheduler.error accompanies closed? at mandatory overflow, parent-owned
  DATA/managed-control selection failure and leased-release failure, under parent mx
  before unwind. Parent liveness adopts the exact error; Parent.close also adopts
  an already fatal scheduler error rather than overwriting it with a competing close.
  First terminal transition wins; closed? distinguishes a stored #f from open state.
  Real observed expiry retains its own Closed error. Raw scheduler closed checks
  keep contextual defaults and raw synchronous cleanup remains unchanged.
- Added two transport cases: queued next versus service overflow, and queued next
  or explicit close versus raised #f in selection/leased release. Exact finite
  mutex waits queue the competitor before the failing worker releases parent mx.
  Both Unix/TLS fixtures assert original join/Parent.error/later-next identity;
  false-failure cases also require native read wake before held output unlock.
  Release starts only after the actual borrow ends; selection owns provisional
  work only. Existing promoted FIN/credit budgets and socket-first cleanup remain.
- No production injection hooks, message classification or exception hierarchy.
  Single raised blocking-boundary interruption only, not hostile arbitrary-instruction
  interruption. Main must rebuild and run the focused transport/parent/scheduler/
  StreamIO suites below before upgrading this pending checkpoint.
- Static checks pass: delimiter balance, production duplicate definitions, transport
  assertion audit, Emacs check-parens and two-argument for-each shapes (1 production,
  15 transport), plus tracked/new-test whitespace checks. Emacs formatting asserted
  leading-whitespace-only changes. Security scans found no production issue and only
  the existing low false positive for the fixture's used mode parameter. The first
  Emacs shape-check script timed out due to its own search-position handling; its
  corrected read-only rerun passed. None of these checks compiles or runs Gerbil code.

Main-only focused verification after rebuilding the changed sources:

`./build.sh test -v 5 std/ensemble/network/connection-transport-test.ss std/ensemble/network/connection-parent-test.ss std/ensemble/network/connection-test.ss std/ensemble/network/stream-io-test.ss`

### Fixed-Lease Boundary Verified (2026-09-11, Uncommitted)

- Continued from 2b4e1eb2 with a clean worktree. This increment establishes the
  parent socket-lifetime boundary needed before transport dispatch/workers. New
  connection-parent-attach! consumes a separately owned, already established socket
  and a fixed authenticated expiration. The caller must complete CONFIRM and stop
  handshake IO/ownership first. Attachment is not authentication or publication.
- The parent removes handshake IO deadlines, atomically attaches the socket/lease,
  and retains them after closure. The existing timer includes connection expiry
  even with no active streams. Registration and selection check the lease after
  acquiring their locks. Native socket close occurs outside parent/stream/wake locks,
  before possibly blocking stream cleanup. No new transport worker is started yet.
- The lease check at DATA/FIN release runs under the actual stream output lock.
  Expiry defers release with ownership retained; the parent closes the socket, aborts
  streams and retries release. Parent-owned unexpected selection failures retain
  provisional DATA or promoted FIN/credit until that same cleanup boundary. Earlier
  consumer borrows are never released by a failed next! call. Raw standalone cleanup
  semantics remain unchanged. Parent-owned control overflow defers its abort sweep
  so it cannot block native close while holding the operation mutex.
- Three source-level shared Reader predicate fixes are kept separately identifiable:
  io/socket/stream.ss and net/ssl/socket.ss now test remaining need at EOF; TLS also
  returns when the exact minimum is satisfied rather than unnecessarily reading
  again. New shared tests io/socket/stream-test.ss and net/ssl/socket-test.ss have no
  ensemble dependency. The old binaries failed eight of the fifteen cases; all
  fifteen pass after the fixes. No redundant network Reader workaround was added.
- Native-close interruption exposed a separate shared RWLock issue. do-with-rwlock
  now exits only after completed entry, and canceled writer registrations are
  withdrawn under the internal mutex with appropriate wakeups. Acquisition unwind
  only releases the current thread's internal mutex. The isolated rwlock.ss/test
  changes reproduced four failures before the fix; all five new default-enabled
  regression cases pass. Legacy optional RWLock stress tests remain opt-in.
- Real Unix and TLS tests complete identity/UCAN/CONFIRM before handoff, then cover
  lease-only shutdown, blocked socket reads/writes, attachment rejection/races,
  partial timeout setup, socket-before-abort ordering, borrowed DATA and FIN,
  output-lock expiry, mandatory overflow, and interrupted native/stream cleanup.
  connection-transport-test.ss now has 18 passing cases. No fake public interfaces,
  network FFI, raw thread creation or general cancellation framework was added.
- Development validation found and fixed two test bugs: shutdown must use SHUT_WR,
  not DIRECTION-OUT, and a for-each list was outside its call. An existing managed
  deadline fixture also over-constrained the closer's wake state. It now asserts
  the elapsed absolute deadline and selection's held locks directly, preserving
  the intended no-grant/no-FIN-success interleaving without depending on wake order.
- Final verification: clear build-conflict checks; 8-core make stdlib passed, and
  the subsequent unchanged build performed zero compilations. The command below
  passed all 31 modules with HARNESS-OK, final OK and no ERROR output, including all
  new shared and network suites. Production verification and test compile checks
  passed using build/lib. Changed-file security scans found only the reviewed low
  false unused-mode warning in the transport fixture (mode selects Unix/TLS).
  Emacs indentation used absolute paths/local macro hints and leading-whitespace
  assertions. Whitespace checks passed. No full/core/Gambit build or commit/push.
- Independent static rechecks found no remaining material issue within this bounded
  lifetime/closure scope. Socket operations can still wait for legitimate native
  lock holders; this is not arbitrary-instruction or repeated-hostile-interruption
  atomicity. Connection renewal, OPEN, protocol-ID/slot state, actual transport
  dispatch/workers, callback publication and public objects remain subsequent work.
- Review/commit the shared Reader fixes and RWLock fix separately from ensemble if
  desired for cherry-picking. All remain uncommitted; no further commit is authorized
  by this continuation. This verified checkpoint supersedes pending entries below.

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/sync/rwlock-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Exceptional Release And Selection Handoff (2026-09-11, Uncommitted)

- Main reported rebuilding network/RWLock and passing shared Reader 15, RWLock 5,
  parent 21, scheduler 27 and stream 19 cases, plus most transport cases. The run
  exposed the Unix partial-setter fixture's DIRECTION-OUT/SHUT_WR mixup and the last
  for-each's misplaced closing delimiter. Fixed those first: import native SHUT_WR
  for the high-level shutdown call, and keep the quoted boolean list inside for-each.
  No Reader, native socket or RWLock source changes belong to this revision.
- Leased StreamIO release now propagates unknown exceptions without local error
  abort/release, including interruption waiting for output before its lease gate.
  Local stream authorization/drain expiry is observed directly rather than catching
  arbitrary errors as deadline observations; its normal stream-only cleanup remains.
  Successful leased release omits the redundant leaf acquisition after release;
  the parent wrapper notifies. connection-work-release! starts leased accounting
  retained and leaves it retained on exceptions, marking the scheduler failed.
  Parent catch closes native IO outside operation mx, then finally aborts/releases
  ungated. Partial local progress is handled by idempotent primitives and once-only
  work accounting. Consumers must not access payload/header after attempting release.
- Selection had the same real ordering gap, so the repair also uses parent-owned?
  for its error handoff. stream-io-data-commit!(io, quantum, [scan? = #f],
  [defer-cleanup? = #f]) can defer unknown-error abort to its prepared owner. Parent
  scheduling precreates one provisional DATA work before commitment with the stream
  reference already retained in the existing in-flight slot. Header/record completion
  failure cannot orphan a committed slice. No-DATA attempts drop just the provisional
  record. Raw schedulers keep their local abort/release behavior.
- A failed parent-owned managed FIN/credit head is promoted from the queue into that
  same in-flight slot, without returning budget. Parent.next captures newly retained
  work even when selection raises, but remembers an older consumer borrow and never
  releases it as failed selection work. Native close precedes abort and cleanup of
  only new untransferred work. No added queues, worker/dispatch layer, error hierarchy,
  procedure slots, public facade, renewal or ID-history policy. Transient provisional
  allocation during parent scans is bounded by the existing scan, not a backlog.
- New real Unix/TLS regressions cover interrupted leased DATA/FIN acquisition after
  expiry while output is still held; native Reader must finish before unlock and work
  remains retained. Selection cases cover DATA/FIN/credit acquisition interruptions,
  interruption of next behind an earlier DATA borrow, and post-commit encoding faults
  using the raw suite's controlled DATA-limit/managed-ID technique. They check native
  closure, retained ownership/budgets through blocked cleanup, exact failure identity,
  retirement and unchanged old-borrow ownership. These are not OOM simulations or
  new live configuration semantics.
- Scope is specifically parent-owned release/selection error cleanup and the earlier
  mandatory-overflow fix. Ordinary local expiry/status/reset paths and notifier retry
  synchronization are unchanged; this is not a global guarantee that no code blocks
  under operation mx. Legitimate stream/native lock holders can still delay progress.
  The shared native fixes are already built by main, but this revision remains
  PENDING MAIN BUILD/TEST VERIFICATION. No compiler/artifact generation, build or test
  run was performed here. Artifact-free delimiter, duplicate-definition, static
  arity and assertion checks pass. Emacs checked parentheses and the exact two-argument
  shape of every for-each (14 in the transport test, one in connection.ss). Formatting
  used absolute paths/local hints with a leading-whitespace-only equality check;
  stream formatting stayed within DATA commit/release. Source security scans are
  clean; the test's low mode-parameter warning is the reviewed transport-selection
  false positive. Tracked/new-file whitespace checks pass. These are not compiler
  or runtime verification of the new ownership paths.
  Only connection.ss, stream.ss, connection-transport-test.ss, their docs and this
  checkpoint are owned. No commit/push; main remains sole 8-core builder.

Main-only verification after authorization and a clear build-conflict check:

```sh
export GERBIL_BUILD_CORES=8 && make stdlib
./build.sh test -v 5 std/ensemble/network/connection-transport-test.ss std/ensemble/network/connection-parent-test.ss std/ensemble/network/connection-test.ss std/ensemble/network/stream-io-test.ss
```

### Lease Release And Fatal Cleanup Review (2026-09-11, Uncommitted)

- Main reported compiling the preceding parent patch and passing 15 Reader tests.
  Independent review then identified the output-lock lease race, mandatory-overflow
  abort-before-native-close path, and interrupted parent-release cleanup gap. This
  repair changes only connection.ss, the narrow stream.ss release boundary,
  connection-transport-test.ss, adjacent connection/stream docs and this checkpoint.
  Preserve all other-agent native socket/Reader/RWLock edits. No commit or push.
- stream-io-data-release!(io, [connection-expire = #f]) and
  stream-io-fin-release!(io, [connection-expire = #f]) check an optional fixed absolute
  integer lease under output-mx after acquiring it. If expired, return #f without
  abort/release/notification; the parent still owns all work and can close its socket
  before blocking stream cleanup. Default calls retain void results and standalone
  stream deadline/interruption cleanup. No StreamIO.expire mutation, connection
  backreference, procedure slot, callback framework or new error hierarchy.
- connection-work-release!(work, [connection-expire = #f]) carries that gate and
  retains buffers/in-flight accounting on its explicit #f result. Parent release
  turns the source observation into closed state under operation mx, then closes
  outside it before abort and ungated release. The source observation is authoritative
  even across a backward clock adjustment. A post-source parent check also closes
  siblings if the connection expired during a completed source release.
- Mandatory overflow on a parent-owned scheduler marks closed and raises before
  cancellation/abort; parent close reaches the high-level socket outside all parent/
  stream/wake locks first. The private parent-owned? boolean is set before service
  starts, not exposed as public config. Parent liveness also recognizes the fatal
  scheduler marker during handoff to close. Raw scheduler overflow retains its
  immediate abort semantics; existing raw tests/constructors need no change.
- Parent release cleanup now uses actual finally blocks around close/abort, including
  the catch path. A first interruption during cleanup may be rethrown by close after
  its retry completes, but ended DATA/FIN work still releases afterward. First stored
  parent failure stays unchanged; work-state guards return budgets once. A deferred
  source gate does not clear the cached buffer or pretend ownership already ended.
- Regressions extend FIN release to both parent-mx and actual output-mx waits past
  the connection deadline with later StreamIO TTLs. Added DATA/FIN output-lock expiry
  plus first interruption during parent close's sibling abort: service is parked,
  native close happens first, retained bytes/header/budgets are checked while cleanup
  remains blocked, then counts reach zero and the exact interruption propagates.
  Added mandatory-credit overflow with a 16-byte budget and held later sibling input
  lock; service alone must close the socket and wake its reader before that lock is
  released. No fallback/second closer is responsible for the asserted progress.
- Added real Unix/TLS native RWLock acquisition-interruption coverage using the
  permitted basic-socket concrete view only for lock metadata and a held read lock.
  Close still goes through StreamSocket; the test checks retry waiter accounting,
  reader wake, exact interruption and preserved first failure. This depends on the
  separately owned RWLock fix and is NOT runtime-verified yet. Real native read-lock
  holders remain a close prerequisite; no hidden native timeout, forced takeover or
  raw-device/FFI operation was added. A safe Unix-only half-close case also verifies
  input timeout setup succeeded before output setter failure consumed the socket.
  No claim of that independent directional failure is made for TLS.
- Verification PENDING MAIN BUILD/TEST RESULT. No build or tests were run by this
  repair. stream.ss and the expanded test pass gxc -S with build/lib; connection.ss
  currently stops on the old one-argument StreamIO release metadata in build/lib.
  Main must rebuild StreamIO/connection and the separate RWLock fix before running
  integration tests. Delimiter, duplicate-definition and assertion audits pass.
  Source security scans are clean; the test scan retains the reviewed low false
  positive for mode, which selects the fixture's transport branches. Emacs used
  absolute paths and local macro/fixture hints, checked parentheses and asserted
  leading-whitespace-only formatting with no trailing changes. Stream formatting
  was restricted to the release boundary. Tracked and new-file whitespace checks
  pass. Main's Reader results are not verification of these repairs. Main remains
  sole builder with GERBIL_BUILD_CORES=8.

Main-only commands after authorization and a clear build-conflict check:

```sh
export GERBIL_BUILD_CORES=8 && make stdlib
./build.sh test -v 5 std/ensemble/network/connection-transport-test.ss std/ensemble/network/connection-parent-test.ss std/ensemble/network/connection-test.ss std/ensemble/network/stream-io-test.ss
./build.sh test std/ensemble/network/... std/sync/rwlock-test.ss std/io/socket/stream-test.ss std/net/ssl/socket-test.ss
```

### Fixed Connection Lease And Socket Ownership (2026-09-11, Uncommitted)

- Based on 2b4e1eb2. Main selected the fixed-lease/socket ownership boundary before
  dispatch workers. This delegated increment owns only connection.ss, new
  connection-transport-test.ss, connection.md and this checkpoint. No commit/push.
  Preserve concurrent Reader fixes/tests in std/io/socket and std/net/ssl; those
  belong to the other agent/main. No stream.ss, handshake, build-spec or facade edit.
- New internal API: connection-parent-attach!(parent, socket, expire) -> void.
  It consumes a separately owned established StreamSocket even on rejection or
  setup failure. The caller must complete CONFIRM/credential validation and stop
  all handshake IO/ownership, including pre-TLS aliases, before handoff. This API
  trusts those prerequisites; it does not infer authority from TLS, typed handles
  or caller-supplied metadata. Raw TCP must never be substituted for its final TLS
  view. Resubmission of the already consumed socket/another native alias violates
  the ownership contract; rejecting a distinct second candidate leaves the existing
  live parent-owned socket untouched.
- Validated fixed expire is an unchanged future absolute Unix-second u64. Metadata
  validation is inside the consuming boundary, including malformed noninteger input.
  Input/output !NoTimeout replaces the handshake absolute IO deadline before taking
  parent locks, while the candidate is exclusively owned and quiescent. No public
  relative IO timeout policy/overrides, TTL recomputation or renewal setter. One-time
  publication takes operation -> wake locks, rechecks expiration and liveness, and
  signals both consumers. Socket/expire observations are retained after close,
  including after native TLS SSL state clears; no lifecycle getter was needed.
  Unattached standalone parents retain #f and no connection lease.
- Service waits on min(connection deadline, active stream/drain deadlines), including
  zero streams, all-retirable registries and existing output borrows. Registration
  checks after all locks; selection checks before/after stream-lock waits and cleans
  only untransferred selected work on late expiry. Service/RESET admissions and
  release also gate expiry. A delayed timer cannot let FIN release report successful
  drain. No new dispatch admission or transport worker was added.
- Close marks parent/scheduler closed under operation mx, preserving the first
  failure even when #f. It closes the retained high-level StreamSocket outside every
  parent/stream/wake lock, before blocking notification/abort cleanup or joins.
  Native-lock interruption retries close before that cleanup; concurrent/repeated
  close uses the same idempotent Unix/TLS view, not a second native owner. Existing
  one-raised-interruption limits remain. Since marking closed now precedes abort,
  a concurrent release completes close/abort outside mx before releasing ownership.
  Timers never release borrowed DATA buffers. Parent join still joins only service;
  expiry observed by that thread propagates its stored Closed, while an earlier
  external close can let service exit normally. No raw device/FFI/OS operations.
- New focused tests use real Unix AUTH or mutual TLS, identity-checked make-handshake,
  UCAN implicit-root verification and full CONFIRM before attachment. Their private
  drivers/accepted StreamIO fixtures are not public objects or a transport bridge.
  They cover idle/retirable/borrowed fixed expiry, blocked minimum header reads and
  backpressured Writer.write, replacement of both old handshake deadlines, invalid
  and second attachment, closed setup, 12 attach/close races per transport, sibling
  abort, DATA retention, delayed registration/selection/FIN release and interrupted
  abort/notification after native close. Deadlines are dynamic absolute values;
  waits/joins are finite and all new workers use spawn-thread. The suite is gated by
  config-have-sqlite for its real UCAN contexts. No Reader EOF workaround was added.
- Verification is PENDING MAIN AUTHORIZATION/RESULT. No build or runtime test was
  run by this increment. Source gxc -S passes with /home/vyzo/gerbil/build/lib.
  The new test's compile check stops at connection-parent-attach!, absent from the
  unchanged build/lib exports; it is NOT a successful test compilation. Balance,
  Emacs check-parens and test assertion audit pass. Source security scan is clean;
  the test scan's single low unused-security-parameter warning is a false positive:
  mode selects the Unix/TCP/TLS branches in the fixture. Emacs uses absolute paths,
  spaces, local stream-lock/transport/fixture hints and a leading-whitespace-only
  equality assertion, preserving trailing whitespace. Main remains sole builder
  with GERBIL_BUILD_CORES=8; all earlier successful runtime records are historical.
- Remaining integration is unchanged beyond the fixed lifetime boundary: no OPEN,
  renewal, ID history, callback publication, public Connection/Network/Stream or
  reader/writer dispatch workers. Future dispatch must check its state boundary and
  close on protocol/IO failure; an automatically queued stream RESET is not enough.
  Main separately owns review/build verification of the genuine Reader minimum/EOF
  fixes. Do not describe this increment as a completed transport bridge.

Main-only verification after authorization and a clear build-conflict check:

```sh
export GERBIL_BUILD_CORES=8 && make stdlib
./build.sh test -v 5 std/ensemble/network/connection-transport-test.ss std/ensemble/network/connection-parent-test.ss std/ensemble/network/connection-test.ss
./build.sh test std/ensemble/network/... std/io/socket/stream-test.ss std/net/ssl/socket-test.ss
```

### Reviewed Automatic Parent Commit (2026-09-11)

- vyzo approved this increment for commit. Includes ConnectionParent/StreamWake,
  automatic stream progress and idle expiry, pending-RESET retirement protection,
  expired final-credit rejection, and the 21-case parent suite. Network production
  and test workers now use spawn-thread; std/AGENTS.md records that convention.
  Handshake cleanup uses unwind-protect without the redundant catch/raise wrapper.
- Final verification is the successful 8-core build, unchanged no-op rebuild,
  57 focused cases and full 27-module regression recorded below. No executable
  changes followed those runs. This handoff is included in the authorized commit;
  no push. Review/development checkpoints below are historical.
- Next work remains transport dispatch/workers and protocol lifecycle integration.
  Connection lease enforcement, OPEN, renewal, callback publication and public
  Network/Connection/Stream objects remain unfinished. Preserve existing borrowed
  frame ownership, expiry checks and lock order when integrating the transport.

### Reviewed Expired Final Credit And Handshake Cleanup (2026-09-11, Uncommitted)

- Applied the approved review fixes only in stream.ss, connection-parent-test.ss,
  handshake.ss, connection.md, stream.md and this handoff. Preserved all preceding
  dirty work, including the spawn-thread migration. No commit or push.
- Managed control readiness and commitment now independently check authorization
  with current-time-seconds under both stream locks after applying active expiry.
  Fully graceful/retirable streams still have no idle deadline and are not aborted
  merely to discard final-read credit. Expired readiness returns #f; expired credit
  commitment returns 0 (FIN returns #f), without granting credit or generating RESET.
  Existing scheduler cancellation releases the stale reservation and its budget.
  Active expired streams retain their existing abort semantics. Retirement does not
  acquire a pending-credit condition, and direct Reader-after-expiry behavior is
  unchanged; this preserves graceful state, not a new direct-read EOF guarantee.
- Added parent case 21 using real receive DATA/FIN, Writer.close completed through
  parent FIN selection/release, and final Reader consumption before authorization
  expiry. A later-expiring sibling's DATA borrow prevents selection while service
  queues the final credit. Exact service/consumer waits and the real absolute expiry
  establish the boundary without metadata mutation or raw scheduler transitions.
  After release, stale credit is never returned, receive credit stays 7 and pending
  credit stays 1, the one-frame/17-byte reservation is released, EOF state remains
  graceful, removal succeeds, and fresh sibling DATA completes the bounded consumer.
  Cancellation may be performed by service readiness or selection commitment;
  the test does not claim to force which competing parent path wins.
- Removed run-handshake!'s redundant outer with-catch raise and obsolete raw-thread
  comment, leaving unwind-protect lifecycle ordering and cleanup intact. No local
  rethrow-only workaround or raw thread creation was introduced. Emacs used absolute
  paths with etc/gerbil-mode.el, with-handshake-step scheme-indent-function=3
  (self/before/after), and the stream/test macro hints. The formatter asserted that
  only leading whitespace changed, separately from the semantic patches.
- Intermediate verification: the new test's first compile check rejected an unbound
  peek; corrected it to the verified queue-peek export. Source inspection also fixed
  the expected cancellation state from nonexistent cancelled to existing released.
  Neither issue reached a runtime test. No build or runtime test failed.
- Final verification: clear build-conflict check; 8-core make stdlib succeeded,
  rebuilding stream, handshake and dependent connection/connector modules. The next
  unchanged build performed zero compilations. Only the existing std/net/request
  deprecation warning appeared. Focused verbose testing passed 21 parent, 12 handshake
  and 24 connector cases (57 total); the exact broad command below passed all 27
  modules, with HARNESS-OK, final OK and no ERROR output. All tests used root build.sh.
  MCP syntax/compile/lint/arity verification used /home/vyzo/gerbil/build/lib for all
  three edited Scheme files; all passed, as did their security scans, the parent
  assertion audit and tracked/untracked whitespace checks.
- Remaining scope is unchanged: no connection lease enforcement, OPEN, renewal,
  transport dispatch/workers, callback publication or public objects. This regression
  is an in-memory parent lifecycle test, not post-expiry socket transmission coverage.
  Existing single-raised-interruption limits remain in force.

```sh
export GERBIL_BUILD_CORES=8 && make stdlib
export GERBIL_BUILD_CORES=8 && make stdlib
./build.sh test -v 5 std/ensemble/network/connection-parent-test.ss std/ensemble/network/handshake-test.ss std/ensemble/network/connector-test.ss
./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss
```

### Parent Validation And Retirement Fix (2026-09-11, Uncommitted)

- Resumed the increment after vyzo's thread correction. Network workers and test
  helpers now use spawn-thread. The ownership-checked try/finally lock macro has
  no extra catch wrappers. Both interruption cases which abandoned mutexes under
  raw Gambit thread roots now pass with the standard Gerbil abortive thread root.
  The thread rule is recorded in std/AGENTS.md; no runtime primitive was changed.
- Review found removal could beat the automatic service pass after Reader.close,
  dropping a retirable aborted stream before any RESET existed. Parent removal now
  requires a terminal status snapshot and, on an open parent, an admitted/suppressed
  RESET for an aborted stream. Requiring a terminal snapshot also closes the race
  where active IO aborts between this check and the raw scheduler's retirement check.
  Existing control/borrow checks remain; remote suppression, graceful completion and
  shutdown retirement are preserved. The static recheck found no further in-scope bug.
- Added the twentieth parent test: removal is queued ahead of service under the
  parent mutex, then Reader.close triggers abort. Removal must fail without dropping
  the entry; it succeeds after RESET selection/release. The same case checks immediate
  removal after remote suppression and parent shutdown. Tests use exact wait states
  and finite joins, with spawn-thread at all worker entry points.
- Final verification: clear build-conflict checks; 8-core make stdlib succeeded with
  Done and only the existing std/net/request deprecation warning. The subsequent
  unchanged build performed zero compilations. Focused verbose parent tests passed
  all 20 CASE-OK entries; the full command below passed all 27 modules with HARNESS-OK,
  final OK and no ERROR output. Stream/connection verification, parent assertion audit,
  all 12 changed/new Scheme-file security scans and whitespace checks passed.
  Emacs indentation used absolute paths and local macro hints, checking leading
  whitespace only. No further compiler or runtime correction was needed for spawn-thread.
- The expanded thread-migration files, new parent test, parent implementation,
  documentation and handoff remain uncommitted for full-model review. No push.
  This supersedes verification deferrals and the raw-thread workaround below.
  Next work after review remains transport dispatch/workers and protocol lifecycle
  integration; connection lease enforcement, OPEN, renewal, public objects and
  callback publication are not part of this increment.

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Review Thread Correction (2026-09-11, Uncommitted)

- Supersedes the raw plain-thread approach and lock-handler workaround in the
  automatic-parent checkpoint below. ALL raw make-thread/thread-start! creation
  in network/*.ss production and tests now uses Gerbil spawn-thread. Actual
  runtime/thread.ss:56 defines spawn-thread(thunk, [name], [group]) and wraps
  thread-main's abortive handler, without spawn/spawn/name actor logging.
- Removed only the newly added explicit catch cleanup and misleading comment in
  with-stream-io-lock. Retained its ownership-checked try/finally, needed when CV
  waits release/reacquire locks. Do not convert this helper to do-with-lock or add
  identity catches to compensate for raw thread roots. Existing test result
  capture and assertions remain unchanged.
- spawn-thread starts immediately. Listener construction holds its existing mutex
  while storing self.worker; the worker takes that mutex before callbacks or
  self-close can observe it. The parent service does not use self.worker, so it
  needs no ready gate. Fixture helpers retain spawned handles before returning;
  their worker bodies do not depend on registration in the cleanup list. The
  connector attachment/shutdown race spawns closures in the original alternating
  order and retains both workers through the existing fixture helper.
- Expanded review scope includes listener.ss, handshake.ss and all affected network
  tests, plus src/std/AGENTS.md, connection.md, stream.md and this checkpoint.
  Preserved the dirty parent increment. Global skill/cookbook corrections are
  owned separately and were not edited. No commits or pushes.
- Source verification NOT RUN for this review state: no builds, tests, syntax
  expansion or compile checks, per REVIEW discussion. Only source inspection,
  delimiter balance and diff scans; historical successes below do not verify the
  current source. The former cookbook workaround is superseded, not guidance.

### Automatic Stream Parent (2026-09-11, Uncommitted)

- Started from clean 0c1580f8 on v0.19-std-ensemble. Owns connection.ss, stream.ss,
  new connection-parent-test.ss, the necessary connection-test.ss expectation/source
  fixture adjustments, connection.md, stream.md and this handoff only. No build-spec
  entry is needed for the auto-discovered test. No commit or push.
- Added concrete private ConnectionParent with its own operation mutex, raw
  ConnectionScheduler, passive StreamWake and ONE plain joinable service/timer
  thread. APIs: make-connection-parent; connection-parent-register!, next!, release!,
  reset!, remove!, close! and join!. The scheduler field is internal observation
  under the operation mutex, not an invitation to mix concurrent raw transitions.
- StreamWake lives in stream.ss, with one mutex, separate service/output CVs and
  coalesced bits. Both consumers clear their own pending bit BEFORE scanning; a
  notification during a scan survives, and neither consumer steals the other's
  wake. Service admission only signals output, not itself. Waits use absolute
  deadlines and explicitly reacquire after mutex-unlock! releases/waits.
- Lock order: parent-operation -> stream input -> output -> wake leaf. Stream IO
  notification only touches the leaf, never the scheduler/parent lock. All signals
  hold the associated mutex. Registration holds both stream locks and acquires the
  leaf before enqueue/attachment publication. Rejection/full/closed or interrupted
  acquisition cannot attach, mutate or abort a foreign IO; the permanent attachment
  is exactly once. There is no detach/rebind framework or callback slot.
- Notifications cover every positive partial read inside need, accepted write,
  initial Writer.close before waiting, credit receipt, inbound FIN/final consumption,
  DATA/FIN releases including error cleanup, and first abort. One interrupted leaf
  acquisition completes its notification before rethrowing, avoiding a missed
  terminal abort wake. Successful status/readiness observations never self-notify.
- stream-io-status applies expiry under both locks and returns aborted? plus the
  minimum active authorization/unfinished-drain absolute deadline. Aborted or fully
  finished/retirable streams have no deadline even when borrowed work/controls keep
  their registry entry. Timer service runs without next/release calls and continues
  while DATA/FIN is borrowed. Ordinary stream expiry/abort does not close siblings.
- Managed credit/FIN/reset logic has minimal entry-based factoring, avoiding repeated
  ID lookup in normal live sweeps. Normal observation/admission is O(N); cancellation
  may additionally traverse the bounded control queue, not claimed strictly O(N).
  Existing peek/enqueue/dequeue rotation and prepared replacements remain intact;
  no in-queue traversal mutates its source registry. The existing RESET fault module
  now extracts the new entry reset definition as well as reset/cancel/find.
- DATA scan mode now handles newly observed expiry at its source, dropping output
  before acquiring both locks to abort and continuing to a healthy candidate.
  Default direct-call raising behavior and normal output-only progress are unchanged.
  No caught Closed/Timeout/message classification was introduced. Unexpected parent
  failures close/propagate; the plain service joins through thread-join!/error.
  Closure state is separate from error truthiness, preserving raised #f as well.
- Remote reset suppression is recorded under the operation mutex before abort wake,
  cancelling queued local RESET without withdrawing in-flight work. Automatic abort
  RESET uses generic reason-closed, not exception-content inference. Removal remains
  explicit and requires actual stream/managed-control/transport retirement. Close
  aborts/wakes/stops but never releases an external borrow; release follows the actual
  end of transport use, and service join happens outside locks.
- The focused suite covers automatic duplex 24-byte need through 8-byte windows and
  Writer.close using only next/feed/release consumers; idle DATA wake; bounded bits,
  pre-sleep/during-scan wake boundaries; idle expiry; earlier drain rearm; DATA/FIN
  borrow expiry and sibling progress; Reader.close/remote reset; atomic registration,
  rejection and interruption; shutdown with blocked next/read/write/close; and single
  raised interruptions at wait/reacquisition/release/first-abort notification with
  actual lock owners retained. Synthetic drain metadata isolates the parent timer
  from a closer's own timeout. No sockets, production injection procedures or OOM.
- Historical development failure (root-handler workaround now superseded above):
  the first focused run found StreamWake take returning the
  field setter's object despite its void contract, and a real abandoned-stream-lock
  error when first-abort notification rethrew into a plain joinable thread root.
  Added explicit void and an outer catch/rethrow around the ownership-aware lock's
  unwind boundary: Gambit's uncaught thread termination does not unwind dynamic-wind
  frames by itself. The next focused run passed all then-current 18 cases. Existing
  scheduler and both stream suites also passed before this final test expansion.
- A pre-build balance check also caught an extra status-helper closer. The later
  test-only #f-failure extension briefly had an extra closing parenthesis, rejected
  by the focused harness reader before running cases. Both were corrected; no
  stdlib build failed. No unresolved runtime, compile or reader failure remains.
- Historical pre-review verification: build-conflict checks clear; sole-builder 8-core make stdlib
  succeeded with only stream/connection compilations, and its immediate unchanged
  second invocation performed zero compilations. The subsequent test-only correction
  also had a zero-compilation make stdlib. Only the existing std/net/request
  deprecation warning remains. The final focused command below passed all 19 cases;
  the full command below passed all 27 modules with HARNESS-OK, final OK and no ERROR
  output. The corrected parent suite therefore passed both focused and broad runs.
- Historical pre-review MCP syntax/compile/lint/arity verification of both sources and both modified
  tests passed using /home/vyzo/gerbil/build/lib. All four security scans and both
  test assertion audits are clean. Emacs --batch -Q -l etc/gerbil-mode.el formatted
  absolute source/test paths with local macro scheme-indent-function hints; asserted
  that only leading whitespace changed. The existing 1262-line scheduler test was
  not reformatted wholesale: only the edited source-extraction list was indented.
  Tracked git diff --check and the explicit untracked-new-test whitespace check pass.
- Saved the verified plain-thread-root owned-mutex cleanup pattern to the external
  cookbook and voted for the existing inaccurate generated/optional arity metadata
  feature, using the explicit persistent cookbook_path/features_path below. No repo
  data/ directory or temporary discovery file was created.
- Scope remains accepted StreamIO parent progress and independent STREAM expiry.
  Connection authorization/lease enforcement and renewal validation remain future
  owner integration. Caller-fed source protocol errors still require future
  dispatcher connection closure; automatic RESET alone is not sufficient. No public
  Network/Connection/Stream objects, sockets/transport dispatch/workers, OPEN, renewal,
  callbacks/publication, protocol ID/slot policy or general cancellation framework.
  Single raised blocking-boundary interruptions are supported, not arbitrary
  interruption-between-nonblocking-mutations, repeated hostile interruption, forced
  termination or continuation escapes. Leave this increment uncommitted for review.

Historical pre-review verification commands (not rerun for current source):

```sh
export GERBIL_BUILD_CORES=8 && make stdlib
export GERBIL_BUILD_CORES=8 && make stdlib
./build.sh test -v 5 std/ensemble/network/connection-parent-test.ss
./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss
```

### Fast Model Restart Handoff (2026-09-11)

- Branch: v0.19-std-ensemble. Managed credit/FIN/RESET integration and its 27-case
  scheduler suite are committed in 3451b16b. This checkpoint accompanies the
  approved fxpositive? cleanup of both stream DATA quantum contracts, retaining
  fixnum guards. No further implementation work or push is included.
- Final verification after cleanup: build conflict check clear; 8-core make stdlib
  rebuilt only stream and connection, followed by an unchanged second build with
  zero compilations. The full 26-module command below passed with HARNESS-OK,
  final OK and no ERROR output. Stream syntax/compile/lint/arity and security
  checks passed. Only the existing std/net/request deprecation warning remains.
- Existing ConnectionScheduler operations are caller-serialized, not internally
  thread-safe. Managed progress hooks are explicit; application Reader/Writer
  operations currently do not notify a parent. StreamIO owns separate directional
  locks/CVs; lifecycle and managed control commitment take input then output.
  Keep expiry validation and managed commitment in the same critical section.

#### Next Bounded Increment

- Integrate actual parent wakeups and idle-expiry driving with the existing stream
  and connection modules. Inspect the current APIs before choosing the smallest
  internal interface/state needed; do not recreate StreamIO or the scheduler.
- Progress must cover partial reads inside a blocked minimum read, accepted writes,
  Writer.close initiation, transport release, credit receipt, and abort/Reader.close.
  Wakeups must let the parent drive credit, DATA, FIN and RESET without manual
  test pumping being mistaken for production integration.
- Serialize all scheduler transitions. Design lock ordering before attaching
  notifications: a stream-to-parent notification must not deadlock against parent
  code acquiring stream locks. Do not call scheduler transitions reentrantly while
  a directional stream mutex is held. Signal CVs under their associated mutexes.
- Use bounded/coalesced readiness and existing synchronization primitives, not
  unbounded per-read messages, procedure-slot specialization, a general cancellation
  framework or a network-owned worker per stream. If an internal owner interface
  becomes necessary, give it real production callers and a cached interface view.
- Idle authorization expiry and unfinished drain deadlines must progress even
  when no application IO or inbound traffic occurs. Preserve stream-local failure
  scope, RESET deduplication/peer suppression and in-flight ownership through actual
  transport release. Do not implicitly renew or extend authorization.
- Test lost-wakeup boundaries, partial-read replenishment, idle expiry, blocked
  writer/closer wakeups, parent shutdown and interruption cleanup with finite joins.
  Use the existing exact wait-state helper rather than guessed scheduling delays.
- Keep this increment reviewable. Transport dispatch/workers, protocol ID/slot
  policy, OPEN, renewal, callback publication and public objects remain subsequent
  work unless a concrete dependency requires discussion with vyzo. Leave the next
  increment uncommitted for full-model review; obtain separate commit authorization.

#### Workflow And Persistent Knowledge

- Use `export GERBIL_BUILD_CORES=8 && make stdlib`; never full/core builds or manual
  GERBIL_HOME overrides. All tests use ./build.sh test. An unchanged second stdlib
  build should be a no-op with the make fix already present on this branch.
- Indent with Emacs and etc/gerbil-mode.el, with appropriate indentation hints for
  local macros; assert only leading whitespace changed. Use fxpositive? rather
  than `(cut fx> <> 0)` for fixnum positivity predicates.
- Gerbil MCP discoveries now persist outside the repo. Explicit cookbook_path:
  /home/vyzo/.local/state/opencode/gerbil-mcp/cookbooks.json; explicit features_path:
  /home/vyzo/.local/state/opencode/gerbil-mcp/features.json. The global gerbil-mcp
  skill records these paths. Do not recreate repository data/ or save durable
  discoveries to /tmp. The old repository data/ directory was migrated and removed.
- The make-only branch fix/incremental-make-freshness was pushed to origin with
  cherry-pick 80bbb843 from v0.19-staging; we returned to the implementation branch.
  No ensemble branch push was performed.

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Reviewed Managed Controls Commit (2026-09-11)

- vyzo approved committing the managed credit/FIN/RESET increment and additional
  review tests. This commit contains connection.ss, stream.ss, connection-test.ss,
  connection.md, stream.md, and this synchronized handoff only. The untracked
  data/ directory is unrelated to this commit and remains untouched. No push.
- Final validation is the successful 27-case scheduler suite and full 26-module
  regression recorded below, with no ERROR output. Both final 8-core stdlib builds
  performed zero compilations. Security/static/assertion and whitespace checks
  passed. No executable changes followed that verification.
- The implementation remains an explicitly driven internal scheduler, not a public
  transport. Next work is parent wakeups and idle expiry, then dispatch/transport
  workers and protocol lifecycle integration. OPEN, renewal, callbacks/publication
  and public Network/Connection/Stream objects remain unfinished.

### Managed Test Review Follow-Up (2026-09-11, Uncommitted)

- Test-only follow-up owns connection-test.ss, connection.md and this checkpoint.
  Preserved the dirty managed increment; no edits to connection.ss, stream.ss,
  stream.md or other production files, and no commit/push.
- Retained all 25 existing cases and added two (27 total). One real concurrent
  Reader minimum-read call spans 24 bytes through an 8-byte window. Only explicit
  managed credit admission/selection grants replenish input after the seed window.
  Checks cover partial/final contents, byte and three-update counts, bounded ring
  storage, receive/pending credit, and two frames/34 bytes while previous credit is
  in flight and a new update is pending. No direct StreamIO credit commitment.
- The RESET failure fixture loads the unchanged reset/cancel/find definitions from
  adjacent connection.ss into a test-only lexical module at expansion time. A
  scoped wrapper around the real queue-removal helper raises after retained-head
  copying and managed-credit exclusion. This enters actual RESET cancellation,
  retains the original FIFO, work states, full budget and registry, and checks exact
  failure identity. Local and peer RESET each cover ordinary compiled-API retry
  and immediate scheduler close, asserting every registered stream aborted and
  buffer-free before fallback cleanup. No compiled-binding mutation, corrupt queue
  metadata, production hook or real OOM. This verifies source-level composition,
  not an injected failure inside the installed RESET binary; original helper-level
  tests are retained and are not relabeled as managed coverage.
- Replaced all short readiness joins for Writer.close with scheduler-test-wait!
  on output-cv, and other held-lock readiness joins with exact mutex waits. Retained
  bounded 1 ms observer joins and zero-time blocked assertions after established
  gates. Existing cancellation checks still require the identical injected error.
- Final verification: clear conflict checks; both 8-core make stdlib invocations
  succeeded with zero compilations and only the existing std/net/request deprecation
  warning. `./build.sh test -v 5 std/ensemble/network/connection-test.ss` passed all
  27 CASE-OK entries on both runs, including the final strengthened count/content
  assertions. The full 26-module command below passed every module with HARNESS-OK,
  final OK and no ERROR output. MCP syntax/compile/lint/arity checks used build/lib;
  assertion audit, test security scan and git diff --check passed. No build or
  runtime test failures occurred. All requested gaps have test coverage within the
  explicit source-instrumentation limitation above; no production change was needed.

### Managed Scheduler Controls (2026-09-11, Uncommitted)

- Started from clean bf3f657a on v0.19-std-ensemble. Changed only connection.ss,
  stream.ss, connection-test.ss, connection.md, stream.md and this handoff. No
  commit/push, public facade, build-spec change or other module change.
- Added explicit connection-scheduler-credit!, connection-scheduler-fin! and
  connection-scheduler-reset! ID-based progress hooks over the caller-serialized
  scheduler. ConnectionStream replaces registry pairs with bounded ID/IO, latest
  control references and a reset flag; there is no parallel registry, procedure
  slot, notifier, worker or lifetime ID history.
- Credit admission reserves one mandatory frame and 17 header-inclusive bytes
  before encoding or granting credit. A single pending work coalesces all reads
   until selection calls stream-io-control-commit! in credit mode. Reads after commitment can admit
  one distinct pending update while the scheduler independently owns the previous
  in-flight update. Both remain charged until cancellation/transport release.
- FIN admission reserves 13 bytes only after Writer.close starts draining and all
  accepted DATA has been released. Selection commits StreamIO FIN through the same
  managed control-commit helper; actual transport
  release completes it. Release now dispatches by frame type: a StreamIO reference
  no longer implies DATA, and FIN remains charged as control through cleanup.
- RESET aborts IO and cancels unsent managed credit/FIN while preserving borrowed
  DATA/FIN/control storage and accounting. The reset flag deduplicates through
  completion. send? = #f suppresses peer echo and cancels a queued local RESET, but
  never withdraws an in-flight frame. Registry removal now requires StreamIO
  retirement, retired managed controls, and no borrowed frame for that ID.
- The narrow stream.ss additions are stream-io-control-ready? and
  stream-io-control-commit! (ownership-aware input-then-output locks for expiry,
  observation and commitment), and an
  optional skip-aborted? flag on stream-io-data-commit!. The scheduler uses that
  flag under the output lock so previously aborted streams do not repeatedly raise
  their stored error during DATA scans. Direct-call defaults and independent
  directional progress remain unchanged. Newly observed DATA expiry and arbitrary
  exceptions still propagate; no blanket Closed/Timeout suppression was added.
- Managed control expiry and commitment occur in the same critical section at
  selection. Static review found that separate readiness and input-only credit
  commitment allowed a drain deadline to expire between them. The atomic managed
  helper closes that gap without changing the independent directional IO wrappers.
  Stale expired/aborted work is
  cancelled without FIN success. Control commit/encoding failure aborts before FIN
  ownership release and reservation cancellation, including one raised interruption
  in cleanup. The reviewed DATA abort/release cleanup, peek/enqueue/dequeue rotation
  and nonmutating queue replacement remain intact. in-queue sources are not mutated
  by traversal bodies or predicates.
- There is deliberately NO automatic scheduling on reads, Writer.close, DATA
  release, Reader.close or stream timeout. The parent must drive credit progress
  (including partial reads), retry FIN after drain progress, and drive local/remote
  reset explicitly. Stale selection checks do not install idle expiry or send
  RESET automatically. Raw fixed controls remain lifecycle-unmanaged foundations;
  their unselected work is still the parent's retirement responsibility. See
  connection.md for exact ownership and explicit-hook contracts.
- connection-test.ss now has 25 cases, retaining the old fairness/ownership and
  allocation-order regressions. New cases cover before/after-selection coalescing,
  queued plus in-flight mandatory budgets, FIN overflow, DATA/FIN close completion,
  graceful unread retirement, queued-control reset, reset during DATA/FIN/credit
  borrows, reset deduplication/peer suppression, stale authorization/drain expiry,
  Reader.close's explicit boundary, post-commit encoding cleanup, and interrupted
  managed selection/FIN release/reset. Two additional cases hold selection through
  a real Writer.close drain deadline and interrupt failure-path abort after managed
  credit/FIN commitment followed by encoding failure. They observe actual wait
  states and retain accounting/ownership until the test's locks are released.
  Tests use checked procedures, real Reader/
  Writer IO and finite waits/joins. Metadata faults are safe controlled header or
  locked deadline mutations, not real allocator/OOM failures or live reconfiguration.
- Verification: clear build-conflict checks; sole-builder
  `export GERBIL_BUILD_CORES=8 && make stdlib` succeeded (600000 ms allowance).
  Re-indented both production files with
  `emacs --batch -Q -l etc/gerbil-mode.el`, with indentation hints for local stream
  macros, asserting stripped leading whitespace was identical before saving. The
  final build rebuilt only stream and connection;
  its immediate unchanged second make stdlib performed zero compilations. Only the
  existing std/net/request deprecation warning remains.
- The focused command below passed all three modules; the broad command passed
  all 26 modules with HARNESS-OK, final OK and no ERROR output. MCP source
  syntax/compile/lint/arity verification and test compile checks used
  /home/vyzo/gerbil/build/lib; assertion and source/test security audits are clean.
  git diff --check passed. No build failures occurred. Development runs of the
  combined failure/interruption fixture exposed yield-only wait polling starving
  the blocker; a bounded 1 ms join between exact wait-state observations fixed
  the fixture. Cleanup now captures worker results before asserting, so it cannot
  obscure an earlier failure. Three repeated focused runs and the final full
  regression passed after the fixture correction. The static recheck found no
  remaining actionable issue within this explicit scheduling boundary.
  An assertion-audit false positive on a multiline comparison was removed by
  putting its operator on the same line; it was not a failing assertion.
- Remaining work: actual parent wakeups/idle expiry, frame dispatch and transport
  workers, protocol ID/slot policy, OPEN/publication, renewal, callbacks and public
  network objects. Single raised interruption cleanup is supported, not repeated
  hostile interruption, forced termination or arbitrary continuation escapes.
  Allocation ordering is preserved, but tests do not claim naturally occurring OOM
  coverage or atomicity between individual queue/bookkeeping mutations.

`./build.sh test std/ensemble/network/connection-test.ss std/ensemble/network/stream-io-test.ss std/ensemble/network/stream-test.ss`

`./build.sh test std/make-test.ss std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Make Fix And Branch Handoff (2026-09-11)

- Implementation branch is v0.19-std-ensemble. Reviewed scheduler foundations are
  committed in 7e389ba9, noncopying queue iteration in b69375e0, and blocking
  StreamIO in 6299d5f5. No pending implementation edits remain at this checkpoint.
- Separately committed 065799d6 fixes std/make incremental freshness. It contains
  only make.ss and make-test.ss, deliberately excluding ensemble for cherry-picking.
  Removed stale pathname/module timestamp caches and the unused per-build table;
  normalized nested-module dependency waits while excluding same-file imports.
- Tests reproduce rebuild propagation in real temporary module chains with one
  and four workers, nested imports, repeated make calls in one process, unchanged
  unrelated outputs and immediate no-op rebuilds. All 26 selected make/queue/LRU/
  sync/network/UCAN/keystore modules passed through ./build.sh test. After the final
  formatting correction, make stdlib rebuilt only make and build-script, then an
  immediate second 8-core make stdlib performed zero compilations. Focused make
  tests passed again. Only the existing std/net/request deprecation warning remains.
- During validation, normalizing self-nested imports initially caused a build
  deadlock. Corrected self-dependency handling and regenerated interrupted outputs
  before the final successful builds; no outstanding build or recovery work remains.
- vyzo authorized this handoff-only commit, then creation of
  fix/incremental-make-freshness from local v0.19-staging at e3f9c3b8, cherry-picking
  only 065799d6 and pushing that branch to origin for a manually created PR. Return
  to v0.19-std-ensemble afterward. This records the requested branch operation,
  not a claim that the push has already completed; ensemble is not to be pushed.
- Next ensemble work remains coalesced credit output, FIN ordering/completion,
  RESET/stale controls, parent wakeups/idle expiry, dispatch and transport workers.
  Public objects, OPEN, callbacks/publication and renewal remain unfinished.

### Reviewed Scheduler Commit (2026-09-11)

- vyzo approved final validation and commit. This checkpoint accompanies
  connection.ss, connection-test.ss, connection.md, the production build entry,
  and this handoff. The noncopying queue iterator is already in b69375e0.
- Includes the reviewed queue ownership fixes, direct in-queue traversal, and
  Emacs gerbil-mode indentation. Final verification after formatting: clear build
  conflict check, successful `export GERBIL_BUILD_CORES=8 && make stdlib` with Done
  and only the existing std/net/request deprecation warning. No runtime fix needed.
- The command below passed all 25 modules with HARNESS-OK, final OK and no ERROR
  output. Source syntax/compile/lint/arity, test assertion audit, source/test
  security scans and whitespace checks passed. This supersedes review-time
  verification deferrals below. No push.
- Scope remains private caller-serialized fixed-control accounting and DATA
  scheduling. Next integration is coalesced credit output, FIN ordering/completion,
  RESET/stale controls, parent wakeups/idle expiry, dispatch and transport workers.
  Public objects, OPEN, callback publication and renewal remain unfinished.

`./build.sh test std/struct/queue-test.ss std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

- Review formatting: re-indented all of connection.ss using Emacs with the
  repository's etc/gerbil-mode.el. Verified that only leading whitespace changed.
  This supersedes the incomplete manual indentation pass. No build or tests run.

### Separate Queue Iterator Commit (2026-09-11)

- vyzo approved committing the queue change separately. This commit contains
  std/struct/queue.ss, queue-test.ss, and this synchronized handoff only.
  The scheduler source, tests, documentation, and build entry remain uncommitted.
- Verification is the successful 8-core stdlib build and 25-module regression
  recorded below. No executable changes followed that run. No push.

### Direct Queue Iteration (2026-09-11)

- vyzo requested removing queue traversal copies. in-queue now uses the existing
  list iterator directly over Queue.front within std/struct/queue; removed private
  queue-copy. Destructive Iterable Queue behavior is unchanged. Non-destructive
  iteration no longer promises a snapshot: do not mutate the queue during traversal.
- Scheduler registration, replacement preparation, and close use for/in-queue
  rather than queue->list. Replacement preparation still allocates its separate
  result queue before installation, preserving the reviewed exception-safety fix;
  only the unnecessary input snapshot is removed. These traversals do not mutate
  their source queues. Existing test snapshots remain intentional assertions.
- Updated queue tests for independent cursors, exhaustion and unchanged source
  contents, retaining destructive-iteration coverage. Updated connection.md.
- Clear conflict check; 8-core make stdlib passed with Done and only the existing
  std/net/request deprecation warning. The previous full 24-module regression plus
  std/struct/queue-test.ss passed all 25 modules through ./build.sh test with final
  OK and no ERROR output. Scheduler verification/security scan passed. No commit
  or push; the queue source/tests join the existing pending scheduler checkpoint.

### Scheduler Queue Ownership Review Fixes (2026-09-11)

- Explicit fix/build/test authorization supersedes the read-only review boundary.
  Changed only connection.ss, connection-test.ss, connection.md and this handoff.
  Preserved the pre-existing build-spec change and all other work. No commit/push.
- Fixed DATA rotation's dequeue-before-allocation ownership gap: peek, enqueue,
  dequeue now allocates the replacement node before removing the original entry.
  Inspected std/struct/queue's enqueue implementation; it allocates before linking.
  Rotation still precedes commit and preserves round-robin progress on stream error.
- Replaced destructive connection-queue-remove! with nonmutating
  connection-queue-remove returning Queue. It snapshots queue->list, enqueues retained
  entries into a separate bounded queue, and callers install controls/streams only
  after success. Failed preparation preserves original ownership, FIFO and budgets.
  Head cancellation/close remain allocation-free for control queue removal. If fill's
  error-path cancellation preparation fails, the reservation stays owned/accounted
  for until retry or close; documentation now states this explicitly.
- Chose a single internal helper export for tests, not a shared macro or production
  fault-injection slots. Three new cases cover failed control/stream preparation and
  successful middle/missing/head/tail registry removal. Predicate failures occur
  after real retained-entry copying and target exclusion. Assertions check exception
  identity, original contents/identity, states, budgets, cancellation retry, in-flight
  retention, and scheduler-driven close aborts before fallback fixture cleanup.
  Strengthened selection-expiry coverage with full registry order and close checks.
- Verification: conflict check clear; `export GERBIL_BUILD_CORES=8 && make stdlib`
  completed with Done under timeout 600000, only the existing std/net/request
  deprecation warning. Focused `./build.sh test std/ensemble/network/connection-test.ss`
  (14 cases) and the exact 24-module command below both passed with HARNESS-OK, final OK and no
  ERROR output. Source/test MCP syntax, compilation, lint and arity verification
  used build/lib; assertion audit and both security scans passed. Tracked diff and
  explicit untracked source/test/doc whitespace checks passed. No core/full build.
- Limitations: controlled predicate failure tests the actual preparation helper,
  not naturally occurring OOM or enqueue allocation failure. Rotation's allocation
  ordering was verified by source inspection, while runtime tests exercise subsequent
  stream failures. No guarantee for interruption between individual queue mutations,
  forced termination or arbitrary continuation escape is added. Parent/transport
  integration remains deferred as listed in the foundation checkpoint below.

`./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Private Scheduling Foundation (2026-09-11)

- HEAD is 6299d5f5, the authorized blocking StreamIO commit. Continued the
  interrupted scheduler drafts without changing that committed stream layer.
  New connection.ss, connection-test.ss, connection.md, the connection build entry,
  and this handoff remain uncommitted for review. No further commit or push.
- ConnectionScheduler is a private, caller-serialized foundation, not Connection
  or a transport worker. It uses std/struct/queue for FIFO controls and constant-time
  DATA rotation. It reserves header-inclusive control frame/byte capacity before
  encoding, retains in-flight accounting until transport release, removes cancelled
  nodes immediately, and closes/aborts on mandatory-output capacity failure.
- Peer DATA/control advertisements are explicit constructor inputs. They cannot
  raise local limits or mutate supplied configuration. Fixed controls only:
  OPEN-ACCEPT, OPEN-REJECT, WINDOW-UPDATE, FIN and RESET. Variable OPEN/renewal
  reservation/serialization is still unimplemented, not silently routed through
  an unbounded preencoded queue.
- The bounded DATA registry accepts already authorized StreamIO instances only
  after parent acceptance ordering. Selection respects the configured control
  burst, round-robin fairness, local/peer quantum, stream credit and StreamIO
  deadline gates. Returned DATA borrows the ring rather than copying a payload
  backlog. One frame may be in flight; release frees both transport ownership and
  scheduler bookkeeping, including when StreamIO release raises after cleanup.
- Static review found a post-commit construction-failure cleanup gap: interruption
  during abort could skip release before a work record had been published. The
  fix completes that abort and release before propagating one raised interruption.
  A controlled header-encoding failure (test-only limits mutation after capturing
  quantum) reproduced the old binary's premature worker exit; after rebuilding,
  the same regression passes. This is not a real OOM reproduction or support for
  live configuration changes. Selection-acquisition and release interruption tests
  also preserve the other lock owner and subsequent healthy-stream progress.
- Verification: clear build-conflict checks; `export GERBIL_BUILD_CORES=8 && make
  stdlib` passed with Done, only the existing std/net/request deprecation warning.
  Focused `./build.sh test std/ensemble/network/connection-test.ss` passed all 11
  cases. The full command below passed all 24 modules with HARNESS-OK, final OK,
  and no ERROR output. Source syntax/compile/lint/arity, test compile/assertion
  checks, source/test security scans, and git diff --check passed. An attempted
  nullable return annotation was rejected during development and restored to :t;
  nullable fields/arguments remain typed normally. No core/full build was run.
- Next: review this narrow foundation, then integrate coalesced WINDOW-UPDATE,
  DATA-before-FIN/FIN completion, RESET/stale controls, actual parent wakeups and
  idle expiry, frame dispatch and transport workers. Control frames currently do
  not perform StreamIO FIN/credit transitions. Protocol stream slots, high-water
  marks, callback pairing, public objects, OPEN and renewal remain unfinished.
  Do not mistake explicit test driving for production parent integration.

`./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Blocking Stream IO Commit (2026-09-11)

- vyzo authorized the separate stream commit and continued implementation. This
  commit contains the reviewed StreamIO implementation, stream-io-test.ss, stream
  documentation, std/AGENTS.md review conventions, the connector TLS rejection
  fixture-race fix, and this handoff. It does not include the core fix again.
- Verification remains the successful 8-core stdlib build and 23-module regression
  following 5cedbfb3, recorded below; no executable stream changes followed that
  run. Fresh stream source/test security scans are clean. Corrected stream.md's
  stale constructor-verification disclaimer to match that completed verification.
- Continuation has started a private connection.ss scheduler draft and its build
  registration. These are excluded from this stream commit, are not yet verified,
  and must be completed with tests before claiming a scheduling implementation.
- No push. Public objects, OPEN/renewal dispatch, production wakeups and timers,
  transport workers, and publication remain subsequent integration work.

### OpenCode Restart Handoff (2026-09-11)

- HEAD is 5cedbfb3 (core :condvar predicate fix). Earlier commits: 4ec678fb
  (bounded stream buffers/credits with cache adoption), fcfddcd4 (establishment
  retry/election foundations), 6b731968 (SSL cleanup), and 49230495 (typed setup
  errors). No push was made.
- Remaining uncommitted work: std/AGENTS.md review conventions; network/stream.ss
  blocking StreamIO and parent transitions; new stream-io-test.ss; stream.md; and
  connector-test.ss's TLS rejection fixture-race fix. This restart update adds a
  pending handoff change. Do not discard any of these files or recreate StreamIO.
- StreamIO review is approved and the final reviewed code is built/tested after
  the core fix: separate directional mutex/CV pairs, captured absolute deadlines,
  absent-obj, eager nonnullable Reader/Writer handles, custom constructor assigning
  every slot with set!, no slot defaults, plain :condvar annotations, single-class
  implement forms, and broadcasts while holding associated mutexes. Ownership-
  aware lock cleanup and DATA/FIN release cancellation regressions are included.
- Verification is the successful 8-core make stage1, make stdlib, and 23-module
  regression command in the core checkpoint below. No ERROR output; no active
  build or unfinished implementation task remains. The core rebuild was explicitly
  authorized for that fix; normal work returns to make stdlib only.
- Next: finish the separate StreamIO commit when authorized, including this handoff
  and pending review conventions. The most recent explicit commit request covered
  only the core fix; do not silently include stream work in it or amend it.
  Then continue connection transport/scheduling in the planned connection.ss:
  bounded control accounting through in-flight release, control bursts and fair
  DATA scheduling, dispatch, and actual parent wake/expiry integration. No scheduler
  source was written yet. Keep implementations simple; use existing mutex/CV and
  std/io primitives, not a generalized scheduling or cancellation framework.
- Public Network/Connection/Stream integration, OPEN/accept, callback publication,
  connection workers, idle expiry timers, RESET/control integration, and renewal
  remain unfinished. StreamIO is real internal blocking Reader/Writer behavior,
  not a completed public transport. General wire buffer pooling remains deferred;
  only power-of-two stream rings were explicitly approved for buffer-cache use.

### Separate Core Condvar Fix Commit

- This checkpoint accompanies the authorized core-only predicate fix:
  gerbil/core/mop.ss now defines :condvar with condition-variable?, not the unbound
  condvar?. This handoff is included under the standing synchronization rule;
  stream implementation/tests/docs and std/AGENTS.md remain uncommitted.
- vyzo explicitly authorized the core rebuild exception. With a clear conflict
  check, `export GERBIL_BUILD_CORES=8 && make stage1` and then `make stdlib` passed.
  The stdlib build reported only the existing std/net/request deprecation warning.
- `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`
  passed all 23 modules with HARNESS-OK, final OK, and no ERROR output. This also
  verifies the pending StreamIO constructor/type/readability review changes.
  No stream runtime fix was needed; no connection scheduler has been implemented.
- No full build, Gambit rebuild, or push. Earlier blocked/deferred verification
  entries below describe history and are superseded by this successful run.

### Reviewed Stream IO Build Blocker (2026-09-11)

- Resumed the approved continuation with all existing dirty changes preserved.
  Build-conflict check was clear. Ran `export GERBIL_BUILD_CORES=8 && make stdlib`
  with a 600-second allowance before adding scheduler code.
- Build failed compiling stream.ss: `Reference to unbound identifier: condvar?`.
  Source inspection identifies src/gerbil/core/mop.ss:1011 declaring :condvar with
  condvar?, whereas core/runtime.ss exports condition-variable? and builtin.ssxi.ss
  associates that predicate with condvar::t. The build-local compiled MOP contains
  the same incorrect predicate; this is not merely an out-of-date source file.
- No source workaround, redundant guard, core edit, or scheduler implementation
  was added. Correcting the core type metadata requires authorization for the
  corresponding core rebuild outside the stdlib-only build scope. The reviewed
  StreamIO constructor and single-class implementations remain unverified; running
  regression tests against older artifacts would not verify these changes.
- Next: obtain approval to correct/rebuild the core type definition, then repeat
  the 8-core stdlib build and exact regression command below before implementing
  the private bounded ConnectionScheduler increment. No commit or push.

- Reviewed every stream condition-variable broadcast: directional operations hold
  their matching mutex, abort/expiry hold both, and the test broadcast holds the
  output mutex. Added the locked-abort precondition comment and recorded the rule
  in std/AGENTS.md. Static inspection only; no executable change or tests.

- Review constructor optimization: StreamIO initializes slots directly with set!,
  not class-instance-init!. Recorded the convention in std/AGENTS.md. No build or
  tests during review.

- Review type cleanup: replaced redundant condition-variable? guards with :condvar
  in StreamIO fields and the wait procedure. Builds/tests remain deferred.

- Review cleanup: removed redundant StreamIO slot defaults now that its custom
  constructor initializes every field. Builds/tests remain deferred during review.

- Review syntax simplification: stream Reader/Writer implementations use the
  single-class `(implement Interface Class method ...)` form. Recorded this
  convention in std/AGENTS.md. Builds/tests remain deferred during review.

- Continued from `4ec678fb` (reviewed bounded cached StreamState). Internal blocking
  StreamIO Reader/Writer handles are implemented, with the latest constructor review
  edit pending runtime verification, uncommitted. No commit or push is authorized.
  Public connection/network integration
  remains future work, not a claim made by the internal handles.

### Stream IO Constructor Review (2026-09-11)

- Added StreamIO's custom :init! with positional state, expire, input-timeout and
  output-timeout arguments. Inspected existing custom constructors and core contract/
  runtime source: custom constructors bypass generated defaults, and
  class-instance-init! sets only supplied slots. The initializer explicitly supplies
  every existing default, then constructs reader : Reader and writer : Writer
  before returning. Neither field is nullable or defaults to #f.
- new-stream-reader/new-stream-writer are now private actual constructors, called
  only by :init!, with no lazy lookup or locking. They retain each implementation's
  cached this view; StreamReader/StreamWriter slots are otherwise unchanged.
  make-stream-io retains its validation/config behavior and delegates construction.
- Tests use checked StreamIO-reader/StreamIO-writer accessors to reuse handles.
  Removed obsolete getter-interruption branches only; abort, reader-close, expiry,
  retirement and DATA/FIN release interruption coverage remains. Updated stream.md;
  preserved the unrelated connector-test.ss fixture change.
- Review-only verification: static delimiter/security and diff checks; no source
  build, compilation or test runs. Current constructor behavior remains runtime
  unverified. Earlier successful runs below precede this change. No commit or push.

### Stream IO Review Fixes (2026-09-11)

- Fixed both reviewed cancellation bugs locally in stream.ss. Replaced all remaining
  do-with-lock acquisitions with the existing ownership-aware with-stream-io-lock,
  including cached getters, abort, expiry and retirement. Nested lifecycle locking
  remains input then output. Interrupted waiters no longer unlock another owner's
  mutex; no core locking implementation changed.
- Added one outer catch around the existing release boundary. A single raised
  cancellation during acquisition or failure-path abort now completes abort and
  transport release before rethrowing the identical exception. Existing liveness
  failures still abort before FIN completion; normal already-aborted release adds
  no exception. No cancellation framework or repeated-hostile-interruption guarantee.
- Aligned StreamIO slot sigils/types/defaults, Reader/Writer slot type columns and
  the mixed-sigil wait procedure signature. Preserved the earlier connector-test.ss
  fixture fix unchanged. Updated stream.md with the precise interruption guarantee.
- Added two regression cases (19 stream IO cases total): interrupted acquisitions
  for abort/reader-close/expiry/retirement/getters, and DATA/FIN release interrupted
  at initial output acquisition or expiry-triggered abort. Tests retain another
  owner's lock, deliver one real thread-interrupt!, check identical exceptions,
  cache ownership/once-only return, failed FIN closers, retirement and usable locks.
  Interrupt senders and workers are joined with finite deadlines; tests do not
  deadlock the interrupt sender by retaining the lock it needs for cleanup.
- Verification: clear build-conflict check; 8-core make stdlib completed with Done
  under a 600-second allowance, with only the existing std/net/request deprecation
  warning. Focused stream IO tests and the exact full 23-module regression command
  recorded below both passed with final OK and no ERROR output. Source syntax/
  compile/lint/arity, test compile/assertion audit, source/test security scans and
  git diff --check passed. No development test failures in this fix pass. No commit
  or push.

### Blocking Stream IO (2026-09-11)

- Inspected and finished the interrupted stream.ss/stream-io-test.ss drafts.
  Removed the obsolete test StreamMonitor adapter; there is no owner-notification
  abstraction or per-stream worker. Kept the implementation in stream.ss over the
  existing state transitions, with real Reader/Writer methods using generated __
  bindings and cached views. make-stream-io returns the concrete class;
  new-stream-reader/new-stream-writer return cached interfaces.
- Separate input and output mutex/CV pairs own their directional state. Input owns
  receive ring/credit/pending credit/FIN; output owns send ring/credit/in-flight
  ownership/output state. Abort and retirement checks take input then output.
  Failures leave the directional lock before acquiring both to abort and wake both
  directions. Plain worker exceptions propagate; expected EOF/closed-direction
  exceptions do not abort reverse IO. Applications serialize same-direction IO.
- Each read/write captures timeout->abs-timeout with value: seconds->time once.
  No-timeout is exactly absent-obj; the actual wait is clamped to the immutable
  accepted Unix-second expiry. Local mutex-unlock! takes at most three arguments,
  returns false on timeout, and does not reacquire the mutex after a CV wakeup.
  No restarted relative durations, fourth default argument, or zero-expiry bypass.
- Reads consume and broadcast pending-credit readiness incrementally through need
  greater than the window. Writes copy bounded short prefixes and wait when full.
  Writer.close prohibits writes and waits through DATA drain and FIN release under
  one captured deadline; repeated close joins that drain. Reader.close aborts both.
  Timeout setters affect subsequent operations only and reject closed directions.
- Parent feed/credit/FIN and commit wrappers use the directional locks and expiry
  gates; output commits also enforce the drain deadline. Release always frees
  transport ownership, even after expiry/abort, without allowing expired FIN
  completion to report success. In-flight DATA is not returned to the cache until
  release. Protocol errors propagate for parent-fatal handling. Explicit
  stream-io-input-ready?/output-ready? are observations, not reservations.
- stream-io-expire! is the explicit parent idle-expiry hook. Installing the parent
  timer, scheduler notifications, control capacity/order, RESET, stale work, slot
  retirement, and actual public Stream/Connection/Network integration remain future
  work. No fake public methods or interface probes were added. stream.md documents
  the exact internal API and ownership boundary.
- Verification: clear build-conflict checks; 8-core make stdlib completed with Done
  under a 600-second allowance, with only the existing std/net/request deprecation
  warning. The exact regression command below passed all 23 modules with HARNESS-OK,
  final OK, and no ERROR output. stream-io-test.ss has 17 cases covering deliberately
  held opposite locks, finite bidirectional pumping through capacity 4, feed/release
  wakeups, EOF/reverse IO, FIN completion, fixed deadlines through partial progress
  and broadcasts, reset/interruption/expiry, plain worker cleanup, and 32 cache
  ownership races. Source syntax/compile/lint/arity checks, test compile/assertion
  audit, both security scans, and git diff --check passed.
- Development issues fixed: interrupted drafts had unbalanced read/write forms;
  the release macro needed a locally typed binding for dotted field references.
  The first focused run found that a raising synchronous thread-interrupt! thunk
  abandons Gambit's internal result mutex. The test now expects that caller-side
  exception and independently checks both waiters retain the injected failure;
  stream mutexes remain usable. The focused rerun and full regression passed.
- A repeated full regression exposed an existing connector-test.ss scripted
  rejection race: after AUTH, a larger-DID client can still be writing ACCEPT when
  the test server rejects/closes TLS, producing terminal SSLError/EPIPE instead of
  reaching the expected later SocketConnectError. The fixture now consumes that
  readiness frame when the server is smaller before rejecting. Production connector
  and retry policy are unchanged. Rebuilt and reran the exact full 23-module command
  after the fixture fix: final OK, no ERROR output. Connector test security scan
  also passed. All changes remain uncommitted for review.

`export GERBIL_BUILD_CORES=8 && make stdlib`

`./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss std/sync/channel-test.ss`

### Stream Ring Cache Adoption (2026-09-11)

- Explicit user override applies to stream rings only, not general wire pooling.
  `stream.ss` now borrows lazily via buffer-cache.get at exact power-of-two local
  capacity. `StreamLimits` requires positive powers of two, retaining the receive
  u32 and outbound fixnum contracts without rounding. Stream construction retains
  native receive-capacity validation. Peer windows remain any positive u32 that
  fits a native fixnum, including nonpowers such as 3 and 5.
- A shared stream-buffer-release! clears bytes to #u8() and resets head/size before
  returning nonempty storage. Receive FIN when empty/final consumption and output
  FIN transport completion return storage once. Abort returns receive immediately,
  but send only after outstanding DATA release; repeated terminal calls cannot
  double-return storage. Caller serialization remains required.
- Preserved review formatting and unrelated uncommitted changes. Updated config
  contracts/tests/docs, stream source/tests/docs, and design notes. Scanned network
  limit uses: only config/stream tests needed changed overrides. Nonpower ring
  fixtures now use 4/8 while preserving short writes, wrapping, and in-flight
  ownership. Added identity/count cache lifecycle tests with BIO-only cache flushes
  and unwind-protected stream cleanup. Shared cache implementation is unchanged.
- Verification: clear build-conflict check; `export GERBIL_BUILD_CORES=8 && make
  stdlib` passed with Done under a 600-second allowance and only the existing
  std/net/request deprecation warning. Exact regression command:
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss std/io/bio/cache-test.ss`
  passed all 21 modules with HARNESS-OK, final OK, and no ERROR output. Stream has
  14 cases, including the 32 serialized abort/release races; config has 8 cases.
  Source syntax/compile/lint checks and test compile checks passed. Security scans
  of all four changed Scheme files are clean; git diff --check passed.
  Repeated the build and full 21-module regression after final test formatting;
  both passed with the same warning and no test ERROR output.
- Development check caught a test-only most-positive-fixnum binding unavailable
  in compiled module scope; replaced it with an exact-arithmetic boundary loop.
  No runtime failures occurred. Build/tests supersede the prior review deferral.
  No commit or push. Public interfaces, waits, timeouts, parent integration, and
  general wire cache benchmarks remain out of scope.

### Prior Stream Review

- Stream review formatting: aligned argument annotation sigils in stream.ss typed
  procedure signatures and recorded the convention in std/AGENTS.md. Whitespace
  only in source; builds/tests remain deferred during review.

### Bounded Stream State Increment (2026-09-11)

- Continued from reviewed commit `fcfddcd4` with a clean worktree. Took the explicitly
  permitted pure buffer-state scope, not the larger blocking Reader/Writer core.
  Added `stream.ss`, adjacent `stream.md`, `stream-test.ss`, and build registration.
  No public interface implementation, owner callback abstraction, facade, or commit.
- Concrete `make-stream-state` constructs independent local receive/send rings and
  peer-credit state. Allocation occurs at first nonempty input, at the configured
  capacity, without growth or a buffer cache. Copied short writes accept bounded
  prefixes; zero means capacity-blocked at this internal layer, not Writer success.
  Receive consumption accrues coalesced credit; commitment grants it. DATA commit
  consumes peer credit while retaining local capacity through transport release.
  A borrowed contiguous ring slice avoids a second network-owned DATA buffer.
- FIN transitions distinguish drain, transport commitment, and completion. Received
  FIN preserves unread bytes and opposite-direction output. Abort discards unread/
  unsent payload but retains transport-owned DATA/FIN through release. Retirement
  checks retain unread data and in-flight output. Invalid peer credits, DATA after
  FIN, over-credit DATA, and duplicate FIN raise IOError for parent-fatal handling.
- All transitions require caller serialization and perform no waits/callbacks.
  Tests cover buffer ownership, bounds, coalescing, wraparound, incremental transfer,
  lifecycle, isolation, and finite owner-serialized abort/release races. They do not
  claim actual Reader/Writer minimum/wait behavior or full stream multiplexing.
- Final verification: clear build-conflict check; `export GERBIL_BUILD_CORES=8 &&
  make stdlib` completed with Done under a 600-second tool allowance, with only
  the existing std/net/request deprecation warning. Exact regression command:
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss`
  passed all 20 modules with HARNESS-OK, final OK, and no ERROR output. The new
  stream suite has 11 cases, including 32 finite serialized abort/release races.
  Source syntax/compile/lint verification and source/test security scans passed;
  git diff --check passed. No commit/push.
- Development failures fixed: use the existing `:values` return annotation;
  replace unavailable positive-fixnum? with an inline contract. The initial
  focused test found a fixture bug: do-with-lock takes an expression, not a thunk;
  corrected the race fixture. No remaining test failures are known.
- Remaining stream layer: actual Reader/Writer interfaces, cached views, own-expiry
  enforcement, captured fractional IOTimeout deadlines, incremental minimum reads,
  capacity waits, wakeups, and deadline-bounded Writer.close. Add an internal owner
  interface only when used by this actual I/O layer; do not expose these nonblocking
  primitives directly as Reader/Writer methods. Parent acceptance gating, controls,
  dispatch, RESET/fatal-error handling, slot accounting, and round-robin scheduling
  remain Connection work. Public Network/Connection construction, publication and
  callback pairing, joined callers, shutdown completion, and renewal remain pending.

### Reviewed Establishment Foundations Commit

- Review is approved. This checkpoint accompanies the authorized commit of
  connector-connect! retry/attachment driving, handshake monitor sequencing,
  typed TLS identity failures, internal owner reservation/election transitions,
  the separate election-history limit, tests, build registration, and adjacent
  documentation. The reviewed naming/readability conventions are in std/AGENTS.md.
- Final verification after all review edits: clear build-conflict check;
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed with Done and only the existing
  std/net/request deprecation warning. No runtime fixes were needed.
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss`
  passed all 19 modules with HARNESS-OK, final OK, and no ERROR output.
- Final owner security scan is clean; connector has four previously reviewed
  false unused-parameter warnings. git diff --check passed. No push.
- The new stream task was cancelled before writing code. No stream implementation
  is included. Public Network/Connection construction, callback/publication and
  worker integration, streams, and renewal remain future work. Review-deferred
  verification statements below are historical and superseded by this checkpoint.

- Review rename: the outgoing retry driver is now connector-connect!, including
  exports, call sites, and documentation. No compatibility alias; behavior is
  unchanged. Builds/tests remain deferred during review.

- Review readability convention: a conditional check's raise expression belongs
  on its own line. Applied to the network production/test files under review and
  recorded in std/AGENTS.md. Formatting only; builds/tests remain deferred.

- Constructor naming convention from vyzo: procedures constructing interface
  instances use new-, not make-. The eventual public Network constructor is
  new-network, superseding the earlier make-network design name. Current
  make-network-owner returns a concrete NetworkOwner class instance, not an
  interface instance, so it retains its name. No executable change or tests.

- Pending owner review formatting: aligned field annotation sigils in all four
  new network.ss classes. Whitespace only; builds/tests deferred during review.

### Separate SSL Cleanup Commit

- This checkpoint accompanies the authorized SSL-only fix commit: net/ssl/socket.ss
  and this required handoff update. Native cleanup is independent of raw-device
  closure, completes under the shared write lock even on device-close failure, and
  propagates that failure after unlocking. Peer-certificate access is synchronized
  against closure.
- The successful 8-core stdlib build and 19-module regression run recorded below
  include this fix. Its regression cases remain in the uncommitted network TLS
  tests; no ensemble implementation/test or build-spec changes enter this commit.
- Network config/history, owner transitions, connector attachment/retry driving,
  handshake/TLS changes, tests, and adjacent docs remain uncommitted for review.
  No push is authorized.

### Separate Election History Limit (2026-09-11)

- Policy approved: vyzo requested the separate limit with default 256. Implemented
  `NetworkLimits.election-history` with the same nonnegative-fixnum contract as
  `pending-connections`; zero disables new history reservation. Physical capacity
  remains independently configured (default 32), with no cross-field ordering.
- `network-record-commit!` now checks election-history only. Existing IOError,
  generation cutoffs, pruning, exhaustion recovery, and transition timing remain
  unchanged. This owner has no open callbacks; reserving history before an open
  callback remains a future integration concern, not an implemented timing change.
- Updated config source/tests/docs, owner source/tests/docs, and design record.
  Cohort tests exercise physical/history limits 2/3 and 4/1, retained protection
  at exhaustion, recovery, repeated commitment, and zero history in both DID roles.
  Config tests cover defaults, independent overrides, zero, and invalid values
  including negatives and bignums. Preserved all unrelated dirty work; no commit/push.
- Verification: build-conflict checks clear; `export GERBIL_BUILD_CORES=8 && make
  stdlib` completed with Done and only the existing std/net/request deprecation
  warning. The first build hit the tool's 120-second timeout, leaving newer generated
  Scheme but old owner binaries; a plain incremental rerun skipped that stale owner.
  The first regression run correctly exposed the old shared-cap behavior through
  ERROR output despite MODULE-OK/HARNESS-OK markers. Rebuilding the config dependency
  chain with a longer timeout refreshed the owner binaries. The exact 19-module
  root regression command below then passed with every MODULE-OK, HARNESS-OK, final
  OK, and no ERROR output. Security scans of config.ss/config-test.ss and
  network.ss/network-test.ss are clean; `git diff --check` passed.

`export GERBIL_BUILD_CORES=8 && make stdlib`

`./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss`

### Owner Cohort And SSL Cleanup Review Fixes (2026-09-11)

- The provisional history policy from this review is superseded by the approved
  separate `NetworkLimits.election-history` policy in the latest checkpoint above.

- Fixed both concrete reviewer findings; no commit/push. The prior dirty increment
  remains intact. Changed network.ss/network-test.ss/network.md, SSL socket.ss,
  network tls-test.ss/tls.md, connector.ss indentation, and this handoff only.
- A committed peer formerly disappeared when its last peer-known reservation
  retired, despite an older incoming socket whose identity was still unknown.
  Reservations now carry monotonic generations; first commit records an immutable
  owner-generation cutoff. Pruning retains commitment for unresolved reservations
  at/below that cutoff and for old same-peer reservations/logical work. Both identity
  registration and retirement sweep peers. Proof of a different peer releases the
  old hold immediately. Repeated commit does not extend the cutoff.
- Newer same-peer candidates wait rather than becoming old-cohort duplicates.
  Once old work resolves/retires, pruning clears the commit marker while retaining
  any newer identified candidates' peer entry. New unknown arrivals cannot pin an
  old cohort forever. Three new regression cases cover delayed same-peer proof after
  selected retirement, different-peer proof and fresh-candidate progress while new
  unknown sockets remain, and bounded history/recovery after unknown retirement.
- Cutoffs alone cannot bound memory: one stalled unknown could pin an arbitrary
  number of different completed peer entries. Retained/active commit records have
  a separate cap, now configured by NetworkLimits.election-history. Recording a
  new commit at capacity raises IOError without dropping existing history; the
  larger endpoint checks this before claiming its opening slot. Physical pending
  accounting is unchanged and no global unknown barrier was added. The latest
  checkpoint adds the explicit configuration field. Normal worker deadline cleanup
  is still required by future integration.
- Replaced SSL's insufficient unwind-protect cleanup with one small internal
  with-ssl-socket-close macro shared by abortive close and shutdown. It catches the
  close expression inside the shared write lock, releases native state and clears
  the slot under that lock, then rethrows the identical exception after unlock.
  This prevents the rwlock handler from unlocking before native cleanup and works
  for plain failing threads. Existing shutdown negotiation-error policy is unchanged;
  no new ignored-error catch or production injection hook was added.
- The SSL regression uses real mutual TLS, closes the actual device and raises a
  controlled error at that expression's boundary through the production macro.
  It verifies release before an outer handler observes the exception, exact error
  identity, plain-thread cleanup, cleared SSL state, and subsequent lock reacquisition.
  It does not claim a naturally occurring OS close syscall failure. Existing raw-
  closure/repeated/concurrent-close and shutdown tests continue exercising both
  public close paths. No invalid descriptor or fake native device is used.
- Development fixture failures were fixed: nested socket.dev.raw could not resolve
  the inherited SocketDevice type in the interpreted test; checked existing accessors
  avoid that issue. An attempted port-close-macro injector was unavailable at runtime
  and removed entirely; net/ssl/error-test-support.ss has no diff. The final shared-
  macro fixture adds neither Gambit port mutation nor a native test binding.
- Build-conflict checks clear; 8-core `make stdlib` passed with Done and the existing
  std/net/request deprecation warning only. The exact 19-module root regression
  command below passed with every MODULE-OK, HARNESS-OK, final OK, and no ERROR output.
  Earlier failing test runs were inspected despite misleading MODULE-OK/HARNESS-OK
  markers. Final security scans are clean for owner source/tests, SSL socket and TLS
  tests; connector retains four low false unused-parameter findings. git diff --check
  passed. Public Network/Connection integration and other deferred work remain out
  of scope.

`export GERBIL_BUILD_CORES=8 && make stdlib`

`./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss`

### Transport Attachment And Internal Owner Transitions (2026-09-11)

- Implemented the explicitly approved boundary increment, without commit or push.
  Preserved the existing dirty connector/handshake/TLS increment. No public
  Network constructor/facade, counterfeit Connection/Stream, application monitor
  callback adapter, or interface-only dispatch test was introduced.
- ConnectorMonitor now has attach!(StreamSocket), invoked immediately after
  stream-connect before TLS and again after upgrade before Handshake construction.
  connect-handshake accepts optional typed monitor: (#f for standalone callers).
  connector-connect! always supplies it. A private setup-result helper tracks callback
  provenance separately from exception type, so a callback throwing a typed
  retryable transport error still aborts with that exact original exception.
  Setup owns cleanup until handoff; failed! runs after actual transport cleanup.
  Original operation deadline/min-auth-expire and per-attempt headroom remain fixed
  as before; no DNS interruption claim or retry-policy broadening was added.
- Read SSL upgrade conversion, shared device/rwlock waiting semantics, native
  SSL_free finalizer, and Gambit's ___release_foreign implementation before fixing
  SSL cleanup. ssl-socket-close and ssl-socket-shutdown now release native SSL state
  independently of shared-device closure, under the shared write lock and protected
  against device-close failure. Foreign release clears pointer/finalizer, so GC
  cannot release it again. Peer-certificate acquisition now holds the shared lock
  and checks device input before touching an uncached SSL certificate, preventing
  a close/lookup use-after-release. Cached certificates retain their own reference.
  No network FFI, new native binding, or standalone incidental stdlib doc was added.
- Added production network.ss, its build-spec entry, network-test.ss, and adjacent
  network.md. NetworkOwner owns a mutex-protected peer registry and counted physical
  reservations. Logical NetworkOutgoing work survives physical cleanup/retry gaps
  and is finished explicitly when the entire connector invocation exits. Initial
  capacity refusal does not activate hypothetical outgoing preference. Incoming
  reservations count before identity proof; registration rejects self/mismatched
  DIDs. All metadata is internal and must be used with its originating owner.
- network-attach! atomically attaches/rejects against shutdown/retirement; close
  runs outside owner locks. network-shutdown! marks closed, closes all captured
  transports despite individual close failures, then rethrows the first error.
  It deliberately retains reservations until worker cleanup/retirement and is
  only the interruption transition, NOT blocking Network.close or join completion.
- Election is a nonblocking internal transition API. Smaller-DID claims prefer
  started viable logical outgoing work and retain ready fallbacks across physical
  retries. Expired/unstarted/finished work cannot cause preference waits. Larger-DID
  readiness never claims a slot; its opening claim follows remote committing ACCEPT.
  Claims are exclusive and check deadline/verified authorization expiry. Commit
  cannot be retargeted after selected-candidate retirement while its cohort remains;
  fully retired cohorts are removed so later independent establishment can start.
- Tests: seven owner lifecycle/election cases include capacity contention, proof
  registration, retry-gap preference, expired preferred work, larger readiness,
  postcommit no-preemption, concurrent opening claims, and commit liveness checks.
  Four new connector cases cover 16 real attachment/shutdown races, silent TLS
  interruption (ClientHello observed, join bounded to 3 seconds against a 30-second
  deadline), successful-upgrade rejection after retained raw close, and terminal
  attachment exceptions with retryable transport types. failed! tests observe the
  closed device inside the notification. TLS regression checks foreign-released?
  after raw closure plus repeated/concurrent SSL close/shutdown and uncached
  certificate lookup on a closed device. Existing retry/handshake/TLS tests pass.
- Verification: build-conflict checks clear. Final
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed with Done and only the existing
  std/net/request deprecation warning. Exact final root command:
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss`
  passed all 19 modules, every MODULE-OK, HARNESS-OK, final OK, and no ERROR lines.
  An earlier full requested regression run also passed before the final contention
  and expiration assertions. Development errors fixed before final verification:
  HashTable.ref requires a default; contextual Closed/Timeout raisers require a
  message; do-with-write-lock accepts one body form (wrapped shutdown in begin).
  Initial MCP resolution used stale installed artifacts; explicit build/lib
  loadpath fixed exports/signature/compile introspection. No GERBIL_HOME override.
  A final whitespace-only SSL formatting pass was followed by another rebuild;
  the tool's 120-second timeout interrupted that run without a compiler diagnostic.
  After another clear conflict check, the identical 8-core build completed with a
  600-second tool allowance. The exact 19-module root regression then passed again
  with every MODULE-OK, HARNESS-OK, final OK, and no ERROR output.
- Security scans: owner source/tests, connector tests, TLS tests, SSL socket,
  handshake, and TLS helpers clean. Connector has four existing low false
  unused-security-parameter warnings; each parameter is used. git diff --check
  passed. No full build, vendor change, cache, revocation, or decoder-budget work.
- Remaining integration: real Connection and public Network implementation,
  application callback pairing, actual one-live-per-peer publication, CONFIRM to
  stream gating, production HandshakeMonitor adapter, election wake scheduling,
  joined callers, listener/worker shutdown completion, streams, and renewal.
  Do not attach the existing open!/complete! hooks to placeholder interfaces.
  Future orchestration must abort affected work on terminal programming/auth/callback
  errors, rather than treating them as ordinary precommit fallback failures.

### Owner Integration Boundary Inspection (2026-09-11)

- HEAD's broader stdlib checkpoint is 49230495. The existing dirty connector,
  handshake, TLS, tests, and design/API documentation were preserved. This pass
  changes documentation only; no owner implementation, constructor, placeholder
  Connection/Stream, new test, commit, or push was added.
- Read the complete design and implementation records and std/AGENTS.md, inspected
  current source/interface dependencies and the production diff, and consulted the
  MCP cookbook and compiled handshake exports. The signature tool reports only the
  keyword-dispatch wrapper arity for connect-handshake; its source is authoritative.
- The public on-open-connection callback takes Connection; Connection.network returns
  Network. Neither concrete implementation exists. Wiring these callbacks now would
  require the real implementations or a new narrower lifecycle contract. Do not
  implement dummy open-stream! methods or weaken the public monitor argument type.
- ConnectorMonitor.connecting! precedes setup, but connected! receives a Handshake
  only after TLS. Thus the owner cannot interrupt outgoing TLS through the present
  hooks. ListenerMonitor.accept! already exposes the incoming raw socket before TLS.
- Source inspection also found an upgrade/cleanup risk: SSL conversion copies the
  raw socket's device and lock (net/ssl/socket.ss), while ssl-socket-close releases
  its SSL pointer only if the shared device is still open. Closing a retained raw
  view after successful upgrade but before owner attachment can bypass explicit
  native SSL release. This is a source-level risk, not a reproduced native leak.
  A new raw-socket notification alone is not sufficient verification of shutdown.

Historical proposal, subsequently approved and implemented at the checkpoint above:

1. Add an internal connector transport-attachment hook receiving StreamSocket
   immediately after stream-connect, before TLS, then the upgraded view before
   constructing Handshake. The per-attempt monitor atomically attaches or rejects
   against owner shutdown; I/O/close stays outside the owner mutex. Setup owns
   cleanup until candidate handoff, and failed! remains after actual cleanup.
2. Make upgrade completion racing raw closure release native TLS state exactly
   once, including when the underlying device has already closed. Resolve this
   at the SSL ownership boundary, not with network-level FFI or native-pointer
   access. Test silent TLS interruption and successful-upgrade/close races before
   claiming close-before-join integration.
3. Keep the independently useful registry/election layer in network.ss, without
   implementing Network or invoking application callbacks yet. Distinguish a
   logical outgoing work item (survives address/credential retry gaps) from each
   counted physical reservation. A failed physical candidate must not by itself
   declare the still-retrying preferred outgoing work nonviable. Owner worker
   completion can retire that logical work without adding a connector finish hook.
4. Test capacity versus reserve/retire, identity registration, crossed election,
   preferred-work failure, larger-DID readiness without election waits, and
   shutdown versus attachment. Actual Connection publication, callback pairing,
   CONFIRM-to-stream gating, listener/worker shutdown completion, joined caller
   delivery, streams, and renewal remain explicit subsequent integration work.

Verification of the preserved implementation, not of the proposed owner layer:

- Build-conflict check clear; `export GERBIL_BUILD_CORES=8 && make stdlib` passed
  with Done and only the existing std/net/request deprecation warning.
- `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss`
  passed all 14 modules, HARNESS-OK, final OK, and no ERROR output.
- Security scans of handshake.ss and tls.ss were clean. Connector scan reported
  four low unused-parameter warnings; the parameters are used in their bodies.
- No full build, manual GERBIL_HOME, buffer/cache, revocation, or serde-budget work.

### Broader Stdlib Commit Checkpoint

- This checkpoint accompanies the authorized broader-stdlib-only commit: source
  exceptions for socket connect, DNS resolution, and TLS negotiation; syscall
  raiser support; allocation-error and setup-cleanup fixes; broader stdlib tests;
  and the SSL native test-support module/build entry.
- Ensemble connector/handshake/TLS source, tests, design notes, and adjacent API
  documentation remain uncommitted for review. This handoff is included under the
  standing requirement to synchronize implementation notes with each commit.
- Verification is the successful 8-core stdlib build and 18-module regression run
  recorded below, followed by another successful build and TLS/connector/resolver
  test run after moving native test support. No push is authorized.

- Moved the now SSL-only native test support to net/ssl/error-test-support.ss;
  updated its build entry and the network TLS test import. No compatibility
  source module remains at the old path. Clear build-conflict check and 8-core
  make stdlib passed with the existing std/net/request warning only.
  `./build.sh test std/ensemble/network/tls-test.ss std/ensemble/network/connector-test.ss std/net/address/resolver-test.ss`
  passed all three modules with HARNESS-OK, final OK, and no ERROR output.
  The moved support module's security scan is clean. No commit or push.

### Approved Resolver Simplification

- Removed resolver FFI, the :std/ffi dependency, and resolver-lookup-error?. The
  only translation scope is the public host-info call: native os-exception?
  failures become contextual ResolverError, with the original argument list kept
  intact as one irritant plus host:. Address conversion remains outside the catch.
  Non-OS argument/type/allocation/programming exceptions propagate. All native OS
  failures from host-info are accepted as resolver failures; no status or facility
  classifier remains. This supersedes the resolver classification below.
- Verified runtime/error.ss defruntime-exception and live build-local behavior:
  os-exception? and os-exception-arguments handle both raw native exceptions and
  RuntimeException wrappers, returning the identical original argument list.
- Removed every DNS-only native constant and netdb.h from net/error-test-support.ss;
  the compiled TLS constants and queue support, and build registration, remain.
  Resolver tests use real failed/successful lookups, exact diagnostic arguments and
  context, a malformed host fixture for host-info type-error propagation, and an
  invalid port fixture for conversion contract-error propagation. No production
  injection point was added.
- Verification: build-conflict check clear; `export GERBIL_BUILD_CORES=8 && make stdlib`
  passed with Done and only the existing std/net/request deprecation warning.
  The exact 18-module root test command recorded below passed with every MODULE-OK,
  HARNESS-OK, final OK, and no ERROR lines. Security scans of all three touched
  Scheme files found no issues in resolver/TLS test support and only the existing
  low reserved-.invalid-hostname label warning in resolver-test.ss.
  `git diff --check` passed. No commit or push; unrelated dirty work is preserved.

### Source Exception Review Follow-Up

- Fixed both actionable classifier gaps. SSL_error_is_local now treats exact
  ERR_R_INTERNAL_ERROR as terminal along with MALLOC and SYSCALL. Inspected the
  installed OpenSSL err.h: ERR_GET_REASON retains COMMON/FATAL flags, and the
  ERR_R_* constants include them. Inspected OpenSSL 3.0 ssl/statem/statem.c:
  BUF_MEM_new/grow and ssl3_setup_buffers failures append INTERNAL_ERROR. No broad
  fatal-error rule, speculative reason whitelist, queue draining, or result-format
  change was introduced. Programming/internal failures continue to abort.
- Previously replaced resolver facility matching with explicit header-encoded H_ERRNO and GAI
  lookup constants. Gambit's ___ERR_CODE_BUILD adds the signed native code, so
  negative Linux EAI values borrow from the facility bits. NONAME/AGAIN/FAIL and
  available NODATA/ADDRFAMILY lookup errors are recognized; MEMORY, SYSTEM, argument
  and unknown errors remain terminal. EAI_SYSTEM still follows Gambit's native
  errno conversion at the resolver source. No vendor code was changed.
- Added compiled net/error-test-support.ss and its build registration so tests use
  native C constants and real OpenSSL queues, not guessed integers. Direct tests
  cover bare malloc, malloc followed by INTERNAL (first/last queue entries remain
  intact), protocol negotiation errors, SYSCALL with/without a queue error, encoded
  EAI_NONAME/AGAIN/FAIL and rejection of MEMORY/SYSTEM/BADFLAGS/FAMILY. Real failed
  TLS negotiation is also checked directly through ssl-local-error?.
- Corrected requested leading whitespace in os/error.ss, io/socket/socket.ss,
  and resolver.ss. Updated adjacent connector/TLS/design documentation.
- Verification: build-conflict check clear; 8-core make stdlib passed with Done
  and only the existing std/net/request warning. The same 18-module root test
  command recorded below passed with every MODULE-OK, HARNESS-OK, final OK and no
  ERROR lines. Security scans found no issues in resolver/native test support;
  TLS tests are clean; resolver tests retain the low .invalid-hostname label warning.
  libssl reports the same 27 previously reviewed false stub matches and two
  existing library-label warnings. git diff --check passed. No commit or push.

### Source Exception Implementation Checkpoint

- Source-level exceptions and the interrupted sequential retry drivers are now
  implemented and verified, uncommitted. The original connector/handshake/tests
  and preliminary TLS identity draft were preserved and finished. No commit/push,
  vendor modification, full build, owner/election implementation, or streams.
- SocketConnectError derives from OSError and IOError at immediate connect and
  async SO_ERROR failure, retaining errno. The syscall machinery has an optional
  source raiser; EINTR/pending handling and existing callers are preserved.
  Connector fallback uses only the documented endpoint errno whitelist, actual
  ResolverError, SSLHandshakeError, and TLSPeerIdentityError. Other OS operations,
  invalid arguments, resource exhaustion, Timeout/Closed, and later exceptions
  terminate. Every setup error retires the monitor reservation after cleanup.
- ResolverError now derives from IOError and is raised at DNS resolution. Inspected
  Gambit's _io.scm ##host-info, _kernel.scm ##raise-os-exception, os_base.c encoding,
  and gambit.h facilities. The predicate uses installed header macros, not numeric
  guesses; EAI_MEMORY and non-lookup facilities retain native exception behavior.
- Client/server negotiation raises contextual SSLHandshakeError, preserving the
  native result. Known allocation failures and SSL_ERROR_SYSCALL stay terminal
  SSLError; the latter's errno is not retained by the existing native wrapper.
  SSL setup setters are inside cleanup protection. Network certificate policy and
  wrong expected DID raise TLSPeerIdentityError; crypto/contracts are not wrapped.
  Invalid phase is ContextError; plaintext TCP is ContractViolation. FFI null-pointer
  checks now correctly raise AllocationError instead of PrematureEndOfInput.
- run-handshake! drives internal monitor hooks and closes before retirement without
  suppressing monitor errors. connector-connect! carries the current complete endpoint
  sequence between credential retries, replacing the rejecting DNS entry with its
  concrete peer endpoint. Deadline/required expiration stay fixed; retry starts and
  headroom are fresh. Raw socket visibility during TLS remains unresolved owner
  integration work. Synchronous DNS is not interruptible by this driver.
- Final verification: clear build-conflict check, then
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed with Done and only the existing
  std/net/request deprecation warning. Root harness command:
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss std/os/socket-test.ss std/net/address/resolver-test.ss std/ffi-test.ss std/io/socket/socket-test.ss`
  passed all 18 modules, HARNESS-OK, final OK, and no ERROR lines.
- Regression coverage includes immediate Unix/async TCP source type, errno and
  diagnostic context, EINTR/pending preservation, actual DNS failure, native errno
  facility exclusion, allocation type, plaintext/phase contracts, real address
  fallback and credential retries in both DID orientations, repeated DNS pinning
  through exhaustion, exact terminal exception identity, and monitor retirement.
  Resource exhaustion is injected as typed exceptions, not induced globally.
- Development failures fixed: def-C cannot wrap :boolean (used def-C-lambda bool);
  new error types needed address/SSL facade exports; the old plaintext test expected
  IOError; the new terminal test mistakenly put a Unix fallback ahead of its failing
  resolver, contrary to Unix-first ordering. Final test run includes all fixes.
- A repeat run exposed an early-refusal fixture race: the peer could reject before
  the HELLO writer started, correctly causing Closed during cleanup. The fixture
  now consumes HELLO before rejecting, retaining strict ordinary-refusal assertions.
  Fixed a delimiter typo in that test edit. Client/server source-context and local
  SSL result-type regressions also pass. Socket address conversion now precedes
  device acquisition, so its allocation/validation errors cannot leak a new fd.
- Security scan covered all 20 changed/new Scheme files. Its 27 critical findings
  are false conditional-stub matches on existing libssl NULL/0 error returns (read
  and checked; these are not #else stubs). Eight low findings concern used typed
  parameters, existing library labels, and the reserved .invalid test hostname.
  No suppressions or unrelated native changes were added. git diff --check passed.

### Credential Queue Commit Checkpoint

- Credential-choice queue review is complete; this checkpoint accompanies its
  commit. The seen table uses transparent Tokens as structural keys in
  make-hash-table, with no marshaling. remq1 removes the unique selected parent.
  Initial provide! ordering, stable longest-expiration-first parents, lifetime
  filtering, and atomic close-on-exhaustion remain as agreed.
- Final verification: clear build-conflict check and successful 8-core stdlib
  build, with Done and only the existing std/net/request warning.
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss`
  passed all 14 modules, HARNESS-OK, final OK, and no ERROR output. No runtime fix
  was needed after review. Security scan has only three false unused-parameter
  warnings (all named parameters are used). No push.
- This increment contains queue code, tests, and docs/design/handoff updates only.
  It does not implement production retry driving, owner state, or election.

### Credential Queue Review History

- Pending review cleanup: use remq1 to remove the selected parent. The seen table
  already prevents duplicates, so filtering out all identity matches is unnecessary.
  Builds/tests remain deferred during review.
- Pending review simplification: keep make-hash-table and use transparent Tokens
  directly as seen keys. Structural equality deduplicates distinct equal Token
  objects without marshaling. Removed the queue's serialization dependency/test;
  duplicate-copy coverage remains. Tokens stay immutable while used as keys.
  Builds/tests remain deferred during review.
- Credential-choice queue implemented and verified, uncommitted for review in
  connector.ss with tests/docs. Initial no-auth uses provide! once before supplied
  parents; explicit initial auth participates in stable longest-expiration-first
  ordering. No-auth joining callers add no choice. Exact marshal-token bytes
  deduplicate queued/selected parents, with borrowed immutable Token objects.
- ConnectorCredentials serializes additions and selection under its own mutex;
  serialization occurs before locking. next returns available?/parent as two
  values, skips ordinary lifetime failures, and atomically closes on exhaustion.
  A racing addition is either included or rejected as Closed; it cannot silently
  revive exhausted work. Explicit close is idempotent and releases retained data.
  No exception classification/catching was added. Actual retry driving still
  requires owner integration and must retry only eligible ordinary rejections.
- Verification: clear build-conflict check; 8-core stdlib build passed with Done
  and the existing std/net/request warning only. Focused connector tests passed,
  then all 14 network/UCAN/thread/flock modules passed with HARNESS-OK, final OK,
  and no ERROR output. Added eight cases, including a 32-iteration add/exhaust race
  and a real Unix default-grant refusal followed by a successful fresh candidate
  using the queued parent. This is a test driver, not Network.connect! retry code.
- MCP verification caught unavailable remq during development; use the existing
  filter primitive for removal. Final syntax/compile/lint/arity verification passed.
  Read-only review found no actionable policy defect. Test security scan is clean;
  connector scan has three false unused-parameter warnings (all parameters used).
  No commit, push, owner implementation, or address fallback loop in this increment.

### Connector Transport Commit Checkpoint

- Connector transport review is complete; this checkpoint accompanies its commit.
  Includes connector.ss, connector-test.ss, connector.md, build registration, and
  the reviewed min-auth-expire rename across auth/handshake helpers and tests/docs.
  This remains the single-candidate transport stage, not retry scheduling or the
  network owner. No compatibility aliases or wire-format changes were added.
- Final verification after the rename: build-conflict check clear; the 8-core
  stdlib build passed with Done and the existing std/net/request warning only.
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss`
  passed all 14 modules, HARNESS-OK, final OK, and no ERROR output. Connector
  security scan is clean. No runtime fixes were needed after review. No push.

### Connector Review History

- Pending connector review rename: required is now min-auth-expire for the minimum
  accepted authorization expiration, including the Handshake slot/constructor
  keyword, auth helper parameters, connector inputs, tests, and API docs. This is
  an absolute Unix-second timestamp, not a duration or the negotiated expiration.
  Wire layouts/bytes and behavior are unchanged. No aliases; builds/tests deferred.
- Connector transport stage is implemented and verified, uncommitted for review:
  connector.ss, connector-test.ss, connector.md, and build registration. The
  exported internal connect-handshake uses stream-connect, upgrades non-Unix
  sockets with mutual TLS under the same absolute deadline, and returns a new
  Handshake with actual TLS peer identity checked by make-handshake.
- This is one physical candidate, not the full connector retry scheduler or
  Network.connect!. It does not drive HELLO/AUTH, callbacks, election, reservations,
  or publication. Address/credential retry scheduling remains future connector/
  owner integration; no existing responsibility was moved into an ad hoc helper.
  Caller start/deadline/required values are preserved. Any failure after connect
  closes the socket and propagates unchanged. Synchronous DNS cannot be preempted
  by this helper; liveness is rechecked when high-level socket setup returns.
- Verification: clear conflict check and successful 8-core stdlib build. Initial
  tests caught a nullable ServerSocket field in the test fixture trying to cast
  #f; used a ServerSocket?-or-false predicate and checked test calls instead.
  Production connector code needed no runtime fix. Focused connector tests passed,
  followed by all 14 network/UCAN/threads/flock modules with HARNESS-OK and final OK.
  Source/test security scans and git diff --check were clean.
- Four real-socket cases cover Unix and DNS-address TLS candidates followed by
  full handshake confirmation and bytes, forwarded timing/config/parent state,
  wrong certificate key despite a matching hostname, pre-dial expiry, and silent
  TCP TLS timeout/closure. DNS fixtures reuse the listener's resolved loopback
  endpoint to avoid a random IPv4/IPv6 mismatch on its ephemeral port; TLS EOF is
  checked through the upgraded socket, never by reading plaintext on its raw view.
- Listener/logger are committed in cfacd83b. Next after connector transport review
  is retry orchestration and owner state/election integration. No commit or push
  was made for this connector increment.

### Listener Commit Checkpoint

- Listener review is complete; this checkpoint accompanies the listener/logger
  increment commit. Includes listener.ss, listener-test.ss, listener.md, log.ss,
  their build registrations, and design/handoff updates. No connector or network
  owner implementation is included. stream-listen's dispatch fix is already in
  6247a717; the high-level socket-only convention remains in force.
- Final listener behavior: ListenerMonitor handles socket handoff and once-only
  closure notification. Unix paths get missing parent directories, a stable
  exclusive nonblocking .lock sidecar, and stale-socket-only cleanup under that
  lock. Directories and sidecars persist. The lock is stored as a cached Closer
  view. Close is idempotent/nonthrowing and already-closed calls are no-ops; owners
  requiring full completion must explicitly join. Worker errors include formatted
  exception text in the one /ensemble/network logger.
- Final verification: clear conflict checks and two successful 8-core stdlib
  builds. The first focused test exposed that Closer? rejects a Writer view even
  though it can be cast to Closer; fixed by casting the acquired lock once before
  storage. Final
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss`
  passed all 13 modules, HARNESS-OK, final OK, and no ERROR output. Listener source
  and test security scans are clean. No new core/sync/file changes were needed.
- Next is connector and owner integration. The editor autosave #listener.ss# is
  user-owned, was not read or modified, and is excluded from the commit. No push.

### Listener Review History

- Review simplification: removed unwind-protect around nonthrowing listener-close!.
  Retained protection around pathname/lock cleanup so monitor notification still
  runs if that cleanup fails. No build/tests for this edit yet.
- Error logging convention from vyzo: include exception: (exception->string e)
  along with contextual fields. Applied to listener worker error logging.
  Builds/tests remain deferred during review.
- Pending review change: listener-close! atomically claims the first close only;
  already-closed calls do nothing. It ignores socket-close/join errors and returns
  void. Self-close still skips joining its own worker. Worker failures remain
  logged and observable through an explicit thread-join!/error. Owners requiring
  full completion must join explicitly even after an earlier close. Tests/docs
  updated; builds/tests remain deferred during review.
- Pending review addition: Unix listener construction calls create-directory* on
  the parent directory before opening sock.lock. Existing directories are reused;
  cleanup leaves directories and the stable sidecar in place. Extended the real
  Unix lifecycle test to use initially missing nested directories and reopen them.
  Builds/tests remain deferred during review.
- Pending review rename: ListenerOwner is now ListenerMonitor, including its test
  implementation and documentation. No compatibility alias; behavior is unchanged.
  Builds/tests remain deferred during review.
- Pending review refinement: the lock slot requires only Closer?-or-false, and
  both cleanup paths use Closer-close rather than Writer-close. No rebuild/tests
  for this refinement yet.
- Unix listener sidecar locking is implemented and verified, uncommitted for review.
  Before stream-listen, acquire `sock.lock` through open-file-writer/lock with
  zero timeout, exclusive default, O_CREAT/O_NOFOLLOW and mode 0600. No truncation
  or sidecar unlink. Contention fails before touching sock. Under the held lock,
  remove only socket entries; regular files, directories, and symlinks are errors.
- The lock is retained as a Writer until socket/path cleanup finishes. Construction
  failure after binding starts cleans up any partial socket pathname before
  releasing the lock. Worker shutdown releases it even if cleanup raises, then
  notifies the owner. No low-level socket I/O or socket-inode tracking was added.
- Updated real-socket tests for pre-bind/live contention, stable sidecar inode,
  simulated abandoned socket recovery, non-socket preservation and lock release,
  plus successful rebinding after normal close and owner failure. No process-kill
  test is claimed. This approved policy supersedes the earlier no-pre-unlink rule.
- Verification: clear build-conflict checks and successful 8-core stdlib builds.
  The initial listener test caught a nullable-interface constructor cast of #f
  to Writer for TCP. The lock slot now uses an explicit Writer?-or-false predicate
  contract and checked Writer-close; no type contract was weakened to arbitrary
  values. Listener and flock suites then passed together.
- Final `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss`
  passed all 13 modules with HARNESS-OK, final OK, and no ERROR output. Listener
  source/test security scans and git diff --check were clean. No socket-level
  device I/O, standalone incidental docs, commit, or push was added.

### Earlier Listener Review

- Pending listener review simplification: removed file-info capture, the info
  slot, and all pathname identity/existence checks in cleanup. Bind failures come
  directly from stream-listen/OS; shutdown deletes the owned Unix path directly.
  External pathname replacement/removal while listening is unsupported. Removed
  replacement-path tests and metadata assertions; normal cleanup and bind-error
  tests remain. This supersedes earlier defensive Unix-path identity policy.
  Builds/tests are deferred during review.
- This checkpoint accompanies the authorized stream-listen dispatch fix commit:
  only std/io/socket/api.ss and this handoff. Listener/log source, tests, docs, and
  build registrations remain uncommitted. stream-connect already used the correct
  inet4/inet6 domains and required no change.
- Listener review refinement: use stream-listen directly for resolution
  and transport dispatch; the connector must use stream-connect. Unix path
  ownership is captured from the bound address after checking socket.domain.
  Fixed std/io/socket/api.ss stream-listen's internet domain case from ip4/ip6 to
  inet4/inet6, matching resolved InetAddress domains. Existing real DNS/TCP listener
  tests exercise this path. No standalone documentation added for the socket fix.
  Verification: clear conflict check; `export GERBIL_BUILD_CORES=8 && make stdlib`
  passed with Done and only the existing std/net/request warning. The pending
  real-socket suite `./build.sh test std/ensemble/network/listener-test.ss` passed
  with HARNESS-OK, final OK, and no ERROR output, exercising stream-listen for DNS,
  TCP and Unix. That test file is not included in this socket-only commit.
- Listener/log increment implemented and verified, uncommitted for review:
  listener.ss, listener-test.ss, listener.md, log.ss, and build registrations.
  Only high-level std/io socket operations are used. No private socket creation,
  bind, listen, accept, or device-level cleanup was added.
- make-listener resolves through resolve->endpoint, then selects tcp-listen or
  unix-listen and captures the actual bound address. ListenerOwner.accept! returns
  true only after taking socket ownership; false closes the untransferred socket
  and continues accepting. closed! runs once after cleanup. Internal owner/election,
  pending accounting, TLS/handshake driving, and Network.listen! remain future work.
- listener-close! marks closed, interrupts accept, and joins outside the mutex;
  owner self-close avoids self-join. Only accept's shutdown exception is suppressed.
  Owner callback exceptions propagate even after self-close. A single deflogger
  in log.ss uses source "/ensemble/network" and exports its generated macros.
- Unix listeners use nonempty NUL-free filesystem paths, never pre-unlink existing
  entries, and remove their own path only after a non-following device/inode check.
  Missing paths and observed replacements are preserved. This is not atomic unlink;
  the agreed trusted local-path boundary applies. No repair policy was introduced.
- Verification: 8-core stdlib build passed, focused listener tests passed, then
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss`
  passed all 12 modules with HARNESS-OK, final OK, and no ERROR output. Security
  scans of listener.ss and listener-test.ss were clean. See the listener record
  below. No commit or push; connector is still unimplemented.

### Listener Preparation History

- Address-resolution convention from vyzo: listener and connector entry points
  must call resolve->endpoint, accepting DNSAddress as well as concrete endpoints.
  Listener construction uses it before choosing tcp-listen/unix-listen; future
  connector resolution must consume the fixed existing attempt budget.
- Listener implementation constraint from vyzo: use only std/io high-level
  interfaces for socket I/O. Do not duplicate socket creation/bind/listen through
  device-level APIs. No such low-level listener code was added during exploration.
- Added network/log.ss with one deflogger (`log`, source "/ensemble/network") and
  export #t to expose its generated macros. Registered it in the build spec;
  no logger framework, forwarding helpers, or separate documentation was added.
- Logger verification: build-conflict check clear; the 8-core stdlib build passed
  with Done and only the existing std/net/request deprecation warning. Compiled
  module exports include log plus all generated logging macros. No test-only
  dispatch probes were added. Logger changes are uncommitted; listener code has
  not yet been written and must use the high-level std/io interfaces.
- Handshake review is complete and this checkpoint accompanies the staged-handshake
  commit: handshake.ss, tests/docs, build registration, and reviewed auth/wire
  refinements. Supporting BIO, TLS timeout, and thread-join!/error changes are
  already committed separately. No owner/election/publication implementation is
  included; that is the next increment.
- Final review changes: socket.domain/AF_UNIX detects Unix; operation-expired? is
  a numeric-comparison macro; Reader.read relies on need for premature EOF;
  multiline using annotations occupy separate lines; local-tokens and decoded
  payload fields are vectors. Bundles stay lists and wire bytes are unchanged.
- Exchange workers are plain named joinable threads, closed on failure and joined
  once via thread-join!/error. This preserves the original exception without the
  unhandled-error logging installed by spawn/name. The first review test run
  passed assertions but exposed those duplicate cancellation diagnostics; the
  final run is clean. No shared failure flags or exception-content inspection.
- Verification: two clear conflict checks and successful 8-core stdlib builds.
  Final `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss`
  passed all 11 modules with HARNESS-OK, final OK, and no ERROR/unhandled output.
  Handshake security scan is clean; git diff --check passed. The second build/test
  includes the plain-worker fix and formatting-only final review. No push.

### Handshake Review History

- Pending review edit: decode-frame-payload returns an ordered field vector.
  Handshake field access uses validated fixed indexes with ##vector-ref; wire
  roundtrip expectations now use vectors. Bundles remain lists and DATA remains
  a byte-vector field. Encoder input stays a field list; wire bytes are unchanged.
  Builds/tests remain deferred during review.
- This checkpoint accompanies the authorized std/sync/threads commit:
  thread-join!/error, its focused tests, and this handoff only. Handshake and auth
  review changes remain uncommitted, including the handshake build registration.
- Verification: build-conflict check clear; `export GERBIL_BUILD_CORES=8 && make stdlib`
  passed with Done and the existing std/net/request deprecation warning only.
  `./build.sh test std/sync/threads-test.ss` passed with HARNESS-OK and final OK.
  The first run also emitted spawn's expected unhandled-error diagnostics; changed
  only the intentionally failing test workers to plain Gambit threads and reran
  successfully without those diagnostics. No production helper fix was required.
  The stdlib build also compiled pending auth/handshake edits; their review tests
  have not been rerun. No push is authorized.

### Pending Handshake Review

- Pending review edit: added thread-join!/error to std/sync/threads. It preserves
  native optional timeout/value behavior and unwraps only the documented
  uncaught-exception wrapper to reraise the worker's original exception; other
  join exceptions propagate unchanged. Tests cover values, exception identity,
  relative/absolute timeout outcomes, retrying a join, and thread termination.
  Historical timeout-exception behavior is superseded by the 2026-09-12 timed-join
  repair above: the join's own native timeout now becomes std/error Timeout.
- handshake-exchange! now lets writer exceptions escape after closing the socket
  to wake the reader, and joins once through thread-join!/error in finally.
  Removed shared failure/completion flags and repeated joins. If read and write
  both fail, the joined writer's original exception takes precedence. No new
  standalone utility documentation file was created. Builds/tests remain deferred.
- Pending handshake review edit: local-tokens is a vector in original bundle
  order, constructed once. ACCEPT uses vector-length and a bounds-checked
  ##vector-ref lookup instead of list traversals. Builds/tests remain deferred.
- Pending handshake review edit: removed redundant read-count/truncation checks.
  Reader.read with need already raises on premature end of input. Retained the
  zero-payload guard to avoid calling read on an empty buffer. No build/tests yet.
- Pending review edit: operation-expired? is now a simple defrule expanding to
  `(>= now deadline)`, without type contracts. Removed its obsolete contract
  assertions and updated auth.md. Builds/tests remain deferred during review.
- Pending handshake review edit: determine Unix transport with
  `(fx= (socket.domain) AF_UNIX)`, not by retrieving and classifying its address.
  Removed the unused address-module import. Builds/tests are deferred during
  review; prior verification describes the pre-review implementation.
- This checkpoint accompanies the authorized SSL server timeout commit:
  src/std/net/ssl/server.ss, network/tls-test.ss, and this handoff only. The
  supplied timeout is resolved once, preserving absolute deadlines; defaults
  remain unchanged. The already recorded successful build and 16-module test run
  include these changes. No standalone server documentation is included.
- Handshake source/tests/docs and its build registration remain uncommitted for
  review. The BIO fix is committed as f3756118. No push is authorized.

### Previous BIO Fix Checkpoint

- Review convention from vyzo: do not create standalone documentation files for
  incidental fixes elsewhere in the codebase; documentation belongs in a separate
  PR. The incidental BIO writer.md was removed in 7e864eff, and the uncommitted
  SSL server.md has also been removed. Keep source comments and regression tests.
- This checkpoint accompanies the separately authorized BIO UTF-8 growth fix
  commit: writer.ss, writer-test.ss, writer.md, and this handoff only. The first
  establishment increment remains uncommitted for review: handshake.ss,
  handshake-test.ss, handshake.md, build registration, and TLS server timeout
  support with real TLS tests/docs. No handshake/TLS implementation is included
  in the BIO fix commit.
- Handshake is a single-candidate staged driver over an already connected Unix
  or mutual-TLS socket. Stages are identify, authenticate, ready, commit, confirm.
  TLS identity is available at construction; Unix proof completes identify before
  UCAN decoding/verification, so the future owner can register proven pending
  identities at the proper point. Integer-second deadlines remain fixed across
  all stages. No actor/network owner, listener, connector, election, monitor
  callbacks, stream multiplexing, renewal, or public constructor is implemented.
- The smaller DID's owner elects and completes its open callback between ready
  and commit. The larger DID's owner completes its callback between commit and
  confirm. Publication follows successful confirm and an owner liveness check.
  This explicit stage boundary avoids speculative callback slots or a circular
  owner interface. Candidate close/phase transitions use a small mutex; I/O and
  joins stay outside it. Temporary writers are joined on success and failure.
- ssl-server-upgrade now accepts timeout: IOTimeout, defaulting to the existing
  default-connect-timeout. The network can use tcp-listen/accept then upgrade with
  its reservation deadline. ssl-listen behavior/defaults are unchanged.
- A large AUTH cancellation test exposed bio-write-char-utf8 retaining its old
  buffer and capacity across a memory drain that grows the buffer. Moved those
  lookups inside the retry loop. This is a shared writer correctness fix, not
  network buffer-cache adoption or a decoder-budget change.
- Final verification: build-conflict checks clear; 8-core make stdlib passed.
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/io/bio/... std/serde/...`
  passed all 16 modules with HARNESS-OK, final OK, and no ERROR output. See the
  Staged Handshake verification record below for intermediate failures and scope.
- Next: review this increment, then implement owner/reservations/election and
  listener/connector integration. Add the shared logger when owner code starts
  handling unexpected failures or monitor callbacks; this driver only propagates
  exceptions, so no unused logger was introduced. Only the BIO fix is authorized
  for this commit; no push is authorized.

### Interface Test Removal Checkpoint

- Post-auth cleanup: vyzo requested removal of interface-test.ss because its
  dispatch/argument-contract probes test compiler behavior, not network
  functionality. Deleted that file and its adjacent documentation section.
  No production code or build registration changed; tests are auto-discovered.
  Historical verification commands below retain the deleted test's name as a
  record of what ran at the time. Do not recreate interface-only dispatch probes.
- Verification: `./build.sh test std/ensemble/network/...` discovered only the
  remaining auth/config/tls/wire suites; all four passed with HARNESS-OK, final OK,
  and no ERROR output. git diff --check passed. No production rebuild was needed.
  This checkpoint accompanies the authorized interface-test removal commit.

### Auth Commit Checkpoint

- Auth review is approved and this checkpoint accompanies the authorized auth
  foundations commit: auth.ss, auth-test.ss, auth.md, and build registration,
  together with the reviewed config/wire refinements and design/handoff notes.
- All authentication timestamps and operation deadlines use integer Unix seconds;
  NetworkConfig operation budgets use positive exact integer seconds. Renewal
  deadline fields retain u64 layouts but mean seconds, not microseconds. IOTimeout
  is unchanged. Use string->utf8/utf8->string directly for UTF-8 conversion.
- Exceptions from normalization, construction, context calls, and codecs propagate
  for abort. No exception-content classification, cycle prechecks, chain identity
  walks, or malformed-blob skipping remain in auth. Ordinary verification-result
  failures still reject candidates. Context anchor validation and implicit roots
  are already committed as 5b38d74f and 84bf594c.
- Verification after review: conflict check clear; 8-core make stdlib passed;
  all ten network/UCAN test modules passed with HARNESS-OK, final OK, and no ERROR
  output. See the final auth verification entry below. Next is establishment;
  no handshake/transport/owner-state implementation is part of this checkpoint.

### Auth Review History

- UTF-8 review convention: use string->utf8 and utf8->string directly, not the
  encoding-generic string->bytes/bytes->string wrappers. Updated auth source/test
  and wire codec conversions, removing unused auth UTF-8 module imports. The
  runtime wrappers used these same primitives for UTF-8, so behavior is unchanged.
  Builds/tests remain deferred during review.
- Further auth review edit: integer Unix seconds now replace real timestamps and
  microsecond deadlines. auth-headroom/operation-deadline use integer addition,
  operation-expired? compares seconds directly, and all timestamp arguments use
  u64 contracts. Removed the fractional-time predicates/conversion/quantization.
  NetworkConfig operation budgets now require positive exact integer seconds.
  Renewal u64 deadline fields mean seconds; wire layouts are otherwise unchanged.
  IOTimeout is unchanged. Updated auth/config tests and adjacent wire/config/auth
  docs plus design notes. Builds/tests remain deferred; these edits are uncommitted.
- Auth review edits are pending and unverified by build/tests. vyzo requires
  exceptions to abort operations: never infer causes by inspecting exception
  messages/irritants or translate encoding/decoding exceptions to candidate skips.
  Removed invalid-did-error?, auth-token-acyclic?, auth-chain-identities?, and
  decode-auth-token; construction and decoding now call existing UCAN APIs without
  catches. Ordinary verification result failures still permit candidate selection.
- Updated auth tests to expect propagated delegation, normalization, cycle and
  malformed/truncated decoding failures, including a bad blob beside valid ones.
  Updated docs/design to supersede the earlier permissive exception policy.
  Builds/tests and commits are deferred during vyzo's ongoing auth review. Previous
  verification records describe earlier code, not these review changes.
- Static delimiter checks passed for auth.ss and auth-test.ss; git diff --check
  passed. Auth security scan reported only the required domain string and false
  unused-parameter warnings (11 low findings). No compilation or runtime tests
  were performed for this review edit.

### Previous Implicit Roots Checkpoint

- This checkpoint accompanies the reviewed, authorized follow-up commit to anchor
  fix `5b38d74f`: vyzo requires opening-time keystore
  principals to act as implicit verification roots. The private `implicit-roots`
  list snapshots `Keystore.list-keys` during context construction, without loading
  private keys or persisting root records. Verification checks these DIDs after
  signature/chain/lifetime validation, alongside explicit roots and input anchors.
- The snapshot stays fixed for the context lifetime. Explicit root APIs still
  manage only database roots; removing one cannot revoke implicit principal trust.
  Keys added later are included on the next open, or can be trusted immediately
  with add-root!. This commit includes source, tests, context/interface docs, and
  design/handoff notes. Auth source/tests/docs remain unchanged and uncommitted
  for review; the auth build registration is also excluded. No push is authorized.
- Verification: clear conflict check; `export GERBIL_BUILD_CORES=8 && make stdlib`
  passed with the existing std/net/request deprecation warning only.
  `./build.sh test std/ensemble/ucan/... std/ensemble/network/...` passed all ten
  modules with HARNESS-OK, final OK, and no ERROR output. MCP verification passed
  for context.ss and context-test.ss; scans reported one low false unused-parameter
  warning per file. Tests cover all principals, direct grants, ancestral roots,
  bad signatures, explicit root independence, snapshots/new opens, and no private
  key loading on open. Explicit-policy fixtures now open before populating keys.

### Previous Anchor Fix Checkpoint

- This checkpoint accompanies the authorized UCAN anchor-admission fix commit:
  context/interface source, tests, adjacent docs, extension tests/docs, and the
  design/handoff notes. Auth foundations (`auth.ss`, tests/docs, and build
  registration) remain uncommitted for vyzo's review. Do not proceed to handshake
  implementation or commit auth before that review. No transport, owner state,
  logger, cache adoption, decoder budget, or database schema change is included.
  Existing cache-benchmark notes are preserved.
- vyzo rejected the proposed `provide!` skip workaround: both input and output
  anchors must be verified before insertion. Context admission now validates
  signatures, expiry, and chains without requiring existing input trust. Per
  vyzo's clarification, opening relies on insertion and expired-row cleanup;
  no reopen-time validation or repair is implemented.
  `ext.ss` is restored to its original simple construction implementation.
- Missing host principal keys now propagate the original keystore error in both
  network construction paths, as explicitly required by vyzo. Delegation-error
  translation is restricted to supplied parents; `provide!` errors propagate.
- Verification: clear build-conflict check, successful 8-core `make stdlib`, and
  `./build.sh test std/ensemble/ucan/... std/ensemble/network/...` passed all ten
  modules with HARNESS-OK, final OK, and no ERROR output. See the anchor-admission
  verification record below. The construction question is resolved; handshake
  ownership/state is the next implementation stage, not yet started.
- Cache adoption remains deferred until the network implementation is complete.
  vyzo specified a comparative interleaved-transfer benchmark using Gambit's time
  primitive macro; follow the Cache Adoption Benchmark section below before deciding.

### Previous Wire Checkpoint

- Wire review is complete and approved. This checkpoint accompanies the wire review
  commit: aligned constants/indentation, dotted typed slot access, fixnum tags and
  bounded cursor arithmetic, direct unchecked big-endian u8vector operations,
  local :- assertions only for known types, and reverse! for the private accumulator.
- Verification for this checkpoint: build-conflict check clear;
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed (existing std/net/request
  deprecation warning only). `./build.sh test std/ensemble/network/wire-test.ss std/ensemble/network/config-test.ss std/ensemble/network/interface-test.ss std/ensemble/network/tls-test.ss`
  passed all four modules with HARNESS-OK and final OK. Wire security scan found
  no issues. Only whitespace was subsequently adjusted in tests/documentation.
- Buffer-cache adoption remains deferred pending performance evidence; the wire
  API still returns exact-sized vectors. Independent BIO cache fixes are committed
  as 5bf97df5 and 7b243978. Next implementation work is auth.ss and its tests/docs.
- Earlier pending/unbuilt entries below are review history, superseded by this
  completed verification checkpoint. No push is authorized.

### Review History

- Cache follow-up to 5bf97df5: buffer-cache.get now checks positive sizes first,
  returns the effectively immutable #u8() literal for zero, and rejects negative
  sizes in else. This cache-only checkpoint includes its documentation update;
  pending wire review edits remain excluded.
- Verification: the 8-core stdlib build completed successfully. The combined
  build/test shell command reached its 120-second tool timeout after build Done,
  so tests were rerun separately. ./build.sh test std/io/bio/... then passed all
  four modules with HARNESS-OK and final OK. Cache security scan found no issues.
- Cache adoption in wire is **DEFERRED** pending performance evidence, by explicit
  user decision. Do not implement the proposed buffer/valid-length codec API or
  wire pooling as part of the separate shared-cache fix. Decoder budget policy
  remains unchanged, and the wire review remains pending.
- Separately authorized BIO cache fix: requests select ceiling-power buckets;
  returned vectors select floor-power buckets and use the existing shrink reset.
  A 13-byte vector therefore cannot enter the 16-byte bucket. Zero requests return
  empty vectors, empty returns are no-ops, and negative requests are rejected.
  Request rounding uses integer-length(size - 1), without an overflowing capacity
  shift. Never-created buckets retain exact-size cold allocation behavior.
- Added adjacent cache tests/docs for capacity, ownership transfer, resizing,
  unspecified contents, zero, and bounded mixed-size churn. Verification is
  recorded below. This handoff accompanies the separate cache-fix commit after
  coordinating review; consult git log for its ID. No wire source/test/doc changes
  are included in that commit, and no push is authorized.
- The authorized cache stdlib build also compiled the pending wire.ss changes
  successfully. Earlier "unbuilt" review entries below describe their historical
  checkpoint, not the current build state. Wire tests were not run for this cache
   task; compilation does not close the pending wire review.

### Wire Review Changes

- Review edit: the decoder finishes its privately accumulated token list with
  reverse! rather than reverse. Use destructive reversal for freshly accumulated,
  unshared lists in future loops; do not mutate caller-owned/shared lists. This
  change remains uncommitted while review is open; it compiled during cache verification.
- Ran an indentation pass on wire.ss using the repository's Emacs gerbil-mode,
  then corrected typed-signature continuation alignment to the requested style.
  Callback/case bodies and argument continuations are aligned. The formatter
  checked that only leading whitespace changed; no build/test or commit was run.
- Local-procedure review refinement: use :- assertions only where callers establish
  the type. Wire local widths/minima, reserve sizes, decoded sizes, prefix flags,
  and descriptor symbols now use assertions. Encoder blob values and bundle lists
  still use checked contracts because they come from caller-supplied payload fields.
  This convention applies to future local helpers, not a blanket conversion of
  top-level signatures or unchecked treatment of unvalidated data. Review edits
  remain uncommitted; they compiled during cache verification.
- Additional review edit: numeric header/payload access now calls
  &u8vector-uint-ref/be and &u8vector-uint-set!/be directly. Header length checks,
  payload take/reserve bounds, and encoded integer validation establish their
  preconditions. Keep this convention in future validated binary code. These
  changes remain uncommitted; they compiled during cache verification.
- Fixnum review edits are pending: FrameHeader.type and payload codec/helper type
  arguments now use :fixnum; type dispatch/range comparisons use fx operations.
  Encoder cursor arithmetic checks remaining capacity before fx+ and caps its
  effective allocation limit to the platform's fixnum range. Fixed byte lengths
  and validated bundle-loop counts use fx comparisons/arithmetic as well.
  Raw u32 lengths/counts are still checked with generic arithmetic before they
  are bounded by an actual buffer; u64 IDs/values remain generic integers.
  Added bignum frame-tag contract regression checks and updated wire.md.
  These edits compiled during cache verification; wire tests remain deferred.
- The next review edit replaces accessor calls in typed wire procedures with
  dotted slot access. Use dotted access and set! on dotted slots within typed
  procedures and using blocks going forward. Existing untyped contract tests
  retain their accessor calls. Changes remain uncommitted; compilation passed.
- Review in progress after wire commit f40b4040. Consecutive frame/reason constant
  values in wire.ss are now aligned vertically, per vyzo's readability request.
  Apply this convention to future constant blocks. This whitespace-only change
  is uncommitted; implementation is paused for further review comments. No new
  build or test run for this edit.
- Wire foundations are implemented, reviewed, and verified on top of
  `866b740a`: `wire.ss`, `wire-test.ss`, adjacent `wire.md`, and the production
   registration in `src/std/build-spec.ss`. This handoff accompanies the wire-module
   commit; consult git log for its ID.
- The API exports the frame/reason constants, typed `FrameHeader`, separate
  envelope encode/decode procedures, and payload encode/decode procedures with
  ordered field lists for all 19 agreed layouts. `limits:` uses ConnectionLimits;
  explicit local `unix?:` selects only the initial AUTH signature suffix.
- Headers validate known types, stream-ID scope, unsigned ranges, and configured
  payload bounds before any payload allocation is needed. The review follow-up
  also derives exact fixed lengths and variable structural minima from the payload
  layout, rejecting impossible lengths at the header boundary. AUTH conservatively
  requires at least four bytes without assuming transport mode. Payloads validate exact
  consumption, strict UTF-8, fixed sizes, nonempty DATA, positive windows/credit,
  and nonzero failure reasons. Unknown nonzero reasons retain their numeric value.
- Encoding measures/validates the entire payload before aggregate allocation or
  UTF-8 conversion. Decoding rejects impossible counts and lengths against remaining
  bytes before candidate accumulation/copying. Bundles remain opaque byte lists;
  malformed token internals and empty blobs are intentionally not authentication
  decisions here. No token count cap or serde resource policy has been introduced.
- Round/request IDs accept the full u64 range including zero; the agreed design
  does not specify a nonzero initial value. Expiration/deadline units are documented,
  but the codec only validates integer representation. Phase, role, DID, selected
  index, monotonicity, lease, clock, and authentication checks remain owner work.
- Final 8-core stdlib build and all four requested network test modules passed.
  MCP verification found no errors; its local-name duplicate warnings are lexical
  scope false positives. Both security scans found no issues. See the exact record
  below. Next implementation step is auth.ss; no transport or authentication is
  claimed by the wire increment.

### Foundation Checkpoint History

- This comment-only review checkpoint adds the opening Network summary:
  "Network is the interface for managing an ensemble host's peer connections and
  listeners." No executable behavior changed; no new build/test run for this edit.
- Workspace: `/home/vyzo/gerbil`, branch `v0.19-std-ensemble`.
- Design document committed as `40c99204` (`document ensemble network design`).
  This fulfilled the requirement to commit the design before implementation.
- Existing interface/TLS work is in `0b9f23f5`
  (`add ensemble network interfaces and DID-named TLS contexts`).
- UCAN context extensions are in `4796d316`
  (`add ucan capability context extensions`).
- Config foundations are implemented, reviewed, and verified in `30f6c067`:
  `config.ss`, adjacent `config.md`, `config-test.ss`, and the production registration
  in `src/std/build-spec.ss`. Defaults and limits share config.ss.
- The interface foundations increment is implemented, reviewed, and verified:
  `interface.ss`, `interface.md`, and the new
  `interface-test.ss`. It adds ttl:/expire: keywords, expiration getters, and the
  bound-Address listen! return contract. No transport or renewal is implemented.
- The pre-existing approved `NetworkMonitor` shutdown warning is preserved and
  included in this interface increment: dispatch Network.close to an application
  worker; Connection.close and Stream.close remain callback-safe.
- Config and build-spec.ss were not changed in this increment. The interface is
  already registered; the root test harness loads the new test file directly.
- This handoff accompanies the interface-focused commit. Consult git log for its
  ID. No wire, authentication, transport, or renewal implementation is included.
- The reviewed formatting-only follow-up is committed as `ad805f96`.
  Config exports now use one
  `(struct-out NetworkConfig NetworkLimits ConnectionLimits StreamLimits)` form;
  typed class fields and interface method argument blocks have aligned annotation
  sigils, with keyword argument parentheses aligned. Contracts, defaults, and test
  declarations are unchanged. This follows the existing incremental commit
  authorization; no push is authorized.
- This checkpoint accompanies the no-timeout-default review fix: all four
  NetworkConfig I/O defaults use the shared !NoTimeout sentinel. Tests verify
  identity with the sentinel and sharing across configurations; nested limits
  remain freshly constructed. Source, tests, docs, and this handoff are included.
- vyzo authorized incremental module-focused commits after compilation and unit
  tests pass, always including changed implementation notes. No push is authorized.
- Ignore `*~` editor backups. Always recheck the actual worktree before editing;
  this checkpoint is not a claim that other work cannot have appeared meanwhile.

## Approved Module Plan

Paths below are relative to this directory unless stated otherwise. This is a
responsibility map, not a claim that the planned files already exist.

| Module | Responsibility | Status |
| --- | --- | --- |
| `interface.ss` | Public Network, Connection, Stream, and NetworkMonitor contracts | Approved additions implemented, reviewed, and verified |
| `config.ss` | NetworkConfig defaults and nested NetworkLimits, ConnectionLimits, and StreamLimits | Implemented, reviewed, and verified |
| `log.ss` | One shared network-package logger | Implemented, reviewed, and verified |
| `wire.ss` | Frame/reason constants and bounded binary codecs | Implemented, reviewed, and verified |
| `auth.ss` | Credential generation/order/selection, lifetime checks, Unix proofs | Implemented and verified, including separately issued tokens and bounded stream-bundle encoding |
| `tls.ss` | DID-based TLS context and certificate identity helpers | Exists with tests/docs |
| `handshake.ss` | Initial handshake state machine for one candidate | Driver and public owner integration verified through CONFIRM |
| `listener.ss` | Bind/listen/accept, bound addresses, Unix path ownership | Public Network ownership integration implemented and verified |
| `connector.ss` | Outgoing address fallback and credential retries | Driver and public owner/join integration implemented and verified |
| `connection.ss` | Established state, transport workers, dispatch, scheduling | Public Connection, authorized OPEN, bounded admission and original-lease framed IO implemented and verified |
| `stream.ss` | Stream buffers, credits, I/O interfaces, directional shutdown | Public Stream, bounded IO and callback-owner integration implemented and verified |
| `renewal.ss` | Requests, rounds, deadlines, credential failover, commit state | Planned |
| `network.ss` | Ownership, peer registry, reservations, election, publication, shutdown | Public original-lease orchestration, joined callers and blocking shutdown implemented and verified; renewal remains |
| `../network.ss` | Small public facade for constructor, interfaces, NetworkConfig, and limits | Implemented and verified by public-only end-to-end tests |

vyzo subsequently merged the proposed config/limits modules into `config.ss` and
renamed `Config` to `NetworkConfig` to avoid requiring import prefixes in higher-
level modules. There is no separate `limits.ss` planned. The limits classes retain
their names and nesting; the constructor still accepts `config:` and `limits:`.

### Dependency Boundaries

- `wire` operates on bounded buffers. It does not authenticate or perform socket I/O.
- `auth` receives the context, identities, credentials, and timing requirements;
  it does not manage connections or the peer registry.
- `handshake` manages a single candidate and requests election decisions from
  network-owned peer state. It does not implement cross-candidate policy itself.
- `listener` and `connector` manage their transport lifecycle paths while using
  the shared authentication/handshake machinery.
- `stream` owns stream-local state. `connection` owns transport multiplexing;
  a blocked stream must not take over or stall its writer loop.
- `renewal` owns renewal state, not another transport loop. `connection` dispatches
  its frames and schedules its output.
- `network` coordinates ownership and peer-level decisions instead of containing
  the implementations of every operation.
- Introduce a small private interface module only if needed for owner/child
  calls without circular imports. Do not create it speculatively or place all
  concrete state types in one shared module merely to evade dependency design.
- Keep internal types/helpers out of the public facade. Avoid a catch-all `util`
  module and avoid splitting trivial helpers into separate modules.

## Implementation Stages

Config and interface foundations are implemented and verified. The interface
increment is in `f56398d9`; the formatting-only review follow-up is also complete
and verified. Wire codecs in stage 2 are now implemented and verified;
authentication foundations and the anchor-admission correction are implemented
and tested. Stage 3 now has a verified single-candidate handshake driver; owner,
listener/connector, and election integration remain unimplemented.

1. Foundations: NetworkConfig and limits classes in `config.ss`, interface changes, adjacent docs, and
   focused defaults/override/validation/contract tests.
2. Wire/auth: constants and codecs, selection and deadline helpers, Unix proof
   handling, and buffer-level tests using existing UCAN/crypto APIs.
3. Establishment: listeners, both transports, reservations, retries, election,
   callbacks, publication, and shutdown; test crossed attempts and failure cleanup.
4. Streams: buffers, credits, scheduling, opening/closing, I/O timeouts, expiry,
   and late frames; test cross-stream isolation and reads larger than the window.
5. Renewal: coalesced requests, credential retries, deadlines, commit transitions,
   and failures before/after commit.
6. Integration: public facade, end-to-end tests, documentation, and security review.
   Use the shared logger from the first implementation modules that need logging,
   rather than deferring logging until this final stage.

Each substantial module gets co-located `*-test.ss` coverage and adjacent Markdown
documentation. Register production modules in `src/std/build-spec.ss` as needed.

## Foundations Checklist

### NetworkConfig And Limits

- `NetworkConfig`: connection/stream TTL defaults of 3600 seconds; handshake, stream-open,
  and renewal timeout defaults of 10 seconds; connection/stream input/output
  defaults represented by `IOTimeout`, initially no timeout.
- `NetworkLimits`: 32 pending connections, with nested connection limits.
- `ConnectionLimits`: 128 total pending/open streams; 16 pending streams; HELLO
  payload 4 KiB, DATA 16 KiB, other control 64 KiB; pending control 256 frames /
  256 KiB including headers; control burst 8; nested stream limits.
- `StreamLimits`: 256 KiB receive window and 256 KiB outbound DATA buffering.
  These are ceilings, not eager allocations. The total stream cap therefore
  permits 32 MiB each of receive and outbound DATA buffering per connection.
- NetworkConfig and limits are immutable by convention while in use. No live
  reconfiguration or defensive copying is planned.
- `config.md` documents exact keyword/slot spellings and generated class APIs.
  Field contracts validate positive exact integer TTLs and operation durations
  (seconds), typed IOTimeout wrappers, nonnegative fixnum admission caps, positive
  fixnum local capacities, and positive u32 payload/window values. No unnecessary
  cross-field ordering is imposed. Resolved expiration/deadline wire-range checking
  remains the responsibility of future operation/codec code, not duration fields.
- Nesting uses `connection-limits:` and `stream-limits:`. Nested limit defaults are
  freshly constructed, supplied objects retained, and checked setters enforce
  contracts. All no-timeout defaults use the preconstructed !NoTimeout object;
  never mutate that shared sentinel or allocate replacement default wrappers.

### Interface Foundations Implemented

- `Network.connect!` and `Connection.open-stream!` now accept optional `ttl:` and
  `expire:`, each defaulting to #f independently of the optional positional auth.
  TTL validates positive exact integer seconds; expiration validates exact u64 Unix
  seconds. Both supplied arguments are checked even though expire takes precedence.
  TTL has no artificial wire-range cap: operation code must validate the resolved
  timestamp before encoding. The interface performs no clock, headroom, deadline
  resolution, or precedence computation; those remain implementation responsibilities.
- `Connection.expire` and `Stream.expire` declare integer absolute Unix-second
  results. Connection renewal may advance the installed lease; stream expiration
  is independent. After close they retain the last installed/accepted expiration.
- `Network.listen!` now declares the actual bound `Address` return, including the
  assigned port for a port-zero listener; no listener implementation is supplied.
- Interface comments and `interface.md` cover ownership/borrowed context policy,
  reuse-or-join with empty addresses, leases, timeout separation, closed metadata
  and registry behavior, advisory/final admission, callback failure/order, and the
  preserved blocking global-shutdown warning.
- The interface-only dispatch/argument-contract probes were removed at vyzo's
  request. Test actual network behavior in the implementation suites rather than
  duplicating compiler dispatch and contract checks.
- Do not expose an unfinished constructor or transport implementation as working
  behavior merely because the interface contracts compile.

## Easy-To-Lose Decisions

- Establishment election and renewal have different coordinators: the smaller DID
  coordinates establishment; the original physical initiator coordinates renewal.
  Unix proof role bytes describe physical direction, not election role.
- Initial handshake uses HELLO, AUTH, asymmetric ACCEPT, and CONFIRM. Larger-DID
  ACCEPT is readiness; smaller-DID ACCEPT commits selection. Tokens are in AUTH,
  not HELLO. The physical responder's HELLO required-expiration field is zero.
- Run open callbacks before reporting success. Any open-callback exception
  aborts without a close callback; the monitor rolls back its own registration.
  Normally returning open callbacks qualify for the later close notification.
- `allow-*` is advisory, prompt, and outside locks. Do not call it for unchanged
  connection reuse or renewal. Pending reservations last through final callbacks
  and local protocol completion, or actual failure cleanup.
- `Network.close` blocks until all network-owned work and eligible notifications
  finish. It must not run inline in monitor callbacks/network workers.
- Stable metadata remains available after close, but closed Network registry
  queries (`peers`, `connections`, `listening`) raise `Closed`.
- Credentials are tried longest-expiration-first, with stable ties and original
  bundle indices in acknowledgments. Try alternative supplied parents after
  credential failure without restarting the operation budget.
- Capture headroom thresholds once per local attempt/round start. Connection
  credentials and the old lease for renewal must meet the configured-timeout
  headroom, independently of the remaining operation deadline.
- Stream authorization is independent of the connection lease. Stream opening
  does not implicitly renew the connection; a higher-level host can pass the same
  `expire:` to connect and open-stream operations.
- Closing a writer drains DATA then FIN; closing the reader or whole stream aborts.
  Reads larger than the window replenish credit incrementally as bytes enter the
  caller's buffer. Writes copy accepted bytes and may return short counts.
- Unknown frame types are protocol errors; unknown nonzero reasons are generic
  failures. Reasons 3/4 concern the recipient's credentials, 12 the sender's own
  credential inability, and 13 old-lease headroom.
- Normal pre-commit renewal failure preserves the old valid lease. Unresolved
  post-commit uncertainty closes the connection rather than pretending rollback.
- Use existing `Closed`, `Timeout`, and `IOError` conventions and preserve original
  exceptions where agreed. Log unexpected exceptions as errors with the one logger;
  do not leak tokens, private material, or exception objects onto the wire.

Consult the design document for full wire layouts, codes, transcript construction,
fallback rules, and timing semantics; this checklist is not a replacement spec.

## Cache Adoption Benchmark

Revisit after the network implementation is complete, as requested by vyzo.
Do not introduce wire buffer pooling before this comparison.

1. Write a benchmark performing multiple large, interleaved transfers over the
   implemented network. Verify transferred contents and byte counts so both
   variants perform the same correct work.
2. Measure the existing allocation-based implementation using Gambit's time
   primitive macro. Record elapsed/CPU time and the allocation/GC statistics it
   reports, including allocated bytes, collection count, and GC time where available.
3. Implement a comparable buffer-cache variant with explicit ownership and valid
   byte ranges. Measure the same workload with the same time macro.
4. Repeat the comparison with randomized transfer chunk sizes. Use reproducible
   seeds and identical chunk sequences for both variants.
5. Keep transfer volume, interleaving/concurrency, transport, limits, build options,
   and measurement boundaries the same. Include buffer return/cleanup in the
   measured work; separate warm-up and use repeated runs to assess variability.
6. Record both sets of results here, including exact commands and environment.
   Compare throughput/time and GC pressure separately; do not infer improvement
   merely from fewer explicit make-u8vector calls or a single noisy timing.
7. Discuss the evidence with vyzo before adopting the cache or changing codec
   ownership APIs. The purpose is to determine whether caching actually improves
   performance and reduces GC pressure for fixed and randomized chunk workloads.

No benchmark or cached wire variant has been implemented yet. Stream-ring cache
adoption was separately approved and implemented at the latest checkpoint; it is
not evidence of a network performance benefit. The independent BIO cache correctness
fixes likewise do not establish such a benefit.

## Explicitly Deferred Or Excluded

- Wire buffer-cache adoption, pending performance evidence and explicit approval.
- Additional serde allocation/depth budgets and new token-count/chain limits.
- Automatic/background renewal, stream-specific renewal, and automatic reconnect.
- Malicious local Unix relays/compromised-host protection; local OS and paths are
  trusted under the agreed threat model.
- A new waiter-limit API, separate connection-wide DATA credit protocol, control
  fragmentation, version negotiation, and live NetworkConfig/limits reconfiguration.
- Compatibility with the obsolete prototype without a concrete requirement.

## Repository And Tool Workflow

- Follow `src/std/AGENTS.md`: typed procedures/classes, explicit exports, one
  production argument/import/export entry per line, descriptive internal names,
  cached interface views, and production `implement` bindings using `__` where
  appropriate. Tests use checked bindings. Prefer existing stdlib abstractions.
- Consolidate multiple class exports in one struct-out form. Align annotation
  sigils in class fields and interface argument blocks. For keyword arguments,
  align their opening parentheses and then their annotation sigils. Carry these
  user-requested readability conventions into subsequent modules.
- In procedures with typed signatures and inside using blocks, use dotted slot
  access/mutation rather than generated accessor/mutator procedure calls.
- When a using binding spans multiple lines, put its type annotation on a
  separate line. Applied to the handshake authentication selection binding.
- Use `do-with-lock` for suitable critical sections. Never invoke user callbacks
  or wait for network workers while holding network/connection locks.
- Do not inspect exception messages or irritants to classify recoverable causes.
  Encoding/decoding and identity errors propagate for abort; use ordinary result
  values for expected verification failures instead of catching exceptions.
- Before writing Gerbil code, use the Gerbil MCP cookbook and inspect actual
  module exports/signatures. Verify syntax/compilation rather than guessing.
- Use `apply_patch` for manual edits. Preserve unrelated worktree changes.
- Approved build setting from the preceding work is 8 cores:
  `export GERBIL_BUILD_CORES=8 && make stdlib` from the repository root.
- Check for competing builds before building. Never run a full build or manually
  set `GERBIL_HOME`. Use `make tools` if the test runner needs building.
- Run focused tests from the repository root with
  `./build.sh test std/ensemble/network/...` or explicit test-file paths. Use
  `./run.sh` for build-local Gerbil evaluation when needed.
- Run security review/scanning on new I/O, transport, filesystem, and cryptographic
  boundary code. Do not reopen explicitly deferred decoder work through that review.
- Incremental module-focused commits are authorized after compilation and unit
  tests pass. Review intended changes before committing; no push is authorized.
  Delegated implementation tasks leave review/commit to the coordinating agent.
- Whenever making a commit, update this handoff as needed and include any changes
  to it in that commit, as vyzo requested. This synchronization rule is not itself
  authorization to create a commit or push.

## Verification Record

### Connector Transport Stage (2026-09-10)

- Uses only high-level stream-connect and ssl-client-upgrade, plus the existing
  make-handshake constructor for TLS key verification/deadline installation.
  No protocol or low-level socket implementation was duplicated. No fallback
  classification based on exception messages/irritants was added.
- `export GERBIL_BUILD_CORES=8 && make stdlib` passed after a clear build-conflict
  check, with Done and only the existing std/net/request deprecation warning.
- First `./build.sh test std/ensemble/network/connector-test.ss` failed solely on
  the fixture's nullable interface field at construction. After replacing it with
  a ServerSocket?-or-false predicate, the focused suite passed. No library type
  system workaround or change outside the connector files was introduced.
- `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/sync/threads-test.ss std/os/flock-test.ss`
  passed all 14 modules, HARNESS-OK, final OK, and no ERROR output. The tests use
  real cryptography and socket I/O, not interface dispatch probes.
- MCP verify passed for connector.ss. Security scans on source/tests and git diff
  --check were clean. A final test-only whitespace pass aligned multiline using
  annotations without changing tokens or behavior. No standalone documentation
  was created for incidental code elsewhere. No commit or push.
- The focused connector suite passed again after that whitespace pass, with
  HARNESS-OK, final OK, and no ERROR output.

### High-Level Listener (2026-09-10)

- vyzo required std/io high-level socket I/O only and a simple shared deflogger
  with export #t. He also required resolve->endpoint in both listener and future
  connector entry points for DNS support. The implemented listener follows these
  constraints; no low-level code from the exploratory investigation was used.
- The listener returns an internal Listener record with bound Address and a
  joinable accept worker. Its small ListenerOwner interface supplies acceptance
  transfer and closed notification, rather than procedure-slot specialization.
  Ownership transfer is protected by cleanup: false or an exception closes the
  untransferred socket. Accepted sockets already transferred survive listener close.
- Compiler verification caught an untyped local socket.close reference in
  constructor cleanup; use the typed self.socket view instead. Read-only test
  review caught an overly broad shutdown catch that would suppress owner errors
  after self-close; narrowed it to the accept call before runtime verification.
  A test-only recursive exception classifier was removed in favor of checking the
  existing OS error type, without inspecting exception contents.
- Eight real-socket cases cover DNS localhost/ephemeral port, bidirectional I/O,
  interrupted accept, repeated close, once-only cleanup notification, continued
  accepting after refusal, transferred sockets surviving close, owner self-close,
  Unix unlink ordering, existing file/listener preservation, replacement sockets
  and symlinks, missing paths, and propagation of acceptance/cleanup callback errors.
- Plain joinable test-operation threads avoid spawn's extra unhandled-exception
  logging. All blocking test operations have finite bounds; listeners and sockets
  are closed during fixture cleanup. No compiler-only dispatch probes were added.
- Clear build-conflict check; `export GERBIL_BUILD_CORES=8 && make stdlib` passed
  with Done and only the existing std/net/request deprecation warning.
  `./build.sh test std/ensemble/network/listener-test.ss` passed on its first run.
  The network/UCAN/threads command in the checkpoint then passed all 12 modules.
  MCP verify passed on listener.ss; source/test security scans and git diff --check
  were clean. A final leading-whitespace-only alignment followed this test run.
- After that alignment, another clear conflict check and 8-core stdlib build
  passed. The focused listener test passed again with HARNESS-OK and final OK.
- No owner registry, reservations, connector, election, TLS/application handshake
  orchestration, or public network constructor is claimed by this increment.
  No standalone documentation was created for incidental code elsewhere.

### Staged Handshake (2026-09-10)

- Read current std/io socket/Reader/Writer, TLS, timeout, wire, auth, and UCAN
  APIs. Inspected exports/signatures and used the MCP cookbook before writing.
  No obsolete prototype was copied, and no interface-only dispatch tests added.
- Handshake retains exact HELLO encodings and credential bundles. Headers are
  checked before payload allocation; Unix proof precedes received-token decoding.
  Canonical HELLO identity, actual TLS certificate key, role-specific expiration,
  selected original indexes, credential coverage, and staged ACCEPT/CONFIRM order
  are enforced. All exceptions abort/propagate; ordinary rejection records its
  reason and whether peer identity had been proven. No exception-content inspection.
- Initial MCP verification caught unsupported optional return annotation syntax;
  internal payload-or-false helpers use :t instead. Splitting identify/authenticate
  left one missing closing parenthesis, caught and fixed before the build. Final
  handshake.ss syntax/compile/lint/arity checks passed.
- First stdlib build passed. The first handshake/TLS test run caught an incorrect
  check wrapping the expected throwing identify call in the bad-proof test; it
  caused a test-harness continuation error. Removed that success assertion so the
  tagged worker outcome receives the intended exception. Both modules then passed.
- Added real backpressured AUTH cancellation on both Unix and TLS and deadline
  enforcement after delayed real UCAN verification. The large-token test exposed
  a Heap overflow in shared UTF-8 memory output. Splitting test data into strings
  within the existing 65536-element decoder limit did not resolve it: source
  inspection found stale buffer/capacity references in bio-write-char-utf8's retry
  loop. Refreshing them inside the loop fixed the overflow. No heap-limit bypass,
  decoder-budget relaxation, or serializer change was made.
- New writer-test.ss checks both character/string APIs with four-byte initial
  memory buffers, each UTF-8 width, preserved prefixes, and 4096 mixed-width
  characters. After rebuilding, writer and handshake tests passed together.
- Read-only handshake review found no confirmed protocol defect and highlighted
  cancellation/non-I/O deadline coverage, added as above. Coordinating review also
  serialized final liveness/phase updates with close to prevent cancellation
  resurrection. No socket I/O, crypto, or worker join runs under the candidate mutex.
- TLS tests cover an expired absolute server-upgrade deadline with a silent peer,
  closed transport/peer EOF afterward, and successful mutual upgrade using one
  absolute deadline. Existing default TLS tests remain passing.
- Eleven handshake cases cover real Unix/TLS success in both physical DID orders,
  lease derivation, exact selected credentials, negotiated bounds, post-confirm
  bidirectional bytes, precommit refusal, wrong TLS/Unix identity, plaintext TCP
  rejection, invalid envelopes without payload reads, bad Unix proof, malformed
  token after valid proof, invalid ACCEPT index, postcommit close/missing CONFIRM,
  external cancellation with an outstanding writer, and deadline checks after
  non-I/O verification and during silent-peer reads. Tests explicitly check writer
  existence before cancellation and its absence after stage completion.
- Final conflict check clear; `export GERBIL_BUILD_CORES=8 && make stdlib` passed
  with Done and only the existing std/net/request deprecation warning.
  `./build.sh test std/ensemble/network/... std/ensemble/ucan/... std/io/bio/... std/serde/...`
  then passed all 16 modules, HARNESS-OK, final OK, and no ERROR output.
- Security scans: handshake.ss, ssl/server.ss, and bio/writer.ss clean;
  handshake-test.ss has one low false unused-mode warning (mode is used).
  Delegated static scans of TLS/writer tests found no actionable issues. No
  full build, manual GERBIL_HOME, commit, or push. Network owner lifecycle,
  crossed-candidate election, and publication races remain future work, not claims
  made by this single-candidate test suite.

### Final Auth Review Verification (2026-09-10)

- vyzo approved auth and then explicitly requested build/test/fix/commit before
  continuing implementation. No establishment work was added; the exploratory
  transport-research task was cancelled.
- Build conflict check found no competing build. From the repository root,
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed with Done; only the existing
  std/net/request deprecation warning appeared.
- `./build.sh test std/ensemble/network/... std/ensemble/ucan/...` passed all ten
  modules, HARNESS-OK, final OK, and no ERROR output on the first run. No functional
  fix was required. Final diff review corrected test indentation only and clarified
  that auth context verification includes implicit principal roots.
- After that formatting/documentation pass, a second clear conflict check and
  the same 8-core stdlib build passed. The same ten-module test command passed
  again with HARNESS-OK, final OK, and no ERROR output. The commit includes this
  verified final checkpoint; no establishment implementation is included.
- MCP verify: auth.ss syntax/compile/lint/arity passed. auth-test.ss had zero
  errors and ten duplicate-name warnings for separate test-case local bindings.
  Security scans: wire.ss and config.ss clean; auth.ss eleven low findings and
  auth-test.ss three low findings, all required protocol-domain strings or false
  unused-parameter reports. No medium/high/critical findings or suppressions.
- The current tests exercise integer-second range/headroom/deadline contracts,
  fractional/inexact rejection, independent IOTimeout precision, exact Unix proof
  bytes/tampering, normalization, stable selection/original indices, anchor trust,
  and propagated malformed-token/DID/cycle/delegation/missing-key failures.
  These are pure/crypto/context tests, not transport or lifecycle tests.
- Earlier permissive-decoder and fractional-time verification entries below are
  historical and superseded by this reviewed implementation. No full build,
  manual GERBIL_HOME setting, buffer-cache adoption, decoder-budget change, or push.

### Anchor Admission Correction (2026-09-10)

- Final simplified implementation: build-conflict check clear;
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed with Done, followed by
  `./build.sh test std/ensemble/ucan/... std/ensemble/network/...` passing all ten
  modules, HARNESS-OK, final OK, and no ERROR output. This run includes removal of
  all reopen-time validation and its unsupported manual-corruption test. Final
  context security scan has one low unused-parameter false positive in the
  unchanged save-token! procedure. `git diff --check` passed. No commit or push.
- vyzo rejected the consumer-side skip workaround and required verification of
  both input and output anchors. Restored `ext.ss` to the original root-plus-map
  implementation. No catch-and-continue or redundant preverification remains there.
- Both context insertion methods validate with `verify-token` before persistence,
  outside the context mutex. Invalid verification results raise a contextual
  `ContractViolation` containing only the reason, not the credential. Existing
  key, codec, and cryptographic exceptions propagate. No existing trust path is
  required to install an anchor; installation is an explicit policy decision.
- vyzo clarified that only context-managed database writes need to be supported.
  Removed the initially added reopen-time verification and corruption-injection
  test. No reopen-time validation or repair remains: insertion verification and
  expired-row cleanup establish the invariant. Invalid manual database changes
  are unsupported and may fail when used. Storage API and schema are unchanged.
- Updated old tests that used unsigned input policy tokens to sign those anchors.
  Added rejection coverage for both kinds: missing signature/nonce, corrupt
  signature, tampering, expiry, invalid DID, cycles, and a signed invalid
  delegation edge. Tests verify unchanged anchor sets and snapshot ownership.
  The existing valid-anchor persistence/reopening test is retained.
- Network/extension integration now rejects a bad anchor between valid insertions
  and verifies the remaining alternatives and trust behavior. Removed custom
  contexts returning corrupt anchors. Retained signing-error propagation tests.
- vyzo additionally required missing host principal key errors to propagate.
  Network tests verify the original keystore diagnostic on both direct and
  supplied-parent construction. No missing-key-to-empty-bundle translation remains.
- The earlier skip implementation passed a build and ten-module test run before
  vyzo rejected the approach; those passes do not validate this replacement.
  One earlier build was interrupted and terminated without completion.
- Verification before removal of reopen-time checking: no competing builds;
  `export GERBIL_BUILD_CORES=8 &&
  make stdlib` passed with Done and only the existing std/net/request deprecation
  warning. `./build.sh test std/ensemble/ucan/... std/ensemble/network/...` passed
  all ten modules, HARNESS-OK, final OK, and no ERROR output.
- MCP syntax/compile/lint/arity checks passed for context.ss and context-test.ss.
  Security scans before the final simplification: context.ss two low false unused-parameter reports;
  context-test.ss one analogous report; ext-test.ss no findings. Prior auth scans
  found only the required protocol-domain string and false unused-parameter reports.
  Static coordinating review found no runtime defect; corrected one stale auth
  comment and this previously outdated handoff. No commit or push was performed.

### Auth Foundations (2026-09-10)

- Read AGENTS, this handoff, full relevant design sections (auth, fixed deadlines,
  canonical identities, headroom, Unix transcript, and reasons 3/4/12/13), and
  actual wire/config, UCAN context/cap/ext/did/util, serde, pkey, and keystore code.
  MCP cookbook, exports and signatures were consulted. HEAD was `f7186ef5`;
  initial dirty files were only design-notes.md and implementation-notes.md.
- API: AuthCandidate retains original index, decoded Token, and original blob;
  AuthSelection holds the selected candidate or reason 3/4. Bundles use existing
  provide!/delegate!/marshal-token/unmarshal-token helpers. Identities supplied
  to helpers normalize without rewriting signed fields. Selection uses real
  CapabilityContext.verify, not signature-only verification. Exact raw Unix
  transcript/sign/verify helpers take known key wrappers and physical roles.
- Lifetime resolution takes explicit integer-second start, while headroom and
  operation helpers accept finite fractional times. Exact arithmetic precedes
  flooring operation deadlines to u64 microseconds. Headroom is independent and
  never recomputed from now; stream owners pass zero. No IOTimeout defaults changed.
- Expected serde contract/parse/truncation errors are caught only at the pure
  unmarshal-token boundary. Known DID decoder failures are isolated before
  context verification; native failures and arbitrary context exceptions propagate.
  Known delegation/signing checks and the specific keystore missing-key contract
  classify local credential failure. No exception/token dumps are added. The
  existing decoder does not distinguish all malformed class-loading failures from
  internal loader errors; unclassified errors propagate rather than adding a
  catch-all or introducing a new class-loading/decoder policy.
- Initial MCP compile check caught using a predicate as a `:?` type for optional
  TTL/expiry arguments. Replaced with the existing interface's
  `:~ (? (or not predicate))` form; compilation then passed. An exploratory MCP
  exception probe used unavailable object->class-name; removed it and inspected
  only existing error fields. No production dependency on that name was added.
- First root auth-test run caught direct keyword syntax on class-instance-init!
  in the failing-context fixture. Fixed to apply with a keyword/value list, as in
  existing UCAN tests. The focused auth test then passed. Final network-wide test
  passed after adding canonical signed-field, missing-key, and signing-error cases.
- Both 8-core stdlib builds passed with Done; only the existing std/net/request
  deprecation warning appeared. No full build, make tools, manual GERBIL_HOME,
  commit, or push was performed. Coordinator retains review/commit responsibility.
- Exact final test command: `./build.sh test std/ensemble/network/...` from the
  repository root. All auth/config/interface/tls/wire modules reported MODULE-OK,
  HARNESS-OK and final OK. Auth has four pure/crypto cases and four SQLite-enabled
  real-context cases, including every proper truncation of a serialized live
  token, DAG-cycle rejection, stable ties/original indices, root/input/output trust,
  bad signatures, malformed ancestor DID, expired/short parents, fractions/ranges,
  exact UTF-8 transcript, tampering, wrong roles/keys, and propagated context errors.
  UCAN source was unchanged; its separate suites were not rerun for this increment.
- Final MCP verify on auth.ss: syntax/compile/lint/arity all passed. auth-test.ss
  had zero errors and five duplicate-name warnings for local definitions in
  separate test cases, not conflicting top-level definitions. Security scans:
  auth.ss 14 low findings, auth-test.ss three low findings. The required protocol
  domain is intentionally not obfuscated; unused-security-parameter warnings are
  false positives (the named arguments are all used). No medium/high/critical
  finding. No scan suppression was added to hide the required domain.
- `git diff --check` passed. MCP cookbook/feature-recording tools unexpectedly
  created local data/cookbooks.json and data/features.json; removed those newly
  created files to keep the requested repository scope. No pre-existing files
  outside the requested scope were modified.

#### Output-Anchor Construction Question (Resolved)

Historical investigation follows. The proposed skip workaround was rejected by
vyzo in favor of verifying both anchor kinds at context admission. See the
current checkpoint and Anchor Admission Correction above; do not reintroduce it.

The existing `ucan/ext.ss` provide! maps delegate! over eligible output anchors.
One anchor's signing/chain failure aborts the entire call, discarding the direct
grant and any other successful alternative. A real-context MCP reproduction
generated a normal no-parent bundle (length 1), inserted an otherwise eligible
DELEGATE output anchor with its signature replaced by 64 zero bytes, and retried
the same operation (length 0 through the current auth wrapper). Only counts were
printed. This is a verified limitation, not a benchmark or transport result.

Ask the coordinator before changing behavior/scope: should provide! gain scoped
per-anchor failure handling, or may auth construct the direct grant and delegate
each output anchor independently with existing helpers instead of calling
provide!? The latter avoids changing UCAN but departs from the requested provide!
construction path. Do not introduce a context proxy, duplicate capability checks,
or silently treat the current all-or-nothing behavior as completed credential
failover. Add a bad-anchor-between-good-alternatives regression after the decision.

- Coordinating-agent cache review confirmed the ceiling-request/floor-return
  invariant, zero handling, and preservation of cold allocation behavior. A further
  `./build.sh test std/io/bio/...` run passed all four modules, HARNESS-OK and final
  OK. This verifies the separate cache fix, not the pending wire-review test changes.
### Separate BIO Cache Fix (2026-09-09)

- Read `src/std/AGENTS.md`, `src/std/io/bio/cache.ss`, and `src/std/cache.ss`;
  consulted the MCP cookbook and actual exports/signatures. Confirmed checked
  `make-CacheOps`, `CacheOps-flush!`, and `CacheOps-size` take one argument each.
  Tests flush only `__buffer-cache`, with cleanup on failure, never global caches.
- MCP build-conflict checks found no conflicts before all three builds.
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed three times with `[*] Done`;
  the existing `std/net/request` deprecation warning appeared. The first build
  compiled the pending wire.ss edits successfully; no wire files were changed.
- Initial MCP test verification caught an unnecessary, unavailable `:std/sugar`
  import. Removed it: `unwind-protect` is already available in the core language.
- Initial `./build.sh test std/io/bio/cache-test.ss` reported an identity assertion
  failure, despite MODULE-OK/HARNESS-OK and a zero shell status. A cold exact-size
  allocation had been returned to the same lower bucket ahead of the original.
  Corrected the test to retain that buffer until after the identity assertion.
- Final `./build.sh test std/io/bio/cache-test.ss` passed with MODULE-OK,
  HARNESS-OK, final `OK`, and no ERROR output. Its four cases cover the 13-to-16
  regression, same/lower bucket identity after ownership transfers back, 20
  boundary/mixed sizes, zero/negative inputs, and 32 rounds of requests 1..129
  (4,128 churn capacity checks). No enormous buffers are allocated.
- `./build.sh test std/io/bio/...` passed twice, including after the final
  indentation-only correction and rebuild, for all four modules: `bio-multi-test.ss`,
  `bio-test.ss`, `cache-test.ss`, and `port-test.ss`, with all MODULE-OK markers,
  HARNESS-OK, final `OK`, and no ERROR output.
- MCP `gerbil_verify` on cache.ss and final cache-test.ss with loadpath
  `/home/vyzo/gerbil/build/lib`: syntax, compile, lint, and arity all passed.
  Security scans of both files found no issues (44 rules each); the test assertion
  audit found no issues. `git diff --check` passed.
- Scope: BIO cache source, adjacent tests/docs, and this handoff only. Shared
  `src/std/cache.ss` and exponent-cache behavior are unchanged. No full build,
  manual GERBIL_HOME setting, commit, or push. No concurrency stress test or huge
  allocation test was run. Wire cache adoption remains DEFERRED pending performance
  evidence; wire review and decoder budget policy remain untouched.

### Earlier Network Verification

- Final coordinating review checked source, tests, docs, and build registration,
  including the header-length refinement. A further
  `./build.sh test std/ensemble/network/wire-test.ss std/ensemble/network/config-test.ss std/ensemble/network/interface-test.ss std/ensemble/network/tls-test.ss`
  passed all four modules with HARNESS-OK and final OK before the wire commit.
- Wire header review follow-up (2026-09-09):
  - Header validation now derives fixed/minimum payload lengths from existing
    field descriptors, without a second per-frame size table. The payload decoder
    retains internal length/content and transport-specific suffix validation.
  - Changed the encoder's optional output contract from :t to :? :u8vector;
    MCP syntax/compilation checks confirm support. Inspected actual exports and
    implementations in :std/number/misc and replaced runtime exponentiation with
    its uint16?/uint32?/uint64? predicates (constant upper bounds).
  - Added a twelfth wire test case checking encode/decode header rejection for
    every undersized declaration across all 19 types, fixed-size overflow by one,
    exact fixed/minimum acceptance, and variable-size acceptance above minimum.
    Updated wire.md to describe header-boundary length enforcement.
  - MCP build-conflict check: no conflicts.
    `export GERBIL_BUILD_CORES=8 && make stdlib` passed on the first attempt;
    only the existing std/net/request deprecation warning appeared.
  - `./build.sh test std/ensemble/network/wire-test.ss std/ensemble/network/config-test.ss std/ensemble/network/interface-test.ss std/ensemble/network/tls-test.ss`
    passed on the first attempt: all four MODULE-OK markers, HARNESS-OK, final OK.
  - MCP gerbil_verify on wire.ss and wire-test.ss using loadpath
    `/home/vyzo/gerbil/build/lib`: zero errors; the same four production and two
    test lexical-scope duplicate-name false positives remain. Security scans on
    both files found no issues (44 rules each). No commit or push was made.
  - The follow-up changes only wire.ss, wire-test.ss, wire.md, and this handoff;
    the existing build registration remains unchanged. No protocol-owner behavior
    or generalized validation framework was introduced.

- Wire codec verification (2026-09-09):
  - Read the agreed layouts/code tables and consulted MCP cookbook, actual exports,
    procedure signatures, and strict UTF-8 behavior before implementation.
  - MCP build-conflict checks before both stdlib builds found no conflicts.
    `export GERBIL_BUILD_CORES=8 && make stdlib` passed twice. Only the existing
    `std/net/request` deprecation warning was reported. No full build, make tools,
    manual GERBIL_HOME setting, commit, or push was performed.
  - Initial
    `./build.sh test std/ensemble/network/wire-test.ss std/ensemble/network/config-test.ss std/ensemble/network/interface-test.ss std/ensemble/network/tls-test.ss`
    caught test-local definitions inside `when` (illegal expression at the `fits`
    definition). Replaced them with `let` bindings. The same command then passed;
    after additional limit/decoded-zero/code-table tests and formatting, the final
    same command again passed all four MODULE-OK markers, HARNESS-OK, and final OK.
    As in earlier work, do not trust the harness shell exit status alone.
  - The 11 wire test cases cover all 19 roundtrips, every proper truncation of each
    structured example, trailing bytes, golden BE fields/envelope, u64 boundaries,
    known type/scope rules, count/length impossibility, malformed UTF-8, original
    opaque token bytes, Unix AUTH exact suffix versus TLS, independent configurable
    limits, aggregate encoding limits, positivity, reason codes, and field counts.
    They do not test cryptography, sockets, authentication, or phase machines.
  - MCP `gerbil_verify` on wire.ss and wire-test.ss with loadpath
    `/home/vyzo/gerbil/build/lib`: zero errors. Production has four duplicate-name
    warnings for local `pos`, `number`, `blob`, and `bundle` definitions in separate
    encoder/decoder scopes. Tests have two analogous warnings for local `hello`
    and `bytes` definitions. These are not duplicate top-level bindings.
  - MCP security scans on both files: no findings, 44 rules each. Manual boundary
    review checked length-before-copy/allocation, aggregate output preflight, and
    explicit transport state. Deferred token deserialization budgets remain deferred.
  - MCP assertion audit reported six multiline checks as missing their operators;
    each has its `=>` on the continuation line. These are scanner false positives.
  - `git diff --check` passed on the documentation handoff as well. Worktree status
    contains only the five requested files. No edits outside that scope.

- No-timeout-default review verification (2026-09-09): MCP confirmed !NoTimeout is
  exported by :std/time/timeout; build-conflict check found no conflicts.
  `export GERBIL_BUILD_CORES=8 && make stdlib` passed, with only the existing
  std/net/request deprecation warning.
  `./build.sh test std/ensemble/network/config-test.ss std/ensemble/network/interface-test.ss std/ensemble/network/tls-test.ss`
  passed all three modules, HARNESS-OK and final OK. Default tests now check
  sentinel identity, not allocation of fresh timeout wrappers.
- Formatting-only review verification (2026-09-09):
  - Inspected `src/gerbil/core/module-sugar.ss`: `struct-out` accepts `id ...`
    and concatenates each class's generated exports, preserving the export set.
  - MCP cookbook, module export, and procedure signature checks completed before
    source edits. MCP build-conflict check reported no conflicts.
  - `export GERBIL_BUILD_CORES=8 && make stdlib`: passed; the existing
    `std/net/request` deprecation warning remains unrelated.
  - `./build.sh test std/ensemble/network/config-test.ss std/ensemble/network/interface-test.ss std/ensemble/network/tls-test.ss`:
    all three modules passed with MODULE-OK, HARNESS-OK, and final OK.
  - `git diff --check`: passed. Source changes are whitespace-only apart from the
    equivalent consolidated export form. No test declarations changed, no full
    build or manual GERBIL_HOME was used, and no commit or push was made.
  - Coordinating review confirmed the export consolidation and annotation
    alignment. No later implementation stage or transport behavior is claimed complete.
- Interface foundations verification (2026-09-09):
  - MCP build-conflict checks before both builds: no conflicts.
  - `export GERBIL_BUILD_CORES=8 && make stdlib`: passed twice. The existing
    `std/net/request` deprecation warning remains unrelated. No full build,
    make tools, config/build-spec change, or manual GERBIL_HOME was needed.
  - `./build.sh test std/ensemble/network/interface-test.ss`: initial runs caught
    missing IOTimeout/Token imports required by implement expansion (added
    :std/io/interface, :std/time/timeout, and ../ucan/interface), then an unknown
    address domain in bare test strings (fixed to canonical inet4: spelling).
    The corrected six-case suite passed. The root harness may exit zero on failure;
    inspect its ERROR output and final OK, not merely the shell exit status.
  - Final `./build.sh test std/ensemble/network/interface-test.ss std/ensemble/network/config-test.ss std/ensemble/network/tls-test.ss`:
    all three modules passed, HARNESS-OK and final OK.
  - MCP gerbil_verify on interface.ss and interface-test.ss, with loadpath
    `/home/vyzo/gerbil/build/lib`: syntax, compile, lint, and arity all passed.
  - MCP security scans on both changed .ss files: no findings (44 rules each).
    This increment has no new I/O, FFI, filesystem, or cryptographic boundary code.
  - MCP assertion audit on interface-test.ss: no issues. `git diff --check` passed,
     including documentation and this handoff.
   - Coordinating-agent review checked source, docs, and tests; clarified that
     expiration advances at each endpoint's local renewal commit transition.
     A further three-module harness run passed with HARNESS-OK and final OK.
   - Lease precedence, temporal rejection, callback ordering, and lifecycle behavior
    are documented requirements, not runtime-verified transport behavior.
- Config foundations verification (2026-09-09):
  - MCP build-conflict checks before every build: no conflicts.
  - `export GERBIL_BUILD_CORES=8 && make stdlib`: final two runs passed. Initial
    attempts caught an unavailable `positive-fixnum?` (replaced with a small field
    predicate) and missing `:std/number/misc` import for `positive-integer?` (fixed).
    The existing `std/net/request` deprecation warning remains unrelated.
  - `./build.sh test std/ensemble/network/config-test.ss`: passed twice, including
    the final seven-case suite with checked-setter coverage. Covers all defaults,
    overrides, identity-preserving nesting, independent limits, zero admission,
    u32 boundaries, invalid values/types, and fresh nested defaults. No `make tools`
    was needed. No full build was run and GERBIL_HOME was not manually set.
  - MCP `gerbil_verify` on `config.ss` with loadpath `/home/vyzo/gerbil/build/lib`:
    syntax, compile, lint, and arity passed. Initial default-loadpath verification
    failed on stale/incompatible `.gerbil/lib/std/time/timeout~1.scm` syntax; using
    the repository build artifacts resolved that tool-environment issue.
  - MCP `gerbil_verify` on final `config-test.ss` with the same loadpath: zero
    errors; five false-positive duplicate-definition warnings for local names
    reused in separate test cases. Assertion audit flagged two multiline checks
    whose `=> #f` operators are present on their continuation lines.
  - MCP security scan of `config.ss`: no findings (44 rules). This increment has
    no transport, filesystem, shell, FFI, or cryptographic boundary code.
   - `git diff --check`: passed, including the implementation handoff update.
- Final coordinating-agent review covered config source, tests, documentation,
  build registration, and the design-note changes. A further
  `./build.sh test std/ensemble/network/config-test.ss` run passed with HARNESS-OK.
- Prior baseline, reported in the preceding session context: the interface/TLS
  commit built with 8 cores and selected Base32, network TLS, and UCAN tests passed.
  This is historical context, not verification of future implementation changes.
- As stages progress, record exact commands, outcomes, failures, and any limits
  of verification here. Do not equate static inspection with runtime testing.

## Resume Here

1. Read this document, the relevant design sections, and `src/std/AGENTS.md`.
2. Check `git status`, current sources, and active builds. Preserve the approved
   `interface.ss` comment and any unrelated edits.
3. Config and interface foundations are complete and verified. The interface
   checkpoint includes its source, docs, contract tests, and this handoff. Preserve
   the included monitor shutdown warning.
4. Establishment foundations through reviewed `fcfddcd4` include retry driving,
   transport attachment, and internal owner reservations/election. Bounded cached
   stream state is committed in `4ec678fb`. The actual blocking StreamIO core is
   implemented, reviewed, verified and committed in `6299d5f5`, with separate input/
   output mutexes and CVs. The core :condvar fix is committed in `5cedbfb3`.
   Follow the latest checkpoint at the top for pending files and next work;
   do not resume from superseded buffer-only checkpoints. The private fixed-control/
   DATA scheduler is implemented, reviewed and verified in this checkpoint; production parent
   wake/idle-expiry and FIN/credit integration have not been implemented.
   Public Network/Connection, publication/callback pairing, stream multiplexing,
   worker shutdown completion, and renewal remain unimplemented. Both transport
   entry points must use stream-listen/stream-connect, which resolve endpoints
   internally, and high-level std/io socket operations.
   Preserve integer-second timing,
   direct UTF-8 conversions, and exception propagation for abort. Invalid anchors
   are rejected at context insertion, not skipped or repaired when used/opened.
   Preserve opaque tokens, exact received proof bytes, the deferred cache benchmark
   plan, and unchanged decoder-budget policy.
5. Ask vyzo about meaningful uncertainties or design departures. Do not restart
   already-settled discussions merely because older chronological notes say open.
