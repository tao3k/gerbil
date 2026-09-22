;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Keystore cryptographic format and rejection tests
(import :std/test
        :std/error
        :std/encoding/hex
        ./crypto)
(export crypto-test)

;; Construct deterministic, independent fixture buffers; n must not exceed 256.
(def (test-byte-sequence (n : :fixnum)) => :u8vector
  (let (v (make-u8vector n))
    (let loop ((i 0))
      (when (< i n)
        (u8vector-set! v i i)
        (loop (+ i 1))))
    v))

;; Independent fixtures: OpenSSL enc -aes-256-ctr and Python hmac/hashlib.
(def test-snapshot
  (hex-decode "474b53310101000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f000102030405060708090a0b0c0d0e0f000000245a6e045608fa7395f42b533a0acaac996cfe1edad3944a4e4103ed466afc3ad400786944191d0c18cfb677b27715db18d7817eefff06496e52c13c6b1b50458d336893ea"))
(def test-bad-count
  (hex-decode "474b53310101000102030405060708090a0b0c0d0e0f101112131415161718191a1b1c1d1e1f000102030405060708090a0b0c0d0e0f000000245a6e045508fa7395f42b533a0acaac996cfe1edad3944a4e4103ed466afc3ad400786944c29719a5ec0aed66aa2f779340baa052d6fc3412f488ded5d116683b579fdf6b"))

