;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Ensemble network configuration and resource limits
(import :std/number/misc
        :std/time/timeout)
(export (struct-out NetworkConfig NetworkLimits ConnectionLimits StreamLimits))

;; Payload lengths and receive windows must fit their unsigned wire fields.
(defrule (positive-u32? x)
  (and (exact-integer? x) (<= 1 x #xffffffff)))

(defrule (positive-capacity? x)
  (and (fixnum? x) (fx> x 0)))

(defrule (positive-u32-power-of-2? x)
  (and (positive-u32? x) (power-of-2? x)))

(defrule (positive-capacity-power-of-2? x)
  (and (positive-capacity? x) (power-of-2? x)))

;; TTLs and operation budgets use positive integer seconds, separate from IOTimeout.
;; Defaults and nested limits are immutable by convention while in use.
(defclass NetworkConfig
  ((connection-ttl            :~ positive-integer?   :- :integer := 3600)
   (stream-ttl                :~ positive-integer?   :- :integer := 3600)
   (handshake-timeout         :~ positive-integer?   :- :integer := 10)
   (stream-open-timeout       :~ positive-integer?   :- :integer := 10)
   (renewal-timeout           :~ positive-integer?   :- :integer := 10)
   (connection-input-timeout  :  IOTimeout                      := !NoTimeout)
   (connection-output-timeout :  IOTimeout                      := !NoTimeout)
   (stream-input-timeout      :  IOTimeout                      := !NoTimeout)
   (stream-output-timeout     :  IOTimeout                      := !NoTimeout))
  final: #t)

;; Exact power-of-two cache capacities; outbound buffering is local only.
;; Buffer ceilings do not preallocate storage or round requested limits.
(defclass StreamLimits
  ((recv-window     :~ positive-u32-power-of-2?      :- :integer := 262144)
   (outbound-buffer :~ positive-capacity-power-of-2? :- :fixnum  := 262144))
  final: #t)

;; Admission caps may be zero to disable admission; renewal worker caps are positive.
;; Pending control bytes include frame headers; payload ceilings exclude them.
;; No cross-field ordering is needed.
(defclass ConnectionLimits
  ((total-streams          :~ nonnegative-fixnum? :- :fixnum  := 128)
   (pending-streams        :~ nonnegative-fixnum? :- :fixnum  := 16)
   (renewing-streams       :~ positive-capacity?  :- :fixnum  := 16)
   (hello-payload          :~ positive-u32?       :- :integer := 4096)
   (data-payload           :~ positive-u32?       :- :integer := 16384)
   (control-payload        :~ positive-u32?       :- :integer := 65536)
   (pending-control-frames :~ positive-capacity?  :- :fixnum  := 256)
   (pending-control-bytes  :~ positive-capacity?  :- :fixnum  := 262144)
   (control-burst          :~ positive-capacity?  :- :fixnum  := 8)
   (stream-limits          :  StreamLimits                   := (StreamLimits)))
  final: #t)

;; Physical reservations and retained commit records have independent admission caps.
(defclass NetworkLimits
  ((pending-connections :~ nonnegative-fixnum? :- :fixnum := 32)
   (election-history    :~ nonnegative-fixnum? :- :fixnum := 256)
   (connection-limits   :  ConnectionLimits              := (ConnectionLimits)))
  final: #t)
