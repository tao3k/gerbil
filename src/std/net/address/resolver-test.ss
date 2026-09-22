;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Host lookup exception translation regression
(import :std/test
        :std/error
        (only-in :gerbil/runtime/error RuntimeException-exception)
        :std/net/address
        :std/net/address/resolver)
(export resolver-test)

(def resolver-test
  (test-suite "resolver errors"
    (test-case "lookup failure preserves original arguments and source context"
      (let* ((host "gerbil-source-exception-test.invalid")
              (native (with-catch values (lambda () (host-info host))))
              (raw (RuntimeException-exception native))
              (error (with-catch values
                       (lambda () (resolve->endpoint (DNSAddress host 1))))))
         (check native ? RuntimeException?)
         (check native ? os-exception?)
         (check raw ? os-exception?)
         (check (os-exception-arguments raw) => [host])
         (check (eq? (os-exception-arguments native)
                     (os-exception-arguments raw)) => #t)
         (check error ? ResolverError?)
         (check error ? IOError?)
         (check (Error-where error) ? string?)
         (check (Error-irritants error)
           => ['DNSAddress::resolve (os-exception-arguments native) host: host])))
     (test-case "host-info type errors propagate without translation"
       (let (address (DNSAddress "localhost" 1))
         ;; Deliberately bypass the slot contract to exercise host-info's own check.
         (slot-set! address 'host #f)
         (let (error (with-catch values (lambda () (resolve->endpoint address))))
           (check error ? type-exception?)
           (check (ResolverError? error) => #f)
           (check (type-exception-procedure error) => host-info)
           (check (type-exception-arguments error) => [#f]))))
     (test-case "endpoint conversion contract errors propagate without translation"
       (let (address (DNSAddress "localhost" 1))
         (slot-set! address 'port -1)
         (let (error (with-catch values (lambda () (resolve->endpoint address))))
           (check error ? ContractViolation?)
           (check (ResolverError? error) => #f))))
    (test-case "successful lookup remains an endpoint"
      (check (resolve->endpoint (DNSAddress "localhost" 1)) ? InetAddress?))))
