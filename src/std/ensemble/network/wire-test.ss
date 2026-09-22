;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Buffer-only ensemble wire codec tests
(import :std/test
        :std/error
        :std/vector/u8vector
        ./config
        ./wire)
(export wire-test)

;; Intentionally not serialized tokens: authentication owns their interpretation.
(def wire-tokens [#u8() #u8(255 0 192 128)])
(def wire-challenge (make-u8vector 32 17))
(def wire-signature (make-u8vector 64 34))
(def wire-max64 #xffffffffffffffff)
(def wire-examples
  (list
   [frame-hello [1 "did:test" wire-challenge 0 16384 65536 lease-mode-fixed]]
   [frame-auth [wire-tokens]]
   [frame-accept [0]]
   [frame-confirm []]
   [frame-reject [reason-refused]]
   [frame-open ["/test/v0" wire-max64 #xffffffff wire-tokens lease-mode-adaptive]]
   [frame-open-accept [#xffffffff 1]]
   [frame-open-reject [reason-auth-failed]]
   [frame-data [#u8(0 255 3)]]
   [frame-window-update [#xffffffff]]
   [frame-fin []]
   [frame-reset [reason-closed]]
   [frame-renew-request [0 wire-max64 wire-max64 lease-mode-adaptive]]
   [frame-renew-result [0 reason-ok]]
   [frame-renew-offer [wire-max64 0 1 wire-tokens lease-mode-fixed]]
   [frame-renew-auth [0 0 wire-tokens]]
   [frame-renew-commit [wire-max64 #xffffffff]]
   [frame-renew-ack [0]]
   [frame-renew-abort [0 #xffff]]
   [frame-stream-renew-offer [0 wire-max64 wire-max64 wire-tokens]]
   [frame-stream-renew-auth [0 #xffffffff]]
   [frame-stream-renew-commit [0]]
   [frame-stream-renew-ack [wire-max64]]
   [frame-stream-renew-abort [0 #xffff]]))

(def (test-wire-header (type : :fixnum)
                       (id   : :integer)
                       (size : :integer))
  => FrameHeader
  (FrameHeader type: type stream-id: id payload-length: size))

(def wire-test
  (test-suite "test :std/ensemble/network/wire"
    (test-case "agreed code tables"
      (check (map car wire-examples)
             => [1 2 3 4 5 16 17 18 19 20 21 22 32 33 34 35 36 37 38 48 49 50 51 52])
      (check [lease-mode-fixed lease-mode-adaptive] => [0 1])
      (check [reason-ok reason-closed reason-refused reason-auth-failed reason-lifetime
                        reason-limit reason-timeout reason-cancelled reason-duplicate reason-version
                        reason-protocol reason-internal reason-no-credentials reason-headroom]
             => [0 1 2 3 4 5 6 7 8 9 10 11 12 13]))
    (test-case "all 24 layouts roundtrip and reject truncation/trailing bytes"
      (check (length wire-examples) => 24)
      (for-each
        (lambda (example)
          (let* ((type (car example))
                 (fields (cadr example))
                 (bytes (encode-frame-payload type fields))
                 (size (u8vector-length bytes))
                 (id (if (or (<= frame-open type frame-reset)
                             (<= frame-stream-renew-offer type frame-stream-renew-abort)) 1 0))
                 (header (decode-frame-header
                          (encode-frame-header (test-wire-header type id size)))))
            (check (decode-frame-payload type bytes) => (list->vector fields))
            (check (frame-payload-size type fields (ConnectionLimits)) => size)
            (check (FrameHeader-type header) => type)
            (check (FrameHeader-stream-id header) => id)
            (check (FrameHeader-payload-length header) => size)
            (unless (= type frame-data)
              (check-exception
               (decode-frame-payload type (u8vector-append bytes #u8(0))) IOError?)
              (let loop ((end 0))
                (when (< end size)
                  (check-exception
                   (decode-frame-payload type (subu8vector bytes 0 end)) IOError?)
                  (loop (+ end 1)))))))
        wire-examples))
    (test-case "headers reject impossible fixed and minimum payload lengths"
      (for-each
        (lambda (entry)
          (let* ((type (car entry)) (size (cadr entry)) (variable? (caddr entry))
                 (id (if (or (<= frame-open type frame-reset)
                             (<= frame-stream-renew-offer type frame-stream-renew-abort)) 1 0))
                 (raw (encode-frame-header (test-wire-header type id size))))
            (check (FrameHeader-payload-length (decode-frame-header raw)) => size)
            ;; Exercise every undersized declaration without ever making a payload.
            (let loop ((bad 0))
              (when (< bad size)
                (u8vector-uint-set! raw 9 bad 'big 4)
                (check-exception (decode-frame-header raw) IOError?)
                (check-exception (encode-frame-header (test-wire-header type id bad)) IOError?)
                (loop (+ bad 1))))
            (u8vector-uint-set! raw 9 (+ size 1) 'big 4)
            (if variable?
              (begin
                (check (FrameHeader-payload-length (decode-frame-header raw)) => (+ size 1))
                (check (encode-frame-header (test-wire-header type id (+ size 1))) => raw))
              (begin
                (check-exception (decode-frame-header raw) IOError?)
                (check-exception (encode-frame-header (test-wire-header type id (+ size 1))) IOError?)))))
        [[frame-confirm 0 #f] [frame-fin 0 #f]
         [frame-accept 4 #f] [frame-window-update 4 #f]
         [frame-reject 2 #f] [frame-open-reject 2 #f] [frame-reset 2 #f]
         [frame-open-accept 8 #f] [frame-renew-request 25 #f]
         [frame-renew-result 10 #f] [frame-renew-abort 10 #f]
         [frame-renew-commit 12 #f] [frame-renew-ack 8 #f]
         [frame-hello 55 #t] [frame-auth 4 #t] [frame-open 21 #t]
         [frame-renew-offer 29 #t] [frame-renew-auth 16 #t] [frame-data 1 #t]
         [frame-stream-renew-offer 28 #t] [frame-stream-renew-auth 12 #f]
         [frame-stream-renew-commit 8 #f] [frame-stream-renew-ack 8 #f]
         [frame-stream-renew-abort 10 #f]]))
    (test-case "golden big endian envelope and unsigned ranges"
      (def golden #u8(19 1 2 3 4 5 6 7 8 0 0 1 2))
      (check (encode-frame-header (test-wire-header frame-data #x0102030405060708 258))
             => golden)
      (check (FrameHeader-stream-id (decode-frame-header golden)) => #x0102030405060708)
      (check (FrameHeader-stream-id
              (decode-frame-header
               (encode-frame-header (test-wire-header frame-fin wire-max64 0))))
             => wire-max64)
      (for-each
       (lambda (bad)
         (check-exception (encode-frame-header (test-wire-header frame-fin bad 0)) IOError?))
       [-1 (+ wire-max64 1)])
      (for-each
       (lambda (bad)
         (check-exception (encode-frame-header (test-wire-header frame-fin 1 bad)) IOError?))
       [-1 #x100000000])
      (check-exception (decode-frame-header #u8()) IOError?)
      (check-exception (decode-frame-header (make-u8vector 12)) IOError?)
      (check-exception (decode-frame-header (make-u8vector 14)) IOError?))
    (test-case "known types and stream ID scope before payload allocation"
      (for-each
        (lambda (example)
          (let* ((type (car example))
                 (stream? (or (<= frame-open type frame-reset)
                              (<= frame-stream-renew-offer type frame-stream-renew-abort)))
                 (wrong-id (if stream? 0 1))
                 (size (frame-payload-size type (cadr example) (ConnectionLimits)))
                 (raw (make-u8vector 13 0)))
            (u8vector-set! raw 0 type)
            ;; Keep length valid so a length failure cannot mask a missing scope check.
            (u8vector-uint-set! raw 9 size 'big 4)
            (u8vector-uint-set! raw 1 (if stream? wire-max64 0) 'big 8)
            (check (FrameHeader-stream-id (decode-frame-header raw))
                   => (if stream? wire-max64 0))
            (u8vector-uint-set! raw 1 wrong-id 'big 8)
            (check-exception (decode-frame-header raw) IOError?)
            (check-exception (encode-frame-header (test-wire-header type wrong-id size)) IOError?)))
        wire-examples)
      (for-each
        (lambda (type)
          (def raw (make-u8vector 13 0))
          (u8vector-set! raw 0 type)
          (check-exception (decode-frame-header raw) IOError?)
          (check-exception (encode-frame-payload type []) IOError?)
          (check-exception (decode-frame-payload type #u8()) IOError?))
        [0 6 15 23 31 39 47 53 255])
      (check-exception (encode-frame-header (test-wire-header 256 0 0)) IOError?)
      (check-exception
       (FrameHeader type: wire-max64 stream-id: 0 payload-length: 0) ContractViolation?)
      (check-exception (encode-frame-payload wire-max64 []) ContractViolation?)
      (check-exception (decode-frame-payload wire-max64 #u8()) ContractViolation?)
      (check-exception (encode-frame-payload -1 []) IOError?))
    (test-case "golden payload fields and byte-counted UTF-8"
      (check (encode-frame-payload frame-renew-request [#x0102030405060708 0 1 lease-mode-adaptive])
             => #u8(1 2 3 4 5 6 7 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1))
      (check (encode-frame-payload frame-open ["a" 1 #x01020304 wire-tokens lease-mode-adaptive])
             => #u8(0 0 0 1 97 0 0 0 0 0 0 0 1 1 2 3 4
                      0 0 0 2 0 0 0 0 0 0 0 4 255 0 192 128 1))
      (check (encode-frame-payload frame-renew-offer [#x0102030405060708 0 1 wire-tokens lease-mode-fixed])
             => #u8(1 2 3 4 5 6 7 8 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
                      0 0 0 2 0 0 0 0 0 0 0 4 255 0 192 128 0))
      (check (encode-frame-payload frame-open-accept [#x01020304 #x05060708])
             => #u8(1 2 3 4 5 6 7 8))
      (check (encode-frame-payload frame-renew-result [0 #x0102])
             => #u8(0 0 0 0 0 0 0 0 1 2))
      (check (encode-frame-payload frame-auth [wire-tokens])
             => #u8(0 0 0 2 0 0 0 0 0 0 0 4 255 0 192 128))
      (def text (string (integer->char #xe9) (integer->char #x1f642)))
      (def hello (encode-frame-payload frame-hello
                                       [1 text wire-challenge #x0102030405060708 #x01020304 #x05060708 lease-mode-fixed]))
      (check (u8vector-length hello) => 61)
      (check (subu8vector hello 0 12) => #u8(0 1 0 0 0 6 195 169 240 159 153 130))
      (check (subu8vector hello 44 61) => #u8(1 2 3 4 5 6 7 8 1 2 3 4 5 6 7 8 0))
      (check (vector-ref (decode-frame-payload frame-hello hello) 1) => text))
    (test-case "golden one-way stream renewal payloads"
      (check (encode-frame-payload frame-stream-renew-offer [#x0102030405060708 1 2 wire-tokens])
             => #u8(1 2 3 4 5 6 7 8 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 2
                      0 0 0 2 0 0 0 0 0 0 0 4 255 0 192 128))
      (check (encode-frame-payload frame-stream-renew-auth [#x0102030405060708 #x090a0b0c])
             => #u8(1 2 3 4 5 6 7 8 9 10 11 12))
      (for-each
        (lambda (type)
          (check (encode-frame-payload type [#x0102030405060708]) => #u8(1 2 3 4 5 6 7 8)))
        [frame-stream-renew-commit frame-stream-renew-ack])
      (check (encode-frame-payload frame-stream-renew-abort [#x0102030405060708 #x090a])
             => #u8(1 2 3 4 5 6 7 8 9 10)))
    (test-case "lease modes are exactly 0 or 1 in all four layouts"
      (for-each
        (lambda (entry)
          (let ((type (car entry)) (prefix (cadr entry)))
            (for-each
              (lambda (mode)
                (let* ((fields (append prefix [mode]))
                       (bytes (encode-frame-payload type fields)))
                  (check (frame-payload-size type fields (ConnectionLimits)) => (u8vector-length bytes))
                  (check (decode-frame-payload type bytes) => (list->vector fields))))
              [lease-mode-fixed lease-mode-adaptive])
            (for-each
              (lambda (bad)
                (check-exception (encode-frame-payload type (append prefix [bad])) IOError?)
                (check-exception (frame-payload-size type (append prefix [bad]) (ConnectionLimits)) IOError?))
              [-1 2 255 256 wire-max64 0.0 1.0 1/2 +inf.0 +nan.0 #f #t 'fixed 'renewable 'connection])
            (let* ((bytes (encode-frame-payload type (append prefix [lease-mode-fixed])))
                   (last (- (u8vector-length bytes) 1)))
              (for-each
                (lambda (bad)
                  (u8vector-set! bytes last bad)
                  (check-exception (decode-frame-payload type bytes) IOError?))
                [2 127 255])
              ;; No legacy layout without the appended mode is accepted.
              (check-exception (encode-frame-payload type prefix) IOError?)
              (check-exception (decode-frame-payload type (subu8vector bytes 0 last)) IOError?))))
        [[frame-hello [1 "" wire-challenge 0 1 1]]
         [frame-open ["" 1 1 []]]
         [frame-renew-request [0 1 2]]
         [frame-renew-offer [0 1 2 wire-tokens]]]))
    (test-case "Unix AUTH suffix is explicit, fixed, and initial-only"
      (def tls (encode-frame-payload frame-auth [wire-tokens]))
      (def unix (encode-frame-payload frame-auth [wire-tokens wire-signature] unix?: #t))
      (check unix => (u8vector-append tls wire-signature))
      (check (decode-frame-payload frame-auth unix unix?: #t) => (vector wire-tokens wire-signature))
      (check-exception (decode-frame-payload frame-auth unix) IOError?)
      (check-exception (decode-frame-payload frame-auth tls unix?: #t) IOError?)
      (check-exception (encode-frame-payload frame-auth [wire-tokens wire-signature]) IOError?)
      (check-exception (encode-frame-payload frame-auth [wire-tokens] unix?: #t) IOError?)
      (for-each
       (lambda (size)
         (check-exception
          (encode-frame-payload frame-auth [wire-tokens (make-u8vector size)] unix?: #t) IOError?))
       [0 63 65])
      (check-exception
       (decode-frame-payload frame-auth (u8vector-append unix #u8(0)) unix?: #t) IOError?)
      (check (encode-frame-payload frame-renew-auth [0 0 wire-tokens] unix?: #t)
             => (encode-frame-payload frame-renew-auth [0 0 wire-tokens])))
    (test-case "impossible counts and lengths, malformed UTF-8"
      (for-each
        (lambda (bytes) (check-exception (decode-frame-payload frame-auth bytes) IOError?))
        [#u8(255 255 255 255) #u8(0 0 0 1) #u8(0 0 0 2 0 0 0 0)
            #u8(0 0 0 1 255 255 255 255) #u8(0 0 0 1 0 0 0 2 1)])
      (check-exception (decode-frame-payload frame-open #u8(255 255 255 255)) IOError?)
      (for-each
        (lambda (invalid)
          (def bytes (make-u8vector (+ 21 (u8vector-length invalid)) 0))
          (u8vector-uint-set! bytes 0 (u8vector-length invalid) 'big 4)
          (subu8vector-move! invalid 0 (u8vector-length invalid) bytes 4)
          (u8vector-uint-set! bytes (+ 12 (u8vector-length invalid)) 1 'big 4)
          (check-exception (decode-frame-payload frame-open bytes) true))
        [#u8(128) #u8(192 128) #u8(226 130) #u8(237 160 128) #u8(244 144 128 128)]))
    (test-case "limits apply independently to header, decoding, and output sizing"
      (for-each
        (lambda (example)
          (let* ((type (car example)) (fields (cadr example))
                 (bytes (encode-frame-payload type fields)) (size (u8vector-length bytes))
                 (id (if (or (<= frame-open type frame-reset)
                             (<= frame-stream-renew-offer type frame-stream-renew-abort)) 1 0)))
            (when (> size 1)
              (let ((fits (ConnectionLimits hello-payload: size data-payload: size control-payload: size))
                    (small (ConnectionLimits hello-payload: (- size 1) data-payload: (- size 1)
                                             control-payload: (- size 1))))
                (check (encode-frame-payload type fields limits: fits) => bytes)
                (check (frame-payload-size type fields fits) => size)
                (check (decode-frame-payload type bytes limits: fits) => (list->vector fields))
                (check-exception (encode-frame-payload type fields limits: small) IOError?)
                (check-exception (frame-payload-size type fields small) IOError?)
                (check-exception (decode-frame-payload type bytes limits: small) IOError?)
                (check-exception
                 (decode-frame-header (encode-frame-header (test-wire-header type id size)) limits: small)
                 IOError?)))))
        wire-examples)
      (check-exception
       (decode-frame-header #u8(19 0 0 0 0 0 0 0 1 255 255 255 255)) IOError?)
      (check-exception
       (encode-frame-payload frame-auth [(make-list 20000 #u8())]) IOError?)
      (check-exception
       (encode-frame-payload frame-open [(make-string 65536 #\a) 0 1 [] lease-mode-fixed]) IOError?)
      (check-exception
       (encode-frame-payload frame-auth [wire-tokens wire-signature]
                             unix?: #t limits: (ConnectionLimits control-payload: 79)) IOError?)
      (check (u8vector-length
              (encode-frame-payload frame-auth [wire-tokens wire-signature]
                                    unix?: #t limits: (ConnectionLimits control-payload: 80))) => 80))
    (test-case "HELLO DATA and control use distinct configurable ceilings"
      (def limits (ConnectionLimits hello-payload: 55 data-payload: 2 control-payload: 4))
      (check (u8vector-length (encode-frame-payload frame-hello [1 "" wire-challenge 0 1 1 lease-mode-fixed]
                                                    limits: limits)) => 55)
      (for-each
        (lambda (entry)
          (let ((type (car entry)) (id (cadr entry)) (size (caddr entry)))
            (check (u8vector-length
                    (encode-frame-header (test-wire-header type id size) limits: limits)) => 13)
            (check-exception
             (encode-frame-header (test-wire-header type id (+ size 1)) limits: limits) IOError?)))
        [[frame-hello 0 55] [frame-data 1 2] [frame-auth 0 4]])
      (check (encode-frame-payload frame-data [#u8(1 2)] limits: limits) => #u8(1 2))
      (check-exception (encode-frame-payload frame-data [#u8(1 2 3)] limits: limits) IOError?)
      (check (encode-frame-payload frame-auth [[]] limits: limits) => #u8(0 0 0 0))
      (check-exception (encode-frame-payload frame-auth [[#u8()]] limits: limits) IOError?)
      (for-each
        (lambda (entry)
          (check-exception
           (encode-frame-header (test-wire-header (car entry) (cadr entry) (caddr entry))) IOError?))
        [[frame-hello 0 4097] [frame-data 1 16385] [frame-auth 0 65537]]))
    (test-case "decoded zero advertisements and windows are invalid"
      (def hello (encode-frame-payload frame-hello [1 "" wire-challenge 0 1 1 lease-mode-fixed]))
      (for-each
        (lambda (offset)
          (def bytes (u8vector-copy hello))
          (u8vector-uint-set! bytes offset 0 'big 4)
          (check-exception (decode-frame-payload frame-hello bytes) IOError?))
        [46 50])
      (def open (encode-frame-payload frame-open ["" 0 1 [] lease-mode-fixed]))
      (u8vector-uint-set! open 12 0 'big 4)
      (check-exception (decode-frame-payload frame-open open) IOError?))
    (test-case "positive values, reasons, field counts, numeric ranges"
      (for-each
        (lambda (type)
          (def prefix (if (memv type [frame-renew-abort frame-stream-renew-abort]) [0] []))
          (check-exception (encode-frame-payload type (append prefix [0])) IOError?)
          (check-exception (decode-frame-payload type (make-u8vector (if (null? prefix) 2 10) 0)) IOError?)
          (check (decode-frame-payload type (encode-frame-payload type (append prefix [65535])))
                 => (list->vector (append prefix [65535]))))
        [frame-reject frame-open-reject frame-reset frame-renew-abort frame-stream-renew-abort])
      (for-each
        (lambda (bad)
          (check-exception (encode-frame-payload frame-window-update [bad]) IOError?)
          (check-exception (encode-frame-payload frame-open-accept [0 bad]) IOError?)
          (check-exception (encode-frame-payload frame-open ["" 0 bad [] lease-mode-fixed]) IOError?)
          (check-exception (encode-frame-payload frame-hello [1 "" wire-challenge 0 bad 1 lease-mode-fixed]) IOError?)
          (check-exception (encode-frame-payload frame-hello [1 "" wire-challenge 0 1 bad lease-mode-fixed]) IOError?))
        [0 -1 #x100000000 1.0 1/2])
      (check-exception (decode-frame-payload frame-window-update #u8(0 0 0 0)) IOError?)
      (check-exception (decode-frame-payload frame-open-accept (make-u8vector 8 0)) IOError?)
      (check-exception (encode-frame-payload frame-data [#u8()]) IOError?)
      (check-exception (decode-frame-payload frame-data #u8()) IOError?)
      (check-exception (encode-frame-header (test-wire-header frame-data 1 0)) IOError?)
      (check-exception (encode-frame-payload frame-confirm [0]) IOError?)
      (check-exception (encode-frame-payload frame-accept []) IOError?)
      (for-each
        (lambda (bad)
          (check-exception (encode-frame-payload frame-accept [bad]) IOError?)
          (check-exception (encode-frame-payload frame-stream-renew-auth [0 bad]) IOError?))
        [-1 #x100000000 0.0])
      (for-each
        (lambda (bad)
          (check-exception (encode-frame-payload frame-renew-ack [bad]) IOError?)
          (check-exception (encode-frame-payload frame-stream-renew-commit [bad]) IOError?)
          (check-exception (encode-frame-payload frame-stream-renew-ack [bad]) IOError?))
        [-1 (+ wire-max64 1) 0.0])
      (for-each
        (lambda (bad)
          (check-exception (encode-frame-payload frame-renew-result [0 bad]) IOError?)
          (check-exception (encode-frame-payload frame-hello [bad "" wire-challenge 0 1 1 lease-mode-fixed]) IOError?))
        [-1 65536 0.0])
      (check-exception (encode-frame-payload frame-hello [1 "" #u8() 0 1 1 lease-mode-fixed]) IOError?))))
