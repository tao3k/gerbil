;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; :std/os/signalfd unit-test

(cond-expand
  ((and enable-signalfd-test linux)
   (import :std/error
           :std/misc/process
           :std/source
           :std/string/path
           :std/test
           ./device
           ./error
           ./pid
           ./signal
           ./signalfd)
   (export signalfd-test)

   (def signalfd-child-test
     (test-suite "signalfd child"
       (test-case "basic signal handling"
         (def sigset (make_sigset))
         (def inherited-sigset (make_sigset))
         (def sfd #f)
         (def pending? #f)

         (sigemptyset sigset)
         (check-exception (sigaddset sigset SIGMAX) os-error?)
         (sigaddset sigset SIGHUP)
         (sigprocmask SIG_SETMASK #f inherited-sigset)
         (check (sigismember inherited-sigset SIGHUP) => 1)
         (unwind-protect
           (begin
             (set! sfd (signalfd sigset))
             (check (signalfd? sfd) => #t)
             (kill (getpid) SIGHUP)
             (set! pending? #t)
             (let (info (signalfd-read sfd))
               (set! pending? #f)
               (check (signalfd-siginfo-signo info) => SIGHUP)
               (check (signalfd-siginfo-pid info) => (getpid)))
             (device-close sfd)
             (check-exception (signalfd-reset! sfd sigset) io-error?)
             (set! sfd #f))
           (when (and pending? sfd)
             (with-catch void (cut signalfd-read sfd)))
           (when sfd
             (device-close sfd))))))

   ;; Block before exec so newly created runtime threads inherit the mask;
   ;; blocking only the test thread cannot protect a process-directed SIGHUP.
   (def full-signalfd-test
     (test-suite "signalfd"
       (test-case "block signals before runtime threads start"
         (def blocked-sigset (make_sigset))
         (def old-sigset (make_sigset))

         (sigemptyset blocked-sigset)
         (sigaddset blocked-sigset SIGHUP)
         (sigprocmask SIG_BLOCK blocked-sigset old-sigset)
         (unwind-protect
           (run-process/batch
            ["sh" "-c"
             "export GERBIL_SIGNALFD_CHILD=1; exec gxtest -v 5 -D enable-signalfd-test \"$1\""
             "sh"
             "std/os/signal-00-signalfd-test.ss"]
            directory: (path-expand "../.." (this-source-directory)))
           (sigprocmask SIG_SETMASK old-sigset #f)))))

   (def signalfd-test
     (let (selector (getenv "GERBIL_SIGNALFD_CHILD" #f))
       (cond
        ((not selector) full-signalfd-test)
        ((string=? selector "1") signalfd-child-test)
        (else
         (error "invalid GERBIL_SIGNALFD_CHILD" selector)))))))
