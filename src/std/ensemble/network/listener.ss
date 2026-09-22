;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; High-level listener lifecycle and socket handoff to the network owner
(import :std/error
        :std/interface
        :std/io
        (only-in :std/io/file open-file-writer/lock)
        :std/net/address
        (only-in :std/os/fcntl O_CREAT O_NOFOLLOW)
        :std/sync/threads
        ./thread
        ./log)
(export #t)

(deftype @Listener Listener)

;; Internal owner boundary. accept! runs promptly without listener locks and
;; returns true only after taking ownership of the socket (including registering
;; pending work). False rejects at capacity/shutdown without starting a handshake.
;; closed! runs once, after socket/path cleanup, before the accept worker exits.
(interface ListenerMonitor
  (accept! (listener : @Listener)
           (socket   : StreamSocket))
  => :boolean
  (closed! (listener : @Listener))
  => :void)

(defclass Listener
  ((owner   :  ListenerMonitor)
   (socket  :  ServerSocket)
   (address :  Address)
   (path    :? :string := #f)
   (lock    :? Closer := #f)
   (mutex   :  :mutex := (make-mutex 'network-listener))
   (closed? :  :boolean := #f)
   (worker  :? :thread := #f))
  final: #t)

;; DNS, internet, and Unix addresses use the same resolver entry point. Capture
;; the actual bound address, including an ephemeral TCP port. The owner must track
;; this construction as owned work until it registers the listener or closes it.
;; The accept worker starts only after binding and metadata capture succeed.
(def (make-listener (owner   : ListenerMonitor)
                    (address : Address))
  => Listener
  (let ((path
         (and (UnixAddress? address)
              (using (address :- UnixAddress)
                (when (or (string-empty? address.path) (string-index address.path #\nul))
                  (raise-bad-argument make-listener "Expected a filesystem Unix socket path"))
                (path-expand address.path))))
        (lock #f)
        (socket #f)
        (binding? #f))
    (try
     (when path
       (create-directory* (path-directory path))
       ;; Zero timeout tries the exclusive nonblocking lock once. Never truncate
       ;; or unlink the sidecar: cooperating owners must lock the same inode.
       (set! lock (Closer (open-file-writer/lock (string-append path ".lock") 0
                                                 flags: (fxior O_CREAT O_NOFOLLOW) mode: #o600)))
       (listener-remove-socket! path)
       ;; A failed bind/listen can leave a pathname without returning a socket.
       (set! binding? #t))
     (set! socket (stream-listen address))
     (using (self (Listener owner: owner socket: socket address: address path: path lock: lock)
                  :- Listener)
       (set! self.address (self.socket.address))
       ;; The worker first takes this mutex, before callbacks can observe self.
       (do-with-lock self.mutex
         (set! self.worker (spawn-network-thread 'network-listener (lambda () (listener-thread self)))))
       self)
     (catch (e)
       (unwind-protect!
         (when socket (Closer-close socket))
         (unwind-protect!
           (when binding? (listener-remove-socket! path))
           (when lock (Closer-close lock))))
       (raise e)))))

;; Only call while holding the sidecar lock. Check entry type without following
;; symlinks; unrelated files are errors, not stale sockets to be discarded.
(def (listener-remove-socket! (path : :string))
  => :void
  (when (file-exists? path #f)
    (unless (eq? (file-info-type (file-info path #f)) 'socket)
      (raise-io-error listener-remove-socket! "Refusing to remove non-socket path" path))
    (delete-file path)))

;; Remove the socket before releasing the lock, including on worker failure.
(def (listener-unlink! (self : Listener))
  => :void
  (when self.lock
    (unwind-protect!
      (listener-remove-socket! self.path)
      (self.lock.close))))

(def (listener-closed? (self : Listener))
  => :boolean
  (do-with-lock self.mutex self.closed?))

;; Only the first close acts; later calls are no-ops. Wake accept before joining,
;; outside the mutex. Self-close cannot join its worker. Shutdown never throws;
;; the worker logs failures, which remain available through an explicit join.
(def (listener-close! (self : Listener))
  => :void
  (when (do-with-lock self.mutex
          (and (not self.closed?)
               (begin (set! self.closed? #t) #t)))
    (ignore-errors (self.socket.close))
    (when (and self.worker (not (eq? self.worker (current-thread))))
      (ignore-errors (network-thread-join! self.worker))))
  (void))

(def (listener-thread (self : Listener))
  => :void
  (try
   (unwind-protect
     (let loop ()
       (unless (listener-closed? self)
         (let (accepted
               (try (self.socket.accept)
                    (catch (e)
                      ;; Only accept is interrupted by normal listener shutdown;
                      ;; owner callback failures must propagate even after close.
                      (if (listener-closed? self) #f (raise e)))))
           (when accepted
             (using (socket accepted : StreamSocket)
               (let (transferred? #f)
                 (unwind-protect
                   (unless (listener-closed? self)
                     (set! transferred? (self.owner.accept! self socket)))
                   (unless transferred? (socket.close)))))))
         (loop)))
      (begin
        (listener-close! self)
        (unwind-protect!
         (listener-unlink! self)
         (self.owner.closed! self))))
   (catch (e)
     (log.error "Listener worker failed"
                address: self.address
                exception: (exception->string e))
     (raise e))))
