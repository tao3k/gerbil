;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; :std/misc/channel test

(import ./channel
        :std/test
        :std/error
        :std/iter
        :std/sync/atomic
        :gerbil/runtime/util)
(export channel-test)

(def (channel-reader ch count)
  (let lp ((i 0))
    (if (fx< i count)
      (let (next (channel-get ch))
        (check next => i)
        (lp (fx1+ i)))
      (let (next (channel-get ch))
        (check next => #!eof))))
  (void))

(def (channel-writer ch count)
  (let lp ((i 0))
    (when (fx< i count)
      (channel-put ch i)
      (lp (fx1+ i))))
  (channel-close ch)
  (void))

(def (channel-sync-reader ch count)
  (let lp ((i 0))
    (if (fx< i count)
      (let (next (channel-get ch))
        (match next
          ([thread . token]
           (thread-send thread token)
           (lp i))
          (else
           (check next => i)
           (lp (fx1+ i)))))
      (let (next (channel-get ch))
        (match next
          ([thread . token]
           (thread-send thread token)
           (lp i))
          (else
           (check next => #!eof))))))
  (void))

(def (channel-sync-writer ch count)
  (let lp ((i 0))
    (when (fx< i count)
      (if (channel-try-put ch i)
        (lp (fx1+ i))
        (let (token (gensym))
          (channel-sync ch (cons (current-thread) token))
          (check (thread-receive) => token)
          (lp i)))))
  (channel-close ch)
  (void))

(def (do-thread-join! thr)
  (try
   (thread-join! thr)
   (catch (uncaught-exception? e)
     (raise (uncaught-exception-reason e)))))

(def channel-test
  (test-suite  "test :std/misc/channel"
    (test-case "test timeouts of a full put and an empty get"
      (def ch (make-channel 1))
      (check (channel-put ch 'a) => #t)
      ;; A deadline read as seconds from now would wait for decades: fail, not hang.
      (let (worker (spawn-thread
                    (lambda ()
                      [(channel-put ch 'b 0.2) (channel-get ch) (channel-get ch 0.2 'empty)])))
        (check (thread-join! worker 10 'timeout) => [#f 'a 'empty])))
    (test-case "test concurrent buffering"
      (def ch (make-channel 10))
      (let ((rd (spawn channel-reader ch 100))
            (wr (spawn channel-writer ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))

    (test-case "test delayed writer buffering"
      (def ch (make-channel 10))
      (let* ((rd (spawn channel-reader ch 100))
             (_ (thread-sleep! 1))
             (wr (spawn channel-writer ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))

    (test-case "test delayed reader buffering"
      (def ch (make-channel 10))
      (let* ((wr (spawn channel-writer ch 100))
             (_ (thread-sleep! 1))
             (rd (spawn channel-reader ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))

    (test-case "test reader-writer sync buffering"
      (def ch (make-channel 10))
      (let* ((wr (spawn channel-sync-writer ch 100))
             (_ (thread-sleep! 1))
             (rd (spawn channel-sync-reader ch 100)))
        (thread-sleep! 1)
        (check (do-thread-join! rd) ? void?)
        (check (do-thread-join! wr) ? void?)))

    (test-case "SMP all-core MPMC ring-buffer exact-once conservation (bounded, unbounded & sync growth)"
      (def half (max 2 (quotient (max 4 (##current-vm-processor-count)) 2)))
      (def per 1000)
      (def total (* half per))
      ;; Test bounded wraparound (limit=8, limit=64) AND unbounded ring growth (limit=#f)
      (for-each
       (lambda (lim)
         (let ((ch (make-channel lim))
               (seen (make-vector total 0)))
           (let ((prods
                  (for/collect (p (in-range half))
                    (let ((pid p))
                      (spawn (lambda ()
                               (let lp ((i 0))
                                 (when (fx< i per)
                                   (channel-put ch (fx+ (fx* pid per) i))
                                   (lp (fx+ i 1)))))))))
                 (cons-ts
                  (for/collect (_ (in-range half))
                    (spawn (lambda ()
                             (let lp ()
                               (let ((v (channel-get ch)))
                                 (unless (eof-object? v)
                                   (__atomic-fx-fetch-add! seen v 1 3)
                                   (lp)))))))))
             (for-each do-thread-join! prods)
             (channel-close ch)
             (for-each do-thread-join! cons-ts)
             (let ((bad 0))
               (let chk ((i 0))
                 (when (fx< i total)
                   (unless (fx= (:- (__atomic-fx-load seen i 1) :fixnum) 1)
                     (set! bad (fx+ bad 1)))
                   (chk (fx+ i 1))))
               (check bad => 0)))))
       '(8 64 #f))

      ;; Ring-buffer growth via channel-sync overflow past limit=4 + concurrent close wakeup storm
      (let ((ch (make-channel 4)))
        (for (i (in-range 40))
          (channel-sync ch i))
        (for (i (in-range 40))
          (check (channel-get ch) => i))
        (check (channel-try-get ch 'empty) => 'empty))

      (let* ((ch (make-channel 1))
             (closed-writers (make-atomic-fxbox 0))
             (eof-readers (make-atomic-fxbox 0))
             (writers
              (for/collect (_ (in-range 12))
                (spawn (lambda ()
                         (with-catch
                          (lambda (e)
                            (when (io-closed-error? e)
                              (atomic-fxbox-fetch-add! closed-writers 1 (memory-order relaxed))))
                          (lambda ()
                            (let lp ((k 0))
                              (channel-put ch k)
                              (lp (fx+ k 1)))))))))
             (readers
              (for/collect (_ (in-range 12))
                (spawn (lambda ()
                         (let lp ()
                           (if (eof-object? (channel-get ch))
                             (atomic-fxbox-fetch-add! eof-readers 1 (memory-order relaxed))
                             (lp))))))))
        (thread-sleep! 0.015)
        (channel-close ch)
        (for-each do-thread-join! writers)
        (for-each do-thread-join! readers)
        (check (atomic-fxbox-ref closed-writers (memory-order acquire)) => 12)
        (check (atomic-fxbox-ref eof-readers (memory-order acquire)) => 12)))))
