;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble network test
(import :std/test
        :std/iter
        :std/io
        :std/log
        :std/interface
        :std/error
        :std/net/address
        :std/time/precise
        ../interface
        ../ucan/context
        ../ucan/security
        ../ucan/ext
        ../tls
        ../config
        ./network)
(export happy-path-test
        test-setup!)

(def (test-setup!)
  (add-system-sink! (console-log-sink))
  ;; if you are debugging
  ;; (set-source-log-level! "/ensemble/network" DEBUG)
  )

(def (capability-context+identity)
  (let* ((cap-ctx (new-capability-context ":memory:" "123"))
         (did (CapabilityContext-generate-identity! cap-ctx)))
    (values cap-ctx did)))

(def (make-network hostname monitor)
  (let* (((values cap-ctx did)
          (capability-context+identity))
         (host
          (HostID hostname did))
         (tls-ctx
          (make-tls-context hostname
                            (CapabilityContext-get-principal cap-ctx did)))
         (sec-ctx
          (new-security-context cap-ctx))
         (limits (default-limits))
         (net (new-network host tls-ctx sec-ctx limits monitor)))
    (values net cap-ctx did)))

(def (make-2-peer-network host1 monitor1 host2 monitor2)
  (let* (((values root-ctx root-did)
          (capability-context+identity))
         ((values net1 cap-ctx1 did1)
          (make-network host1 monitor1))
         ((values net2 cap-ctx2 did2)
          (make-network host2 monitor2)))
    (CapabilityContext-add-root! cap-ctx1 root-did)
    (CapabilityContext-add-root! cap-ctx2 root-did)
    (let (grant (CapabilityContext-grant!
                 root-ctx
                 DELEGATE
                 root-did
                 did1
                 "/" "/"
                 (+ (current-time-seconds) 3600)))
      (CapabilityContext-add-output-anchor! cap-ctx1 grant))
    (let (grant (CapabilityContext-grant!
                 root-ctx
                 DELEGATE
                 root-did
                 did2
                 "/" "/"
                 (+ (current-time-seconds) 3600)))
      (CapabilityContext-add-output-anchor! cap-ctx2 grant))
    (CapabilityContext-close root-ctx)
    (values net1 cap-ctx1 net2 cap-ctx2)))

(defstruct monitor
  (connections-in
   connections-out
   streams-in
   streams-out
   handlers))

(implement NetworkMonitor monitor
  (on-open-connection
   (lambda (self conn)
     (if (fx= (conn.direction) DIRECTION-IN)
       (set! self.connections-in (1+ self.connections-in))
       (set! self.connections-out (1+ self.connections-out)))))
  (on-close-connection
   (lambda (self conn)
     (if (fx= (conn.direction) DIRECTION-IN)
       (set! self.connections-in (1- self.connections-in))
       (set! self.connections-out (1- self.connections-out)))))
  (on-open-stream
   (lambda (self stream)
     (if (fx= (stream.direction) DIRECTION-IN)
       (cond
        ((hash-get self.handlers (stream.protocol))
         => (lambda (handler)
              (set! self.streams-in (1+ self.streams-in))
              (spawn handler stream)))
        (else
         (stream.close)
         (raise-io-closed on-open-stream "no handler")))
       (set! self.streams-out (1+ self.streams-out)))))
  (on-close-stream
   (lambda (self stream)
     (if (fx= (stream.direction) DIRECTION-IN)
       (set! self.streams-in (1- self.streams-in))
       (set! self.streams-out (1- self.streams-out))))))

(def (new-monitor . handlers)
  (let (mon (monitor 0 0 0 0 (make-hash-table)))
    (for-each (lambda (p) (hash-put! (monitor-handlers mon)
                                (car p) (cdr p)))
              handlers)
    mon))

(def (echo-server stream)
  (let ((reader (Stream-reader stream))
        (writer (Stream-writer stream)))
    (io-copy! reader writer)
    (Writer-close writer)))

