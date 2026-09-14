;;; -*- Gerbil -*-
;;; (C) Gerbil contributors
;;; Tests for kqueue events and nullable user data

(cond-expand
  (bsd
   (import :std/error
           :std/test
           ./kqueue)
   (export kqueue-test)

   (def kqueue-test
     (test-suite "kqueue"
       (test-case "nullable event user data"
         (def events (make-kevents 1))
         (check (kevent-udata events 0) => #f)
         (set-kevent-udata! events 0 events)
         (check (foreign? (kevent-udata events 0)) => #t)
         (set-kevent-udata! events 0 #f)
         (check (kevent-udata events 0) => #f))
       (test-case "create, poll, and close"
         (def queue (kqueue))
         (def events (make-kevents 1))
         (unwind-protect
           (begin
             (check (foreign-tags events) => '(kevent*))
             (check (kqueue-poll queue events 1) => 0))
           (kqueue-close queue))
         (check-exception (kqueue-poll queue events 1) io-error?)))))
  (else))
