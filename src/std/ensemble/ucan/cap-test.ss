;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Capability checks with a key-only synthetic context
(import :std/test
        :std/error
        :std/crypto/pkey
        :std/encoding/multibase
        :std/serde/marshal
        :std/time/time
        ./cap
        ./did
        ./interface
        ./util)
(export cap-test)

(defstruct test-key-context
  ((private : HashTable)
   (public : HashTable))
  transparent: #f)

(def (test-add (self : test-key-context) (key : PrivKey)) => :string
  (let (did (private-key->did key))
    (self.private.set! did key)
    did))

(def (test-get (self : test-key-context) (did : :string)) => PrivKey
  (self.private.ref (normalize-did did) #f))

(def (test-normalize (self : test-key-context) (did : :string)) => :string
  (normalize-did did))

(def (test-list (self : test-key-context)) => :list
  (hash-keys self.private))

(def (test-pub (self : test-key-context) (did : :string)) => PubKey
  (def canonical (normalize-did did))
  (or (self.public.ref canonical #f)
      (let (key (did->public-key canonical))
        (self.public.set! canonical key)
        key)))

;; Only normalization/key methods are installed; signing, verification, trust
;; and close slots remain unset. The fixture owns all native keys.
(def (with-test-keys (proc : :procedure)) => :void
  (using (backing (test-key-context (make-hash-table) (make-hash-table)) :- test-key-context)
    (let (ctx (new-instance CapabilityContext::t))
      (apply class-instance-init! ctx
        (list object: backing add-principal!: test-add get-principal: test-get
              principals: test-list public-key: test-pub normalize-did: test-normalize))
      (using (ctx (: ctx CapabilityContext) :- CapabilityContext)
        (unwind-protect
          (let* ((a (ctx.add-principal! (bytes->ed25519-private-key (make-u8vector 32 1))))
                 (b (ctx.add-principal! (bytes->ed25519-private-key (make-u8vector 32 2))))
                 (c (ctx.add-principal! (bytes->ed25519-private-key (make-u8vector 32 3)))))
            (check (length (ctx.principals)) => 3)
            (proc ctx a b c (+ (current-time-seconds) 3600)))
          (begin
            (for-each (lambda (key) (foreign-release! (PrivKey-key key)))
                      (hash-values backing.private))
            (for-each (lambda (key) (foreign-release! (PubKey-key key)))
                      (hash-values backing.public)))))))
  (void))

(def (test-token (issuer : :string) (audience : :string) (expire : :integer)
                 (type : :fixnum := DELEGATE) (protocol : :string := "/svc")
                 (group :? :string := "/team") (chain :? Token := #f)) => Token
  (Token issuer: issuer audience: audience expire: expire type: type
         protocol: protocol group: group chain: chain))

;; Bypass edge validation deliberately, to exercise verification independently
;; of sign-token!'s rejection of malformed delegations.
(def (raw-sign! (token : Token) (ctx : CapabilityContext)) => :void
  (set! token.nonce (make-u8vector nonce-length 7))
  (set! token.signature #f)
  (set! token.signature
    (digest-sign! (ctx.get-principal token.issuer) (marshal-token token))))

(def (test-did-alias (did : :string)) => :string
  (string-append did-key-prefix
                 (multibase-encode multibase-base58-btc
                                   (multibase-decode (substring did 8 (string-length did))))))

(def cap-test
  (test-suite "UCAN capabilities"
    (test-case "segment boundaries and optional groups"
      (for-each
       (lambda (row)
         (check (capability-includes? (car row) (cadr row)) => (caddr row)))
       '(("" "" #t) ("" "/" #f) ("/" "" #t) ("/" "/svc/read" #t)
         ("/svc" "/svc" #t) ("/svc" "/svc/read" #t) ("/svc" "/svc/" #t)
         ("/svc" "/svcx" #f) ("/svc" "/svc-read" #f) ("/svc/read" "/svc" #f)
         ("/svc" "" #f) ("/svc/" "/svc/read" #f)))
      (check (group-capability-includes? #f #f) => #t)
      (check (group-capability-includes? #f "/team") => #f)
      (check (group-capability-includes? "/" #f) => #f)
      (check (group-capability-includes? "/team" "/team/red") => #t)
      (check (group-capability-includes? "/team" "/teams") => #f))

    (test-case "root signatures, tampering and required fields"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using (token (test-token a b expiry INVOKE) :- Token)
           (sign-token! token ctx)
           (check (u8vector-length token.nonce) => nonce-length)
           (check (verify-token-signature token ctx) => !VerificationOK)
           (check (verify-token token ctx) => !VerificationOK)
           (let ((nonce token.nonce) (signature token.signature))
             (set! token.protocol "/svc/write")
             (check (verify-token token ctx) => !SignatureVerificationError)
             (set! token.protocol "/svc")
             (set! token.nonce #f)
             (check (verify-token token ctx) => !MalformedTokenVerificationError)
             (set! token.nonce nonce)
             (set! token.signature #f)
             (check (verify-token token ctx) => !MalformedTokenVerificationError)
             (set! token.signature signature)
             (check (verify-token token ctx) => !VerificationOK))))))

    (test-case "multi-hop narrowing, wildcard audience and equal expiration"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((root (test-token a "*" expiry DELEGATE "/" "/") :- Token)
                 (middle (test-token b c expiry DELEGATE "/svc" "/team" root) :- Token)
                 (leaf (test-token c a expiry INVOKE "/svc/read" "/team/red" middle) :- Token))
           (sign-token! root ctx)
           (sign-token! middle ctx)
           (sign-token! leaf ctx)
           (check (verify-token leaf ctx) => !VerificationOK)))))

    (test-case "multi-hop delegation without groups"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((root (test-token a b expiry DELEGATE "/" #f) :- Token)
                 (middle (test-token b c expiry DELEGATE "/svc" #f root) :- Token)
                 (leaf (test-token c a expiry INVOKE "/svc/read" #f middle) :- Token))
           (sign-token! root ctx)
           (sign-token! middle ctx)
           (sign-token! leaf ctx)
           (check (verify-token leaf ctx) => !VerificationOK)))))

    (test-case "expired root and ancestor precede public-key lookup"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((root (test-token "unknown-issuer" b 0) :- Token)
                 (leaf (test-token b c expiry INVOKE "/svc" "/team" root) :- Token))
           ;; Nonempty fields ensure a misplaced signature check tries DID parsing.
           (set! root.nonce #u8(1))
           (set! root.signature #u8(2))
           (check (verify-token root ctx) => !TokenExpiredVerificationError)
           (raw-sign! leaf ctx)
           (check (verify-token leaf ctx) => !TokenExpiredVerificationError)))))

    (test-case "valid signatures do not authorize invalid delegation edges"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (for-each
          (lambda (row)
            (using ((parent (test-token a (cadr row) expiry (car row)) :- Token)
                    (leaf (test-token b c (+ expiry (caddr row)) INVOKE
                                      (list-ref row 3) (list-ref row 4) parent) :- Token))
              (raw-sign! parent ctx)
              (raw-sign! leaf ctx)
              (check (verify-token-signature parent ctx) => !VerificationOK)
              (check (verify-token-signature leaf ctx) => !VerificationOK)
              (check (verify-token leaf ctx) => (list-ref row 5))
              (let ((nonce leaf.nonce) (signature leaf.signature))
                (check-exception (sign-token! leaf ctx) ContractViolation?)
                (check (eq? leaf.nonce nonce) => #t)
                (check (eq? leaf.signature signature) => #t))))
          (list (list INVOKE b 0 "/svc" "/team" !DelegationVerificationError)
                (list DELEGATE c 0 "/svc" "/team" !IssuerVerificationError)
                (list DELEGATE b 1 "/svc" "/team" !ExpirationVerificationError)
                (list DELEGATE b 0 "/svcx" "/team" !CapabilityVerificationError)
                (list DELEGATE b 0 "/" "/team" !CapabilityVerificationError)
                (list DELEGATE b 0 "/svc" "/teams" !CapabilityVerificationError)
                (list DELEGATE b 0 "/svc" #f !CapabilityVerificationError))))))

    (test-case "absent parent group cannot grant a group"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((parent (test-token a b expiry DELEGATE "/svc" #f) :- Token)
                 (leaf (test-token b c expiry INVOKE "/svc" "/team" parent) :- Token))
           (raw-sign! parent ctx)
           (raw-sign! leaf ctx)
           (check (verify-token leaf ctx) => !CapabilityVerificationError)
           (check-exception (sign-token! leaf ctx) ContractViolation?)))))

    (test-case "ancestor signature failures with a freshly signed leaf"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((parent (test-token a b expiry) :- Token)
                 (leaf (test-token b c expiry INVOKE "/svc" "/team" parent) :- Token))
           (sign-token! parent ctx)
           (set! parent.protocol "/")
           (raw-sign! leaf ctx)
           (check (verify-token-signature leaf ctx) => !VerificationOK)
           (check (verify-token leaf ctx) => !SignatureVerificationError)
           (let ((nonce leaf.nonce) (signature leaf.signature))
             (check-exception (sign-token! leaf ctx) ContractViolation?)
             (check (eq? leaf.nonce nonce) => #t)
             (check (eq? leaf.signature signature) => #t))
           (set! parent.signature #f)
           (raw-sign! leaf ctx)
           (check (verify-token-signature leaf ctx) => !VerificationOK)
           (check (verify-token leaf ctx) => !MalformedTokenVerificationError)))))

    (test-case "marshal failures preserve caller signature and nonce"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using (token (test-token a b expiry) :- Token)
           (sign-token! token ctx)
           (let ((nonce token.nonce) (signature token.signature))
             ;; A cycle in args exercises marshal failure without edge validation.
             (set! token.args (list token))
             (check-exception (verify-token-signature token ctx) ContractViolation?)
             (check (eq? token.signature signature) => #t)
             (check-exception (sign-token! token ctx) ContractViolation?)
             (check (eq? token.nonce nonce) => #t)
             (check (eq? token.signature signature) => #t))))))

    (test-case "root and anchor predicates use existing trust semantics"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((root (test-token a b expiry) :- Token)
                 (leaf (test-token b c (- expiry 100) INVOKE "/svc/read" "/team/red" root) :- Token)
                 (anchor (test-token a b (- expiry 50) REVOKE "/" "/") :- Token))
           (sign-token! root ctx)
           (sign-token! leaf ctx)
           (check (verify-token leaf ctx) => !VerificationOK)
           (check (token-rooted-at? leaf a ctx) => #t)
           (check (token-rooted-at? leaf b ctx) => #t)
           (check (token-rooted-at? leaf c ctx) => #f)
           ;; Anchor type is irrelevant; only the leaf's expiration is bounded.
           (check (token-anchored-at? leaf anchor ctx) => #t)
           (set! anchor.expire (- expiry 101))
           (check (token-anchored-at? leaf anchor ctx) => #f)
           (set! anchor.expire expiry)
           (set! anchor.audience c)
           (check (token-anchored-at? leaf anchor ctx) => #f)
           (set! anchor.audience b)
           (set! anchor.protocol "/svc/read")
           (check (token-anchored-at? leaf anchor ctx) => #f)
           (set! anchor.protocol "/")
           (set! anchor.group #f)
           (check (token-anchored-at? leaf anchor ctx) => #f)
           (check (token-anchored-at? leaf leaf ctx) => #t)))))

    (test-case "mixed DID encodings preserve signed fields and match trust"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (let ((az (test-did-alias a)) (bz (test-did-alias b)) (cz (test-did-alias c)))
           (for-each
            (lambda (row)
              (using ((parent (test-token (car row) (cadr row) expiry) :- Token)
                      (leaf (test-token (caddr row) (list-ref row 3) expiry INVOKE
                                        "/svc/read" "/team/red" parent) :- Token))
                (sign-token! parent ctx)
                (let (parent-bytes (marshal-token parent))
                  (sign-token! leaf ctx)
                  (check (marshal-token parent) => parent-bytes)
                  (check parent.issuer => (car row))
                  (check parent.audience => (cadr row))
                  (check leaf.issuer => (caddr row))
                  (check leaf.audience => (list-ref row 3))
                  (let (leaf-bytes (marshal-token leaf))
                    (check (verify-token leaf ctx) => !VerificationOK)
                    (for-each (lambda (did) (check (token-rooted-at? leaf did ctx) => #t))
                              [a az b bz])
                    (for-each (lambda (did) (check (token-rooted-at? leaf did ctx) => #f))
                              [c cz])
                    (check (token-anchored-at? leaf (test-token a b expiry) ctx) => #t)
                    (check (token-anchored-at? leaf (test-token az bz expiry) ctx) => #t)
                    (check (token-anchored-at? leaf (test-token bz cz expiry) ctx) => #t)
                    (check (token-anchored-at? leaf (test-token az cz expiry) ctx) => #f)
                    (check (token-anchored-at? leaf (test-token cz bz expiry) ctx) => #f)
                    (check (marshal-token leaf) => leaf-bytes)
                    (check (marshal-token parent) => parent-bytes)
                    (using (decoded (unmarshal-token leaf-bytes) :- Token)
                      (check (verify-token decoded ctx) => !VerificationOK)
                      (check (marshal-token decoded) => leaf-bytes))))))
            [[az bz b c] [a b bz cz]])))))

    (test-case "anchor wildcards match only wildcards, delegation remains open"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (let (az (test-did-alias a))
           (using ((parent (test-token az "*" expiry) :- Token)
                   (leaf (test-token b c expiry INVOKE "/svc" "/team" parent) :- Token)
                   (specific (test-token a b expiry) :- Token)
                   (wildcard (test-token a "*" expiry) :- Token))
             (sign-token! parent ctx)
             (sign-token! leaf ctx)
             (sign-token! specific ctx)
             (let ((before (marshal-token leaf)) (specific-before (marshal-token specific)))
               (check (verify-token leaf ctx) => !VerificationOK)
               (check (token-anchored-at? leaf wildcard ctx) => #t)
               (check (token-anchored-at? parent specific ctx) => #f)
               (check (token-anchored-at? specific wildcard ctx) => #f)
               (check (marshal-token leaf) => before)
               (check (marshal-token specific) => specific-before)))))))

    (test-case "different keys remain invalid across DID encodings"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((parent (test-token (test-did-alias a) (test-did-alias c) expiry) :- Token)
                 (leaf (test-token (test-did-alias b) a expiry INVOKE "/svc" "/team" parent) :- Token))
           (sign-token! parent ctx)
           (raw-sign! leaf ctx)
           (let (before (marshal-token leaf))
             (check (verify-token-signature leaf ctx) => !VerificationOK)
             (check (verify-token leaf ctx) => !IssuerVerificationError)
             (check-exception (sign-token! leaf ctx) ContractViolation?)
             (check (marshal-token leaf) => before))))))

    (test-case "DAG roundtrip preserves sharing and signatures"
      (with-test-keys
       (lambda (ctx a b c expiry)
         (using ((parent (test-token a b expiry) :- Token)
                 (leaf (test-token b c expiry INVOKE "/svc/read" "/team/red" parent) :- Token))
           (sign-token! parent ctx)
           (set! leaf.args (list proof: parent again: parent))
           (sign-token! leaf ctx)
           (using (decoded (unmarshal-token (marshal-token leaf)) :- Token)
             (check (eq? decoded.chain (cadr decoded.args)) => #t)
             (check (eq? decoded.chain (list-ref decoded.args 3)) => #t)
             (check decoded.signature => leaf.signature)
             (check (marshal-token decoded) => (marshal-token leaf))
             (check (verify-token decoded ctx) => !VerificationOK))))))

    (test-case "token codec rejects cycles and non-token roots"
      (using (token (test-token "issuer" "audience" 0) :- Token)
        (set! token.chain token)
        (check-exception (marshal-token token) ContractViolation?)
        ;; Ordinary marshal allows cycles: construct bytes outside the assertion
        ;; so only the DAG decoder can satisfy the expected exception.
        (let (bytes (marshal token))
          (check-exception (unmarshal-token bytes) ContractViolation?))
        (set! token.chain #f)
        (set! token.args (list token))
        (check-exception (marshal-token token) ContractViolation?)
        (let (bytes (marshal token))
          (check-exception (unmarshal-token bytes) ContractViolation?)))
      (let (bytes (marshal '(not a token)))
        (check-exception (unmarshal-token bytes) ContractViolation?)))))
