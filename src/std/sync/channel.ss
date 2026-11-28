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

(def %ch-empty-sentinel    '#(ch-empty))
(def %ch-timedout-sentinel '#(ch-timedout))
(def %ch-woke-sentinel     '#(ch-woke))

(cond-expand
 (gerbil-smp
  (extern namespace: #f
    macro-mutex-lock-anonymously!
    macro-mutex-unlock!
    ##mutex-signal-and-condvar-wait!
    ##condvar-signal-no-reschedule!)

  ;; Non-blocking anonymous-mutex fast path for channel-put (skips owned-mutex
  ;; thread-list link/unlink, timeout resolution, and unwind-protect setup).
  (def (%ch-put-fast! (ch :- Channel) val)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (cond
       (ch.eof
        (macro-mutex-unlock! mx)
        'closed)
       ((or (##not ch.limit) (##fx< ch.count (:- ch.limit :fixnum)))
        (%ch-push! ch val)
        (when (##fx> ch.readers-waiting 0)
          (##condvar-signal-no-reschedule! ch.rcv #f))
        (macro-mutex-unlock! mx)
        'ok)
       (else
        (macro-mutex-unlock! mx)
        'full))))

  ;; Single blocking iteration for channel-put: re-checks capacity under anonymous
  ;; mutex and atomically waits on wcv with raw flonum deadline (or #t infinite).
  (def (%ch-put-wait-step! (ch :- Channel) val tm woke? state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when woke?
        (set! ch.writers-waiting (##fx- ch.writers-waiting 1))
        (##vector-set! state 0 #f))
      (cond
       (ch.eof
        (macro-mutex-unlock! mx)
        'closed)
       ((or (##not ch.limit) (##fx< ch.count (:- ch.limit :fixnum)))
        (%ch-push! ch val)
        (when (##fx> ch.readers-waiting 0)
          (##condvar-signal-no-reschedule! ch.rcv #f))
        (macro-mutex-unlock! mx)
        'ok)
       (else
        (let ((wait-tm (if (##flonum? tm)
                         (if (##fl< (##current-time-point) tm) tm #f)
                         tm)))
          (if (##not wait-tm)
            (begin
              (macro-mutex-unlock! mx)
              'timeout)
            (begin
              (set! ch.writers-waiting (##fx+ ch.writers-waiting 1))
              (##vector-set! state 0 #t)
              (##mutex-signal-and-condvar-wait! mx ch.wcv wait-tm))))))))

  (def (%ch-put-timeout-cleanup! (ch :- Channel) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (set! ch.writers-waiting (##fx- ch.writers-waiting 1)))
      (macro-mutex-unlock! mx)
      (void)))

  (def (%ch-put-abort! (ch :- Channel) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (set! ch.writers-waiting (##fx- ch.writers-waiting 1))
        (when (and (##fx> ch.writers-waiting 0)
                   (or ch.eof (##not ch.limit)
                       (##fx< ch.count (:- ch.limit :fixnum))))
          (##condvar-signal-no-reschedule! ch.wcv #f)))
      (macro-mutex-unlock! mx)
      (void)))

  (def (channel-put (ch : Channel) val (timeo #f))
    (let ((fast (%ch-put-fast! ch val)))
      (cond
       ((##eq? fast 'ok) #t)
       ((##eq? fast 'closed)
        (raise-io-closed channel-put "channel is closed" ch))
       (else
        (let ((tm (if timeo (timeout->abs-timeout timeo #t) #t))
              (state (vector #f))
              (done? #f))
          (unwind-protect
            (let loop ((woke? #f))
              (let ((res (%ch-put-wait-step! ch val tm woke? state)))
                (cond
                 ((##eq? res 'ok)
                  (set! done? #t)
                  #t)
                 ((##eq? res 'closed)
                  (set! done? #t)
                  (raise-io-closed channel-put "channel is closed" ch))
                 ((##eq? res 'timeout)
                  (set! done? #t)
                  #f)
                 ((##eq? res #t)
                  (loop #t))
                 (else
                  (%ch-put-timeout-cleanup! ch state)
                  (set! done? #t)
                  #f))))
            (unless done?
              (%ch-put-abort! ch state))))))))

  (def (channel-try-put (ch : Channel) val)
    (let ((res (%ch-put-fast! ch val)))
      (cond
       ((##eq? res 'ok) #t)
       ((##eq? res 'closed)
        (raise-io-closed channel-try-put "channel is closed" ch))
       (else #f))))

  (def (%ch-sync-fast! (ch :- Channel) vals)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (if ch.eof
        (begin
          (macro-mutex-unlock! mx)
          'closed)
        (begin
          (unless (##null? vals)
            (let lp ((xs vals))
              (when (##pair? xs)
                (%ch-push! ch (##car xs))
                (lp (##cdr xs))))
            (when (##fx> ch.readers-waiting 0)
              (##condvar-signal-no-reschedule! ch.rcv #t)))
          (macro-mutex-unlock! mx)
          'ok))))

  (def (channel-sync (ch : Channel) . vals)
    (when (##eq? (%ch-sync-fast! ch vals) 'closed)
      (raise-io-closed channel-sync "channel is closed" ch)))

  ;; Non-blocking anonymous-mutex fast path for channel-get / channel-peek.
  (def (%ch-front-fast! (ch :- Channel) dequeue?)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (if (##fx= ch.count 0)
        (let ((eof ch.eof))
          (macro-mutex-unlock! mx)
          (if eof #!eof %ch-empty-sentinel))
        (let ((next (if dequeue? (%ch-pop! ch) (%ch-peek ch))))
          (when (and dequeue? ch.limit (##fx> ch.writers-waiting 0)
                     (##fx< ch.count (:- ch.limit :fixnum)))
            (##condvar-signal-no-reschedule! ch.wcv #f))
          (macro-mutex-unlock! mx)
          next))))

  (def (%ch-front-wait-step! (ch :- Channel) tm dequeue? woke? state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when woke?
        (set! ch.readers-waiting (##fx- ch.readers-waiting 1))
        (##vector-set! state 0 #f))
      (if (##fx= ch.count 0)
        (if ch.eof
          (begin
            (macro-mutex-unlock! mx)
            #!eof)
          (let ((wait-tm (if (##flonum? tm)
                           (if (##fl< (##current-time-point) tm) tm #f)
                           tm)))
            (if (##not wait-tm)
              (begin
                (macro-mutex-unlock! mx)
                %ch-timedout-sentinel)
              (begin
                (set! ch.readers-waiting (##fx+ ch.readers-waiting 1))
                (##vector-set! state 0 #t)
                (if (##mutex-signal-and-condvar-wait! mx ch.rcv wait-tm)
                  %ch-woke-sentinel
                  %ch-empty-sentinel)))))
        (let ((next (if dequeue? (%ch-pop! ch) (%ch-peek ch))))
          (when (and dequeue? ch.limit (##fx> ch.writers-waiting 0)
                     (##fx< ch.count (:- ch.limit :fixnum)))
            (##condvar-signal-no-reschedule! ch.wcv #f))
          (macro-mutex-unlock! mx)
          next))))

  (def (%ch-front-timeout-cleanup! (ch :- Channel) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (set! ch.readers-waiting (##fx- ch.readers-waiting 1)))
      (macro-mutex-unlock! mx)
      (void)))

  (def (%ch-front-abort! (ch :- Channel) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (set! ch.readers-waiting (##fx- ch.readers-waiting 1))
        (when (and (##fx> ch.readers-waiting 0)
                   (or ch.eof (##fx> ch.count 0)))
          (##condvar-signal-no-reschedule! ch.rcv #f)))
      (macro-mutex-unlock! mx)
      (void)))

  (defrule (__channel-front chan timeo default dequeue?)
    (using (ch chan :- Channel)
      (let ((fast (%ch-front-fast! ch dequeue?)))
        (if (##not (##eq? fast %ch-empty-sentinel))
          fast
          (let ((tm (if timeo (timeout->abs-timeout timeo #t) #t))
                (state (vector #f))
                (done? #f))
            (unwind-protect
              (let loop ((woke? #f))
                (let ((res (%ch-front-wait-step! ch tm dequeue? woke? state)))
                  (cond
                   ((##eq? res %ch-woke-sentinel)
                    (loop #t))
                   ((##eq? res %ch-timedout-sentinel)
                    (set! done? #t)
                    default)
                   ((##eq? res %ch-empty-sentinel)
                    (%ch-front-timeout-cleanup! ch state)
                    (set! done? #t)
                    default)
                   (else
                    (set! done? #t)
                    res))))
              (unless done?
                (%ch-front-abort! ch state))))))))

  (def (channel-peek (ch : Channel) (timeo #f) (default #f))
    (__channel-front ch timeo default #f))

  (def (channel-get (ch : Channel) (timeo #f) (default #f))
    (__channel-front ch timeo default #t))

  (def (channel-try-get (ch : Channel) (default #f))
    (let ((res (%ch-front-fast! ch #t)))
      (if (##eq? res %ch-empty-sentinel) default res)))

  (def (channel-close (ch : Channel))
    => :void
    (let ()
      (declare (not interrupts-enabled))
      (let ((mx ch.mx))
        (macro-mutex-lock-anonymously! mx #f)
        (unless ch.eof
          (set! ch.eof #t)
          (##condvar-signal-no-reschedule! ch.rcv #t)
          (##condvar-signal-no-reschedule! ch.wcv #t))
        (macro-mutex-unlock! mx)))
    (void))

  (def (channel-closed? (ch : Channel))
    (let ()
      (declare (not interrupts-enabled))
      (let ((mx ch.mx))
        (macro-mutex-lock-anonymously! mx #f)
        (let ((eof ch.eof))
          (macro-mutex-unlock! mx)
          eof)))))

 (else
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
            (condition-variable-signal! ch.rcv))
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
                (condition-variable-signal! ch.wcv))
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
      eof))))

(implement Iterator Channel
  (next!
   (lambda (self)
     (channel-get self #f #!eof))))
