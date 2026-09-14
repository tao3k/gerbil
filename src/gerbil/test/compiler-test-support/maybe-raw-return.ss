;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Nullable body is not a raw type proof — must fail compilation.
(export bad)
(def (bad (value :? :fixnum)) => :fixnum value)
