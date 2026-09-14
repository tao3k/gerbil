# kqueue
::: tip usage
(require bsd)
(import :std/os/kqueue)
:::

## kevent-udata

```text
(kevent-udata events index) => (Maybe :foreign)
```

Returns the event's user-data pointer, or `#f` for a null pointer. The accessor
does not take ownership of the pointed-to memory. `set-kevent-udata!` and the
`user-data:` argument of `kevent-set!` accept a foreign pointer or `#f`.
