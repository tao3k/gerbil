#!/usr/bin/env -S gxi -:max-heap=2G,debug=q
(import :std/build-script)
(export main)
(defbuild-script '("value" "public" (exe: "main" bin: "reexport-control")))
