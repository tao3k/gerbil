;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble configuration
(import :std/net/address
        ./interface)
(export #t)

;;; configuration classes

(defclass HostLimits
  ((connections-in  : :fixnum)
   (connections-out : :fixnum)
   (streams-in      : :fixnum)
   (streams-out     : :fixnum)
   (actor-threads   : :fixnum))
  final: #t)

(def (default-host-limits)
  => HostLimits
  (HostLimits
   connections-in:  256
   connections-out: 256
   streams-in:      4096
   streams-out:     4096
   actor-threads:   16384))

(defclass BroadcastLimits
  ((handler-threads : :fixnum))
  final: #t)

(def (default-broadcast-limits)
  => BroadcastLimits
  (BroadcastLimits
   handler-threads: 1024))

(defclass NetworkLimits
  ((message-size    : :fixnum)
   (stream-window   : :fixnum))
  final: #t)

(def (default-network-limits)
  => NetworkLimits
  (NetworkLimits
   message-size: 65536
   stream-window: (expt 2 20)))

(defclass Limits
  ((host      : HostLimits)
   (broadcast : BroadcastLimits)
   (network   : NetworkLimits))
  final: #t)

(def (default-limits)
  => Limits
  (Limits
   host: (default-host-limits)
   broadcast: (default-broadcast-limits)
   network: (default-network-limits)))

;; basic host configuration
(defclass BasicHostConfig
  (;; the host's base directory for persistent data and state
   (dir : :string)
   ;; the host's id
   (id : HostID)
   ;; (optional) host to use as name resolver
   (resolver :? :string)
   ;; network configuration
   (limits : Limits)
   ))

;; server hosts
(defclass (ServerHostConfig BasicHostConfig)
  (;; the host's listen addresses
   (listen :~ (list-of? HostAddress?) :- :list)
   ;; the host announce addresses
   (announce :~ (list-of? HostAddress?) :- :list)
   ))
