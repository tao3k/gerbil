;;; -*- Gerbil -*-
;;; © vyzo
;;; ucan capability utilities
(import :std/error
        :std/crypto/pkey
        :std/crypto/random
        :std/time/time
        ./interface
        ./util)
(export #t)

;; checks whether a capability is confered
(def (capability-includes? (cap   : :string)
                           (other : :string))
  => :boolean
  (if (string-empty? cap)
    (string-empty? other)
    (or (equal? cap "/")
        (equal? cap other)
        (and (fx< (string-length cap) (string-length other))
             (string-prefix? cap other)
             (eq? (##string-ref other (string-length cap))
                  #\/)))))

;; checks whether a group capability is confered
(def (group-capability-includes? (group :? :string)
                                 (other :? :string))
  => :boolean
  (if group
    (and other (capability-includes? group other))
    (not other)))

;; Verify signatures, expiration, and delegation narrowing, not root or input
;; anchor trust. CapabilityContext.verify combines this with its trust policy.
;; Reject expired tokens before signature work. Signature verification uses
;; marshal-token to reject cycles before traversing a live chain.
(def (verify-token (token : Token)
                   (ctx   : CapabilityContext))
  => VerificationResult
  (let (now (current-time-seconds))
    (if (<= token.expire now)
      !TokenExpiredVerificationError
      (let (result (verify-token-signature token ctx))
        (if (!VerificationOK? result)
          (if token.chain
            (let loop ((next     token.chain    :- Token)
                       (issuer   (ctx.normalize-did token.issuer) :- :string)
                       (protocol token.protocol :- :string)
                       (group    token.group    :? :string)
                       (expire   token.expire   :- :integer))
              => VerificationResult
              (if (<= next.expire now)
                !TokenExpiredVerificationError
                (let (result (verify-token-signature next ctx))
                  (if (!VerificationOK? result)
                    (if (not (fx= next.type DELEGATE))
                      !DelegationVerificationError
                      (if (not (or (equal? next.audience "*")
                                   (equal? (ctx.normalize-did next.audience) issuer)))
                        !IssuerVerificationError
                        (if (< next.expire expire)
                          !ExpirationVerificationError
                          (if (not (and (capability-includes? next.protocol protocol)
                                        (group-capability-includes? next.group group)))
                            !CapabilityVerificationError
                            (if next.chain
                              (loop next.chain
                                    (ctx.normalize-did next.issuer)
                                    next.protocol
                                    next.group
                                    next.expire)
                              !VerificationOK)))))
                    result))))
            !VerificationOK)
          result)))))

;; Verify without temporarily clearing the caller's signature. A shallow copy
;; suffices for the unsigned representation because chains are acyclic and
;; callers must not mutate token contents concurrently with verification.
(def (verify-token-signature (token : Token)
                             (cap   : CapabilityContext))
  => VerificationResult
  (if (and token.nonce token.signature)
    (using (unsigned (struct-copy token) :- Token)
      (set! unsigned.signature #f)
      (let* ((pubk (cap.public-key unsigned.issuer))
             (sig  token.signature)
             (data (marshal-token unsigned)))
        (if (digest-verify! pubk data sig)
          !VerificationOK
          !SignatureVerificationError)))
    !MalformedTokenVerificationError))

(def nonce-length 16)

;; Validate the new delegation edge and sign an unsigned copy. Publish the new
;; nonce and signature only after signing succeeds, preserving the old fields
;; on failure. Callers must serialize concurrent access to the token.
(def (sign-token! (token : Token)
                  (cap   : CapabilityContext))
  => :void
  (when token.chain
    ;; the immediate parent must authorize delegation to this issuer
    (unless (fx= token.chain.type DELEGATE)
      (raise-bad-argument sign-token! "parent token does not confer delegation"
                          token.chain.type))
    (unless (or (equal? token.chain.audience "*")
                (equal? (cap.normalize-did token.chain.audience)
                        (cap.normalize-did token.issuer)))
      (raise-bad-argument sign-token! "parent token audience does not match issuer"
                          token.chain.audience token.issuer))
    ;; verify the chain
    (let (result (verify-token token.chain cap))
      (unless (!VerificationOK? result)
        (raise-bad-argument sign-token! "invalid token chain"
                            (VerificationError-reason result))))
    ;; check expiration
    (unless (<= token.expire token.chain.expire)
      (raise-bad-argument sign-token! "invalid token expiration"
                          token.expire token.chain.expire))
    ;; check capabilities
    (unless (capability-includes? token.chain.protocol token.protocol)
      (raise-bad-argument sign-token! "invalid token protocol"
                          token.protocol token.chain.protocol))
    (unless (group-capability-includes? token.chain.group token.group)
      (raise-bad-argument sign-token! "invalid token group"
                          token.group token.chain.group)))
  ;; and sign it without altering the original until the operation succeeds
  (using (unsigned (struct-copy token) :- Token)
    (set! unsigned.nonce (random-bytes nonce-length))
    (set! unsigned.signature #f)
    (let* ((privk (cap.get-principal unsigned.issuer))
           (data  (marshal-token unsigned))
           (sig   (digest-sign! privk data)))
      (set! token.nonce unsigned.nonce)
      (set! token.signature sig))))

;; roots are absolute trust anchors.
;; returns true if the token has the root as an issuer,
;; either immediate or at its chain
;; Requires an already verified, acyclic chain; this predicate does not verify it.
(def (token-rooted-at? (token : Token)
                       (did   : :string)
                       (ctx   : CapabilityContext))
  => :boolean
  (def root (ctx.normalize-did did))
  (let loop ((token token :- Token))
    => :boolean
    (cond
     ((equal? (ctx.normalize-did token.issuer) root))
     (token.chain => loop)
     (else #f))))

;; anchors confer partial trust for some capability.
;; true if the token or its chain has the anchor's
;; issuer and audience with the proper narrowing
;; of capabilities.
;; Requires an already verified, acyclic chain. The expiration bound applies to
;; the submitted token; matching issuer/audience capabilities are type-independent.
(def (token-anchored-at? (token  : Token)
                         (anchor : Token)
                         (ctx    : CapabilityContext))
  => :boolean
  (def issuer (ctx.normalize-did anchor.issuer))
  (def audience (if (equal? anchor.audience "*")
                  "*"
                  (ctx.normalize-did anchor.audience)))
  (and (<= token.expire anchor.expire)
       (let loop ((token token :- Token))
         => :boolean
         (cond
          ((and (equal? (ctx.normalize-did token.issuer) issuer)
                (if (equal? token.audience "*")
                  (equal? audience "*")
                  (and (not (equal? audience "*"))
                       (equal? (ctx.normalize-did token.audience) audience)))
                (capability-includes? anchor.protocol token.protocol)
                (group-capability-includes? anchor.group token.group))
           #t)
          (token.chain => loop)
          (else #f)))))
