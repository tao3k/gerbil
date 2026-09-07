;;; -*- Gerbil -*-
;;; © vyzo
;;; tests for std/os/flock
(import :std/error
        :std/io/tempfile
        :std/test
        ./device
        ./error
        ./fcntl
        ./file
        ./flock)
(export flock-test)

(def flock-test-flags (fxior O_RDWR O_CREAT))
(def flock-test-mode (fxior S_IRUSR S_IWUSR))

(def flock-test
  (test-suite "test :std/os/flock"
    (test-case "closed devices cannot lock a reused descriptor"
      (call-with-temporary-file-name
       "gerbil-flock-test-"
       (lambda (path)
         (let* ((closed (open-file-device path flock-test-flags flock-test-mode))
                (fd (OSDevice-fd closed)))
           (device-close closed)
           (call-with-temporary-file-name
            "gerbil-flock-other-"
            (lambda (other-path)
              (let (replacement (open-file-device other-path flock-test-flags flock-test-mode))
                (try
                 ;; Confirm actual reuse rather than just testing an invalid fd.
                 (check (OSDevice-fd replacement) => fd)
                 (check-exception (flock closed LOCK_EX) io-closed-error?)
                 (check-exception (flock/block closed LOCK_EX .01) io-closed-error?)
                 (let (probe (open-file-device other-path flock-test-flags flock-test-mode))
                   (unwind-protect
                     (check (flock probe LOCK_EX) => 0)
                     (device-close probe)))
                 (finally (device-close replacement))))))))))

    (test-case "blocking flock rechecks the device after sleeping"
      (call-with-temporary-file-name
       "gerbil-flock-test-"
       (lambda (path)
         (call-with-temporary-file-name
          "gerbil-flock-other-"
          (lambda (other-path)
            (let ((owner (open-output-file/lock path))
                  (contender #f)
                  (replacement #f)
                  (waiter #f))
              (try
               (set! contender (open-file-device path flock-test-flags flock-test-mode))
               (let (fd (OSDevice-fd contender))
                 (set! waiter
                   (spawn
                    (lambda ()
                      (with-catch identity
                        (lambda () (flock/block contender LOCK_EX 3) 'acquired)))))
                 ;; Wait for the contention sleep, not merely thread startup.
                 (let (deadline (+ (##current-time-point) 2))
                   (let loop ()
                     (unless (thread-state-waiting? (thread-state waiter))
                       (when (>= (##current-time-point) deadline)
                         (raise-timeout flock-test "Waiter did not enter contention sleep"))
                       (thread-sleep! .001)
                       (loop))))
                 (device-close contender)
                 (set! replacement
                   (open-file-device other-path flock-test-flags flock-test-mode))
                 (check (OSDevice-fd replacement) => fd)
                 (check (thread-join! waiter 5 'timeout) ? io-closed-error?)
                 ;; The unrelated replacement must still be available to lock.
                 (let (probe (open-file-device other-path flock-test-flags flock-test-mode))
                   (unwind-protect
                     (check (flock probe LOCK_EX) => 0)
                     (device-close probe))))
               (finally
                 (when waiter
                   (ignore-errors (thread-terminate! waiter))
                   (ignore-errors (thread-join! waiter 5)))
                 (when replacement (device-close replacement))
                 (when contender (device-close contender))
                 (device-close owner)))))))))

    (test-case "explicit O_TRUNC preserves contents on lock timeout"
      (call-with-temporary-file-name
       "gerbil-flock-test-"
       (lambda (path)
         (call-with-output-file path
           (lambda (port) (display "valuable contents" port)))
         (let (owner (open-output-file/lock path))
           (unwind-protect
             (begin
               (check-exception
                (let (dev (open-file/lock path LOCK_EX .01
                                         direction: DIRECTION-OUT
                                         flags: (fxior O_WRONLY O_TRUNC)
                                         mode: 0))
                  (device-close dev))
                Timeout?)
               (check (call-with-input-file path read-line) => "valuable contents"))
             (device-close owner)))
         (let (dev (open-file/lock path LOCK_EX
                                  direction: DIRECTION-OUT
                                  flags: (fxior O_WRONLY O_TRUNC)
                                  mode: 0))
           (unwind-protect
             (check (file-info-size (file-info path)) => 0)
             (device-close dev))))))

    (test-case "failed truncation releases the lock"
      (call-with-temporary-file-name
       "gerbil-flock-test-"
       (lambda (path)
         (call-with-output-file path
           (lambda (port) (display "valuable contents" port)))
         ;; ftruncate must fail on a read-only descriptor, after flock succeeds.
         (check-exception
          (let (dev (open-file/lock path LOCK_EX .01
                                   direction: DIRECTION-IN
                                   flags: (fxior O_RDONLY O_TRUNC)
                                   mode: 0))
            (device-close dev))
          os-error?)
         (check (call-with-input-file path read-line) => "valuable contents")
         (let (dev (open-output-file/lock path .01))
           (unwind-protect
             (check (flock dev LOCK_EX) => 0)
             (device-close dev))))))

    (test-case "shared locks cooperate"
      (call-with-temporary-file-name
       "gerbil-flock-test-"
       (lambda (path)
         (def first
           (open-file/lock path LOCK_SH
                           direction: DIRECTION-IN
                           flags: flock-test-flags
                           mode: flock-test-mode))
         (try
          (def second
            (open-file/lock path LOCK_SH
                            direction: DIRECTION-IN
                            flags: flock-test-flags
                            mode: flock-test-mode))
          (try
           (check (FileDevice? second) => #t)
           (check (FileDevice-path second) => path)
           (check (flock second LOCK_SH) => 0)
           (finally
            (device-close second)))
          (finally
           (device-close first))))))

    (test-case "exclusive lock contention is cooperative"
      (call-with-temporary-file-name
       "gerbil-flock-test-"
       (lambda (path)
         (def owner
           (open-output-file/lock path flags: flock-test-flags mode: flock-test-mode))
         (try
          (check (FileDevice? owner) => #t)
          (def contender (open-file-device path flock-test-flags flock-test-mode))
          (try
           (def raw-fd (OSDevice-fd contender))
           (check-exception (apply flock [raw-fd LOCK_EX]) true)
           (check-exception (apply flock/block [raw-fd LOCK_EX .01]) true)
           (check (flock contender LOCK_EX) => #f)
           (def fuse #f)
           (def fuse-thread
             (spawn
              (lambda ()
                (thread-sleep! .01)
                (set! fuse #t))))
           (check-exception (flock/block contender LOCK_EX .05) Timeout?)
           (thread-join! fuse-thread)
           (check fuse => #t)
           (device-close owner)
           (check (flock contender LOCK_EX) => 0)
           (finally
            (device-close contender)))
          (finally
           (device-close owner))))))))
