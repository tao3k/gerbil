;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Lock-Free SMP Concurrent Data Structures built directly on :std/sync/atomic (SRFI-230)
;;; Aligned with Gambit modern-c (gambit concurrent):
;;;   - LFStack (Treiber lock-free stack, ABA-immune under GC)
;;;   - LFQueue (Michael-Scott lock-free MPMC FIFO queue)
;;;   - WSDeque (Chase-Lev lock-free work-stealing deque)
;;;   - ConcurrentTable (Wait-free-read / lock-free-write sharded hash table)

(import :std/error
        :std/sync/atomic)
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
;;; 2. Lock-Free Michael-Scott MPMC FIFO Queue

(defstruct %LFQNode (val (next :- AtomicBox)) final: #t)

(defstruct LFQueue ((head :- AtomicBox) (tail :- AtomicBox)) final: #t)

(def (make-lf-queue)
  => LFQueue
  (let ((dummy (%LFQNode #f (make-atomic-box #f))))
    (LFQueue (make-atomic-box dummy)
             (make-atomic-box dummy))))

(defalias lf-queue? LFQueue?)

(def (lf-queue-empty? (q : LFQueue))
  => :boolean
  (let* ((h (atomic-box-ref q.head (memory-order acquire)))
         (nxt (atomic-box-ref (&%LFQNode-next h) (memory-order acquire))))
    (not nxt)))

(def (lf-queue-enqueue! (q : LFQueue) val)
  => :boolean
  (let ((node (%LFQNode val (make-atomic-box #f)))
        (tail-box q.tail))
    (let loop ()
      (let* ((tail (atomic-box-ref tail-box (memory-order acquire)))
             (next-box (&%LFQNode-next tail))
             (next (atomic-box-ref next-box (memory-order acquire))))
        (if (eq? tail (atomic-box-ref tail-box (memory-order acquire)))
          (if (not next)
            (let ((prev (atomic-box-compare-and-swap! next-box #f node (memory-order acquire-release))))
              (if (not prev)
                (begin
                  (atomic-box-compare-and-swap! tail-box tail node (memory-order release))
                  #t)
                (loop)))
            (begin
              (atomic-box-compare-and-swap! tail-box tail next (memory-order release))
              (loop)))
          (loop))))))

;; Returns (values #t val) on success, or (values #f #f) when empty.
(def (lf-queue-try-dequeue! (q : LFQueue))
  (let ((head-box q.head)
        (tail-box q.tail))
    (let loop ()
      (let* ((head (atomic-box-ref head-box (memory-order acquire)))
             (tail (atomic-box-ref tail-box (memory-order acquire)))
             (next (atomic-box-ref (&%LFQNode-next head) (memory-order acquire))))
        (if (eq? head (atomic-box-ref head-box (memory-order acquire)))
          (if (eq? head tail)
            (if (not next)
              (values #f #f)
              (begin
                (atomic-box-compare-and-swap! tail-box tail next (memory-order release))
                (loop)))
            (let ((val (&%LFQNode-val next)))
              (let ((prev (atomic-box-compare-and-swap! head-box head next (memory-order acquire-release))))
                (if (eq? prev head)
                  (begin
                    ;; Clear payload from new dummy node so GC can reclaim promptly.
                    (set! (&%LFQNode-val next) #f)
                    (values #t val))
                  (loop)))))
          (loop))))))

;;;============================================================================
;;; 3. Lock-Free Bounded Chase-Lev Work-Stealing Deque

(defstruct WSDeque
  ((mask   :- :fixnum)
   (cap    :- :fixnum)
   (slots  :- :vector)
   (top    :- AtomicFxBox)
   (bottom :- AtomicFxBox))
  final: #t)

(def (make-ws-deque (min-cap : :fixnum := 256))
  => WSDeque
  (let* ((cap (%next-pow2 (if (fx> min-cap 0) min-cap 256)))
         (slots (make-vector cap #f)))
    (WSDeque (fx- cap 1) cap slots
             (make-atomic-fxbox 0)
             (make-atomic-fxbox 0))))

(defalias ws-deque? WSDeque?)

(def (ws-deque-size (dq : WSDeque))
  => :fixnum
  (let ((b (atomic-fxbox-ref dq.bottom (memory-order acquire)))
        (t (atomic-fxbox-ref dq.top (memory-order acquire))))
    (let ((d (fx- b t)))
      (if (fx> d 0) d 0))))

;; Owner-only push at bottom. Returns #t on success, #f if bounded ring is full.
(def (ws-deque-push! (dq : WSDeque) val)
  => :boolean
  (let* ((b (atomic-fxbox-ref dq.bottom (memory-order relaxed)))
         (t (atomic-fxbox-ref dq.top (memory-order acquire)))
         (cap dq.cap))
    (if (fx>= (fx- b t) cap)
      #f
      (begin
        (vector-atomic-set! dq.slots (fxand b dq.mask) val (memory-order relaxed))
        (atomic-fxbox-set! dq.bottom (fx+ b 1) (memory-order release))
        #t))))

;; Owner-only LIFO pop from bottom. Returns (values #t val) or (values #f #f).
(def (ws-deque-try-pop! (dq : WSDeque))
  (let* ((b (fx- (atomic-fxbox-ref dq.bottom (memory-order relaxed)) 1))
         (top-box dq.top)
         (bot-box dq.bottom)
         (slots dq.slots)
         (idx (fxand b dq.mask)))
    (atomic-fxbox-set! bot-box b (memory-order relaxed))
    (atomic-fence (memory-order sequentially-consistent))
    (let ((t (atomic-fxbox-ref top-box (memory-order relaxed))))
      (cond
       ((fx< t b)
        (let ((val (vector-atomic-ref slots idx (memory-order acquire))))
          (values #t val)))
       ((fx= t b)
        (let* ((val (vector-atomic-ref slots idx (memory-order acquire)))
               (prev (atomic-fxbox-compare-and-swap! top-box t (fx+ t 1) (memory-order sequentially-consistent))))
          (atomic-fxbox-set! bot-box (fx+ b 1) (memory-order relaxed))
          (if (fx= prev t)
            (values #t val)
            (values #f #f))))
       (else
        (atomic-fxbox-set! bot-box (fx+ b 1) (memory-order relaxed))
        (values #f #f))))))

;; Concurrent thief FIFO steal from top. Returns (values #t val) or (values #f #f).
(def (ws-deque-try-steal! (dq : WSDeque))
  (let ((top-box dq.top)
        (bot-box dq.bottom))
    (let ((t (atomic-fxbox-ref top-box (memory-order acquire))))
      (atomic-fence (memory-order sequentially-consistent))
      (let ((b (atomic-fxbox-ref bot-box (memory-order acquire))))
        (if (fx< t b)
          (let* ((val (vector-atomic-ref dq.slots (fxand t dq.mask) (memory-order acquire)))
                 (prev (atomic-fxbox-compare-and-swap! top-box t (fx+ t 1) (memory-order sequentially-consistent))))
            (if (fx= prev t)
              (values #t val)
              (values #f #f)))
          (values #f #f))))))

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
