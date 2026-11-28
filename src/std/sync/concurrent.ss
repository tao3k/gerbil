;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Lock-Free SMP Concurrent Data Structures built directly on :std/sync/atomic (SRFI-230)
;;; Aligned with Gambit modern-c (gambit concurrent):
;;;   - LFStack (Treiber lock-free stack, ABA-immune under GC)
;;;   - LFQueue (Michael-Scott lock-free MPMC FIFO queue)
;;;   - WSDeque (Chase-Lev lock-free work-stealing deque)
;;;   - ConcurrentTable (Wait-free-read / lock-free-write sharded hash table)

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
    (if (fx>= p n) p (loop (fx* p 2)))))

;;;============================================================================
;;; 1. Lock-Free Treiber Stack (GC-managed nodes -> immune to ABA)

(defstruct LFStack ((head :- AtomicBox)) final: #t)

(def (make-lf-stack)
  => LFStack
  (LFStack (make-atomic-box '())))

(defalias lf-stack? LFStack?)

(def (lf-stack-empty? (st : LFStack))
  => :boolean
  (null? (atomic-box-ref st.head (memory-order acquire))))

(def (lf-stack-push! (st : LFStack) val)
  => :boolean
  (let ((head st.head))
    (let loop ()
      (let* ((cur (atomic-box-ref head (memory-order acquire)))
             (nxt (cons val cur))
             (prev (atomic-box-compare-and-swap! head cur nxt (memory-order acquire-release))))
        (if (eq? prev cur)
          #t
          (loop))))))

;; Returns (values #t val) on success, or (values #f #f) when empty.
(def (lf-stack-try-pop! (st : LFStack))
  (let ((head st.head))
    (let loop ()
      (let ((cur (atomic-box-ref head (memory-order acquire))))
        (if (null? cur)
          (values #f #f)
          (let ((prev (atomic-box-compare-and-swap! head cur (##cdr cur) (memory-order acquire-release))))
            (if (eq? prev cur)
              (values #t (##car cur))
              (loop))))))))

;;;============================================================================
;;; 2. Lock-Free Michael-Scott MPMC FIFO Queue (128B Cache-Line Padded)
;;;
;;; head lives at cells[0], tail lives at cells[16] (128 bytes apart inside one
;;; contiguous vector) so producers and consumers never false-share a cache line
;;; even across compacting GCs.

(defstruct %LFQNode (val (next :- :vector)) final: #t)

(defstruct LFQueue ((cells :- :vector)) final: #t)

(def (make-lf-queue)
  => LFQueue
  (let ((dummy (%LFQNode #f (vector #f)))
        (cells (make-vector 32 #f)))
    (vector-set! cells 0 dummy)
    (vector-set! cells 16 dummy)
    (LFQueue cells)))

(defalias lf-queue? LFQueue?)

(def (lf-queue-empty? (q : LFQueue))
  => :boolean
  (let* ((h (__atomic-slot-load q.cells 0 1))
         (nxt (__atomic-slot-load (&%LFQNode-next h) 0 1)))
    (not nxt)))

(def (lf-queue-enqueue! (q : LFQueue) val)
  => :boolean
  (let ((node (%LFQNode val (vector #f)))
        (cells q.cells))
    (let loop ((backoff 0))
      (let* ((tail (__atomic-slot-load cells 16 1))
             (next-cell (&%LFQNode-next tail))
             (next (__atomic-slot-load next-cell 0 1)))
        (if (eq? tail (__atomic-slot-load cells 16 1))
          (if (not next)
            (let ((prev (__atomic-slot-cas! next-cell 0 #f node 3)))
              (if (not prev)
                (begin
                  (__atomic-slot-cas! cells 16 tail node 2)
                  #t)
                (begin
                  (when (fx> backoff 0) (__cpu-relax!))
                  (loop (fx+ backoff 1)))))
            (begin
              (__atomic-slot-cas! cells 16 tail next 2)
              (loop backoff)))
          (loop backoff))))))

;; Returns (values #t val) on success, or (values #f #f) when empty.
(def (lf-queue-try-dequeue! (q : LFQueue))
  (let ((cells q.cells))
    (let loop ((backoff 0))
      (let* ((head (__atomic-slot-load cells 0 1))
             (tail (__atomic-slot-load cells 16 1))
             (next (__atomic-slot-load (&%LFQNode-next head) 0 1)))
        (if (eq? head (__atomic-slot-load cells 0 1))
          (if (eq? head tail)
            (if (not next)
              (values #f #f)
              (begin
                (__atomic-slot-cas! cells 16 tail next 2)
                (loop backoff)))
            (let ((val (&%LFQNode-val next)))
              (let ((prev (__atomic-slot-cas! cells 0 head next 3)))
                (if (eq? prev head)
                  (begin
                    ;; Clear payload from new dummy node so GC can reclaim promptly.
                    (set! (&%LFQNode-val next) #f)
                    (values #t val))
                  (begin
                    (when (fx> backoff 0) (__cpu-relax!))
                    (loop (fx+ backoff 1)))))))
          (loop backoff))))))

;;;============================================================================
;;; 3. Lock-Free Bounded Chase-Lev Work-Stealing Deque (128B Padded + Cached Top)
;;;
;;; meta[0]  = top (thief-contended cache line)
;;; meta[16] = bottom (owner-private cache line, 128 bytes from top)
;;; meta[17] = cached-top (owner-private estimate; avoids reading thief-dirty top
;;;            cache line on 99.9% of local ws-deque-push! calls)

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

;; Owner-only push at bottom. Returns #t on success, #f if bounded ring is full.
(def (ws-deque-push! (dq : WSDeque) val)
  => :boolean
  (let* ((meta dq.meta)
         (b (:- (__atomic-fx-load meta 16 0) :fixnum))
         (ct (:- (##vector-ref meta 17) :fixnum))
         (cap dq.cap))
    (if (fx< (fx- b ct) cap)
      (begin
        (__atomic-slot-exchange! dq.slots (fxand b dq.mask) val 0)
        (__atomic-fx-store! meta 16 (fx+ b 1) 2)
        #t)
      (let ((t (:- (__atomic-fx-load meta 0 1) :fixnum)))
        (##vector-set! meta 17 t)
        (if (fx>= (fx- b t) cap)
          #f
          (begin
            (__atomic-slot-exchange! dq.slots (fxand b dq.mask) val 0)
            (__atomic-fx-store! meta 16 (fx+ b 1) 2)
            #t))))))

;; Owner-only LIFO pop from bottom. Returns (values #t val) or (values #f #f).
(def (ws-deque-try-pop! (dq : WSDeque))
  (let* ((meta dq.meta)
         (b (fx- (:- (__atomic-fx-load meta 16 0) :fixnum) 1))
         (slots dq.slots)
         (idx (fxand b dq.mask)))
    (__atomic-fx-store! meta 16 b 0)
    (__atomic-fence! 4)
    (let ((t (:- (__atomic-fx-load meta 0 0) :fixnum)))
      (##vector-set! meta 17 t)
      (cond
       ((fx< t b)
        (let ((val (__atomic-slot-load slots idx 1)))
          (values #t val)))
       ((fx= t b)
        (let* ((val (__atomic-slot-load slots idx 1))
               (prev (:- (__atomic-fx-cas! meta 0 t (fx+ t 1) 4) :fixnum)))
          (__atomic-fx-store! meta 16 (fx+ b 1) 0)
          (##vector-set! meta 17 (fx+ t 1))
          (if (fx= prev t)
            (values #t val)
            (values #f #f))))
       (else
        (__atomic-fx-store! meta 16 (fx+ b 1) 0)
        (values #f #f))))))

;; Concurrent thief FIFO steal from top. Returns (values #t val) or (values #f #f).
(def (ws-deque-try-steal! (dq : WSDeque))
  (let* ((meta dq.meta)
         (t (:- (__atomic-fx-load meta 0 1) :fixnum)))
    (__atomic-fence! 4)
    (let ((b (:- (__atomic-fx-load meta 16 1) :fixnum)))
      (if (fx< t b)
        (let* ((val (__atomic-slot-load dq.slots (fxand t dq.mask) 1))
               (prev (:- (__atomic-fx-cas! meta 0 t (fx+ t 1) 4) :fixnum)))
          (if (fx= prev t)
            (values #t val)
            (values #f #f)))
        (values #f #f)))))

;;;============================================================================
;;; 4. Wait-Free-Read / Lock-Free-Write Sharded Concurrent Hash Table

(defstruct ConcurrentTable
  ((mask    :- :fixnum)
   (buckets :- :vector)
   (eq-fn   :- :procedure)
   (hash-fn :- :procedure)
   (count   :- AtomicFxBox))
  final: #t)

(def (make-concurrent-table (min-buckets : :fixnum := 64)
                            (eq-fn : :procedure := equal?)
                            (hash-fn : :procedure := equal?-hash))
  => ConcurrentTable
  (let* ((nb (%next-pow2 (if (fx> min-buckets 0) min-buckets 64)))
         (buckets (make-vector nb '())))
    (ConcurrentTable (fx- nb 1) buckets eq-fn hash-fn (make-atomic-fxbox 0))))

(defalias concurrent-table? ConcurrentTable?)

(def (%ct-bucket-idx (ct :- ConcurrentTable) key)
  (fxand (ct.hash-fn key) ct.mask))

(def (%alist-find alist key eq-fn)
  (let loop ((xs alist))
    (cond
     ((null? xs) #f)
     ((eq-fn (##caar xs) key) (##car xs))
     (else (loop (##cdr xs))))))

(def (%alist-replace alist key val eq-fn)
  (let loop ((xs alist) (prefix '()))
    (cond
     ((null? xs)
      (values (cons (cons key val) alist) #f))
     ((eq-fn (##caar xs) key)
      (let rebuild ((p prefix) (res (cons (cons key val) (##cdr xs))))
        (if (null? p)
          (values res #t)
          (rebuild (##cdr p) (cons (##car p) res)))))
     (else
      (loop (##cdr xs) (cons (##car xs) prefix))))))

(def (%alist-delete alist key eq-fn)
  (let loop ((xs alist) (prefix '()))
    (cond
     ((null? xs)
      (values alist #f))
     ((eq-fn (##caar xs) key)
      (let rebuild ((p prefix) (res (##cdr xs)))
        (if (null? p)
          (values res #t)
          (rebuild (##cdr p) (cons (##car p) res)))))
     (else
      (loop (##cdr xs) (cons (##car xs) prefix))))))

(def (concurrent-table-size (ct : ConcurrentTable))
  => :fixnum
  (atomic-fxbox-ref ct.count (memory-order acquire)))

;; Wait-free read: single acquire load + immutable bucket scan.
(def (concurrent-table-ref (ct : ConcurrentTable) key (default : :t := #f))
  (let* ((alist (vector-atomic-ref ct.buckets (%ct-bucket-idx ct key) (memory-order acquire)))
         (entry (%alist-find alist key ct.eq-fn)))
    (if entry (##cdr entry) default)))

(def (concurrent-table-set! (ct : ConcurrentTable) key val)
  (let ((buckets ct.buckets)
        (idx (%ct-bucket-idx ct key))
        (eq-fn ct.eq-fn)
        (cnt ct.count))
    (let loop ()
      (let ((cur (vector-atomic-ref buckets idx (memory-order acquire))))
        (let-values (((nxt existed) (%alist-replace cur key val eq-fn)))
          (let ((prev (vector-atomic-cas! buckets idx cur nxt (memory-order acquire-release))))
            (if (eq? prev cur)
              (begin
                (unless existed
                  (atomic-fxbox-fetch-add! cnt 1 (memory-order relaxed)))
                val)
              (loop))))))))

(def (concurrent-table-update! (ct : ConcurrentTable) key (updater : :procedure))
  (let ((buckets ct.buckets)
        (idx (%ct-bucket-idx ct key))
        (eq-fn ct.eq-fn)
        (cnt ct.count))
    (let loop ()
      (let* ((cur (vector-atomic-ref buckets idx (memory-order acquire)))
             (entry (%alist-find cur key eq-fn))
             (new-val (if entry (updater #t (##cdr entry)) (updater #f #f))))
        (let-values (((nxt existed) (%alist-replace cur key new-val eq-fn)))
          (let ((prev (vector-atomic-cas! buckets idx cur nxt (memory-order acquire-release))))
            (if (eq? prev cur)
              (begin
                (unless existed
                  (atomic-fxbox-fetch-add! cnt 1 (memory-order relaxed)))
                new-val)
              (loop))))))))

(def (concurrent-table-delete! (ct : ConcurrentTable) key)
  => :boolean
  (let ((buckets ct.buckets)
        (idx (%ct-bucket-idx ct key))
        (eq-fn ct.eq-fn)
        (cnt ct.count))
    (let loop ()
      (let ((cur (vector-atomic-ref buckets idx (memory-order acquire))))
        (let-values (((nxt found) (%alist-delete cur key eq-fn)))
          (if (not found)
            #f
            (let ((prev (vector-atomic-cas! buckets idx cur nxt (memory-order acquire-release))))
              (if (eq? prev cur)
                (begin
                  (atomic-fxbox-fetch-sub! cnt 1 (memory-order relaxed))
                  #t)
                (loop)))))))))
