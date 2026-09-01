;;; -*- Gerbil -*-
;;; (C) vyzo
;;; UUID utilities — RFC 9562

(import :std/crypto/digest
        :std/crypto/random
        :std/encoding/hex
        :std/error
        :std/number/misc
        :std/text/pregexp)

(export UUID uuid-length UUID::t make-UUID uuid
        UUID? uuid-hash
        uuid->u8vector u8vector->uuid uuid->string string->uuid
        uuid-nil uuid-max
        uuid-namespace-dns uuid-namespace-url uuid-namespace-oid uuid-namespace-x500
        uuid-version
        uuid-v5 uuid-v5-sha256
        uuid-v6 uuid-v6-timestamp
        uuid-v7 uuid-v7-timestamp
        uuid-v8
        random-uuid)

(def uuid-length 16)

(defstruct UUID
  ((bytes :  :u8vector)
   (str   :? :string := #f))
  final: #t equal: (bytes) constructor: :init!)

(defmethod {:init! UUID}
  (lambda (self
           (bytes :~ (lambda (v) (and (u8vector? v) (= (u8vector-length v) uuid-length)))
                  :  :u8vector))
    (set! self.bytes bytes)))

(def (uuid x) => UUID
  (cond
   ((UUID? x)     x)
   ((u8vector? x) (u8vector->uuid x))
   ((string? x)   (string->uuid x))
   (else (raise-bad-argument uuid "uuid, uuid string, or u8vector of length 16" x))))

(def (uuid-hash (u : UUID)) => :boolean
  (equal?-hash (UUID-bytes u)))

;;; Nil UUID — all zeros (RFC 9562 §5.9)
(def uuid-nil ;; "00000000-0000-0000-0000-000000000000"
  (UUID (make-u8vector uuid-length 0)))

;;; Max UUID — all ones (RFC 9562 §5.10)
(def uuid-max ;; "ffffffff-ffff-ffff-ffff-ffffffffffff"
  (UUID (make-u8vector uuid-length #xFF)))

;;; Standard namespaces (RFC 9562 Appendix C) — differ only in byte 3
(def uuid-namespace-dns
  (UUID (u8vector #x6b #xa7 #xb8 #x10 #x9d #xad #x11 #xd1
                  #x80 #xb4 #x00 #xc0 #x4f #xd4 #x30 #xc8)))
(def uuid-namespace-url
  (UUID (u8vector #x6b #xa7 #xb8 #x11 #x9d #xad #x11 #xd1
                  #x80 #xb4 #x00 #xc0 #x4f #xd4 #x30 #xc8)))
(def uuid-namespace-oid
  (UUID (u8vector #x6b #xa7 #xb8 #x12 #x9d #xad #x11 #xd1
                  #x80 #xb4 #x00 #xc0 #x4f #xd4 #x30 #xc8)))
(def uuid-namespace-x500
  (UUID (u8vector #x6b #xa7 #xb8 #x14 #x9d #xad #x11 #xd1
                  #x80 #xb4 #x00 #xc0 #x4f #xd4 #x30 #xc8)))

;;; Version field: high nibble of byte 6 (bits 48–51)
(def (uuid-version (u : UUID)) => :fixnum
  (arithmetic-shift (bitwise-and (u8vector-ref (UUID-bytes u) 6) #xF0) -4))

;;; UUIDv4: random (RFC 9562 §5.4)
(def (random-uuid) => UUID
  (let (bytes (make-u8vector uuid-length))
    (random-bytes! bytes)
    (u8vector-set! bytes 6 (bitwise-ior (bitwise-and (u8vector-ref bytes 6) #x0F) #x40))
    (u8vector-set! bytes 8 (bitwise-ior (bitwise-and (u8vector-ref bytes 8) #x3F) #x80))
    (UUID bytes)))

(def (uuid-name->u8vector name) => :u8vector
  (cond
   ((u8vector? name) name)
   ((string? name)   (string->utf8 name))
   (else (raise-bad-argument uuid-name->u8vector "u8vector or string name" name))))

;;; UUIDv5: SHA-1-based name UUID (RFC 9562 §5.5)
(def (uuid-v5 namespace name) => UUID
  (let* ((ns    (UUID-bytes (uuid namespace)))
         (nb    (uuid-name->u8vector name))
         (bytes (subu8vector (sha1 (u8vector-append ns nb)) 0 uuid-length)))
    (u8vector-set! bytes 6 (bitwise-ior #x50 (bitwise-and (u8vector-ref bytes 6) #x0F)))
    (u8vector-set! bytes 8 (bitwise-ior #x80 (bitwise-and (u8vector-ref bytes 8) #x3F)))
    (UUID bytes)))

;;; UUIDv5-SHA256: SHA-256-based name UUID, encoded as UUIDv8 (private convention).
;;; Same algorithm as UUIDv5 with SHA-256 substituted for SHA-1; first 16 bytes used.
;;; Not standardized, but the most natural extension and independently re-derived in
;;; several Rust/Go ecosystems.
(def (uuid-v5-sha256 namespace name) => UUID
  (let* ((ns    (UUID-bytes (uuid namespace)))
         (nb    (uuid-name->u8vector name))
         (bytes (subu8vector (sha256 (u8vector-append ns nb)) 0 uuid-length)))
    (u8vector-set! bytes 6 (bitwise-ior #x80 (bitwise-and (u8vector-ref bytes 6) #x0F)))
    (u8vector-set! bytes 8 (bitwise-ior #x80 (bitwise-and (u8vector-ref bytes 8) #x3F)))
    (UUID bytes)))

;;; UUIDv6: reordered Gregorian time UUID (RFC 9562 §5.6)
;;; timestamp-100ns: 100-nanosecond intervals since Unix epoch
(def gregorian-epoch-offset 122192928000000000) ; 100-ns from 1582-10-15 to 1970-01-01

(def (current-time-100ns) => :integer
  (integer-part (* (##current-time-point) 10000000)))

(def (uuid-v6 (timestamp-100ns (current-time-100ns))) => UUID
  (unless (and (exact? timestamp-100ns) (integer? timestamp-100ns) (>= timestamp-100ns 0))
    (raise-bad-argument uuid-v6 "non-negative exact integer (100-ns intervals)" timestamp-100ns))
  (let* ((greg   (+ timestamp-100ns gregorian-epoch-offset))
         (hi-mid (arithmetic-shift greg -12))
         (lo     (bitwise-and greg #xFFF))
         (rand   (make-u8vector 8))
         (bytes  (make-u8vector uuid-length)))
    (random-bytes! rand)
    (u8vector-set! bytes 0 (bitwise-and (arithmetic-shift hi-mid -40) #xFF))
    (u8vector-set! bytes 1 (bitwise-and (arithmetic-shift hi-mid -32) #xFF))
    (u8vector-set! bytes 2 (bitwise-and (arithmetic-shift hi-mid -24) #xFF))
    (u8vector-set! bytes 3 (bitwise-and (arithmetic-shift hi-mid -16) #xFF))
    (u8vector-set! bytes 4 (bitwise-and (arithmetic-shift hi-mid  -8) #xFF))
    (u8vector-set! bytes 5 (bitwise-and hi-mid #xFF))
    (u8vector-set! bytes 6 (bitwise-ior #x60 (arithmetic-shift lo -8)))
    (u8vector-set! bytes 7 (bitwise-and lo #xFF))
    (u8vector-set! bytes 8 (bitwise-ior #x80 (bitwise-and (u8vector-ref rand 0) #x3F)))
    (u8vector-set! bytes 9  (u8vector-ref rand 1))
    (u8vector-set! bytes 10 (u8vector-ref rand 2))
    (u8vector-set! bytes 11 (u8vector-ref rand 3))
    (u8vector-set! bytes 12 (u8vector-ref rand 4))
    (u8vector-set! bytes 13 (u8vector-ref rand 5))
    (u8vector-set! bytes 14 (u8vector-ref rand 6))
    (u8vector-set! bytes 15 (u8vector-ref rand 7))
    (UUID bytes)))

;;; Extract Gregorian 100-ns timestamp from a UUIDv6
(def (uuid-v6-timestamp (u : UUID)) => :integer
  (let* ((b      (UUID-bytes u))
         (hi-mid (+ (arithmetic-shift (u8vector-ref b 0) 40)
                    (arithmetic-shift (u8vector-ref b 1) 32)
                    (arithmetic-shift (u8vector-ref b 2) 24)
                    (arithmetic-shift (u8vector-ref b 3) 16)
                    (arithmetic-shift (u8vector-ref b 4)  8)
                    (u8vector-ref b 5)))
         (lo     (+ (arithmetic-shift (bitwise-and (u8vector-ref b 6) #x0F) 8)
                    (u8vector-ref b 7))))
    (+ (arithmetic-shift hi-mid 12) lo)))

;;; UUIDv7: Unix epoch ms UUID (RFC 9562 §5.7)
;;; timestamp-ms: milliseconds since Unix epoch
(def (current-time-ms) => :integer
  (integer-part (* (##current-time-point) 1000)))

(def (uuid-v7 (timestamp-ms : :integer := (current-time-ms))) => UUID
  (unless (and (exact? timestamp-ms) (integer? timestamp-ms) (>= timestamp-ms 0))
    (raise-bad-argument uuid-v7 "non-negative exact integer (milliseconds)" timestamp-ms))
  (let* ((rand  (make-u8vector 10))
         (bytes (make-u8vector uuid-length)))
    (random-bytes! rand)
    (u8vector-set! bytes 0  (bitwise-and (arithmetic-shift timestamp-ms -40) #xFF))
    (u8vector-set! bytes 1  (bitwise-and (arithmetic-shift timestamp-ms -32) #xFF))
    (u8vector-set! bytes 2  (bitwise-and (arithmetic-shift timestamp-ms -24) #xFF))
    (u8vector-set! bytes 3  (bitwise-and (arithmetic-shift timestamp-ms -16) #xFF))
    (u8vector-set! bytes 4  (bitwise-and (arithmetic-shift timestamp-ms  -8) #xFF))
    (u8vector-set! bytes 5  (bitwise-and timestamp-ms #xFF))
    (u8vector-set! bytes 6  (bitwise-ior #x70 (bitwise-and (u8vector-ref rand 0) #x0F)))
    (u8vector-set! bytes 7  (u8vector-ref rand 1))
    (u8vector-set! bytes 8  (bitwise-ior #x80 (bitwise-and (u8vector-ref rand 2) #x3F)))
    (u8vector-set! bytes 9  (u8vector-ref rand 3))
    (u8vector-set! bytes 10 (u8vector-ref rand 4))
    (u8vector-set! bytes 11 (u8vector-ref rand 5))
    (u8vector-set! bytes 12 (u8vector-ref rand 6))
    (u8vector-set! bytes 13 (u8vector-ref rand 7))
    (u8vector-set! bytes 14 (u8vector-ref rand 8))
    (u8vector-set! bytes 15 (u8vector-ref rand 9))
    (UUID bytes)))

;;; Extract Unix millisecond timestamp from a UUIDv7
(def (uuid-v7-timestamp (u : UUID)) => :integer
  (let (b (UUID-bytes u))
    (+ (arithmetic-shift (u8vector-ref b 0) 40)
       (arithmetic-shift (u8vector-ref b 1) 32)
       (arithmetic-shift (u8vector-ref b 2) 24)
       (arithmetic-shift (u8vector-ref b 3) 16)
       (arithmetic-shift (u8vector-ref b 4)  8)
       (u8vector-ref b 5))))

;;; UUIDv8: custom UUID (RFC 9562 §5.8)
;;; Caller provides 16 bytes of application data; version and variant bits are overwritten.
(def (uuid-v8 (bytes : :u8vector)) => UUID
  (unless (##fx= (u8vector-length bytes) uuid-length)
    (raise-bad-argument uuid-v8 "u8vector of UUID length" bytes))
  (let (b (u8vector-copy bytes))
    (u8vector-set! b 6 (bitwise-ior #x80 (bitwise-and (u8vector-ref b 6) #x0F)))
    (u8vector-set! b 8 (bitwise-ior #x80 (bitwise-and (u8vector-ref b 8) #x3F)))
    (UUID b)))

;;; ---- internal helpers ----

(def uuid-re
  (pregexp "^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$"))

(def uuid-re-capture
  (pregexp "^([0-9a-fA-F]{8})-([0-9a-fA-F]{4})-([0-9a-fA-F]{4})-([0-9a-fA-F]{4})-([0-9a-fA-F]{12})$"))

(def (u8vector->uuid (u8v : :u8vector)) => UUID
  (unless (##fx= (u8vector-length u8v) uuid-length)
    (raise-bad-argument u8vector->uuid "u8vector of UUID length" u8v))
  (UUID u8v))

(def (uuid->u8vector (u : UUID)) => :u8vector
  (UUID-bytes u))

(def (string->uuid (str : :string)) => UUID
  (match (pregexp-match uuid-re-capture str)
    ([_ a b c d e]
     (UUID (u8vector-append (hex-decode a) (hex-decode b)
                            (hex-decode c) (hex-decode d)
                            (hex-decode e))))
    (else
     (raise-bad-argument string->uuid "uuid string" str))))

(def (uuid->string (u : UUID)) => :string
  (cond
   ((UUID-str u))
   (else
    (let* ((bytes (UUID-bytes u))
           (str   (string-append (hex-encode bytes 0  4) "-"
                                 (hex-encode bytes 4  6) "-"
                                 (hex-encode bytes 6  8) "-"
                                 (hex-encode bytes 8 10) "-"
                                 (hex-encode bytes 10 16))))
      (set! (UUID-str u) str)
      str))))
