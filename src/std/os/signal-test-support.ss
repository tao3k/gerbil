;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; Compiled native support for signal tests.

(import :std/ffi)
(export stub-calls stub-pid stub-signo INT_MIN INT_MAX)

(C-include "<signal.h>" "<errno.h>" "<limits.h>")
(C-declare #<<END-C
static int signal_test_calls;
static int signal_test_pid;
static int signal_test_signo;
static int signal_test_kill(pid_t pid, int signo)
{
  ++signal_test_calls;
  signal_test_pid = pid;
  signal_test_signo = signo;
  if (pid == 12345) {
    errno = ESRCH;
    return -1;
  }
  return 0;
}
#define kill signal_test_kill
END-C
)

;; Compile the production binding against a C stub that never sends a signal.
(include "signal.ss")

(def-C-lambda c-int-min () int "___return(INT_MIN);")
(def-C-lambda c-int-max () int "___return(INT_MAX);")
(def INT_MIN (c-int-min))
(def INT_MAX (c-int-max))
(def-C (stub-calls) => :fixnum "signal_test_calls")
(def-C (stub-pid) => :fixnum "signal_test_pid")
(def-C (stub-signo) => :fixnum "signal_test_signo")
