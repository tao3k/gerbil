;;; -*- Gerbil -*-
;;; © vyzo
;;; ensemble tls contexts
(import :std/error
        :std/net/ssl/libssl
        :std/crypto/libcrypto
        :std/crypto/pkey
        :std/encoding/base32
        :std/ffi
        ../ucan/did)
(export #t)

;; A remote certificate cannot establish an ensemble peer identity. Keep this
;; separate from caller contracts and cryptographic implementation failures.
(deferror-class (TLSPeerIdentityError IOError) ())

(defraise/context (raise-tls-peer-identity-error where message irritants ...)
  (TLSPeerIdentityError message irritants: [irritants ...]))

;; creates a new network TLS context with a self signed certificate
;; and the key's DID as the hostname in the internal domain
(def (make-tls-context (pkey : PrivKey))
  => :foreign
  (let (hostname (did->hostname (private-key->did pkey)))
    (check-pointer make-tls-context
                   (make-self-signed-tls-context pkey.key hostname))))

;; Encode the complete Ed25519 multicodec/key payload as lowercase, unpadded
;; Base32. Its 55-character label plus .internal fits the 64-byte X509 CN limit.
;; Do not include a multibase prefix. Decode first so equivalent DID spellings
;; produce the same DNS-safe name, and release the temporary public key.
(def (did->hostname (did : :string))
  => :string
  (let (pubk (did->public-key did))
    (unwind-protect!
      (string-append
       (base32-encode (u8vector-append DID-KEY-ED25519-code (public-key->bytes pubk))
                      padding: #f lowercase: #t)
       ".internal")
      (foreign-release! (PubKey-key pubk)))))

;; Extract the claimed common name and canonical DID derived from the certificate
;; key, not from its name. The caller must compare the DID with the expected peer:
;; accepting a self-signed certificate does not itself establish that identity.
;; X509_get_pubkey returns an owned reference, released after producing the strings.
(def (tls-certificate->hostname+did (cert :~ X509? :- :foreign))
  => :values
  (let (key (check-pointer tls-certificate->hostname+did (X509_get_pubkey cert)))
    (unwind-protect!
      (let ((hostname (X509_get_common_name cert))
            (pubk (PubKey (EVP_PKEY_type key) key)))
        (unless hostname
          (raise-tls-peer-identity-error tls-certificate->hostname+did "Certificate has no common name"))
        (unless (fx= (PubKey-type pubk) EVP_PKEY_ED25519)
          (raise-tls-peer-identity-error tls-certificate->hostname+did
                                         "Unsupported certificate key type" (PubKey-type pubk)))
        (values hostname (public-key->did pubk)))
      (foreign-release! key))))
