;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; Linux signalfd for signal handling

(require linux)
(import :std/ffi
        :std/time/timeout
        ./error
        ./device
        ./signal)
(export signalfd signalfd?
        signalfd-reset!
        signalfd-read
        make-signalfd-siginfo
        signalfd-siginfo-signo
        signalfd-siginfo-errno
        signalfd-siginfo-code
        signalfd-siginfo-pid
        signalfd-siginfo-uid
        signalfd-siginfo-fd
        signalfd-siginfo-tid
        signalfd-siginfo-band
        signalfd-siginfo-overrun
        signalfd-siginfo-trapno
        signalfd-siginfo-status
        signalfd-siginfo-int
        signalfd-siginfo-ptr
        signalfd-siginfo-utime
        signalfd-siginfo-stime
        signalfd-siginfo-addr)

(defstruct (SignalFD OSDevice) ())

(C-ffi-macrology)
(C-include "<signal.h>"
           "<sys/signalfd.h>"
           "<errno.h>")

(def-C-const* SFD_NONBLOCK SFD_CLOEXEC)
(def-C-type/pointer sigset_t release: "ffi_free")
(def-C-struct signalfd_siginfo)

(def-C-lambda (ffi-signalfd (fd    : int)
                            (mask  : sigset_t*)
                            (flags : int))
  => int
  "___return (___TRAP_ERRNO(signalfd(___arg1, ___arg2, ___arg3)));")

(def (signalfd (sigset :~ sigset_t? :- :foreign))
  => SignalFD
  (let* ((fd (do-syscall
              (ffi-signalfd -1 sigset (fxior SFD_NONBLOCK SFD_CLOEXEC))))
         (raw (with-error (__close-fd fd)
                (__open-raw-device 'signalfd fd DIRECTION-IN))))
    (SignalFD raw fd DIRECTION-IN)))

(def (signalfd? (obj : :t))
  => :boolean
  (SignalFD? obj))

(def (signalfd-reset! (sfd :~ SignalFD? :- OSDevice)
                      (sigset :~ sigset_t? :- :foreign))
  => :void
  (do-check-device-open signalfd-reset! sfd
    (do-syscall (ffi-signalfd sfd.fd sigset 0))))

(def (signalfd-read (sfd :~ SignalFD? :- OSDevice)
                    (info : signalfd_siginfo := (make-signalfd-siginfo)))
  => signalfd_siginfo
  (let loop ()
    (let (read (device-read sfd info.body 0 (u8vector-length info.body)))
      (if (fxnegative? read)
        (begin
          (device-wait-input! sfd !NoTimeout)
          (loop))
        info))))

(def (make-signalfd-siginfo)
  => signalfd_siginfo
  (make-signalfd_siginfo))

(def-C (signalfd-siginfo-signo (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_signo")
(def-C (signalfd-siginfo-errno (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_errno")
(def-C (signalfd-siginfo-code (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_code")
(def-C (signalfd-siginfo-pid (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_pid")
(def-C (signalfd-siginfo-uid (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_uid")
(def-C (signalfd-siginfo-fd (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_fd")
(def-C (signalfd-siginfo-tid (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_tid")
(def-C (signalfd-siginfo-band (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_band")
(def-C (signalfd-siginfo-overrun (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_overrun")
(def-C (signalfd-siginfo-trapno (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_trapno")
(def-C (signalfd-siginfo-status (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_status")
(def-C (signalfd-siginfo-int (info : signalfd_siginfo))
  => :fixnum
  "___arg1->ssi_int")

(def (signalfd-siginfo-ptr (info : signalfd_siginfo))
  => :integer
  (:- (ffi-signalfd-siginfo-ptr info.body) :integer))
(def (signalfd-siginfo-utime (info : signalfd_siginfo))
  => :integer
  (:- (ffi-signalfd-siginfo-utime info.body) :integer))
(def (signalfd-siginfo-stime (info : signalfd_siginfo))
  => :integer
  (:- (ffi-signalfd-siginfo-stime info.body) :integer))
(def (signalfd-siginfo-addr (info : signalfd_siginfo))
  => :integer
  (:- (ffi-signalfd-siginfo-addr info.body) :integer))

(def-C-lambda ffi-signalfd-siginfo-ptr (scheme-object) unsigned-int64
  "___return (((struct signalfd_siginfo*)U8_DATA(___arg1))->ssi_ptr);")
(def-C-lambda ffi-signalfd-siginfo-utime (scheme-object) unsigned-int64
  "___return (((struct signalfd_siginfo*)U8_DATA(___arg1))->ssi_utime);")
(def-C-lambda ffi-signalfd-siginfo-stime (scheme-object) unsigned-int64
  "___return (((struct signalfd_siginfo*)U8_DATA(___arg1))->ssi_stime);")
(def-C-lambda ffi-signalfd-siginfo-addr (scheme-object) unsigned-int64
  "___return (((struct signalfd_siginfo*)U8_DATA(___arg1))->ssi_addr);")
