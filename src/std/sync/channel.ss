;;; -*- Gerbil -*-
;;; © vyzo
;;; buffered channels (128B-padded lock-free Vyukov MPMC fast path + growable ring)
(import :std/error
        :std/interface
        :std/time/timeout
        :std/iter/interface
        :gerbil/runtime/util)
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
                    (eof             :- :boolean)
                    lf-pack)
  constructor: :init!
  final: #t)

(def (%make-vyukov-pack (cap :- :fixnum))
  ;; 64-word (512B) 128B-isolated control vector:
  ;;   meta[0]  = head          (consumer cursor, cache line 0)
  ;;   meta[16] = tail_word     ((tail << 2) | flags: bit 0=CLOSED, bit 1=PROMOTED, line 1)
  ;;   meta[32] = rx-waiters    (Dekker SeqCst blocked/parking readers, cache line 2)
  ;;   meta[48] = tx-waiters    (Dekker SeqCst blocked/parking writers, cache line 3)
  ;;   meta[56] = promoted-flag (read-mostly 0/1 so fast-path readers avoid line 1)
  (let* ((meta (make-vector 64 0))
         (mask (if (fx= (fxand cap (fx- cap 1)) 0) (fx- cap 1) -1))
         (lbuf (make-vector cap #f))
         (seq (make-vector cap 0)))
    (let init ((i 0))
      (when (fx< i cap)
        (##vector-set! seq i (fxarithmetic-shift-left i 1))
        (init (fx+ i 1))))
    (vector cap mask lbuf seq meta)))

(defmethod {:init! Channel}
  (lambda (self (limit :? :fixnum := #f))
    (let* ((use-lf?
            (cond-expand
             (gerbil-smp (and limit (fx>= limit 1) (fx<= limit 4096)))
             (else #f)))
           (init-cap (if (and (not use-lf?) limit (fx> limit 0))
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
      (set! self.eof #f)
      (set! self.lf-pack (if use-lf? (%make-vyukov-pack limit) #f)))))

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
(def %ch-retry-sentinel    '#(ch-retry))
(def %ch-promoted-sentinel '#(ch-promoted))

(cond-expand
 (gerbil-smp
  (extern namespace: #f
    macro-mutex-lock-anonymously!
    macro-mutex-unlock!
    ##mutex-signal-and-condvar-wait!
    ##condvar-signal-no-reschedule!)

  ;; Lock-free 128B-padded Vyukov bounded MPMC push (64-try CAS loop).
  ;; tail_word = (tail << 2) | flags (bit 0 = CLOSED, bit 1 = PROMOTED).
  ;; Returns fixnum: 0=pushed, 1=full, 2=retry, 3=closed, 4=promoted.
  (def (%ch-vyukov-try-push! (pack :- :vector) val)
    (declare (not interrupts-enabled))
    (##c-code
     "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
      ___WORD ___cap  = ___INT(___p[0]);
      ___WORD ___mask = ___INT(___p[1]);
      ___SCMOBJ ___buf = ___p[2];
      ___WORD *___buf_p = ___BODY_AS(___buf, ___tVECTOR);
      ___VOLATILE ___WORD *___seq_p  = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___p[3], ___tVECTOR));
      ___WORD *___meta = ___BODY_AS(___p[4], ___tVECTOR);
      ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___WORD ___res = 2;
      int ___tries;
      for (___tries = 0; ___tries < 64; ___tries++) {
        ___WORD ___tw = ___INT(___atomic_word_load(___tail_p, 0));
        if ((___tw & 3) != 0) {
          ___res = ((___tw & 2) != 0) ? 4 : 3;
          break;
        }
        ___WORD ___pos = ___tw >> 2;
        ___WORD ___idx = (___mask >= 0) ? (___pos & ___mask) : (___pos % ___cap);
        ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
        ___WORD ___exp = ___pos << 1;
        ___WORD ___dif = ___s - ___exp;
        if (___dif == 0) {
          if (___atomic_word_cas(___tail_p, ___FIX(___tw), ___FIX(___tw + 4), 0) == ___FIX(___tw)) {
            ___WORD *___slot = ___buf_p + ___idx;
            ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___ARG2);
            ___WORD_STORE_RELAXED(___slot, ___ARG2);
            ___atomic_word_store(___seq_p + ___idx, ___FIX(___exp + 1), 4);
            ___res = 0;
            break;
          }
        } else if (___dif < 0) {
          ___WORD ___tw2 = ___INT(___atomic_word_load(___tail_p, 1));
          if ((___tw2 & 3) != 0) {
            ___res = ((___tw2 & 2) != 0) ? 4 : 3;
          } else {
            ___res = 1;
          }
          break;
        }
      }
      ___RESULT = ___FIX(___res);"
     pack val))

  ;; Lock-free 128B-padded Vyukov bounded MPMC pop (64-try CAS loop).
  ;; Fast-path reads only meta[56] (read-mostly S-state) and meta[0] (head),
  ;; never touching writer's meta[16] unless the ring appears empty.
  ;; Returns item directly, or empty-tag / retry-tag / #!eof / promoted-tag.
  (def (%ch-vyukov-try-pop! (pack :- :vector) empty-tag retry-tag eof-tag promoted-tag)
    (declare (not interrupts-enabled))
    (##c-code
     "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
      ___WORD *___meta = ___BODY_AS(___p[4], ___tVECTOR);
      ___VOLATILE ___WORD *___prom_p = ___CAST(___VOLATILE ___WORD*, ___meta + 56);
      if (___INT(___atomic_word_load(___prom_p, 1)) != 0) {
        ___RESULT = ___ARG5;
      } else {
        ___WORD ___cap  = ___INT(___p[0]);
        ___WORD ___mask = ___INT(___p[1]);
        ___SCMOBJ ___buf = ___p[2];
        ___WORD *___buf_p = ___BODY_AS(___buf, ___tVECTOR);
        ___VOLATILE ___WORD *___seq_p  = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___p[3], ___tVECTOR));
        ___VOLATILE ___WORD *___head_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
        ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
        ___SCMOBJ ___res = ___ARG3;
        int ___tries;
        for (___tries = 0; ___tries < 64; ___tries++) {
          ___WORD ___pos = ___INT(___atomic_word_load(___head_p, 0));
          ___WORD ___idx = (___mask >= 0) ? (___pos & ___mask) : (___pos % ___cap);
          ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
          ___WORD ___exp = (___pos << 1) + 1;
          ___WORD ___dif = ___s - ___exp;
          if (___dif == 0) {
            if (___atomic_word_cas(___head_p, ___FIX(___pos), ___FIX(___pos + 1), 0) == ___FIX(___pos)) {
              ___WORD *___slot = ___buf_p + ___idx;
              ___SCMOBJ ___item = ___WORD_LOAD_RELAXED(___slot);
              ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___FAL);
              ___WORD_STORE_RELAXED(___slot, ___FAL);
              ___atomic_word_store(___seq_p + ___idx, ___FIX((___pos + ___cap) << 1), 4);
              ___res = ___item;
              break;
            }
          } else if (___dif < 0) {
            ___WORD ___tw = ___INT(___atomic_word_load(___tail_p, 1));
            if ((___tw & 2) != 0) {
              ___res = ___ARG5;
              break;
            } else if ((___tw & 1) != 0) {
              ___WORD ___tail = ___tw >> 2;
              if (___pos >= ___tail) {
                ___res = ___ARG4;
                break;
              }
              ___CPU_RELAX();
            } else {
              ___res = ___ARG2;
              break;
            }
          }
        }
        ___RESULT = ___res;
      }"
     pack empty-tag retry-tag eof-tag promoted-tag))

  ;; Promotion drain helper: pops next committed item strictly below final-tail
  ;; using head CAS so concurrent fast-path readers cannot duplicate elements.
  (def (%ch-vyukov-drain-one! (pack :- :vector) (final-tail :- :fixnum) empty-tag retry-tag)
    (declare (not interrupts-enabled))
    (##c-code
     "___WORD *___p = ___BODY_AS(___ARG1, ___tVECTOR);
      ___WORD ___cap  = ___INT(___p[0]);
      ___WORD ___mask = ___INT(___p[1]);
      ___SCMOBJ ___buf = ___p[2];
      ___WORD *___buf_p = ___BODY_AS(___buf, ___tVECTOR);
      ___VOLATILE ___WORD *___seq_p  = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___p[3], ___tVECTOR));
      ___WORD *___meta = ___BODY_AS(___p[4], ___tVECTOR);
      ___VOLATILE ___WORD *___head_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
      ___WORD ___ftail = ___INT(___ARG2);
      ___SCMOBJ ___res = ___ARG4;
      int ___tries;
      for (___tries = 0; ___tries < 64; ___tries++) {
        ___WORD ___pos = ___INT(___atomic_word_load(___head_p, 0));
        if (___pos >= ___ftail) {
          ___res = ___ARG3;
          break;
        }
        ___WORD ___idx = (___mask >= 0) ? (___pos & ___mask) : (___pos % ___cap);
        ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
        ___WORD ___exp = (___pos << 1) + 1;
        ___WORD ___dif = ___s - ___exp;
        if (___dif == 0) {
          if (___atomic_word_cas(___head_p, ___FIX(___pos), ___FIX(___pos + 1), 0) == ___FIX(___pos)) {
            ___WORD *___slot = ___buf_p + ___idx;
            ___SCMOBJ ___item = ___WORD_LOAD_RELAXED(___slot);
            ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___FAL);
            ___WORD_STORE_RELAXED(___slot, ___FAL);
            ___atomic_word_store(___seq_p + ___idx, ___FIX((___pos + ___cap) << 1), 4);
            ___res = ___item;
            break;
          }
        } else if (___dif < 0) {
          ___CPU_RELAX();
        }
      }
      ___RESULT = ___res;"
     pack final-tail empty-tag retry-tag))

  (def (%ch-signal-rcv! (ch :- Channel))
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (##condvar-signal-no-reschedule! ch.rcv #f)
      (macro-mutex-unlock! mx)
      (void)))

  (def (%ch-signal-wcv! (ch :- Channel))
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (##condvar-signal-no-reschedule! ch.wcv #f)
      (macro-mutex-unlock! mx)
      (void)))

  ;; Permanently promote a Vyukov bounded channel to the locked growable ring
  ;; (invoked only if channel-sync or channel-peek is used). Caller holds ch.mx.
  (def (%ch-lf-promote-locked! (ch :- Channel))
    (declare (not interrupts-enabled))
    (let ((pack ch.lf-pack))
      (when pack
        (let ((meta (##vector-ref pack 4)))
          (when (##fx= (:- (__atomic-fx-load meta 56 1) :fixnum) 0)
            (__atomic-fx-store! meta 56 1 4)
            (let* ((old-tw (:- (__atomic-fx-fetch-ior! meta 16 2 4) :fixnum))
                   (final-tail (##fxarithmetic-shift-right old-tw 2)))
              (let drain ()
                (let ((head (:- (__atomic-fx-load meta 0 1) :fixnum)))
                  (when (##fx< head final-tail)
                    (let ((item (%ch-vyukov-drain-one! pack final-tail %ch-empty-sentinel %ch-retry-sentinel)))
                      (cond
                       ((##eq? item %ch-empty-sentinel) (void))
                       ((##eq? item %ch-retry-sentinel) (__cpu-relax!) (drain))
                       (else
                        (%ch-push! ch item)
                        (drain)))))))
              (when (##not (##fx= (##fxand old-tw 1) 0))
                (set! ch.eof #t))
              (##condvar-signal-no-reschedule! ch.rcv #t)
              (##condvar-signal-no-reschedule! ch.wcv #t)))))))

  ;; Dekker SeqCst blocking step for lock-free Vyukov channel-put.
  (def (%ch-lf-put-wait-step! (ch :- Channel) (pack :- :vector) val tm woke? state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx)
          (meta (##vector-ref pack 4)))
      (macro-mutex-lock-anonymously! mx #f)
      (when woke?
        (__atomic-fx-fetch-sub! meta 48 1 4)
        (##vector-set! state 0 #f))
      ;; Fast check before incrementing tx-waiters
      (let ((st0 (:- (%ch-vyukov-try-push! pack val) :fixnum)))
        (cond
         ((##fx= st0 0)
          (when (##fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
            (##condvar-signal-no-reschedule! ch.rcv #f))
          (macro-mutex-unlock! mx)
          'ok)
         ((##fx= st0 3)
          (macro-mutex-unlock! mx)
          'closed)
         ((##fx= st0 4)
          (macro-mutex-unlock! mx)
          'promoted)
         ((##fx= st0 2)
          (macro-mutex-unlock! mx)
          'retry)
         (else
          (let ((wait-tm (if (##flonum? tm)
                           (if (##fl< (##current-time-point) tm) tm #f)
                           tm)))
            (if (##not wait-tm)
              (begin
                (macro-mutex-unlock! mx)
                'timeout)
              (begin
                ;; Dekker SeqCst: publish tx-waiters += 1 BEFORE final ring re-check
                (__atomic-fx-fetch-add! meta 48 1 4)
                (##vector-set! state 0 #t)
                (__atomic-fence! 4)
                (let recheck ()
                  (let ((st1 (:- (%ch-vyukov-try-push! pack val) :fixnum)))
                    (cond
                     ((##fx= st1 0)
                      (__atomic-fx-fetch-sub! meta 48 1 4)
                      (##vector-set! state 0 #f)
                      (when (##fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
                        (##condvar-signal-no-reschedule! ch.rcv #f))
                      (macro-mutex-unlock! mx)
                      'ok)
                     ((##fx= st1 3)
                      (__atomic-fx-fetch-sub! meta 48 1 4)
                      (##vector-set! state 0 #f)
                      (macro-mutex-unlock! mx)
                      'closed)
                     ((##fx= st1 4)
                      (__atomic-fx-fetch-sub! meta 48 1 4)
                      (##vector-set! state 0 #f)
                      (macro-mutex-unlock! mx)
                      'promoted)
                     ((##fx= st1 2)
                      (__cpu-relax!)
                      (recheck))
                     (else
                      (##mutex-signal-and-condvar-wait! mx ch.wcv wait-tm)))))))))))))

  (def (%ch-lf-put-timeout-cleanup! (ch :- Channel) (pack :- :vector) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx)
          (meta (##vector-ref pack 4)))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (__atomic-fx-fetch-sub! meta 48 1 4))
      (macro-mutex-unlock! mx)
      (void)))

  (def (%ch-lf-put-abort! (ch :- Channel) (pack :- :vector) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx)
          (meta (##vector-ref pack 4)))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (__atomic-fx-fetch-sub! meta 48 1 4)
        ;; Forward any wakeup signal to a sibling writer so none is stranded on termination
        (when (##fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
          (##condvar-signal-no-reschedule! ch.wcv #f)))
      (macro-mutex-unlock! mx)
      (void)))

  ;; Dekker SeqCst blocking step for lock-free Vyukov channel-get.
  (def (%ch-lf-get-wait-step! (ch :- Channel) (pack :- :vector) tm woke? state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx)
          (meta (##vector-ref pack 4)))
      (macro-mutex-lock-anonymously! mx #f)
      (when woke?
        (__atomic-fx-fetch-sub! meta 32 1 4)
        (##vector-set! state 0 #f))
      (let ((r0 (%ch-vyukov-try-pop! pack %ch-empty-sentinel %ch-retry-sentinel #!eof %ch-promoted-sentinel)))
        (cond
         ((##eq? r0 %ch-promoted-sentinel)
          (macro-mutex-unlock! mx)
          %ch-promoted-sentinel)
         ((##eq? r0 %ch-retry-sentinel)
          (macro-mutex-unlock! mx)
          %ch-retry-sentinel)
         ((##not (##eq? r0 %ch-empty-sentinel))
          (when (and (##not (##eq? r0 #!eof))
                     (##fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0))
            (##condvar-signal-no-reschedule! ch.wcv #f))
          (macro-mutex-unlock! mx)
          r0)
         (else
          (let ((wait-tm (if (##flonum? tm)
                           (if (##fl< (##current-time-point) tm) tm #f)
                           tm)))
            (if (##not wait-tm)
              (begin
                (macro-mutex-unlock! mx)
                %ch-timedout-sentinel)
              (begin
                ;; Dekker SeqCst: publish rx-waiters += 1 BEFORE final ring re-check
                (__atomic-fx-fetch-add! meta 32 1 4)
                (##vector-set! state 0 #t)
                (__atomic-fence! 4)
                (let recheck ()
                  (let ((r1 (%ch-vyukov-try-pop! pack %ch-empty-sentinel %ch-retry-sentinel #!eof %ch-promoted-sentinel)))
                    (cond
                     ((##eq? r1 %ch-promoted-sentinel)
                      (__atomic-fx-fetch-sub! meta 32 1 4)
                      (##vector-set! state 0 #f)
                      (macro-mutex-unlock! mx)
                      %ch-promoted-sentinel)
                     ((##eq? r1 %ch-retry-sentinel)
                      (__cpu-relax!)
                      (recheck))
                     ((##not (##eq? r1 %ch-empty-sentinel))
                      (__atomic-fx-fetch-sub! meta 32 1 4)
                      (##vector-set! state 0 #f)
                      (when (and (##not (##eq? r1 #!eof))
                                 (##fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0))
                        (##condvar-signal-no-reschedule! ch.wcv #f))
                      (macro-mutex-unlock! mx)
                      r1)
                     (else
                      (if (##mutex-signal-and-condvar-wait! mx ch.rcv wait-tm)
                        %ch-woke-sentinel
                        %ch-empty-sentinel)))))))))))))

  (def (%ch-lf-get-timeout-cleanup! (ch :- Channel) (pack :- :vector) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx)
          (meta (##vector-ref pack 4)))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (__atomic-fx-fetch-sub! meta 32 1 4))
      (macro-mutex-unlock! mx)
      (void)))

  (def (%ch-lf-get-abort! (ch :- Channel) (pack :- :vector) state)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx)
          (meta (##vector-ref pack 4)))
      (macro-mutex-lock-anonymously! mx #f)
      (when (##vector-ref state 0)
        (##vector-set! state 0 #f)
        (__atomic-fx-fetch-sub! meta 32 1 4)
        ;; Forward any wakeup signal to a sibling reader so none is stranded on termination
        (when (##fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
          (##condvar-signal-no-reschedule! ch.rcv #f)))
      (macro-mutex-unlock! mx)
      (void)))

  ;; Non-blocking anonymous-mutex fast path for locked/unbounded channel-put.
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

  ;; Single blocking iteration for locked/unbounded channel-put.
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

  (def (%ch-put-locked! (ch :- Channel) val timeo)
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

  (def (channel-put (ch : Channel) val (timeo #f))
    (let ((pack ch.lf-pack))
      (if pack
        (let ((meta (##vector-ref pack 4)))
          (let fast-loop ()
            (let ((st (:- (%ch-vyukov-try-push! pack val) :fixnum)))
              (cond
               ((##fx= st 0)
                (when (##fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
                  (%ch-signal-rcv! ch))
                #t)
               ((##fx= st 2)
                (__cpu-relax!)
                (fast-loop))
               ((##fx= st 3)
                (raise-io-closed channel-put "channel is closed" ch))
               ((##fx= st 4)
                (%ch-put-locked! ch val timeo))
               (else
                ;; Ring full: Dekker SeqCst blocking wait on ch.wcv
                (let ((tm (if timeo (timeout->abs-timeout timeo #t) #t))
                      (state (vector #f))
                      (done? #f)
                      (promoted? #f))
                  (let ((res
                         (unwind-protect
                           (let loop ((woke? #f))
                             (let ((r (%ch-lf-put-wait-step! ch pack val tm woke? state)))
                               (cond
                                ((##eq? r 'ok)
                                 (set! done? #t)
                                 #t)
                                ((##eq? r 'closed)
                                 (set! done? #t)
                                 (raise-io-closed channel-put "channel is closed" ch))
                                ((##eq? r 'promoted)
                                 (set! done? #t)
                                 (set! promoted? #t)
                                 #f)
                                ((##eq? r 'timeout)
                                 (set! done? #t)
                                 #f)
                                ((##eq? r 'retry)
                                 (__cpu-relax!)
                                 (loop #f))
                                ((##eq? r #t)
                                 (loop #t))
                                (else
                                 (%ch-lf-put-timeout-cleanup! ch pack state)
                                 (set! done? #t)
                                 #f))))
                           (unless done?
                             (%ch-lf-put-abort! ch pack state)))))
                    (if promoted?
                      (%ch-put-locked! ch val timeo)
                      res))))))))
        (%ch-put-locked! ch val timeo))))

  (def (channel-try-put (ch : Channel) val)
    (let ((pack ch.lf-pack))
      (if pack
        (let ((meta (##vector-ref pack 4)))
          (let loop ()
            (let ((st (:- (%ch-vyukov-try-push! pack val) :fixnum)))
              (cond
               ((##fx= st 0)
                (when (##fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
                  (%ch-signal-rcv! ch))
                #t)
               ((##fx= st 2)
                (__cpu-relax!)
                (loop))
               ((##fx= st 3)
                (raise-io-closed channel-try-put "channel is closed" ch))
               ((##fx= st 4)
                (let ((res (%ch-put-fast! ch val)))
                  (cond
                   ((##eq? res 'ok) #t)
                   ((##eq? res 'closed)
                    (raise-io-closed channel-try-put "channel is closed" ch))
                   (else #f))))
               (else #f)))))
        (let ((res (%ch-put-fast! ch val)))
          (cond
           ((##eq? res 'ok) #t)
           ((##eq? res 'closed)
            (raise-io-closed channel-try-put "channel is closed" ch))
           (else #f))))))

  (def (%ch-sync-fast! (ch :- Channel) vals)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when ch.lf-pack
        (%ch-lf-promote-locked! ch))
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

  ;; Non-blocking anonymous-mutex fast path for locked/unbounded channel-get / channel-peek.
  (def (%ch-front-fast! (ch :- Channel) dequeue?)
    (declare (not interrupts-enabled))
    (let ((mx ch.mx))
      (macro-mutex-lock-anonymously! mx #f)
      (when (and (##not dequeue?) ch.lf-pack)
        (%ch-lf-promote-locked! ch))
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

  (def (%ch-front-locked! (ch :- Channel) timeo default dequeue?)
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
              (%ch-front-abort! ch state)))))))

  (def (channel-peek (ch : Channel) (timeo #f) (default #f))
    (%ch-front-locked! ch timeo default #f))

  (def (channel-get (ch : Channel) (timeo #f) (default #f))
    (let ((pack ch.lf-pack))
      (if pack
        (let ((meta (##vector-ref pack 4)))
          (let fast-loop ()
            (let ((r (%ch-vyukov-try-pop! pack %ch-empty-sentinel %ch-retry-sentinel #!eof %ch-promoted-sentinel)))
              (cond
               ((##eq? r %ch-promoted-sentinel)
                (%ch-front-locked! ch timeo default #t))
               ((##eq? r %ch-retry-sentinel)
                (__cpu-relax!)
                (fast-loop))
               ((##not (##eq? r %ch-empty-sentinel))
                (when (and (##not (##eq? r #!eof))
                           (##fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0))
                  (%ch-signal-wcv! ch))
                r)
               (else
                ;; Ring empty: Dekker SeqCst blocking wait on ch.rcv
                (let ((tm (if timeo (timeout->abs-timeout timeo #t) #t))
                      (state (vector #f))
                      (done? #f)
                      (promoted? #f))
                  (let ((res
                         (unwind-protect
                           (let loop ((woke? #f))
                             (let ((v (%ch-lf-get-wait-step! ch pack tm woke? state)))
                               (cond
                                ((##eq? v %ch-promoted-sentinel)
                                 (set! done? #t)
                                 (set! promoted? #t)
                                 #f)
                                ((##eq? v %ch-retry-sentinel)
                                 (__cpu-relax!)
                                 (loop #f))
                                ((##eq? v %ch-woke-sentinel)
                                 (loop #t))
                                ((##eq? v %ch-timedout-sentinel)
                                 (set! done? #t)
                                 default)
                                ((##eq? v %ch-empty-sentinel)
                                 (%ch-lf-get-timeout-cleanup! ch pack state)
                                 (set! done? #t)
                                 default)
                                (else
                                 (set! done? #t)
                                 v))))
                           (unless done?
                             (%ch-lf-get-abort! ch pack state)))))
                    (if promoted?
                      (%ch-front-locked! ch timeo default #t)
                      res))))))))
        (%ch-front-locked! ch timeo default #t))))

  (def (channel-try-get (ch : Channel) (default #f))
    (let ((pack ch.lf-pack))
      (if pack
        (let ((meta (##vector-ref pack 4)))
          (let loop ()
            (let ((r (%ch-vyukov-try-pop! pack %ch-empty-sentinel %ch-retry-sentinel #!eof %ch-promoted-sentinel)))
              (cond
               ((##eq? r %ch-promoted-sentinel)
                (let ((res (%ch-front-fast! ch #t)))
                  (if (##eq? res %ch-empty-sentinel) default res)))
               ((##eq? r %ch-retry-sentinel)
                (__cpu-relax!)
                (loop))
               ((##eq? r %ch-empty-sentinel) default)
               (else
                (when (and (##not (##eq? r #!eof))
                           (##fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0))
                  (%ch-signal-wcv! ch))
                r)))))
        (let ((res (%ch-front-fast! ch #t)))
          (if (##eq? res %ch-empty-sentinel) default res)))))

  (def (channel-close (ch : Channel))
    => :void
    (let ()
      (declare (not interrupts-enabled))
      (let ((mx ch.mx)
            (pack ch.lf-pack))
        (macro-mutex-lock-anonymously! mx #f)
        (when pack
          (__atomic-fx-fetch-ior! (##vector-ref pack 4) 16 1 4))
        (unless ch.eof
          (set! ch.eof #t)
          (##condvar-signal-no-reschedule! ch.rcv #t)
          (##condvar-signal-no-reschedule! ch.wcv #t))
        (macro-mutex-unlock! mx)))
    (void))

  (def (channel-closed? (ch : Channel))
    (let ((pack ch.lf-pack))
      (if pack
        (##not (##fx= (##fxand (:- (__atomic-fx-load (##vector-ref pack 4) 16 1) :fixnum) 1) 0))
        (let ()
          (declare (not interrupts-enabled))
          (let ((mx ch.mx))
            (macro-mutex-lock-anonymously! mx #f)
            (let ((eof ch.eof))
              (macro-mutex-unlock! mx)
              eof)))))))

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
