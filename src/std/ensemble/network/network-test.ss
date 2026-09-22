;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Owner reservation and election lifecycle tests
(import :std/test
        :std/error
        :std/crypto/pkey
        :std/sync/threads
        ../ucan/did
        ./config
        ./network)
(export network-owner-test)

(def (with-owner-identities (proc : :procedure))
  => :void
  (let ((a (generate-ed25519-key)) (b (generate-ed25519-key)))
    (unwind-protect
      (let (dids (list-sort string<? [(private-key->did a) (private-key->did b)]))
        (proc (car dids) (cadr dids)))
      (begin (foreign-release! (PrivKey-key a))
             (foreign-release! (PrivKey-key b))))))

(def network-owner-test
  (test-suite "Internal network owner"
    (test-case "delayed incoming identity cannot retarget a retired committed candidate"
      (with-owner-identities
       (lambda (a b)
         (using (owner (make-network-owner a (NetworkLimits)) :- NetworkOwner)
           (let ((selected (network-reserve! owner #f 100))
                 (unknown (network-reserve! owner #f 100)))
             (network-identify! owner selected b)
             (network-ready! owner selected 200)
             (check (network-claim-opening! owner selected 1) => 'opening)
             (network-commit! owner selected 1)
             (network-retire! owner selected)
             (check owner.commits => 1)
             (network-identify! owner unknown b)
             (network-ready! owner unknown 200)
             (check (network-claim-opening! owner unknown 2) => 'duplicate)
             (network-retire! owner unknown)
             (check owner.commits => 0)
             (check (owner.peers.length) => 0))))))

    (test-case "different-peer resolution releases history despite newer unknown arrivals"
      (with-owner-identities
       (lambda (a b)
         (let (key (generate-ed25519-key))
           (unwind-protect
             (using (owner (make-network-owner a (NetworkLimits)) :- NetworkOwner)
               (let ((selected (network-reserve! owner #f 100))
                     (old (network-reserve! owner #f 100)))
                 (network-identify! owner selected b)
                 (network-ready! owner selected 200)
                 (network-claim-opening! owner selected 1)
                 (network-commit! owner selected 1)
                 (let ((fresh (network-reserve! owner #f 100))
                       (new-unknown (network-reserve! owner #f 100)))
                   ;; A repeated commit must not move the cutoff to these arrivals.
                   (network-commit! owner selected 2)
                   (network-retire! owner selected)
                   (network-identify! owner fresh b)
                   (network-ready! owner fresh 200)
                   (check (network-claim-opening! owner fresh 2) => 'wait)
                   (network-identify! owner old (private-key->did key))
                   (check owner.commits => 0)
                   (check (network-claim-opening! owner fresh 3) => 'opening)
                   (network-retire! owner fresh)
                   (check (owner.peers.ref b #f) => #f)
                   (network-retire! owner old)
                   (network-retire! owner new-unknown)
                   (check (owner.peers.length) => 0))))
             (foreign-release! (PrivKey-key key)))))))

    (test-case "history bounds churn independently of physical capacity and recovers"
      (with-owner-identities
       (lambda (a b)
         (let ((key1 (generate-ed25519-key)) (key2 (generate-ed25519-key))
               (key3 (generate-ed25519-key)))
           (unwind-protect
             (let (dids (list-sort string<? [a b (private-key->did key1)
                                              (private-key->did key2) (private-key->did key3)]))
               (for-each
                (lambda (limits)
                  (let* ((owner (make-network-owner (car dids) limits))
                         (unknown (network-reserve! owner #f 100))
                         (cap (NetworkLimits-election-history limits)))
                    (let loop ((peers (cdr dids)) (count 0))
                      (let (selected (network-reserve! owner #f 100))
                        (network-identify! owner selected (car peers))
                        (network-ready! owner selected 200)
                        (check (network-claim-opening! owner selected 1) => 'opening)
                        (if (fx< count cap)
                          (begin
                            (network-commit! owner selected 1)
                            (network-retire! owner selected)
                            (check (NetworkOwner-commits owner) => (fx+ count 1))
                            (loop (cdr peers) (fx+ count 1)))
                          (begin
                            (check-exception (network-commit! owner selected 1) IOError?)
                            (check (NetworkOwner-commits owner) => cap)
                            (check (length (NetworkOwner-pending owner)) => 2)
                            (network-retire! owner unknown)
                            (check (NetworkOwner-commits owner) => 0)
                            (network-commit! owner selected 2)
                            (network-commit! owner selected 2)
                            (check (NetworkOwner-commits owner) => 1)
                            (network-retire! owner selected)
                            (check (NetworkOwner-commits owner) => 0)))))))
                [(NetworkLimits pending-connections: 2 election-history: 3)
                 (NetworkLimits pending-connections: 4 election-history: 1)]))
              (begin (foreign-release! (PrivKey-key key1))
                     (foreign-release! (PrivKey-key key2))
                     (foreign-release! (PrivKey-key key3))))))))

    (test-case "zero history permits physical reservations but rejects new commitments"
      (with-owner-identities
       (lambda (a b)
         (for-each
          (lambda (dids)
            (let* ((owner (make-network-owner (car dids) (NetworkLimits election-history: 0)))
                   (selected (network-reserve! owner #f 100)))
              (network-identify! owner selected (cadr dids))
              (network-ready! owner selected 200)
              (if (string<? (car dids) (cadr dids))
                (begin
                  (check (network-claim-opening! owner selected 1) => 'opening)
                  (check-exception (network-commit! owner selected 1) IOError?))
                (check-exception (network-claim-opening! owner selected 1) IOError?))
              (check (NetworkOwner-commits owner) => 0)
              (network-retire! owner selected)
              (check (hash-length (NetworkOwner-peers owner)) => 0)))
          [[a b] [b a]]))))

    (test-case "capacity, identity registration and retirement are separate"
      (with-owner-identities
       (lambda (a b)
         (using (owner (make-network-owner a (NetworkLimits pending-connections: 1))
                   :- NetworkOwner)
           (let ((work (network-outgoing! owner b 100 200))
                 (incoming (network-reserve! owner #f 100)))
             (check (network-reserve! owner work 100) => #f)
             (check (NetworkOutgoing-started? work) => #f)
             (check-exception (network-ready! owner incoming 200) ContextError?)
             (network-identify! owner incoming b)
             (check-exception (network-identify! owner incoming a) IOError?)
             (network-ready! owner incoming 200)
             ;; Unstarted work is not a hypothetical preferred reservation.
             (check (network-claim-opening! owner incoming 1) => 'opening)
             (network-shutdown! owner)
             (check (length owner.pending) => 1)
             (check-exception (network-reserve! owner #f 100) Closed?)
             (network-retire! owner incoming)
             (network-retire! owner incoming)
             (network-finish-outgoing! owner work)
             (check owner.pending => [])
             (check (owner.peers.length) => 0))))))

    (test-case "preferred logical work survives physical failure and retry gaps"
      (with-owner-identities
       (lambda (a b)
         (let* ((owner (make-network-owner a (NetworkLimits)))
                (work (network-outgoing! owner b 100 200))
                (out (network-reserve! owner work 999))
                (fallback (network-reserve! owner #f 100)))
           (check (eq? work (network-outgoing! owner b 999 999)) => #t)
           (check (NetworkReservation-deadline out) => 100)
           (network-identify! owner fallback b)
           (network-ready! owner fallback 200)
           (check (network-claim-opening! owner fallback 1) => 'wait)
           (network-retire! owner out)
           (check (network-claim-opening! owner fallback 2) => 'wait)
           (let (retry (network-reserve! owner work 999))
             (network-identify! owner retry b)
             (network-ready! owner retry 200)
             (check (network-claim-opening! owner retry 3) => 'opening)
             (check (network-claim-opening! owner fallback 3) => 'wait)
             (network-retire! owner retry))
           (network-finish-outgoing! owner work)
           (check (network-claim-opening! owner fallback 4) => 'opening)
           (network-retire! owner fallback)))))

    (test-case "expired preferred work does not hold a viable fallback"
      (with-owner-identities
       (lambda (a b)
         (let* ((owner (make-network-owner a (NetworkLimits)))
                (work (network-outgoing! owner b 10 200))
                (out (network-reserve! owner work 10))
                (fallback (network-reserve! owner #f 100)))
           (network-identify! owner fallback b)
           (network-ready! owner fallback 200)
           (check (network-claim-opening! owner fallback 10) => 'opening)
           (network-retire! owner out)
           (network-finish-outgoing! owner work)
           (network-retire! owner fallback)))))

    (test-case "larger readiness does not claim opening or block its opposite attempt"
      (with-owner-identities
       (lambda (a b)
         (let* ((owner (make-network-owner b (NetworkLimits)))
                (work (network-outgoing! owner a 100 200))
                (out (network-reserve! owner work 100))
                (in (network-reserve! owner #f 100)))
           (network-identify! owner out a)
           (network-ready! owner out 200)
           (network-identify! owner in a)
           (network-ready! owner in 200)
           ;; The remote coordinator chose IN, notwithstanding OUT's readiness.
           (check (network-claim-opening! owner in 1) => 'opening)
           (check (network-claim-opening! owner out 1) => 'duplicate)
           (network-retire! owner in)
           (check (network-claim-opening! owner out 2) => 'duplicate)
           (network-retire! owner out)
           (network-finish-outgoing! owner work)))))

    (test-case "commit cannot be preempted even after selected transport retirement"
      (with-owner-identities
       (lambda (a b)
         (let* ((owner (make-network-owner a (NetworkLimits)))
                (first (network-reserve! owner #f 100))
                (second (network-reserve! owner #f 100)))
           (for-each (lambda (candidate)
                       (network-identify! owner candidate b)
                       (network-ready! owner candidate 200))
                     [first second])
           (check (network-claim-opening! owner first 1) => 'opening)
           (check (network-outgoing! owner b 100 200) => #f)
           (check-exception (network-commit! owner second 1) ContextError?)
           (network-commit! owner first 1)
           (network-retire! owner first)
           (check (network-claim-opening! owner second 2) => 'duplicate)
           (network-retire! owner second)
           ;; A fully retired cohort does not ban independent future work.
           (let (work (network-outgoing! owner b 200 300))
             (check work ? NetworkOutgoing?)
             (network-finish-outgoing! owner work))))))

    (test-case "concurrent reservations cannot exceed the physical cap"
      (with-owner-identities
       (lambda (a b)
         (using (owner (make-network-owner a (NetworkLimits pending-connections: 3))
                   :- NetworkOwner)
           (let* ((workers (map (lambda (i)
                                 (spawn-thread (lambda () (network-reserve! owner #f 100))))
                               (iota 32)))
                  (reservations (filter values (map (lambda (worker) (thread-join!/error worker 5)) workers))))
             (check (length reservations) => 3)
             (check (length owner.pending) => 3)
             (for-each (lambda (reservation) (network-retire! owner reservation)) reservations)
             (check owner.pending => []))))))

    (test-case "opening is exclusive under contention and commit rechecks liveness"
      (with-owner-identities
       (lambda (a b)
         (let* ((owner (make-network-owner a (NetworkLimits)))
                (first (network-reserve! owner #f 100))
                (second (network-reserve! owner #f 100)))
           (for-each (lambda (candidate)
                       (network-identify! owner candidate b)
                       (network-ready! owner candidate 50))
                     [first second])
           (let* ((workers
                   (map (lambda (candidate)
                          (spawn-thread (lambda () (network-claim-opening! owner candidate 1))))
                        [first second]))
                  (results (map (lambda (worker) (thread-join!/error worker 5)) workers))
                  (winner (if (eq? (car results) 'opening) first second)))
             (check (list-sort (lambda (a b) (string<? (symbol->string a) (symbol->string b))) results)
                    => '(opening wait))
             (check-exception (network-commit! owner winner 50) Closed?)
             (check-exception (network-claim-opening! owner winner 100) Timeout?)
             (network-shutdown! owner)
             (check-exception (network-commit! owner winner 1) Closed?)
             (network-retire! owner first)
             (network-retire! owner second))))))))
