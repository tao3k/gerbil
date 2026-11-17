(import :gerbil/expander)
(match (cddr (command-line))
  ([target]
   (def (seen? id) (and (hash-get __module-registry id) #t))
   (def before (seen? 'std/io))
   (import-module (string->symbol target))
   (displayln "ISSUE-2 consumer=" target
              " std/io-before=" before
              " std/io-after=" (seen? 'std/io)
              " socket=" (seen? 'std/io/socket/api)
              " ssl=" (seen? 'std/net/ssl)
              " tempfile=" (seen? 'std/io/tempfile)
              " crypto=" (seen? 'std/crypto/random)))
  (else (error "usage: import-closure.ss MODULE")))
