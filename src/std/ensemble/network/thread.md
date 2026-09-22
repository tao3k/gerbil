# Internal Network Workers

`thread.ss` is an implementation-only module. Neither the public network interface
nor its facade exports its helpers, marker or result wrapper.

`spawn-network-thread(name, thunk)` starts a named actor with a non-inherited
thread-local marker. The marker remains set during cleanup. Application children
start with independent locals; `Network.close` alone uses the marker to reject
worker-side blocking shutdown before taking locks or changing state.

An outer `with-catch` aborts out of `thunk` before its handler runs. Consequently,
dynamic finalizers finish before the handler logs `Network worker failed` at debug
level through the existing `/ensemble/network` logger and returns a final
`NetworkThreadError` containing the original `exception : :t`, including raised
`#f`. No generic symbol represents failure. Normal results, including `#f` or
returned exception objects, are unchanged. The internal wrapper is reserved for
completed worker failures, not ordinary application data.

This prevents handled worker failures from reaching the actor's unhandled-error
stack-trace wrapper. It does not remove the runtime's abortive root handler, change
existing contextual logs inside workers, or introduce asynchronous cancellation.
Owners still cancel cooperatively, close sockets to unblock IO, finish callbacks,
and join before releasing borrowed resources.

`network-thread-join!(thread, [timeout, timeout-value])` delegates to
`thread-join!/error` and raises the exact exception from a completed wrapper.
It also accepts ordinary application threads: normal results and native worker
exceptions keep the shared join helper's semantics. Omitted, false, relative and
absolute timeouts behave as before. A private timeout sentinel preserves every
explicit timeout value, even a `NetworkThreadError` supplied as that value.
A worker-raised `Timeout` or native join-timeout exception is not translated into
a timeout of the caller's join.

Raw native joins now see a normal completion containing `NetworkThreadError` on
worker failure. The two connection aggregate barriers deliberately inspect this
result themselves: only a completed result or native uncaught-exception wrapper
proves termination. They retain the first failure while joining remaining workers,
without swallowing a join-operation failure or confusing a worker's `Timeout`
with an incomplete join. `connection-shutdown!` still suppresses only the exact
stored parent-close failure, retaining distinct cleanup failures including `#f`.
Tests that inspect thread state must not equate normal termination with success.

`thread-test.ss` covers ordinary results and returned exceptions, original raised
object identity and `#f`, dynamic cleanup before completion, marker retention,
relative/absolute/polling/omitted timeout semantics and worker-raised native timeout
identity. Logger behavior is source-reviewed; the test does not mutate the shared
global logging configuration or assert asynchronous sink delivery.

After the main process rebuilds stdlib, run:

```sh
./build.sh test std/ensemble/network/thread-test.ss
./build.sh test std/ensemble/network/...
```
