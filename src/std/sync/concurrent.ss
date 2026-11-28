;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Lock-Free SMP Concurrent Data Structures built directly on :std/sync/atomic (SRFI-230)
;;; Aligned with Gambit modern-c (gambit concurrent):
;;;   - LFStack (Inline-atomic Treiber lock-free stack, ABA-immune under GC)
;;;   - LFQueue (128B-padded Lock-Free Segmented Ring MPMC FIFO queue)
;;;   - WSDeque (128B-padded C-accelerated Chase-Lev lock-free work-stealing deque)
;;;   - ConcurrentTable (Wait-free-read / lock-free-write sharded hash table with
;;;                      per-processor 128B-padded striped counters)

(import :std/error
        :std/sync/atomic
        :gerbil/runtime/util)
(export
  LFStack
  make-lf-stack
  lf-stack?
  lf-stack-push!
  lf-stack-try-pop!
  lf-stack-empty?

  LFQueue
  make-lf-queue
  lf-queue?
  lf-queue-enqueue!
  lf-queue-try-dequeue!
  lf-queue-empty?

  WSDeque
  make-ws-deque
  ws-deque?
  ws-deque-push!
  ws-deque-try-pop!
  ws-deque-try-steal!
  ws-deque-size

  ConcurrentTable
  make-concurrent-table
  concurrent-table?
  concurrent-table-ref
  concurrent-table-set!
  concurrent-table-update!
  concurrent-table-delete!
  concurrent-table-size)

(def (%next-pow2 (n : :fixnum)) => :fixnum
  (let loop ((p 16))
    (if (fx>= p n) p (loop (fxarithmetic-shift-left p 1)))))

(def (%next-pow2-min1 (n : :fixnum)) => :fixnum
  (let loop ((p 1))
    (if (fx>= p n) p (loop (fxarithmetic-shift-left p 1)))))

;;;============================================================================
;;; 1. Lock-Free Treiber Stack (Inline Atomic Slot, Zero Wrapper Allocation)

