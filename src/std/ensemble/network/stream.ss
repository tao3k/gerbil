;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Public streams, bounded buffers and blocking IO
(import :std/error
        :std/interface
        :std/io/interface
        :std/io/bio/cache
        :std/time/time
        :std/time/timeout
        ./config
        (only-in ./interface
                 Stream
                 Connection
                 DIRECTION-IN
                 DIRECTION-OUT))
(export (struct-out StreamState
                    StreamBuffer)
        make-stream-state
        stream-receive!
        stream-consume!
        stream-credit-commit!
        stream-credit-receive!
        stream-produce!
        stream-data-commit!
        stream-data-release!
        stream-end-output!
        stream-fin-commit!
        stream-fin-release!
        stream-fin-receive!
        stream-abort!
        stream-eof?
        stream-retirable?
        (struct-out StreamIO)
        make-stream-io
        stream-io-set-input-timeout!
        stream-io-set-output-timeout!
        stream-io-abort!
        stream-io-expire!
        stream-io-install-lease!
        stream-io-install-lease-locked!
        stream-io-receive!
        stream-io-credit-receive!
        stream-io-fin-receive!
        stream-io-credit-commit!
        stream-io-data-commit!
        stream-io-data-release!
        stream-io-fin-commit!
        stream-io-fin-release!
        stream-io-control-ready?
        stream-io-control-commit!
        stream-io-input-ready?
        stream-io-output-ready?
        stream-io-retirable?
        stream-io-status
        stream-io-expire-locked!
        stream-io-abort-locked!
        (struct-out StreamWake)
        stream-wake-signal!
        stream-wake-signal-locked!
        stream-wake-take!
        with-stream-io-lock
        new-stream)

