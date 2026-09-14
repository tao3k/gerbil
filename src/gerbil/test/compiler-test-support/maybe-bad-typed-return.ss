;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Known incompatible typed Maybe result must fail compilation.
(export bad)
(def (bad (x : :string)) => (Maybe :fixnum) x)
