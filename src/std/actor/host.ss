;;; -*- Gerbil -*-
;;; © vyzo
;;; actor host interface
(import ./message)
(export #t)

;; the ActorHost interface provides functionality for ensemble wide
;; host interaction
(interface ActorHost
  ;; the name of the host
  (name)

  ;; register the current thread as an actor in the ensemble with
  ;; name
  (register! (name : :string))
  => Handle

  ;; lookup a local actor by name
  ;; returns the handle of the actor or #f
  (lookup (name : :string))
  => :t

  ;; send a message to an ensemble actor
  (send! (e : Envelope))
  => :void

  ;; send a reply to a previous message
  (send-reply! (msg      : :t)
               (in-reply : Envelope)
               (continue :? ReplyOption))
  => :void

  ;; broadcast a message ensemble wide
  (broadcast! (e : Envelope))
  => :void
  )

;; the actor host in the current dynamic extent
(def current-actor-host
  (make-parameter #f))
