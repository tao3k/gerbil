;;; -*- Gerbil -*-
;;; © vyzo
;;; did utilities
(import :std/error
        :std/crypto/pkey
        :std/crypto/libcrypto
        :std/encoding/base64
        :std/encoding/multibase)
(export DID-KEY-ED25519
        DID-KEY-ED25519-code
        did-key-prefix
        private-key->did
        public-key->did
        public-key-bytes->did
        did->public-key
        normalize-did)

(def DID-KEY-ED25519 #xed)
(def DID-KEY-ED25519-code #u8(#xed #x01))
(def did-key-prefix "did:key:")

(def (private-key->did (privk : PrivKey))
  => :string
  (let* ((type privk.type)
         (code
          (cond
           ((fx= type EVP_PKEY_ED25519)
            DID-KEY-ED25519-code)
           (else
            (raise-bad-argument private-key->did "unknown key type" type))))
         (bytes (private-key->public-bytes privk)))
    (public-key-bytes->did code bytes)))

(def (public-key->did (pubk : PubKey))
  => :string
  (let* ((type pubk.type)
         (code
          (cond
           ((fx= type EVP_PKEY_ED25519)
            DID-KEY-ED25519-code)
           (else
             (raise-bad-argument public-key->did "unknown key type" type))))
         (bytes (public-key->bytes pubk)))
    (public-key-bytes->did code bytes)))

(def (public-key-bytes->did (code  : :u8vector)
                            (bytes : :u8vector))
  => :string
  (unless (equal? code DID-KEY-ED25519-code)
    (raise-bad-argument public-key-bytes->did "unknown key type" code))
  (unless (= (u8vector-length bytes) 32)
    (raise-bad-argument public-key-bytes->did "expected 32-byte Ed25519 public key" bytes))
  (string-append
   did-key-prefix
   (multibase-encode multibase-base64-url
                     (u8vector-append code bytes))))

(def (did->public-key (did : :string))
  => PubKey
  (let* ((normalized (normalize-did did))
         (decoded (base64-substring->u8vector normalized 9 55
                                             no-padding: #t urlsafe: #t)))
    (bytes->ed25519-public-key (subu8vector decoded 2 34))))

;; Canonical input needs only a lexical scan. The codec ed 01 fixes the first
;; two sextets to 7Q and the upper four bits of the third to 0001 (E through H).
;; Base58 conversion is bounded before allocating and never imports a native key.
(def (normalize-did (did : :string))
  => :string
  (cond
   ((and (fx= (string-length did) 55)
         (string-prefix? "did:key:u7Q" did)
         (char<=? #\E (string-ref did 11) #\H)
         (base64-decoded-length did 9 55 padding: #f urlsafe: #t))
    did)
   ((and (fx= (string-length did) 56)
         (string-prefix? "did:key:z" did)
         (multibase-valid? did 8 56))
    ;; Every 34-byte ed 01 payload has exactly 47 Base58 digits.
    (let (decoded (multibase-decode (substring did 8 56)))
      (unless (and (fx= (u8vector-length decoded) 34)
                   (fx= (u8vector-ref decoded 0) #xed)
                   (fx= (u8vector-ref decoded 1) #x01))
        (raise-bad-argument normalize-did "expected Ed25519 did:key payload" did))
      (string-append did-key-prefix (multibase-encode multibase-base64-url decoded))))
   (else
    (raise-bad-argument normalize-did "invalid Ed25519 did:key encoding" did))))
