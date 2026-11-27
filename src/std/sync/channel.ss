;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered channels
(import :std/error
        :std/interface
        :std/time/timeout
        :std/struct/queue
        :std/iter/interface)
(export Channel Channel?
        (rename: make-Channel make-channel)
        channel-put channel-try-put channel-sync
        channel-get channel-try-get
        channel-close channel-closed?)

(defstruct Channel ((q               :- Queue)
                    (mx              :- :mutex)
                    (rcv             :- :condvar)
                    (wcv             :- :condvar)
                    (readers-waiting :- :fixnum)
                    (writers-waiting :- :fixnum)
                    (limit           :- :fixnum)
                    (eof             :- :boolean))
  constructor: :init!
  final: #t )

(defmethod {:init! Channel}
  (lambda (self (limit :? :fixnum := #f))
    (set! self.q  (make-Queue))
    (set! self.mx (make-mutex 'channel))
    (set! self.rcv (make-condition-variable 'channel-read))
    (set! self.wcv (make-condition-variable 'channel-write))
    (set! self.readers-waiting 0)
    (set! self.writers-waiting 0)
    (set! self.limit limit)
    (set! self.eof #f)))

(def (channel-put (ch : Channel) val (timeo #f))
  ;; mutex-unlock! reads a real number as seconds from now, so the deadline is a time.
  (let (timeo (timeout->abs-timeout timeo value: seconds->time))
    (let loop ((waiting? #f))
      (mutex-lock! ch.mx)
      (when waiting?
        (set! ch.writers-waiting (fx- ch.writers-waiting 1)))
      (cond
       (ch.eof
        (mutex-unlock! ch.mx)
        (raise-io-closed channel-put "channel is closed" ch))
       ((or (not ch.limit) (fx< (Queue-length ch.q) (:- ch.limit :fixnum)))
        (enqueue! ch.q val)
        (when (fx> ch.readers-waiting 0)
          (condition-variable-signal! ch.rcv)) ; wake one reader without thundering herd
        (mutex-unlock! ch.mx)
        #t)
       (else
        (set! ch.writers-waiting (fx+ ch.writers-waiting 1))
        (if (mutex-unlock! ch.mx ch.wcv timeo)
          (loop #t)
          (begin
            (mutex-lock! ch.mx)
            (set! ch.writers-waiting (fx- ch.writers-waiting 1))
            (mutex-unlock! ch.mx)
            #f)))))))

(def (channel-try-put (ch : Channel) val)
  (mutex-lock! ch.mx)
  (cond
   (ch.eof
    (mutex-unlock! ch.mx)
    (raise-io-closed channel-try-put "channel is closed" ch))
   ((or (not ch.limit) (fx< (Queue-length ch.q) (:- ch.limit :fixnum)))
    (enqueue! ch.q val)
    (when (fx> ch.readers-waiting 0)
      (condition-variable-signal! ch.rcv))
    (mutex-unlock! ch.mx)
    #t)
   (else
    (mutex-unlock! ch.mx)
    #f)))

(def (channel-sync (ch : Channel) . vals)
  (mutex-lock! ch.mx)
  (cond
   (ch.eof
    (mutex-unlock! ch.mx)
    (raise-io-closed channel-sync "channel is closed" ch))
   (else
    (unless (null? vals)
      (for-each (cut enqueue! ch.q <>) vals)
      (when (fx> ch.readers-waiting 0)
        (condition-variable-broadcast! ch.rcv)))
    (mutex-unlock! ch.mx))))

(defrule (__channel-front chan timeo default front dequeue?)
  (using (ch chan :- Channel)
    (let (timeo (timeout->abs-timeout timeo value: seconds->time))
      (let loop ((waiting? #f))
        (mutex-lock! ch.mx)
        (when waiting?
          (set! ch.readers-waiting (fx- ch.readers-waiting 1)))
        (cond
         ((queue-empty? ch.q)
          (cond
           (ch.eof
            (mutex-unlock! ch.mx)
            #!eof)
           (else
            (set! ch.readers-waiting (fx+ ch.readers-waiting 1))
            (if (mutex-unlock! ch.mx ch.rcv timeo)
              (loop #t)
              (begin
                (mutex-lock! ch.mx)
                (set! ch.readers-waiting (fx- ch.readers-waiting 1))
                (mutex-unlock! ch.mx)
                default)))))
         (else
          (let (next (front ch.q))
            (when (and dequeue? ch.limit (fx> ch.writers-waiting 0)
                       (fx< (Queue-length ch.q) (:- ch.limit :fixnum)))
              (condition-variable-signal! ch.wcv)) ; wake one writer without thundering herd
            (mutex-unlock! ch.mx)
            next)))))))

(def (channel-peek (ch : Channel) (timeo #f) (default #f))
  (__channel-front ch timeo default queue-peek #f))

(def (channel-get (ch : Channel) (timeo #f) (default #f))
  (__channel-front ch timeo default dequeue! #t))

(def (channel-try-get (ch : Channel) (default #f))
  (mutex-lock! ch.mx)
  (cond
   ((queue-empty? ch.q)
    (let (eof ch.eof)
      (mutex-unlock! ch.mx)
      (if eof #!eof default)))
   (else
    (let (next (dequeue! ch.q))
      (when (and ch.limit (fx> ch.writers-waiting 0)
                 (fx< (Queue-length ch.q) (:- ch.limit :fixnum)))
        (condition-variable-signal! ch.wcv))
      (mutex-unlock! ch.mx)
      next))))

(def (channel-close (ch : Channel))
  => :void
  (mutex-lock! ch.mx)
  (unless ch.eof
    (set! ch.eof #t)
    (condition-variable-broadcast! ch.rcv)
    (condition-variable-broadcast! ch.wcv))
  (mutex-unlock! ch.mx)
  (void))

(def (channel-closed? (ch : Channel))
  (mutex-lock! ch.mx)
  (let (eof ch.eof)
    (mutex-unlock! ch.mx)
    eof))

(implement Iterator Channel
  (next!
   (lambda (self)
     (channel-get self #f #!eof))))
