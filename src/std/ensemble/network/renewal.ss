;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Bounded renewal protocol state and immutable operation parameters
(import :std/error
        :std/number/misc
        ../ucan/interface
        ./config
        ./wire)
(export (struct-out RenewalScope
                    RenewalRequest
                    RenewalOperation
                    RenewalRound)
        renewal-check-capacity!
        renewal-protected-bytes
        renewal-frame?
        renewal-connection-frame?
        renewal-offer?
        renewal-abort?
        renewal-add-parent!
        renewal-next-parent!
        renewal-controls-released?)

(deftype @RenewalOperation RenewalOperation)
(deftype @RenewalRound RenewalRound)
(deftype @RenewalRequest RenewalRequest)

;; The connection owner serializes every mutation. Scope zero is the connection;
;; other scopes belong to the stable linked stream, not to an OPEN attempt.
(defclass RenewalScope
  ((id               :  :integer := 0)
   (coordinator?     :  :boolean := #f)
   (automatic?       :  :boolean := #f)
   (seed             :? Token := #f)
   (desired          :  :integer := 0)
   (last-id          :  :integer := 0)
   (active           :? @RenewalRound := #f)
   (deferred         :? @RenewalRound := #f)
   (owned            :  :list := [])
   (operation        :? @RenewalOperation := #f)
   (requests         :  :list := [])
   (request-id       :  :integer := 0)
   (request-order    :  :integer := 0)
   (remote-request   :? @RenewalRequest := #f)
   (wire-request     :? @RenewalRequest := #f)
   (attempted        :  :integer := 0)
   (attempted-target :  :integer := 0)
   (last-auto-start  :  :integer := 0)
   (trigger          :  :integer := 0)
   (trigger-expire   :  :integer := 0)
   (exhausted?       :  :boolean := #f))
  final: #t)

;; A caller or one wire request, never an authorization grant. Controls are opaque
;; to this module to keep the dependency graph below the concrete scheduler.
(defclass RenewalRequest
  ((target    :  :integer)
   (deadline  :  :integer)
   (scope     :? RenewalScope := #f)
   (adaptive? :  :boolean := #f)
   (auth      :? Token := #f)
   (id        :  :integer := 0)
   (order     :  :integer := 0)
   (state     :  :symbol := 'pending)
   (error     :  :t := #f)
   (control   :  :t := #f)
   (result    :  :t := #f))
  final: #t)

;; Retry rounds inherit this immutable target/deadline. New callers may append
;; credential choices but cannot replace the initiating requirement or its budget.
(defclass RenewalOperation
  ((target     :  :integer)
   (deadline   :  :integer)
   (adaptive?  :  :boolean)
   (request    :? RenewalRequest := #f)
   (automatic? :  :boolean := #f)
   (provide?   :  :boolean := #t)
   (parents    :  :list := [])
   (seen       :  :list := [])
   (retry?     :  :boolean := #f)
   (finished?  :  :boolean := #f)
   (error      :  :t := #f)
   (reason     :  :fixnum := reason-ok))
  final: #t)

;; Installed state never lives here. The owner applies verified local transitions
;; to parent.expire or existing StreamIO.expire under their actual locks.
(defclass RenewalRound
  ((scope          :  RenewalScope)
   (id             :  :integer)
   (target         :  :integer)
   (deadline       :  :integer)
   (headroom       :  :integer)
   (old-expire     :  :integer)
   (adaptive?      :  :boolean)
   (coordinator?   :  :boolean)
   (operation      :? RenewalOperation := #f)
   (phase          :  :symbol := 'preparing)
   (parent         :? Token := #f)
   (tokens         :  :vector := #())
   (peer-fields    :  :vector := #())
   (selected       :? Token := #f)
   (peer-token     :? Token := #f)
   (selected-index :  :integer := 0)
   (expire         :  :integer := 0)
   (visible?       :  :boolean := #f)
   (committed?     :  :boolean := #f)
   (installed?     :  :boolean := #f)
   (retired?       :  :boolean := #f)
   (failed?        :  :boolean := #f)
   (error          :  :t := #f)
   (reason         :  :fixnum := reason-ok)
   (peer-failure?  :  :boolean := #f)
   (worker         :? :thread := #f)
   (worker-done?   :  :boolean := #f)
   (controls       :  :list := [])
   (staging-work   :  :t := #f)
   (cv             :  :condvar := (make-condition-variable 'renewal-round)))
  final: #t)

(def (renewal-protected-bytes (limits : ConnectionLimits))
  => :integer
  (+ limits.control-payload frame-header-size (* 3 38)))

(def (renewal-check-capacity! (limits : ConnectionLimits))
  => :void
  (unless (and (>= limits.pending-control-frames 4)
               (>= limits.pending-control-bytes (renewal-protected-bytes limits)))
    (raise-io-error renewal-check-capacity! "Insufficient protected renewal capacity")))

(def (renewal-connection-frame? (type : :fixnum))
  => :boolean
  (fx<= frame-renew-request type frame-renew-abort))

(def (renewal-frame? (type : :fixnum))
  => :boolean
  (or (renewal-connection-frame? type)
      (fx<= frame-stream-renew-offer type frame-stream-renew-abort)))

(def (renewal-offer? (type : :fixnum))
  => :boolean
  (or (fx= type frame-renew-offer) (fx= type frame-stream-renew-offer)))

(def (renewal-abort? (type : :fixnum))
  => :boolean
  (or (fx= type frame-renew-abort) (fx= type frame-stream-renew-abort)))

(def (renewal-add-parent! (operation :  RenewalOperation)
                          (parent    :? Token))
  => :void
  (when (and parent (not (member parent operation.seen)))
    (set! operation.seen (cons parent operation.seen))
    (set! operation.parents (cons parent operation.parents))))

;; Local capability choices only. A supplied parent does not mutate a signed token
;; or establish remote trust. Selection is stable for equal expiration values.
(def (renewal-next-parent! (operation : RenewalOperation)
                           (required  : :integer)
                           (headroom  : :integer)
                           (now       : :integer))
  => :values
  (cond
   (operation.provide?
    (set! operation.provide? #f)
    (values #t #f))
   (else
    (let loop ()
      (if (null? operation.parents)
        (values #f #f)
        (let* ((ordered (list-sort (lambda ((a :- Token)
                                            (b :- Token))
                                     (> a.expire b.expire))
                                   (reverse operation.parents)))
               (parent (car ordered)))
          (set! operation.parents (reverse (cdr ordered)))
          (using (parent :- Token)
            (if (and (> parent.expire now) (>= parent.expire required) (>= parent.expire headroom))
              (values #t parent)
              (loop)))))))))

;; The concrete owner supplies a predicate for its control records; this is a
;; nonescaping observation, not a configurable protocol-dispatch procedure slot.
(def (renewal-controls-released? (round     : RenewalRound)
                                 (released? : :procedure))
  => :boolean
  (and round.worker-done? (andmap released? round.controls)))
