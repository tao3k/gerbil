;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Authentication, exact Unix proofs, and deterministic deadline tests
(import :std/build-config
        :std/test
        :std/cache
        :std/error
        :std/crypto/pkey
        :std/encoding/base58
        :std/io/bio/cache
        :std/serde/marshal
        :std/time/time
        :std/vector/u8vector
        ../ucan/interface
        ../ucan/did
        ../ucan/util
        ./auth
        ./wire)
(export auth-test)

(def auth-test
  (test-suite "Network authentication foundations"
    (test-case "empty bundles still require the count and encoding checks token types"
      (check (encode-auth-bundle [] 4) => [])
      (check (encode-auth-bundle [] 100) => [])
      (for-each
        (lambda ((limit : :fixnum))
          => :void
          (check-exception (encode-auth-bundle [] limit) IOError?))
        [-1 0 1 2 3])
      (check-exception (encode-auth-bundle [] 4.0) ContractViolation?)
      (check-exception (encode-auth-bundle [#f] 100) ContractViolation?))

    (test-case "oversized tokens stop before buffer growth and failures return cached output"
      (def token
        (Token type: INVOKE issuer: "local" audience: "peer" expire: 100
               protocol: (make-string (fx* small-buffer-size 16) #\a)))
      (def cyclic (struct-copy token))
      (Token-chain-set! cyclic cyclic)
      (using (cache (CacheOps __buffer-cache) :- CacheOps)
        (cache.flush!)
        (unwind-protect
          (begin
            (for-each
              (lambda ((allowance : :fixnum))
                => :void
                (def seed (make-u8vector small-buffer-size #xee))
                (cache.flush!)
                (buffer-cache.put! seed)
                ;; The first write beyond allowance must fail, even at a growth boundary.
                (check-exception (encode-auth-bundle [token] (fx+ 8 allowance)) IOError?)
                (check (cache.size) => 1)
                (let (reused (buffer-cache.get small-buffer-size))
                  (unwind-protect
                    (begin
                      (check-eq? reused seed)
                      (check (subu8vector reused allowance small-buffer-size)
                             => (make-u8vector (fx- small-buffer-size allowance) #xee)))
                    (buffer-cache.put! reused)))
                ;; DAG scanning errors must propagate without losing the borrowed buffer.
                (check-exception (encode-auth-bundle [cyclic] (fx+ 8 allowance)) ContractViolation?)
                (check (cache.size) => 1)
                (let (reused (buffer-cache.get small-buffer-size))
                  (unwind-protect
                    (check-eq? reused seed)
                    (buffer-cache.put! reused))))
              [0 1 small-buffer-size])
            (cache.flush!)
            (check-exception (encode-auth-bundle [token] (fx+ 8 (fx* 2 small-buffer-size))) IOError?)
            ;; Both the initial buffer and its replacement must be returned.
            (check (cache.size) => 2))
          (cache.flush!))))

    (test-case "fixed expiration precedence, default, and unsigned seconds"
      (check (resolve-auth-expiration 100 3600) => 3700)
      (check (resolve-auth-expiration 100 3600 ttl: 20) => 120)
      (check (resolve-auth-expiration 100 3600 ttl: 20 expire: 130) => 130)
      (check (resolve-auth-expiration 100 3600 expire: #xffffffffffffffff)
             => #xffffffffffffffff)
      (check (resolve-auth-expiration 100 3600 ttl: (expt 2 80) expire: 130) => 130)
      (check-exception (resolve-auth-expiration 100 3600 ttl: 0 expire: 130) ContractViolation?)
      (check-exception (resolve-auth-expiration 100 3600 expire: 0) IOError?)
      (check-exception (resolve-auth-expiration 100 3600 expire: 100) IOError?)
      (check-exception (resolve-auth-expiration 100 3600 ttl: (expt 2 80)) IOError?)
      (check-exception (resolve-auth-expiration #xffffffffffffffff 1) IOError?)
      (check-exception (resolve-auth-expiration 100.5 3600) ContractViolation?)
      (check-exception (resolve-auth-expiration 100 3600 expire: -1) ContractViolation?))

    (test-case "headroom stays fixed and is independent of the operation budget"
      (def h (auth-headroom 100 10))
      (check h => 110)
      (check (auth-lifetime? 110 105 h 109) => #t)
      (check (auth-lifetime? 110 115 h 109) => #f)
      (check (auth-lifetime? 109 105 h 108) => #f)
      (check (auth-lifetime? 110 105 h 110) => #f)
      (check (auth-lifetime? 109 105 0 108) => #t)
      (check (auth-lifetime? -1 0 0 0) => #f)
      (check (auth-lifetime? (expt 2 64) 0 0 0) => #f)
      (check (auth-lifetime? 100 99 (auth-headroom 99 2) 99) => #f)
      (check (operation-deadline 108 10 deadline: 110) => 110)
      (check (auth-headroom 108 10) => 118)
      (check (auth-headroom (- #xffffffffffffffff 1) 1) => #xffffffffffffffff)
      (check-exception (auth-headroom #xffffffffffffffff 1) IOError?))

    (test-case "integer-second deadlines, boundaries and timestamp contracts"
      (check (operation-deadline 100 10) => 110)
      (check (operation-deadline 100 10 deadline: 120) => 110)
      (check (operation-deadline 0 1) => 1)
      (check (operation-expired? 0 0) => #t)
      (check (operation-expired? 110 109) => #f)
      (check (operation-expired? 110 110) => #t)
      (check (operation-expired? 110 111) => #t)
      (check (operation-deadline 1 1 deadline: 0) => 0)
      (check (operation-deadline (- #xffffffffffffffff 1) 1)
             => #xffffffffffffffff)
      (check-exception (operation-deadline #xffffffffffffffff 1) IOError?)
      (for-each
       (lambda (bad)
         (check-exception (operation-deadline bad 1) ContractViolation?)
         (check-exception (auth-headroom bad 1) ContractViolation?)
         (check-exception (auth-lifetime? 110 100 bad 100) ContractViolation?)
         (check-exception (auth-lifetime? 110 100 100 bad) ContractViolation?))
       [-1 1/2 1.0 +inf.0 +nan.0 #x10000000000000000])
      (for-each
       (lambda (bad)
         (check-exception (operation-deadline 1 bad) ContractViolation?)
         (check-exception (auth-headroom 1 bad) ContractViolation?))
       [0 -1 1/2 1.0 +inf.0 +nan.0]))

    (test-case "DID normalization and exact UTF-8 Unix transcript"
      (using ((key (bytes->ed25519-private-key (make-u8vector 32 1)) :- PrivKey)
              (other (bytes->ed25519-private-key (make-u8vector 32 2)) :- PrivKey))
        (unwind-protect
          (let* ((did (private-key->did key))
                 (alias (string-append "did:key:z"
                                       (base58-encode (u8vector-append DID-KEY-ED25519-code
                                                                       (private-key->public-bytes key)))))
                 ;; Wire accepts UTF-8; the owner subsequently validates DID fields.
                 (hello (encode-frame-payload frame-hello
                                              [1 (string (integer->char #x3bb)) (make-u8vector 32 7) 100 10 1000 lease-mode-fixed]))
                 (reply (encode-frame-payload frame-hello
                                              [1 did (make-u8vector 32 8) 0 10 1000 lease-mode-fixed]))
                 (bundle (encode-frame-payload frame-auth [[#u8(1 2 3) #u8()]]))
                 (domain (string->utf8 "gerbil:ensemble:network:unix-auth:v0"))
                 (transcript (unix-auth-transcript hello reply 0 bundle)))
            (check (normalize-did alias) => did)
            (check (&u8vector-uint-ref/be hello 2 4) => 2)
            (check (subu8vector transcript 0 (u8vector-length domain)) => domain)
            (def (prefixed bytes)
              (let (prefix (make-u8vector 4))
                (&u8vector-uint-set!/be prefix 0 (u8vector-length bytes) 4)
                (u8vector-append prefix bytes)))
            (check transcript => (u8vector-append domain (prefixed hello) (prefixed reply)
                                                  #u8(0) (prefixed bundle)))
            (using ((pub (did->public-key did) :- PubKey)
                    (wrong (did->public-key (private-key->did other)) :- PubKey))
              (unwind-protect
                (let (signature (sign-unix-auth key hello reply 0 bundle))
                  (check (u8vector-length signature) => 64)
                  (check (digest-verify! pub transcript signature) => #t)
                  (check (verify-unix-auth pub hello reply 0 bundle signature) => #t)
                  (check (verify-unix-auth pub hello reply 1 bundle signature) => #f)
                  (check (verify-unix-auth pub reply hello 0 bundle signature) => #f)
                  (check (verify-unix-auth wrong hello reply 0 bundle signature) => #f)
                  (for-each
                    (lambda (size)
                      (check (verify-unix-auth pub hello reply 0 bundle (make-u8vector size)) => #f))
                    [0 63 65])
                  (for-each
                    (lambda (bytes)
                      (let (saved (u8vector-ref bytes (fx1- (u8vector-length bytes))))
                        (u8vector-set! bytes (fx1- (u8vector-length bytes)) (fxxor saved 1))
                        (check (verify-unix-auth pub hello reply 0 bundle signature) => #f)
                        (u8vector-set! bytes (fx1- (u8vector-length bytes)) saved)))
                    [hello reply bundle signature])
                  (check-exception (unix-auth-transcript hello reply 2 bundle) IOError?)
                  (check-exception
                   (encode-frame-payload frame-hello [1 did (make-u8vector 31) 100 10 1000 lease-mode-fixed]) IOError?)
                  (check-exception
                   (decode-frame-payload frame-auth (u8vector-append bundle (make-u8vector 63)) unix?: #t)
                   IOError?))
                (begin (foreign-release! pub.key) (foreign-release! wrong.key)))))
          (begin (foreign-release! key.key) (foreign-release! other.key)))))))

(cond-expand
 (config-have-sqlite
  (import ../keystore/interface
          ../keystore/memory
          ../ucan/context
          ../ucan/ext)
  (export auth-context-test)

  (def (with-auth-context (proc : :procedure))
    => :void
    (using (store (make-memory-keystore #u8(1 2 3)) :- Keystore)
      (unwind-protect
        (using (ctx (open-capability-context ":memory:" store) :- CapabilityContext)
          (unwind-protect
            (proc ctx (store.generate-key!) (store.generate-key!) (store.generate-key!)
                  (current-time-seconds))
            (ctx.close)))
        (store.close))))

  ;; Use one deliberately failing interface slot to prove that errors from the
  ;; context aren't confused with data failures from the pure decoder boundary.
  (def (failing-auth-context (failure : :t))
    => CapabilityContext
    (let (ctx (new-instance CapabilityContext::t))
      (apply class-instance-init! ctx
             (list object: failure
                   normalize-did: (lambda (self did) (normalize-did did))
                   verify: (lambda (self token) (raise self))))
      (: ctx CapabilityContext)))

  (def auth-context-test
    (test-suite "Network UCAN context integration"
      (test-case "adaptive direct grants use a finite window without assuming recipient trust"
        (with-auth-context
          (lambda ((ctx : CapabilityContext) a b root now)
            (def tokens (make-adaptive-auth-tokens ctx a b "/svc" 0 (+ now 10) now 60))
            (check (length tokens) => 1)
            (check (Token-chain (car tokens)) => #f)
            (check (Token-expire (car tokens)) => (+ now 60))
            (def candidates (decode-auth-bundle (encode-auth-bundle tokens 65536)))
            (check (AuthSelection-reason
                    (select-auth-candidate ctx candidates a b "/svc" 0 (+ now 10) now))
                   => reason-auth-failed)
            (ctx.add-root! a)
            (check (AuthSelection-reason
                    (select-auth-candidate ctx candidates a b "/svc" 0 (+ now 10) now))
                   => reason-ok)
            (check (map Token-expire
                        (make-adaptive-auth-tokens ctx a b "/svc" (+ now 120) (+ now 10) now 60))
                   => [(+ now 120)])
            ;; A shorter trusted parent remains selectable after an untrusted direct grant.
            (ctx.remove-root! a)
            (ctx.add-root! root)
            (def parent (ctx.grant! DELEGATE root a "/" (+ now 100)))
            (ctx.add-output-anchor! parent)
            (def choices (make-adaptive-auth-tokens ctx a b "/svc" 0 (+ now 10) now 200))
            (check (map Token-expire choices) => [(+ now 200) (+ now 100)])
            (using (selection
                    (select-auth-candidate ctx (decode-auth-bundle (encode-auth-bundle choices 65536))
                                           a b "/svc" 0 (+ now 10) now)
                    :- AuthSelection)
              (check selection.reason => reason-ok)
              (check selection.candidate.index => 1)))))

      (test-case "adaptive parent dedup precedes issuance and preserves direct seed context ties"
        (with-auth-context
          (lambda ((ctx : CapabilityContext) a b root now)
            (def expiry (+ now 100))
            (def seed (ctx.grant! DELEGATE root a "/" expiry))
            (def other (ctx.grant! DELEGATE root a "/svc" expiry))
            (def copy (unmarshal-token (marshal-token seed)))
            (def other-copy (unmarshal-token (marshal-token other)))
            (def signed [])
            (def probe (new-instance CapabilityContext::t))
            (apply class-instance-init! probe
                   (list object: ctx
                         normalize-did: CapabilityContext-normalize-did
                         output-anchors:
                         (lambda (self predicate)
                           (filter predicate [copy other seed other-copy]))
                         sign!:
                         (lambda ((self : CapabilityContext) (token : Token))
                           (set! signed (cons token signed))
                           (self.sign! token))))
            (def tokens
              (make-adaptive-auth-tokens (: probe CapabilityContext) a b "/svc" expiry expiry now 100
                                         seed: seed))
            (check (length signed) => 3)
            (check tokens => (reverse signed))
            (check (map Token-chain tokens) => [#f seed other])
            (check-eq? (Token-chain (cadr tokens)) seed)
            (check (map Token-expire tokens) => [expiry expiry expiry])
            (def expected (map marshal-token tokens))
            (def size (u8vector-length (encode-frame-payload frame-auth [expected])))
            (check (encode-auth-bundle tokens size) => expected)
            (check-exception (encode-auth-bundle tokens (fx1- size)) IOError?)
            (check (map AuthCandidate-index (decode-auth-bundle expected)) => [0 1 2]))))

      (test-case "adaptive horizons inspect earlier ancestors without repairing invalid chains"
        (with-auth-context
          (lambda ((ctx : CapabilityContext) a b root now)
            (def horizon (+ now 100))
            (def ancestor (ctx.grant! DELEGATE root a "/" horizon))
            ;; A parent may arrive with a longer leaf than ancestor. Issuance must
            ;; compute the full-chain minimum, but signing still rejects that chain.
            (def parent (Token type: DELEGATE issuer: a audience: a protocol: "/svc"
                               expire: (+ now 200) chain: ancestor))
            (def targets [])
            (def probe (new-instance CapabilityContext::t))
            (apply class-instance-init! probe
                   (list object: ctx
                         normalize-did: CapabilityContext-normalize-did
                         output-anchors: (lambda (self predicate) (filter predicate [parent]))
                         sign!:
                         (lambda ((self : CapabilityContext) (token : Token))
                           (when token.chain (set! targets (cons token.expire targets)))
                           (self.sign! token))))
            (check-exception
             (make-adaptive-auth-tokens (: probe CapabilityContext) a b "/svc" 0 0 now 300 seed: parent)
             ContractViolation?)
            (check targets => [horizon])
            (set! targets [])
            (for-each
              (lambda (required headroom)
                (check (map Token-chain
                            (make-adaptive-auth-tokens (: probe CapabilityContext) a b "/svc"
                                                       required headroom now 300 seed: parent))
                       => [#f]))
              [(+ horizon 1) 0] [0 (+ horizon 1)])
            (check targets => [])
            ;; A live leaf cannot hide an expired ancestor, even for target zero.
            (check (map Token-chain
                        (make-adaptive-auth-tokens (: probe CapabilityContext) a b "/svc"
                                                   0 0 horizon 300 seed: parent))
                   => [#f])
            (check targets => [])
            (Token-chain-set! parent parent)
            (check-exception
             (make-adaptive-auth-tokens ctx a b "/svc" 0 0 now 300 seed: parent)
             ContractViolation?))))

      (test-case "expired adaptive seed does not pin freshly refreshed context authority"
        (with-auth-context
          (lambda ((ctx : CapabilityContext) a b root now)
            (def seed (ctx.grant! DELEGATE root a "/" 0))
            (def first (ctx.grant! DELEGATE root a "/svc" (+ now 200)))
            (def fresh (ctx.grant! DELEGATE root a "/svc" (+ now 300)))
            (ctx.add-output-anchor! first)
            (check (map Token-expire
                        (make-adaptive-auth-tokens ctx a b "/svc" 0 (+ now 10) now 60 seed: seed))
                   => [(+ now 200) (+ now 60)])
            (ctx.remove-output-anchor! first)
            (ctx.add-output-anchor! fresh)
            (def tokens (make-adaptive-auth-tokens ctx a b "/svc" 0 (+ now 10) now 60 seed: seed))
            (check (map Token-expire tokens) => [(+ now 300) (+ now 60)])
            (check (Token-chain (car tokens)) => fresh)
            (check (Token-chain (cadr tokens)) => #f))))

      (test-case "adaptive bounds and eligible explicit seed contracts remain strict"
        (with-auth-context
          (lambda ((ctx : CapabilityContext) a b root now)
            (check (make-adaptive-auth-tokens ctx a b "/svc" 0 (+ now 11) now 10) => [])
            (check (map Token-expire
                        (make-adaptive-auth-tokens ctx a b "/svc" (+ now 20) (+ now 20) now 10))
                   => [(+ now 20)])
            (check-exception
             (make-adaptive-auth-tokens ctx a b "/svc" 0 0 #xffffffffffffffff 1) IOError?)
            (check-exception
             (make-adaptive-auth-tokens ctx a b "/svc" 0 0 now (expt 2 80)) IOError?)
            (for-each
              (lambda (bad)
                (check-exception (make-adaptive-auth-tokens ctx a b "/svc" bad 0 now 60) ContractViolation?)
                (check-exception (make-adaptive-auth-tokens ctx a b "/svc" 0 bad now 60) ContractViolation?)
                (check-exception (make-adaptive-auth-tokens ctx a b "/svc" 0 0 bad 60) ContractViolation?))
              [-1 1/2 1.0 +inf.0 +nan.0 #x10000000000000000])
            (for-each
              (lambda (bad)
                (check-exception (make-adaptive-auth-tokens ctx a b "/svc" 0 0 now bad) ContractViolation?))
              [0 -1 1/2 1.0 +inf.0 +nan.0])
            (for-each
              (lambda (bad)
                (check-exception
                 (make-adaptive-auth-tokens ctx a b "/svc" 0 0 now 60 seed: bad) ContractViolation?))
              [1 (ctx.grant! INVOKE root a "/" (+ now 100))
                 (ctx.grant! DELEGATE root b "/" (+ now 100))
                 (ctx.grant! DELEGATE root a "/other" (+ now 100))])
            (def too-long (ctx.grant! DELEGATE root a "/" #x10000000000000000))
            (check (map Token-expire
                        (make-adaptive-auth-tokens ctx a b "/svc" 0 0 now 60 seed: too-long))
                   => [(+ now 60)]))))

      (test-case "adaptive context and signing exceptions propagate including raised false"
        (with-auth-context
          (lambda ((ctx : CapabilityContext) a b root now)
            (def parent (ctx.grant! DELEGATE root a "/" (+ now 100)))
            (for-each
              (lambda (failure)
                (for-each
                  (lambda (stage)
                    (def probe (new-instance CapabilityContext::t))
                    (apply class-instance-init! probe
                           (list object: ctx
                                 normalize-did: CapabilityContext-normalize-did
                                 output-anchors:
                                 (lambda (self predicate)
                                   (when (eq? stage 'context)
                                     (raise failure))
                                   (filter predicate [parent]))
                                 sign!:
                                 (lambda ((self : CapabilityContext) (token : Token))
                                   (when (or (eq? stage 'direct)
                                             (and (eq? stage 'delegate) token.chain))
                                     (raise failure))
                                   (self.sign! token))))
                    (check-exception
                     (make-adaptive-auth-tokens (: probe CapabilityContext) a b "/svc" 0 0 now 60)
                     (lambda (e) (eq? e failure))))
                  '(direct delegate context)))
              [#f (IOError "adaptive context failure")]))))

      (test-case "token issuance is fresh with unchanged anchor, parent and lifetime rules"
        (with-auth-context
          (lambda ((ctx  : CapabilityContext)
                   (a    : :string)
                   (b    : :string)
                   (root : :string)
                   (now  : :integer))
            => :void
            (def expiry (+ now 100))
            (def parent (ctx.grant! DELEGATE root a "/" (+ expiry 100)))
            (def original (marshal-token parent))
            (ctx.add-output-anchor! parent)
            (def tokens (make-auth-tokens ctx a b "/svc" expiry (+ now 10) now))
            (def fresh (make-auth-tokens ctx a b "/svc" expiry (+ now 10) now))
            (check (map Token? tokens) => [#t #t])
            (check (map Token-expire tokens) => [expiry expiry])
            (check (Token-chain (car tokens)) => #f)
            (check (marshal-token (Token-chain (cadr tokens))) => original)
            (check (eq? tokens fresh) => #f)
            (check (eq? (car tokens) (car fresh)) => #f)
            (check (eq? (cadr tokens) (cadr fresh)) => #f)
            (let (delegated (make-auth-tokens ctx a b "/svc" expiry 0 now parent))
              (check (length delegated) => 1)
              (check-eq? (Token-chain (car delegated)) parent)
              (check (Token-expire (car delegated)) => expiry))
            (check (marshal-token parent) => original)
            (check (make-auth-tokens ctx a b "/svc" now 0 now) => [])
            (check (make-auth-tokens ctx a b "/svc" expiry (+ expiry 1) now) => [])
            (check (make-auth-tokens ctx a b "/svc" (+ expiry 101) 0 now parent) => [])
            (check-exception (make-auth-tokens ctx a b "/svc" expiry 0 now
                                               (ctx.grant! INVOKE root a "/" expiry))
                             ContractViolation?))))

      (test-case "bounded encoding matches marshal-token in original order at exact boundaries"
        (with-auth-context
          (lambda ((ctx  : CapabilityContext)
                   (a    : :string)
                   (b    : :string)
                   (root : :string)
                   (now  : :integer))
            => :void
            (def expiry (+ now 100))
            (def parent (ctx.grant! DELEGATE root a "/" (+ expiry 100)))
            (def short (ctx.grant! INVOKE a b "/svc" expiry))
            (def long (ctx.grant! INVOKE a b "/svc" (+ expiry 100)))
            (def child (ctx.delegate! parent INVOKE a b "/svc" expiry))
            (def shared (make-string (fx* small-buffer-size 2) (integer->char #x3bb)))
            ;; Exercise shared DAG data, UTF-8 and the generic writer.write path.
            (Token-args-set! long [first: shared second: shared number: 1.25])
            (ctx.sign! long)
            (def tokens [short long child short])
            (def expected (map marshal-token tokens))
            (def size (u8vector-length (encode-frame-payload frame-auth [expected])))
            (def first-size (u8vector-length (car expected)))
            (check (encode-auth-bundle tokens size) => expected)
            (check (encode-auth-bundle tokens (fx+ size 100)) => expected)
            (check-exception (encode-auth-bundle tokens (fx1- size)) IOError?)
            (check-exception (encode-auth-bundle tokens (fx- size 4)) IOError?)
            (check-exception (encode-auth-bundle tokens (fx- size (fx* 4 (length tokens)))) IOError?)
            (check (encode-auth-bundle [short] (fx+ 8 first-size)) => [(car expected)])
            (check-exception (encode-auth-bundle [short] (fx+ 7 first-size)) IOError?)
            (check-exception (encode-auth-bundle [short] (fx+ 4 first-size)) IOError?)
            ;; Completing one token must not hide a missing next-token prefix.
            (check-exception (encode-auth-bundle [short long] (fx+ 8 first-size)) IOError?)
            (check-exception (encode-auth-bundle [short long] (fx+ 11 first-size)) IOError?)
            (check-exception (encode-auth-bundle [long] (fx+ 8 first-size)) IOError?)
            (check (map marshal-token tokens) => expected))))

      (test-case "provide uses anchors; direct untrusted grant does not mask valid alternative"
        (with-auth-context
         (lambda ((ctx : CapabilityContext) a b root now)
           (def expiry (+ now 3600))
           (def parent (ctx.grant! DELEGATE root a "/network" (+ expiry 100)))
           (ctx.add-output-anchor! parent)
           (ctx.add-root! root)
           (let* ((blobs (make-auth-bundle ctx a b proto:/network/connect expiry (+ now 10) now))
                  (candidates (decode-auth-bundle blobs))
                  (selection (select-auth-candidate ctx candidates a b proto:/network/connect
                                                    expiry (+ now 10) now)))
             (check (length blobs) => 2)
             (using (selection :- AuthSelection)
               (check selection.reason => reason-ok)
               (check selection.candidate.index => 1)
               (check (eq? selection.candidate.bytes (cadr blobs)) => #t)
               (check (marshal-token selection.candidate.token.chain) => (marshal-token parent)))
             (ctx.remove-root! root)
             (check (AuthSelection-reason
                     (select-auth-candidate ctx candidates a b proto:/network/connect expiry 0 now))
                    => reason-auth-failed)
             (ctx.add-input-anchor! parent)
             (check (AuthSelection-reason
                     (select-auth-candidate ctx candidates a b proto:/network/connect expiry 0 now))
                    => reason-ok)))))

      (test-case "output anchor rejection preserves the usable direct bundle"
        (with-auth-context
         (lambda ((ctx : CapabilityContext) a b root now)
           (def expiry (+ now 3600))
           (check (length (make-auth-bundle ctx a b proto:/network/connect expiry 0 now)) => 1)
           (using (bad (ctx.grant! DELEGATE root a "/network" expiry) :- Token)
             (set! bad.signature (make-u8vector 64))
             (check-exception (ctx.add-output-anchor! bad) ContractViolation?))
           (let (blobs (make-auth-bundle ctx a b proto:/network/connect expiry 0 now))
             (check (length blobs) => 1)
             (check (Token-chain (unmarshal-token (car blobs))) => #f)
             (ctx.add-root! a)
             (check (AuthSelection-reason
                     (select-auth-candidate ctx (decode-auth-bundle blobs)
                                            a b proto:/network/connect expiry 0 now))
                    => reason-ok)))))

      (test-case "rejected anchor preserves prior and future bundle alternatives and trust"
        (with-auth-context
         (lambda ((ctx : CapabilityContext) a b root now)
           (def expiry (+ now 3600))
           (def first (ctx.grant! DELEGATE root a "/network" expiry))
           (def last (ctx.grant! DELEGATE root a proto:/network/connect expiry))
           (def bad (struct-copy first))
           (Token-signature-set! bad (make-u8vector 64))
           (ctx.add-output-anchor! first)
           (check-exception (ctx.add-output-anchor! bad) ContractViolation?)
           (check (map marshal-token (ctx.output-anchors true)) => [(marshal-token first)])
           (ctx.add-output-anchor! last)
           (let* ((anchors (ctx.output-anchors true))
                  (blobs (make-auth-bundle ctx a b proto:/network/connect
                                          expiry 0 now))
                  (candidates (decode-auth-bundle blobs)))
             (check (length blobs) => 3)
             (check (map AuthCandidate-index candidates) => [0 1 2])
             (check (Token-chain (unmarshal-token (car blobs))) => #f)
             (check (map (lambda (bytes) (marshal-token (Token-chain (unmarshal-token bytes))))
                        (cdr blobs))
                   => (map marshal-token anchors))
             (ctx.add-root! root)
             (using (selection (select-auth-candidate ctx candidates a b proto:/network/connect
                                                     expiry 0 now) :- AuthSelection)
               (check selection.reason => reason-ok)
               (check selection.candidate.index => 1))
             ;; Trust only the narrower anchor, regardless of listing order.
             (ctx.remove-root! root)
             (ctx.add-input-anchor! last)
             (using (selection (select-auth-candidate ctx candidates a b proto:/network/connect
                                                     expiry 0 now) :- AuthSelection)
               (check selection.reason => reason-ok)
               (check (marshal-token selection.candidate.token.chain)
                      => (marshal-token last)))))))

      (test-case "provide signing contracts propagate through network construction"
        (with-auth-context
         (lambda ((ctx : CapabilityContext) a b root now)
           (def expiry (+ now 3600))
           (def parent (ctx.grant! DELEGATE root a "/network" expiry))
           (def failure
             (with-catch values
               (lambda () (raise-bad-argument sign-token! "test signing contract"))))
           (for-each
            (lambda (stage)
              (let (probe (new-instance CapabilityContext::t))
                (apply class-instance-init! probe
                       (list object: ctx
                             normalize-did: CapabilityContext-normalize-did
                             output-anchors: (lambda (self predicate) (filter predicate [parent]))
                             sign!:
                             (lambda ((self : CapabilityContext) (token : Token))
                               (when (or (eq? stage 'direct) token.chain) (raise failure))
                               (self.sign! token))))
                (check-exception
                 (make-auth-bundle (: probe CapabilityContext) a b proto:/network/connect expiry 0 now)
                 (lambda (e) (eq? e failure)))))
            '(direct delegate)))))

      (test-case "delegation failures, clamping, cycles and immutable parent"
        (with-auth-context
         (lambda ((ctx : CapabilityContext) a b root now)
           (def expiry (+ now 100))
           (def parent (ctx.grant! DELEGATE root a "/" (+ expiry 100)))
           (def original (marshal-token parent))
           (def blobs (make-auth-bundle ctx a b "/svc" expiry (+ now 10) now parent))
           (check (length blobs) => 1)
           (check (Token-expire (unmarshal-token (car blobs))) => expiry)
           (check (marshal-token parent) => original)
           (check (make-auth-bundle ctx a b "/svc" (+ expiry 101) 0 now parent) => [])
           (for-each
            (lambda (bad)
              (check-exception (make-auth-bundle ctx a b "/svc" expiry 0 now bad) ContractViolation?))
            [(ctx.grant! INVOKE root a "/" expiry)
             (ctx.grant! DELEGATE root b "/" expiry)
             (ctx.grant! DELEGATE root a "/other" expiry)])
           (check (make-auth-bundle ctx a b "/svc" expiry 0 now
                                   (ctx.grant! DELEGATE root a "/" 0)) => [])
           (using (bad (struct-copy parent) :- Token)
             (set! bad.signature (make-u8vector 64))
             (check-exception (make-auth-bundle ctx a b "/svc" expiry 0 now bad) ContractViolation?)
             (set! bad.issuer "did:key:u!invalid")
             (check-exception (make-auth-bundle ctx a b "/svc" expiry 0 now bad) ContractViolation?)
             (set! bad.issuer root)
             (set! bad.chain bad)
             (check-exception (make-auth-bundle ctx a b "/svc" expiry 0 now bad) ContractViolation?))
           (using (unknown (bytes->ed25519-private-key (make-u8vector 32 9)) :- PrivKey)
             (unwind-protect
               (let* ((did (private-key->did unknown))
                      (parent (ctx.grant! DELEGATE root did "/" expiry)))
                 (for-each
                  (lambda (auth)
                    (check-exception (make-auth-bundle ctx did b "/svc" expiry 0 now auth)
                                     ContractViolation?))
                  [#f parent]))
               (foreign-release! unknown.key))))))

      (test-case "stable ordering, original indices, malformed blobs and signatures"
        (with-auth-context
         (lambda ((ctx : CapabilityContext) a b root now)
           (ctx.add-root! a)
           (def short (ctx.grant! INVOKE a b "/svc" (+ now 100)))
           (def long (ctx.grant! INVOKE a b "/svc" (+ now 200)))
           (def tie (ctx.grant! INVOKE a b "/svc" (+ now 200)))
           (def bad (ctx.grant! INVOKE a b "/svc" (+ now 300)))
           (Token-signature-set! bad (make-u8vector 64))
           (def cyclic (struct-copy short))
           (Token-chain-set! cyclic cyclic)
           (def blobs (map marshal-token [short bad long tie]))
           (def candidates (decode-auth-bundle blobs))
           (check (map AuthCandidate-index candidates) => [1 2 3 0])
           (check (order-auth-tokens [short long tie bad]) => [bad long tie short])
           (using (selection (select-auth-candidate ctx candidates a b "/svc" (+ now 150) 0 now)
                              :- AuthSelection)
             (check selection.reason => reason-ok)
             (check selection.candidate.index => 2)
             (check (eq? selection.candidate.bytes (list-ref blobs 2)) => #t))
           (check (AuthSelection-reason
                   (select-auth-candidate ctx candidates a b "/svc" (+ now 250) 0 now))
                  => reason-lifetime)
           (check (AuthSelection-reason
                   (select-auth-candidate ctx candidates a b "/svc" (+ now 100) (+ now 201) now))
                  => reason-lifetime)
           (check (AuthSelection-reason
                   (select-auth-candidate ctx candidates a b "/svc" (+ now 100) 0 (+ now 400)))
                  => reason-auth-failed)
           ;; A malformed blob aborts decoding even beside valid alternatives.
           (for-each
            (lambda (bytes)
              (check-exception
               (decode-auth-bundle [(marshal-token long) bytes (marshal-token tie)]) true))
            [#u8() #u8(255) (marshal cyclic) (marshal #f)])
           ;; Every proper truncation propagates the underlying decoder error.
           (let (bytes (marshal-token long))
             (let loop ((end 0))
               (when (fx< end (u8vector-length bytes))
                 (check-exception (decode-auth-bundle [(subu8vector bytes 0 end)]) true)
                 (loop (fx1+ end))))))))

      (test-case "identity, exact protocol, invalid ancestors and unexpected context errors"
        (with-auth-context
         (lambda ((ctx : CapabilityContext) a b root now)
           (def expiry (+ now 100))
           (def valid (ctx.grant! INVOKE a b "/svc" expiry))
           (def candidates (decode-auth-bundle [(marshal-token valid)]))
           (def alias (string-append "did:key:z"
                         (base58-encode (u8vector-append DID-KEY-ED25519-code
                                           (private-key->public-bytes (ctx.get-principal a))))))
           (def audience-alias (string-append "did:key:z"
                                  (base58-encode (u8vector-append DID-KEY-ED25519-code
                                                    (private-key->public-bytes (ctx.get-principal b))))))
           (ctx.add-root! alias)
           (check (AuthSelection-reason
                    (select-auth-candidate ctx candidates alias audience-alias "/svc" expiry 0 now))
                  => reason-ok)
           ;; grant! canonicalizes new fields; sign! preserves the signed spelling.
           (def aliased (Token type: INVOKE issuer: alias audience: audience-alias
                               protocol: "/svc" expire: expiry))
           (ctx.sign! aliased)
           (let* ((bytes (marshal-token aliased))
                   (decoded (decode-auth-bundle [bytes])))
              (check (Token-issuer (AuthCandidate-token (car decoded))) => alias)
              (check (Token-audience (AuthCandidate-token (car decoded))) => audience-alias)
              (for-each
                (lambda (identities)
                  (using (selection (select-auth-candidate ctx decoded
                                                         (car identities) (cadr identities)
                                                         "/svc" expiry 0 now) :- AuthSelection)
                    (check selection.reason => reason-ok)
                    (check-eq? selection.candidate.bytes bytes)
                    (check (marshal-token selection.candidate.token) => bytes)))
                [[a b] [alias audience-alias]])
              (check (marshal-token aliased) => bytes))
           (check (marshal-token (AuthCandidate-token (car candidates))) => (marshal-token valid))
           (let (wildcard (ctx.grant! INVOKE a "*" "/svc" expiry))
             (check (AuthSelection-reason
                     (select-auth-candidate ctx (decode-auth-bundle [(marshal-token wildcard)])
                                            a b "/svc" expiry 0 now))
                    => reason-auth-failed))
           ;; Adaptive output filtering compares projections, not signed audiences.
           (def parent (Token type: DELEGATE issuer: root audience: alias
                              protocol: "/" expire: expiry))
           (ctx.sign! parent)
           (def parent-bytes (marshal-token parent))
           (ctx.add-output-anchor! parent)
           (ctx.add-root! root)
           (for-each
             (lambda (identities)
               (def tokens (make-adaptive-auth-tokens ctx (car identities) (cadr identities)
                                                      "/svc" 0 0 now 60))
               (check (length tokens) => 2)
               (check (map Token-issuer tokens) => [a a])
               (check (map Token-audience tokens) => [b b])
               (check (marshal-token (Token-chain (car tokens))) => parent-bytes)
               (check (AuthSelection-reason
                       (select-auth-candidate ctx (decode-auth-bundle (encode-auth-bundle tokens 65536))
                                              a b "/svc" expiry 0 now))
                      => reason-ok))
             [[a b] [alias audience-alias]])
           (check (marshal-token parent) => parent-bytes)
           (for-each
            (lambda (fields)
              (check (AuthSelection-reason
                      (apply select-auth-candidate ctx candidates
                             (append fields [expiry 0 now])))
                     => reason-auth-failed))
            [[root b "/svc"] [a root "/svc"] [a b "/svc/read"]])
           (using (bad (struct-copy valid) :- Token)
             (set! bad.chain (Token type: DELEGATE issuer: "did:key:u!invalid" audience: a
                                    protocol: "/" expire: expiry
                                    nonce: (make-u8vector 16) signature: (make-u8vector 64)))
             ;; Preserve a valid leaf signature so verification reaches the bad DID.
             (set! bad.signature #f)
             (set! bad.signature (digest-sign! (ctx.get-principal a) (marshal-token bad)))
             (check-exception
              (select-auth-candidate ctx (decode-auth-bundle [(marshal-token bad)])
                                     a b "/svc" expiry 0 now) ContractViolation?))
           (check-exception (normalize-did "did:key:u!invalid") ContractViolation?)
           (for-each
            (lambda (failure)
              (check-exception
               (select-auth-candidate (failing-auth-context failure) candidates a b "/svc" expiry 0 now)
               (lambda (e) (eq? e failure))))
            [(Error "test internal error") (ContractViolation "test internal contract")
             (IOError "test storage failure") (Closed "test closed context")])
           (let ((failure (ContractViolation "test signing implementation error"))
                 (broken (new-instance CapabilityContext::t)))
             (apply class-instance-init! broken
                    (list object: failure
                          normalize-did: (lambda (self did) (normalize-did did))
                          output-anchors: (lambda (self filter) [])
                          sign!: (lambda (self token) (raise self))))
             (check-exception (make-auth-bundle (: broken CapabilityContext) a b "/svc" expiry 0 now)
                              (lambda (e) (eq? e failure))))
           (ctx.close)
           (check-exception
            (select-auth-candidate ctx candidates a b "/svc" expiry 0 now) Closed?))))))))
