# Listener Lifecycle

`listener.ss` is an internal transport-lifecycle module for the network owner.
It uses only high-level `:std/io` socket operations. It does not authorize peers,
perform TLS or application handshakes, implement pending limits, or publish
connections. Its types and helper exports must not be re-exported by the public
network facade.

## Construction

`make-listener(owner, address)` calls `stream-listen`, which resolves DNS addresses
and dispatches internet and Unix endpoints. It retains the actual socket address
in `Listener.address`.
This includes the assigned port for TCP port-zero listeners. The existing std/io
backlog and socket-option defaults are used without private socket setup.

The listener owns its server socket, Unix sidecar lock when applicable, and one
accept thread. It borrows the `ListenerMonitor`. The owner must track listener
construction as network-owned work
until it either registers the result or closes it. Setup completes before the
accept worker starts, but callbacks may run before `make-listener` returns.
`Network.listen!` returns the listener's captured address after
registration and checks concurrent network closure before reporting success.

Unix listeners require a nonempty, NUL-free filesystem pathname. Construction
creates missing parent directories with `create-directory*` before opening the
sidecar lock. Existing directories are left unchanged; errors propagate normally.
Directories are not removed during cleanup.

Before binding `sock`, construction opens `sock.lock` without truncation or symlink
following and tries an exclusive advisory lock. It uses `open-file-writer/lock` with a zero
timeout: contention fails immediately with `Timeout`, without touching `sock`.
The lock file is created with mode 0600 when absent.

Once locked, an existing socket pathname is removed so an abandoned socket from
a previous run does not prevent startup. A non-following file-type check refuses
to delete regular files, directories, or symlinks. No socket inode tracking is
needed: cooperating listeners use the lock to establish ownership.

The lock stays held throughout the listener's lifetime. On construction failure
after the bind attempt starts, any socket pathname is cleaned up before the lock
is released. Shutdown closes the server socket, removes its pathname, releases
the lock, and notifies the owner. Cleanup still releases the lock if unlink fails.
The `.lock` file is never removed: it must remain a stable lock inode across runs.
The OS releases the lock when its last open handle closes, including process exit.

This is cooperative exclusion, not protection from processes bypassing the lock.
The socket and sidecar paths must stay under listener ownership; callers must not
rename or replace them externally. Filesystem errors propagate normally, and
non-socket paths are never treated as stale sockets.

## Listener Monitor

`ListenerMonitor` has two methods, called without the listener mutex:

- `accept!(listener, socket)` receives a newly accepted raw `StreamSocket` and
  returns a boolean. True transfers ownership; false makes the listener close
  that socket and continue accepting. The owner reserves pending capacity and
  registers its worker before returning true. If it raises, the untransferred
  socket is closed and the listener aborts. It must return promptly, not run a
  handshake inline and stall acceptance.
- `closed!(listener)` runs once after server-socket/Unix-path cleanup and lock
  release, before the accept worker exits. It lets the owner retire its listener registration.
  It runs even when acceptance or cleanup fails, and must return promptly.

TCP acceptance transfers a raw socket. The owner must use mutual TLS before
passing it to the network handshake driver. Both TLS and application handshake
must use the pending attempt's fixed deadline. An owner at capacity or already
closed returns false rather than creating unbounded pending work.

## Shutdown And Errors

`listener-close!` atomically marks closed on the first call, closes the server
socket to interrupt accept, and joins the worker outside the mutex. Close ignores
socket-close and join errors and returns void. An already closed listener is an
immediate no-op, including when its worker is still completing cleanup.
Calling close from an owner callback skips self-join; cleanup completes when that
callback returns. An owner requiring completion must explicitly join the worker,
even if close was already requested. Previously transferred sockets belong to the
owner and are not closed by listener shutdown.

Only an accept failure during requested shutdown is treated as normal. Exceptions
from owner callbacks and cleanup remain available through an explicit
`network-thread-join!`, even if the callback closed the listener first. The internal
worker result wrapper retains the exact exception, including `#f`; a raw native
join alone does not rethrow it. Unexpected worker failures are logged
through the one `/ensemble/network` logger with address context and
`exception: (exception->string e)`. No exception messages or irritants
are inspected to infer a recoverable cause. Cleanup still attempts socket close,
pathname cleanup, lock release, and owner notification if an earlier action raises.

## Tests

`./build.sh test std/ensemble/network/listener-test.ss` exercises real DNS/TCP and
Unix sockets, byte handoff, refusal, close/join, transferred socket ownership,
self-close, notification ordering, lock contention before and after binding,
sidecar persistence, stale-socket recovery, non-socket preservation, and lock
release after failure. Stale recovery is tested by closing a raw socket and its
lock handle without unlinking the pathname, not by killing a process. The suite
does not simulate peer election or claim a complete network constructor.
