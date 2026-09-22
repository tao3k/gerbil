;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; acyclic token serialization utilities
(import :std/serde/marshal
        :std/serde/unmarshal
        ./interface)
(export marshal-token
        unmarshal-token)

;; Serialize a token with a fresh DAG context, rejecting cyclic object graphs.
;; Use this at transport boundaries; shared acyclic subobjects remain supported.
(def (marshal-token (token : Token))
  => :u8vector
  (marshal token (marshal-context dag: #t)))

;; Decode and untaint a token with a fresh DAG environment. Reject cycles and
;; non-token roots before the result is passed to in-process capability utilities.
(def (unmarshal-token (bytes : :u8vector))
  => Token
  (: (unmarshal bytes (unmarshal-environment dag: #t)) Token))
