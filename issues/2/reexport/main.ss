prelude: :gerbil/base
(import ./public (only-in :gerbil/runtime/loader set-load-path!))
(export main)
(def (main . args)
  (set-load-path! [])
  (unless (eq? (echo #f) #f) (error "reexport oracle"))
  (displayln "REEXPORT-LINKED-OK"))
