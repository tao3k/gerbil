;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Internal network worker entry and non-inherited thread-local marker
(import (only-in :std/error exception->string)
        :std/sync/threads
        ./log)
(export spawn-network-thread
        network-thread-join!
        network-thread-key
        (struct-out NetworkThreadError))

;; A completed failure, not a truthy exception sentinel: #f is also throwable.
(defclass NetworkThreadError
  ((exception : :t))
  final: #t)

(def network-thread-key (gensym 'network-worker))

;; Actor threads keep locals in their own slots, without the plain-thread global
;; table lock. Mark at entry, not around callbacks: finalizers are workers too.
;; Application threads spawned by a callback start with independent locals.
(def (spawn-network-thread (name  : :symbol)
                           (thunk : :procedure))
  => :thread
  (spawn/name name
    (lambda ()
      (thread-local-set! network-thread-key name)
      (with-catch
       (lambda (e)
         ;; with-catch grafts out of thunk before invoking this handler, so all
         ;; dynamic finalizers finish before logging and publishing completion.
         (log.debug "Network worker failed" worker: name exception: (exception->string e))
         (NetworkThreadError exception: e))
       thunk))))

;; Keep native join timeout semantics, including arbitrary timeout values. Only
;; our internal completed-failure result is unwrapped, not returned exceptions.
(def (network-thread-join! (thread        : :thread)
                           (timeout       : :t := absent-obj)
                           (timeout-value : :t := absent-obj))
  => :t
  (let* ((marker (box #f))
         (result (thread-join!/error thread timeout
                                    (if (eq? timeout-value absent-obj) absent-obj marker))))
    (cond
     ((eq? result marker) timeout-value)
     ((NetworkThreadError? result) (raise (NetworkThreadError-exception result)))
     (else result))))
