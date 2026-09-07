;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; OS kqueue interface [bsd]

(require bsd)
(import :std/ffi
        ./device
        ./error
        ./fcntl)

(export kqueue kqueue-close
        make-kevents kevent-set!
        kevent kqueue-poll
        kqueue-kevent-add kqueue-kevent-del kqueue-kevent-disable
        kevent-ident kevent-filter kevent-flags
        kevent-fflags kevent-data kevent-udata
        set-kevent-ident! set-kevent-filter! set-kevent-flags!
        set-kevent-fflags! set-kevent-data! set-kevent-udata!

        EV_ADD EV_ENABLE EV_DISABLE EV_DELETE EV_ONESHOT
        EV_CLEAR EV_EOF EV_ERROR EVFILT_READ EVFILT_WRITE EVFILT_VNODE
        EVFILT_PROC EVFILT_SIGNAL EVFILT_TIMER NOTE_WRITE NOTE_DELETE
        NOTE_EXTEND NOTE_ATTRIB NOTE_LINK NOTE_RENAME NOTE_REVOKE
        NOTE_LOWAT NOTE_EXIT NOTE_FORK NOTE_EXEC)

(cond-expand
  (openbsd
   (export EV_DISPATCH EV_RECEIPT EVFILT_DEVICE NOTE_TRUNCATE NOTE_TRACK
           NOTE_TRACKERR NOTE_CHANGE))
  (netbsd
   (export #;EV_DISPATCH #;EV_RECEIPT EVFILT_AIO #;EVFILT_FS NOTE_TRACK
                                      NOTE_TRACKERR))
  (freebsd
   (export EV_DISPATCH EV_RECEIPT EVFILT_AIO EVFILT_PROCDESC EVFILT_USER
           NOTE_CLOSE NOTE_CLOSE_WRITE NOTE_OPEN NOTE_READ NOTE_TRACK
           NOTE_SECONDS NOTE_MSECONDS NOTE_USECONDS NOTE_NSECONDS
           NOTE_FFNOP NOTE_FFAND NOTE_FFOR NOTE_FFCOPY
           NOTE_FFCTRLMASK NOTE_FFLAGSMASK))
  (darwin
   (export EV_OOBAND EV_RECEIPT #;EVFILT_EXCEPT EVFILT_AIO EVFILT_MACHPORT
           #;NOTE_OOB #;NOTE_FUNLOCK NOTE_EXITSTATUS
           NOTE_SIGNAL NOTE_REAP NOTE_SECONDS NOTE_USECONDS
           NOTE_NSECONDS #;NOTE_MACHTIME NOTE_ABSOLUTE NOTE_CRITICAL
           NOTE_BACKGROUND NOTE_LEEWAY)))

(defstruct (KQueueDevice OSDevice) ())

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<stdint.h>"
           "<sys/event.h>"
           "<sys/time.h>"
           "<errno.h>")

(def-C-type/pointer kevent "struct kevent" release: "ffi_free")
(def-C-type/pointer timespec "struct timespec" release: "ffi_free")
(def-C-type uintptr_t unsigned-long)
(def-C-type void* (pointer "void"))

(def-C-syscall (ffi-kqueue)
  "kqueue()")

(def-C-lambda (ffi-kevent (kqfd     : int)
                          (changes  : kevent*)
                          (nchanges : int)
                          (events   : kevent*)
                          (nevents  : int)
                          (timeout  : timespec*))
  => int
  "___return (___TRAP_ERRNO(kevent(___arg1, ___arg2, ___arg3, ___arg4, ___arg5, ___arg6)));")

(def-C-lambda ffi-make-kevents (int) kevent*
  "___return ((struct kevent*)calloc(___arg1, sizeof(struct kevent)));")
(def-C-lambda ffi-make-timespec () timespec*
  "___return ((struct timespec*)malloc(sizeof(struct timespec)));")
(def-C-lambda ffi-timespec-seconds-set! (timespec* int64) void
  "___arg1->tv_sec = ___arg2; ___return;")
