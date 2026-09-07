;;; -*- Gerbil -*-
;;; © vyzo
;;; actor message serde
(import :std/io
        :std/serde/interface
        :std/serde/deserialize
        :std/serde/marshal
        :std/serde/unmarshal
        ./message
        ./proto)
(export #t)

(defobject-untaint
  Handle
  ActorGroup
  ReplyOption
  AuthOption
  Options
  Envelope
  !OK
  !Error
  !Shutdown
  !Ping)

(def (marshal-envelope (e : Envelope))
  => :u8vector
  (marshal e (marshal-context dag: #t)))

(def (unmarshal-envelope (bytes : :u8vector))
  => Envelope
  (: (unmarshal bytes (unmarshal-environment dag: #t))
     Envelope))

(def (deserialize-envelope (reader : BufferedReader))
  => Envelope
  (: (reader.deserialize (unmarshal-environment dag: #t))
     Envelope))
