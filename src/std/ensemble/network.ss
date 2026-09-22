;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Public ensemble networks, connections and authorized streams
(import ./network/interface
        ./network/config
        (only-in ./network/auth
                 proto:/network/connect
                 proto:/network/connect/v0)
        (only-in ./network/network new-network))
(export (import: ./network/interface)
        (import: ./network/config)
        proto:/network/connect
        proto:/network/connect/v0
        new-network)
