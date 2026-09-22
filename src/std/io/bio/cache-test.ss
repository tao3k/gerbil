;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Buffered IO cache capacity and ownership tests
(import :std/cache
        :std/error
        :std/iter
        :std/test
        ./cache)
(export cache-test)

;; Leave unrelated global caches alone, including the BIO exponent cache.
(defrule (with-empty-buffer-cache body ...)
  (begin
    (CacheOps-flush! (make-CacheOps __buffer-cache))
    (unwind-protect
      (begin body ...)
      (CacheOps-flush! (make-CacheOps __buffer-cache)))))

(def cache-test
  (test-suite "BIO buffer cache"
    (test-case "13-byte return cannot satisfy a 16-byte request"
      (with-empty-buffer-cache
        (let (original (make-u8vector 13))
          (buffer-cache.put! original)
          (let (larger (buffer-cache.get 16))
            (check (fx>= (u8vector-length larger) 16) => #t)
            (let (reused (buffer-cache.get 8))
              ;; Ownership has transferred back before inspecting identity/size.
              (check-eq? reused original)
              (check (u8vector-length reused) => 8)
              (buffer-cache.put! reused)
              (let (same (buffer-cache.get 8))
                (check-eq? same reused)
                (buffer-cache.put! same)))
            (buffer-cache.put! larger)))))

    (test-case "power boundaries and mixed returned capacities"
      (with-empty-buffer-cache
        (for (size '(1 2 3 4 7 8 9 13 15 16 17 31 32 33 63 64 65 127 128 129))
          (CacheOps-flush! (make-CacheOps __buffer-cache))
          (let* ((original (make-u8vector size))
                 (floor-size (fxshift 1 (fx- (integer-length size) 1))))
            (buffer-cache.put! original)
            (let (larger (and (not (fx= size floor-size))
                             (buffer-cache.get size)))
              (when larger
                (check (fx>= (u8vector-length larger) size) => #t))
              (let (reused (buffer-cache.get floor-size))
                (check-eq? reused original)
                (check (u8vector-length reused) => floor-size)
                (buffer-cache.put! reused))
              (when larger
                (buffer-cache.put! larger)))))))

    (test-case "empty buffers and negative requests"
      (with-empty-buffer-cache
        (let (ops (make-CacheOps __buffer-cache))
          (check (u8vector-length (buffer-cache.get 0)) => 0)
          (buffer-cache.put! (make-u8vector 0))
          (check (CacheOps-size ops) => 0)
          (check-exception (buffer-cache.get -1) Error?)
          (check-exception (buffer-cache.get -1024) Error?)
          (check (CacheOps-size ops) => 0))))

    (test-case "repeated mixed-size churn never returns undersized buffers"
      (with-empty-buffer-cache
        (for (round (in-range 32))
          (let (buffers
                (for/fold (buffers []) (size (in-range 1 130))
                  (let (buf (buffer-cache.get size))
                    (check (fx>= (u8vector-length buf) size) => #t)
                    (cons buf buffers))))
            (for (buf (reverse! buffers))
              (buffer-cache.put! buf))))))))
