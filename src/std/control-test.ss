;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; True-multicore SMP tests for :std/control (SRFI-226, algebraic effects, generators, barriers).

(import :std/test
        :std/error
        :std/iter
        :std/control
        :std/sync/atomic
        :std/sync/spinlock
        :std/sync/rwlock
        :std/sync/channel)
(export control-test)

(define-effect eff-ask)
(define-effect eff-flip)
(define-effect eff-step)

(def control-test
  (test-suite "SRFI-226 control features & algebraic effects (:std/control)"
    (test-case "prompts, abort, reset and shift"
      (def tag (make-continuation-prompt-tag 'my-tag))
      (check (continuation-prompt-tag? tag) => #t)
      (check (continuation-prompt-available? tag) => #f)
      (check
       (call-with-continuation-prompt
        (lambda ()
          (check (continuation-prompt-available? tag) => #t)
          (+ 1 (abort-current-continuation tag 41)))
        tag
        (lambda (v) (+ v 1)))
       => 42)
      (check (reset (+ 10 (shift k (* 2 (k (k 5)))))) => 50)
      (check (reset (+ 1 (shift _ 99))) => 99))

    (test-case "continuation marks and exception-safe cleanup"
      ;; Use non-tail wrappers so all 3 frames are distinct both with and without
      ;; O(1) tail-call mark merging (##tail-call-with-r0).
      (def (id x) x)
      (check
       (with-continuation-mark 'k 1
         (id (with-continuation-mark 'k 2
               (id (with-continuation-mark 'other 'x
                     (let ((ms (current-continuation-marks)))
                       (list (continuation-mark-set? ms)
                             (continuation-mark-set->list ms 'k)
                             (continuation-mark-set-first ms 'k)
                             (call-with-immediate-continuation-mark 'other values #f)
                             (continuation-mark-set->list* ms '(k other) '-))))))))
       => (list #t '(2 1) 2 'x (list '#(- x) '#(2 -) '#(1 -))))
      ;; Exception unwinding must pop marks cleanly
      (check
       (with-continuation-mark 'outer 'ok
         (with-catch (lambda (_) (continuation-mark-set-first (current-continuation-marks) 'inner 'gone))
           (lambda ()
             (with-continuation-mark 'inner 'leaked
               (error "boom")))))
       => 'gone))

    (test-case "continuation barriers protect with-lock, do-with-spin-lock, and with-unwind-protect"
      (def mx (make-mutex 'barrier-mx))
      (def sl (SpinLock))
      ;; Direct barrier blocks composable capture
      (check-exception
       (reset
         (call-with-continuation-barrier
          (lambda ()
            (shift k (k 1)))))
       ContextError?)
      ;; with-lock blocks delimited capture AND unlocks mutex cleanly!
      (check-exception
       (reset
         (with-lock mx
           (lambda ()
             (shift k (k 1)))))
       ContextError?)
      ;; Verify mutex was unlocked cleanly by acquiring immediately
      (check (with-lock mx (lambda () 'unlocked-ok)) => 'unlocked-ok)
      ;; do-with-spin-lock blocks delimited capture AND unlocks SpinLock cleanly!
      (check-exception
       (reset
         (do-with-spin-lock sl
           (shift k (k 1))))
       ContextError?)
      (check (do-with-spin-lock sl 'spin-unlocked-ok) => 'spin-unlocked-ok))

    (test-case "SRFI-226 call/1cc atomic one-shot linearizability across SMP cores"
      (def captured #f)
      (def res
        (reset
          (+ 100
             (call/1cc
              (lambda (k)
                (set! captured k)
                (check (one-shot-continuation? k) => #t)
                (check (one-shot-continuation-consumed? k) => #f)
                (k 23))))))
      (check res => 123)
      (check (one-shot-continuation-consumed? captured) => #t)
      (check-exception (captured 1) ContextError?)
      ;; All-core threads race on the same one-shot composable continuation -> strictly 1 wins!
      ;; Capture raced-k on a clean thread (outside gxtest's dynamic-wind/unwind-protect)
      ;; so any racing core can legally invoke the captured continuation.
      (def nthr (max 4 (##current-vm-processor-count)))
      (def raced-k #f)
      (thread-join!
       (thread-start!
        (make-thread
         (lambda ()
           (reset
             (let ((v (call-with-one-shot-composable-continuation
                       (lambda (k)
                         (set! raced-k k)
                         (abort-current-continuation (default-continuation-prompt-tag) (lambda () 'captured))))))
               (* v 2)))))))
      (def wins (make-atomic-fxbox 0))
      (def fails (make-atomic-fxbox 0))
      (def start (make-atomic-fxbox 0))
      (def threads
        (for/collect (tid (in-range nthr))
          (thread-start!
           (make-thread
            (lambda ()
              (let spin ()
                (when (fx= (atomic-fxbox-ref start (memory-order acquire)) 0)
                  (spin)))
              (with-catch
               (lambda (e)
                 (when (ContextError? e)
                   (atomic-fxbox-fetch-add! fails 1)))
               (lambda ()
                 (let ((r (raced-k (+ tid 1))))
                   (when (fx= r (* (+ tid 1) 2))
                     (atomic-fxbox-fetch-add! wins 1))))))))))
      (atomic-fxbox-set! start 1 (memory-order release))
      (for-each thread-join! threads)
      (check (atomic-fxbox-ref wins) => 1)
      (check (atomic-fxbox-ref fails) => (- nthr 1))
      ;; Promote one-shot to multi-shot
      (def promo-k #f)
      (reset
        (let ((v (call-with-one-shot-composable-continuation
                  (lambda (k)
                    (set! promo-k k)
                    (abort-current-continuation (default-continuation-prompt-tag) (lambda () 'ok))))))
          (+ v 10)))
      (check (promote-one-shot-continuation! promo-k) => #t)
      (check (promo-k 5) => 15)
      (check (promo-k 20) => 30))

    (test-case "algebraic effects: tail fast path, C-runtime rewind, multishot, capabilities, generators"
      ;; Koka tail-resumptive zero-capture fast path
      (check
       (with-handler
         ((tail: (eff-ask) 42))
         (+ (perform eff-ask) (perform eff-ask)))
       => 84)
      ;; Suspending one-shot with C-runtime stack rewind (##continuation-try-rewind-oneshot!)
      (check
       (with-handler
         (((eff-step k x) (resume k (+ x 1)))
          (return: (v) (* v 10)))
         (let loop ((i 0) (acc 0))
           (if (fx= i 500)
             acc
             (loop (fx+ i 1) (perform eff-step acc)))))
       => 5000)
      ;; Multi-shot nondeterminism via resume-multishot
      (check
       (with-handler
         (((eff-flip k)
           (append (resume-multishot k #t)
                   (resume-multishot k #f)))
          (return: (v) (list v)))
         (let ((a (perform eff-flip))
               (b (perform eff-flip)))
           (cons a b)))
       => '((#t . #t) (#t . #f) (#f . #t) (#f . #f)))
      ;; Lexa O(1) lexical capabilities
      (check
       (call-with-tail-capability
        (lambda (x) (* x 3))
        (lambda (cap)
          (check (effect-capability? cap) => #t)
          (+ (perform-cap cap 4) (perform-cap cap 10))))
       => 42)
      ;; Direct-style generator
      (def gen
        (make-generator
         (lambda ()
           (let loop ((i 0))
             (when (fx< i 5)
               (yield (* i i))
               (loop (fx+ i 1)))))))
      (check (list (gen) (gen) (gen) (gen) (gen) (gen))
             => (list 0 1 4 9 16 #!eof)))

    (test-case "Exception unwinding cleanly pops prompts, effect handlers, capabilities & marks (zero TCState leak)"
      (def ptag (make-continuation-prompt-tag 'exn-unwind-tag))
      (def mkey (list 'exn-unwind-mark))
      (def eff-tmp (make-effect 'exn-unwind-eff))
      ;; 1. Exception escaping call-with-continuation-prompt
      (check-exception
       (call-with-continuation-prompt
        (lambda ()
          (with-continuation-mark mkey 'leaked
            (error "prompt-boom")))
        ptag)
       Error?)
      (check (continuation-prompt-available? ptag) => #f)
      (check (continuation-mark-set-first (current-continuation-marks) mkey #f) => #f)
      ;; 2. Exception escaping suspending with-handler
      (check-exception
       (with-handler
         (((eff-tmp k x) (resume k (+ x 1))))
         (with-continuation-mark mkey 'handler-leaked
           (error "handler-boom")))
       Error?)
      ;; Performing eff-tmp now MUST fail as unhandled (not jump into dead escape-k!)
      (check-exception (perform eff-tmp 1) ContextError?)
      (check (continuation-mark-set-first (current-continuation-marks) mkey #f) => #f)
      ;; 3. Exception escaping call-with-suspend-capability
      (def escaped-cap #f)
      (check-exception
       (call-with-suspend-capability
        (lambda (k x) (resume k (+ x 1)))
        (lambda (cap)
          (set! escaped-cap cap)
          (error "cap-boom")))
       Error?)
      (check-exception (perform-cap escaped-cap 1) ContextError?))

    (test-case "Cross-thread EffectContinuation one-shot handoff & RWLock continuation-barrier enforcement"
      ;; 1. Thread A captures one-shot EffectContinuation, hands it over Channel to Thread B,
      ;;    Thread B resumes it safely across OS threads without stack-rewind corruption.
      (def eff-handoff (make-effect 'cross-thread-handoff))
      (def ch (make-channel 4))
      (def result-ch (make-channel 4))
      (def producer
        (spawn/name 'ek-producer
          (lambda ()
            (let ((out
                   (with-handler
                     (((eff-handoff k x)
                       (channel-put ch (cons k x))
                       'suspended-on-a))
                     (let ((v (perform eff-handoff 21)))
                       (channel-put result-ch (* v 2))
                       'resumed-done))))
              out))))
      (def consumer
        (spawn/name 'ek-consumer
          (lambda ()
            (let* ((pair (channel-get ch))
                   (k (car pair))
                   (x (cdr pair)))
              ;; Resume Thread A's continuation on Thread B!
              (resume k (+ x 100))))))
      (check (thread-join! producer 5) => 'suspended-on-a)
      (check (thread-join! consumer 5) => 'resumed-done)
      (check (channel-get result-ch 5) => 242)

      ;; 2. RWLock with-read-lock and with-write-lock enforce SRFI-226 continuation barriers
      (def rw (make-rwlock 'barrier-rw))
      (def btag (make-continuation-prompt-tag 'rw-barrier-tag))
      (check-exception
       (call-with-continuation-prompt
        (lambda ()
          (with-read-lock rw
            (lambda ()
              (call-with-composable-continuation (lambda (k) (k 1)) btag))))
        btag)
       ContextError?)
      (check-exception
       (call-with-continuation-prompt
        (lambda ()
          (with-write-lock rw
            (lambda ()
              (call-with-composable-continuation (lambda (k) (k 1)) btag))))
        btag)
       ContextError?)
      ;; RWLock must remain completely unlocked and usable after both barrier exceptions!
      (check (with-write-lock rw (lambda () 'rw-healthy)) => 'rw-healthy)
      (check (with-read-lock rw (lambda () 'rw-readable)) => 'rw-readable))

    (test-case "SMP inline atomic EffectContinuation: 8-thread racing one-shot resume exact-1-winner + 0/1/2/3-arg perform"
      ;; 1. Verify 0-arg, 1-arg, 2-arg, and 3-arg suspending perform + perform-cap fast paths
      (def e0 (make-effect 'e0))
      (def e1 (make-effect 'e1))
      (def e2 (make-effect 'e2))
      (def e3 (make-effect 'e3))
      (def res
        (with-handler
          (((e0 k) (resume k 'zero))
           ((e1 k a) (resume k (+ a 1)))
           ((e2 k a b) (resume k (+ a b)))
           ((e3 k a b c) (resume k (+ a b c))))
          (list (perform e0)
                (perform e1 10)
                (perform e2 20 30)
                (perform e3 1 2 3))))
      (check res => '(zero 11 50 6))

      ;; 2. 8 concurrent threads race to resume the SAME one-shot EffectContinuation:
      ;;    EXACTLY 1 thread wins via inline __atomic-struct-cas!, all 7 losers get ContextError!
      (def race-eff (make-effect 'race-oneshot))
      (def rounds 20)
      (def total-wins (make-atomic-fxbox 0))
      (def total-losses (make-atomic-fxbox 0))
      (let rloop ((r 0))
        (when (fx< r rounds)
          (let ((k-ch (make-channel 1))
                (done-ch (make-channel 4)))
            ;; Capture on a clean thread outside gxtest's unwind-protect frame!
            (let ((cap-thr
                   (spawn/name 'ek-cap
                     (lambda ()
                       (with-handler
                         (((race-eff k) (channel-put k-ch k) 'captured))
                         (let ((v (perform race-eff)))
                           (channel-put done-ch v)))))))
              (let ((captured-k (channel-get k-ch 5)))
                (thread-join! cap-thr 5)
                (let ((racers
                       (let loop ((i 0) (acc '()))
                         (if (fx= i 8)
                           acc
                           (let ((id i))
                             (loop (fx+ i 1)
                                   (cons
                                    (spawn/name 'ek-race
                                      (lambda ()
                                        (with-catch
                                         (lambda (e)
                                           (if (ContextError? e)
                                             (atomic-fxbox-fetch-add! total-losses 1 (memory-order relaxed))
                                             (raise e)))
                                         (lambda ()
                                           (resume captured-k id)
                                           (atomic-fxbox-fetch-add! total-wins 1 (memory-order relaxed))))))
                                    acc)))))))
                  (for-each thread-join! racers)
                  (let ((winner (channel-get done-ch 5)))
                    (check (and (fixnum? winner) (fx>= winner 0) (fx< winner 8)) => #t))))))
          (rloop (fx+ r 1))))
      (check (atomic-fxbox-ref total-wins (memory-order acquire)) => rounds)
      (check (atomic-fxbox-ref total-losses (memory-order acquire)) => (* rounds 7)))))
