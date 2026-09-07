;;; -*- Gerbil -*-
;;; © vyzo
;;; actor local state
(import :std/error
        ./message
        ./host)
(export #t)

(defstruct ActorState
  ((host  :- ActorHost)
   (peer  :- LocalActor)
   (seqno :- :integer))
  final: #t
  constructor: :init!)

(defmethod {:init! ActorState}
  (lambda (self)
    (set! self.peer
      (LocalActor (current-thread)))
    (set! self.seqno 0)))

(def (actor-local-state)
  => ActorState
  (let (thread (current-thread))
    (if (actor-thread? thread)
      (cond
       ((actor-thread-state thread)
        =>        (lambda (x) (:- x ActorState)))
       (else
        (let (state (ActorState))
          (set! (actor-thread-state thread) state)
          state)))
      (cond
       ((thread-local-get 'actor-state)
        =>        (lambda (x) (:- x ActorState)))
       (else
        (let (state (ActorState))
          (thread-local-set! 'actor-state state)
          state))))))

(def (actor-local-host)
  => ActorHost
  (using (state (actor-local-state) : ActorState)
    (cond
     (state.host)
     ((current-actor-host)
      => (lambda (host)
           (set! state.host (: host ActorHost))
           state.host))
     (else
      (raise-contract-violation actor-local-host "actor host not set")))))

(def (actor-local-host?)
  => :t
  (using (state (actor-local-state) : ActorState)
    (or state.host
        (current-actor-host)
        #f)))

(def (actor-local-peer)
  => LocalActor
  (using (state (actor-local-state) : ActorState)
    state.peer))

(def (actor-next-seqno!)
  => :integer
  (using (state (actor-local-state) : ActorState)
    (let (seqno state.seqno)
      (set! state.seqno (1+ seqno))
      seqno)))
