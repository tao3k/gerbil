(import :std/net/http/server)
(export handler-init! request-handler)

(def state "not initialized")

(def (handler-init! cfg)
  (set! state "initialized"))

(def (request-handler)
  (new-closure-handler
   (lambda (req (res :- ResponseHandler))
     (res.write! OK '(("Content-Type" . "text/plain"))
                 (string->utf8 (string-append "hello! I am a servlet and my state is " state "\n"))))))
