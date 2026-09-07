;;; -*- Gerbil -*-
;;; © vyzo
;;; tests for std/os/inotify
(cond-expand
  (linux
   (import :std/io/tempfile
           :std/test
           :std/time/timeout
           ./device
           ./fcntl
           ./inotify)
   (export inotify-test)

   (def (find-inotify-event (events : :list)
                            (wd : :fixnum)
                            (name : :string)
                            (mask : :fixnum))
     => :t
     (cond
      ((null? events) #f)
      (else
       (let (event (:- (car events) InotifyEvent))
         (if (and (fx= (InotifyEvent-wd event) wd)
                  (equal? (InotifyEvent-name event) name)
                  (not (fxzero? (fxand (InotifyEvent-mask event) mask))))
           event
           (find-inotify-event (cdr events) wd name mask))))))

   (def (wait-for-inotify-event (in : :t)
                                (wd : :fixnum)
                                (name : :string)
                                (mask : :fixnum))
     => :t
     (let (deadline (timeout->deadline 1))
       (let loop ()
         (let (events (inotify in deadline))
           (and events
                (or (find-inotify-event events wd name mask)
                    (loop)))))))

   (def inotify-test
     (test-suite "test :std/os/inotify"
       (test-case "watch directory events"
         (call-with-temporary-directory
          "gerbil-inotify-test-"
          (lambda (directory)
            (def in (inotify-init))
            (try
             (check (InotifyDevice? in) => #t)
             (check (fxzero? (fxand (fcntl-getfl (OSDevice-fd in)) O_NONBLOCK)) => #f)
             (check (fxzero? (fxand (fcntl-getfd (OSDevice-fd in)) FD_CLOEXEC)) => #f)
             (def wd (inotify-add-watch in directory IN_CREATE))
             (check (inotify in .01) => #f)
             (def name "created")
             (create-directory (path-expand name directory))
             (def event (wait-for-inotify-event in wd name IN_CREATE))
             (check (InotifyEvent? event) => #t)
             (check (fxzero? (fxand (InotifyEvent-mask event) IN_ISDIR)) => #f)
             (check (inotify-rm-watch in wd) => 0)
             (finally
              (device-close in))))))))))
