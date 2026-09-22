;;; -*- Gerbil -*-
;;; © vyzo
;;; did test
(import :std/test
        :std/error
        :std/crypto/pkey
        :std/encoding/base58
        :std/encoding/multibase
        :std/encoding/hex
        ./did)
(export did-test)

(def did-test
  (test-suite "DID utilities"
    (test-case "test vector"
      (def test-pubkey-hex
        "b4c1edaa41b7147b312782e3c090334237194f107f9c2d15d654261da24b9e2c")
      (def test-pubkey-did
        "did:key:u7QG0we2qQbcUezEnguPAkDNCNxlPEH-cLRXWVCYdokueLA")

      (def test-pubkey-bytes
        (hex-decode test-pubkey-hex))
      (def test-pubkey
        (bytes->ed25519-public-key test-pubkey-bytes))

      (check (public-key->did test-pubkey)
             => test-pubkey-did)

      (check (public-key->bytes
              (did->public-key test-pubkey-did))
             => test-pubkey-bytes))
    (test-case "private key"
      (def test-privkey (generate-ed25519-key))
      (def test-pubkey-bytes
        (private-key->public-bytes
         test-privkey))

      (check (public-key->bytes
              (did->public-key
               (private-key->did test-privkey)))
              => test-pubkey-bytes))
    (test-case "base58btc"
      (def bytes
        (hex-decode "b4c1edaa41b7147b312782e3c090334237194f107f9c2d15d654261da24b9e2c"))
      (def did
        (string-append "did:key:z"
                       (base58-encode (u8vector-append DID-KEY-ED25519-code bytes))))
      (check (public-key->bytes (did->public-key did)) => bytes)
      (check (public-key->did (did->public-key did))
             => "did:key:u7QG0we2qQbcUezEnguPAkDNCNxlPEH-cLRXWVCYdokueLA")
      ;; Published did:key Ed25519 example.
      (def example "z6MkhaXgBZDvotDkL5257faiztiGiC2QtKLGpbnnEGta2doK")
      (def pubkey (did->public-key (string-append "did:key:" example)))
      (check (u8vector-length (public-key->bytes pubkey)) => 32)
      (check (string-append "z" (base58-encode
                                (u8vector-append DID-KEY-ED25519-code
                                                 (public-key->bytes pubkey))))
             => example))
    (test-case "invalid DID encoding"
      (for-each
       (lambda (did)
         (check-exception (did->public-key did) ContractViolation?))
       (list "" "did:web:example.com" "DID:key:uAA"
             "did:key:" "did:key:u" "did:key:z" "did:key:uAA"
             "did:key:?7QG0we2qQbcUezEnguPAkDNCNxlPEH-cLRXWVCYdokueLA")))
     (test-case "reject non-DID multibase encodings"
      (def bytes
        (hex-decode "b4c1edaa41b7147b312782e3c090334237194f107f9c2d15d654261da24b9e2c"))
      (for-each
       (lambda (encoding)
         (def did
           (string-append "did:key:"
                          (multibase-encode encoding (u8vector-append DID-KEY-ED25519-code bytes))))
          (check-exception (did->public-key did) ContractViolation?)
          (check-exception (normalize-did did) ContractViolation?))
        (list multibase-base64 multibase-base64-pad multibase-base64-url-pad)))
     (test-case "strict DID normalization"
       (def valid "did:key:u7QG0we2qQbcUezEnguPAkDNCNxlPEH-cLRXWVCYdokueLA")
      (def bytes
        (hex-decode "b4c1edaa41b7147b312782e3c090334237194f107f9c2d15d654261da24b9e2c"))
       (check (eq? (normalize-did valid) valid) => #t)
       (check (normalize-did
               (string-append "did:key:z"
                              (base58-encode (u8vector-append DID-KEY-ED25519-code bytes))))
              => valid)
       (for-each
        (lambda (did)
          (check-exception (did->public-key did) ContractViolation?)
          (check-exception (normalize-did did) ContractViolation?))
        (list "did:key:u7QG0we2qQbcUezEnguPAkDNCNxlPEH-cLRXWVCYdokueLB"
              "did:key:z0" "did:key:zO" "did:key:zI" "did:key:zl"
              "did:key:uA" "did:key:?abc"
             (string-append valid "!")
             (string-append valid "==")
             (string-append valid "==ignored")
             (string-append valid "\n")
              (string-append "did:key:u!" (substring valid 9 (string-length valid))))))
     (test-case "codec sextets and Base58 bounds"
       ;; Exercise every possible first key byte and the full-width extrema.
       (for-each
        (lambda (byte)
          (def bytes (make-u8vector 32 byte))
          (def canonical (public-key-bytes->did DID-KEY-ED25519-code bytes))
          (check (eq? (normalize-did canonical) canonical) => #t)
          (check (normalize-did
                  (string-append "did:key:z"
                                 (base58-encode (u8vector-append DID-KEY-ED25519-code bytes))))
                 => canonical))
        (iota 256)))
    (test-case "invalid codec and key length"
      (for-each
       (lambda (payload)
         (check-exception
          (did->public-key (string-append "did:key:" (multibase-encode multibase-base64-url payload)))
          ContractViolation?)
         (check-exception
          (did->public-key (string-append "did:key:z" (base58-encode payload)))
          ContractViolation?))
       (list #u8() #u8(#xed) #u8(#xed #x01)
             (u8vector-append #u8(#xec #x01) (make-u8vector 32 0))
             (u8vector-append #u8(#xed #x81 #x00) (make-u8vector 32 0))
             (u8vector-append DID-KEY-ED25519-code (make-u8vector 31 0))
             (u8vector-append DID-KEY-ED25519-code (make-u8vector 33 0))))
      (check-exception (public-key-bytes->did #u8(#xec #x01) (make-u8vector 32 0))
                       ContractViolation?)
      (for-each
       (lambda (len)
         (check-exception (public-key-bytes->did DID-KEY-ED25519-code (make-u8vector len 0))
                          ContractViolation?))
       '(0 31 33)))
    (test-case "unsupported key type reports the right procedure"
      (def privkey (generate-ed25519-key))
      (def pubkey (bytes->ed25519-public-key (private-key->public-bytes privkey)))
      (PubKey-type-set! pubkey -1)
      (PrivKey-type-set! privkey -1)
      (check-exception (public-key->did pubkey)
                       (lambda (e)
                         (and (ContractViolation? e)
                              (eq? (car (Error-irritants e)) 'public-key->did))))
      (check-exception (private-key->did privkey)
                       (lambda (e)
                         (and (ContractViolation? e)
                              (eq? (car (Error-irritants e)) 'private-key->did)))))))