;; Internal circular storage is allocated only on first nonempty input. Unlike
;; growable BIO buffers it never grows beyond capacity or copies an in-flight
;; output slice. The owner serializes each direction; no IO waits or callbacks.
(defclass StreamBuffer
  ((capacity : :fixnum)
   (bytes    : :u8vector := #u8())
   (head     : :fixnum := 0)
   (size     : :fixnum := 0))
  final: #t)

;; This is not a public Stream or a Reader/Writer. StreamIO below owns locking,
;; deadlines and wakeups; the parent owns opening and frame scheduling. Only the
;; transitions below may mutate this internal record.
(defclass StreamState
  ((receive        : StreamBuffer)
   (send           : StreamBuffer)
   (receive-credit : :fixnum)
   (pending-credit : :fixnum := 0)
   (peer-window    : :fixnum)
   (send-credit    : :fixnum)
   (in-flight      : :fixnum := 0)
   (receive-fin?   : :boolean := #f)
   (output-state   : :symbol := 'open)
   (aborted?       : :boolean := #f))
  final: #t)

;; The peer window is decoded external input, not permission to enlarge the
;; independent local send buffer. Local storage indexes must fit native fixnums.
(def (make-stream-state (limits      : StreamLimits)
                        (peer-window : :integer))
  => StreamState
  (unless (and (<= 1 peer-window #xffffffff) (fixnum? peer-window))
    (raise-io-error make-stream-state "Invalid peer receive window" peer-window))
  (unless (fixnum? limits.recv-window)
    (raise-io-error make-stream-state "Receive window exceeds native capacity"
                    limits.recv-window))
  (StreamState receive: (StreamBuffer capacity: limits.recv-window)
               send: (StreamBuffer capacity: limits.outbound-buffer)
               receive-credit: limits.recv-window
               peer-window: peer-window
               send-credit: peer-window))

;; Offset is at most capacity. Subtraction avoids overflowing head + offset.
(def (stream-buffer-position (buffer : StreamBuffer)
                             (offset : :fixnum))
  => :fixnum
  (let (remaining (fx- buffer.capacity buffer.head))
    (if (fx>= offset remaining)
      (fx- offset remaining)
      (fx+ buffer.head offset))))

;; Caller has reserved capacity. Copying makes application input immediately
;; reusable; at most two moves are needed across the circular boundary.
(def (stream-buffer-append! (buffer : StreamBuffer)
                            (input  : :u8vector)
                            (start  : :fixnum)
                            (count  : :fixnum))
  => :void
  (when (fx> count 0)
    (when (fxzero? (u8vector-length buffer.bytes))
      (set! buffer.bytes (buffer-cache.get buffer.capacity)))
    (let* ((tail (stream-buffer-position buffer buffer.size))
           (first (fxmin count (fx- buffer.capacity tail))))
      (subu8vector-move! input start (fx+ start first) buffer.bytes tail)
      (subu8vector-move! input (fx+ start first) (fx+ start count) buffer.bytes 0)
      (set! buffer.size (fx+ buffer.size count)))))

(def (stream-buffer-drop! (buffer : StreamBuffer)
                          (count  : :fixnum))
  => :void
  (set! buffer.head (stream-buffer-position buffer count))
  (set! buffer.size (fx- buffer.size count)))

;; Caller has ended all ownership, including transport slices. Clear the ring
;; before returning storage; repeated terminal transitions cannot return it twice.
(def (stream-buffer-release! (buffer : StreamBuffer))
  => :void
  (let (bytes buffer.bytes)
    (set! buffer.bytes #u8())
    (set! buffer.head 0)
    (set! buffer.size 0)
    (unless (fxzero? (u8vector-length bytes))
      (buffer-cache.put! bytes))))

;; DATA dispatch never blocks. A framing-validated but over-credit/post-FIN DATA
;; is a parent-fatal protocol error, not an ordinary stream reset.
(def (stream-receive! (self  : StreamState)
                      (input : :u8vector))
  => :void
  (when self.aborted?
    (raise-io-closed stream-receive! "Stream aborted"))
  (let (count (u8vector-length input))
    (when (or self.receive-fin? (fxzero? count)
              (fx> count self.receive-credit))
      (raise-io-error stream-receive! "Invalid stream DATA" count self.receive-credit))
    (stream-buffer-append! self.receive input 0 count)
    (set! self.receive-credit (fx- self.receive-credit count))))

;; Nonblocking buffer primitive: zero means no buffered bytes, NOT Reader EOF.
;; The IO layer distinguishes stream-eof? and waits otherwise, replenishing
;; credit after each partial copy even when its requested minimum is larger.
(def (stream-consume! (self   :  StreamState)
                      (output :  :u8vector)
                      (start  :~ (in-range-inclusive? 0 (u8vector-length output)) :- :fixnum)
                      (end    :~ (in-range-inclusive? start (u8vector-length output)) :- :fixnum))
  => :fixnum
  (when self.aborted?
    (raise-io-closed stream-consume! "Stream aborted"))
  (using (buffer self.receive :- StreamBuffer)
    (let* ((count (fxmin buffer.size (fx- end start)))
           (first (fxmin count (fx- buffer.capacity buffer.head))))
      (when (fx> count 0)
        (subu8vector-move! buffer.bytes buffer.head (fx+ buffer.head first) output start)
        (subu8vector-move! buffer.bytes 0 (fx- count first) output (fx+ start first))
        (stream-buffer-drop! buffer count)
        (set! self.pending-credit (fx+ self.pending-credit count))
        (when (and self.receive-fin? (fxzero? buffer.size))
          (stream-buffer-release! buffer)))
      count)))

;; Call only once mandatory control capacity and protocol ordering are secured.
;; Zero means no update; consumption after commit accrues to the next update.
(def (stream-credit-commit! (self : StreamState))
  => :fixnum
  (if self.aborted?
    0
    (let (credit self.pending-credit)
      (set! self.receive-credit (fx+ self.receive-credit credit))
      (set! self.pending-credit 0)
      credit)))

;; Validate the decoded integer before fixnum arithmetic, including huge input.
(def (stream-credit-receive! (self   : StreamState)
                             (credit : :integer))
  => :void
  (when self.aborted?
    (raise-io-closed stream-credit-receive! "Stream aborted"))
  (unless (<= 1 credit (fx- self.peer-window self.send-credit))
    (raise-io-error stream-credit-receive! "Invalid stream WINDOW-UPDATE" credit))
  (set! self.send-credit (fx+ self.send-credit credit)))

;; Accept a copied prefix without consuming peer credit. Zero for a nonempty
;; request means capacity-blocked; the Writer must wait, not return it.
(def (stream-produce! (self  :  StreamState)
                      (input :  :u8vector)
                      (start :~ (in-range-inclusive? 0 (u8vector-length input)) :- :fixnum)
                      (end   :~ (in-range-inclusive? start (u8vector-length input)) :- :fixnum))
  => :fixnum
  (unless (and (not self.aborted?) (eq? self.output-state 'open))
    (raise-io-closed stream-produce! "Stream output closed"))
  (using (buffer self.send :- StreamBuffer)
    (let (count (fxmin (fx- end start) (fx- buffer.capacity buffer.size)))
      (stream-buffer-append! buffer input start count)
      count)))

;; One outstanding slice per stream, owned by the connection writer until
;; release. Return bytes/start/end without copying or releasing capacity. Quantum
;; is already the minimum of local frame quantum and peer DATA limit. Opening
;; acceptance and deadline checks MUST precede this transport commit boundary.
(def (stream-data-commit! (self    :  StreamState)
                          (quantum :~ (? (and fixnum? fxpositive?)) :- :fixnum))
  => :values
  (using (buffer self.send :- StreamBuffer)
    (let (count (if (or self.aborted? (fx> self.in-flight 0))
                  0
                  (fxmin quantum self.send-credit buffer.size
                         (fx- buffer.capacity buffer.head))))
      (if (fxzero? count)
        (values #f 0 0)
        (begin
          (set! self.in-flight count)
          (set! self.send-credit (fx- self.send-credit count))
          (values buffer.bytes buffer.head (fx+ buffer.head count)))))))

;; Release only after the transport no longer retains the slice, including on
;; abort. Committed bytes cannot be withdrawn or their credit refunded locally.
(def (stream-data-release! (self : StreamState))
  => :void
  (stream-buffer-drop! self.send self.in-flight)
  (set! self.in-flight 0)
  (when self.aborted?
    (stream-buffer-release! self.send)))

;; These are transitions, enclosed by blocking Writer.close below.
(def (stream-end-output! (self : StreamState))
  => :void
  (when (and (not self.aborted?) (eq? self.output-state 'open))
    (set! self.output-state 'draining)))

(def (stream-fin-commit! (self : StreamState))
  => :boolean
  (if (and (not self.aborted?) (eq? self.output-state 'draining)
           (fxzero? self.send.size))
    (begin
      (set! self.output-state 'fin-in-flight)
      #t)
    #f))

(def (stream-fin-release! (self : StreamState))
  => :void
  (when (eq? self.output-state 'fin-in-flight)
    (set! self.output-state 'finished)
    (stream-buffer-release! self.send)))

(def (stream-fin-receive! (self : StreamState))
  => :void
  (when self.aborted?
    (raise-io-closed stream-fin-receive! "Stream aborted"))
  (when self.receive-fin?
    (raise-io-error stream-fin-receive! "Duplicate stream FIN"))
  (set! self.receive-fin? #t)
  (when (fxzero? self.receive.size)
    (stream-buffer-release! self.receive)))

;; Discard unread/unsent bytes but keep an outstanding DATA slice valid until
;; release. The owner schedules RESET and wakes its waiters outside its lock.
(def (stream-abort! (self : StreamState))
  => :void
  (set! self.aborted? #t)
  (stream-buffer-release! self.receive)
  (set! self.pending-credit 0)
  (set! self.receive-credit 0)
  (set! self.send.size self.in-flight)
  (when (fxzero? self.in-flight)
    (stream-buffer-release! self.send)))

(def (stream-eof? (self : StreamState))
  => :boolean
  (and (not self.aborted?) self.receive-fin? (fxzero? self.receive.size)))

;; A normal FIN pair does not recycle the parent's slot while unread payload
;; remains. Abort also retains the slot through actual transport buffer release.
;; The parent must additionally retire its own control work and notifications.
(def (stream-retirable? (self : StreamState))
  => :boolean
  (and (fxzero? self.in-flight)
       (not (eq? self.output-state 'fin-in-flight))
       (or self.aborted?
           (and (eq? self.output-state 'finished) (stream-eof? self)))))

;;; Accepted-stream IO

;; Passive shared leaf: one coalesced bit/CV per consumer, never a callback into
;; the scheduler. Lock order: parent operation -> input -> output -> wake.
;; Never acquire a parent/stream lock while holding this leaf.
(defclass StreamWake
  ((mx         : :mutex := (make-mutex 'stream-wake))
   (service-cv : :condvar := (make-condition-variable 'stream-service))
   (output-cv  : :condvar := (make-condition-variable 'stream-output-work))
   (service?   : :boolean := #t)
   (output?    : :boolean := #t))
  final: #t)

;; Caller holds the leaf mutex. Service-generated work only wakes the output
;; consumer; waking the service itself on successful observations would spin.
(def (stream-wake-signal-locked! (self     : StreamWake)
                                 (service? : :boolean))
  => :void
  (when service?
    (set! self.service? #t)
    (condition-variable-broadcast! self.service-cv))
  (set! self.output? #t)
  (condition-variable-broadcast! self.output-cv))

;; Publish one coalesced notification under the leaf lock; never retry a failure.
(def (stream-wake-signal! (self     :? StreamWake)
                          (service? :  :boolean := #t))
  => :void
  (when self
    (with-stream-io-lock self.mx
      (stream-wake-signal-locked! self service?))))

;; Clear BEFORE the caller scans, not afterward. Notifications during that scan
;; remain pending. Each consumer clears only its own bit. #f means no deadline;
;; otherwise supply an absolute time. The initial output scan need not wait.
(def (stream-wake-take! (self     : StreamWake)
                        (service? : :boolean)
                        (deadline : :t)
                        (wait?    : :boolean := #t))
  => :void
  (with-stream-io-lock self.mx
    (let loop ()
      (when (and wait? (not (if service? self.service? self.output?)))
        (let (ready? (mutex-unlock! self.mx
                                    (if service? self.service-cv self.output-cv)
                                    deadline))
          (mutex-lock! self.mx)
          (when ready? (loop)))))
    (if service? (set! self.service? #f) (set! self.output? #f))
    (void)))

;; Input owns receive storage/credits/FIN; output owns send storage/credit,
;; transport ownership and drain state. Abort/error publication and authorization
;; installation take BOTH locks, always input then output. Either lock protects
;; expiration observations. No directional operation may acquire the other lock.
;; The parent must not call wrappers while already holding these locks. Its atomic
;; receive dispatch uses the explicitly exported locked expiry/abort primitives
;; and raw StreamState transitions, with BOTH locks held throughout.
(defclass StreamIO
  ((state          :  StreamState)
   (expire         :  :integer)
   (input-mx       :  :mutex)
   (input-cv       :  :condvar)
   (output-mx      :  :mutex)
   (output-cv      :  :condvar)
   (error          :  :t)
   (input-timeout  :  IOTimeout)
   (output-timeout :  IOTimeout)
   (drain-deadline :  :t)
   (wake           :? StreamWake)
   (reader         :  Reader)
   (writer         :  Writer))
  final: #t
  constructor: :init!)

;; Initialize all fields before returning, without publishing or locking self.
(defmethod {:init! StreamIO}
  (lambda (self
           (state          : StreamState)
           (expire         : :integer)
           (input-timeout  : IOTimeout)
           (output-timeout : IOTimeout))
    (set! self.state state)
    (set! self.expire expire)
    (set! self.input-mx (make-mutex 'stream-input))
    (set! self.input-cv (make-condition-variable 'stream-input))
    (set! self.output-mx (make-mutex 'stream-output))
    (set! self.output-cv (make-condition-variable 'stream-output))
    (set! self.error #f)
    (set! self.input-timeout input-timeout)
    (set! self.output-timeout output-timeout)
    (set! self.drain-deadline absent-obj)
    (set! self.wake #f)
    (set! self.reader (new-stream-reader self))
    (set! self.writer (new-stream-writer self))))

(defclass StreamReader
  ((io   :  StreamIO)
   (this :? Reader := #f))
  final: #t)

(defclass StreamWriter
  ((io   :  StreamIO)
   (this :? Writer := #f))
  final: #t)

(implement Reader StreamReader
  (read __stream-reader-read)
  (close __stream-reader-close))

(implement Writer StreamWriter
  (write __stream-writer-write)
  (close __stream-writer-close))

;; Only construct after OPEN acceptance and authorization. The parent retains the
;; slot until transport release AND its own control/notification work is retired.
(def (make-stream-io (limits      : StreamLimits)
                     (peer-window : :integer)
                     (expire      : :integer)
                     (config      : NetworkConfig := (NetworkConfig)))
  => StreamIO
  (unless (< (current-time-seconds) expire)
    (raise-io-closed make-stream-io "Stream authorization expired"))
  (StreamIO (make-stream-state limits peer-window)
            expire
            config.stream-input-timeout
            config.stream-output-timeout))

(def (new-stream-reader (self : StreamIO))
  => Reader
  (using (impl (StreamReader io: self) :- StreamReader)
    (let (view (Reader impl))
      (set! impl.this view)
      view)))

(def (new-stream-writer (self : StreamIO))
  => Writer
  (using (impl (StreamWriter io: self) :- StreamWriter)
    (let (view (Writer impl))
      (set! impl.this view)
      view)))

;; Caller holds both directional mutexes, including through both broadcasts.
(def (stream-io-abort-locked! (self  : StreamIO)
                              (error : :t))
  => :void
  (unless self.state.aborted?
    (set! self.error error)
    (stream-abort! self.state)
    (condition-variable-broadcast! self.input-cv)
    (condition-variable-broadcast! self.output-cv)
    (stream-wake-signal! self.wake)))

;; A timed CV wait can raise after releasing the mutex, while another thread owns
;; it. Only unlock our own acquisition, including in nested input/output locks.
;; Keep dynamic unwinding here: parent callers have inner finally clauses that
;; must finish scheduler bookkeeping before this lock is released.
(defrule (with-stream-io-lock mutex body ...)
  (let (mx mutex)
    (try
      (mutex-lock! mx)
      body ...
      (finally
        (when (eq? (mutex-state mx) (current-thread))
          (mutex-unlock! mx))))))

;; Include the initial close's deadline at transport commits, not just in the
;; closer thread: a busy scheduler must not keep draining after that budget ends.
(def (stream-io-expire-locked! (self : StreamIO))
  => :void
  (unless (or self.state.aborted? (stream-retirable? self.state))
    (cond
     ((>= (current-time-seconds) self.expire)
      (stream-io-abort-locked!
       self (Closed "Stream authorization expired" where: 'stream-io-check!)))
     ((and (memq self.state.output-state '(draining fin-in-flight))
           (not (eq? self.drain-deadline absent-obj))
           (>= (##current-time-point) (time->seconds self.drain-deadline)))
      (stream-io-abort-locked!
       self (Timeout "Stream drain deadline expired" where: 'stream-io-check!))))))

;; Called under either directional lock. Raise only: the operation handler drops
;; that lock BEFORE acquiring both locks to abort. Never escalate a held lock.
(def (stream-io-check! (self     : StreamIO)
                       (deadline : :t := absent-obj))
  => :void
  (when self.state.aborted?
    (raise self.error))
  (when (>= (current-time-seconds) self.expire)
    (raise-io-closed stream-io-check! "Stream authorization expired"))
  (when (and (not (eq? deadline absent-obj))
             (>= (##current-time-point) (time->seconds deadline)))
    (raise-timeout stream-io-check! "Stream IO deadline expired")))

;; Capture only the application budget once. Authorization is mutable and must
;; never be saved in this deadline; !NoTimeout retains the exact absent-obj sentinel.
(def (stream-io-deadline (timeout : IOTimeout))
  => :t
  (timeout->abs-timeout timeout value: seconds->time))

;; Deadline is the captured user budget (or absent-obj), not an authorization bound.
;; mutex-unlock! atomically unlocks and waits; it does NOT reacquire the mutex.
;; Even a false timed-wait result must reacquire before the caller rechecks state
;; and budgets: installation may have advanced expiration while we were waiting.
;; Let the caller also distinguish completed FIN from an overdue unfinished drain.
(def (stream-io-wait! (self     : StreamIO)
                      (mx       : :mutex)
                      (cv       : :condvar)
                      (deadline : :t))
  => :void
  (mutex-unlock! mx cv
                 (seconds->time
                  (if (eq? deadline absent-obj)
                    self.expire
                    (min self.expire (time->seconds deadline)))))
  (mutex-lock! mx)
  (void))

(def (stream-io-abort! (self  : StreamIO)
                       (error : :t := (Closed "Stream aborted" where: 'stream-io-abort!)))
  => :void
  (with-stream-io-lock self.input-mx
    (with-stream-io-lock self.output-mx
      (stream-io-abort-locked! self error))))

;; Explicit raw-owner expiry hook. Connection expiry/reset use stream-io-abort!.
(def (stream-io-expire! (self : StreamIO))
  => :void
  (with-stream-io-lock self.input-mx
    (with-stream-io-lock self.output-mx
      (stream-io-expire-locked! self))))

;; Internal authorization installation, not credential validation or a public
;; lease setter. Caller holds parent -> input -> output and has rechecked current
;; connection liveness, round identity, deadline and selected evidence AFTER the
;; stream-lock waits. Apply old authorization/drain expiry before any advance.
;; New work cannot renew terminal IO. An already committed exchange may finish its
;; authenticated metadata installation after graceful FIN/final-read retirement;
;; this changes no IO state and cannot reopen either direction. Abort and actual
;; old-lease expiry still win. Invalid/nonforward proposals are programmer errors.
(def (stream-io-install-lease-locked! (self       : StreamIO)
                                      (expire     : :integer)
                                      (committed? : :boolean := #f))
  => :boolean
  (stream-io-expire-locked! self)
  (if (or self.state.aborted? (>= (current-time-seconds) self.expire)
          (and (not committed?) (stream-retirable? self.state)))
    #f
    (begin
      (unless (<= 1 expire #xffffffffffffffff)
        (raise-bad-argument stream-io-install-lease-locked!
                            "positive u64 authorization expiration" expire))
      (unless (> expire self.expire)
        (raise-bad-argument stream-io-install-lease-locked!
                            "strictly forward authorization expiration" expire self.expire))
      (set! self.expire expire)
      (condition-variable-broadcast! self.input-cv)
      (condition-variable-broadcast! self.output-cv)
      (stream-wake-signal! self.wake)
      #t)))

;; Standalone internal-owner/test seam. Parent protocol installation must use the
;; locked variant so it can revalidate its own lease and round after acquiring BOTH
;; stream locks. This wrapper cannot check connection authority on the parent's behalf.
(def (stream-io-install-lease! (self   : StreamIO)
                               (expire : :integer))
  => :boolean
  (with-stream-io-lock self.input-mx
    (with-stream-io-lock self.output-mx
      (stream-io-install-lease-locked! self expire))))

;; Parent timer observation and expiry application are atomic under both locks.
;; No deadline for an aborted or fully finished stream, even if controls or a
;; transport borrow still retain its registry entry. Output FIN alone is not EOF.
(def (stream-io-status (self : StreamIO))
  => :values
  (with-stream-io-lock self.input-mx
    (with-stream-io-lock self.output-mx
      (stream-io-expire-locked! self)
      (values self.state.aborted?
              (and (not self.state.aborted?) (not (stream-retirable? self.state))
                   (if (and (memq self.state.output-state '(draining fin-in-flight))
                            (not (eq? self.drain-deadline absent-obj)))
                     (seconds->time
                      (min self.expire (time->seconds self.drain-deadline)))
                     (seconds->time self.expire)))))))

(def (stream-io-set-input-timeout! (self    : StreamIO)
                                   (timeout : IOTimeout))
  => :void
  (with-stream-operation self expected
    (with-stream-io-lock self.input-mx
      (stream-io-check! self)
      (when (stream-eof? self.state)
        (set! expected (Closed "Stream input finished" where: 'stream-io-set-input-timeout!))
        (raise expected))
      (set! self.input-timeout timeout))))

(def (stream-io-set-output-timeout! (self    : StreamIO)
                                    (timeout : IOTimeout))
  => :void
  (with-stream-operation self expected
    (with-stream-io-lock self.output-mx
      (stream-io-check! self)
      (unless (eq? self.state.output-state 'open)
        (set! expected (Closed "Stream output closed" where: 'stream-io-set-output-timeout!))
        (raise expected))
      (set! self.output-timeout timeout))))

;; Only the exact expected EOF/closed-direction exception is nonabortive, not
;; arbitrary exceptions of the same class delivered by a backend.
;; Ordinary worker exceptions are caught after lock cleanup, aborted and rethrown.
;; The unset marker is not #f: a backend may raise #f and still require abort.
(defrule (with-stream-operation self expected body ...)
  (let (expected absent-obj)
    (try
      (begin body ...)
      (catch (e)
        (unless (eq? e expected)
          (stream-io-abort! self e))
        (raise e)))))

(def (stream-reader-read (reader : StreamReader)
                         (output : :u8vector)
                         (start  : :fixnum)
                         (end    : :fixnum)
                         (need   : :fixnum))
  => :fixnum
  (using (self reader.io :- StreamIO)
    (with-stream-operation self expected
      (with-stream-io-lock self.input-mx
        (let (deadline (stream-io-deadline self.input-timeout))
          (let loop ((offset start :- :fixnum))
            (stream-io-check! self deadline)
            (let (count (stream-consume! self.state output offset end))
              (when (fx> count 0)
                (condition-variable-broadcast! self.input-cv)
                (stream-wake-signal! self.wake))
              (let* ((offset (fx+ offset count))
                     (total (fx- offset start)))
                (cond
                 ((or (fx= offset end) (and (fx> total 0) (fx>= total need))) total)
                 ((stream-eof? self.state)
                  (if (fx< total need)
                    (begin
                      (set! expected
                        (PrematureEndOfInput "Premature stream EOF"
                                             where: 'stream-reader-read irritants: [need total]))
                      (raise expected))
                    total))
                 (else
                  (stream-io-wait! self self.input-mx self.input-cv deadline)
                  (loop offset)))))))))))

(def (stream-reader-close (reader : StreamReader))
  => :void
  (stream-io-abort! reader.io))

;; Writer.write consumes the entire slice, not merely the first prefix fitting
;; the ring. Keep one deadline across all capacity waits; release, not selection,
;; makes a borrowed output slice available for the next copied prefix.
(def (stream-writer-write (writer : StreamWriter)
                          (input  : :u8vector)
                          (start  : :fixnum)
                          (end    : :fixnum))
  => :fixnum
  (using (self writer.io :- StreamIO)
    (with-stream-operation self expected
      (with-stream-io-lock self.output-mx
        (let (deadline (stream-io-deadline self.output-timeout))
          (let loop ((offset start :- :fixnum))
            (stream-io-check! self deadline)
            (unless (eq? self.state.output-state 'open)
              (set! expected (Closed "Stream output closed" where: 'stream-writer-write))
              (raise expected))
            (let (count (stream-produce! self.state input offset end))
              (when (fx> count 0)
                (condition-variable-broadcast! self.output-cv)
                (stream-wake-signal! self.wake))
              (let (next (fx+ offset count))
                (if (fx= next end)
                  (fx- end start)
                  (begin
                    (stream-io-wait! self self.output-mx self.output-cv deadline)
                    (loop next)))))))))))

;; Output state, not absent-obj, distinguishes no close from a no-IO-limit drain.
;; Repeated close joins the initial close's captured drain deadline.
(def (stream-writer-close (writer : StreamWriter))
  => :void
  (using (self writer.io :- StreamIO)
    (with-stream-operation self expected
      (with-stream-io-lock self.output-mx
        (stream-io-check! self)
        (let (deadline (if (eq? self.state.output-state 'open)
                         (stream-io-deadline self.output-timeout)
                         self.drain-deadline))
          (when (eq? self.state.output-state 'open)
            (set! self.drain-deadline deadline)
            (stream-end-output! self.state)
            (condition-variable-broadcast! self.output-cv)
            (stream-wake-signal! self.wake))
          (let loop ()
            (stream-io-check! self)
            (unless (eq? self.state.output-state 'finished)
              (stream-io-check! self deadline)
              (stream-io-wait! self self.output-mx self.output-cv deadline)
              (loop))))))))

;;; Public Stream

;; Metadata and handles remain available after close. The parent owns admission,
;; registration and monitor callbacks; this wrapper never joins parent work.
(defclass NetworkStream
  ((connection : Connection)
   (id         : :integer)
   (direction  : :fixnum)
   (protocol   : :string)
   (io         : StreamIO)
   (this       : Stream))
  final: #t
  constructor: :init!)

;; Initialize the self-referencing cached view before publication.
(defmethod {:init! NetworkStream}
  (lambda (self
           (connection : Connection)
           (id         : :integer)
           (direction  : :fixnum)
           (protocol   : :string)
           (io         : StreamIO))
    (set! self.connection connection)
    (set! self.id id)
    (set! self.direction direction)
    (set! self.protocol protocol)
    (set! self.io io)
    (set! self.this (Stream self))))

;; Wrap an accepted IO without reallocating handles or changing its authorization.
;; The caller retains ownership of IO and treats the protocol string as immutable.
(def (new-stream (connection : Connection)
                 (id         : :integer)
                 (direction  : :fixnum)
                 (protocol   : :string)
                 (io         : StreamIO))
  => Stream
  (unless (or (fx= direction DIRECTION-IN) (fx= direction DIRECTION-OUT))
    (raise-io-error new-stream "Invalid stream direction" direction))
  (using (self (NetworkStream connection id direction protocol io) :- NetworkStream)
    self.this))

(def (network-stream-connection (self : NetworkStream))
  => Connection
  self.connection)

(def (network-stream-id (self : NetworkStream))
  => :integer
  self.id)

(def (network-stream-direction (self : NetworkStream))
  => :fixnum
  self.direction)

(def (network-stream-protocol (self : NetworkStream))
  => :string
  self.protocol)

;; The last installed stream authority is independent of the connection's lease.
;; Installation holds both locks; either one synchronizes this metadata getter.
(def (network-stream-expire (self : NetworkStream))
  => :integer
  (with-stream-io-lock self.io.input-mx
    self.io.expire))

(def (network-stream-reader (self : NetworkStream))
  => Reader
  self.io.reader)

(def (network-stream-writer (self : NetworkStream))
  => Writer
  self.io.writer)

;; Abort wakes blocked operations but does not drain, join or invoke user callbacks.
(def (network-stream-close (self : NetworkStream))
  => :void
  (stream-io-abort! self.io))

(def (network-stream-set-input-timeout! (self    : NetworkStream)
                                        (timeout : IOTimeout))
  => :void
  (stream-io-set-input-timeout! self.io timeout))

(def (network-stream-set-output-timeout! (self    : NetworkStream)
                                         (timeout : IOTimeout))
  => :void
  (stream-io-set-output-timeout! self.io timeout))

(implement Stream NetworkStream
  (connection __network-stream-connection)
  (id __network-stream-id)
  (direction __network-stream-direction)
  (protocol __network-stream-protocol)
  (expire __network-stream-expire)
  (reader __network-stream-reader)
  (writer __network-stream-writer)
  (close __network-stream-close)
  (set-input-timeout! __network-stream-set-input-timeout!)
  (set-output-timeout! __network-stream-set-output-timeout!))

;;; Parent dispatch and transport ownership boundaries

;; Protocol failures still propagate to the parent for connection-fatal handling.
;; This gate only protects the stream; it does not schedule RESET or other frames.
(defrule (with-stream-transition self mx deadline body ...)
  (with-stream-operation self expected
    (with-stream-io-lock mx
      (stream-io-check! self deadline)
      body ...)))

(def (stream-io-receive! (self  : StreamIO)
                         (input : :u8vector))
  => :void
  (with-stream-transition self self.input-mx absent-obj
    (stream-receive! self.state input)
    (condition-variable-broadcast! self.input-cv)))

(def (stream-io-credit-receive! (self   : StreamIO)
                                (credit : :integer))
  => :void
  (with-stream-transition self self.output-mx self.drain-deadline
    (stream-credit-receive! self.state credit)
    (condition-variable-broadcast! self.output-cv)
    (stream-wake-signal! self.wake)))

(def (stream-io-fin-receive! (self : StreamIO))
  => :void
  (with-stream-transition self self.input-mx absent-obj
    (stream-fin-receive! self.state)
    (condition-variable-broadcast! self.input-cv)
    (stream-wake-signal! self.wake)))

(def (stream-io-credit-commit! (self : StreamIO))
  => :fixnum
  (with-stream-transition self self.input-mx absent-obj
    (stream-credit-commit! self.state)))

(def (stream-io-data-commit! (self           :  StreamIO)
                             (quantum        :~ (? (and fixnum? fxpositive?)) :- :fixnum)
                             (scan?          :  :boolean := #f)
                             (defer-cleanup? :  :boolean := #f))
  => :values
  (try
    (let (expired? #f)
      (let-values (((bytes start end)
                    (with-stream-io-lock self.output-mx
                      (cond
                       ((and scan? self.state.aborted?) (values #f 0 0))
                       ((and scan?
                             (or (>= (current-time-seconds) self.expire)
                                 (and (memq self.state.output-state '(draining fin-in-flight))
                                      (not (eq? self.drain-deadline absent-obj))
                                      (>= (##current-time-point)
                                          (time->seconds self.drain-deadline)))))
                        (set! expired? #t)
                        (values #f 0 0))
                       (else
                        (unless scan? (stream-io-check! self self.drain-deadline))
                        (stream-data-commit! self.state quantum))))))
        ;; Observed expiry is not a caught exception. Drop output before acquiring
        ;; both locks to apply it; arbitrary raised failures still abort/propagate.
        (when expired? (stream-io-expire! self))
        (values bytes start end)))
    (catch (failure)
      ;; A parent already owns provisional work before entering this boundary.
      ;; It must close the socket before aborting/releasing a possibly committed slice.
      (unless defer-cleanup? (stream-io-abort! self failure))
      (raise failure))))

;; Standalone release frees transport ownership even when stream liveness fails.
;; The outer catch covers ordinary failures and failure-path abort too. End actual
;; ownership before rethrowing. Never publish FIN success before liveness abort.
;; An expired optional connection lease instead returns #f WITHOUT abort/release:
;; the parent must first close its socket outside its operation lock, then abort
;; and retry release without this gate. Never shorten the stream's own expiration.
;; The same owner handles UNKNOWN exceptions when a connection lease is supplied.
;; Normal stream expiry remains local; observe it without catching arbitrary errors.
(defrule (with-stream-release obj release! connection-expire)
  (using (self obj :- StreamIO)
    (let ((deferred? #f) (released? #f) (notified? #f))
      (try
        (let (failure #f)
          (with-stream-io-lock self.output-mx
            (if (and connection-expire (>= (current-time-seconds) connection-expire))
              (set! deferred? #t)
              (begin
                (unless self.state.aborted?
                  (set! failure
                    (cond
                     ((>= (current-time-seconds) self.expire)
                      (Closed "Stream authorization expired" where: 'stream-io-check!))
                     ((and (memq self.state.output-state '(draining fin-in-flight))
                           (not (eq? self.drain-deadline absent-obj))
                           (>= (##current-time-point) (time->seconds self.drain-deadline)))
                      (Timeout "Stream IO deadline expired" where: 'stream-io-check!))
                     (else #f))))
                (unless failure
                  (release! self.state)
                  (set! released? #t)
                  (when (eq? self.state.output-state 'finished)
                    (set! self.drain-deadline absent-obj))
                  (condition-variable-broadcast! self.output-cv)
                  ;; Parent release supplies the leaf wake after returning from here.
                  (unless connection-expire
                    (set! notified? #t)
                    (stream-wake-signal! self.wake))))))
          (when failure
            (stream-io-abort! self failure)
            (with-stream-io-lock self.output-mx
              (release! self.state)
              (set! released? #t)
              (condition-variable-broadcast! self.output-cv)
              (unless connection-expire
                (set! notified? #t)
                (stream-wake-signal! self.wake)))))
        (catch (e)
          (unless connection-expire
            ;; Ownership cleanup is unconditional, not a retry of a failed wake.
            (try
              (stream-io-abort! self e)
              (finally
                (with-stream-io-lock self.output-mx
                  (unless released? (release! self.state))
                  (condition-variable-broadcast! self.output-cv)
                  (unless notified? (stream-wake-signal! self.wake))))))
          (raise e)))
      (if deferred? #f (void)))))

(def (stream-io-data-release! (self              :  StreamIO)
                              (connection-expire :? :integer := #f))
  => (Maybe :void)
  (with-stream-release self stream-data-release! connection-expire))

(def (stream-io-fin-commit! (self : StreamIO))
  => :boolean
  (with-stream-transition self self.output-mx self.drain-deadline
    (stream-fin-commit! self.state)))

(def (stream-io-fin-release! (self              :  StreamIO)
                             (connection-expire :? :integer := #f))
  => (Maybe :void)
  (with-stream-release self stream-fin-release! connection-expire))

;; Explicit scheduler observation, including stale-control expiry. Unlike the
;; directional IO gates, aborted or expired streams are simply not control-ready.
;; Retirement suppresses idle expiry, not authorization checks for final credit.
;; Commit must recheck liveness after this observation; no ownership is acquired.
(def (stream-io-control-ready? (self    : StreamIO)
                               (credit? : :boolean))
  => :boolean
  (with-stream-io-lock self.input-mx
    (with-stream-io-lock self.output-mx
      (stream-io-expire-locked! self)
      (and (not self.state.aborted?)
           (< (current-time-seconds) self.expire)
           (if credit?
             (fx> self.state.pending-credit 0)
             (and (eq? self.state.output-state 'draining)
                  (fxzero? self.state.send.size)))))))

;; Managed selection must check the drain deadline in the same critical section
;; as credit/FIN commitment. A readiness observation is not an expiry reservation.
;; Return zero credit or false FIN for terminal/not-ready state, not an exception.
(def (stream-io-control-commit! (self    : StreamIO)
                                (credit? : :boolean))
  => :t
  (with-stream-io-lock self.input-mx
    (with-stream-io-lock self.output-mx
      (stream-io-expire-locked! self)
      (if (or self.state.aborted? (>= (current-time-seconds) self.expire))
        (if credit? 0 #f)
        (if credit?
          (stream-credit-commit! self.state)
          (stream-fin-commit! self.state))))))

;; Readiness is an observation, not a scheduling reservation. The parent must
;; recheck through commit after securing frame/control capacity and wire ordering.
(def (stream-io-input-ready? (self : StreamIO))
  => :boolean
  (with-stream-transition self self.input-mx absent-obj
    (fx> self.state.pending-credit 0)))

(def (stream-io-output-ready? (self : StreamIO))
  => :boolean
  (with-stream-transition self self.output-mx self.drain-deadline
    (or (and (fxzero? self.state.in-flight)
             (fx> self.state.send.size 0)
             (fx> self.state.send-credit 0))
        (and (eq? self.state.output-state 'draining)
             (fxzero? self.state.send.size)))))

(def (stream-io-retirable? (self : StreamIO))
  => :boolean
  (with-stream-io-lock self.input-mx
    (with-stream-io-lock self.output-mx
      (stream-retirable? self.state))))
