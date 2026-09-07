;;; -*- Gerbil -*-
;;; © vyzo
;;; :std/db/connpool test
(import :std/error
        :std/interface
        :std/test
        ./connpool
        ./interface)
(export connpool-test)

(defstruct TestConnection
  ((id          :- :fixnum)
   (close-count :- :fixnum))
  transparent: #t
  final: #t)

(implement Driver TestConnection
  (prepare
   (lambda (self sql)
     (error "test driver does not prepare statements")))
  (close
   (lambda (self)
     (set! self.close-count (fx1+ self.close-count)))))

(defstruct TestConnectionFactory
  ((count :- :fixnum))
  transparent: #t
  final: #t)

(def (test-connection-connect (factory : TestConnectionFactory))
  => Driver
  (set! factory.count (fx1+ factory.count))
  (Driver (TestConnection factory.count 0)))

(def (test-connection-closed? (conn : Driver))
  => :boolean
  (fxpositive?
   (TestConnection-close-count
    (:- (&interface-instance-object conn) TestConnection))))

(def connpool-test
  (test-suite "test :std/db/connpool"
    (test-case "reuse returned connections"
      (def reuse-factory (TestConnectionFactory 0))
      (def reuse-pool
        (make-connection-pool
         (lambda () (test-connection-connect reuse-factory))
         2))
      (check (ConnectionPool? reuse-pool) => #t)
      (def reuse-first (connection-pool-get reuse-pool))
      (check (Driver? reuse-first) => #t)
      (check (TestConnectionFactory-count reuse-factory) => 1)
      (connection-pool-put reuse-pool reuse-first)
      (def reuse-second (connection-pool-get reuse-pool))
      (check (eq? reuse-first reuse-second) => #t)
      (check (TestConnectionFactory-count reuse-factory) => 1)
      (connection-pool-put reuse-pool reuse-second)
      (connection-pool-close reuse-pool)
      (check (test-connection-closed? reuse-first) => #t))

    (test-case "timeout at capacity"
      (def timeout-factory (TestConnectionFactory 0))
      (def timeout-pool
        (make-connection-pool
         (lambda () (test-connection-connect timeout-factory))
         1))
      (def timeout-conn (connection-pool-get timeout-pool))
      (check-exception (connection-pool-get timeout-pool 0) Timeout?)
      (connection-pool-put timeout-pool timeout-conn)
      (connection-pool-close timeout-pool))

    (test-case "release discards a connection"
      (def release-factory (TestConnectionFactory 0))
      (def release-pool
        (make-connection-pool
         (lambda () (test-connection-connect release-factory))
         1))
      (def released-conn (connection-pool-get release-pool))
      (connection-pool-release release-pool released-conn)
      (check (test-connection-closed? released-conn) => #t)
      (def replacement-conn (connection-pool-get release-pool))
      (check (eq? released-conn replacement-conn) => #f)
      (check (TestConnectionFactory-count release-factory) => 2)
      (connection-pool-put release-pool replacement-conn)
      (connection-pool-close release-pool))

    (test-case "close closes idle and checked-out connections"
      (def close-factory (TestConnectionFactory 0))
      (def close-pool
        (make-connection-pool
         (lambda () (test-connection-connect close-factory))
         2))
      (def idle (connection-pool-get close-pool))
      (def checked-out (connection-pool-get close-pool))
      (connection-pool-put close-pool idle)
      (connection-pool-close close-pool)
      (check (test-connection-closed? idle) => #t)
      (check (test-connection-closed? checked-out) => #t)
      (connection-pool-put close-pool checked-out)
      (check-exception (connection-pool-get close-pool) io-closed-error?))))
