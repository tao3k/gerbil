(export uuid-test)

(import
  :std/error
  :std/string/uuid
  :std/test)

(def +test-str+   "550e8400-e29b-41d4-a716-446655440000")
(def +test-bytes+ (u8vector #x55 #x0e #x84 #x00
                            #xe2 #x9b
                            #x41 #xd4
                            #xa7 #x16
                            #x44 #x66 #x55 #x44 #x00 #x00))
(def +other-str+  "6ba7b810-9dad-11d1-80b4-00c04fd430c8")

(def uuid-test
  (test-suite "test :std/string/uuid"

    (test-case "uuid-length"
      (check uuid-length => 16))

    (test-case "string->uuid / uuid->string"
      (def (rt str) (uuid->string (string->uuid str)))
      (check-function rt
        +test-str+                                    => +test-str+
        +other-str+                                   => +other-str+
        "550E8400-E29B-41D4-A716-446655440000"        => +test-str+  ; uppercase normalizes
        "not-a-uuid"                                  =>! ContractViolation?
        ""                                            =>! ContractViolation?
        "550e8400-e29b-41d4-a716"                     =>! ContractViolation?
        "550e8400-e29b-41d4-a716-4466554400000"       =>! ContractViolation?))

    (test-case "u8vector->uuid / uuid->u8vector"
      (def (rt bytes) (uuid->u8vector (u8vector->uuid bytes)))
      (check-function rt
        +test-bytes+         => +test-bytes+
        (make-u8vector 15)   =>! ContractViolation?
        (make-u8vector 17)   =>! ContractViolation?
        (make-u8vector 0)    =>! ContractViolation?))

    (test-case "string->uuid bytes / u8vector->uuid string"
      (check (uuid->u8vector (string->uuid +test-str+))  => +test-bytes+)
      (check (uuid->string   (u8vector->uuid +test-bytes+)) => +test-str+))

    (test-case "equal?"
      (let* ((u1 (string->uuid +test-str+))
             (u2 (string->uuid +test-str+))
             (u3 (u8vector->uuid +test-bytes+))
             (u4 (string->uuid +other-str+)))
        (check-function (cut equal? u1 <>)
          u2 => #t
          u3 => #t   ; from bytes, same content
          u4 => #f)))

    (test-case "uuid equal? and uuid-hash"
      (let ((u1 (string->uuid +test-str+))
            (u2 (u8vector->uuid +test-bytes+)))
        (check (equal? u1 u2)   => #t)
        (check (uuid-hash u1)   => (uuid-hash u2))))

    (test-case "uuid coercion"
      (def (str-of x) (uuid->string (uuid x)))
      (def (bytes-of x) (uuid->u8vector (uuid x)))
      (check (str-of +test-str+) => +test-str+)
      (check (bytes-of +test-bytes+) => +test-bytes+)
      (check-function uuid
        "not-a-uuid"  =>! ContractViolation?
        42            =>! ContractViolation?
        #t            =>! ContractViolation?
        '()           =>! ContractViolation?))

    (test-case "uuid-nil and uuid-max (RFC 9562 §5.9–5.10)"
      (check (uuid->string uuid-nil) => "00000000-0000-0000-0000-000000000000")
      (check (uuid->string uuid-max) => "ffffffff-ffff-ffff-ffff-ffffffffffff")
      (check (uuid-version uuid-nil) => 0)
      (check (uuid-version uuid-max) => 15))

    (test-case "uuid-namespace-dns (RFC 9562 Appendix C)"
      (check (uuid->string uuid-namespace-dns)  => "6ba7b810-9dad-11d1-80b4-00c04fd430c8")
      (check (uuid->string uuid-namespace-url)  => "6ba7b811-9dad-11d1-80b4-00c04fd430c8")
      (check (uuid->string uuid-namespace-oid)  => "6ba7b812-9dad-11d1-80b4-00c04fd430c8")
      (check (uuid->string uuid-namespace-x500) => "6ba7b814-9dad-11d1-80b4-00c04fd430c8"))

    (test-case "uuid-version on known UUIDs"
      (check-function (lambda (x) (uuid-version (uuid x)))
        "919108f7-52d1-4320-9bac-f847db4148a8" => 4  ; v4
        "2ed6657d-e927-568b-95e1-2665a8aea6a2" => 5  ; v5 (uuid5 DNS+www.example.com)
        "1ec9414c-232a-6b00-b3c8-9f6bdeced846" => 6  ; v6
        "017f22e2-79b0-7cc3-98c4-dc0c0c07398f" => 7)) ; v7

    (test-case "uuid-v5 (SHA-1, DNS namespace, www.example.com)"
      ; verified against Python uuid.uuid5 and sha1sum
      (check (uuid->string (uuid-v5 uuid-namespace-dns "www.example.com"))
             => "2ed6657d-e927-568b-95e1-2665a8aea6a2")
      (check (uuid-version (uuid-v5 uuid-namespace-dns "www.example.com")) => 5))

    (test-case "uuid-v6 timestamp (RFC 9562 §5.6, test vector Appendix B)"
      ; UUID from RFC 9562 Appendix B: timestamp 2022-02-22T19:22:22Z
      (let (u (string->uuid "1ec9414c-232a-6b00-b3c8-9f6bdeced846"))
        (check (uuid-version u) => 6)
        ; Gregorian 100-ns = Unix_s × 10^7 + gregorian_epoch_offset
        (check (uuid-v6-timestamp u) => (+ (* 1645557742 10000000) 122192928000000000))))

    (test-case "uuid-v6 structure"
      (let (u (uuid-v6))
        (check (uuid-version u) => 6)))

    (test-case "uuid-v7 timestamp (RFC 9562 §5.7, test vector Appendix B)"
      ; UUID from RFC 9562 Appendix B: ms timestamp 1645557742000
      (let (u (string->uuid "017f22e2-79b0-7cc3-98c4-dc0c0c07398f"))
        (check (uuid-version u)       => 7)
        (check (uuid-v7-timestamp u)  => 1645557742000)))

    (test-case "uuid-v7 structure"
      (let (u (uuid-v7))
        (check (uuid-version u) => 7)
        (check (uuid-v7-timestamp u) ? (lambda (ts) (> ts 1645557742000)))))

    (test-case "random-uuid RFC 4122 v4 structure"
      (let* ((u     (random-uuid))
             (bytes (uuid->u8vector u)))
        (check (UUID? u)                                              => #t)
        (check (u8vector-length bytes)                                => 16)
        (check (arithmetic-shift (bitwise-and (u8vector-ref bytes 6) #xf0) -4) => 4)
        (check (bitwise-and (u8vector-ref bytes 8) #xc0)              => #x80)))

    (test-case "random-uuid distinct"
      (check (equal? (random-uuid) (random-uuid)) => #f))))
