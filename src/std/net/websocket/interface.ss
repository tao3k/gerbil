;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket interface

(import :std/error
        :std/io/interface
        :std/net/address/types
        :std/os/sockopt
        :std/time/timeout)
(export #t)

;; protocol constants
(def +websocket-version+ "13")
(def +websocket-magic+ "258EAFA5-E914-47DA-95CA-C5AB0DC85B11")

;; message type code points, the frame types of the Base Framing Protocol [RFC 6455]
(def +message-text+   #x1)  ;; text frame
(def +message-binary+ #x2)  ;; binary frame
(def +message-close+  #x8)  ;; close frame
(def +message-ping+   #x9)  ;; ping frame
(def +message-pong+   #xA)  ;; pong frame

(def +message-types+ (list +message-text+ +message-binary+ +message-close+ +message-ping+ +message-pong+))

;; websocket messages; the root of the message hierarchy
;; - type is a fixnum, the message type code point
;; - partial? is set to true if this is a partial frame
(defstruct Message
  ((type     :- :fixnum)    ;; the message type code point
   (partial? :- :boolean))  ;; whether this is a partial frame
  constructor: :init!)

;; binary messages; data is a u8vector
(defstruct (BinaryMessage Message)
  ((data :- :u8vector)))

;; text messages; data is a string
(defstruct (TextMessage Message)
  ((data :- :string)))

;; ping messages; binary data
(defstruct (PingMessage BinaryMessage)
  ())

;; pong messages; binary data
(defstruct (PongMessage BinaryMessage)
  ())

;; close messages; text data
(defstruct (CloseMessage TextMessage)
  ())

(defmethod {:init! Message}
  (lambda (self (type : :fixnum) (partial? : :boolean))
    (set! self.type type)
    (set! self.partial? partial?)))

(defmethod {:init! BinaryMessage}
  (lambda (self (data : :u8vector) (partial? : :boolean := #f))
    (Message:::init! self +message-binary+ partial?)
    (set! self.data data)))

(defmethod {:init! TextMessage}
  (lambda (self (data : :string) (partial? : :boolean := #f))
    (Message:::init! self +message-text+ partial?)
    (set! self.data data)))

(defmethod {:init! PingMessage}
  (lambda (self (data : :u8vector) (partial? : :boolean := #f))
    (BinaryMessage:::init! self data partial?)
    (set! self.type +message-ping+)))

(defmethod {:init! PongMessage}
  (lambda (self (data : :u8vector) (partial? : :boolean := #f))
    (BinaryMessage:::init! self data partial?)
    (set! self.type +message-pong+)))

(defmethod {:init! CloseMessage}
  (lambda (self (data : :string) (partial? : :boolean := #f))
    (TextMessage:::init! self data partial?)
    (set! self.type +message-close+)))

(interface (WebSocket Socket)
  ;; send a message
  ;; raises io-closed-error? if the websocket has been closed
  (send (msg :~ valid-message? :- Message)) => :void

  ;; receive a message
  ;; raises io-closed-error? if the websocket has been closed
  (recv) => Message

  ;; returns the websocket protocol or #f if none was specified
  (protocol) => :t

  ;; returns the maximum frame size in bytes
  (max-frame-size) => :fixnum)

(def (valid-message? (msg : Message))
  (cond
   ((fx= msg.type +message-text+)   (TextMessage? msg))
   ((fx= msg.type +message-close+)  (CloseMessage? msg))
   ((fx= msg.type +message-binary+) (BinaryMessage? msg))
   ((fx= msg.type +message-ping+)   (PingMessage? msg))
   ((fx= msg.type +message-pong+)   (PongMessage? msg))
   (else #f)))
