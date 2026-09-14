# Advisory File Locking

Import `:std/os/flock` to use advisory file locks.

## flock

```text
(flock dev op) => (Maybe :fixnum)
```

Attempts a nonblocking lock operation on an open `OSDevice`. `op` is `LOCK_SH`,
`LOCK_EX`, or `LOCK_UN`. Returns zero on success, or `#f` if the lock would block.
Other syscall failures raise an I/O error. Zero is a successful, nonfalse result.

`flock/block` waits cooperatively instead and retains its `:void` return contract.
