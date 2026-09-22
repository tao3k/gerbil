;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network test
(import :std/build-config)
(cond-expand
  (config-have-sqlite
   (import :std/test
           :std/iter
           :std/io
           :std/interface
           :std/error
           :std/crypto/random
           :std/net/address
           :std/sync/threads
           :std/time/time
           :std/time/timeout
           ../network
           ../keystore/interface
           ../keystore/memory
           ../ucan/interface
           ../ucan/context
           ../ucan/ext)
   (export happy-path-test)

   (defclass monitor
     ((mutex    : :mutex := (make-mutex 'network-e2e))
      (cv       : :condvar := (make-condition-variable 'network-e2e))
      (events   : :list := [])
      (workers  : :list := [])
      (handlers : HashTable := (make-hash-table)))
     final: #t)

   (def (monitor-record! (self   : monitor)
                         (kind   : :symbol)
                         (object : :t))
     => :void
     (do-with-lock self.mutex
       (set! self.events (cons [kind object] self.events))
       (condition-variable-broadcast! self.cv)))

   ;; Publish ownership before a worker can enter application code. Joining these
   ;; handles also reports handler failures, which network callbacks cannot report.
   (def (monitor-start! (self : monitor)
                        (proc : :procedure))
     => :thread
     (do-with-lock self.mutex
       (let (worker (spawn-thread
                     (lambda ()
                       (do-with-lock self.mutex (void))
                       (proc))))
         (set! self.workers (cons worker self.workers))
         worker)))

   (def (monitor-allow-connection? (self      : monitor)
                                   (peer      : :string)
                                   (direction : :fixnum))
     => :boolean
     #t)

   (def (monitor-allow-stream? (self      : monitor)
                               (peer      : :string)
                               (protocol  : :string)
                               (direction : :fixnum))
     => :boolean
     (or (fx= direction DIRECTION-OUT) (hash-key? self.handlers protocol)))

   (def (monitor-open-connection (self : monitor)
                                 (conn : Connection))
     => :void
     (monitor-record! self 'connection-open conn))

   (def (monitor-close-connection (self : monitor)
                                  (conn : Connection))
     => :void
     (monitor-record! self 'connection-close conn))

   (def (monitor-open-stream (self   : monitor)
                             (stream : Stream))
     => :void
     (when (fx= (stream.direction) DIRECTION-IN)
       (let (handler (hash-ref self.handlers (stream.protocol)))
         (monitor-start! self (lambda () (handler stream)))))
     (monitor-record! self 'stream-open stream))

   (def (monitor-close-stream (self   : monitor)
                              (stream : Stream))
     => :void
     (monitor-record! self 'stream-close stream))

   ;; Keep checked bindings, defined before implement, for interpreted test loading.
   (implement NetworkMonitor monitor
     (allow-connection? monitor-allow-connection?)
     (allow-stream? monitor-allow-stream?)
     (on-open-connection monitor-open-connection)
     (on-close-connection monitor-close-connection)
     (on-open-stream monitor-open-stream)
     (on-close-stream monitor-close-stream))

   ;; Historical events cannot be missed when a fast stream opens and closes
   ;; before the test thread runs. All predicates and CV signals hold the mutex.
   (def (monitor-await (self  : monitor)
                       (kind  : :symbol)
                       (count : :fixnum))
     => :list
     (let (deadline (seconds->time (+ (##current-time-point) 60)))
       (unwind-protect
         (let loop ()
           (mutex-lock! self.mutex)
           (let (events (filter (lambda (event) (eq? (car event) kind)) self.events))
             (if (>= (length events) count)
               (map cadr events)
               (begin
                 (unless (mutex-unlock! self.mutex self.cv deadline)
                   (raise-timeout monitor-await "Missing monitor notifications" kind count))
                 (loop)))))
         (when (eq? (mutex-state self.mutex) (current-thread))
           (mutex-unlock! self.mutex)))))

   ;; After shutdown, check exactly-once pairs and stream-before-connection close.
   (def (monitor-check-pairs! (self : monitor))
     => :void
     (let ((connections []) (streams [])
           (events (do-with-lock self.mutex (reverse self.events))))
       (for (event events)
         (let (object (cadr event))
           (case (car event)
             ((connection-open)
              (check (memq object connections) => #f)
              (set! connections (cons object connections)))
             ((stream-open)
              (check (memq (Stream-connection object) connections) ? pair?)
              (check (memq object streams) => #f)
              (set! streams (cons object streams)))
             ((stream-close)
              (check (memq object streams) ? pair?)
              (set! streams (remq1 object streams)))
             ((connection-close)
              (check (memq object connections) ? pair?)
              (check (filter (lambda (s) (eq? (Stream-connection s) object)) streams) => [])
              (set! connections (remq1 object connections))))))
       (check connections => [])
       (check streams => [])))

   (def (echo-server (stream : Stream))
     => :void
     (let ((reader (stream.reader)) (writer (stream.writer)))
       (io-copy! reader writer)
       (Writer-close writer)))

   ;; Own every successfully constructed resource immediately, including partial
   ;; setup. Networks borrow contexts; contexts borrow independent keystores.
   (def (call-with-2-peer-network (proc : :procedure))
     => :void
     (let ((stores []) (contexts []) (networks [])
           (monitor1 (monitor)) (monitor2 (monitor)))
       (def (capability-context+identity)
         (let* ((store (make-memory-keystore #u8(1 2 3)))
                (_ (set! stores (cons store stores)))
                (did (Keystore-generate-key! store))
                (ctx (open-capability-context ":memory:" store)))
           (set! contexts (cons ctx contexts))
           (values ctx did)))
       (unwind-protect
         (let* (((values root root-did) (capability-context+identity))
                ((values cap1 did1) (capability-context+identity))
                ((values cap2 did2) (capability-context+identity))
                (expire (+ (current-time-seconds) 3600))
                (config (NetworkConfig
                         connection-ttl: 600 stream-ttl: 600
                         handshake-timeout: 10 stream-open-timeout: 10
                         stream-input-timeout: (IOTimeout 30)
                         stream-output-timeout: (IOTimeout 30))))
           ;; Neither peer possesses the other's private key or implicitly trusts
           ;; its DID. Both directions must validate a real common-root chain.
           (CapabilityContext-add-root! cap1 root-did)
           (CapabilityContext-add-root! cap2 root-did)
           (CapabilityContext-add-output-anchor!
            cap1 (CapabilityContext-grant! root DELEGATE root-did did1 "/" expire))
           (CapabilityContext-add-output-anchor!
            cap2 (CapabilityContext-grant! root DELEGATE root-did did2 "/" expire))
           (hash-put! (monitor-handlers monitor1) "/test/echo" echo-server)
           (let* ((net1 (new-network did1 cap1 (NetworkMonitor monitor1) config: config))
                  (_ (set! networks (cons net1 networks)))
                  (net2 (new-network did2 cap2 (NetworkMonitor monitor2) config: config)))
             (set! networks (cons net2 networks))
             (proc net1 monitor1 net2 monitor2)))
         (let ((errors []) (joined? #t))
           ;; Both closes start before either join. Still attempt every join and
           ;; resource close if another fails; retain borrows if shutdown is stuck.
           (def (attempt (thunk : :procedure)) => :void
             (with-catch
              (lambda (e) (set! errors (cons e errors)))
              (lambda () (thunk) (void))))
           (let ((closers (map (lambda (net) (spawn-thread (cut Network-close net))) networks))
                 (deadline (seconds->time (+ (##current-time-point) 60))))
             (for (worker closers)
               (attempt
                (lambda ()
                  (with-catch
                   (lambda (e) (set! joined? #f) (raise e))
                   (lambda ()
                     (when (eq? (thread-join!/error worker deadline 'stuck) 'stuck)
                       (set! joined? #f)
                       (raise-timeout call-with-2-peer-network "Network close did not finish")))))))
             (for (mon [monitor1 monitor2])
               (for (worker (do-with-lock (monitor-mutex mon) (monitor-workers mon)))
                 (attempt
                  (lambda ()
                    (when (eq? (thread-join!/error worker deadline 'stuck) 'stuck)
                      (set! joined? #f)
                      (raise-timeout call-with-2-peer-network "Application worker did not finish")))))))
           (when joined?
             (for (ctx contexts) (attempt (cut CapabilityContext-close ctx)))
             (for (store stores) (attempt (cut Closer-close store))))
           (unless (null? errors) (raise (car (reverse errors))))))
       (monitor-check-pairs! monitor1)
       (monitor-check-pairs! monitor2)))

   ;; Each writer gets exactly one full-buffer write. Readers run concurrently to
   ;; drain the echo while the 4 MiB write crosses many frames and window updates.
   (def (check-echo-transfers (data  : :u8vector)
                              (count : :fixnum))
     => :void
     (call-with-2-peer-network
      (lambda ((net1 : Network) (monitor1 : monitor)
               (net2 : Network) (monitor2 : monitor))
        (let (addr (net1.listen! (InetAddress localhost4 0)))
          (check (net1.listening) => [addr])
          (check (net2.connections) => [])
          (let (conn (net2.connect! (net1.host) [addr]))
            (check conn ? Connection?)
            (check (net2.connections) => [conn])
            (check (Connection-direction conn) => DIRECTION-OUT)
            (let (incoming (car (monitor-await monitor1 'connection-open 1)))
              (check (Connection-direction incoming) => DIRECTION-IN)
              (check (Connection-peer incoming) => (net2.host)))
            (check (monitor-await monitor2 'connection-open 1) => [conn])
            (let* ((streams (map (lambda (_) (Connection-open-stream! conn "/test/echo" #f))
                                 (iota count)))
                   (jobs
                    (map
                      (lambda (stream)
                        (let ((writer (Stream-writer stream)) (reader (Stream-reader stream)))
                          (cons
                           (monitor-start! monitor2
                                           (lambda ()
                                             (let (written (Writer-write writer data))
                                               (Writer-close writer)
                                               written)))
                           (monitor-start! monitor2
                                           (lambda () (read-all-from-reader reader default-buffer-size))))))
                      streams))
                   (deadline (seconds->time (+ (##current-time-point) 60))))
              (check (length (monitor-await monitor1 'stream-open count)) => count)
              (check (length (monitor-await monitor2 'stream-open count)) => count)
              (for (job jobs)
                (check (thread-join!/error (car job) deadline) => (u8vector-length data))
                (let (input (thread-join!/error (cdr job) deadline))
                  (check (u8vector-length input) => (u8vector-length data))
                  (check input => data)))
              ;; Do not abort streams after reading EOF: wait for normal FIN
              ;; retirement and both close callbacks before closing the connection.
              (check (length (monitor-await monitor1 'stream-close count)) => count)
              (check (length (monitor-await monitor2 'stream-close count)) => count))
            (thread-join!/error
             (monitor-start! monitor2 (cut Connection-close conn)) 60)
            (check (length (monitor-await monitor1 'connection-close 1)) => 1)
            (check (monitor-await monitor2 'connection-close 1) => [conn])
            (check (net2.connections) => []))))))

   (def happy-path-test
     (test-suite "happy path"
       (test-case "establish connection, open stream, send and receive data"
         (check-echo-transfers (string->utf8 "hello, ensemble network") 1))
       (test-case "large transfer"
         (check-echo-transfers (random-bytes (expt 2 22)) 1))
       (test-case "torture with large transfers"
         (check-echo-transfers (random-bytes (expt 2 22)) 10)))))
  (else))
