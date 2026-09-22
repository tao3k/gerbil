;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Memory keystore — public interface regressions
(import :std/test
        :std/error
        :std/io/interface
        :std/crypto/pkey
        :std/crypto/libcrypto
        :std/encoding/multibase
        :std/ensemble/ucan/did
        :std/ensemble/keystore
        ./crypto)
(export memory-test)

(def memory-test
  (test-suite "memory keystore"
    (test-case "public operations, identity, ownership and closure"
      (let ((pass (make-u8vector 12 42)) (seed (make-u8vector 32 7))
            (store #f) (returned #f) (owned []))
        (def (own key) (set! owned (cons key owned)) key)
        ;; Check the imported seed without leaving the exported private bytes alive.
        (def (check-seed key)
          (let (bytes (private-key->private-bytes key))
            (unwind-protect (check bytes => seed) (wipe-keystore-bytes! bytes))))
        (unwind-protect
          (begin
            (set! store (make-memory-keystore pass))
            (check (Keystore-list-keys store) => [])
            (check pass => (make-u8vector 12 42))
            (let* ((priv (own (bytes->ed25519-private-key seed)))
                   (did (private-key->did priv))
                   (missing (own (generate-ed25519-key))))
              (check-exception (Keystore-get-private-key store (private-key->did missing))
                               ContractViolation?)
              (check (Keystore-put-private-key! store priv) => did)
              (check (Keystore-put-private-key! store priv) => did)
              (check (Keystore-list-keys store) => [did])
              (let ((a (own (Keystore-get-private-key store did)))
                    (b (own (Keystore-get-private-key store did))))
                (check (eq? a b) => #f)
                (check (eq? (PrivKey-key a) (PrivKey-key b)) => #f)
                (check (eq? a priv) => #f)
                (set! returned a)
                (check-seed a)
                (check-seed b))
              (for-each
                (lambda (encoding)
                  (let* ((alias (string-append "did:key:"
                                  (multibase-encode encoding
                                    (u8vector-append DID-KEY-ED25519-code
                                      (private-key->public-bytes priv)))))
                         (key (own (Keystore-get-private-key store alias))))
                    (check (private-key->did key) => did)
                    (check-seed key)))
                 [multibase-base58-btc multibase-base64-url])
              (for-each
                (lambda (encoding)
                  (let (alias (string-append "did:key:"
                                (multibase-encode encoding
                                  (u8vector-append DID-KEY-ED25519-code
                                    (private-key->public-bytes priv)))))
                    (check-exception (Keystore-get-private-key store alias) ContractViolation?)))
                [multibase-base64 multibase-base64-pad multibase-base64-url-pad])
              (for-each
                (lambda (bad)
                  (check-exception (Keystore-get-private-key store bad) ContractViolation?))
                ["" "did:web:example.org" "did:key:z" "did:key:uAA" "did:key:z0"])
              (check-exception (Keystore-put-private-key! store #f) ContractViolation?)
              ;; X25519 is a valid native private key, but not a supported identity.
              (let (other (own (bytes->private-key EVP_PKEY_X25519 seed)))
                (check-exception (Keystore-put-private-key! store other) ContractViolation?))
              (let* ((generated (Keystore-generate-key! store))
                     (key (own (Keystore-get-private-key store generated))))
                (check (private-key->did key) => generated)
                (check (Keystore-put-private-key! store key) => generated)
                (check (Keystore-list-keys store) => (list-sort string<? [did generated])))
              (check-seed priv)
              (Closer-close store)
              (Closer-close store)
              ;; Closing a store must not invalidate caller-owned native keys.
              (check-seed priv)
              (check-seed returned)
              (check-exception (Keystore-list-keys store) ContractViolation?)
              (check-exception (Keystore-get-private-key store did) ContractViolation?)
              (check-exception (Keystore-put-private-key! store priv) ContractViolation?)
              (check-exception (Keystore-generate-key! store) ContractViolation?)
              (check pass => (make-u8vector 12 42))))
          (begin
            (when store (Closer-close store))
            (for-each (lambda (key) (foreign-release! (PrivKey-key key))) owned)
            (wipe-keystore-bytes! seed)
            (wipe-keystore-bytes! pass)))))
    (test-case "invalid borrowed passphrase"
      (for-each
        (lambda (bad) (check-exception (make-memory-keystore bad) ContractViolation?))
        [#f "not bytes" '(1 2 3)]))))
