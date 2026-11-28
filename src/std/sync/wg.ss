;;; -*- Gerbil -*-
;;; © vyzo
;;; transient parallel workgroups (SMP lock-free MPMC queue + single-word packed parker)
(import :std/error
        :std/iter
        :gerbil/runtime/util
        ./atomic
        ./concurrent)
(export WG? make-wg wg-add! wg-wait!)

;; Packed fixnum park-state word (lives at state[16], 128B isolated from closed at state[0]):
;;   bits  0..11 : spinning worker count (+1, up to 4095 workers)
;;   bits 12..23 : sleeping worker count (+4096 = #x1000)
;;   bit  24     : waking latch (#x1000000)
;; Portable across 32-bit and 64-bit fixnums. Single atomic load in wg-wake-one!
;; replaces 3 separate cache-line loads.
(def %WG-SPIN-MASK    #xfff)
(def %WG-SLEEP-UNIT   #x1000)
(def %WG-SLEEP-MASK   #xfff000)
(def %WG-WAKING-BIT   #x1000000)
(def %WG-ACTIVE-MASK  (fxior %WG-SPIN-MASK %WG-WAKING-BIT))

(defstruct WG ((q     :- LFQueue)
               (state :- :vector)
               (mx    :- :mutex)
               (cv    :- :condvar)
               workers)
  final: #t)

(def (make-wg cores)
  (let* ((q (make-lf-queue))
         ;; state[0] = closed flag, state[16] = packed park-state (128B apart)
         (state (make-vector 32 0))
         (mx (make-mutex 'wg))
         (cv (make-condition-variable 'wg))
         (wg (WG q state mx cv #f))
         (threads (map (lambda (x) (spawn/name [worker x] worker wg)) (iota cores))))
    (set! (&WG-workers wg) threads)
    wg))

(def (wg-wake-one! (wg :- WG))
  ;; SeqCst fence orders prior enqueue before observing packed park-state.
  (__atomic-fence! 4)
  (let* ((state wg.state)
         (ps (:- (__atomic-fx-load state 16 1) :fixnum)))
    (when (and (fx> (fxand ps %WG-SLEEP-MASK) 0)
               (fx= (fxand ps %WG-ACTIVE-MASK) 0))
      (mutex-lock! wg.mx)
      (when (fx= (:- (__atomic-fx-load state 0 1) :fixnum) 0)
        (let ((ps2 (:- (__atomic-fx-load state 16 1) :fixnum)))
          (when (and (fx> (fxand ps2 %WG-SLEEP-MASK) 0)
                     (fx= (fxand ps2 %WG-ACTIVE-MASK) 0))
            (__atomic-fx-fetch-ior! state 16 %WG-WAKING-BIT 2)
            (condition-variable-signal! wg.cv))))
      (mutex-unlock! wg.mx))))

(def (worker (wg :- WG))
  (let ((q wg.q)
        (state wg.state)
        (mx wg.mx)
        (cv wg.cv))
    (let loop ((spins 0) (is-spinning? #f))
      (let-values (((ok thunk) (lf-queue-try-dequeue! q)))
        (if ok
          (begin
            (when is-spinning?
              (let ((prev (:- (__atomic-fx-fetch-sub! state 16 1 4) :fixnum)))
                ;; If we were the last searching worker and more work is already queued,
                ;; cascade-wake one sleeper for immediate multicore ramp-up.
                (when (and (fx= (fxand prev %WG-SPIN-MASK) 1)
                           (fx> (fxand prev %WG-SLEEP-MASK) 0)
                           (not (lf-queue-empty? q)))
                  (wg-wake-one! wg))))
            (thunk)
            (loop 0 #f))
          (cond
           ((fx> (:- (__atomic-fx-load state 0 1) :fixnum) 0)
            (when is-spinning?
              (__atomic-fx-fetch-sub! state 16 1 3))
            ;; Drain any final item enqueued concurrently before close
            (let-values (((ok2 thunk2) (lf-queue-try-dequeue! q)))
              (when ok2
                (thunk2)
                (loop 0 #f))))
           ((fx< spins 64)
            (unless is-spinning?
              (__atomic-fx-fetch-add! state 16 1 3))
            (__cpu-relax!)
            (loop (fx+ spins 1) #t))
           ((fx< spins 80)
            (thread-yield!)
            (loop (fx+ spins 1) #t))
           (else
            (when is-spinning?
              (__atomic-fx-fetch-sub! state 16 1 4))
            (mutex-lock! mx)
            (__atomic-fx-fetch-add! state 16 %WG-SLEEP-UNIT 4)
            (let-values (((ok2 thunk2) (lf-queue-try-dequeue! q)))
              (cond
               (ok2
                (__atomic-fx-fetch-sub! state 16 %WG-SLEEP-UNIT 2)
                (mutex-unlock! mx)
                (when (not (lf-queue-empty? q))
                  (wg-wake-one! wg))
                (thunk2)
                (loop 0 #f))
               ((fx> (:- (__atomic-fx-load state 0 1) :fixnum) 0)
                (__atomic-fx-fetch-sub! state 16 %WG-SLEEP-UNIT 2)
                (mutex-unlock! mx)
                (void))
               (else
                (mutex-unlock! mx cv)
                ;; Atomically transition sleeper -> spinning (+1 - sleep_unit)
                ;; and clear waking bit in one CAS loop (or fetch-add + fetch-and).
                (__atomic-fx-fetch-add! state 16 (fx- 1 %WG-SLEEP-UNIT) 4)
                (__atomic-fx-fetch-and! state 16 (fxnot %WG-WAKING-BIT) 4)
                (loop 0 #t)))))))))))

(def (wg-add! wg thunk)
  (if (WG? wg)
    (using (wg :- WG)
      (when (fx> (:- (__atomic-fx-load wg.state 0 1) :fixnum) 0)
        (raise-io-closed wg-add! "workgroup is closed" wg))
      (lf-queue-enqueue! wg.q thunk)
      (wg-wake-one! wg))
    (thunk)))

(def (wg-wait! wg)
  (if (WG? wg)
    (using (wg :- WG)
      (__atomic-fx-store! wg.state 0 1 2)
      (mutex-lock! wg.mx)
      (condition-variable-broadcast! wg.cv)
      (mutex-unlock! wg.mx)
      (for (w wg.workers)
        (with-catch
          (lambda (e) (raise (if (uncaught-exception? e) (uncaught-exception-reason e) e)))
          (cut thread-join! w))))
    (void)))