(def happy-path-test
  (test-suite "happy path"
    (test-case "establish connection, open stream, send and receive data"
      (def host1 "foo.internal")
      (def host2 "bar.internal")
      (def monitor1 (new-monitor (cons "/test/echo" echo-server)))
      (def monitor2 (new-monitor))
      (defvalues (net1 cap1 net2 cap2)
        (make-2-peer-network host1 monitor1 host2 monitor2))
      (def addr1
        (HostAddress (Network-host net1)
                     (InetAddress localhost4 20001)))

      (Network-listen! net1 [addr1])
      (check (Network-listening net1)
             => [addr1])
      (check (Network-connections net2)
             => [])

      (let* ((conn (Network-connect! net2 [addr1]))
             (_ (thread-yield!))
             (_ (check conn ? Connection?))
             (_ (check (Network-connections net2)
                       => [conn]))
             (_ (check (monitor-connections-in monitor1)
                       => 1))
             (_ (check (monitor-connections-out monitor2)
                       => 1))
             (stream (Connection-open-stream! conn  "/test/echo" #f))
             (_ (thread-yield!))
             (_ (check (monitor-streams-in monitor1)
                       => 1))
             (_ (check (monitor-streams-out monitor2)
                       => 1))
             (writer (Stream-writer stream))
             (reader (Stream-reader stream))
             (msg "hello, ensemble network"))
        (Writer-write writer (string->utf8 msg))
        (Writer-close writer)
        (let* ((buf (make-u8vector 64))
               (rd  (Reader-read reader buf))
               (reply (utf8->string buf 0 rd)))
          (check reply => msg))
        (Stream-close stream)
        (thread-yield!)
        (thread-sleep! .01)
        (check (monitor-streams-in monitor1)
               => 0)
        (check (monitor-streams-out monitor2)
               => 0)
        (Connection-close conn)
        (thread-yield!)
        (thread-sleep! .01)
        (check (monitor-connections-in monitor1)
               => 0)
        (check (monitor-connections-out monitor2)
               => 0))

      (check (Network-connections net2)
             => [])

      (Network-close net1)
      (Network-close net2)
      (CapabilityContext-close cap1)
      (CapabilityContext-close cap2)
      )

    (test-case "large transfer"
      (def host1 "foo.internal")
      (def host2 "bar.internal")
      (def monitor1 (new-monitor (cons "/test/echo" echo-server)))
      (def monitor2 (new-monitor))
      (defvalues (net1 cap1 net2 cap2)
        (make-2-peer-network host1 monitor1 host2 monitor2))
      (def addr1
        (HostAddress (Network-host net1)
                     (InetAddress localhost4 20001)))

      (Network-listen! net1 [addr1])
      (let* ((conn (Network-connect! net2 [addr1]))
             (stream (Connection-open-stream! conn  "/test/echo" #f))
             (writer (Stream-writer stream))
             (reader (Stream-reader stream))
             (data (random-bytes (expt 2 22)))
             (writer-thread
              (spawn (lambda ()
                       (let (written (Writer-write writer data))
                         (Writer-close writer)
                         written))))
             (reader-thread
              (spawn (lambda ()
                       (let (input (read-all-from-reader reader default-buffer-size))
                         (equal? input data))))))

        (check (thread-join! writer-thread)
               => (u8vector-length data))
        (check (thread-join! reader-thread)
               => #t)
        (Stream-close stream)
        (Connection-close conn))
      (Network-close net1)
      (Network-close net2)
      (CapabilityContext-close cap1)
      (CapabilityContext-close cap2)
      )
    (test-case "torture with large transfers"
      (def host1 "foo.internal")
      (def host2 "bar.internal")
      (def monitor1 (new-monitor (cons "/test/echo" echo-server)))
      (def monitor2 (new-monitor))
      (defvalues (net1 cap1 net2 cap2)
        (make-2-peer-network host1 monitor1 host2 monitor2))
      (def addr1
        (HostAddress (Network-host net1)
                     (InetAddress localhost4 20001)))

      (Network-listen! net1 [addr1])
      (let* ((conn (Network-connect! net2 [addr1]))
             (streams (map (lambda (_) (Connection-open-stream! conn  "/test/echo" #f))
                           (iota 10)))
             (writers (map Stream-writer streams))
             (readers (map Stream-reader streams))
             (data (random-bytes (expt 2 22)))
             (writer-threads
              (map (lambda (writer)
                     (spawn (lambda ()
                       (let (written (Writer-write writer data))
                         (Writer-close writer)
                         written))))
                   writers))
             (reader-threads
              (map (lambda (reader)
                     (spawn (lambda ()
                       (let (input (read-all-from-reader reader default-buffer-size))
                         (equal? input data)))))
                   readers)))

        (for (writer-thread writer-threads)
          (check (thread-join! writer-thread)
               => (u8vector-length data)))
        (for (reader-thread reader-threads)
          (check (thread-join! reader-thread)
                 => #t))
        (for (stream streams)
          (Stream-close stream))
        (Connection-close conn))
      (Network-close net1)
      (Network-close net2)
      (CapabilityContext-close cap1)
      (CapabilityContext-close cap2)
      )))
