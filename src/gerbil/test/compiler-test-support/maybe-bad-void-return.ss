;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Maybe void is a union, not an unspecified result declaration.
(export bad)
(def (bad) => (Maybe :void) 42)
