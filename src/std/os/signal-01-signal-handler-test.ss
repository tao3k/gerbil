;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; :std/os/signal-handler unit-test

(cond-expand
  ((and enable-signal-test (or linux bsd))
   (import :std/misc/process
           :std/source
           :std/string/path
           :std/test
           ./pid
           ./signal
           ./signal-handler)

   (export signal-handler-test)

   (def (drain-current-mailbox!)
     => :void
     (while (thread-receive 0 #f)))

   (cond-expand
     (linux
      (def (check-sigusr1-ignored-across-exec!)
        => :void
        (run-process/batch
         ["sh" "-c" "kill -$1 $$; exit 0" "sh"
          (number->string SIGUSR1)]))

      (def signal-handler-restoration-child-test
        (test-suite "signal-handler restoration child"
          (test-case "remove restores an ignored disposition"
            (drain-current-mailbox!)
            (check-sigusr1-ignored-across-exec!)

            (def restoration-registered? #f)
            (unwind-protect
              (let (thread (current-thread))
                (add-signal-handler!
                 SIGUSR1
                 (lambda ()
                   (thread-send thread 'handled)))
                (set! restoration-registered? #t)
                (kill (getpid) SIGUSR1)
                (check (thread-receive 5 #f) => 'handled)

                (remove-signal-handler! SIGUSR1)
                (set! restoration-registered? #f)
                (check-sigusr1-ignored-across-exec!))
              (when restoration-registered?
                (remove-signal-handler! SIGUSR1)))))))
     (else))

   (def full-signal-handler-test
     (test-suite "signal-handler"
       (test-case "basic signal handling"
         (drain-current-mailbox!)

         (def hup-registered? #f)
         (def usr1-registered? #f)

         (unwind-protect
           (let (thread (current-thread))
             (remove-signal-handler! SIGUSR2)
             (add-signal-handler!
              SIGHUP
              (lambda ()
                (thread-send thread SIGHUP)))
             (set! hup-registered? #t)
             (add-signal-handler!
              SIGUSR1
              (lambda ()
                (thread-send thread SIGUSR1)))
             (set! usr1-registered? #t)

             (kill (getpid) SIGHUP)
             (check (thread-receive 5 #f) => SIGHUP)
             (kill (getpid) SIGUSR1)
             (check (thread-receive 5 #f) => SIGUSR1)
             (kill (getpid) SIGHUP)
             (check (thread-receive 5 #f) => SIGHUP)

             (add-signal-handler!
              SIGHUP
              (lambda ()
                (thread-send thread 'replacement)))
             (kill (getpid) SIGHUP)
             (check (thread-receive 5 #f) => 'replacement)

             (remove-signal-handler! SIGHUP)
             (set! hup-registered? #f)
             (add-signal-handler!
              SIGHUP
              (lambda ()
                (thread-send thread 'readded)))
             (set! hup-registered? #t)
             (kill (getpid) SIGHUP)
             (check (thread-receive 5 #f) => 'readded))
           (when usr1-registered?
             (remove-signal-handler! SIGUSR1))
           (when hup-registered?
             (remove-signal-handler! SIGHUP))))

       (cond-expand
         (linux
          (test-case "coalesced wake preserves real-time signal multiplicity"
            (drain-current-mailbox!)

            (def burst-size 256)
            (def remaining (fx1+ burst-size))
            (def first? #t)
            (def dispatcher #f)
            (def released? #f)
            (def burst-registered? #f)

            (unwind-protect
              (let (test-thread (current-thread))
                (add-signal-handler!
                 SIGRTMIN
                 (lambda ()
                   (when first?
                     (set! first? #f)
                     (thread-send test-thread (current-thread))
                     (unless (eq? (thread-receive 30 #f) 'release)
                       (thread-send test-thread 'release-timeout)))
                   (set! remaining (fx1- remaining))
                   (when (fxzero? remaining)
                     (thread-send test-thread 'complete))))
                (set! burst-registered? #t)

                (kill (getpid) SIGRTMIN)
                (set! dispatcher (thread-receive 5 #f))
                (check dispatcher ? thread?)

                (let send-loop ((count burst-size))
                  (when (fxpositive? count)
                    (kill (getpid) SIGRTMIN)
                    (send-loop (fx1- count))))

                (thread-send dispatcher 'release)
                (set! released? #t)
                (check (thread-receive 30 #f) => 'complete))
              (unless released?
                (when (thread? dispatcher)
                  (thread-send dispatcher 'release)))
              (when burst-registered?
                (remove-signal-handler! SIGRTMIN))))

          (test-case "remove restores a pre-existing ignored disposition"
            (run-process/batch
             ["sh" "-c"
              "trap '' \"$1\"; export GERBIL_SIGNAL_RESTORE_CHILD=1; exec gxtest -v 5 -D enable-signal-test \"$2\""
              "sh"
              (number->string SIGUSR1)
              "std/os/signal-01-signal-handler-test.ss"]
             directory: (path-expand "../.." (this-source-directory)))))
         (else))))

   (def signal-handler-test
     (cond-expand
       (linux
        (let (selector (getenv "GERBIL_SIGNAL_RESTORE_CHILD" #f))
          (cond
           ((not selector) full-signal-handler-test)
           ((string=? selector "1") signal-handler-restoration-child-test)
           (else
            (error "invalid GERBIL_SIGNAL_RESTORE_CHILD" selector)))))
       (else full-signal-handler-test)))))
