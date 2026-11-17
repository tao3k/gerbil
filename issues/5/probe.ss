(import (only-in :gerbil/tools/gxpkg pkg-root-dir))
(export main)
(def (main . args)
  (displayln (pkg-root-dir)))
