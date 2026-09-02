;;; -*- Gerbil -*-
;;; © vyzo
;;; websocket API
(import :std/error
        ./interface
        ./client
        ./server
        ./socket)
(export (import: ./interface
                 ./client
                 ./server)
        WebSocket-send-all
        &WebSocket-send-all
        WebSocket-recv-all
        &WebSocket-recv-all)

(declare (not safe))

;; extension methods
(def (WebSocket-send-all (wsock : WebSocket)
                         (msg   :~ valid-message? :- Message))
  => :void
  (check-argument (not (&Message-partial? msg)) "full message" msg)
  (&WebSocket-send-all wsock msg))

(def (&WebSocket-send-all (wsock : WebSocket)
                          (msg   : Message))
  => :void
  (send-all-frames wsock (message-data msg) msg.type))

(def (send-all-frames (wsock : WebSocket)
                      (data  : :u8vector)
                      (type  : :fixnum))
  => :void
  (let ((len (u8vector-length data))
        (max-frame-size (wsock.max-frame-size)))
    (if (fx<= len max-frame-size)
      (wsock.send (message type data #f))
      ;; TODO use slices when we have them
      (let lp ((start 0))
        (let (start+frame (fx+ start max-frame-size))
          (if (fx<= len start+frame)
            (wsock.send (message type (subu8vector data start len) #f))
            (begin
              (wsock.send (message type (subu8vector data start start+frame) #t))
              (lp start+frame))))))))

;; TODO define this with interface method infrastructure
(def (WebSocket-recv-all (wsock            : WebSocket)
                         (max-message-size : :fixnum))
  => Message
  (check-argument (nonnegative-fixnum? max-message-size) "nonnegative fixnum" max-message-size)
  (&WebSocket-recv-all wsock max-message-size))

(def (&WebSocket-recv-all (wsock            : WebSocket)
                          (max-message-size : :fixnum))
  => Message
  (let lp ((frames []) (type #f) (count 0))
    (using (msg (wsock.recv) :- Message)
      (when (and type (not (fx= type msg.type)))
        (raise-io-error websocket-recv "message type mismatch" type msg.type))
      (let* ((data (message-data msg))
             (new-count (fx+ count (u8vector-length data))))
        (if msg.partial?
          (begin
            (unless (fx< new-count max-message-size)
              (raise-io-error websocket-recv "oversize message" type new-count max-message-size))
            (lp (cons data frames) msg.type new-count))
          (message msg.type (combine-frame-data (cons data frames)) #f))))))

(def (combine-frame-data (data : :list)) => :u8vector
  (u8vector-concatenate (reverse! data)))
