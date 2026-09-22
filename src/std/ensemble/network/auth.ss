;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Ensemble authentication foundations
(import :std/error
        :std/interface
        :std/io/interface
        :std/io/bio/api
        :std/crypto/libcrypto
        :std/crypto/pkey
        :std/number/misc
        :std/serde/marshal
        :std/serde/serialize
        :std/vector/u8vector
        ../ucan/interface
        ../ucan/cap
        ../ucan/ext
        ../ucan/util
        ./wire)
(export (struct-out AuthCandidate
                    AuthSelection)
        proto:/network/connect
        proto:/network/connect/v0
        resolve-auth-expiration
        auth-headroom
        operation-deadline
        operation-expired?
        auth-lifetime?
        order-auth-tokens
        make-auth-tokens
        make-adaptive-auth-tokens
        make-auth-bundle
        encode-auth-bundle
        decode-auth-bundle
        select-auth-candidate
        unix-auth-transcript
        sign-unix-auth
        verify-unix-auth)

;; Public UCAN capability path; independent of the transport's HELLO version.
(def proto:/network/connect/v0 "/network/connect/v0")
(def proto:/network/connect proto:/network/connect/v0)
(def unix-auth-domain         (string->utf8 "gerbil:ensemble:network:unix-auth:v0"))

;; Encodings and tokens are borrowed and immutable by convention. The index is
;; always the original wire index, independent of credential selection order.
(defclass AuthCandidate
  ((index : :fixnum)
   (token : Token)
   (bytes : :u8vector))
  final: #t)

(defclass AuthSelection
  ((candidate :? AuthCandidate := #f)
   (reason    :  :fixnum       := reason-auth-failed))
  final: #t)

;; Capture integer Unix seconds at operation start, as current-time-seconds does.
;; Both overrides are contracted even when expire takes precedence.
(def (resolve-auth-expiration (start          :~ uint64?          :- :integer)
                              (default-ttl    :~ positive-integer? :- :integer)
                              ttl:    (ttl    :~ (? (or not positive-integer?)) := #f)
                              expire: (expire :~ (? (or not uint64?))           := #f))
  => :integer
  (let (result (or expire (+ start (or ttl default-ttl))))
    (unless (and (uint64? result) (> result start))
      (raise-io-error resolve-auth-expiration "Invalid or expired authorization deadline"))
    result))

;; Headroom is fixed at attempt start, never capped by remaining operation budget.
(def (auth-headroom (start   :~ uint64?           :- :integer)
                    (timeout :~ positive-integer? :- :integer))
  => :integer
  (let (result (+ start timeout))
    (unless (uint64? result)
      (raise-io-error auth-headroom "Authentication headroom exceeds Unix-second range"))
    result))

;; Use integer Unix seconds locally and on the wire. An inherited deadline can
;; only shorten the operation budget.
(def (operation-deadline (start              :~ uint64?           :- :integer)
                         (timeout            :~ positive-integer? :- :integer)
                         deadline: (deadline :~ (? (or not uint64?)) := #f))
  => :integer
  (let (result (+ start timeout))
    (unless (uint64? result)
      (raise-io-error operation-deadline "Operation deadline exceeds Unix-second range"))
    (if deadline (min deadline result) result)))

(defrule (operation-expired? deadline now)
  (>= now deadline))

;; Pass zero headroom for streams, for which no extra minimum TTL was selected.
;; The same predicate checks an old lease before a renewal owner starts a round.
(def (auth-lifetime? (expire          : :integer)
                     (min-auth-expire :~ uint64? :- :integer)
                     (headroom        :~ uint64? :- :integer)
                     (now             :~ uint64? :- :integer))
  => :boolean
  (and (uint64? expire) (>= expire min-auth-expire) (>= expire headroom) (> expire now)))

;; list-sort is stable; do not mutate the caller's parent/bundle list.
(def (order-auth-tokens (tokens : :list))
  => :list
  (list-sort (lambda ((a : Token) (b : Token)) (> a.expire b.expire)) tokens))

;; Issue INVOKE tokens without encoding the outgoing bundle. Empty means
;; this local credential choice cannot cover the required lifetime.
;; Construction and key errors propagate for the owner to abort.
;; No input trust is required here: the recipient's context decides that policy.
(def (make-auth-tokens (ctx      :  CapabilityContext)
                       (issuer   :  :string)
                       (audience :  :string)
                       (protocol :  :string)
                       (expire   :~ uint64? :- :integer)
                       (headroom :~ uint64? :- :integer)
                       (now      :~ uint64? :- :integer)
                       (parent   :? Token := #f))
  => :list
  (let ((issuer (ctx.normalize-did issuer))
        (audience (ctx.normalize-did audience)))
    (if (and (auth-lifetime? expire expire headroom now)
             (or (not parent)
                 (auth-lifetime? parent.expire expire headroom now)))
      (let (tokens
            (if parent
              [(ctx.delegate! parent INVOKE issuer audience protocol expire)]
              (ctx.provide! INVOKE issuer audience protocol expire)))
        (order-auth-tokens tokens))
      [])))

;; Preserve the handshake API; bounded control owners must reserve before encoding.
(def (make-auth-bundle (ctx      :  CapabilityContext)
                       (issuer   :  :string)
                       (audience :  :string)
                       (protocol :  :string)
                       (expire   :~ uint64? :- :integer)
                       (headroom :~ uint64? :- :integer)
                       (now      :~ uint64? :- :integer)
                       (parent   :? Token := #f))
  => :list
  (map marshal-token
       (make-auth-tokens ctx issuer audience protocol expire headroom now parent)))

;; Adaptive grants have no policy sentinel expiration. Direct authority uses a
;; finite window; delegated authority uses the minimum of the entire parent chain.
;; Issuance does not consult input trust. Eligible explicit seeds retain delegate!'s
;; contracts; exhausted seeds do not prevent a fresh output-anchor lookup.
(def (make-adaptive-auth-tokens (ctx        :  CapabilityContext)
                                (issuer     :  :string)
                                (audience   :  :string)
                                (protocol   :  :string)
                                (required   :~ uint64? :- :integer)
                                (headroom   :~ uint64? :- :integer)
                                (now        :~ uint64? :- :integer)
                                (window     :~ positive-integer? :- :integer)
                                seed: (seed :? Token := #f))
  => :list
  (let* ((issuer (ctx.normalize-did issuer))
         (audience (ctx.normalize-did audience))
         (window-expire (+ now window)))
    (unless (uint64? window-expire)
      (raise-io-error make-adaptive-auth-tokens "Issuance window exceeds Unix-second range"))
    (let (direct-expire (max window-expire required))
      (if (auth-lifetime? direct-expire required headroom now)
        (let ((tokens [(ctx.grant! INVOKE issuer audience protocol direct-expire)])
              (seen (make-hash-table)))
          (def (add-parent! (parent :- Token))
            => :void
            ;; Walk before structural hashing: malformed cyclic seeds must raise,
            ;; not hang in a horizon traversal or reach randomized child issuance.
            (let* ((chain-seen (make-hash-table-eq))
                   (expire
                    (let loop ((next parent :- Token) (expire parent.expire :- :integer))
                      => :integer
                      (when (hash-get chain-seen next)
                        (raise-bad-argument make-adaptive-auth-tokens "Cyclic delegation chain"))
                      (hash-put! chain-seen next #t)
                      (let (expire (:- (min expire next.expire) :integer))
                        (if next.chain
                          (loop next.chain expire)
                          expire)))))
              (unless (hash-get seen parent)
                (hash-put! seen parent #t)
                (when (auth-lifetime? expire required headroom now)
                  (set! tokens
                    (cons (ctx.delegate! parent INVOKE issuer audience protocol expire) tokens))))))
          (when seed (add-parent! seed))
          (for-each add-parent!
                    (ctx.output-anchors
                     (lambda ((parent :- Token))
                       (and (fx= parent.type DELEGATE)
                            (or (equal? parent.audience "*")
                                 (equal? (ctx.normalize-did parent.audience) issuer))
                            (capability-includes? parent.protocol protocol)
                            (group-capability-includes? parent.group #f)))))
          (order-auth-tokens (reverse! tokens)))
        []))))

;; Not a BIO output-buffer subclass: writer extensions must use these bounded
;; methods rather than writing directly into the delegate's growable buffer.
(defstruct auth-token-writer
  ((output    : BufferedWriter)
   (remaining : :fixnum))
  final: #t)

(def (auth-token-write-u8 (self :  auth-token-writer)
                          (u8   :~ byte? :- :fixnum))
  => :fixnum
  (when (fxzero? self.remaining)
    (raise-io-error encode-auth-bundle "Authentication bundle exceeds byte limit"))
  (begin0 (self.output.write-u8 u8)
    (set! self.remaining (fx1- self.remaining))))

(def (auth-token-write (self  :  auth-token-writer)
                       (input :  :u8vector)
                       (start :~ (in-range-inclusive? 0 (u8vector-length input))     :- :fixnum)
                       (end   :~ (in-range-inclusive? start (u8vector-length input)) :- :fixnum))
  => :fixnum
  (let (size (fx- end start))
    (when (fx> size self.remaining)
      (raise-io-error encode-auth-bundle "Authentication bundle exceeds byte limit"))
    (begin0 (self.output.write input start end)
      (set! self.remaining (fx- self.remaining size)))))

(implement BufferedWriter auth-token-writer
  (write-u8 __auth-token-write-u8)
  (write __auth-token-write)
  (flush
   (lambda ((self :- auth-token-writer))
     (self.output.flush)))
  (close
   (lambda ((self :- auth-token-writer))
     (self.output.close))))

;; Limit counts the bundle count and each blob's length prefix, not just token
;; bytes. Each fresh DAG context preserves marshal-token's independent encoding.
(def (encode-auth-bundle (tokens : :list)
                         (limit  : :fixnum))
  => :list
  (when (fx< limit 4)
    (raise-io-error encode-auth-bundle "Authentication bundle count exceeds byte limit" limit))
  (let loop ((rest tokens :- :list)
             (remaining (fx- limit 4) :- :fixnum)
             (result [] :- :list))
    => :list
    (if (null? rest)
      (reverse! result)
      (begin
        (when (fx< remaining 4)
          (raise-io-error encode-auth-bundle "Authentication token prefix exceeds byte limit"))
        (using (token (car rest) : Token)
          (let (bytes
                (using (output (open-buffered-writer #f small-buffer-size) :- BufferedWriter)
                  (unwind-protect
                    (using (writer (BufferedWriter (auth-token-writer output (fx- remaining 4)))
                                   :- BufferedWriter)
                      (writer.serialize token (marshal-context dag: #t))
                      (get-memory-output-u8vector output))
                    (output.close))))
            (loop (cdr rest) (fx- remaining 4 (u8vector-length bytes))
                  (cons bytes result))))))))

;; Decode well-formed token blobs; any decoding exception aborts the operation.
(def (decode-auth-bundle (blobs : :list))
  => :list
  (let loop ((rest blobs) (index 0) (result []))
    (if (null? rest)
      (list-sort
       (lambda ((a :- AuthCandidate) (b :- AuthCandidate))
         (> a.token.expire b.token.expire))
       (reverse! result))
      (let* ((bytes (: (car rest) :u8vector))
             (token (unmarshal-token bytes)))
        (loop (cdr rest) (fx1+ index)
              (cons (AuthCandidate index: index token: token bytes: bytes) result))))))

;; Consume decode-auth-bundle's sorted, DAG-validated candidates. Reason 4
;; requires a matching, context-verified but short-lived credential; otherwise 3.
;; Current validity and context trust are independent of the captured headroom.
(def (select-auth-candidate (ctx             : CapabilityContext)
                            (candidates      : :list)
                            (issuer          : :string)
                            (audience        : :string)
                            (protocol        : :string)
                            (min-auth-expire :~ uint64? :- :integer)
                            (headroom        :~ uint64? :- :integer)
                            (now             :~ uint64? :- :integer))
  => AuthSelection
  (let ((issuer (ctx.normalize-did issuer))
        (audience (ctx.normalize-did audience)))
    (let loop ((rest candidates) (reason reason-auth-failed))
      (if (null? rest)
        (AuthSelection reason: reason)
        (using ((candidate (car rest) : AuthCandidate)
                (token candidate.token :- Token))
          (if (and (fx= token.type INVOKE)
                    (equal? (ctx.normalize-did token.issuer) issuer)
                    (not (equal? token.audience "*"))
                    (equal? (ctx.normalize-did token.audience) audience)
                   (equal? token.protocol protocol)
                   (uint64? token.expire)
                   (> token.expire now)
                   (!VerificationOK? (ctx.verify token)))
            (if (auth-lifetime? token.expire min-auth-expire headroom now)
              (AuthSelection candidate: candidate reason: reason-ok)
              (loop (cdr rest) reason-lifetime))
            (loop (cdr rest) reason)))))))

;; HELLO payloads (including fixed 32-byte challenges) and the bundle must already
;; be validated by wire/owner code. They are the EXACT received/sent encodings,
;; not objects to reserialize. Physical direction, not DID election, chooses role.
(def (unix-auth-transcript (initiator : :u8vector)
                           (responder : :u8vector)
                           (role      : :fixnum)
                           (bundle    : :u8vector))
  => :u8vector
  (unless (or (fx= role 0) (fx= role 1))
    (raise-io-error unix-auth-transcript "Invalid physical sender role" role))
  (let* ((domain-size (u8vector-length unix-auth-domain))
         (a (u8vector-length initiator))
         (b (u8vector-length responder))
         (c (u8vector-length bundle))
         (size (+ domain-size 13 a b c)))
    (unless (and (uint32? a) (uint32? b) (uint32? c) (fixnum? size))
      (raise-io-error unix-auth-transcript "Unix transcript length exceeds encoding range"))
    (let ((output (make-u8vector size)) (pos domain-size))
      (def (blob (bytes :- :u8vector))
        (let (len (u8vector-length bytes))
          (&u8vector-uint-set!/be output pos len 4)
          (set! pos (fx+ pos 4))
          (subu8vector-move! bytes 0 len output pos)
          (set! pos (fx+ pos len))))
      (subu8vector-move! unix-auth-domain 0 domain-size output 0)
      (blob initiator)
      (blob responder)
      (u8vector-set! output pos role)
      (set! pos (fx1+ pos))
      (blob bundle)
      output)))

(def (sign-unix-auth (key        : PrivKey)
                     (initiator  : :u8vector)
                     (responder  : :u8vector)
                     (role       : :fixnum)
                     (bundle     : :u8vector))
  => :u8vector
  (unless (fx= key.type EVP_PKEY_ED25519)
    (raise-io-error sign-unix-auth "Expected Ed25519 signing key"))
  (digest-sign! key (unix-auth-transcript initiator responder role bundle)
                (make-u8vector 64)))

;; The owner supplies the known DID's key, not a key learned from the signature.
(def (verify-unix-auth (key        : PubKey)
                       (initiator  : :u8vector)
                       (responder  : :u8vector)
                       (role       : :fixnum)
                       (bundle     : :u8vector)
                       (signature  : :u8vector))
  => :boolean
  (unless (fx= key.type EVP_PKEY_ED25519)
    (raise-io-error verify-unix-auth "Expected Ed25519 verification key"))
  (and (fx= (u8vector-length signature) 64)
       (digest-verify! key (unix-auth-transcript initiator responder role bundle) signature)))
