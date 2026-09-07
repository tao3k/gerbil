;;; -*- Gerbil -*-
;;; © vyzo
;;; actor messages
(import :std/time/time :std/time/precise)
(export #t)

;; actor peers
;; base class for all actor peers
(defstruct Peer ())

;; local thread peers
(defstruct (LocalActor Peer)
  ((thread : :thread))               ; the peer actor thread
  final: #t)

;; ensemble-wide actor handles
(defstruct (Handle Peer)
  ((host  : :string)                 ; the actor host; if empty, implies the local actor host
   (actor : :string))                ; the actor name
  final: #t)

;; ensemble broadcast groups
(defstruct (ActorGroup Peer)
  ((name : :string))                 ; the name of the broadcast group
  final: #t)

;; actor messages
;; message reply thread parameters
(defclass ReplyOption
  ((seqno    : :integer)  ; the thread sequence number
   (auth     : :t := #f)) ; reply authorization anchor for cross host interactions
  final: #t)

;; message authorization parameters for cross host interactions
(defclass AuthOption
  ((auth       : :t            := #f)   ; authorization token(s)
   (nonce      :? :u8vector    := #f)   ; authorization nonce
   (signature  :? :u8vector    := #f))  ; message signature
  final: #t)

;; message envelope options
(defclass Options
  ((expire   :? :integer    := #f)  ; interaction expiration (unix seconds)
   (continue :? ReplyOption := #f)  ; expected reply threading
   (auth     :? AuthOption  := #f)) ; authorization for cross host interactions
  final: #t)

;; actor message envelope
(defclass Envelope
  ((source      : Peer)               ; the source of the message
   (dest        : Peer)               ; the destination of the message
   (message     : :t)                 ; the message
   (protocol    : :string)            ; the protocol of the message
   (continue    :? :integer := #f)    ; the interaction thread seqno
   (options     :? Options  := #f))   ; message options
  final: #t)

(def (envelope-expired? (e : Envelope)
                        (now #f :? :integer))
  => :boolean
  (and e.options
       e.options.expire
       (<= e.options.expire (or now (current-time-seconds)))))
