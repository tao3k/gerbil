;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Lock-Free Vyukov Bounded MPMC & Unbuffered Rendezvous FiberChannel
;;;
;;; Buffered channels (cap > 0) use a 128B cache-line-padded Vyukov lock-free
;;; bounded MPMC ring with zero-lock fast paths on send/recv and Dekker SeqCst
;;; rx-waiters / tx-waiters counters for zero lost wakeups. Unbuffered channels
;;; (cap == 0) use direct rendezvous handoff under meta[50].
;;;
;;; pack = #[cap mask buf seq meta]
;;;   meta[0]  = head       (128B isolated consumer cursor)
;;;   meta[16] = tail       (128B isolated producer cursor)
;;;   meta[32] = rx-waiters (128B isolated parked receiver count)
;;;   meta[48] = tx-waiters (128B isolated parked sender count)
;;;   meta[49] = closed     (0=open, 1=closed)
;;;   meta[50] = lock       (TTAS spinlock for park/wake/close/unbuffered slow paths)

(import :std/error
        :std/control
        :gerbil/runtime/util
        ./runq
        ./state)
(export #t)

(def %CH-EMPTY (cons 'ch-empty '()))
(def %CH-RETRY (cons 'ch-retry '()))

;; Lock-free Vyukov bounded MPMC push (bounded 64-try CAS loop).
;; Returns fixnum: 0 = pushed, 1 = full, 2 = retry budget hit.
(def (%vyukov-try-push! (pack :- :vector) val)
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
      ___WORD ___pos = ___INT(___atomic_word_load(___tail_p, 0));
      ___WORD ___idx = (___mask >= 0) ? (___pos & ___mask) : (___pos % ___cap);
      ___WORD ___s   = ___INT(___atomic_word_load(___seq_p + ___idx, 1));
      ___WORD ___exp = ___pos << 1;
      ___WORD ___dif = ___s - ___exp;
      if (___dif == 0) {
        if (___atomic_word_cas(___tail_p, ___FIX(___pos), ___FIX(___pos + 1), 0) == ___FIX(___pos)) {
          ___WORD *___slot = ___buf_p + ___idx;
          ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___ARG2);
          ___WORD_STORE_RELAXED(___slot, ___ARG2);
          ___atomic_word_store(___seq_p + ___idx, ___FIX(___exp + 1), 4);
          ___res = 0;
          break;
        }
      } else if (___dif < 0) {
        ___res = 1;
        break;
      }
    }
    ___RESULT = ___FIX(___res);"
   pack val))

;; Lock-free Vyukov bounded MPMC pop (bounded 64-try CAS loop).
;; Returns item directly, or empty-tag if empty, or retry-tag if contention budget hit.
(def (%vyukov-try-pop! (pack :- :vector) empty-tag retry-tag)
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
        ___res = ___ARG2;
        break;
      }
    }
    ___RESULT = ___res;"
   pack empty-tag retry-tag))

