;;; -*- Gerbil -*-
;;; © vyzo
;;; OS advisory file locking
(import :std/error
        :std/ffi
        :std/time/timeout
        ./device
        ./error
        ./fcntl
        (only-in ./file FileDevice O_RDONLY O_WRONLY))
(export flock flock/block
        open-input-file/lock
        open-output-file/lock
        open-file/lock
        LOCK_SH LOCK_EX LOCK_UN)

(def (flock (dev : OSDevice) (op : :fixnum))
  => :t
  (do-check-device-open flock dev
    (flock-fd dev.fd op)))

;; Poll cooperatively instead of blocking an OS thread.
(def (flock/block (dev   : OSDevice)
                  (op    : :fixnum)
                  (timeo : :t := !NoTimeout))
  => :void
  ;; Recheck the device on every attempt: it can be closed during a sleep.
  (flock-poll (lambda () (flock dev op)) op timeo dev))

(def (flock-fd (fd : :fixnum) (op : :fixnum))
  => :t
  (let (result
        (do-syscall (__flock-syscall fd (fxior op LOCK_NB))
                    EAGAIN EWOULDBLOCK))
    (if (fxnegative? result) #f result)))

(def (flock-fd/block (fd     : :fixnum)
                     (op     : :fixnum)
                     (timeo  : :t)
                     (target : :t))
  => :void
  (flock-poll (lambda () (flock-fd fd op)) op timeo target))

(def (flock-poll (try-lock : :procedure)
                 (op       : :fixnum)
                 (timeo    : :t)
                 (target   : :t))
  => :void
  (let (deadline (timeout->abs-timeout timeo #f))
    (let loop ()
      (unless (try-lock)
        (let (now (##current-time-point))
          (when (and deadline (>= now deadline))
            (raise-timeout flock/block
              "deadline for flock operation exceeded"
              target op))
          (thread-sleep!
           (if deadline
             (min (random-real) (max 0 (- deadline now)))
             (random-real))))
        (loop)))))

(def (open-input-file/lock (path  : :string)
                           (timeo : :t := !NoTimeout)
                           op:    (op    : :fixnum := LOCK_SH)
                           flags: (flags : :fixnum := O_RDONLY))
  => FileDevice
  (open-file/lock path op timeo
                  direction: DIRECTION-IN
                  flags: flags
                  mode: 0))

(def (open-output-file/lock (path  : :string)
                            (timeo : :t := !NoTimeout)
                            op:    (op    : :fixnum := LOCK_EX)
                            flags: (flags : :fixnum := (fxior O_WRONLY O_CREAT))
                            mode:  (mode  : :fixnum := S_IRWXU))
  => FileDevice
  (open-file/lock path op timeo
                  direction: DIRECTION-OUT
                  flags: flags
                  mode: mode))

(def (open-file/lock (path  : :string)
                     (op    : :fixnum)
                     (timeo : :t := !NoTimeout)
                     direction: (direction : :fixnum)
                     flags:     (flags     : :fixnum)
                     mode:      (mode      : :fixnum))
  => FileDevice
  (let* ((fd (open/lock path op timeo flags: flags mode: mode))
         (raw
          (with-error (__close-fd fd)
            (__open-raw-device 'file-lock fd direction))))
    (FileDevice raw fd direction path)))

(def (open/lock (path  : :string)
                (op    : :fixnum)
                (timeo : :t := !NoTimeout)
                flags: (flags : :fixnum)
                mode:  (mode  : :fixnum))
  => :fixnum
  (let* ((flags
          (cond-expand
            (linux (fxior flags O_NONBLOCK O_CLOEXEC))
            (else flags)))
         ;; Opening must not modify existing contents before we own the lock.
         (fd (do-syscall
              (__open (string->c-string path) (fxand flags (fxnot O_TRUNC)) mode))))
    (with-error (__close-fd fd)
      (cond-expand
        ((not linux)
         (fcntl-setfl! fd O_NONBLOCK)
         (fcntl-setfd! fd FD_CLOEXEC)))
      (flock-fd/block fd op timeo fd)
      (unless (fxzero? (fxand flags O_TRUNC))
        (do-syscall (__ftruncate-zero fd)))
      fd)))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<fcntl.h>"
           "<sys/file.h>"
           "<unistd.h>")

(def-C-syscall (__flock-syscall (fd :- :fixnum) (op :- :fixnum))
  "flock(___arg1, ___arg2)")

(def-C-syscall (__open (path  :- :u8vector)
                       (flags :- :fixnum)
                       (mode  :- :fixnum))
  "open(___arg1, ___arg2, ___arg3)")

(def-C-syscall (__ftruncate-zero (fd :- :fixnum))
  "ftruncate(___arg1, 0)")

(def-C-const*
  LOCK_SH
  LOCK_EX
  LOCK_UN
  LOCK_NB)
