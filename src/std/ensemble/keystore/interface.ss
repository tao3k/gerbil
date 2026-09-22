;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Private key storage interface
(import :std/io/interface
        :std/crypto/pkey)
(export #t)

;; Encrypted Ed25519 key storage indexed by canonical public-key DIDs.
;; Inherited close is idempotent, clears retained secrets on a best-effort
;; basis, and releases backend resources. Other operations reject closed stores.
(interface (Keystore Closer)
  ;; Normalize did and return a fresh, caller-owned private key. Invalid or
  ;; absent DIDs raise a contract violation; closing the store does not
  ;; invalidate keys already returned to the caller.
  (get-private-key (did : :string)) => PrivKey

  ;; Store a copy of priv and return its canonical DID without retaining or
  ;; modifying the caller's key. Duplicate insertion is idempotent. Persistent
  ;; stores commit new entries durably before returning.
  (put-private-key! (priv : PrivKey)) => :string

  ;; Generate and store a fresh Ed25519 key, returning its canonical DID only
  ;; after insertion succeeds. The temporary native key is released afterward.
  (generate-key!) => :string

  ;; Return the canonical DIDs in sorted order from the authenticated current
  ;; snapshot; an empty store returns an empty list.
  (list-keys) => :list)
