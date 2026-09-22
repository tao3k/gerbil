;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan interface utility extension methods
(import :std/error
        ./interface
        ./cap)
(export #t)

(defrule (defcap-ext head body rest ...)
  (definterface-extension-method CapabilityContext
    head body rest ...))

;; generate a root token of type, granting capabilities from
;; issuer to audience for protocol and sign it
(defcap-ext (grant! ctx
                    (type     :~ (one-of ,DELEGATE ,INVOKE ,BROADCAST)
                              :- :fixnum)
                    (issuer   :  :string)
                    (audience :  :string)
                    (protocol :  :string)
                    (expire   :  :integer)
                    (group    :?  :string := #f))
  => Token
  (let (token (Token type: type
                     issuer: (ctx.normalize-did issuer)
                     audience: (if (equal? audience "*") "*" (ctx.normalize-did audience))
                     protocol: protocol
                     group: group
                     expire: expire))
    (ctx.sign! token)
    token))

;; Delegate from a parent token, clamping expiration to the parent's lifetime.
(defcap-ext (delegate! ctx
                       (t        : Token)
                       (type     :~ (one-of ,DELEGATE ,INVOKE ,BROADCAST)
                                 :- :fixnum)
                       (issuer   : :string)
                       (audience : :string)
                       (protocol : :string)
                       (expire   : :integer := (Token-expire t))
                       (group    :? :string := #f))
  => Token
  (def canonical-issuer (ctx.normalize-did issuer))
  (unless (fx= t.type DELEGATE)
    (raise-bad-argument delegate! "token does not allow delegation" t))
  (unless (or (equal? t.audience "*")
              (equal? (ctx.normalize-did t.audience) canonical-issuer))
    (raise-bad-argument delegate! "token audience does not allow delegation to issuer" t issuer))
  (unless (capability-includes? t.protocol protocol)
    (raise-bad-argument delegate! "token does not include protocol capability" t protocol))
  (unless (group-capability-includes? t.group group)
    (raise-bad-argument delegate! "token does not include group capability" t group))
  (let (token
        (Token type: type
               issuer: canonical-issuer
               audience: (if (equal? audience "*") "*" (ctx.normalize-did audience))
               protocol: protocol
               group: group
               expire: (min t.expire expire)
               chain: t))
    (ctx.sign! token)
    token))

;; invoke from a token as chain root
(defcap-ext (invoke! ctx
                     (t        : Token)
                     (issuer   : :string)
                     (audience : :string)
                     (protocol : :string)
                     (expire   : :integer := (Token-expire t))
                     (group    :? :string := #f))
  => Token
  (ctx.delegate! t INVOKE issuer audience protocol expire group))

;; broadcast from a token as chain root
(defcap-ext (broadcast! ctx
                        (t        : Token)
                        (issuer   : :string)
                        (audience : :string)
                        (protocol : :string)
                        (expire   : :integer := (Token-expire t))
                        (group    : :string  := (Token-group t)))
  => Token
  (ctx.delegate! t BROADCAST issuer audience protocol expire group))

;; generate a list of output tokens of type from an issuer
;; to a audience for protocol, chained in appropriate output anchors
;; and sign them. Always include a direct root grant first. Output anchors must
;; delegate to issuer and cover the complete requested lifetime and capabilities.
(defcap-ext (provide! ctx
                      (type     :~ (one-of ,DELEGATE ,INVOKE ,BROADCAST)
                                :- :fixnum)
                      (issuer   : :string)
                      (audience : :string)
                      (protocol : :string)
                      (expire   : :integer)
                      (group    :? :string := #f))
  => :list
  (def canonical-issuer (ctx.normalize-did issuer))
  (def canonical-audience (if (equal? audience "*") "*" (ctx.normalize-did audience)))
  (let (anchors
        (ctx.output-anchors
         (lambda ((t :- Token))
           (and (fx= t.type DELEGATE)
                (or (equal? t.audience "*")
                    (equal? (ctx.normalize-did t.audience) canonical-issuer))
                (<= expire t.expire)
                (capability-includes? t.protocol protocol)
                (group-capability-includes? t.group group)))))
    (cons (ctx.grant! type canonical-issuer canonical-audience protocol expire group)
          (map (lambda ((t :- Token))
                 (ctx.delegate! t type canonical-issuer canonical-audience protocol expire group))
               anchors))))

;; provide tokens delegating capabilities from issuer to audience
(defcap-ext (provide-delegate! ctx
                               (issuer   : :string)
                               (audience : :string)
                               (protocol : :string)
                               (expire   : :integer)
                               (group    :? :string := #f))
  => :list
  (ctx.provide! DELEGATE issuer audience protocol expire group))

;; provide tokens granting invoke capabilities from issuer to audience
(defcap-ext (provide-invoke! ctx
                             (issuer   : :string)
                             (audience : :string)
                             (protocol : :string)
                             (expire   : :integer)
                             (group    :? :string := #f))
  => :list
  (ctx.provide! INVOKE issuer audience protocol expire group))

;; provide tokens granting broadcast capabilities from issuer to audience
(defcap-ext (provide-broadcast! ctx
                                (issuer   : :string)
                                (protocol : :string)
                                (expire   : :integer)
                                (group    : :string))
  => :list
  (ctx.provide! BROADCAST issuer "*" protocol expire group))
