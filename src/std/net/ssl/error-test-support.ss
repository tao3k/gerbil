;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Compiled OpenSSL constants and error queues for classifier regressions
(import :std/ffi)
(export TEST_SSL_ERROR_SSL
        TEST_SSL_ERROR_SYSCALL
        TEST_SSL_MALLOC
        TEST_SSL_INTERNAL
        TEST_SSL_NEGOTIATION
        ssl-test-push-error!
        ssl-test-first-error
        ssl-test-last-error
        ssl-test-clear-errors!)

(C-ffi-macrology)
(C-include "<openssl/ssl.h>" "<openssl/err.h>")
(C-declare #<<END-C
#define TEST_SSL_ERROR_SSL SSL_ERROR_SSL
#define TEST_SSL_ERROR_SYSCALL SSL_ERROR_SYSCALL
#define TEST_SSL_MALLOC ERR_R_MALLOC_FAILURE
#define TEST_SSL_INTERNAL ERR_R_INTERNAL_ERROR
#define TEST_SSL_NEGOTIATION SSL_R_UNSUPPORTED_PROTOCOL
END-C
)
(def-C-const* TEST_SSL_ERROR_SSL TEST_SSL_ERROR_SYSCALL
  TEST_SSL_MALLOC TEST_SSL_INTERNAL TEST_SSL_NEGOTIATION)

;; The test owns this thread's queue; push known reasons without inducing OOM.
(def-C-lambda (ssl-test-push-error! (reason : int))
  => void
  "ERR_raise(ERR_LIB_SSL, ___arg1);")
(def-C-lambda (ssl-test-first-error) => unsigned-long "ERR_peek_error")
(def-C-lambda (ssl-test-last-error) => unsigned-long "ERR_peek_last_error")
(def-C-lambda (ssl-test-clear-errors!) => void "ERR_clear_error")
