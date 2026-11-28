;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered channels (zero-allocation growable circular ring buffer)
(import :std/error
        :std/interface
        :std/time/timeout
        :std/iter/interface)
(export Channel Channel?
        (rename: make-Channel make-channel)
        channel-put channel-try-put channel-sync
        channel-get channel-try-get
        channel-close channel-closed?)

(def (%next-pow2 (n :- :fixnum))
  => :fixnum
  (let loop ((p 16))
    (if (fx>= p n) p (loop (fxarithmetic-shift-left p 1)))))

(defstruct Channel ((buf             :- :vector)
                    (head            :- :fixnum)
                    (tail            :- :fixnum)
                    (count           :- :fixnum)
                    (cap             :- :fixnum)
                    (mask            :- :fixnum)
                    (mx              :- :mutex)
                    (rcv             :- :condvar)
                    (wcv             :- :condvar)
                    (readers-waiting :- :fixnum)
                    (writers-waiting :- :fixnum)
                    (limit           :? :fixnum)
                    (eof             :- :boolean))
  constructor: :init!
  final: #t)

(defmethod {:init! Channel}
  (lambda (self (limit :? :fixnum := #f))
    (let* ((init-cap (if (and limit (fx> limit 0))
                       (%next-pow2 (if (fx> limit 1024) 1024 limit))
                       16)))
      (set! self.buf (make-vector init-cap #f))
      (set! self.head 0)
      (set! self.tail 0)
      (set! self.count 0)
      (set! self.cap init-cap)
      (set! self.mask (fx- init-cap 1))
      (set! self.mx (make-mutex 'channel))
      (set! self.rcv (make-condition-variable 'channel-read))
      (set! self.wcv (make-condition-variable 'channel-write))
      (set! self.readers-waiting 0)
      (set! self.writers-waiting 0)
      (set! self.limit limit)
      (set! self.eof #f))))

(def (%ch-grow! (ch :- Channel))
  (let* ((old-cap ch.cap)
         (new-cap (fxarithmetic-shift-left old-cap 1))
         (old-buf ch.buf)
         (new-buf (make-vector new-cap #f))
         (h ch.head)
         (cnt ch.count)
         (old-mask ch.mask))
    (let copy ((i 0))
      (when (fx< i cnt)
        (##vector-set! new-buf i (##vector-ref old-buf (fxand (fx+ h i) old-mask)))
        (copy (fx+ i 1))))
    (set! ch.buf new-buf)
    (set! ch.head 0)
    (set! ch.tail cnt)
    (set! ch.cap new-cap)
    (set! ch.mask (fx- new-cap 1))))

(definline (%ch-push! (ch :- Channel) val)
  (when (fx= ch.count ch.cap)
    (%ch-grow! ch))
  (let ((t ch.tail))
    (##vector-set! ch.buf t val)
    (set! ch.tail (fxand (fx+ t 1) ch.mask))
    (set! ch.count (fx+ ch.count 1))))

(definline (%ch-pop! (ch :- Channel))
  (let* ((h ch.head)
         (buf ch.buf)
         (val (##vector-ref buf h)))
    (##vector-set! buf h #f)
    (set! ch.head (fxand (fx+ h 1) ch.mask))
    (set! ch.count (fx- ch.count 1))
    val))

(definline (%ch-peek (ch :- Channel))
  (##vector-ref ch.buf ch.head))

(def (channel-put (ch : Channel) val (timeo #f))
  ;; mutex-unlock! reads a real number as seconds from now, so the deadline is a time.
  (let (timeo (if timeo (timeout->abs-timeout timeo value: seconds->time) #f))
    (let loop ((waiting? #f))
      (mutex-lock! ch.mx)
      (when waiting?
        (set! ch.writers-waiting (fx- ch.writers-waiting 1)))
      (cond
       (ch.eof
        (mutex-unlock! ch.mx)
        (raise-io-closed channel-put "channel is closed" ch))
       ((or (not ch.limit) (fx< ch.count (:- ch.limit :fixnum)))
        (%ch-push! ch val)
        (when (fx> ch.readers-waiting 0)
          (condition-variable-signal! ch.rcv)) ; wake one reader without thundering herd
        (mutex-unlock! ch.mx)
        #t)
       (else
        (set! ch.writers-waiting (fx+ ch.writers-waiting 1))
        (let ((completed? #f)
              (signaled? #f))
          (unwind-protect
            (begin
              (set! signaled? (mutex-unlock! ch.mx ch.wcv timeo))
              (set! completed? #t))
            (unless completed?
              ;; Aborted/terminated while waiting on wcv: decrement count and pass
              ;; any wakeup signal to a remaining writer so no sibling is stranded.
              (mutex-lock! ch.mx)
              (set! ch.writers-waiting (fx- ch.writers-waiting 1))
              (when (and (fx> ch.writers-waiting 0)
                         (or ch.eof (not ch.limit)
                             (fx< ch.count (:- ch.limit :fixnum))))
                (condition-variable-signal! ch.wcv))
              (mutex-unlock! ch.mx)))
          (if signaled?
            (loop #t)
            (begin
              (mutex-lock! ch.mx)
              (set! ch.writers-waiting (fx- ch.writers-waiting 1))
              (mutex-unlock! ch.mx)
              #f))))))))

(def (channel-try-put (ch : Channel) val)
  (mutex-lock! ch.mx)
  (cond
   (ch.eof
    (mutex-unlock! ch.mx)
    (raise-io-closed channel-try-put "channel is closed" ch))
   ((or (not ch.limit) (fx< ch.count (:- ch.limit :fixnum)))
    (%ch-push! ch val)
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
      (for-each (lambda (v) (%ch-push! ch v)) vals)
      (when (fx> ch.readers-waiting 0)
        (condition-variable-broadcast! ch.rcv)))
    (mutex-unlock! ch.mx))))

(defrule (__channel-front chan timeo default front dequeue?)
  (using (ch chan :- Channel)
    (let (timeo (if timeo (timeout->abs-timeout timeo value: seconds->time) #f))
      (let loop ((waiting? #f))
        (mutex-lock! ch.mx)
        (when waiting?
          (set! ch.readers-waiting (fx- ch.readers-waiting 1)))
        (cond
         ((fx= ch.count 0)
          (cond
           (ch.eof
            (mutex-unlock! ch.mx)
            #!eof)
           (else
            (set! ch.readers-waiting (fx+ ch.readers-waiting 1))
            (let ((completed? #f)
                  (signaled? #f))
              (unwind-protect
                (begin
                  (set! signaled? (mutex-unlock! ch.mx ch.rcv timeo))
                  (set! completed? #t))
                (unless completed?
                  ;; Aborted/terminated while waiting on rcv: decrement count and pass
                  ;; any wakeup signal to a remaining reader so no sibling is stranded.
                  (mutex-lock! ch.mx)
                  (set! ch.readers-waiting (fx- ch.readers-waiting 1))
                  (when (and (fx> ch.readers-waiting 0)
                             (or ch.eof (fx> ch.count 0)))
                    (condition-variable-signal! ch.rcv))
                  (mutex-unlock! ch.mx)))
              (if signaled?
                (loop #t)
                (begin
                  (mutex-lock! ch.mx)
                  (set! ch.readers-waiting (fx- ch.readers-waiting 1))
                  (mutex-unlock! ch.mx)
                  default))))))
         (else
          (let (next (front ch))
            (when (and dequeue? ch.limit (fx> ch.writers-waiting 0)
                       (fx< ch.count (:- ch.limit :fixnum)))
              (condition-variable-signal! ch.wcv)) ; wake one writer without thundering herd
            (mutex-unlock! ch.mx)
            next)))))))

(def (channel-peek (ch : Channel) (timeo #f) (default #f))
  (__channel-front ch timeo default %ch-peek #f))

(def (channel-get (ch : Channel) (timeo #f) (default #f))
  (__channel-front ch timeo default %ch-pop! #t))

(def (channel-try-get (ch : Channel) (default #f))
  (mutex-lock! ch.mx)
  (cond
   ((fx= ch.count 0)
    (let (eof ch.eof)
      (mutex-unlock! ch.mx)
      (if eof #!eof default)))
   (else
    (let (next (%ch-pop! ch))
      (when (and ch.limit (fx> ch.writers-waiting 0)
                 (fx< ch.count (:- ch.limit :fixnum)))
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
