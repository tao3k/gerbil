;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; OS signal handler interface

(import :std/error
        :std/ffi
        :std/log
        :std/time/timeout
        ./device
        ./error
        ./signal)

(cond-expand
  (bsd (import ./kqueue))
  (else))

(export add-signal-handler! remove-signal-handler!)

(deflogger log name: "/os/signal")

(def system-signal-handler
  (delay-atomic (make-signal-handler)))

(def (check-signal-number (where : :procedure) (signo : :fixnum))
  => :void
  (cond-expand
    ((or linux bsd)
     (unless (and (fx> signo 0) (fx< signo SIGMAX))
       (raise-bad-argument where "signal number" signo)))
    (else)))

(def (add-signal-handler! (signo : :fixnum) (thunk : :procedure))
  => :void
  (check-signal-number add-signal-handler! signo)
  (let (handler (force system-signal-handler))
    (signal-handler-add! handler signo thunk)))

(def (remove-signal-handler! (signo : :fixnum))
  => :void
  (check-signal-number remove-signal-handler! signo)
  (let (handler (force system-signal-handler))
    (signal-handler-remove! handler signo)))

(cond-expand
  (linux
   ;; POSIX handlers can run on any native processor; the self-pipe transfers dispatch to a Scheme thread.
   (defstruct signal-handler
     ((handlers :- :vector)
      (actions  :- :vector)
      (device   :- OSDevice)
      (write-fd :- :fixnum)
      (mx       :- :mutex))
     final: #t constructor: :init!)

   (defmethod {:init! signal-handler}
     (lambda (self)
       (let (pipe (make-signal-pipe))
         (do-syscall (ffi-make-signal-pipe pipe))
         (let* ((read-fd (ffi-signal-pipe-read-fd pipe))
                (write-fd (ffi-signal-pipe-write-fd pipe))
                (device #f))
           (try
            (let (raw (__open-raw-device 'signal-handler read-fd DIRECTION-IN))
              (set! device (OSDevice raw read-fd DIRECTION-IN)))
            (ffi-set-signal-write-fd! write-fd)
            (struct-instance-init!
             self
             (make-vector SIGMAX #f)
             (make-vector SIGMAX #f)
             (:- device OSDevice)
             write-fd
             (make-mutex 'signal-handler))
            ;; TODO: coordinate fork-and-continue support with the runtime and
            ;; :std/sync/threads. A native fork inherits dispositions and pipe
            ;; descriptors, but not other native threads; child wakeups can reach
            ;; the parent's pipe without a child dispatcher. Define child-state
            ;; reinitialization for both green-thread and multi-processor runtimes.
            (spawn/name 'signal-handler signal-handler-wait self)
            (catch (e)
              (ffi-set-signal-write-fd! -1)
              (if device
                (with-catch void (cut device-close (:- device OSDevice)))
                (with-catch void (cut __close-fd read-fd)))
              (with-catch void (cut __close-fd write-fd))
              (raise e)))))))

   (def (signal-handler-wait (sh : signal-handler))
     => :void
     (try
      (def buffer (make-u8vector 64))
      (let ((handlers sh.handlers)
            (device sh.device)
            (mx sh.mx))
        (let wait-loop ()
          (let (count (device-read device buffer 0 (u8vector-length buffer)))
            (cond
             ((fxnegative? count)
              (device-wait-input! device !NoTimeout))
             ((fxzero? count)
              (error "signal handler pipe closed"))
             (else
              (ffi-begin-pending-signal-scan!)
              (let dispatch-loop ()
                (let (signo (ffi-next-pending-signal))
                  (unless (fxzero? signo)
                    (let (handler
                          (do-with-lock mx
                            (vector-ref handlers signo)))
                      (when handler
                        (signal-handler-dispatch (:- handler :procedure))))
                    (dispatch-loop)))))))
          (wait-loop)))
      (catch (e)
        (log.error "error handling signals"
                   exception: (exception->string e))
        (raise e))))

   (def (signal-handler-add! (sh    : signal-handler)
                             (signo : :fixnum)
                             (thunk : :procedure))
     => :void
     (let ((handlers sh.handlers)
           (actions sh.actions)
           (mx sh.mx))
       (do-with-lock mx
         (cond
          ((vector-ref handlers signo)
           (vector-set! handlers signo thunk))
          (else
           (let (previous (make-signal-action))
             (ffi-clear-pending-signal! signo)
             (do-syscall (ffi-install-signal-handler signo previous))
             (vector-set! actions signo previous)
             (vector-set! handlers signo thunk)))))))

   (def (signal-handler-remove! (sh : signal-handler) (signo : :fixnum))
     => :void
     (let ((handlers sh.handlers)
           (actions sh.actions)
           (mx sh.mx))
       (do-with-lock mx
         (when (vector-ref handlers signo)
           (let (previous (vector-ref actions signo))
             (do-syscall
              (ffi-restore-signal-handler
               signo
               (:- previous ffi_signal_action)))
             (ffi-clear-pending-signal! signo)
             (vector-set! actions signo #f)
             (vector-set! handlers signo #f))))))

   (C-ffi-macrology)
   (C-include "<signal.h>"
              "<errno.h>"
              "<fcntl.h>"
              "<limits.h>"
              "<stdatomic.h>"
              "<string.h>"
              "<unistd.h>")
   (C-declare #<<END-C
struct ffi_signal_pipe {
  int read_fd;
  int write_fd;
};

struct ffi_signal_action {
  struct sigaction action;
};

enum { ffi_signal_success = 0 };

extern int pipe2(int pipefd[2], int flags);

_Static_assert(ATOMIC_INT_LOCK_FREE == 2,
               "signal handling requires lock-free unsigned int atomics");

static volatile sig_atomic_t ffi_signal_write_fd = -1;
static _Atomic unsigned int ffi_signal_pending[UCHAR_MAX + 1];
static _Atomic unsigned int ffi_signal_wake_outstanding;
static int ffi_signal_cursor = 1;

static void ffi_signal_mark_pending(int signo)
{
  if (signo > 0 && signo <= UCHAR_MAX) {
    unsigned int current =
      atomic_load_explicit(&ffi_signal_pending[signo], memory_order_seq_cst);
    while (current != UINT_MAX &&
           !atomic_compare_exchange_weak_explicit(
             &ffi_signal_pending[signo], &current, current + 1,
             memory_order_seq_cst, memory_order_seq_cst)) {
    }
  }
}

static void ffi_begin_pending_signal_scan(void)
{
  atomic_store_explicit(
    &ffi_signal_wake_outstanding, 0, memory_order_seq_cst);
}

static int ffi_next_pending_signal(void)
{
  int remaining = UCHAR_MAX;
  while (remaining-- > 0) {
    int signo = ffi_signal_cursor;
    ffi_signal_cursor = signo == UCHAR_MAX ? 1 : signo + 1;
    unsigned int current =
      atomic_load_explicit(&ffi_signal_pending[signo], memory_order_seq_cst);
    while (current > 0) {
      if (atomic_compare_exchange_weak_explicit(
            &ffi_signal_pending[signo], &current, current - 1,
            memory_order_seq_cst, memory_order_seq_cst)) {
        return signo;
      }
    }
  }
  return ffi_signal_success;
}

static void ffi_clear_pending_signal(int signo)
{
  if (signo > 0 && signo <= UCHAR_MAX) {
    atomic_store_explicit(
      &ffi_signal_pending[signo], 0, memory_order_seq_cst);
  }
}

static void ffi_signal_dispatch(int signo)
{
  int saved_errno = errno;
  unsigned char message = 0;
  int fd = (int)ffi_signal_write_fd;
  ffi_signal_mark_pending(signo);
  /* Keep at most one queued or in-flight wake byte. */
  if (fd >= 0 &&
      atomic_exchange_explicit(
        &ffi_signal_wake_outstanding, 1, memory_order_seq_cst) == 0) {
    ssize_t result;
    do {
      result = write(fd, &message, sizeof(message));
    } while (result < 0 && errno == EINTR);
  }
  errno = saved_errno;
}

static int ffi_make_signal_pipe(struct ffi_signal_pipe *result)
{
  int fds[2];
  if (pipe2(fds, O_CLOEXEC | O_NONBLOCK) < 0) {
    return -1;
  }
  result->read_fd = fds[0];
  result->write_fd = fds[1];
  return ffi_signal_success;
}

static int ffi_install_signal_handler(int signo,
                                      struct ffi_signal_action *previous)
{
  struct sigaction action;
  memset(&action, 0, sizeof(action));
  if (sigemptyset(&action.sa_mask) < 0) {
    return -1;
  }
  action.sa_handler = ffi_signal_dispatch;
  action.sa_flags = SA_RESTART;
  return sigaction(signo, &action, &previous->action);
}

static int ffi_restore_signal_handler(int signo,
                                      struct ffi_signal_action *previous)
{
  return sigaction(signo, &previous->action, NULL);
}
END-C
)

   (def-C-struct ffi_signal_pipe)
   (def-C-struct ffi_signal_action)

   (def (make-signal-pipe)
     => ffi_signal_pipe
     (make-ffi_signal_pipe))

   (def (make-signal-action)
     => ffi_signal_action
     (make-ffi_signal_action))

   (def-C-syscall (ffi-make-signal-pipe (pipe :- ffi_signal_pipe))
     "ffi_make_signal_pipe(___arg1)")

   (def-C (ffi-signal-pipe-read-fd (pipe :- ffi_signal_pipe))
     => :fixnum
     "___arg1->read_fd")

   (def-C (ffi-signal-pipe-write-fd (pipe :- ffi_signal_pipe))
     => :fixnum
     "___arg1->write_fd")

   (def-C (ffi-set-signal-write-fd! (fd :- :fixnum))
     => :void
     "(ffi_signal_write_fd = ___arg1)")

   (def-C (ffi-begin-pending-signal-scan!)
     => :void
     "ffi_begin_pending_signal_scan()")

   (def-C (ffi-next-pending-signal)
     => :fixnum
     "ffi_next_pending_signal()")

   (def-C (ffi-clear-pending-signal! (signo :- :fixnum))
     => :void
     "ffi_clear_pending_signal(___arg1)")

   (def-C-syscall
     (ffi-install-signal-handler (signo   :- :fixnum)
                                 (previous :- ffi_signal_action))
     "ffi_install_signal_handler(___arg1, ___arg2)")

   (def-C-syscall
     (ffi-restore-signal-handler (signo   :- :fixnum)
                                 (previous :- ffi_signal_action))
     "ffi_restore_signal_handler(___arg1, ___arg2)"))

  (bsd
   (def no-signal-handler
     (gensym 'no-signal-handler))

   (defstruct signal-handler
     ((handlers         :- :vector)
      (default-handlers :- :vector)
      (kq               :- OSDevice)
      (mx               :- :mutex))
     final: #t constructor: :init!)

   (defmethod {:init! signal-handler}
     (lambda (self)
       (let* ((handlers (make-vector SIGMAX #f))
              (default-handlers (make-vector SIGMAX no-signal-handler))
              (kq (kqueue))
              (mx (make-mutex 'signal-handler)))
         (struct-instance-init! self handlers default-handlers kq mx)
         (spawn/name 'signal-handler signal-handler-wait self))))

   (def (signal-handler-wait (sh : signal-handler))
     => :void
     (try
      (defconst nevents 4)
      (def events (make-kevents nevents))
      (with ((signal-handler handlers default-handlers kq mx) sh)
        (let wait-loop ()
          (device-wait-input! kq !NoTimeout)
          (let (n (kqueue-poll kq events nevents))
            (when (fxpositive? n)
              (let event-loop ((i 0))
                (when (fx< i n)
                  (if (fxzero? (fxand (kevent-flags events i) EV_ERROR))
                    (when (fx= (kevent-filter events i) EVFILT_SIGNAL)
                      (let (event-handler
                            (do-with-lock mx
                              (vector-ref
                               handlers
                               (:- (kevent-ident events i) :fixnum))))
                        ;; TODO: consider exposing the occurrence count in
                        ;; kevent-data. This API currently delivers a notification,
                        ;; not one callback per occurrence; handlers must drain
                        ;; underlying state (e.g. all exited children for SIGCHLD).
                        (when event-handler
                          (signal-handler-dispatch
                           (:- event-handler :procedure)))))
                    (raise-os-error signal-handler-wait
                                    EIO
                                    (kevent-data events i)
                                    signal-handler-wait))
                  (event-loop (fx1+ i))))))
          (wait-loop)))
      (catch (e)
        (log.error "error handling signals"
                   exception: (exception->string e))
        (raise e))))

   (def (signal-handler-add! (sh    : signal-handler)
                             (signo : :fixnum)
                             (thunk : :procedure))
     => :void
     (with ((signal-handler handlers default-handlers kq mx) sh)
       (do-with-lock mx
         (cond
          ((vector-ref handlers signo)
           (vector-set! handlers signo thunk))
          (else
           ;; TODO: handle FreeBSD SIGCHLD without SIG_IGN, which suppresses
           ;; EVFILT_SIGNAL delivery for that signal. Coordinate disposition and
           ;; child reaping with the runtime's subprocess bookkeeping; a no-op
           ;; handler alone does not settle ownership of wait().
           (ignore-signal! sh signo)
           (try
            (kqueue-kevent-add kq signo EVFILT_SIGNAL)
            (vector-set! handlers signo thunk)
            (catch (e)
              (restore-signal! sh signo)
              (raise e))))))))

   (def (signal-handler-remove! (sh : signal-handler) (signo : :fixnum))
     => :void
     (with ((signal-handler handlers default-handlers kq mx) sh)
       (do-with-lock mx
         (when (vector-ref handlers signo)
           (kqueue-kevent-del kq signo EVFILT_SIGNAL)
           (try
            (restore-signal! sh signo)
            (vector-set! handlers signo #f)
            (catch (e)
              (kqueue-kevent-add kq signo EVFILT_SIGNAL)
              (raise e)))))))

   (def (ignore-signal! (sh : signal-handler) (signo : :fixnum))
     => :void
     (let* ((default-handlers sh.default-handlers)
            (default-handler (vector-ref default-handlers signo)))
       (when (eq? default-handler no-signal-handler)
         (let (previous (make-bsd-signal-action))
           (do-syscall (ffi-ignore-signal signo previous))
           (vector-set! default-handlers signo previous)))))

   (def (restore-signal! (sh : signal-handler) (signo : :fixnum))
     => :void
     (let* ((default-handlers sh.default-handlers)
            (default-handler (vector-ref default-handlers signo)))
       (unless (eq? default-handler no-signal-handler)
         (do-syscall
          (ffi-restore-bsd-signal
           signo
           (:- default-handler ffi_bsd_signal_action)))
         (vector-set! default-handlers signo no-signal-handler))))

   (C-ffi-macrology)
   (C-include "<signal.h>"
              "<errno.h>"
              "<string.h>")
   (C-declare #<<END-C
struct ffi_bsd_signal_action {
  struct sigaction action;
};

static int ffi_ignore_signal(int signo,
                             struct ffi_bsd_signal_action *previous)
{
  struct sigaction action;
  memset(&action, 0, sizeof(action));
  if (sigemptyset(&action.sa_mask) < 0) {
    return -1;
  }
  action.sa_handler = SIG_IGN;
  return sigaction(signo, &action, &previous->action);
}

static int ffi_restore_bsd_signal(
  int signo, struct ffi_bsd_signal_action *previous)
{
  return sigaction(signo, &previous->action, NULL);
}
END-C
)

   (def-C-struct ffi_bsd_signal_action)

   (def (make-bsd-signal-action)
     => ffi_bsd_signal_action
     (make-ffi_bsd_signal_action))

   (def-C-syscall
     (ffi-ignore-signal (signo   :- :fixnum)
                        (previous :- ffi_bsd_signal_action))
     "ffi_ignore_signal(___arg1, ___arg2)")

   (def-C-syscall
     (ffi-restore-bsd-signal (signo   :- :fixnum)
                             (previous :- ffi_bsd_signal_action))
     "ffi_restore_bsd_signal(___arg1, ___arg2)"))

  (else
   (def (make-signal-handler)
     => :t
     (error "Signal handler not implemented in this system"))

   (def (signal-handler-add! (sh : :t)
                             (signo : :fixnum)
                             (thunk : :procedure))
     => :void
     (error "Signal handler not implemented in this system"))

   (def (signal-handler-remove! (sh : :t) (signo : :fixnum))
     => :void
     (error "Signal handler not implemented in this system"))))

(def (signal-handler-dispatch (handler : :procedure))
  => :void
  (try
   (handler)
   (catch (e)
     (log.error "error dispatching signal handler"
                exception: (exception->string e)))))
