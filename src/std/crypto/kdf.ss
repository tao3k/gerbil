;;; -*- Gerbil -*-
;;; © vyzo
;;; Key Derivation functions

(import :std/ffi
        ./libcrypto
        ./error)
(export scrypt)

;; Derive size bytes with OpenSSL scrypt. Passphrase and salt are borrowed.
;; Optional maxmem overrides OpenSSL's memory limit in bytes; omitting it keeps
;; the library default. Release the context and cleanse partial output on failure.
(def (scrypt (pass : :u8vector)
             (salt : :u8vector)
             (size : :fixnum)
             (N    : :fixnum := 131072)
             (r    : :fixnum := 8)
             (p    : :fixnum := 1)
             maxmem: (maxmem :? :integer := #f))
  => :u8vector
  (let ((pctx (check-pointer scrypt
                            (EVP_PKEY_CTX_new_id EVP_PKEY_SCRYPT #f)))
        (output #f)
        (success? #f))
    (unwind-protect!
      (begin
        (with-libcrypto-error scrypt (EVP_PKEY_derive_init pctx))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set1_pbe_pass pctx pass))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set1_scrypt_salt pctx salt))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set_scrypt_N pctx N))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set_scrypt_r pctx r))
        (with-libcrypto-error scrypt (EVP_PKEY_CTX_set_scrypt_p pctx p))
        (when maxmem
          (with-libcrypto-error scrypt (EVP_PKEY_CTX_set_scrypt_maxmem_bytes pctx maxmem)))
        (set! output (make-u8vector size))
        (let (outlen (with-libcrypto-error scrypt (EVP_PKEY_derive pctx output)))
          (when (fx< outlen size)
            (u8vector-shrink! output outlen))
          (set! success? #t)
          output))
      (unwind-protect!
        (when (and output (not success?)) (OPENSSL_cleanse output))
        (foreign-release! pctx)))))
