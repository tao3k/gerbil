;;; -*- Gerbil -*-
;;; © vyzo
;;; OS pipe devices
(import :std/error
        :std/ffi
        ./device
        ./error
        ./fcntl
        ./file)
(export pipe)

(def (pipe (direction : :symbol := 'inout)
           (closeonexec : :boolean := #t))
  => :values
  (unless (memq direction '(in out inout none))
    (raise-bad-argument pipe "direction: in, out, inout, or none" direction))
  (let* ((fds (make-pipe_fds))
         (_ (cond-expand
              (linux
               (do-syscall (__pipe-syscall fds (if closeonexec O_CLOEXEC 0))))
              (else
               (do-syscall (__pipe-syscall fds)))))
         (ifd (pipe_fds-ref fds 0))
         (ofd (pipe_fds-ref fds 1))
         (idev #f)
         (odev #f))
    (with-catch
     (lambda (e)
       (ignore-errors
        (if idev
          (device-close idev)
          (__close-fd ifd)))
       (ignore-errors
        (if odev
          (device-close odev)
          (__close-fd ofd)))
       (raise e))
     (lambda ()
       (cond-expand
         ((not linux)
          ;; TODO: Use creation-time CLOEXEC where available; this fallback
          ;; can leak descriptors across concurrent fork/exec on SMP runtimes.
          (when closeonexec
            (fcntl-setfd! ifd FD_CLOEXEC)
            (fcntl-setfd! ofd FD_CLOEXEC))))
       (case direction
         ((in)
          (fcntl-setfl! ifd O_NONBLOCK)
          (let (raw (__open-raw-device 'pipe ifd DIRECTION-IN))
            (set! idev (FileDevice raw ifd DIRECTION-IN "pipe")))
          (values idev ofd))
         ((out)
          (fcntl-setfl! ofd O_NONBLOCK)
          (let (raw (__open-raw-device 'pipe ofd DIRECTION-OUT))
            (set! odev (FileDevice raw ofd DIRECTION-OUT "pipe")))
          (values ifd odev))
         ((inout)
          (fcntl-setfl! ifd O_NONBLOCK)
          (fcntl-setfl! ofd O_NONBLOCK)
          (let (raw (__open-raw-device 'pipe ifd DIRECTION-IN))
            (set! idev (FileDevice raw ifd DIRECTION-IN "pipe")))
          (let (raw (__open-raw-device 'pipe ofd DIRECTION-OUT))
            (set! odev (FileDevice raw ofd DIRECTION-OUT "pipe")))
          (values idev odev))
         (else
          (values ifd ofd)))))))

(C-ffi-macrology)
(C-include "<errno.h>"
           "<fcntl.h>"
           "<unistd.h>")
(C-declare "struct pipe_fds { int fd[2]; };")

(def-C-struct pipe_fds)

(def-C (pipe_fds-ref (fds : pipe_fds) (index : :fixnum))
  => :fixnum
  "___arg1->fd[___arg2]")

(cond-expand
  (linux
   ;; Set CLOEXEC on both ends atomically with descriptor creation.
   (def-C-syscall (__pipe-syscall (fds :- pipe_fds) (flags :- :fixnum))
     "pipe2(___arg1->fd, ___arg2)"))
  (else
   (def-C-syscall (__pipe-syscall (fds :- pipe_fds))
     "pipe(___arg1->fd)")))
