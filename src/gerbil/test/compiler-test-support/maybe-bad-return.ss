;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Known incompatible Maybe result — must fail optimized compilation.
(export bad)
(def (bad) => (Maybe :fixnum) "not a fixnum")
