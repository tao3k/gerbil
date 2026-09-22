;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Authenticated, fixed-profile keystore snapshots
(import :std/error
        :std/crypto/libcrypto
        :std/crypto/kdf
        :std/crypto/cipher
        :std/crypto/hmac
        :std/crypto/random
        (only-in :std/vector/u8vector
                 &u8vector-uint-ref/be
                 &u8vector-uint-set!/be))
(export derive-keystore-key
        encrypt-keystore
        decrypt-keystore
        keystore-snapshot-salt
        keystore-max-file-size
        wipe-keystore-bytes!)

;; Wire format (all integers unsigned big-endian):
;; GKS1 | version:u8=1 | profile:u8=1 | salt:32 | IV:16 | length:u32
;; ciphertext:length | HMAC-SHA256(header || ciphertext):32.
;; Profile 1: scrypt N=131072,r=8,p=1,64 bytes; AES-256-CTR with
;; key[0:32], HMAC with key[32:64]. Plaintext: count:u32 | seed:32 ...
;; Inputs are borrowed and must not be mutated concurrently with an operation.
;; Cleansing is best effort: moving GC, swap and crash dumps can retain copies.
(def keystore-max-file-size (fx+ 94 (fx* 4096 32)))
(def keystore-format-prefix '#u8(71 75 83 49 1 1))

;; Preserve the call-site context and diagnostics without retaining secret buffers.
;; Irritants should describe public metadata, lengths, or native status codes.
(defrule (raise-keystore-crypto-error where message irritants ...)
  (raise-contract-violation where message irritants ...))

;; Keep the shared crypto layer's error explanation but not its argument
;; irritants, which can retain keys or plaintext passed to the operation.
(defrule (with-keystore-crypto-error where message expr)
  (with-catch
    (lambda (e)
      (raise-keystore-crypto-error where message
        reason: (if (Error? e) (Error-message e) #f)))
    (lambda () expr)))

;; Overwrite the supplied buffer with OpenSSL's explicit cleansing primitive.
;; Call only on buffers whose contents may be destroyed; GC copies, swap, and
;; native copies are outside this best-effort guarantee.
(def (wipe-keystore-bytes! (bytes : :u8vector)) => :void
  (OPENSSL_cleanse bytes))

;; Derive 64 bytes from borrowed passphrase bytes and a 32-byte salt using the
;; shared scrypt wrapper and fixed profile. The caller owns the returned key;
;; the KDF handles native cleanup and cleansing partial output on failure.
(def (derive-keystore-key (pass : :u8vector)
                          (salt : :u8vector))
  => :u8vector
  (unless (<= (u8vector-length pass) #x7fffffff)
    (raise-keystore-crypto-error derive-keystore-key "passphrase exceeds scrypt input limit"
      length: (u8vector-length pass) limit: #x7fffffff))
  (unless (fx= (u8vector-length salt) 32)
    (raise-keystore-crypto-error derive-keystore-key "invalid scrypt salt length"
      length: (u8vector-length salt) expected: 32))
  (with-catch
    (lambda (e)
      (raise-keystore-crypto-error derive-keystore-key "scrypt key derivation failed"
        reason: (if (Error? e) (Error-message e) #f)
        N: 131072 r: 8 p: 1 maxmem: 268435456))
    (lambda () (scrypt pass salt 64 131072 8 1 maxmem: 268435456))))

;; Validate supported framing, exact total length, and seed-count size bounds,
;; returning the ciphertext length. This does not authenticate the snapshot.
;; Check bounds before any allocation based on an untrusted header field.
(def (keystore-snapshot-length (snapshot : :u8vector)) => :fixnum
  (unless (fx<= 94 (u8vector-length snapshot) keystore-max-file-size)
    (raise-keystore-crypto-error keystore-snapshot-length "invalid keystore snapshot size"
      length: (u8vector-length snapshot) minimum: 94 maximum: keystore-max-file-size))
  (let loop ((i 0))
    (when (fx< i 6)
      (unless (fx= (u8vector-ref snapshot i) (u8vector-ref keystore-format-prefix i))
        (raise-keystore-crypto-error keystore-snapshot-length "unsupported keystore header"
          offset: i byte: (u8vector-ref snapshot i) expected: (u8vector-ref keystore-format-prefix i)))
      (loop (fx1+ i))))
  ;; A decoded uint32 can be a bignum until its range has been validated.
  (let (n (&u8vector-uint-ref/be snapshot 54 4))
    (unless (and (<= 4 n (fx+ 4 (fx* 4096 32)))
                 (fxzero? (fxmodulo (fx- n 4) 32))
                 (fx= (u8vector-length snapshot) (fx+ n 90)))
      (raise-keystore-crypto-error keystore-snapshot-length "invalid ciphertext length or snapshot framing"
        ciphertext-length: n snapshot-length: (u8vector-length snapshot) seed-size: 32))
    n))

;; Return a fresh salt copy after structural validation. The salt is not yet
;; authenticated: callers must derive a key and verify the snapshot before use.
(def (keystore-snapshot-salt (snapshot : :u8vector)) => :u8vector
  (keystore-snapshot-length snapshot)
  (subu8vector snapshot 6 38))

;; Transform input[start:end] into output at out-start using AES-256-CTR.
;; CTR encrypts counter blocks to produce a keystream and XORs it with the input.
;; XOR with the same keystream reverses the operation, so encrypt-init!/update!/
;; final! serve both encryption and decryption with the same key and initial IV.
;; Each newly encrypted snapshot needs a fresh IV, and its HMAC must be verified
;; before decryption. This symmetry does not apply to modes such as CBC or ECB.
;; The shared cipher primitives check
;; key/IV sizes and slice indexes; callers provide output space for finalization.
;; Finalization releases the context on success, and cleanup handles failures.
;; Callers cleanse any plaintext output.
(def (keystore-ctr! (key : :u8vector)
                    (iv : :u8vector)
                    (input : :u8vector)
                    (start : :fixnum)
                    (end : :fixnum)
                    (output : :u8vector)
                    (out-start : :fixnum))
  => :void
  (let (cipher (with-keystore-crypto-error keystore-ctr! "could not allocate AES-CTR cipher"
                (Cipher::aes-256-ctr)))
    (unwind-protect!
      (begin
        (with-keystore-crypto-error keystore-ctr! "AES-CTR initialization failed"
          (encrypt-init! cipher key iv))
        (with-keystore-crypto-error keystore-ctr! "AES-CTR update failed"
          (encrypt-update! cipher output out-start input start end))
        (with-keystore-crypto-error keystore-ctr! "AES-CTR finalization failed"
          (encrypt-final! cipher output (fx+ out-start (fx- end start))))
        (void))
      (let (ctx (Cipher-ctx cipher))
        (when ctx
          (set! (Cipher-ctx cipher) #f)
          (foreign-release! ctx))))))

;; Return a fresh authenticated snapshot of at most 4096 borrowed 32-byte seeds.
;; Use separate halves of the 64-byte derived key for CTR and HMAC, and a fresh
;; random IV. Authenticate the header as well as ciphertext. Temporary plaintext
;; and split keys are cleansed; caller-owned key, salt, and seeds are unchanged.
(def (encrypt-keystore (key : :u8vector)
                       (salt : :u8vector)
                       (seeds : :list))
  => :u8vector
  (unless (fx= (u8vector-length key) 64)
    (raise-keystore-crypto-error encrypt-keystore "invalid derived key length"
      length: (u8vector-length key) expected: 64))
  (unless (fx= (u8vector-length salt) 32)
    (raise-keystore-crypto-error encrypt-keystore "invalid store salt length"
      length: (u8vector-length salt) expected: 32))
  ;; The :list contract rejects improper and cyclic lists.
  (let (count (length seeds))
    (when (fx> count 4096)
      (raise-keystore-crypto-error encrypt-keystore "seed list exceeds keystore capacity"
        count: count limit: 4096))
    (let (index 0)
      (for-each
       (lambda ((seed : :u8vector))
         (unless (fx= (u8vector-length seed) 32)
           (raise-keystore-crypto-error encrypt-keystore "invalid Ed25519 seed length"
             index: index length: (u8vector-length seed) expected: 32))
         (set! index (fx1+ index)))
       seeds))
    (let ((plain #f) (enc-key #f) (mac-key #f) (iv #f) (tag #f))
      (unwind-protect!
        (let* ((n (fx+ 4 (fx* count 32)))
               (snapshot (make-u8vector (fx+ n 90) 0)))
          (set! plain (make-u8vector n 0))
          (set! enc-key (subu8vector key 0 32))
          (set! mac-key (subu8vector key 32 64))
          (set! iv (make-u8vector 16))
          (with-keystore-crypto-error encrypt-keystore "could not generate snapshot IV"
            (random-bytes! iv))
          (&u8vector-uint-set!/be plain 0 count 4)
          (let loop ((rest seeds) (offset 4))
            (unless (null? rest)
              (subu8vector-move! (car rest) 0 32 plain offset)
              (loop (cdr rest) (fx+ offset 32))))
          (subu8vector-move! keystore-format-prefix 0 6 snapshot 0)
          (subu8vector-move! salt 0 32 snapshot 6)
          (subu8vector-move! iv 0 16 snapshot 38)
          (&u8vector-uint-set!/be snapshot 54 n 4)
          (keystore-ctr! enc-key iv plain 0 n snapshot 58)
          (set! tag
            (with-keystore-crypto-error encrypt-keystore "HMAC-SHA256 computation failed"
              (hmac-sha256 mac-key snapshot 0 (fx+ 58 n))))
          (subu8vector-move! tag 0 32 snapshot (fx+ 58 n))
          snapshot)
        (for-each (lambda (x) (when x (wipe-keystore-bytes! x)))
                  [plain enc-key mac-key iv tag])))))

;; Verify framing, the expected store salt, and the HMAC before allocating or
;; decrypting plaintext. Validate the encrypted count and return fresh seed
;; buffers owned by the caller. On failure, cleanse any partially decoded seeds;
;; all other plaintext and split-key buffers are cleansed on every exit path.
(def (decrypt-keystore (key : :u8vector)
                       (salt : :u8vector)
                       (snapshot : :u8vector))
  => :list
  (unless (fx= (u8vector-length key) 64)
    (raise-keystore-crypto-error decrypt-keystore "invalid derived key length"
      length: (u8vector-length key) expected: 64))
  (unless (fx= (u8vector-length salt) 32)
    (raise-keystore-crypto-error decrypt-keystore "invalid store salt length"
      length: (u8vector-length salt) expected: 32))
  (let ((n (keystore-snapshot-length snapshot))
        (plain #f) (enc-key #f) (mac-key #f) (iv #f) (tag #f)
        (stored-salt #f) (stored-tag #f) (seeds []) (success? #f))
    (unwind-protect!
      (begin
        (set! stored-salt (subu8vector snapshot 6 38))
        (unless (fxzero? (CRYPTO_memcmp salt stored-salt))
          (raise-keystore-crypto-error decrypt-keystore "snapshot salt does not match the open keystore"))
        (set! mac-key (subu8vector key 32 64))
        (set! stored-tag (subu8vector snapshot (fx+ 58 n) (fx+ 90 n)))
        (set! tag
          (with-keystore-crypto-error decrypt-keystore "HMAC-SHA256 computation failed"
            (hmac-sha256 mac-key snapshot 0 (fx+ 58 n))))
        (unless (fxzero? (CRYPTO_memcmp tag stored-tag))
          (raise-keystore-crypto-error decrypt-keystore "keystore authentication failed"
            ciphertext-length: n))
        ;; Authentication precedes plaintext allocation and cipher initialization.
        (set! plain (make-u8vector (fx+ n 16) 0))
        (set! enc-key (subu8vector key 0 32))
        (set! iv (subu8vector snapshot 38 54))
        (keystore-ctr! enc-key iv snapshot 58 (fx+ 58 n) plain 0)
        (let (count (&u8vector-uint-ref/be plain 0 4))
          ;; Compare generically before using the untrusted count as a fixnum.
          (unless (= count (fxquotient (fx- n 4) 32))
            (raise-keystore-crypto-error decrypt-keystore "entry count does not match ciphertext length"
              entry-count: count ciphertext-length: n))
          (let loop ((i count))
            (unless (fxzero? i)
              (let (offset (fx+ 4 (fx* (fx1- i) 32)))
                (set! seeds (cons (subu8vector plain offset (fx+ offset 32)) seeds)))
              (loop (fx1- i)))))
        (set! success? #t)
        seeds)
      (begin
        (for-each (lambda (x) (when x (wipe-keystore-bytes! x)))
                  [plain enc-key mac-key iv tag stored-salt stored-tag])
        (unless success? (for-each wipe-keystore-bytes! seeds))))))