(def-C-lambda ffi-timespec-nanoseconds-set! (timespec* long) void
  "___arg1->tv_nsec = ___arg2; ___return;")

(def-C-lambda ffi-kevent-ident (kevent* int) uintptr_t
  "___return ((uintptr_t)___arg1[___arg2].ident);")
(def-C-lambda ffi-set-kevent-ident! (kevent* int uintptr_t) void
  "___arg1[___arg2].ident = (uintptr_t)___arg3; ___return;")
(cond-expand
  (netbsd
   (def-C-lambda ffi-kevent-filter (kevent* int) unsigned-int
     "___return (___arg1[___arg2].filter);")
   (def-C-lambda ffi-set-kevent-filter! (kevent* int unsigned-int) void
     "___arg1[___arg2].filter = ___arg3; ___return;")
   (def-C-lambda ffi-kevent-flags (kevent* int) unsigned-int
     "___return (___arg1[___arg2].flags);")
   (def-C-lambda ffi-set-kevent-flags! (kevent* int unsigned-int) void
     "___arg1[___arg2].flags = ___arg3; ___return;"))
  (else
   (def-C-lambda ffi-kevent-filter (kevent* int) short
     "___return (___arg1[___arg2].filter);")
   (def-C-lambda ffi-set-kevent-filter! (kevent* int short) void
     "___arg1[___arg2].filter = ___arg3; ___return;")
   (def-C-lambda ffi-kevent-flags (kevent* int) unsigned-short
     "___return (___arg1[___arg2].flags);")
   (def-C-lambda ffi-set-kevent-flags! (kevent* int unsigned-short) void
     "___arg1[___arg2].flags = ___arg3; ___return;")))
(def-C-lambda ffi-kevent-fflags (kevent* int) unsigned-int
  "___return (___arg1[___arg2].fflags);")
(def-C-lambda ffi-set-kevent-fflags! (kevent* int unsigned-int) void
  "___arg1[___arg2].fflags = ___arg3; ___return;")
(def-C-lambda ffi-kevent-data (kevent* int) int64
  "___return (___arg1[___arg2].data);")
(def-C-lambda ffi-set-kevent-data! (kevent* int int64) void
  "___arg1[___arg2].data = ___arg3; ___return;")
(def-C-lambda ffi-kevent-udata (kevent* int) void*
  "___return (___arg1[___arg2].udata);")
(def-C-lambda ffi-set-kevent-udata! (kevent* int void*) void
  "___arg1[___arg2].udata = ___arg3; ___return;")

(cond-expand
  (netbsd
   (def-C-lambda ffi-ev-set
     (kevent* int uintptr_t unsigned-int unsigned-int unsigned-int int64 void*) void
     "EV_SET(&___arg1[___arg2], (uintptr_t)___arg3, ___arg4, ___arg5, ___arg6, ___arg7, ___arg8); ___return;"))
  (else
   (def-C-lambda ffi-ev-set
     (kevent* int uintptr_t short unsigned-short unsigned-int int64 void*) void
     "EV_SET(&___arg1[___arg2], (uintptr_t)___arg3, ___arg4, ___arg5, ___arg6, ___arg7, ___arg8); ___return;")))

