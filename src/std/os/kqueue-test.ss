;;; -*- Gerbil -*-
;;; (C) Gerbil contributors

(cond-expand
  (bsd
   (import :std/error
           :std/test
           ./kqueue)
   (export kqueue-test)

   (def kqueue-test
     (test-suite "kqueue"
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
