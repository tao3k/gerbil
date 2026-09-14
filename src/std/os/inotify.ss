;;; -*- Gerbil -*-
;;; © vyzo
;;; OS inotify interface [linux]
(require linux)
(import :std/error
        :std/ffi
        :std/time/timeout
        ./device
        ./error)
(export inotify-init
        (struct-out InotifyDevice)
        inotify-add-watch inotify-rm-watch
        inotify
        (struct-out InotifyEvent)
        IN_ACCESS
        IN_ATTRIB
        IN_CLOSE_WRITE
        IN_CLOSE_NOWRITE
        IN_CREATE
        IN_DELETE
        IN_DELETE_SELF
        IN_MODIFY
        IN_MOVE_SELF
        IN_MOVED_FROM
        IN_MOVED_TO
        IN_OPEN
        IN_ALL_EVENTS
        IN_MOVE
        IN_CLOSE
        IN_DONT_FOLLOW
        IN_EXCL_UNLINK
        IN_MASK_ADD
        IN_ONESHOT
        IN_ONLYDIR
        IN_IGNORED
        IN_ISDIR
        IN_Q_OVERFLOW
        IN_UNMOUNT)

(defstruct (InotifyDevice OSDevice) ()
  final: #t)

(defstruct InotifyEvent
  ((wd     :- :fixnum)
   (mask   :- :fixnum)
   (cookie :- :fixnum)
   (name   :- :t))
  transparent: #t
  final: #t)

(def (inotify-init)
  => InotifyDevice
  (let* ((fd (do-syscall (__inotify-init-syscall)))
         (raw
          (with-error (__close-fd fd)
            (__open-raw-device 'inotify fd DIRECTION-IN))))
    (InotifyDevice raw fd DIRECTION-IN)))

(def (inotify-add-watch (in   : InotifyDevice)
                        (path : :string)
                        (mask : :fixnum))
  => :fixnum
  (do-check-device-open inotify-add-watch in
    (do-syscall
     (__inotify-add-watch-syscall in.fd (string->c-string path) mask))))

(def (inotify-rm-watch (in : InotifyDevice) (wd : :fixnum))
  => :fixnum
  (do-check-device-open inotify-rm-watch in
    (do-syscall (__inotify-rm-watch-syscall in.fd wd))))

(def (inotify (in : InotifyDevice) (timeo : :t := #f))
  => (Maybe :list)                   ; list of InotifyEvent, or #f on timeout
  (let ((timeo (timeout->deadline timeo))
        (buf (get-inotify-buffer)))
    (let loop ()
      (let (rd (device-read in buf 0 (u8vector-length buf)))
        (cond
         ((fxpositive? rd)
          (inotify-events buf rd))
         ((fxzero? rd)
          (raise-io-closed inotify "empty inotify read"))
         ((device-wait-input! in timeo)
          (loop))
         (else #f))))))

(def (inotify-events (buf : :u8vector) (rd : :fixnum))
  => :list
  (let loop ((off 0) (events []))
    (cond
     ((fx= off rd)
      (reverse events))
     ((fx< (fx- rd off) inotify-event-header-size)
      (raise-io-error inotify "truncated inotify event header"
                      offset: off bytes-read: rd))
     (else
      (let* ((name-length (__inotify-event-name-length buf off))
             (remaining (fx- rd off))
             (name-room (fx- remaining inotify-event-header-size)))
        (when (fx> name-length name-room)
          (raise-io-error inotify "truncated inotify event name"
                          offset: off name-length: name-length bytes-read: rd))
        (let* ((size (fx+ inotify-event-header-size name-length))
               (name
                (and (fxpositive? name-length)
                     (decode-inotify-name
                      buf
                      (fx+ off inotify-event-header-size)
                      (fx+ off size))))
               (event
                (InotifyEvent
                 (__inotify-event-wd buf off)
                 (__inotify-event-mask buf off)
                 (__inotify-event-cookie buf off)
                 name)))
          (loop (fx+ off size) (cons event events))))))))

(def (decode-inotify-name (buf : :u8vector)
                          (start : :fixnum)
                          (end : :fixnum))
  => :string
  (let loop ((index start))
    (if (or (fx= index end)
            (fxzero? (u8vector-ref buf index)))
      (utf8->string buf start index)
      (loop (fx+ index 1)))))

(def inotify-buffer-key
  'std/os/inotify#buffer)

(def (get-inotify-buffer)
  => :u8vector
  (cond
   ((thread-local-get inotify-buffer-key)
    => (lambda (buf) (:- buf :u8vector)))
   (else
    (let (buf (make-u8vector 4096 0))
      (thread-local-set! inotify-buffer-key buf)
      buf))))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<stdint.h>"
           "<sys/inotify.h>")

(def inotify-event-header-size
  (__inotify-event-header-size))

(def-C (__inotify-event-header-size)
  => :fixnum
  "sizeof(struct inotify_event)")

(def-C (__inotify-event-wd (buf : :u8vector) (off : :fixnum))
  => :fixnum
  "((struct inotify_event*)(___arg1 + ___arg2))->wd")

(def-C (__inotify-event-mask (buf : :u8vector) (off : :fixnum))
  => :fixnum
  "((struct inotify_event*)(___arg1 + ___arg2))->mask")

(def-C (__inotify-event-cookie (buf : :u8vector) (off : :fixnum))
  => :fixnum
  "((struct inotify_event*)(___arg1 + ___arg2))->cookie")

(def-C (__inotify-event-name-length (buf : :u8vector) (off : :fixnum))
  => :fixnum
  "((struct inotify_event*)(___arg1 + ___arg2))->len")

(def-C-syscall (__inotify-init-syscall)
  "inotify_init1(IN_NONBLOCK | IN_CLOEXEC)")

(def-C-syscall (__inotify-add-watch-syscall (fd   :- :fixnum)
                                            (path :- :u8vector)
                                            (mask :- :fixnum))
  "inotify_add_watch(___arg1, (const char*)___arg2, (uint32_t)___arg3)")

(def-C-syscall (__inotify-rm-watch-syscall (fd :- :fixnum)
                                           (wd :- :fixnum))
  "inotify_rm_watch(___arg1, ___arg2)")

(def-C-const*
  IN_ACCESS
  IN_ATTRIB
  IN_CLOSE_WRITE
  IN_CLOSE_NOWRITE
  IN_CREATE
  IN_DELETE
  IN_DELETE_SELF
  IN_MODIFY
  IN_MOVE_SELF
  IN_MOVED_FROM
  IN_MOVED_TO
  IN_OPEN
  IN_ALL_EVENTS
  IN_MOVE
  IN_CLOSE
  IN_DONT_FOLLOW
  IN_EXCL_UNLINK
  IN_MASK_ADD
  IN_ONESHOT
  IN_ONLYDIR
  IN_IGNORED
  IN_ISDIR
  IN_Q_OVERFLOW
  IN_UNMOUNT)
