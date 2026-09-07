;;; -*- Gerbil -*-
;;; © gerbil-mcp contributors
;;; Network debug REPL — remote introspection over TCP.

(import :std/error
        :std/log
        :std/sync/threads)
(export start-repl-server!
        stop-repl-server!
        taint! untaint!)

(extern namespace: #f
  macro-repl-context-level
  macro-repl-channel-last-owner-set!
  ##user-interrupt-current-thread!
  replx)

(deflogger log name: "/net/repl")

(defstruct repl-server-state
  ((mutex   : :mutex)
   (clients : :list))
  final: #t)

(defstruct repl-state
  ((client  : :port)
   (channel : :t)
   (reader  :? :thread)
   (eof     : :boolean))
  final: #t)

(def (start-repl-server!
      password: (passwd :? :string := #f)
      address: (address : :string := "127.0.0.1:7000"))
  => :thread
  ;; The returned server owns the listener; the catch closes startup failures.
  ; gerbil-security: suppress port-open-no-unwind-protect
  (let (sock (open-tcp-server [server-address: address
                               eol-encoding: 'cr-lf
                               reuse-address: #t]))
    (try
     (let* ((tgroup (make-detached-thread-group 'repl-server))
            (state (make-repl-server-state (make-mutex 'repl-server) []))
            (server (make-thread (cut repl-server sock passwd state)
                                 'repl-server tgroup)))
       (thread-group-specific-set! tgroup state)
       (thread-specific-set! server sock)
       (thread-start! server)
       server)
     (catch (e)
       (ignore-errors (close-port sock))
       (raise e)))))

(def (stop-repl-server! (server : :thread))
  => :void
  (let* ((tgroup (thread-thread-group server))
         (sock (thread-specific server))
         (state (thread-group-specific tgroup))
         (clients (if (repl-server-state? state)
                    (repl-server-state-client-snapshot state)
                    [])))
    (when (find (lambda (tgroup)
                  (memq (current-thread)
                        (thread-group->thread-list* tgroup)))
                clients)
      (raise-context-error stop-repl-server!
                           "Cannot stop REPL server from a client thread"))
    (ignore-errors (close-port sock))
    (ignore-errors (thread-terminate! server))
    (ignore-errors (thread-join! server))
    (when (repl-server-state? state)
      (for-each stop-repl-client!
                (repl-server-state-take-clients! state)))
    (void)))

(def (stop-repl-client! (tgroup : :thread-group))
  (let (state (thread-group-specific tgroup))
    (when (repl-state? state)
      (using (state : repl-state)
        (ignore-errors (close-port state.client))))
    (thread-group-kill! tgroup)))

(def (repl-server (sock : :port)
                  (passwd :? :string)
                  (state : repl-server-state))
  (def (accept)
    (try
     (read sock)
     (catch (e)
       (if (input-port-open? sock)
         (begin
           (log.error "error accepting REPL connection"
                      exception: (exception->string e))
           (accept))
         #!eof))))

  (let loop ()
    (let (client (accept))
      (unless (eof-object? client)
        (try
         (let (sinfo (tcp-client-peer-socket-info client))
           (log.debug "accepted REPL connection"
                      peer: (object->string sinfo)))
         (output-port-readtable-set!
          client
          (readtable-sharing-allowed?-set
           (output-port-readtable client) #t))
         (start-repl-client! client passwd state)
         (catch (e)
           (ignore-errors (close-port client))
           (log.error "error starting REPL client"
                      exception: (exception->string e))))
        (loop)))))

(def (start-repl-client! (client : :port)
                         (passwd :? :string)
                         (server-state : repl-server-state))
  (let* ((tgroup (make-detached-thread-group 'repl-client))
         (thread (make-thread
                  (cut repl-client client passwd server-state tgroup)
                  'repl-client tgroup)))
    (try
     (let (state (make-repl-client-state client thread tgroup))
       (thread-group-specific-set! tgroup state)
       (repl-server-state-add-client! server-state tgroup)
       (thread-start! thread)
       thread)
     (catch (e)
       (repl-server-state-remove-client! server-state tgroup)
       (ignore-errors (close-port client))
       (thread-group-kill! tgroup)
       (raise e)))))

(def (repl-client (client : :port)
                  (passwd :? :string)
                  (server-state : repl-server-state)
                  (tgroup : :thread-group))
  (try
   (let (state (repl-client-state))
     (unless state
       (raise-context-error repl-client "No REPL state"))
     (using (state : repl-state)
       (when passwd
         (let loop ()
           (display "Password: " client)
           (force-output client)
           (let (input (read-line client))
             (cond
              ((eof-object? input)
               (raise-context-error repl-client
                                    "Client disconnected during authentication"))
              ((not (equal? input passwd))
               (loop))))))

       (thread-start! state.reader)
       (parameterize ((current-input-port  (##repl-input-port))
                      (current-output-port (##repl-output-port))
                      (current-error-port  (##repl-output-port))
                      (current-user-interrupt-handler
                       (cut ##user-interrupt-current-thread! #f)))
         (replx))))
   (catch (e)
     (log.error "REPL client error"
                exception: (exception->string e)))
   (finally
    (ignore-errors (close-port client))
    (thread-group-kill! tgroup)
    (repl-server-state-remove-client! server-state tgroup))))

(def (repl-client-reader (state : repl-state)
                         (in : :port)
                         (out : :port)
                         (repl-thread : :thread))
  (def (loop telnet-state)
    (let (c (read-char in))
      (if (eof-object? c)
        (begin
          (set! state.eof #t)
          (ignore-errors (close-output-port out)))
        (case telnet-state
          ((input)
           (cond
            ((char=? c #\xff)           ; telnet IAC
             (loop c))
            ((char=? c #\x04)           ; C-d
             (close-output-port out)
             (loop telnet-state))
            (else
             (write-char c out)
             (force-output out)
             (loop telnet-state))))
          ((#\xfb #\xfc #\xfe)          ; WILL/WONT/DONT
           (loop 'input))
          ((#\xfd)                       ; DO
           (when (char=? c #\x06)        ; timing mark
             (write-u8vector '#u8(#xff #xfb #x06) state.client)
             (force-output state.client))
           (loop 'input))
          ((#\xff)                       ; IAC
           (case c
             ((#\xf4)                    ; INTERRUPT (C-c)
              (ignore-errors
               (thread-interrupt! repl-thread ##user-interrupt!))
              (loop 'input))
             ((#\xfb #\xfc #\xfd #\xfe) ; WILL/WONT/DO/DONT
              (loop c))
             (else
              (loop 'input))))
          (else
           (loop 'input))))))

  (try
   (loop 'input)
   (catch (e)
     (unless state.eof
       (log.debug "REPL reader error"
                  exception: (exception->string e)))
     (set! state.eof #t)
     (ignore-errors (close-output-port out)))))

(def (make-repl-client-state (client : :port)
                             (thread : :thread)
                             (tgroup : :thread-group))
  (let* (((values in-rd in-wr)
          (open-string-pipe '(direction: input permanent-close: #f)))
         (_ (##port-name-set! in-rd (lambda (_) '(repl))))
         (channel (##make-repl-channel-ports in-rd client client))
         (_ (macro-repl-channel-last-owner-set! channel thread))
         (state (make-repl-state client channel #f #f))
         (reader
          (make-thread (cut repl-client-reader state client in-wr thread)
                       'repl-client-reader tgroup)))
    (using (state : repl-state)
      (set! state.reader reader)
      state)))

(def (repl-server-state-add-client! (state : repl-server-state)
                                    (tgroup : :thread-group))
  (with-lock state.mutex
    (lambda ()
      (set! state.clients (cons tgroup state.clients)))))

(def (repl-server-state-remove-client! (state : repl-server-state)
                                       (tgroup : :thread-group))
  (with-lock state.mutex
    (lambda ()
      (set! state.clients (remq1 tgroup state.clients)))))

(def (repl-server-state-client-snapshot (state : repl-server-state))
  (with-lock state.mutex
    (lambda () state.clients)))

(def (repl-server-state-take-clients! (state : repl-server-state))
  (with-lock state.mutex
    (lambda ()
      (let (clients state.clients)
        (set! state.clients [])
        clients))))

;;; REPL internals

;; Handle EOF without allowing the built-in REPL command to exit the process.
(def (repl-context-command repl-context src)
  (if (eof-object? src)
    (cond
     ((repl-client-state)
      => (lambda (state)
           (using (state : repl-state)
             (if state.eof
               (##repl-context-return repl-context (void))
               (begin
                 (##repl-channel-newline)
                 (cond
                  ((fx< 0 (macro-repl-context-level repl-context))
                   (##repl-cmd-d repl-context))
                  ((##repl-channel-really-exit?)
                   (##repl-context-return repl-context (void)))
                  (else
                   (##repl-context-prompt repl-context))))))))
     (else
      (##default-repl-context-command repl-context src)))
    (##default-repl-context-command repl-context src)))

(##repl-context-command-set! repl-context-command)

;; Recover the network channel for REPL and tainted thread groups.
(def (make-repl-channel (thread : :thread))
  (cond
   ((repl-client-state thread)
    => repl-state-channel)
   (else
    (##default-thread-make-repl-channel thread))))

(##thread-make-repl-channel-set! make-repl-channel)

;; Retrieve the REPL state associated with a thread group or its parents.
(def (repl-client-state (thread : :thread := (current-thread)))
  (let loop ((tgroup (thread-thread-group thread)))
    (cond
     ((not tgroup) #f)
     ((thread-group-specific tgroup)
      => (lambda (state)
           (if (repl-state? state)
             state
             (loop (thread-group-parent tgroup)))))
     (else
      (loop (thread-group-parent tgroup))))))

(def (primordial-thread-group)
  (thread-thread-group ##primordial-thread))

;; Install this REPL's state on an arbitrary thread group for debugging.
;; This is needed before visiting a thread outside the network REPL's group:
;; make-repl-channel must find this state to route the visited thread's REPL
;; through the same network connection. The state also applies to descendants.
;; TODO: Add a hook for Gambit's visit-thread command so it can propagate the
;; network REPL state automatically, without requiring explicit taint! calls.
(def (taint! (tgroup :? :thread-group := #f))
  => :t
  (cond
   ((repl-client-state)
    => (lambda (state)
         (let* ((tgroup (or tgroup (primordial-thread-group)))
                (old-state (thread-group-specific tgroup)))
           (thread-group-specific-set! tgroup state)
           old-state)))
   (else
    (raise-context-error taint! "No REPL state"))))

;; Restore a thread group's state after taint!.
(def (untaint! (tgroup :? :thread-group := #f)
               (state : :t := #f))
  => :void
  (let (tgroup (or tgroup (primordial-thread-group)))
    (if (repl-state? (thread-group-specific tgroup))
      (thread-group-specific-set! tgroup state)
      (raise-context-error untaint!
                           "No tainted REPL state in thread group"
                           tgroup))))
