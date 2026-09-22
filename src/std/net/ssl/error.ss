;;; -*- Gerbil -*-
;;; © vyzo
;;; SSL errors
(export #t)
(import :std/error
        :std/os/error
        :std/crypto/libcrypto
        ./libssl)

(defrule (with-ssl-result (proc arg ...))
  (let (result (proc arg ...))
    (cond
     ((fixnum? result)
      (if (fx> result 0)
        (void)
        (raise-ssl-error proc result)))
     ((char? result) result)
     (else
      (raise-ssl-error proc result)))))

(deferror-class (SSLError IOError) () ssl-error?)
(deferror-class (SSLHandshakeError SSLError) ())

;; Negotiation failure is a stage distinction, not proof of peer fault. Keep
;; the native result (including SSL_get_error and the error queue code) intact.
(defraise/context (raise-ssl-handshake-error where result)
  (SSLHandshakeError "SSL handshake failed" irritants: [result]))

(def (ssl-local-error? (result : :t))
  => :boolean
  (match result
    ([_ code last] (SSL_error_is_local code last))
    (else #f)))

(defrule (raise-ssl-error where result)
  (let (errstr
        (match result
          ((? fixnum? result)
           (ERR_error_string result))
          ([_ _ last]
           (ERR_error_string last))
          (else "unknown error")))
    (raise (SSLError "SSL error" irritants: ['where errstr result] where: (exception-context where)))))