(def crypto-test
  (test-suite "keystore crypto"
    (test-case "fixed profile scrypt vector and borrowed passphrase"
      (let* ((pass '#u8(112 97 115 115 119 111 114 100))
             (key (derive-keystore-key pass (test-byte-sequence 32))))
        (unwind-protect
          (begin
            (check (hex-encode key) => "02f2d9dfc303157c37b89e3085acdeb382970dd873f6d0850a01998b4ba633afeb7fff6a9474637feaa8183c1290414761188dc31be770fd408269bc2d632e49")
            (check pass => '#u8(112 97 115 115 119 111 114 100)))
          (wipe-keystore-bytes! key))))
    (test-case "independent AES-CTR/HMAC snapshot vector"
      (check (decrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) test-snapshot)
             => [(test-byte-sequence 32)])
      (check (keystore-snapshot-salt test-snapshot) => (test-byte-sequence 32))
      (check-exception (decrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) test-bad-count)
                       ContractViolation?))
    (test-case "roundtrip empty, multiple, maximum; IV freshness and ownership"
      (let ((key (test-byte-sequence 64)) (salt (test-byte-sequence 32)) (seed (test-byte-sequence 32)))
        (for-each
          (lambda (seeds)
            (let* ((snapshot (encrypt-keystore key salt seeds))
                   (again (encrypt-keystore key salt seeds))
                   (decoded (decrypt-keystore key salt snapshot)))
              (check decoded => seeds)
              (check (equal? (subu8vector snapshot 38 54)
                             (subu8vector again 38 54)) => #f)
              (check (keystore-snapshot-salt snapshot) => salt)
              (let (copy (keystore-snapshot-salt snapshot))
                (wipe-keystore-bytes! copy)
                (check (keystore-snapshot-salt snapshot) => salt))
              (unless (null? decoded)
                (check (eq? (car decoded) seed) => #f)
                (unless (null? (cdr decoded))
                  (check (eq? (car decoded) (cadr decoded)) => #f))
                (for-each wipe-keystore-bytes! decoded)
                (check seed => (test-byte-sequence 32))
                (check (decrypt-keystore key salt snapshot) => seeds))
              (when (= (length seeds) 4096)
                (check (u8vector-length snapshot) => keystore-max-file-size))))
          [[] [seed seed] (make-list 4096 seed)])
        (check key => (test-byte-sequence 64))
        (check salt => (test-byte-sequence 32))))
    (test-case "every single-byte mutation is rejected"
      (let loop ((i 0))
        (when (< i (u8vector-length test-snapshot))
          (let (bad (u8vector-copy test-snapshot))
            (u8vector-set! bad i (bitwise-xor 1 (u8vector-ref bad i)))
            (check-exception (decrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) bad)
                             ContractViolation?))
          (loop (+ i 1)))))
    (test-case "truncation, trailing bytes, oversize, header bounds"
      (let loop ((i 0))
        (when (< i (u8vector-length test-snapshot))
          (let (bad (subu8vector test-snapshot 0 i))
            (check-exception (keystore-snapshot-salt bad) ContractViolation?)
            (check-exception (decrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) bad)
                             ContractViolation?))
          (loop (+ i 1))))
      (for-each
        (lambda (bad)
          (check-exception (keystore-snapshot-salt bad) ContractViolation?)
          (check-exception (decrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) bad)
                           ContractViolation?))
        [(u8vector-append test-snapshot '#u8(0))
         (make-u8vector (+ keystore-max-file-size 1) 0)])
      (for-each
        (lambda (i)
          (let (bad (u8vector-copy test-snapshot))
            (u8vector-set! bad i 255)
            (check-exception (keystore-snapshot-salt bad) ContractViolation?)))
        [0 1 2 3 4 5 54 55 56 57]))
    (test-case "wrong key, expected salt and invalid inputs"
      (check-exception (decrypt-keystore (make-u8vector 64 0) (test-byte-sequence 32) test-snapshot)
                       ContractViolation?)
      (check-exception (decrypt-keystore (test-byte-sequence 64) (make-u8vector 32 0) test-snapshot)
                       ContractViolation?)
      (for-each
        (lambda (bad)
          (check-exception (encrypt-keystore bad (test-byte-sequence 32) []) ContractViolation?)
          (check-exception (decrypt-keystore bad (test-byte-sequence 32) test-snapshot) ContractViolation?))
        [#f "secret" (make-u8vector 63) (make-u8vector 65)])
      (for-each
        (lambda (bad)
          (check-exception (derive-keystore-key '#u8(1) bad) ContractViolation?)
          (check-exception (encrypt-keystore (test-byte-sequence 64) bad []) ContractViolation?)
          (check-exception (decrypt-keystore (test-byte-sequence 64) bad test-snapshot) ContractViolation?))
        [#f (make-u8vector 31) (make-u8vector 33)])
      (for-each
        (lambda (bad)
          (check-exception (encrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) bad)
                           ContractViolation?))
        [#f [#f] [(make-u8vector 31)] [(make-u8vector 33)]
         (cons (test-byte-sequence 32) #t) (make-list 4097 (test-byte-sequence 32))])
      (let (cycle [(test-byte-sequence 32)])
        (set-cdr! cycle cycle)
         (check-exception (encrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) cycle)
                          ContractViolation?)))
    (test-case "contextual diagnostics omit secret buffers"
      (check-exception
       (decrypt-keystore (test-byte-sequence 64) (test-byte-sequence 32) test-bad-count)
       (lambda (e)
         (and (ContractViolation? e)
              (string? (Error-where e))
              (equal? (Error-irritants e)
                      ['decrypt-keystore contract: "entry count does not match ciphertext length"
                       entry-count: 2 ciphertext-length: 36]))))
      (check-exception
       (encrypt-keystore (make-u8vector 63 42) (test-byte-sequence 32) [])
       (lambda (e)
         (and (ContractViolation? e)
              (equal? (Error-irritants e)
                      ['encrypt-keystore contract: "invalid derived key length"
                       length: 63 expected: 64]))))
      (let (bad (u8vector-copy test-snapshot))
        (u8vector-set! bad 4 2)
        (check-exception
         (keystore-snapshot-salt bad)
         (lambda (e)
           (and (ContractViolation? e)
                (equal? (Error-irritants e)
                        ['keystore-snapshot-length contract: "unsupported keystore header"
                         offset: 4 byte: 2 expected: 1]))))))
    (test-case "best effort wipe"
      (let (bytes (test-byte-sequence 64))
        (wipe-keystore-bytes! bytes)
        (check bytes => (make-u8vector 64 0)))
      (wipe-keystore-bytes! (make-u8vector 0))
      (check-exception (wipe-keystore-bytes! #f) ContractViolation?))))
