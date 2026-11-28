;;; -*- Gerbil -*-
;;; © Gerbil Contributors
;;; Torture-grade true-multicore SMP tests for Gerbil Actors, ActorNursery,
;;; SRFI-226 actor-context propagation, selective mailbox extraction, and
;;; zero-bridge-thread Fiber <-> Actor RPC router under p4 & full host cores.

(import :std/test
        :std/error
        :std/iter
        :std/control
        :std/sync/atomic
        :std/sync/barrier
        :std/sync/fiber
        :std/sync/threads
        :std/actor)
(export nursery-test)

(def proto:/torture-a "/gerbil/smp-actor-torture/a/v0")
(def proto:/torture-b "/gerbil/smp-actor-torture/b/v0")
(def proto:/torture-chain "/gerbil/smp-actor-torture/chain/v0")

(def nursery-test
  (test-suite "True-multicore SMP Actor, ActorNursery & Fiber-Actor Router Torture"
    (test-case "ActorNursery cascading failure teardown, explicit cancel, and nested nurseries"
      ;; 1. Cascading failure kills 24 blocked sibling actors (in <-, ->>, thread-sleep!)
      ;;    with zero leaked threads in the nursery's thread-group.
      (def captured-tg #f)
      (def ready (make-atomic-fxbox 0))
      (check-exception
       (with-actor-nursery
        (lambda (n)
          (set! captured-tg (ActorNursery-tgroup n))
          ;; 8 actors blocked in <-
          (for (_ (in-range 8))
            (nursery-spawn-actor/name n 'blocked-recv
              (lambda ()
                (atomic-fxbox-fetch-add! ready 1 (memory-order release))
                (<- protocol: proto:/torture-a ('never (--> 'ok))))))
          ;; 8 actors blocked in thread-sleep!
          (for (_ (in-range 8))
            (nursery-spawn-actor/name n 'blocked-sleep
              (lambda ()
                (atomic-fxbox-fetch-add! ready 1 (memory-order release))
                (thread-sleep! 60))))
          ;; 8 actors blocked in ->> against a silent target
          (let ((sink (nursery-spawn-actor/name n 'silent-sink
                        (lambda () (thread-sleep! 60)))))
            (for (_ (in-range 8))
              (nursery-spawn-actor/name n 'blocked-rpc
                (lambda ()
                  (atomic-fxbox-fetch-add! ready 1 (memory-order release))
                  (->> sink 'ping proto:/torture-a timeout: 60)))))
          ;; Wait for all 24 siblings to enter their blocked states, then trigger failure
          (let wait ()
            (when (fx< (atomic-fxbox-ref ready (memory-order acquire)) 24)
              (thread-yield!)
              (wait)))
          (nursery-spawn-actor/name n 'trigger-boom
            (lambda () (error "cascading-actor-failure")))))
       (lambda (e) (and (Error? e) (equal? (error-message e) "cascading-actor-failure"))))
      ;; Every single thread in the nursery thread-group must be dead/reaped!
      (let ((survivors (filter (lambda (t) (not (thread-dead? t)))
                               (thread-group->thread-list* captured-tg))))
        (check survivors => '()))

      ;; 2. Explicit actor-nursery-cancel! deterministically tears down blocking siblings
      (def cancel-tg #f)
      (def cancel-ready (make-atomic-fxbox 0))
      (def cancel-res
        (with-actor-nursery
         (lambda (n)
           (set! cancel-tg (ActorNursery-tgroup n))
           (for (_ (in-range 8))
             (nursery-spawn-actor/name n 'cancel-waiter
               (lambda ()
                 (atomic-fxbox-fetch-add! cancel-ready 1 (memory-order release))
                 (<- protocol: proto:/torture-a ('never (--> 'ok))))))
           (let wait ()
             (when (fx< (atomic-fxbox-ref cancel-ready (memory-order acquire)) 8)
               (thread-yield!)
               (wait)))
           (check (actor-nursery-cancelled? n) => #f)
           (actor-nursery-cancel! n)
           (check (actor-nursery-cancelled? n) => #t)
           'cancelled-cleanly)))
      (check cancel-res => 'cancelled-cleanly)
      (check (filter (lambda (t) (not (thread-dead? t)))
                     (thread-group->thread-list* cancel-tg))
             => '())

      ;; 3. Nested ActorNursery + multi-hop SRFI-226 actor-context inheritance & override
      (def nested-out
        (with-actor-context '((req . "root-1") (role . "outer"))
          (lambda ()
            (with-actor-nursery
             (lambda (outer)
               (let ((parent-srv
                      (nursery-spawn-actor/name outer 'outer-actor
                        (lambda ()
                          (with-actor-context '((role . "inner") (hop . 2))
                            (lambda ()
                              (with-actor-nursery
                               (lambda (inner)
                                 (let ((leaf
                                        (nursery-spawn-actor/name inner 'leaf-actor
                                          (lambda ()
                                            (<- protocol: proto:/torture-a
                                                ('whoami
                                                 (--> (list (actor-context-ref 'req)
                                                            (actor-context-ref 'role)
                                                            (actor-context-ref 'hop)
                                                            (actor-context-ref 'missing 'none)))))))))
                                   (let ((ans (->> leaf 'whoami proto:/torture-a timeout: 5)))
                                     (<- protocol: proto:/torture-a
                                         ('fetch (--> ans)))))))))))))
                 (->> parent-srv 'fetch proto:/torture-a timeout: 5)))))))
      (check nested-out => '("root-1" "inner" 2 none)))

    (test-case "Zero-bridge-thread fiber-actor-call 500-fiber SMP storm, non-blocking carriers & timeouts"
      (with-actor-nursery
       (lambda (an)
         ;; 12 concurrent Actor servers handling 500 concurrent fibers via sharded reply router
         (def nservers 12)
         (def servers
           (list->vector
            (map (lambda (sid)
                   (nursery-spawn-actor/name an (list 'router-srv sid)
                     (lambda ()
                       (let serve ()
                         (<- protocol: proto:/torture-a
                             (['mul x y]
                              (--> (* x y))
                              (serve))
                             (['slow ms val]
                              (thread-sleep! (/ ms 1000.0))
                              (--> val)
                              (serve))
                             ('blackhole
                              ;; Intentionally never replies to exercise exact router timeout!
                              (serve))
                             ('stop
                              (--> 'stopped)))))))
                 (iota nservers))))
         ;; 1. 500 fibers concurrently RPC 12 servers + verify SRFI-226 actor-context survives
         ;;    suspension and cross-worker work-stealing migration!
         (def total-sum
           (run-fibers
            (lambda ()
              (let ((acc (make-atomic-fxbox 0))
                    (ctx-ok (make-atomic-fxbox 0)))
                (with-nursery
                 (lambda (fn)
                   (for (i (in-range 1 501))
                     (let ((v i)
                           (srv (vector-ref servers (fxmodulo i nservers))))
                       (fiber-spawn
                        (lambda ()
                          (with-actor-context (list (cons 'fid v))
                            (lambda ()
                              (let ((rep (fiber-actor-call srv ['mul v 3] proto:/torture-a timeout: 10)))
                                (atomic-fxbox-fetch-add! acc rep (memory-order relaxed))
                                (when (eqv? (actor-context-ref 'fid) v)
                                  (atomic-fxbox-fetch-add! ctx-ok 1 (memory-order relaxed)))))))
                        fn)))))
                (check (atomic-fxbox-ref ctx-ok (memory-order acquire)) => 500)
                (atomic-fxbox-ref acc (memory-order acquire))))))
         (check total-sum => (* 3 (/ (* 500 501) 2)))

         ;; 2. Prove fiber-actor-call NEVER blocks OS carrier threads:
         ;;    Only 2 carrier workers, 16 fibers wait 60ms on slow actor while 200 compute
         ;;    fibers run concurrently -> total wall time stays ~80-150ms (NOT 16*60ms=960ms)!
         (def t0 (##current-time-point))
         (def slow-res
           (run-fibers
            (lambda ()
              (let ((slow-sum (make-atomic-fxbox 0))
                    (fast-sum (make-atomic-fxbox 0)))
                (with-nursery
                 (lambda (fn)
                   (for (i (in-range 16))
                     (let ((v i)
                           (srv (vector-ref servers (fxmodulo i nservers))))
                       (fiber-spawn
                        (lambda ()
                          (let ((r (fiber-actor-call srv ['slow 50 v] proto:/torture-a timeout: 5)))
                            (atomic-fxbox-fetch-add! slow-sum r (memory-order relaxed))))
                        fn)))
                   (for (j (in-range 200))
                     (let ((v j))
                       (fiber-spawn
                        (lambda ()
                          (fiber-yield)
                          (atomic-fxbox-fetch-add! fast-sum v (memory-order relaxed)))
                        fn)))))
                (cons (atomic-fxbox-ref slow-sum) (atomic-fxbox-ref fast-sum))))
            workers: 2))
         (def elapsed (- (##current-time-point) t0))
         (check slow-res => (cons (/ (* 15 16) 2) (/ (* 199 200) 2)))
         (check (< elapsed 0.7) => #t)

         ;; 3. Exact timeout semantics when actor never replies (Timeout exception, zero hang!)
         (def timed-out
           (run-fibers
            (lambda ()
              (let ((cnt (make-atomic-fxbox 0)))
                (with-nursery
                 (lambda (fn)
                   (for (i (in-range 8))
                     (let ((srv (vector-ref servers (fxmodulo i nservers))))
                       (fiber-spawn
                        (lambda ()
                          (with-catch
                           (lambda (e)
                             (when (Timeout? e)
                               (atomic-fxbox-fetch-add! cnt 1 (memory-order relaxed))))
                           (lambda ()
                             (fiber-actor-call srv 'blackhole proto:/torture-a timeout: 0.04))))
                        fn)))))
                (atomic-fxbox-ref cnt)))))
         (check timed-out => 8)

         (for (s (in-range nservers))
           (check (->> (vector-ref servers s) 'stop proto:/torture-a timeout: 5) => 'stopped)))))

    (test-case "12-to-1 Actor selective receive, multi-step ->>>/-->>, expired envelopes & concurrent sender storm"
      (with-actor-nursery
       (lambda (an)
         ;; Multi-step threaded conversation server (->>> / -->>) + mixed protocols + raw noise
         (def hub
           (nursery-spawn-actor/name an 'multi-proto-hub
             (lambda ()
               (let serve ((done-a 0) (done-b 0))
                 (if (and (fx= done-a 120) (fx= done-b 120))
                   (<- protocol: proto:/torture-a
                       ('summary (--> (cons done-a done-b))))
                   (<- protocol: proto:/torture-a
                       (['step1 x]
                        (-->> (+ x 10)
                              (['step2 y]
                               (--> (* y 2))))
                        (serve (fx+ done-a 1) done-b))
                       protocol: proto:/torture-b
                       (['ping z]
                        (--> (+ z 1))
                        (serve done-a (fx+ done-b 1)))))))))
         ;; 12 concurrent producers sending interleaved proto-a (->>>/-->>), proto-b (->>),
         ;; expired envelopes, and raw noise messages simultaneously!
         (def start-bar (make-barrier 12))
         (def ok-cnt (make-atomic-fxbox 0))
         (def senders
           (map (lambda (tid)
                  (nursery-spawn-actor/name an (list 'storm-sender tid)
                    (lambda ()
                      (let ((me (actor-local-peer)))
                        (barrier-post! start-bar)
                        (barrier-wait! start-bar)
                        (for (k (in-range 10))
                          ;; Inject expired envelope + raw noise
                          (when (fx= (fxand k 3) 0)
                            (thread-send (&LocalActor-thread hub)
                                         (Envelope source: me dest: hub message: 'expired
                                                   protocol: proto:/torture-a
                                                   options: (Options expire: 0)))
                            (thread-send (&LocalActor-thread hub) 'raw-noise-token))
                          ;; Multi-step threaded RPC (->>> + send-reply! + <- continue:)
                          (let* ((seed (+ (* tid 100) k))
                                 (e1 (->>> hub ['step1 seed] proto:/torture-a timeout: 10))
                                 (v1 (Envelope-message e1))
                                 (seq2 (actor-next-seqno!)))
                            (send-reply! ['step2 (+ v1 5)] e1 continue: (ReplyOption seqno: seq2))
                            (let ((v2 (<- continue: seq2 protocol: proto:/torture-a timeout: 10
                                          (r r))))
                              (when (= v2 (* (+ (+ seed 10) 5) 2))
                                (atomic-fxbox-fetch-add! ok-cnt 1 (memory-order relaxed)))))
                          ;; Concurrent protocol B RPC
                          (let ((b-ans (->> hub ['ping k] proto:/torture-b timeout: 10)))
                            (when (= b-ans (+ k 1))
                              (atomic-fxbox-fetch-add! ok-cnt 1 (memory-order relaxed)))))))))
                (iota 12)))
         (for-each (lambda (p) (thread-join! (&LocalActor-thread p) 15)) senders)
         (check (atomic-fxbox-ref ok-cnt (memory-order acquire)) => 240)
         (check (->> hub 'summary proto:/torture-a timeout: 5) => '(120 . 120))))

    (test-case "Post-idle cold-wake (>50ms hot-idle expiry) sharded fiber-actor-call router & W/W activation"
      (def expected-workers (max 1 (##current-vm-processor-count)))
      (with-actor-nursery
       (lambda (an)
         (def nservers (max 4 expected-workers))
         (def servers
           (list->vector
            (map (lambda (sid)
                   (nursery-spawn-actor/name an (list 'cold-router-srv sid)
                     (lambda ()
                       (let serve ()
                         (<- protocol: proto:/torture-a
                             (['echo v]
                              (--> (fx+ v 1))
                              (serve))
                             ('blackhole
                              (serve))
                             ('stop
                              (--> 'stopped)))))))
                 (iota nservers))))
         (def total
           (run-fibers
            (lambda ()
              (let ((sum (make-atomic-fxbox 0))
                    (timeouts (make-atomic-fxbox 0)))
                ;; 3 cycles: warm RPC wave -> 85ms idle (exceeds 50ms router hot-idle
                ;; grace window AND parks all W-1 fiber workers!) -> concurrent burst + timeout
                (for (cycle (in-range 3))
                  (when (fx> cycle 0)
                    (fiber-sleep! 0.085))
                  (with-nursery
                   (lambda (fn)
                     (for (i (in-range 1 81))
                       (let ((v i)
                             (srv (vector-ref servers (fxmodulo (fx+ i cycle) nservers))))
                         (fiber-spawn
                          (lambda ()
                            (let ((r (fiber-actor-call srv ['echo v] proto:/torture-a timeout: 5)))
                              (atomic-fxbox-fetch-add! sum r (memory-order relaxed))))
                          fn)))
                     ;; Mix 4 timeout RPCs per cold-wake wave to verify timer sweep recovery
                     (for (j (in-range 4))
                       (let ((srv (vector-ref servers (fxmodulo j nservers))))
                         (fiber-spawn
                          (lambda ()
                            (with-catch
                             (lambda (e)
                               (when (Timeout? e)
                                 (atomic-fxbox-fetch-add! timeouts 1 (memory-order relaxed))))
                             (lambda ()
                               (fiber-actor-call srv 'blackhole proto:/torture-a timeout: 0.03))))
                          fn))))))
                (cons (atomic-fxbox-ref sum (memory-order acquire))
                      (atomic-fxbox-ref timeouts (memory-order acquire)))))))
         (check (car total) => (* 3 (+ (/ (* 80 81) 2) 80)))
         (check (cdr total) => 12)
         (for (s (in-range nservers))
           (check (->> (vector-ref servers s) 'stop proto:/torture-a timeout: 5) => 'stopped))))))))
