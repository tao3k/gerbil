;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket socket implementation
(import :std/error
        :std/io
        :std/interface
        :std/net/address/types
        :std/os/sockopt
        :std/time/timeout
        :std/crypto/random
        ./interface)
(export #t)
(declare (not safe))

(def default-max-frame-size (expt 2 20)) ; 1MB

(defstruct websocket
  ((sock           :- StreamSocket)
   (reader         :- BufferedReader)
   (writer         :- BufferedWriter)
   (server?        :- :boolean)
   (closed?        :- :boolean)
   (proto          :- :t)
   (max-frame-size :- :fixnum)
   (mask           :- :u8vector))
  final: #t
  constructor: :init!)

(defmethod {:init! websocket}
  (lambda (self
           (sock            : StreamSocket)
           (reader          : BufferedReader)
           (writer          : BufferedWriter)
           (server?         : :boolean)
           (proto           : :t)
           (max-frame-size  : :fixnum))
    (set! self.sock sock)
    (set! self.reader reader)
    (set! self.writer writer)
    (set! self.server? server?)
    (set! self.proto proto)
    (set! self.max-frame-size max-frame-size)
    (unless server?
      (set! self.mask (random-bytes 4)))))

;;; WebSocket interface implementation

;; high level message constructor; dispatches to the appropriate struct in the Message hierarchy
(def (message (type     : :fixnum)
              (data     : :t)
              (partial? : :boolean := #f))
  => Message
  (cond
   ((fx= type +message-text+)
    (TextMessage (message-data->string data) partial?))
   ((fx= type +message-close+)
    (CloseMessage (message-data->string data) partial?))
   ((fx= type +message-binary+)
    (BinaryMessage (message-data->u8vector data) partial?))
   ((fx= type +message-ping+)
    (PingMessage (message-data->u8vector data) partial?))
   ((fx= type +message-pong+)
    (PongMessage (message-data->u8vector data) partial?))
   (else
    (raise-bad-argument message "message type; text, binary, close, ping, or pong" type))))

;; returns the message payload as a u8vector, regardless of the message type
(def (message-data (msg : Message)) => :u8vector
  (cond
   ((BinaryMessage? msg)
    (using (bin msg :- BinaryMessage) bin.data))
   ((TextMessage? msg)
    (string->utf8 (using (txt msg :- TextMessage) txt.data)))
   (else
    (raise-bad-argument message-data "websocket message" msg))))

(def (message-data->string (data : :t)) => :string
  (cond
   ((string? data) data)
   ((u8vector? data) (utf8->string data))
   (else
    (raise-bad-argument message "message data; string or u8vector" data))))

(def (message-data->u8vector (data : :t)) => :u8vector
  (cond
   ((u8vector? data) data)
   ((string? data) (string->utf8 data))
   (else
    (raise-bad-argument message "message data; u8vector or string" data))))

(defmethod {send websocket}
  (lambda (self msg)
    (when self.closed?
      (raise-io-closed send "websocket has been closed" self))
    (let* ((data (message-data msg))
           (len (u8vector-length data)))
      (if (fx<= len self.max-frame-size)
        (write-frame self.writer data 0 len
                     msg.type
                     (if msg.partial? 0 1)
                     self.mask)
        (raise-io-error websocket-send "message exceeds max frame size" len self.max-frame-size))))
  interface: WebSocket)

(defmethod {recv websocket}
  (lambda (self)
    (when self.closed?
      (raise-io-closed send "websocket has been closed" self))

    (let* (((values data typ fin) (read-frame self.reader self.max-frame-size))
           (partial? (fx= fin 0)))
      (unless (memv typ +message-types+)
        (raise-io-error websocket-recv "bad frame type" typ))
      (let (data (if (or (fx= typ +message-text+) (fx= typ +message-close+))
                   (utf8->string data)
                   data))
        (message typ data partial?))))
  interface: WebSocket)

;; Base Framing Protocol [RFC 6455]
;;
;;  0                   1                   2                   3
;;  0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 0 1
;; +-+-+-+-+-------+-+-------------+-------------------------------+
;; |F|R|R|R| opcode|M| Payload len |    Extended payload length    |
;; |I|S|S|S|  (4)  |A|     (7)     |             (16/64)           |
;; |N|V|V|V|       |S|             |   (if payload len==126/127)   |
;; | |1|2|3|       |K|             |                               |
;; +-+-+-+-+-------+-+-------------+ - - - - - - - - - - - - - - - +
;; |     Extended payload length continued, if payload len == 127  |
;; + - - - - - - - - - - - - - - - +-------------------------------+
;; |                               |Masking-key, if MASK set to 1  |
;; +-------------------------------+-------------------------------+
;; | Masking-key (continued)       |          Payload Data         |
;; +-------------------------------- - - - - - - - - - - - - - - - +
;; :                     Payload Data continued ...                :
;; + - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - +
;; |                     Payload Data continued ...                |
;; +---------------------------------------------------------------+
;;

(def (write-frame (writer : BufferedWriter)
                  (data   : :u8vector)
                  (start  : :fixnum)
                  (end    : :fixnum)
                  (typ    : :fixnum)
                  (fin    : :fixnum)
                  mask)
  => :void
  (let (head (fxior (if (fx= fin 1) #x80 0) typ))
    (writer.write-u8 head))
  (let ((mask-bit (if mask #x80 0))
        (len (fx- end start)))
    (cond
     ((fx< len 126)
      (writer.write-u8 (fxior mask-bit len)))
     ((fx< len 65536)
      (writer.write-u8 (fxior mask-bit 126))
      (writer.write-u16 len))
     (else
      (writer.write-u8 (fxior mask-bit 127))
      (writer.write-u64 len))))
  (when mask
    (writer.write mask)
    (frame-mask! data start end mask))
  (writer.write data start end)
  (writer.flush))

(def (read-frame (reader         : BufferedReader)
                 (max-frame-size : :fixnum))
  => :values
  (def typ #f)
  (def fin #f)
  (def mask #f)
  (def len #f)

  (let (head (reader.read-u8!))
    (set! fin (fxarithmetic-shift-right head 7))
    (set! typ (fxand head #x0f)))
  (let (pbyte (reader.read-u8!))
    (let ((mask? (fx= (fxand pbyte #x80) #x80))
          (plen0 (fxand pbyte #x7f)))
      (cond
       ((fx< plen0 126)
        (set! len plen0))
       ((fx= plen0 126)
        (set! len (reader.read-u16)))
       (else
        (set! len (reader.read-u64))))
      (when mask?
        (set! mask (make-u8vector 4))
        (reader.read mask 0 4 4))))

  (when (fx> len max-frame-size)
    (raise-io-error websocket-recv "oversize frame" len max-frame-size))
  (let (data (make-u8vector len))
    (reader.read data 0 len len)
    (when mask
      (frame-mask! data 0 len mask))
    (values data typ fin)))

(def (frame-mask! (data  : :u8vector)
                  (start : :fixnum)
                  (end   : :fixnum)
                  (mask  : :u8vector))
  => :void
  (let lp ((i start) (mask-i 0))
    (when (fx< i end)
      (u8vector-set! data i (fxxor (u8vector-ref data i) (u8vector-ref mask mask-i)))
      (lp (fx+ i 1) (fxmodulo (fx+ mask-i 1) 4)))))

(defmethod {protocol websocket}
  &websocket-proto
  interface: WebSocket)

(defmethod {max-frame-size websocket}
  &websocket-max-frame-size
  interface: WebSocket)

;; Closer interface implementation
(defmethod {close websocket}
  (lambda (self)
    (unless self.closed?
      (set! self.closed? #t)

      ;; Note we don't do the graceful shutdown part of the spec for good reason
      ;; - it is borderline useless
      ;; - it is hard to implement correctly
      ;; - adding an rwlock in the websocket would make it impossible to
      ;;   close the socket from a third thread as the socket already has one.
      ;; - i don't understand the rationale for including it in the RFC
      ;; - and honestly, it is not needed.
      ;; What we do instead is pass the "close" message to the user and let them
      ;; handle it as they see fit.
      ;; Here, we just close the socket.
      (self.reader.close)
      (self.writer.close)))
  interface: Closer)

;;; NetworkTimeout interface implementation passthrough
(implement NetworkTimeout websocket
  (set-input-timeout!
   (lambda (self timeo)
     (self.sock.set-input-timeout! timeo)))
  (set-output-timeout!
   (lambda (self timeo)
     (self.sock.set-output-timeout! timeo))))

;;; Socket interface implementation passthrough
(implement Socket websocket
  (domain
   (lambda (self)
     (self.sock.domain)))
  (address
   (lambda (self)
     (self.sock.address)))
  (peer-address
   (lambda (self)
     (self.sock.peer-address)))
  (getsockopt
   (lambda (self opt)
     (self.sock.getsockopt opt)))
  (setsockopt
   (lambda (self opt arg)
     (self.sock.setsockopt opt arg))))
