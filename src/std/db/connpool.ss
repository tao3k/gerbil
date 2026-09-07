;;; -*- Gerbil -*-
;;; © vyzo
;;; Generic database connection pool
(import :std/error
        :std/log
        :std/time/timeout
        ./interface)
(export ConnectionPool ConnectionPool?
        (rename: make-ConnectionPool make-connection-pool)
        connection-pool-get
        connection-pool-put
        connection-pool-release
        connection-pool-close)

(deflogger connection-pool-log name: "/db/connpool")

(defstruct ConnectionPool
  ((connect :- :procedure)
   (mx      :- :mutex)
   (cv      :- :condvar)
   (conns   :- :list)
   (out     :- :list)
   (closed? :- :boolean)
   (max     :? :fixnum))
  constructor: :init!
  final: #t)

(defmethod {:init! ConnectionPool}
  (lambda (self (connect : :procedure) (max :? :fixnum := #f))
    (set! self.connect connect)
    (set! self.mx (make-mutex 'connection-pool))
    (set! self.cv (make-condition-variable 'connection-pool))
    (set! self.conns [])
    (set! self.out [])
    (set! self.closed? #f)
    (set! self.max max)))

(def (connection-pool-get (cp : ConnectionPool)
                          (timeo : :t := !NoTimeout))
  => Driver
  (let (timeo (timeout->abs-timeout timeo value: seconds->time))
    (let loop ()
      (mutex-lock! cp.mx)
      (cond
        (cp.closed?
         (mutex-unlock! cp.mx)
         (raise-io-closed connection-pool-get "connection pool has been closed"))
        ((pair? cp.conns)
         (let ((conn (:- (car cp.conns) Driver))
               (rest (cdr cp.conns)))
           (set! cp.conns rest)
           (set! cp.out (cons conn cp.out))
           (mutex-unlock! cp.mx)
           conn))
        (else
         (if (or (not cp.max)
                 (fx< (length cp.out) (:- cp.max :fixnum)))
           (let (conn
                 (try
                  (:- (cp.connect) Driver)
                  (catch (e)
                    (mutex-unlock! cp.mx)
                    (raise e))))
             (set! cp.out (cons conn cp.out))
             (mutex-unlock! cp.mx)
             conn)
           (if (mutex-unlock! cp.mx cp.cv timeo)
             (loop)
             (raise-timeout connection-pool-get
               "Error getting connection; timeout"))))))))

(def (connection-pool-put (cp : ConnectionPool) (conn : Driver))
  => :void
  (mutex-lock! cp.mx)
  (if cp.closed?
    (begin
      (mutex-unlock! cp.mx)
      (conn.close))
    (begin
      (set! cp.conns (cons conn cp.conns))
      (set! cp.out (remq1 conn cp.out))
      (condition-variable-signal! cp.cv)
      (mutex-unlock! cp.mx))))

(def (connection-pool-release (cp : ConnectionPool) (conn : Driver))
  => :void
  (mutex-lock! cp.mx)
  (set! cp.out (remq1 conn cp.out))
  (condition-variable-signal! cp.cv)
  (mutex-unlock! cp.mx)
  (conn.close))

(def (connection-pool-close (cp : ConnectionPool))
  => :void
  (def (close-connection (conn :- Driver))
    => :void
    (try
     (conn.close)
     (catch (e)
       (connection-pool-log.error "error closing connection" exception: e))))

  (mutex-lock! cp.mx)
  (unless cp.closed?
    (set! cp.closed? #t)
    (for-each close-connection cp.conns)
    (for-each close-connection cp.out)
    (set! cp.conns [])
    (set! cp.out [])
    (condition-variable-broadcast! cp.cv))
  (mutex-unlock! cp.mx))