(defstruct FiberChannel
  ((cap          :- :fixnum)
   (pack         :- :vector)     ;; #[cap mask buf seq meta]
   (meta         :- :vector)     ;; 64-word 128B-padded control vector
   (recv-waiters :- %WaitQ)
   (send-waiters :- %WaitQ)
   sched)
  final: #t)

(def (make-fiber-channel (capacity : :fixnum := 16))
  => FiberChannel
  (when (fx< capacity 0)
    (raise-bad-argument make-fiber-channel "non-negative fixnum capacity" capacity))
  (let* ((meta (make-vector 64 0))
         (mask (if (and (fx> capacity 0) (fx= (fxand capacity (fx- capacity 1)) 0))
                 (fx- capacity 1)
                 -1))
         (buf (if (fx> capacity 0) (make-vector capacity #f) '#()))
         (seq (if (fx> capacity 0)
                (let ((v (make-vector capacity 0)))
                  (let init ((i 0))
                    (when (fx< i capacity)
                      (##vector-set! v i (fxarithmetic-shift-left i 1))
                      (init (fx+ i 1))))
                  v)
                '#()))
         (pack (vector capacity mask buf seq meta)))
    (FiberChannel capacity pack meta (%WaitQ '() '()) (%WaitQ '() '()) #f)))

(defalias fiber-channel? FiberChannel?)

(def (fiber-channel-closed? (ch : FiberChannel))
  => :boolean
  (fx> (:- (__atomic-fx-load ch.meta 49 1) :fixnum) 0))

(def (%vyukov-pop-loop (pack :- :vector))
  (let loop ()
    (let ((item (%vyukov-try-pop! pack %CH-EMPTY %CH-RETRY)))
      (if (eq? item %CH-RETRY)
        (begin (__cpu-relax!) (loop))
        item))))

(def (%vyukov-push-loop (pack :- :vector) val)
  (let loop ()
    (let ((st (:- (%vyukov-try-push! pack val) :fixnum)))
      (if (fx= st 2)
        (begin (__cpu-relax!) (loop))
        st))))

(def (%ch-wake-one-sender! (ch :- FiberChannel))
  (let ((meta ch.meta)
        (swq ch.send-waiters)
        (sk #f)
        (target #f)
        (pushed? #f))
    (%vspin-lock! meta 50)
    (when (and (fx= (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
               (not (%wq-empty? swq)))
      (let* ((sw (##car (&%WaitQ-head swq)))
             (sval (##cdr sw))
             (st (%vyukov-push-loop ch.pack sval)))
        (when (fx= st 0)
          (%wq-pop! swq)
          (__atomic-fx-fetch-sub! meta 48 1 4)
          (set! sk (##car sw))
          (set! target ch.sched)
          (set! pushed? #t))))
    (%vspin-unlock! meta 50)
    (when pushed?
      (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
        (%ch-wake-one-receiver! ch))
      (%sched-wake! target (cons sk #t)))))

(def (%ch-wake-one-receiver! (ch :- FiberChannel))
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (rk #f)
        (item #f)
        (target #f)
        (woke? #f))
    (%vspin-lock! meta 50)
    (when (not (%wq-empty? rwq))
      (let ((got (%vyukov-pop-loop ch.pack)))
        (unless (eq? got %CH-EMPTY)
          (set! rk (%wq-pop! rwq))
          (__atomic-fx-fetch-sub! meta 32 1 4)
          (set! item got)
          (set! target ch.sched)
          (set! woke? #t))))
    (%vspin-unlock! meta 50)
    (when woke?
      (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
        (%ch-wake-one-sender! ch))
      (%sched-wake! target (cons rk item)))))

(def (fiber-channel-close! (ch : FiberChannel))
  => :void
  (let ((meta ch.meta)
        (rks '())
        (sks '())
        (sched #f))
    (%vspin-lock! meta 50)
    (when (fx= (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
      (__atomic-fx-store! meta 49 1 4)
      (set! sched ch.sched)
      (let loop ()
        (unless (%wq-empty? ch.recv-waiters)
          (set! rks (cons (%wq-pop! ch.recv-waiters) rks))
          (loop)))
      (let loop ()
        (unless (%wq-empty? ch.send-waiters)
          (set! sks (cons (##car (%wq-pop! ch.send-waiters)) sks))
          (loop)))
      (__atomic-fx-store! meta 32 0 4)
      (__atomic-fx-store! meta 48 0 4))
    (%vspin-unlock! meta 50)
    (when sched
      (for-each (lambda (rk) (%sched-wake! sched (cons rk #!eof))) (reverse rks))
      (for-each (lambda (sk) (%sched-wake! sched (cons sk 'closed))) (reverse sks)))
    (void)))

;; Direct FIFO-safe handoff to a parked receiver only when buffered ring is empty.
(def (%ch-try-direct-handoff! (ch :- FiberChannel) val)
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (rk #f)
        (target #f)
        (closed? #f))
    (%vspin-lock! meta 50)
    (cond
     ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
      (set! closed? #t))
     ((and (not (%wq-empty? rwq))
           (fx= (:- (__atomic-fx-load meta 0 1) :fixnum)
                (:- (__atomic-fx-load meta 16 1) :fixnum)))
      (set! rk (%wq-pop! rwq))
      (__atomic-fx-fetch-sub! meta 32 1 4)
      (set! target ch.sched)))
    (%vspin-unlock! meta 50)
    (cond
     (closed? 'closed)
     (rk (%sched-wake! target (cons rk val)) #t)
     (else #f))))

(def (fiber-try-send! (ch : FiberChannel) val)
  => :boolean
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let loop ()
        (when (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (raise-io-closed fiber-try-send! "fiber channel is closed" ch))
        (let ((ho (if (fx> (:- (__atomic-fx-load meta 32 0) :fixnum) 0)
                    (%ch-try-direct-handoff! ch val)
                    #f)))
          (cond
           ((eq? ho 'closed)
            (raise-io-closed fiber-try-send! "fiber channel is closed" ch))
           (ho #t)
           (else
            (let ((st (:- (%vyukov-try-push! ch.pack val) :fixnum)))
              (cond
               ((fx= st 0)
                (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
                  (%ch-wake-one-receiver! ch))
                #t)
               ((fx= st 1) #f)
               (else (__cpu-relax!) (loop))))))))
      ;; Unbuffered rendezvous (cap == 0)
      (let ((rwq ch.recv-waiters))
        (%vspin-lock! meta 50)
        (cond
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          (raise-io-closed fiber-try-send! "fiber channel is closed" ch))
         ((not (%wq-empty? rwq))
          (let ((rk (%wq-pop! rwq))
                (target ch.sched))
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! target (cons rk val))
            #t))
         (else
          (%vspin-unlock! meta 50)
          #f))))))

(def (fiber-send! (ch : FiberChannel) val)
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let loop ()
        (when (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (raise-io-closed fiber-send! "fiber channel is closed" ch))
        (let ((ho (if (fx> (:- (__atomic-fx-load meta 32 0) :fixnum) 0)
                    (%ch-try-direct-handoff! ch val)
                    #f)))
          (cond
           ((eq? ho 'closed)
            (raise-io-closed fiber-send! "fiber channel is closed" ch))
           (ho #t)
           (else
            (let ((st (:- (%vyukov-try-push! ch.pack val) :fixnum)))
              (cond
               ((fx= st 0)
                (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
                  (%ch-wake-one-receiver! ch))
                #t)
               ((fx= st 1)
                (if (in-fiber?)
                  (let ((res (perform %eff-park-send ch val)))
                    (when (eq? res 'closed)
                      (raise-io-closed fiber-send! "fiber channel is closed" ch))
                    #t)
                  (begin
                    (thread-yield!)
                    (loop))))
               (else (__cpu-relax!) (loop))))))))
      ;; Unbuffered rendezvous (cap == 0)
      (let ((rwq ch.recv-waiters))
        (%vspin-lock! meta 50)
        (cond
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          (raise-io-closed fiber-send! "fiber channel is closed" ch))
         ((not (%wq-empty? rwq))
          (let ((rk (%wq-pop! rwq))
                (target ch.sched))
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! target (cons rk val))
            #t))
         ((in-fiber?)
          (%vspin-unlock! meta 50)
          (let ((res (perform %eff-park-send ch val)))
            (when (eq? res 'closed)
              (raise-io-closed fiber-send! "fiber channel is closed" ch))
            #t))
         (else
          (%vspin-unlock! meta 50)
          (thread-yield!)
          (fiber-send! ch val)))))))

(def (%park-send-waiter! sched k (ch :- FiberChannel) val)
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (swq ch.send-waiters))
    (%vspin-lock! meta 50)
    (unless ch.sched (set! ch.sched sched))
    (cond
     ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
      (%vspin-unlock! meta 50)
      (%sched-wake! sched (cons k 'closed)))
     ((and (not (%wq-empty? rwq))
           (or (fx= ch.cap 0)
               (fx= (:- (__atomic-fx-load meta 0 1) :fixnum)
                    (:- (__atomic-fx-load meta 16 1) :fixnum))))
      (let ((rk (%wq-pop! rwq)))
        (__atomic-fx-fetch-sub! meta 32 1 4)
        (%vspin-unlock! meta 50)
        (%sched-wake! sched (cons rk val))
        (%sched-wake! sched (cons k #t))))
     ((fx> ch.cap 0)
      ;; Publish tx-waiters += 1 with SeqCst BEFORE final ring re-check (Dekker!)
      (__atomic-fx-fetch-add! meta 48 1 4)
      (let ((st (%vyukov-push-loop ch.pack val)))
        (if (fx= st 0)
          (begin
            (__atomic-fx-fetch-sub! meta 48 1 4)
            (%vspin-unlock! meta 50)
            (when (fx> (:- (__atomic-fx-load meta 32 4) :fixnum) 0)
              (%ch-wake-one-receiver! ch))
            (%sched-wake! sched (cons k #t)))
          (begin
            (%wq-push! swq (cons k val))
            (%vspin-unlock! meta 50)))))
     (else
      (__atomic-fx-fetch-add! meta 48 1 4)
      (%wq-push! swq (cons k val))
      (%vspin-unlock! meta 50)))))

(def (fiber-try-recv! (ch : FiberChannel) (default : :t := #f))
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let ((item (%vyukov-pop-loop ch.pack)))
        (if (not (eq? item %CH-EMPTY))
          (begin
            (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
              (%ch-wake-one-sender! ch))
            item)
          (if (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
            (let ((item2 (%vyukov-pop-loop ch.pack)))
              (if (eq? item2 %CH-EMPTY) #!eof item2))
            default)))
      ;; Unbuffered rendezvous (cap == 0)
      (let ((swq ch.send-waiters))
        (%vspin-lock! meta 50)
        (cond
         ((not (%wq-empty? swq))
          (let* ((sw (%wq-pop! swq))
                 (sk (##car sw))
                 (sval (##cdr sw))
                 (target ch.sched))
            (__atomic-fx-fetch-sub! meta 48 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! target (cons sk #t))
            sval))
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          #!eof)
         (else
          (%vspin-unlock! meta 50)
          default))))))

(def (fiber-recv! (ch : FiberChannel))
  (let ((meta ch.meta))
    (if (fx> ch.cap 0)
      (let ((item (%vyukov-pop-loop ch.pack)))
        (if (not (eq? item %CH-EMPTY))
          (begin
            (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
              (%ch-wake-one-sender! ch))
            item)
          (if (fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
            (let ((item2 (%vyukov-pop-loop ch.pack)))
              (if (eq? item2 %CH-EMPTY) #!eof item2))
            (begin
              (%current-wctx)
              (perform %eff-park-recv ch)))))
      ;; Unbuffered rendezvous (cap == 0)
      (let* ((ctx (%current-wctx))
             (sched (&%WorkerCtx-sched ctx))
             (swq ch.send-waiters))
        (%vspin-lock! meta 50)
        (unless ch.sched (set! ch.sched sched))
        (cond
         ((not (%wq-empty? swq))
          (let* ((sw (%wq-pop! swq))
                 (sk (##car sw))
                 (sval (##cdr sw)))
            (__atomic-fx-fetch-sub! meta 48 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! sched (cons sk #t))
            sval))
         ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
          (%vspin-unlock! meta 50)
          #!eof)
         (else
          (%vspin-unlock! meta 50)
          (perform %eff-park-recv ch)))))))

(def (%park-recv-waiter! sched k (ch :- FiberChannel))
  (let ((meta ch.meta)
        (rwq ch.recv-waiters)
        (swq ch.send-waiters))
    (%vspin-lock! meta 50)
    (unless ch.sched (set! ch.sched sched))
    (if (fx> ch.cap 0)
      (begin
        ;; Publish rx-waiters += 1 with SeqCst BEFORE final ring re-check (Dekker!)
        (__atomic-fx-fetch-add! meta 32 1 4)
        (let ((item (%vyukov-pop-loop ch.pack)))
          (cond
           ((not (eq? item %CH-EMPTY))
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (when (fx> (:- (__atomic-fx-load meta 48 4) :fixnum) 0)
              (%ch-wake-one-sender! ch))
            (%sched-wake! sched (cons k item)))
           ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
            (__atomic-fx-fetch-sub! meta 32 1 4)
            (%vspin-unlock! meta 50)
            (%sched-wake! sched (cons k #!eof)))
           (else
            (%wq-push! rwq k)
            (%vspin-unlock! meta 50)))))
      ;; Unbuffered rendezvous (cap == 0)
      (cond
       ((not (%wq-empty? swq))
        (let* ((sw (%wq-pop! swq))
               (sk (##car sw))
               (sval (##cdr sw)))
          (__atomic-fx-fetch-sub! meta 48 1 4)
          (%vspin-unlock! meta 50)
          (%sched-wake! sched (cons sk #t))
          (%sched-wake! sched (cons k sval))))
       ((fx> (:- (__atomic-fx-load meta 49 1) :fixnum) 0)
        (%vspin-unlock! meta 50)
        (%sched-wake! sched (cons k #!eof)))
       (else
        (__atomic-fx-fetch-add! meta 32 1 4)
        (%wq-push! rwq k)
        (%vspin-unlock! meta 50))))))
