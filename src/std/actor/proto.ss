;;; -*- Gerbil -*-
;;; © vyzo
;;; standard actor interaction protocols
(import :std/error
        ./message
        ./interaction)
(export #t)

;; actor errors
(deferror-class ActorError () actor-error?)
(defraise/context (raise-actor-error where message irritants ...)
  (ActorError message irritants: [irritants ...]))

(defstruct !Result ())
(defstruct (!OK !Result)
  ((value : :t)))
(defstruct (!Error !Result)
  ((message : :string)))

;; actor control protocol
(def proto:/actor/control "/actor/control/v0")
(defstruct !Shutdown ())
(defstruct !Ping ())

(defrules with-result ()
  ((_ expr fail!)
   (match expr
     ((!OK value) value)
     ((!Error what) (fail! what)))))

(defrules defcall-actor ()
  ((_ (proc arg ...) expr error: error-msg error-irritant ...)
   (def (proc arg ...)
     (with-result expr
       (lambda (what) (raise-actor-error proc error-msg error-irritant ... what)))))
  ((_ (proc arg ...) expr)
   (defcall-actor (proc arg ...) expr error: "actor error")))

;; reaction macro for ping
(defrule (@ping)
  ((!Ping)
   (--> (!OK 'OK))))

(defcall-actor (ping-actor (dest : Peer))
  (->> dest (!Ping) proto:/actor/control)
  error: "no reply to ping")

;; reaction macro for shutdown
(defrule (@shutdown exit ...)
  ((!Shutdown)
   (--> (!OK 'shutdown))
   exit ...))

(defcall-actor (shutdown-actor (dest : Peer))
  (->> dest (!Shutdown) proto:/actor/control)
  error: "no reply to shutdown")

;; reaction macro for unexpected messages
(defrule (@unexpected log-it)
  (unexpected
   (log-it "unexpected message"
           source: @source
           message: @message
           protocol: @protocol)
   (-->? (!Error "unexpected message"))))
