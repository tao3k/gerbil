# inotify
::: tip usage
(require linux)
(import :std/os/inotify)
:::

## inotify

```text
(inotify in (timeo #f)) => (Maybe :list)
```

Reads notifications from an `InotifyDevice`, returning a list of `InotifyEvent`
objects, or `#f` when the timeout expires. The default waits without a deadline.
`(Maybe :list)` distinguishes timeout from any list value, including the empty
list; it does not impose an element-type contract. Device and syscall errors
still raise exceptions.