(def (kqueue)
  => KQueueDevice
  (let* ((fd (do-syscall (ffi-kqueue)))
         (_ (with-error (__close-fd fd)
              (fcntl-setfd! fd FD_CLOEXEC)))
         (raw (with-error (__close-fd fd)
                (__open-raw-device 'kqueue fd DIRECTION-IN))))
    (KQueueDevice raw fd DIRECTION-IN)))

(def (kqueue-close (kq :~ KQueueDevice? :- OSDevice))
  => :void
  (device-close kq))

(def (kevent-count? (obj : :t))
  => :boolean
  (and (fixnum? obj)
       (fxpositive? obj)
       (<= obj #x7fffffff)))

(def (make-kevents (size :~ kevent-count? :- :fixnum))
  => :foreign
  (check-pointer make-kevents (ffi-make-kevents size)))

(def (kevent-set! (events       :~ kevent? :- :foreign)
                  (index        :  :fixnum)
                  ident:        (ident        : :integer)
                  filter:       (filter       : :fixnum)
                  flags:        (flags        : :fixnum := 0)
                  filter-flags: (filter-flags : :fixnum := 0)
                  data:         (data         : :integer := 0)
                  user-data:    (user-data    :? :foreign := #f))
  => :void
  (ffi-ev-set events index ident filter flags filter-flags data user-data))

(def (kevent (kq          :~ KQueueDevice? :- OSDevice)
             (changes     :? :foreign)
             (nchanges    :  :fixnum)
             (events      :? :foreign)
             (nevents     :  :fixnum))
  => :fixnum
  (do-check-device-open kevent kq
    (do-syscall (ffi-kevent kq.fd changes nchanges events nevents timespec-zero))))

(def (kqueue-poll (kq :~ KQueueDevice? :- OSDevice)
                  (events :~ kevent? :- :foreign)
                  (nevents : :fixnum))
  => :fixnum
  (kevent kq #f 0 events nevents))

(def (device-or-fd? (obj : :t))
  => :boolean
  (or (OSDevice? obj) (fixnum? obj)))

(def (device-or-fd->fd (dev :~ device-or-fd? :- :t))
  => :fixnum
  (if (OSDevice? dev)
    (OSDevice-fd (:- dev OSDevice))
    (:- dev :fixnum)))

(def (kqueue-kevent-add (kq     :~ KQueueDevice? :- OSDevice)
                        (dev    :~ device-or-fd? :- :t)
                        (filter : :fixnum)
                        (additional-flags : :fixnum := 0)
                        (filter-flags     : :fixnum := 0)
                        (data             : :integer := 0))
  => :void
  (let (event (get-kevent-ptr))
    (kevent-set! event 0
      ident: (device-or-fd->fd dev)
      flags: (fxior EV_ADD additional-flags)
      filter: filter
      filter-flags: filter-flags
      data: data)
    (kevent kq event 1 #f 0)))

(def (kqueue-kevent-del (kq     :~ KQueueDevice? :- OSDevice)
                        (dev    :~ device-or-fd? :- :t)
                        (filter : :fixnum))
  => :void
  (let (event (get-kevent-ptr))
    (kevent-set! event 0
      ident: (device-or-fd->fd dev)
      flags: EV_DELETE
      filter: filter)
    (kevent kq event 1 #f 0)))

(def (kqueue-kevent-disable (kq     :~ KQueueDevice? :- OSDevice)
                            (dev    :~ device-or-fd? :- :t)
                            (filter : :fixnum))
  => :void
  (let (event (get-kevent-ptr))
    (kevent-set! event 0
      ident: (device-or-fd->fd dev)
      flags: EV_DISABLE
      filter: filter)
    (kevent kq event 1 #f 0)))

(def kevent-ptr-key
  'std/os/kqueue#kevent-ptr)

(def (get-kevent-ptr)
  => :foreign
  (let (event (thread-local-get kevent-ptr-key))
    (if event
      (:- event :foreign)
      (let (event (make-kevents 1))
        (thread-local-set! kevent-ptr-key event)
        event))))

(def (make-timespec (seconds : :integer) (nanoseconds : :integer))
  => :foreign
  (let (timespec (check-pointer make-timespec (ffi-make-timespec)))
    (ffi-timespec-seconds-set! timespec seconds)
    (ffi-timespec-nanoseconds-set! timespec nanoseconds)
    timespec))

(def timespec-zero
  (make-timespec 0 0))

(def (kevent-ident (events :~ kevent? :- :foreign) (index : :fixnum))
  => :integer
  (:- (ffi-kevent-ident events index) :integer))
(def (kevent-filter (events :~ kevent? :- :foreign) (index : :fixnum))
  => :fixnum
  (:- (ffi-kevent-filter events index) :fixnum))
(def (kevent-flags (events :~ kevent? :- :foreign) (index : :fixnum))
  => :fixnum
  (:- (ffi-kevent-flags events index) :fixnum))
(def (kevent-fflags (events :~ kevent? :- :foreign) (index : :fixnum))
  => :fixnum
  (:- (ffi-kevent-fflags events index) :fixnum))
(def (kevent-data (events :~ kevent? :- :foreign) (index : :fixnum))
  => :integer
  (:- (ffi-kevent-data events index) :integer))
(def (kevent-udata (events :~ kevent? :- :foreign) (index : :fixnum))
  => :t
  (ffi-kevent-udata events index))

(def (set-kevent-ident! (events :~ kevent? :- :foreign)
                        (index : :fixnum)
                        (value : :integer))
  => :void
  (ffi-set-kevent-ident! events index value))
(def (set-kevent-filter! (events :~ kevent? :- :foreign)
                         (index : :fixnum)
                         (value : :fixnum))
  => :void
  (ffi-set-kevent-filter! events index value))
(def (set-kevent-flags! (events :~ kevent? :- :foreign)
                        (index : :fixnum)
                        (value : :fixnum))
  => :void
  (ffi-set-kevent-flags! events index value))
(def (set-kevent-fflags! (events :~ kevent? :- :foreign)
                         (index : :fixnum)
                         (value : :fixnum))
  => :void
  (ffi-set-kevent-fflags! events index value))
(def (set-kevent-data! (events :~ kevent? :- :foreign)
                       (index : :fixnum)
                       (value : :integer))
  => :void
  (ffi-set-kevent-data! events index value))
(def (set-kevent-udata! (events :~ kevent? :- :foreign)
                        (index : :fixnum)
                        (value :? :foreign))
  => :void
  (ffi-set-kevent-udata! events index value))

(def-C-const*
  EV_ADD
  EV_ENABLE
  EV_DISABLE
  EV_DELETE
  EV_ONESHOT
  EV_CLEAR
  EV_EOF
  EV_ERROR

  EVFILT_READ
  EVFILT_WRITE
  EVFILT_VNODE
  EVFILT_PROC
  EVFILT_SIGNAL
  EVFILT_TIMER

  NOTE_WRITE
  NOTE_DELETE
  NOTE_EXTEND
  NOTE_ATTRIB
  NOTE_LINK
  NOTE_RENAME
  NOTE_REVOKE
  NOTE_EXIT
  NOTE_FORK
  NOTE_EXEC
  NOTE_LOWAT)

(cond-expand
  ((or openbsd freebsd)
   (def-C-const* EV_RECEIPT EV_DISPATCH))
  (netbsd)
  (darwin
   (def-C-const* EV_RECEIPT EV_OOBAND)))

(cond-expand
  (openbsd
   (def-C-const EVFILT_DEVICE))
  (netbsd
   (def-C-const EVFILT_AIO))
  (freebsd
   (def-C-const* EVFILT_AIO EVFILT_PROCDESC EVFILT_USER))
  (darwin
   (def-C-const* EVFILT_AIO EVFILT_MACHPORT)))

(cond-expand
  (openbsd
   (def-C-const* NOTE_TRUNCATE NOTE_TRACK NOTE_TRACKERR NOTE_CHANGE))
  (netbsd
   (def-C-const* NOTE_TRACK NOTE_TRACKERR))
  (freebsd
   (def-C-const*
     NOTE_CLOSE
     NOTE_CLOSE_WRITE
     NOTE_OPEN
     NOTE_READ
     NOTE_TRACK
     NOTE_SECONDS
     NOTE_MSECONDS
     NOTE_USECONDS
     NOTE_NSECONDS
     NOTE_FFNOP
     NOTE_FFAND
     NOTE_FFOR
     NOTE_FFCOPY
     NOTE_FFCTRLMASK
     NOTE_FFLAGSMASK))
  (darwin
   (def-C-const*
     NOTE_EXITSTATUS
     NOTE_SIGNAL
     NOTE_REAP
     NOTE_SECONDS
     NOTE_USECONDS
     NOTE_NSECONDS
     NOTE_ABSOLUTE
     NOTE_CRITICAL
     NOTE_BACKGROUND
     NOTE_LEEWAY)))
