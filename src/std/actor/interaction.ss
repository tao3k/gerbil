;;; -*- Gerbil -*-
;;; © vyzo
;;; actor interaction primitives
(import :std/error
        :std/stxparam
        :std/time/time
        :std/time/precise
        :gerbil/runtime/util
        ./message
        ./host
        ./state)
(export #t)

;; default reply timeout in seconds
(def default-reply-timeout 5)

;; send a message envelope
(def (send-message! (e : Envelope))
  => :void
  (unless (envelope-expired? e)
    (cond
     ((LocalActor? e.dest)
      (using (dest e.dest : LocalActor)
        (thread-send-fast! dest.thread e)))
     ((Handle? e.dest)
      (using (host (actor-local-host) : ActorHost)
        (host.send! e)))
     ((ActorGroup? e.dest)
      (using (host (actor-local-host) : ActorHost)
        (host.broadcast! e)))
     (else
      (raise-bad-argument send! "invalid peer" e.dest)))))

;; send a reply to a message
(def (send-reply! (msg      : :t)
                  (in-reply : Envelope)
                  continue: (continue :? ReplyOption := #f))
  => :void
  (cond
   ((and in-reply.options in-reply.options.continue)
    => (lambda ((reply :- ReplyOption))
         (let (dest in-reply.source)
           (cond
            ((LocalActor? dest)
             (let* ((exp in-reply.options.expire)
                    (env (Envelope source:   (actor-local-peer)
                                   dest:     dest
                                   message:  msg
                                   protocol: in-reply.protocol
                                   continue: reply.seqno
                                   options:
                                   (if (or continue exp)
                                     (Options expire: exp
                                              continue: continue)
                                     #f))))
               (unless (and exp (<= exp (##current-time-point)))
                 (using (d dest :- LocalActor)
                   (thread-send-fast! d.thread env)))))
            ((Handle? dest)
             (using (host (actor-local-host) : ActorHost)
               (host.send-reply! msg in-reply continue)))
            (else
             (raise-bad-argument send-reply! "invalid peer" dest))))))
   (else
    (raise-bad-argument send-reply! "reply not expected" in-reply))))

;; sends a message wrapped in an envelope.
;; dest can be a thread or a Peer
;; msg is the message in the envelope
;; proto is the protocol for the interaction
(def (-> (dest : Peer)
         (msg : :t)
         (protocol : :string))
  => :void
  (send-message!
   (Envelope source: (actor-local-peer)
             dest: dest
             message: msg
             protocol: protocol)))

;; sends a message with a reply continuation
;; and returns the message in the reply envelope
;; the timeout specifies how long to wait in seconds, superseded
;; by an expiry as an absolute time point in unix seconds
(def (->> (dest     : Peer)
          (msg      : :t)
          (protocol : :string)
          timeout: (timeo : :real := default-reply-timeout)
          expire:  (expire :? :integer := #f))
  => :t
  (Envelope-message
   (->>> dest msg protocol
         timeout: timeo
         expire: expire)))

;; sends a message with a reply continuation
;; and returns the envelope of the reply
;; this is the generalized form of ->> that can be used for
;; threaded interactions that consist of multiple messages
(def (->>> (dest     : Peer)
           (msg      : :t)
           (protocol : :string)
            timeout: (timeo : :real := default-reply-timeout)
            expire:  (expire :? :integer := #f))
  => Envelope
  (let* ((st (actor-local-state))
         (seqno (:- (__atomic-fx-fetch-add! (&ActorState-seqno st) 0 1 0) :fixnum))
         (now (##current-time-point))
         (deadline (or expire (+ now timeo)))
         (exp (exact (ceiling deadline)))
         (env (Envelope source: (&ActorState-peer st)
                        dest: dest
                        message: msg
                        protocol: protocol
                        options: (Options expire: exp
                                          continue: (ReplyOption seqno: seqno)))))
    (if (and (LocalActor? dest) (not (<= exp now)))
      (using (d dest :- LocalActor)
        (thread-send-fast! d.thread env))
      (send-message! env))
    (mailbox-receive-reply! seqno protocol deadline)))

;; sends a reply in a reaction context
(defrule (--> reply)
  (send-reply! reply @envelope))

;; sends a conditional reply in a reaction context, if the sender
;; expects one
(defrule (-->? reply)
  (when (alet (opt (Envelope-options @envelope))
          (Options-continue opt))
    (send-reply! reply @envelope)))

;; sends a reply with a continuation in a reaction context and reacts
;; to the continuation
(defrule (-->> reply continue ...)
  (let (seqno (actor-next-seqno!))
    (send-reply! reply @envelope continue: (ReplyOption seqno: seqno))
    (<- continue: seqno
        protocol: @protocol
        continue ...
        timeout: (seconds->time (Options-expire (Envelope-options @envelope))))))

;; sends a message starting a reply continuation thread
(defrule (---> dest msg protocol continue ...)
  (let ($envelope (->>> dest msg protocol))
    (with ((Envelope source: $source message: $message protocol: $protocol continue: $continue) $envelope)
      (syntax-parameterize ((@@envelope (quote-syntax $envelope))
                            (@@source   (quote-syntax $source))
                            (@@message  (quote-syntax $message))
                            (@@protocol (quote-syntax $protocol))
                            (@@continue (quote-syntax $continue)))
        (match $message continue ...)))))

;; syntax parameters bound in envelope receive context
(defsyntax-parameter* @envelope @@envelope "Bad syntax; not in reaction context")
(defsyntax-parameter* @source @@source "Bad syntax; not in reaction context")
(defsyntax-parameter* @message @@message "Bad syntax; not in reaction context")
(defsyntax-parameter* @protocol @@protocol "Bad syntax; not in reaction context")
(defsyntax-parameter* @continue @@continue "Bad syntax; not in reaction context")

;; reaction macros
(def (reaction-timeout timeo)
  (cond
   ((time? timeo)
    timeo)
   ((real? timeo)
    (seconds->time (+ (##current-time-point) timeo)))
   ((not timeo)
    absent-obj)
   (else
    (raise-bad-argument reaction-timeout "bad timeout" timeo))))

(begin-syntax
  (def (generate-receive stx generate-recv-e raw?)
    (syntax-case stx ()
      ((_ body ...)
       (with-syntax* (((values clauses else-clause timeout)
                       (parse-receive stx #'(body ...) raw?))
                      (loop (genident 'loop))
                      (recv-e (generate-recv-e stx clauses #'loop)))
         (cond
          ((and (not else-clause) (not timeout))
           #'(let loop ()
               (let (next (mailbox-next-blocking!))
                 (recv-e next))))
          (else-clause
           (with-syntax (((else-body ...) else-clause))
             #'(let loop ()
                 (let (next (mailbox-next))
                   (if (eq? next mailbox-empty)
                     ((lambda () (mailbox-rewind-fast!) else-body ...))
                     (recv-e next))))))
          (else
           (with-syntax ((timeo timeout))
             #'(let (expiry (reaction-timeout timeo))
                 (let loop ()
                   (let (next (mailbox-next-timeout! expiry))
                     (if (eq? next mailbox-timeout)
                       (begin
                         (mailbox-rewind-fast!)
                         (raise-timeout receive "receive timeout" expiry))
                       (recv-e next))))))))))))

  (def (generate-receive-raw stx)
    (generate-receive stx generate-receive-raw-e #t))

  (def (generate-receive-envelope stx)
    (generate-receive stx generate-receive-envelope-e #f))

  (def (generate-receive-raw-e stx clauses loop)
    (with-syntax ((((pat body ...) ...) clauses)
                  (loop loop))
      #'(lambda (msg)
          (match msg
            (pat (mailbox-extract-and-rewind-fast!) body ...) ...
            (else (loop))))))

  (def (generate-receive-envelope-e stx clauses loop)
    (with-syntax ((((proto cont pat body ...) ...) clauses)
                  (loop loop)
                  (receive (genident 'receive)))
      #'(lambda ($envelope)
          (let receive (($envelope $envelope))
            (if (Envelope? $envelope)
              (if (and (Envelope-options $envelope) (envelope-expired? $envelope))
                (let (next (mailbox-extract-and-next))
                  (if (eq? next mailbox-empty)
                    (loop)
                    (receive next)))
                (match $envelope
                  ((Envelope source: $source message: $message protocol: $protocol continue: $continue)
                   (syntax-parameterize ((@@envelope (quote-syntax $envelope))
                                         (@@source   (quote-syntax $source))
                                         (@@message  (quote-syntax $message))
                                         (@@protocol (quote-syntax $protocol))
                                         (@@continue (quote-syntax $continue)))
                     (match* ($protocol $continue $message)
                       (((equal? proto) (eqv? cont) pat)
                        (mailbox-extract-and-rewind-fast!)
                        body ...) ...
                       (else (loop)))))
                  (else (loop))))
              (loop))))))

  (def (parse-receive stx body raw?)
    (let lp ((rest body) (proto #f) (continue #f) (clauses []) (timeout #f))
      (syntax-case rest ()
        ((continue: cont . rest)
         (if raw?
           (raise-syntax-error #f "protocol specification not applicable to raw reaction" stx)
            (lp #'rest proto #'cont clauses timeout)))
        ((protocol: proto . rest)
         (if raw?
           (raise-syntax-error #f "protocol specification not applicable to raw reaction" stx)
           (lp #'rest #'proto continue clauses timeout)))
        ((timeout: timeo . rest)
         (cond
          (timeout
           (raise-syntax-error #f "Bad syntax; duplicate timeout" stx))
          (else
           (lp #'rest proto continue clauses #'timeo))))
        (()
         (if (null? clauses)
           (raise-syntax-error #f "Bad syntax; no reaction clauses" stx)
           (values (reverse clauses) #f timeout)))
        ((hd . rest)
         (syntax-case #'hd (else unquote unquote-splicing)
           ((else expr ...)
            (cond
             (timeout
              (raise-syntax-error #f "Bad syntax; cannot specify both timeout and else clause" stx))
             ((not (stx-null? #'rest))
              (raise-syntax-error #f "Bad syntax; else clause must be last" stx))
             (else
              (values (reverse clauses) #'(expr ...) #f))))
           ((unquote macro-expr)
            (syntax-case #'macro-expr ()
              ((macro . args)
               (let* ((expander (syntax-local-e #'macro))
                      (new-clause (core-apply-expander expander #'macro-expr))
                      (new-rest (cons new-clause #'rest)))
                 (lp new-rest proto continue clauses timeout)))
              (_ (raise-syntax-error #f "Bad syntax; not a macro expression" stx #'macro-expr))))
           ((unquote-splicing macro-expr)
            (syntax-case #'macro-expr ()
              ((macro . args)
               (let* ((expander (syntax-local-e #'macro))
                      (new-clauses (core-apply-expander expander #'macro-expr))
                      (new-rest (stx-foldr cons #'rest new-clauses)))
                 (lp new-rest proto continue clauses timeout)))
              (_ (raise-syntax-error #f "Bad syntax; not a macro expression" stx #'macro-expr))))
           ((pat body ...)
            (cond
             (proto
              (lp #'rest
                  proto
                  continue
                  (cons (cons* proto continue #'(pat body ...)) clauses)
                  timeout))
             (raw?
              (lp #'rest
                  proto
                  continue
                  (cons #'(pat body ...) clauses)
                  timeout))
             (else
              (raise-syntax-error #f "no protocol specified for clause" stx #'hd))))))))))

;; searches and receives by matching a raw message in the current thread mailbox
(defsyntax (<< stx)
  (generate-receive-raw stx))

;; searches and receives by matching a message envelope in the current thread mailbox.
(defsyntax (<- stx)
  (generate-receive-envelope stx))

;; mailbox utilities
(def mailbox-timeout '#(timeout))
(def mailbox-empty '#(empty))

(cond-expand
 (gerbil-smp
  (extern namespace: #f
    macro-thread-mailbox
    macro-mailbox-mutex
    macro-mailbox-condvar
    macro-condvar-name-set!
    macro-mutex-lock-anonymously!
    macro-mutex-unlock!
    ##thread-send-with-mb
    ##mutex-signal-and-condvar-wait!
    ##absrel-timeout->timeout)

  ;; Acquire-fenced fast mailbox lookup: once a thread's mailbox is allocated it
  ;; is immutable for life, so steady-state actor send/recv skips macro-lock-thread!.
  (def (mailbox-get-fast! thread)
    (declare (not interrupts-enabled))
    (let ((mb (macro-thread-mailbox thread)))
      (if mb
        (begin
          (__atomic-fence! 1)
          mb)
        (##thread-mailbox-get! thread))))

  (def (thread-send-fast! thread obj)
    (let ((mb (macro-thread-mailbox thread)))
      (if mb
        (begin
          (__atomic-fence! 1)
          (##thread-send-with-mb thread mb obj))
        (thread-send thread obj))))

  (def (mailbox-rewind-fast!)
    (declare (not interrupts-enabled))
    (let* ((mb (mailbox-get-fast! (macro-current-thread)))
           (mutex (macro-mailbox-mutex mb)))
      (##check-heap-limit)
      (macro-mutex-lock-anonymously! mutex #f)
      (macro-mailbox-cursor-set! mb #f)
      (macro-mutex-unlock! mutex)
      (void)))

  (def (mailbox-extract-and-rewind-fast!)
    (declare (not interrupts-enabled))
    (let* ((mb (mailbox-get-fast! (macro-current-thread)))
           (mutex (macro-mailbox-mutex mb)))
      (##check-heap-limit)
      (macro-mutex-lock-anonymously! mutex #f)
      (let ((cursor (macro-mailbox-cursor mb)))
        (when cursor
          (let* ((next (macro-fifo-next cursor))
                 (next2 (macro-fifo-next next)))
            (macro-fifo-next-set! cursor next2)
            (when (##not (##pair? next2))
              (macro-fifo-tail-set! (macro-mailbox-fifo mb) cursor))
            (macro-mailbox-cursor-set! mb #f))))
      (macro-mutex-unlock! mutex)
      (void)))

  (def (mailbox-next-blocking!)
    (declare (not interrupts-enabled))
    (let* ((mb (mailbox-get-fast! (macro-current-thread)))
           (mutex (macro-mailbox-mutex mb))
           (cv (macro-mailbox-condvar mb)))
      (let loop ()
        (##check-heap-limit)
        (macro-mutex-lock-anonymously! mutex #f)
        (let* ((cursor (macro-mailbox-cursor mb))
               (next (if cursor (macro-fifo-next cursor) (macro-mailbox-fifo mb)))
               (next2 (macro-fifo-next next)))
          (if (##pair? next2)
            (let ((result (macro-fifo-elem next2)))
              (macro-mailbox-cursor-set! mb next)
              (macro-mutex-unlock! mutex)
              (let ()
                (declare (interrupts-enabled))
                result))
            (begin
              ;; In Gambit's ##mutex-signal-and-condvar-wait!, #t means infinite wait
              ;; (returned by (##absrel-timeout->timeout #f)), while #f means expired!
              (macro-condvar-name-set! cv #t)
              (##mutex-signal-and-condvar-wait! mutex cv #t)
              (loop)))))))

  (def (mailbox-next-timeout! expiry)
    (declare (not interrupts-enabled))
    (let* ((mb (mailbox-get-fast! (macro-current-thread)))
           (mutex (macro-mailbox-mutex mb))
           (cv (macro-mailbox-condvar mb)))
      (let loop ((timeout-ready? #f) (timeout #f))
        (##check-heap-limit)
        (macro-mutex-lock-anonymously! mutex #f)
        (let* ((cursor (macro-mailbox-cursor mb))
               (next (if cursor (macro-fifo-next cursor) (macro-mailbox-fifo mb)))
               (next2 (macro-fifo-next next)))
          (if (##pair? next2)
            (let ((result (macro-fifo-elem next2)))
              (macro-mailbox-cursor-set! mb next)
              (macro-mutex-unlock! mutex)
              (let ()
                (declare (interrupts-enabled))
                result))
            (if (##not timeout-ready?)
              (begin
                (macro-mutex-unlock! mutex)
                (loop #t
                      (##absrel-timeout->timeout
                       (if (##eq? expiry absent-obj) #f expiry))))
              (begin
                (macro-condvar-name-set! cv #t)
                (if (##mutex-signal-and-condvar-wait! mutex cv timeout)
                  (loop #t timeout)
                  mailbox-timeout))))))))

  ;; Dedicated single-lock SMP reply receiver for `->>>` / `->>`:
  ;; Scans FIFO and extracts matching (seqno, protocol) reply in ONE mutex lock
  ;; with zero allocation under lock and lazy deadline conversion on wait only.
  (def (mailbox-receive-reply! (seqno : :integer)
                               (protocol : :string)
                               (deadline : :real))
    => Envelope
    (let* ((mb (mailbox-get-fast! (macro-current-thread)))
           (mutex (macro-mailbox-mutex mb))
           (cv (macro-mailbox-condvar mb))
           (fifo (macro-mailbox-fifo mb)))
      (let loop ((timeout-ready? #f) (timeout #f))
        (let* ((now (##current-time-point))
               (now-sec (exact (floor now))))
          (let ((found
                 (let ()
                   (declare (not interrupts-enabled))
                   (##check-heap-limit)
                   (macro-mutex-lock-anonymously! mutex #f)
                   (let scan ((prev fifo) (cur (macro-fifo-next fifo)))
                     (if (##pair? cur)
                       (let ((elem (macro-fifo-elem cur))
                             (nxt (macro-fifo-next cur)))
                         (if (Envelope? elem)
                           (let ((opts (&Envelope-options elem)))
                             (if (and opts
                                      (&Options-expire opts)
                                      (let ((exp (&Options-expire opts)))
                                        (and (##fixnum? exp) (##fixnum? now-sec)
                                             (##fx<= exp now-sec))))
                               ;; Unlink expired envelope in place
                               (begin
                                 (macro-fifo-next-set! prev nxt)
                                 (when (##not (##pair? nxt))
                                   (macro-fifo-tail-set! fifo prev))
                                 (scan prev nxt))
                               (if (and (##eqv? (&Envelope-continue elem) seqno)
                                        (##string=? (&Envelope-protocol elem) protocol))
                                 (begin
                                   (macro-fifo-next-set! prev nxt)
                                   (when (##not (##pair? nxt))
                                     (macro-fifo-tail-set! fifo prev))
                                   (macro-mailbox-cursor-set! mb #f)
                                   (macro-mutex-unlock! mutex)
                                   elem)
                                 (scan cur nxt))))
                           (scan cur nxt)))
                       ;; Not found in current FIFO snapshot
                       (if (##not timeout-ready?)
                         (begin
                           (macro-mutex-unlock! mutex)
                           mailbox-empty)
                         (begin
                           (macro-condvar-name-set! cv #t)
                           (if (##mutex-signal-and-condvar-wait! mutex cv timeout)
                             mailbox-empty
                             (begin
                               (##check-heap-limit)
                               (macro-mutex-lock-anonymously! mutex #f)
                               (macro-mailbox-cursor-set! mb #f)
                               (macro-mutex-unlock! mutex)
                               mailbox-timeout)))))))))
            (cond
             ((##eq? found mailbox-empty)
              (if timeout-ready?
                (loop #t timeout)
                (loop #t (##absrel-timeout->timeout (seconds->time deadline)))))
             ((##eq? found mailbox-timeout)
              (raise-timeout receive "receive timeout" (seconds->time deadline)))
             (else
              (:- found Envelope))))))))

  ;; Synchronize directly with Gambit's SMP mailbox mutex protocol
  ;; (##check-heap-limit + anonymous lock), avoiding owned-mutex BTQ linking
  ;; and abandoned-mutex state if an actor terminates concurrently.
  (def (mailbox-next)
    (declare (not interrupts-enabled))
    (let* ((mb (mailbox-get-fast! (macro-current-thread)))
           (mutex (macro-mailbox-mutex mb)))
      (##check-heap-limit)
      (macro-mutex-lock-anonymously! mutex #f)
      (let* ((cursor
              (macro-mailbox-cursor mb))
             (next
              (if cursor
                (macro-fifo-next cursor)
                (macro-mailbox-fifo mb)))
             (next2
              (macro-fifo-next next)))
        (if (##pair? next2)
          (let ((result (macro-fifo-elem next2)))
            (macro-mailbox-cursor-set! mb next)
            (macro-mutex-unlock! mutex)
            result)
          (begin
            (macro-mutex-unlock! mutex)
            mailbox-empty)))))
  ;; Removes the current message and returns the next without rewinding the cursor.
  (def (mailbox-extract-and-next)
    (declare (not interrupts-enabled))
    (let* ((mb (mailbox-get-fast! (macro-current-thread)))
           (mutex (macro-mailbox-mutex mb)))
      (##check-heap-limit)
      (macro-mutex-lock-anonymously! mutex #f)
      (let* ((cursor
              (macro-mailbox-cursor mb))
             (result
              (if cursor
                (let* ((current
                        (macro-fifo-next cursor))
                       (next
                        (macro-fifo-next current)))
                  (macro-fifo-next-set! cursor next)
                  (if (##pair? next)
                    (macro-fifo-elem next)
                    (begin
                      (macro-fifo-tail-set! (macro-mailbox-fifo mb) cursor)
                      ;; Keep traversal positioned at the new tail.
                      (macro-fifo-next-set! current cursor)
                      (macro-mailbox-cursor-set! mb current)
                      mailbox-empty)))
                mailbox-empty)))
        (macro-mutex-unlock! mutex)
        result))))
 (else
  (def (thread-send-fast! thread obj)
    (thread-send thread obj))
  (def (mailbox-rewind-fast!)
    (thread-mailbox-rewind))
  (def (mailbox-extract-and-rewind-fast!)
    (thread-mailbox-extract-and-rewind))
  (def (mailbox-next-blocking!)
    (thread-mailbox-next))
  (def (mailbox-next-timeout! expiry)
    (thread-mailbox-next expiry mailbox-timeout))
  (def (mailbox-receive-reply! (seqno : :integer)
                               (protocol : :string)
                               (deadline : :real))
    => Envelope
    (<- continue: seqno
        timeout: (seconds->time deadline)
        protocol: protocol
        (_ @envelope)))
  (def (mailbox-next)
    (declare (not interrupts-enabled))
    (let* ((mb
            (##thread-mailbox-get! (macro-current-thread)))
           (cursor
            (macro-mailbox-cursor mb))
           (next
            (if cursor
              (macro-fifo-next cursor)
              (macro-mailbox-fifo mb)))
           (next2
            (macro-fifo-next next)))
        (if (##pair? next2)
          (let ((result (macro-fifo-elem next2)))
            (macro-mailbox-cursor-set! mb next)
            result)
          mailbox-empty)))
  ;; Removes the current message and returns the next without rewinding the cursor.
  (def (mailbox-extract-and-next)
    (declare (not interrupts-enabled))
    (let* ((mb
            (##thread-mailbox-get! (macro-current-thread)))
           (cursor
            (macro-mailbox-cursor mb)))
      (if cursor
        (let* ((current
                (macro-fifo-next cursor))
               (next
                (macro-fifo-next current)))
          (macro-fifo-next-set! cursor next)
          (if (##pair? next)
            (macro-fifo-elem next)
            (begin
              (macro-fifo-tail-set! (macro-mailbox-fifo mb) cursor)
              ;; Keep traversal positioned at the new tail.
              (macro-fifo-next-set! current cursor)
              (macro-mailbox-cursor-set! mb current)
              mailbox-empty)))
        mailbox-empty)))))

;; gambit# references
(extern namespace: #f
  macro-current-thread
  macro-check-initialized-thread
  macro-thread-end-condvar
  macro-mailbox-cursor
  macro-mailbox-cursor-set!
  macro-mailbox-fifo
  macro-fifo-elem
  macro-fifo-next
  macro-fifo-next-set!
  macro-fifo-tail-set!)