(defstruct LFStack (head) final: #t)

(def (make-lf-stack)
  => LFStack
  (LFStack '()))

(defalias lf-stack? LFStack?)

(def (lf-stack-empty? (st : LFStack))
  => :boolean
  (##null? (__atomic-struct-ref st 1 1)))

(def (lf-stack-push! (st : LFStack) val)
  => :boolean
  (let loop ((backoff 0))
    (let* ((cur (__atomic-struct-ref st 1 1))
           (nxt (cons val cur))
           (prev (__atomic-struct-cas! st 1 cur nxt 3)))
      (if (##eq? prev cur)
        #t
        (begin
          (when (fx> backoff 0) (__cpu-relax!))
          (loop (fx+ backoff 1)))))))

;; Returns (values #t val) on success, or (values #f #f) when empty.
(def (lf-stack-try-pop! (st : LFStack))
  (let loop ((backoff 0))
    (let ((cur (__atomic-struct-ref st 1 1)))
      (if (##null? cur)
        (values #f #f)
        (let ((prev (__atomic-struct-cas! st 1 cur (##cdr cur) 3)))
          (if (##eq? prev cur)
            (values #t (##car cur))
            (begin
              (when (fx> backoff 0) (__cpu-relax!))
              (loop (fx+ backoff 1)))))))))

;;;============================================================================
;;; 2. Lock-Free 128B-Padded Segmented Ring MPMC FIFO Queue
;;;
;;; Linked chain of write-once 128-slot segments (seg = #[buf seq meta]):
;;;   buf      : 128-slot payload vector (cleared on pop for prompt GC)
;;;   seq      : 128-slot commit flags (0=unwritten, 1=committed via release store)
;;;   meta[0]  : head (consumer CAS cursor 0..128, cache line 0)
;;;   meta[16] : tail (producer FAA cursor 0..128+, cache line 1)
;;;   meta[32] : next (GC-barriered atomic link to next segment, cache line 2)
;;;
;;; LFQueue.cells (32 words, 128B isolated):
;;;   cells[0]  : head_seg (cache line 0)
;;;   cells[16] : tail_seg (cache line 1)
;;;
;;; Cuts per-item heap allocation by 256x vs Michael-Scott nodes while giving
;;; producers wait-free FAA slot reservation inside each 128-slot segment.

(def %LFQ-SEG-CAP 128)
(def %LFQ-EMPTY   '#(lfq-empty))
(def %LFQ-FULL    '#(lfq-full))
(def %LFQ-RETRY   '#(lfq-retry))

(def (%make-lfq-seg)
  (let ((meta (make-vector 48 0)))
    (##vector-set! meta 32 #f)
    (vector (make-vector %LFQ-SEG-CAP #f)
            (make-vector %LFQ-SEG-CAP 0)
            meta)))

(def (%lfq-seg-try-push! (seg :- :vector) val)
  (declare (not interrupts-enabled))
  (cond-expand
   (gerbil-smp
    (##c-code
     "___WORD *___sp = ___BODY_AS(___ARG1, ___tVECTOR);
      ___SCMOBJ ___buf = ___sp[0];
      ___WORD *___buf_p = ___BODY_AS(___buf, ___tVECTOR);
      ___VOLATILE ___WORD *___seq_p = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___sp[1], ___tVECTOR));
      ___WORD *___meta = ___BODY_AS(___sp[2], ___tVECTOR);
      ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___WORD ___cur = ___INT(___atomic_word_load(___tail_p, 0));
      if (___cur >= 128) {
        ___RESULT = ___FAL;
      } else {
        ___WORD ___t = ___INT(___atomic_uword_fetch_add(___tail_p, ___CAST(___WORD, ___FIX(1)), 2));
        if (___t < 128) {
          ___WORD *___slot = ___buf_p + ___t;
          ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___ARG2);
          ___WORD_STORE_RELAXED(___slot, ___ARG2);
          ___atomic_word_store(___seq_p + ___t, ___FIX(1), 2);
          ___RESULT = ___TRU;
        } else {
          ___RESULT = ___FAL;
        }
      }"
     seg val))
   (else
    (let* ((buf (##vector-ref seg 0))
           (seq (##vector-ref seg 1))
           (meta (##vector-ref seg 2))
           (t (:- (##vector-ref meta 16) :fixnum)))
      (if (fx>= t %LFQ-SEG-CAP)
        #f
        (begin
          (##vector-set! meta 16 (fx+ t 1))
          (##vector-set! buf t val)
          (##vector-set! seq t 1)
          #t))))))

(def (%lfq-seg-try-pop! (seg :- :vector) empty-tag full-tag retry-tag)
  (declare (not interrupts-enabled))
  (cond-expand
   (gerbil-smp
    (##c-code
     "___WORD *___sp = ___BODY_AS(___ARG1, ___tVECTOR);
      ___SCMOBJ ___buf = ___sp[0];
      ___WORD *___buf_p = ___BODY_AS(___buf, ___tVECTOR);
      ___VOLATILE ___WORD *___seq_p = ___CAST(___VOLATILE ___WORD*, ___BODY_AS(___sp[1], ___tVECTOR));
      ___WORD *___meta = ___BODY_AS(___sp[2], ___tVECTOR);
      ___VOLATILE ___WORD *___head_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
      ___VOLATILE ___WORD *___tail_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___SCMOBJ ___res = ___ARG4;
      int ___tries;
      for (___tries = 0; ___tries < 64; ___tries++) {
        ___WORD ___h = ___INT(___atomic_word_load(___head_p, 0));
        if (___h >= 128) {
          ___res = ___ARG3;
          break;
        }
        ___WORD ___s = ___INT(___atomic_word_load(___seq_p + ___h, 1));
        if (___s != 0) {
          if (___atomic_word_cas(___head_p, ___FIX(___h), ___FIX(___h + 1), 0) == ___FIX(___h)) {
            ___WORD *___slot = ___buf_p + ___h;
            ___SCMOBJ ___item = ___WORD_LOAD_RELAXED(___slot);
            ___GC_WRITE_BARRIER(___ps, ___buf, ___slot, ___FAL);
            ___WORD_STORE_RELAXED(___slot, ___FAL);
            ___res = ___item;
            break;
          }
        } else {
          ___WORD ___t = ___INT(___atomic_word_load(___tail_p, 1));
          if (___h >= ___t) {
            ___res = ___ARG2;
            break;
          }
          ___CPU_RELAX();
        }
      }
      ___RESULT = ___res;"
     seg empty-tag full-tag retry-tag))
   (else
    (let* ((buf (##vector-ref seg 0))
           (meta (##vector-ref seg 2))
           (h (:- (##vector-ref meta 0) :fixnum))
           (t (:- (##vector-ref meta 16) :fixnum)))
      (cond
       ((fx>= h %LFQ-SEG-CAP) full-tag)
       ((fx>= h t) empty-tag)
       (else
        (let ((val (##vector-ref buf h)))
          (##vector-set! buf h #f)
          (##vector-set! meta 0 (fx+ h 1))
          val)))))))

(defstruct LFQueue ((cells :- :vector)) final: #t)

(def (make-lf-queue)
  => LFQueue
  (let ((seg (%make-lfq-seg))
        (cells (make-vector 32 #f)))
    (##vector-set! cells 0 seg)
    (##vector-set! cells 16 seg)
    (LFQueue cells)))

(defalias lf-queue? LFQueue?)

(def (lf-queue-empty? (q : LFQueue))
  => :boolean
  (let loop ((seg (__atomic-slot-load q.cells 0 1)))
    (let* ((meta (##vector-ref seg 2))
           (h (:- (__atomic-fx-load meta 0 1) :fixnum)))
      (if (fx< h %LFQ-SEG-CAP)
        (fx>= h (:- (__atomic-fx-load meta 16 1) :fixnum))
        (let ((nxt (__atomic-slot-load meta 32 1)))
          (if nxt
            (loop nxt)
            #t))))))

(def (lf-queue-enqueue! (q : LFQueue) val)
  => :boolean
  (let ((cells q.cells))
    (let loop ()
      (let ((seg (__atomic-slot-load cells 16 1)))
        (if (%lfq-seg-try-push! seg val)
          #t
          (let* ((meta (##vector-ref seg 2))
                 (nxt (__atomic-slot-load meta 32 1)))
            (if nxt
              (begin
                (__atomic-slot-cas! cells 16 seg nxt 2)
                (loop))
              (let* ((fresh (%make-lfq-seg))
                     (prev (__atomic-slot-cas! meta 32 #f fresh 3)))
                (if (##not prev)
                  (__atomic-slot-cas! cells 16 seg fresh 2)
                  (__atomic-slot-cas! cells 16 seg prev 2))
                (loop)))))))))

;; Returns (values #t val) on success, or (values #f #f) when empty.
(def (lf-queue-try-dequeue! (q : LFQueue))
  (let ((cells q.cells))
    (let loop ((retries 0))
      (let* ((seg (__atomic-slot-load cells 0 1))
             (r (%lfq-seg-try-pop! seg %LFQ-EMPTY %LFQ-FULL %LFQ-RETRY)))
        (cond
         ((##eq? r %LFQ-EMPTY)
          (values #f #f))
         ((##eq? r %LFQ-FULL)
          (let* ((meta (##vector-ref seg 2))
                 (nxt (__atomic-slot-load meta 32 1)))
            (if nxt
              (begin
                (__atomic-slot-cas! cells 0 seg nxt 3)
                (__atomic-slot-cas! cells 16 seg nxt 2)
                (loop 0))
              (values #f #f))))
         ((##eq? r %LFQ-RETRY)
          (if (fx>= retries 4)
            (begin (thread-yield!) (loop 0))
            (begin (__cpu-relax!) (loop (fx+ retries 1)))))
         (else
          (values #t r)))))))

;;;============================================================================
;;; 3. Lock-Free Bounded Chase-Lev Work-Stealing Deque (128B Padded + C Fast Path)
;;;
;;; meta[0]  = top (thief-contended cache line)
;;; meta[16] = bottom (owner-private cache line, 128 bytes from top)
;;; meta[17] = cached-top (owner-private estimate; avoids reading thief-dirty top
;;;            cache line on 99.9% of local ws-deque-push! calls)

(def %WSD-EMPTY '#(wsd-empty))

(defstruct WSDeque
  ((mask  :- :fixnum)
   (cap   :- :fixnum)
   (slots :- :vector)
   (meta  :- :vector))
  final: #t)

(def (make-ws-deque (min-cap : :fixnum := 256))
  => WSDeque
  (let* ((cap (%next-pow2 (if (fx> min-cap 0) min-cap 256)))
         (slots (make-vector cap #f))
         (meta (make-vector 32 0)))
    (WSDeque (fx- cap 1) cap slots meta)))

(defalias ws-deque? WSDeque?)

(def (ws-deque-size (dq : WSDeque))
  => :fixnum
  (let* ((meta dq.meta)
         (b (:- (__atomic-fx-load meta 16 1) :fixnum))
         (t (:- (__atomic-fx-load meta 0 1) :fixnum))
         (d (fx- b t)))
    (if (fx> d 0) d 0)))

(def (%wsd-push-fast! (slots :- :vector) (meta :- :vector) (cap :- :fixnum) (mask :- :fixnum) val)
  (declare (not interrupts-enabled))
  (cond-expand
   (gerbil-smp
    (##c-code
     "___SCMOBJ ___slots = ___ARG1;
      ___WORD *___slots_p = ___BODY_AS(___slots, ___tVECTOR);
      ___WORD *___meta = ___BODY_AS(___ARG2, ___tVECTOR);
      ___WORD ___cap = ___INT(___ARG3);
      ___WORD ___mask = ___INT(___ARG4);
      ___VOLATILE ___WORD *___top_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
      ___VOLATILE ___WORD *___bot_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___WORD ___b = ___INT(___atomic_word_load(___bot_p, 0));
      ___WORD ___ct = ___INT(___meta[17]);
      int ___full = 0;
      if (___b - ___ct >= ___cap) {
        ___WORD ___t = ___INT(___atomic_word_load(___top_p, 1));
        ___meta[17] = ___FIX(___t);
        if (___b - ___t >= ___cap) {
          ___full = 1;
        }
      }
      if (___full) {
        ___RESULT = ___FAL;
      } else {
        ___WORD *___s = ___slots_p + (___b & ___mask);
        ___GC_WRITE_BARRIER(___ps, ___slots, ___s, ___ARG5);
        ___atomic_word_store(___CAST(___VOLATILE ___WORD*, ___s), ___CAST(___WORD, ___ARG5), 0);
        ___atomic_word_store(___bot_p, ___FIX(___b + 1), 2);
        ___RESULT = ___TRU;
      }"
     slots meta cap mask val))
   (else
    (let ((b (:- (##vector-ref meta 16) :fixnum))
          (t (:- (##vector-ref meta 0) :fixnum)))
      (if (fx>= (fx- b t) cap)
        #f
        (begin
          (##vector-set! slots (fxand b mask) val)
          (##vector-set! meta 16 (fx+ b 1))
          #t))))))

(def (%wsd-pop-fast! (slots :- :vector) (meta :- :vector) (mask :- :fixnum) empty-tag)
  (declare (not interrupts-enabled))
  (cond-expand
   (gerbil-smp
    (##c-code
     "___WORD *___slots_p = ___BODY_AS(___ARG1, ___tVECTOR);
      ___WORD *___meta = ___BODY_AS(___ARG2, ___tVECTOR);
      ___WORD ___mask = ___INT(___ARG3);
      ___VOLATILE ___WORD *___top_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
      ___VOLATILE ___WORD *___bot_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___WORD ___b = ___INT(___atomic_word_load(___bot_p, 0)) - 1;
      ___atomic_word_store(___bot_p, ___FIX(___b), 0);
      ___atomic_fence_order(4);
      ___WORD ___t = ___INT(___atomic_word_load(___top_p, 0));
      ___meta[17] = ___FIX(___t);
      if (___t < ___b) {
        ___RESULT = ___gc_atomic_slot_load(___slots_p + (___b & ___mask), 1);
      } else if (___t == ___b) {
        ___SCMOBJ ___val = ___gc_atomic_slot_load(___slots_p + (___b & ___mask), 1);
        ___WORD ___prev = ___INT(___atomic_word_cas(___top_p, ___FIX(___t), ___FIX(___t + 1), 4));
        ___atomic_word_store(___bot_p, ___FIX(___b + 1), 0);
        ___meta[17] = ___FIX(___t + 1);
        ___RESULT = (___prev == ___t) ? ___val : ___ARG4;
      } else {
        ___atomic_word_store(___bot_p, ___FIX(___b + 1), 0);
        ___RESULT = ___ARG4;
      }"
     slots meta mask empty-tag))
   (else
    (let ((b (fx- (:- (##vector-ref meta 16) :fixnum) 1))
          (t (:- (##vector-ref meta 0) :fixnum)))
      (if (fx< b t)
        empty-tag
        (begin
          (##vector-set! meta 16 b)
          (##vector-ref slots (fxand b mask))))))))

(def (%wsd-steal-fast! (slots :- :vector) (meta :- :vector) (mask :- :fixnum) empty-tag)
  (declare (not interrupts-enabled))
  (cond-expand
   (gerbil-smp
    (##c-code
     "___WORD *___slots_p = ___BODY_AS(___ARG1, ___tVECTOR);
      ___WORD *___meta = ___BODY_AS(___ARG2, ___tVECTOR);
      ___WORD ___mask = ___INT(___ARG3);
      ___VOLATILE ___WORD *___top_p = ___CAST(___VOLATILE ___WORD*, ___meta + 0);
      ___VOLATILE ___WORD *___bot_p = ___CAST(___VOLATILE ___WORD*, ___meta + 16);
      ___WORD ___t = ___INT(___atomic_word_load(___top_p, 1));
      ___atomic_fence_order(4);
      ___WORD ___b = ___INT(___atomic_word_load(___bot_p, 1));
      if (___t < ___b) {
        ___SCMOBJ ___val = ___gc_atomic_slot_load(___slots_p + (___t & ___mask), 1);
        ___WORD ___prev = ___INT(___atomic_word_cas(___top_p, ___FIX(___t), ___FIX(___t + 1), 4));
        ___RESULT = (___prev == ___t) ? ___val : ___ARG4;
      } else {
        ___RESULT = ___ARG4;
      }"
     slots meta mask empty-tag))
   (else
    (let ((t (:- (##vector-ref meta 0) :fixnum))
          (b (:- (##vector-ref meta 16) :fixnum)))
      (if (fx< t b)
        (let ((val (##vector-ref slots (fxand t mask))))
          (##vector-set! meta 0 (fx+ t 1))
          val)
        empty-tag)))))

;; Owner-only push at bottom. Returns #t on success, #f if bounded ring is full.
(def (ws-deque-push! (dq : WSDeque) val)
  => :boolean
  (if (%wsd-push-fast! dq.slots dq.meta dq.cap dq.mask val) #t #f))

;; Owner-only LIFO pop from bottom. Returns (values #t val) or (values #f #f).
(def (ws-deque-try-pop! (dq : WSDeque))
  (let ((r (%wsd-pop-fast! dq.slots dq.meta dq.mask %WSD-EMPTY)))
    (if (##eq? r %WSD-EMPTY)
      (values #f #f)
      (values #t r))))

;; Concurrent thief FIFO steal from top. Returns (values #t val) or (values #f #f).
(def (ws-deque-try-steal! (dq : WSDeque))
  (let ((r (%wsd-steal-fast! dq.slots dq.meta dq.mask %WSD-EMPTY)))
    (if (##eq? r %WSD-EMPTY)
      (values #f #f)
      (values #t r))))

;;;============================================================================
;;; 4. Wait-Free-Read / Lock-Free-Write Sharded Concurrent Hash Table
;;;    (Direct Atomic Bucket Primitives + 128B-Padded Striped Element Counters)

(defstruct ConcurrentTable
  ((mask     :- :fixnum)
   (buckets  :- :vector)
   (eq-fn    :- :procedure)
   (hash-fn  :- :procedure)
   (eq-fast? :- :boolean)
   (counts   :- :vector)
   (cstripes :- :fixnum)
   (cmask    :- :fixnum))
  final: #t)

(def (make-concurrent-table (min-buckets : :fixnum := 64)
                            (eq-fn : :procedure := equal?)
                            (hash-fn : :procedure := equal?-hash))
  => ConcurrentTable
  (let* ((nb (%next-pow2 (if (fx> min-buckets 0) min-buckets 64)))
         (buckets (make-vector nb '()))
         (nprocs (let ((p (##current-vm-processor-count)))
                   (if (and (fixnum? p) (fx> p 0)) p 1)))
         (cstripes (min 16 (%next-pow2-min1 nprocs)))
         (counts (make-vector (fxarithmetic-shift-left cstripes 4) 0)))
    (ConcurrentTable (fx- nb 1) buckets eq-fn hash-fn (##eq? eq-fn eq?)
                     counts cstripes (fx- cstripes 1))))

(defalias concurrent-table? ConcurrentTable?)

(definline (%ct-bucket-idx (ct :- ConcurrentTable) key)
  (fxand (:- (ct.hash-fn key) :fixnum) ct.mask))

(definline (%ct-count-slot (ct :- ConcurrentTable))
  (fxarithmetic-shift-left (fxand (##current-processor-id) ct.cmask) 4))

(def (%alist-find-eq alist key)
  (let loop ((xs alist))
    (cond
     ((##null? xs) #f)
     ((##eq? (##caar xs) key) (##car xs))
     (else (loop (##cdr xs))))))

(def (%alist-find alist key eq-fn)
  (let loop ((xs alist))
    (cond
     ((##null? xs) #f)
     ((eq-fn (##caar xs) key) (##car xs))
     (else (loop (##cdr xs))))))

(def (%alist-replace-eq alist key val)
  (let loop ((xs alist) (prefix '()))
    (cond
     ((##null? xs)
      (values (cons (cons key val) alist) #f))
     ((##eq? (##caar xs) key)
      (let rebuild ((p prefix) (res (cons (cons key val) (##cdr xs))))
        (if (##null? p)
          (values res #t)
          (rebuild (##cdr p) (cons (##car p) res)))))
     (else
      (loop (##cdr xs) (cons (##car xs) prefix))))))

(def (%alist-replace alist key val eq-fn)
  (let loop ((xs alist) (prefix '()))
    (cond
     ((##null? xs)
      (values (cons (cons key val) alist) #f))
     ((eq-fn (##caar xs) key)
      (let rebuild ((p prefix) (res (cons (cons key val) (##cdr xs))))
        (if (##null? p)
          (values res #t)
          (rebuild (##cdr p) (cons (##car p) res)))))
     (else
      (loop (##cdr xs) (cons (##car xs) prefix))))))

(def (%alist-delete-eq alist key)
  (let loop ((xs alist) (prefix '()))
    (cond
     ((##null? xs)
      (values alist #f))
     ((##eq? (##caar xs) key)
      (let rebuild ((p prefix) (res (##cdr xs)))
        (if (##null? p)
          (values res #t)
          (rebuild (##cdr p) (cons (##car p) res)))))
     (else
      (loop (##cdr xs) (cons (##car xs) prefix))))))

(def (%alist-delete alist key eq-fn)
  (let loop ((xs alist) (prefix '()))
    (cond
     ((##null? xs)
      (values alist #f))
     ((eq-fn (##caar xs) key)
      (let rebuild ((p prefix) (res (##cdr xs)))
        (if (##null? p)
          (values res #t)
          (rebuild (##cdr p) (cons (##car p) res)))))
     (else
      (loop (##cdr xs) (cons (##car xs) prefix))))))

(def (concurrent-table-size (ct : ConcurrentTable))
  => :fixnum
  (let ((counts ct.counts)
        (n ct.cstripes))
    (let loop ((i 0) (slot 0) (acc 0))
      (if (fx< i n)
        (loop (fx+ i 1)
              (fx+ slot 16)
              (fx+ acc (:- (__atomic-fx-load counts slot 1) :fixnum)))
        (if (fx> acc 0) acc 0)))))

;; Wait-free read: single acquire load + immutable bucket scan.
(def (concurrent-table-ref (ct : ConcurrentTable) key (default : :t := #f))
  (let* ((alist (__atomic-slot-load ct.buckets (%ct-bucket-idx ct key) 1))
         (entry (if ct.eq-fast?
                  (%alist-find-eq alist key)
                  (%alist-find alist key ct.eq-fn))))
    (if entry (##cdr entry) default)))

(def (concurrent-table-set! (ct : ConcurrentTable) key val)
  (let ((buckets ct.buckets)
        (idx (%ct-bucket-idx ct key))
        (eq-fast? ct.eq-fast?)
        (eq-fn ct.eq-fn))
    (let loop ()
      (let ((cur (__atomic-slot-load buckets idx 1)))
        (let-values (((nxt existed)
                      (if eq-fast?
                        (%alist-replace-eq cur key val)
                        (%alist-replace cur key val eq-fn))))
          (let ((prev (__atomic-slot-cas! buckets idx cur nxt 3)))
            (if (##eq? prev cur)
              (begin
                (unless existed
                  (__atomic-fx-fetch-add! ct.counts (%ct-count-slot ct) 1 0))
                val)
              (loop))))))))

(def (concurrent-table-update! (ct : ConcurrentTable) key (updater : :procedure))
  (let ((buckets ct.buckets)
        (idx (%ct-bucket-idx ct key))
        (eq-fast? ct.eq-fast?)
        (eq-fn ct.eq-fn))
    (let loop ()
      (let* ((cur (__atomic-slot-load buckets idx 1))
             (entry (if eq-fast?
                      (%alist-find-eq cur key)
                      (%alist-find cur key eq-fn)))
             (new-val (if entry (updater #t (##cdr entry)) (updater #f #f))))
        (let-values (((nxt existed)
                      (if eq-fast?
                        (%alist-replace-eq cur key new-val)
                        (%alist-replace cur key new-val eq-fn))))
          (let ((prev (__atomic-slot-cas! buckets idx cur nxt 3)))
            (if (##eq? prev cur)
              (begin
                (unless existed
                  (__atomic-fx-fetch-add! ct.counts (%ct-count-slot ct) 1 0))
                new-val)
              (loop))))))))

(def (concurrent-table-delete! (ct : ConcurrentTable) key)
  => :boolean
  (let ((buckets ct.buckets)
        (idx (%ct-bucket-idx ct key))
        (eq-fast? ct.eq-fast?)
        (eq-fn ct.eq-fn))
    (let loop ()
      (let ((cur (__atomic-slot-load buckets idx 1)))
        (let-values (((nxt found)
                      (if eq-fast?
                        (%alist-delete-eq cur key)
                        (%alist-delete cur key eq-fn))))
          (if (not found)
            #f
            (let ((prev (__atomic-slot-cas! buckets idx cur nxt 3)))
              (if (##eq? prev cur)
                (begin
                  (__atomic-fx-fetch-sub! ct.counts (%ct-count-slot ct) 1 0)
                  #t)
                (loop)))))))))
