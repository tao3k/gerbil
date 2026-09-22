;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Capability-context token construction extensions
(import :std/build-config)
(cond-expand
 (config-have-sqlite
  (import :std/test
          :std/error
          :std/encoding/multibase
          :std/time/time
          ../keystore/interface
          ../keystore/memory
          ./interface
          ./context
          ./cap
          ./util
          ./ext)
  (export ext-test)

  (def (extension-did-alias (did : :string)) => :string
    (string-append "did:key:"
                   (multibase-encode multibase-base58-btc
                                     (multibase-decode (substring did 8 (string-length did))))))

  ;; Use the real context so constructed tokens must pass its signing checks.
  (def (with-extension-context (proc : :procedure)) => :void
    (using (store (make-memory-keystore #u8(1 2 3)) :- Keystore)
      (unwind-protect
        (using (ctx (open-capability-context ":memory:" store) :- CapabilityContext)
          (unwind-protect
            (proc ctx (store.generate-key!) (store.generate-key!)
                  (+ (current-time-seconds) 3600))
            (ctx.close)))
        (store.close))))

  (def ext-test
    (test-suite "UCAN extensions"
      (test-case "grant, delegation and invocation without a group"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (using (parent (ctx.grant! DELEGATE a b "/" expiry) :- Token)
             (check parent.type => DELEGATE)
             (check parent.chain => #f)
             (check parent.group => #f)
             (check parent.args => [])
             (check (verify-token parent ctx) => !VerificationOK)
             (using ((delegated (ctx.delegate! parent DELEGATE b a "/svc" (+ expiry 10)) :- Token)
                     (invoked (ctx.invoke! parent b a "/svc/read") :- Token)
                     (expired (ctx.invoke! parent b a "/svc" 0) :- Token))
               (check delegated.expire => expiry)
               (check (eq? delegated.chain parent) => #t)
               (check (verify-token delegated ctx) => !VerificationOK)
               (check invoked.type => INVOKE)
               (check invoked.expire => expiry)
               (check invoked.group => #f)
               (check (verify-token invoked ctx) => !VerificationOK)
               (check expired.expire => 0)
               (check (verify-token-signature expired ctx) => !VerificationOK)
               (check (verify-token expired ctx) => !TokenExpiredVerificationError))))))

      (test-case "fresh grants canonicalize aliases without rewriting borrowed chains"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (let ((az (extension-did-alias a)) (bz (extension-did-alias b)))
             (using ((grant (ctx.grant! DELEGATE az bz "/" expiry) :- Token)
                     (parent (Token type: DELEGATE issuer: az audience: bz
                                    protocol: "/" expire: expiry) :- Token))
               (check grant.issuer => a)
               (check grant.audience => b)
               (check (verify-token grant ctx) => !VerificationOK)
               ;; Low-level signing preserves aliases already chosen by the caller.
               (ctx.sign! parent)
               (check parent.issuer => az)
               (check parent.audience => bz)
               (let (before (marshal-token parent))
                 (for-each
                  (lambda (issuer)
                    (using (child (ctx.delegate! parent INVOKE issuer az "/svc") :- Token)
                      (check child.issuer => b)
                      (check child.audience => a)
                      (check (eq? child.chain parent) => #t)
                      (let (child-before (marshal-token child))
                        (check (verify-token child ctx) => !VerificationOK)
                        (check (marshal-token child) => child-before))))
                  [b bz])
                 (using (child (ctx.invoke! grant bz az "/svc") :- Token)
                   (check child.issuer => b)
                   (check child.audience => a)
                   (check (verify-token child ctx) => !VerificationOK))
                 (check-exception (ctx.invoke! parent az b "/svc") ContractViolation?)
                 (check (marshal-token parent) => before)))))))

      (test-case "provide selects mixed-encoding and wildcard anchors, not distinct keys"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (let ((az (extension-did-alias a)) (bz (extension-did-alias b)))
             (using ((alias (Token type: DELEGATE issuer: az audience: bz
                                   protocol: "/" expire: expiry) :- Token)
                     (canonical (ctx.grant! DELEGATE a b "/" expiry) :- Token)
                     (wildcard (ctx.grant! DELEGATE az "*" "/" expiry) :- Token)
                     (distinct (ctx.grant! DELEGATE az az "/" expiry) :- Token))
               (ctx.sign! alias)
               (check wildcard.issuer => a)
               (check wildcard.audience => "*")
               (for-each (lambda (anchor) (ctx.add-output-anchor! anchor))
                         [alias canonical wildcard distinct])
               (let ((before (map marshal-token [alias canonical wildcard distinct]))
                     (stored-before (map marshal-token (ctx.output-anchors true))))
                 (for-each
                  (lambda (issuer)
                    (let (tokens (ctx.provide-invoke! issuer az "/svc" expiry))
                      (check (length tokens) => 4)
                      (check (map Token-issuer tokens) => [b b b b])
                      (check (map Token-audience tokens) => [a a a a])
                      (check (Token-chain (car tokens)) => #f)
                      (check (map (lambda (t) (marshal-token (Token-chain t))) (cdr tokens))
                             => (map marshal-token
                                     (ctx.output-anchors
                                      (lambda ((t : Token))
                                        (or (equal? t.audience "*")
                                            (equal? (ctx.normalize-did t.audience) b))))))
                      (for-each
                       (lambda (token)
                         (let (snapshot (marshal-token token))
                           (check (verify-token token ctx) => !VerificationOK)
                           (check (marshal-token token) => snapshot)))
                       tokens)))
                  [b bz])
                 (check (map marshal-token [alias canonical wildcard distinct]) => before)
                 (check (map marshal-token (ctx.output-anchors true)) => stored-before)))))))

      (test-case "delegation rejects invalid parent permissions"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (let ((parent (ctx.grant! DELEGATE a b "/svc" expiry))
                 (invocation (ctx.grant! INVOKE a b "/svc" expiry)))
             (check-exception (ctx.delegate! invocation DELEGATE b a "/svc") ContractViolation?)
             (check-exception (ctx.invoke! parent a b "/svc") ContractViolation?)
             (check-exception (ctx.invoke! parent b a "/svcx") ContractViolation?)
             (check-exception (ctx.invoke! parent b a "/svc" expiry "/team") ContractViolation?)))))

      (test-case "broadcast inherits or narrows a present group"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (let ((parent (ctx.grant! DELEGATE a b "/" expiry "/team"))
                 (ungrouped (ctx.grant! DELEGATE a b "/" expiry)))
             (using ((broadcast (ctx.broadcast! parent b "*" "/svc") :- Token)
                     (narrow (ctx.broadcast! parent b "*" "/svc" (- expiry 1) "/team/red") :- Token))
               (check broadcast.type => BROADCAST)
               (check broadcast.group => "/team")
               (check broadcast.expire => expiry)
               (check (verify-token broadcast ctx) => !VerificationOK)
               (check narrow.group => "/team/red")
               (check narrow.expire => (- expiry 1))
               (check (verify-token narrow ctx) => !VerificationOK))
             (check-exception (ctx.broadcast! ungrouped b "*" "/svc" expiry "/team") ContractViolation?)
             (check-exception (ctx.broadcast! parent b "*" "/svc" expiry "/teams") ContractViolation?)))))

      (test-case "output anchor rejection retains prior and future provide alternatives"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (check (length (ctx.provide-invoke! b a "/svc" expiry)) => 1)
           (let ((first (ctx.grant! DELEGATE a b "/" expiry))
                 (last (ctx.grant! DELEGATE a b "/svc" expiry)))
             (ctx.add-output-anchor! first)
             (using (bad (ctx.grant! DELEGATE a b "/" expiry) :- Token)
               (set! bad.signature (make-u8vector 64))
               (check-exception (ctx.add-output-anchor! bad) ContractViolation?))
             (check (map marshal-token (ctx.output-anchors true)) => [(marshal-token first)])
             (ctx.add-output-anchor! last)
             (let* ((expected (ctx.output-anchors true))
                    (tokens (ctx.provide-invoke! b a "/svc" expiry)))
               (check (length tokens) => 3)
               (check (Token-chain (car tokens)) => #f)
               (check (map (lambda (t) (marshal-token (Token-chain t))) (cdr tokens))
                      => (map marshal-token expected))
               (for-each (lambda (t) (check (verify-token t ctx) => !VerificationOK)) tokens))))))

      (test-case "provide propagates direct, delegated signing and context exceptions"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (let (parent (ctx.grant! DELEGATE a b "/" expiry))
             (for-each
              (lambda (failure)
                (for-each
                 (lambda (stage)
                   (let (probe (new-instance CapabilityContext::t))
                     (apply class-instance-init! probe
                            (list object: ctx
                                  normalize-did:
                                  (lambda ((self : CapabilityContext) (did : :string))
                                    (self.normalize-did did))
                                  output-anchors:
                                  (lambda (self predicate)
                                    (when (eq? stage 'anchors) (raise failure))
                                    (filter predicate [parent]))
                                  sign!:
                                  (lambda ((self : CapabilityContext) (token : Token))
                                    (when (or (eq? stage 'direct)
                                              (and (eq? stage 'delegate) token.chain))
                                      (raise failure))
                                    (self.sign! token))))
                     (using (probe (: probe CapabilityContext) :- CapabilityContext)
                       (check-exception (probe.provide-invoke! b a "/svc" expiry)
                                        (lambda (e) (eq? e failure))))))
                 '(anchors direct delegate)))
              [(Error "test unexpected error")
               (ContractViolation "test context contract")
               (with-catch values
                 (lambda () (raise-bad-argument sign-token! "test signing contract")))
               (IOError "test crypto/storage failure")])))))

      (test-case "provide selects current output anchors and forwards arguments"
        (with-extension-context
         (lambda ((ctx : CapabilityContext) a b expiry)
           (let* ((parent (ctx.grant! DELEGATE a b "/svc" expiry))
                  (grouped (ctx.grant! DELEGATE a b "/svc" expiry "/team"))
                  (anchors
                   [parent grouped
                    (ctx.grant! INVOKE a b "/svc" expiry)
                    (ctx.grant! DELEGATE a a "/svc" expiry)
                    (ctx.grant! DELEGATE a b "/other" expiry)
                    (ctx.grant! DELEGATE a b "/svc" (- expiry 1))]))
             (check-exception
              (ctx.add-output-anchor! (ctx.grant! DELEGATE a b "/svc" 0))
              ContractViolation?)
             (for-each (lambda (anchor) (ctx.add-output-anchor! anchor)) anchors)
             (let ((invocations (ctx.provide-invoke! b a "/svc/read" expiry))
                   (delegations (ctx.provide-delegate! b a "/svc/read" expiry))
                   (broadcasts (ctx.provide-broadcast! b "/svc/read" expiry "/team")))
               (for-each
                (lambda (tokens)
                  (check (length tokens) => 2)
                  (check (Token-chain (car tokens)) => #f)
                  (for-each (lambda (token) (check (verify-token token ctx) => !VerificationOK)) tokens))
                [invocations delegations broadcasts])
               (check (map Token-type invocations) => [INVOKE INVOKE])
               (check (map Token-type delegations) => [DELEGATE DELEGATE])
               (check (map Token-type broadcasts) => [BROADCAST BROADCAST])
               (check (map Token-expire invocations) => [expiry expiry])
               (check (map Token-group invocations) => [#f #f])
               (check (map Token-group broadcasts) => '("/team" "/team"))
               (check (map Token-audience broadcasts) => '("*" "*"))
               (check (marshal-token (Token-chain (cadr invocations))) => (marshal-token parent))
               (check (marshal-token (Token-chain (cadr broadcasts))) => (marshal-token grouped)))
             (check (length (ctx.provide! INVOKE b a "/unmatched" expiry)) => 1)))))))))
