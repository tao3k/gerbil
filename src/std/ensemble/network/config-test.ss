;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Ensemble network configuration contracts
(import :std/test
        :std/time/timeout
        ./config)
(export config-test)

(def config-test
  (test-suite "network configuration"
    (test-case "defaults"
      (def c (NetworkConfig))
      (check (NetworkConfig-connection-ttl c) => 3600)
      (check (NetworkConfig-stream-ttl c) => 3600)
      (check (NetworkConfig-handshake-timeout c) => 10)
      (check (NetworkConfig-stream-open-timeout c) => 10)
      (check (NetworkConfig-renewal-timeout c) => 10)
      (for-each
        (lambda (t) (check (eq? t !NoTimeout) => #t))
        [(NetworkConfig-connection-input-timeout c)
         (NetworkConfig-connection-output-timeout c)
         (NetworkConfig-stream-input-timeout c)
         (NetworkConfig-stream-output-timeout c)])
      (def n (NetworkLimits))
      (def l (NetworkLimits-connection-limits n))
      (def s (ConnectionLimits-stream-limits l))
      (check (NetworkLimits-pending-connections n) => 32)
      (check (NetworkLimits-election-history n) => 256)
      (check (ConnectionLimits-total-streams l) => 128)
      (check (ConnectionLimits-pending-streams l) => 16)
      (check (ConnectionLimits-renewing-streams l) => 16)
      (check (ConnectionLimits-hello-payload l) => 4096)
      (check (ConnectionLimits-data-payload l) => 16384)
      (check (ConnectionLimits-control-payload l) => 65536)
      (check (ConnectionLimits-pending-control-frames l) => 256)
      (check (ConnectionLimits-pending-control-bytes l) => 262144)
      (check (ConnectionLimits-control-burst l) => 8)
      (check (StreamLimits-recv-window s) => 262144)
      (check (StreamLimits-outbound-buffer s) => 262144))
    (test-case "overrides and independent limits"
      (def t (IOTimeout 1/2))
      (def c (NetworkConfig connection-ttl: 1 stream-ttl: 7200
                            handshake-timeout: 1 stream-open-timeout: 2
                            renewal-timeout: 20
                            connection-input-timeout: t connection-output-timeout: t
                            stream-input-timeout: t stream-output-timeout: t))
      (check (NetworkConfig-connection-ttl c) => 1)
      (check (NetworkConfig-stream-ttl c) => 7200)
      (check (NetworkConfig-handshake-timeout c) => 1)
      (check (NetworkConfig-stream-open-timeout c) => 2)
      (check (NetworkConfig-renewal-timeout c) => 20)
      (for-each
        (lambda (value) (check (eq? value t) => #t))
        [(NetworkConfig-connection-input-timeout c)
         (NetworkConfig-connection-output-timeout c)
         (NetworkConfig-stream-input-timeout c)
         (NetworkConfig-stream-output-timeout c)])
      (def s (StreamLimits recv-window: #x80000000 outbound-buffer: 1))
      (def l (ConnectionLimits total-streams: 0 pending-streams: 100 renewing-streams: 1
                               hello-payload: 1 data-payload: #xffffffff
                               control-payload: 1 pending-control-frames: 1
                               pending-control-bytes: 1 control-burst: 100
                               stream-limits: s))
      (def n (NetworkLimits pending-connections: 0 election-history: 100 connection-limits: l))
      (check (NetworkLimits-pending-connections n) => 0)
      (check (NetworkLimits-election-history n) => 100)
      (def zero-history (NetworkLimits election-history: 0))
      (check (NetworkLimits-election-history zero-history) => 0)
      (check (NetworkLimits-pending-connections zero-history) => 32)
      (check (eq? (NetworkLimits-connection-limits n) l) => #t)
      (check (eq? (ConnectionLimits-stream-limits l) s) => #t)
      (check (ConnectionLimits-total-streams l) => 0)
      (check (ConnectionLimits-pending-streams l) => 100)
      (check (ConnectionLimits-renewing-streams l) => 1)
      (check (ConnectionLimits-hello-payload l) => 1)
      (check (ConnectionLimits-data-payload l) => #xffffffff)
      (check (ConnectionLimits-control-payload l) => 1)
      (check (ConnectionLimits-pending-control-frames l) => 1)
      (check (ConnectionLimits-pending-control-bytes l) => 1)
      (check (ConnectionLimits-control-burst l) => 100)
      (check (StreamLimits-recv-window s) => #x80000000)
      (check (StreamLimits-outbound-buffer s) => 1))
    (test-case "stream capacities are exact powers of two"
      (for-each
       (lambda (x)
         (def s (StreamLimits recv-window: x outbound-buffer: x))
         (check (StreamLimits-recv-window s) => x)
         (check (StreamLimits-outbound-buffer s) => x))
       [1 2 4 8 262144])
      (for-each
       (lambda (x)
         (check-exception (StreamLimits recv-window: x) true)
         (check-exception (StreamLimits outbound-buffer: x) true))
       [3 5 6 7 262143 262145 #xffffffff (expt 2 100)])
      ;; Check native capacity boundaries without allocating payload storage.
      (let (largest-power
            (let loop ((power 1))
              (if (fixnum? (* 2 power)) (loop (* 2 power)) power)))
        (check (StreamLimits-outbound-buffer (StreamLimits outbound-buffer: largest-power))
               => largest-power)
        (check-exception (StreamLimits outbound-buffer: (* 2 largest-power)) true)))
    (test-case "invalid TTLs and operation durations"
      (for-each
       (lambda (x)
         (check-exception (NetworkConfig connection-ttl: x) true)
         (check-exception (NetworkConfig stream-ttl: x) true))
       [0 -1 1/2 1.0 +inf.0 +nan.0 #f "1"])
      (for-each
       (lambda (x)
         (check-exception (NetworkConfig handshake-timeout: x) true)
         (check-exception (NetworkConfig stream-open-timeout: x) true)
         (check-exception (NetworkConfig renewal-timeout: x) true))
       [0 -1 1/2 0.25 1.0 +inf.0 -inf.0 +nan.0 1+2i #f (IOTimeout 10)]))
    (test-case "invalid limits"
      (for-each
        (lambda (x)
          (check-exception (StreamLimits recv-window: x) true)
          (check-exception (ConnectionLimits hello-payload: x) true)
          (check-exception (ConnectionLimits data-payload: x) true)
          (check-exception (ConnectionLimits control-payload: x) true))
        [0 -1 1.0 1/2 #x100000000 #f])
      (for-each
        (lambda (x)
          (check-exception (StreamLimits outbound-buffer: x) true)
          (check-exception (ConnectionLimits renewing-streams: x) true)
          (check-exception (ConnectionLimits pending-control-frames: x) true)
          (check-exception (ConnectionLimits pending-control-bytes: x) true)
          (check-exception (ConnectionLimits control-burst: x) true))
        [0 -1 1.0 1/2 (+ (##greatest-fixnum) 1) #x10000000000000000 #f])
      (for-each
        (lambda (x)
          (check-exception (NetworkLimits pending-connections: x) true)
          (check-exception (NetworkLimits election-history: x) true)
          (check-exception (ConnectionLimits total-streams: x) true)
          (check-exception (ConnectionLimits pending-streams: x) true))
        [-1 1.0 1/2 #x10000000000000000 #f]))
    (test-case "nested object and timeout contracts"
      (check-exception (NetworkLimits connection-limits: (StreamLimits)) true)
      (check-exception (ConnectionLimits stream-limits: (NetworkLimits)) true)
      (for-each
       (lambda (x)
         (check-exception (NetworkConfig connection-input-timeout: x) true)
         (check-exception (NetworkConfig connection-output-timeout: x) true)
         (check-exception (NetworkConfig stream-input-timeout: x) true)
         (check-exception (NetworkConfig stream-output-timeout: x) true))
       [#f 10 "10"]))
    (test-case "checked setters before use"
      (def config (NetworkConfig))
      (def limits (StreamLimits))
      (def connection-limits (ConnectionLimits))
      (set! (NetworkConfig-connection-ttl config) 7200)
      (set! (StreamLimits-recv-window limits) 1)
      (set! (ConnectionLimits-renewing-streams connection-limits) (##greatest-fixnum))
      (check (NetworkConfig-connection-ttl config) => 7200)
      (check (StreamLimits-recv-window limits) => 1)
      (check (ConnectionLimits-renewing-streams connection-limits) => (##greatest-fixnum))
      (check (ConnectionLimits-renewing-streams
              (ConnectionLimits renewing-streams: (##greatest-fixnum))) => (##greatest-fixnum))
      (for-each
        (lambda (bad)
          (check-exception (set! (ConnectionLimits-renewing-streams connection-limits) bad) true))
        [0 -1 1.0 1/2 (+ (##greatest-fixnum) 1) #f])
      (check-exception (set! (NetworkConfig-connection-ttl config) 0) true)
      (check-exception (set! (NetworkConfig-handshake-timeout config) 1/2) true)
      (check-exception (set! (NetworkConfig-stream-open-timeout config) 1.0) true)
      (check-exception (set! (NetworkConfig-renewal-timeout config) 0.25) true)
      (check-exception (set! (StreamLimits-recv-window limits) #x100000000) true)
      (check-exception (set! (StreamLimits-recv-window limits) 3) true)
      (check-exception (set! (StreamLimits-outbound-buffer limits) 5) true)
      (check-exception (set! (NetworkConfig-stream-input-timeout config) #f) true))
    (test-case "fresh nested limits and shared timeout defaults"
      (def a (NetworkLimits))
      (def b (NetworkLimits))
      (def ac (NetworkLimits-connection-limits a))
      (def bc (NetworkLimits-connection-limits b))
      (check (eq? ac bc) => #f)
      (check (eq? (ConnectionLimits-stream-limits ac)
                  (ConnectionLimits-stream-limits bc)) => #f)
      (def c (NetworkConfig))
      (def d (NetworkConfig))
      (check (eq? (NetworkConfig-stream-input-timeout c)
                  (NetworkConfig-stream-input-timeout d)) => #t))))
