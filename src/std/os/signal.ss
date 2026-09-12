;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; OS signal primitives

(import :std/ffi
        ./error)

(export
  SIGHUP SIGINT SIGQUIT SIGILL SIGTRAP SIGABRT SIGBUS SIGFPE
  SIGKILL SIGUSR1 SIGSEGV SIGUSR2 SIGPIPE SIGALRM SIGTERM
  SIGCHLD SIGCONT SIGSTOP SIGTSTP SIGTTIN SIGTTOU SIGURG
  SIGXCPU SIGXFSZ SIGVTALRM SIGPROF SIGWINCH SIGIO SIGSYS
  SIGMAX
  SIG_BLOCK SIG_UNBLOCK SIG_SETMASK)

(cond-expand
  (linux
   (export SIGIOT SIGSTKFLT SIGPOLL SIGPWR SIGRTMIN SIGRTMAX))
  (bsd
   (export SIGEMT SIGINFO)))

(cond-expand
  (openbsd
   (export SIGTHR))
  (netbsd
   (export SIGPWR #;SIGRTMIN #;SIGRTMAX))
  (darwin
   (export SIGIOT)))

(export
  kill
  sigprocmask
  make_sigset
  sigemptyset
  sigfillset
  sigaddset
  sigdelset
  sigismember)

(def (kill (pid : :fixnum) (signo : :fixnum))
  => :void
  (do-syscall (ffi-kill pid signo)))

(def (sigprocmask (how        :  :fixnum)
                  (sigset     :? :foreign)
                  (old-sigset :? :foreign))
  => :void
  (do-syscall (ffi-sigprocmask how sigset old-sigset)))

(def (make_sigset)
  => :foreign
  (check-pointer make_sigset (ffi-make-sigset)))

(def (sigemptyset (sigset :~ sigset_t? :- :foreign))
  => :void
  (do-syscall (ffi-sigemptyset sigset)))

(def (sigfillset (sigset :~ sigset_t? :- :foreign))
  => :void
  (do-syscall (ffi-sigfillset sigset)))

(def (sigaddset (sigset :~ sigset_t? :- :foreign) (signo : :fixnum))
  => :void
  (do-syscall (ffi-sigaddset sigset signo)))

(def (sigdelset (sigset :~ sigset_t? :- :foreign) (signo : :fixnum))
  => :void
  (do-syscall (ffi-sigdelset sigset signo)))

(def (sigismember (sigset :~ sigset_t? :- :foreign) (signo : :fixnum))
  => :fixnum
  (do-syscall (ffi-sigismember sigset signo)))

(C-ffi-macrology)
(C-include "<sys/types.h>"
           "<signal.h>"
           "<errno.h>")

(def-C-const*
  SIGHUP
  SIGINT
  SIGQUIT
  SIGILL
  SIGTRAP
  SIGABRT
  SIGBUS
  SIGFPE
  SIGKILL
  SIGUSR1
  SIGSEGV
  SIGUSR2
  SIGPIPE
  SIGALRM
  SIGTERM
  SIGCHLD
  SIGCONT
  SIGSTOP
  SIGTSTP
  SIGTTIN
  SIGTTOU
  SIGURG
  SIGXCPU
  SIGXFSZ
  SIGVTALRM
  SIGPROF
  SIGWINCH
  SIGIO
  SIGSYS

  SIG_BLOCK
  SIG_UNBLOCK
  SIG_SETMASK)

(cond-expand
  (linux
   (def-C-const*
     SIGIOT
     SIGSTKFLT
     SIGPOLL
     SIGPWR
     SIGRTMIN
     SIGRTMAX))
  (bsd
   (def-C-const*
     SIGEMT
     SIGINFO
     NSIG)))

(cond-expand
  (openbsd
   (def-C-const SIGTHR))
  (netbsd
   (def-C-const SIGPWR)
   #;(def-C-const SIGRTMIN)
   #;(def-C-const SIGRTMAX))
  (darwin
   (def-C-const SIGIOT)))

(def-C-type/pointer sigset_t release: "ffi_free")

(def-C-lambda (ffi-kill (pid   : int)
                        (signo : int))
  => int
  "___return (___TRAP_ERRNO(kill(___arg1, ___arg2)));")

(def-C-lambda (ffi-sigprocmask (how        : int)
                               (sigset     : sigset_t*)
                               (old-sigset : sigset_t*))
  => int
  "___return (___TRAP_ERRNO(sigprocmask(___arg1, ___arg2, ___arg3)));")

(def-C-lambda ffi-make-sigset () sigset_t*
  "___return ((sigset_t*)malloc(sizeof(sigset_t)));")

(def-C-lambda ffi-sigemptyset (sigset_t*) int
  "___return (___TRAP_ERRNO(sigemptyset(___arg1)));")
(def-C-lambda ffi-sigfillset (sigset_t*) int
  "___return (___TRAP_ERRNO(sigfillset(___arg1)));")
(def-C-lambda ffi-sigaddset (sigset_t* int) int
  "___return (___TRAP_ERRNO(sigaddset(___arg1, ___arg2)));")
(def-C-lambda ffi-sigdelset (sigset_t* int) int
  "___return (___TRAP_ERRNO(sigdelset(___arg1, ___arg2)));")
(def-C-lambda ffi-sigismember (sigset_t* int) int
  "___return (___TRAP_ERRNO(sigismember(___arg1, ___arg2)));")

(def SIGMAX
  (cond-expand
    (linux
     (fx1+ SIGRTMAX))
    (bsd
     NSIG)
    (else #f)))
