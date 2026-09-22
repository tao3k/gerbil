;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble ucan interfaces
(import :std/crypto/pkey
        :std/serde/interface
        :std/serde/deserialize
        :std/io)
(export #t)

(deftype @Token Token)
(deftype @VerificationResult VerificationResult)

;; token types
(def DELEGATE  0)
(def INVOKE    1)
(def BROADCAST 2)
(def REVOKE    3)

(defrule (token-type? o)
  (and (fixnum? o)
       (one-of ,DELEGATE ,INVOKE ,BROADCAST ,REVOKE)))

;; UCAN Capability tokens
;; see https://github.com/ucan-wg/spec for background
(defclass Token
  (;; the type of the token
   (type       :~ token-type? :- :fixnum)
   ;; the issuing principal did
   (issuer     : :string)
   ;; the audience did or * for any recipient
   (audience   : :string)
   ;; the protocol capability granted
   (protocol   : :string)
   ;; the broadcast capability granted
   (group      :? :string := #f)
   ;; list of arguments as a keyword-value plist; used only in revocation
   (args       : :list := [])
   ;; the expiration time of the token in UNIX seconds
   (expire     : :integer)
   ;; the next token in the chain, if any
   (chain      :? @Token := #f)
   ;; the token nonce, filled in when signing
   (nonce      :? :u8vector := #f)
   ;; the token signature by the principal, filled in when signing
   (signature  :? :u8vector := #f))
  final: #t)

(defobject-untaint Token)

;; UCAN capability management interface
(interface (CapabilityContext Closer)
  ;; Strictly normalize an Ed25519 DID; the returned string is borrowed/read-only.
  (normalize-did (did : :string))
  => :string

  ;; add a principal private key to the context, so that it can be used
  ;; for signing
  ;; returns the did of the principal
  (add-principal! (priv : PrivKey))
  => :string

  ;; retrieves the private key of a principal
  (get-principal (did : :string))
  => PrivKey

  ;; lists the principal dids
  (principals)
  => :list

  ;; returns the public key associated with a did
  ;; the keys may be cached in order to avoid repeatedly
  ;; parsing
  (public-key (did : :string))
  => PubKey

  ;; token management

  ;; signs a token, provided the principal is one of
  ;; of the private keys in the context.
  (sign! (token : Token))
  => :void

  ;; verifies a token for a subject
  ;; - all signatures in the chain must be valid
  ;; - no part of the chain must have expired
  ;; - capabilities in the chain can only be narrowed
  ;; - the token must be anchored either at a root anchor
  ;;   or extend a trust anchor in the chain
  (verify (token : Token))
  => @VerificationResult

  ;; save a (longer lived) token for future revocation
  (save-token! (token : Token))
  => :void

  ;; list issued unexpired tokens that have been saved
  (list-tokens (filter : :procedure))
  => :list

  ;; trust management

  ;; adds an output trust anchor for rooting output tokens
  ;; output anchors are used to chain tokens for output
  ;; operations e.g. sending a message or opening a stream
  ;; verify signatures, expiration and delegation before insertion; existing
  ;; root/input trust is not required to install an anchor
  (add-output-anchor! (token : Token))
  => :void

  ;; remove an output trust anchor
  (remove-output-anchor! (token : Token))
  => :void

  ;; list output trust anchors that have not expired
  (output-anchors (filter : :procedure))
  => :list

  ;; adds an input trust anchor for input tokens
  ;; an input anchor confers partial trust for some audience
  ;; and specific capabilities
  ;; verify signatures, expiration and delegation before insertion; existing
  ;; root/input trust is not required to install an anchor
  (add-input-anchor! (token : Token))
  => :void

  ;; removes an input trust anchor
  (remove-input-anchor! (token : Token))
  => :void

  ;; lists input trust anchors that have not expired
  (input-anchors (filter : :procedure))
  => :list

  ;; adds a root anchor.
  ;; a root anchor is a did trusted as a issuer anywhere in the chain
  ;; of a valid token.
  ;; Note: this be should be used only for fully trusted entities,
  ;; like the owner of a host or the organization it belongs to.
  (add-root! (did : :string))
  => :void

  ;; removes a root anchor
  (remove-root! (did : :string))
  => :void

  ;; lists existing root anchors.
  (roots)
  => :list
  )

;; verification results
(defstruct VerificationResult ())
(defstruct (VerificationOK VerificationResult) ())
(defstruct (VerificationError VerificationResult)
  ((reason : :string)))

(def !VerificationOK
  (VerificationOK))
(def (!VerificationOK? result)
  (eq? result !VerificationOK))

(def !SignatureVerificationError
  (VerificationError "signature verification failed"))
(def !DelegationVerificationError
  (VerificationError "delegation verification failed"))
(def !ExpirationVerificationError
  (VerificationError "expiration verification failed"))
(def !IssuerVerificationError
  (VerificationError "issuer verification failed"))
(def !CapabilityVerificationError
  (VerificationError "capability verification failed"))
(def !AnchorVerificationError
  (VerificationError "anchor verification failed"))
(def !TokenExpiredVerificationError
  (VerificationError "token expired"))
(def !MalformedTokenVerificationError
  (VerificationError "malformed token"))
(def !MessageExpiredVerificationError
  (VerificationError "message expired"))
(def !MessageVerificationError
  (VerificationError "message verification failed"))
