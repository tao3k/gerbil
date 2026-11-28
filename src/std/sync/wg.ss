;;; -*- Gerbil -*-
;;; © vyzo
;;; transient parallel workgroups (SMP lock-free MPMC queue + lazy condvar park)
(import :std/error
        :std/iter
        :gerbil/runtime/util
        ./atomic
        ./concurrent)
(export WG? make-wg wg-add! wg-wait!)

(defstruct WG ((q        :- LFQueue)
               (closed   :- AtomicFxBox)
               (spinning :- AtomicFxBox)
               (sleepers :- AtomicFxBox)
               (waking   :- AtomicFxBox)
               (mx       :- :mutex)
               (cv       :- :condvar)
               workers)
  final: #t)

(def (make-wg cores)
  (let* ((q (make-lf-queue))
         (closed (make-atomic-fxbox 0))
         (spinning (make-atomic-fxbox 0))
         (sleepers (make-atomic-fxbox 0))
         (waking (make-atomic-fxbox 0))
         (mx (make-mutex 'wg))
         (cv (make-condition-variable 'wg))
         (wg (WG q closed spinning sleepers waking mx cv #f))
         (threads (map (lambda (x) (spawn/name [worker x] worker wg)) (iota cores))))
    (set! (&WG-workers wg) threads)
    wg))

(def (wg-wake-one! (wg :- WG))
  ;; SeqCst fence orders prior enqueue before observing spinning/waking/sleepers.
  (atomic-fence (memory-order sequentially-consistent))
  (when (and (fx= (atomic-fxbox-ref wg.spinning (memory-order acquire)) 0)
             (fx= (atomic-fxbox-ref wg.waking (memory-order acquire)) 0)
             (fx> (atomic-fxbox-ref wg.sleepers (memory-order acquire)) 0))
    (mutex-lock! wg.mx)
    (when (and (fx= (atomic-fxbox-ref wg.closed (memory-order acquire)) 0)
               (fx= (atomic-fxbox-ref wg.spinning (memory-order acquire)) 0)
               (fx= (atomic-fxbox-ref wg.waking (memory-order acquire)) 0)
               (fx> (atomic-fxbox-ref wg.sleepers (memory-order acquire)) 0))
      ;; Inside mx with waking=0 and closed=0, sleepers>0 guarantees a worker is
      ;; parked on cv and will wake, increment spinning, decrement sleepers, and clear waking.
      (atomic-fxbox-set! wg.waking 1 (memory-order release))
      (condition-variable-signal! wg.cv))
    (mutex-unlock! wg.mx)))

(def (worker (wg :- WG))
  (let ((q wg.q)
        (closed wg.closed)
        (spinning wg.spinning)
        (sleepers wg.sleepers)
        (waking wg.waking)
        (mx wg.mx)
        (cv wg.cv))
    (let loop ((spins 0) (is-spinning? #f))
      (let-values (((ok thunk) (lf-queue-try-dequeue! q)))
        (if ok
          (begin
            (when is-spinning?
              (let ((prev (atomic-fxbox-fetch-sub! spinning 1 (memory-order acquire-release))))
                ;; If we were the last searching worker and more work is already queued,
                ;; cascade-wake one sleeper for immediate multicore ramp-up.
                (when (and (fx= prev 1) (not (lf-queue-empty? q)))
                  (wg-wake-one! wg))))
            (thunk)
            (loop 0 #f))
          (cond
           ((fx> (atomic-fxbox-ref closed (memory-order acquire)) 0)
            (when is-spinning?
              (atomic-fxbox-fetch-sub! spinning 1 (memory-order acquire-release)))
            ;; Drain any final item enqueued concurrently before close
            (let-values (((ok2 thunk2) (lf-queue-try-dequeue! q)))
              (when ok2
                (thunk2)
                (loop 0 #f))))
           ((fx< spins 64)
            (unless is-spinning?
              (atomic-fxbox-fetch-add! spinning 1 (memory-order acquire-release)))
            (__cpu-relax!)
            (loop (fx+ spins 1) #t))
           ((fx< spins 80)
            (thread-yield!)
            (loop (fx+ spins 1) #t))
           (else
            (when is-spinning?
              (atomic-fxbox-fetch-sub! spinning 1 (memory-order sequentially-consistent)))
            (mutex-lock! mx)
            (atomic-fxbox-fetch-add! sleepers 1 (memory-order sequentially-consistent))
            (let-values (((ok2 thunk2) (lf-queue-try-dequeue! q)))
              (cond
               (ok2
                (atomic-fxbox-fetch-sub! sleepers 1 (memory-order release))
                (mutex-unlock! mx)
                (when (not (lf-queue-empty? q))
                  (wg-wake-one! wg))
                (thunk2)
                (loop 0 #f))
               ((fx> (atomic-fxbox-ref closed (memory-order acquire)) 0)
                (atomic-fxbox-fetch-sub! sleepers 1 (memory-order release))
                (mutex-unlock! mx)
                (void))
               (else
                (mutex-unlock! mx cv)
                ;; Transition woken sleeper directly into searching state before
                ;; clearing waking so producers observe spinning>=1 or waking=1.
                (atomic-fxbox-fetch-add! spinning 1 (memory-order sequentially-consistent))
                (atomic-fxbox-fetch-sub! sleepers 1 (memory-order sequentially-consistent))
                (atomic-fxbox-swap! waking 0 (memory-order sequentially-consistent))
                (loop 0 #t)))))))))))

(def (wg-add! wg thunk)
  (if (WG? wg)
    (using (wg :- WG)
      (when (fx> (atomic-fxbox-ref wg.closed (memory-order acquire)) 0)
        (raise-io-closed wg-add! "workgroup is closed" wg))
      (lf-queue-enqueue! wg.q thunk)
      ;; Zero-mutex fast path whenever any worker is searching or already waking!
      (wg-wake-one! wg))
    (thunk)))

(def (wg-wait! wg)
  (if (WG? wg)
    (using (wg :- WG)
      (atomic-fxbox-set! wg.closed 1 (memory-order release))
      (mutex-lock! wg.mx)
      (condition-variable-broadcast! wg.cv)
      (mutex-unlock! wg.mx)
      (for (w wg.workers)
        (with-catch
          (lambda (e) (raise (if (uncaught-exception? e) (uncaught-exception-reason e) e)))
          (cut thread-join! w))))
    (void)))
