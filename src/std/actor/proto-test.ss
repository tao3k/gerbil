;;; -*- Gerbil -*-
;;; © vyzo
;;; tests for std/actor/proto

(import :std/test
        :std/error
        ./api
        ./message)
(export proto-test)

(def proto-test
  (test-suite "test :std/actor/proto"

    (test-case "test defcall-actor, ping-actor, shutdown-actor"
      (let (thread
            (spawn/name 'test-proto-actor
              (lambda ()
                (let/cc return
                  (while #t
                    (<- protocol: proto:/actor/control
                        ,(@ping)
                        ,(@shutdown (return))))))))
        (def dest (LocalActor thread))
        (check (ping-actor dest) => 'OK)
        (check (shutdown-actor dest) => 'shutdown)
        (thread-join! thread 1)
        (check (thread-dead? thread) => #t)))))
