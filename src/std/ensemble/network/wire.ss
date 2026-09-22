;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Ensemble frame envelopes and bounded binary payload codecs
(import :std/error
        :std/number/misc
        :std/string/utf8
        :std/vector/u8vector
        ./config)
(export (struct-out FrameHeader)
        frame-header-size
        frame-hello
        frame-auth
        frame-accept
        frame-confirm
        frame-reject
        frame-open
        frame-open-accept
        frame-open-reject
        frame-data
        frame-window-update
        frame-fin
        frame-reset
        frame-renew-request
        frame-renew-result
        frame-renew-offer
        frame-renew-auth
        frame-renew-commit
        frame-renew-ack
        frame-renew-abort
        frame-stream-renew-offer
        frame-stream-renew-auth
        frame-stream-renew-commit
        frame-stream-renew-ack
        frame-stream-renew-abort
        lease-mode-fixed
        lease-mode-adaptive
        reason-ok
        reason-closed
        reason-refused
        reason-auth-failed
        reason-lifetime
        reason-limit
        reason-timeout
        reason-cancelled
        reason-duplicate
        reason-version
        reason-protocol
        reason-internal
        reason-no-credentials
        reason-headroom
        encode-frame-header
        decode-frame-header
        encode-frame-payload
        frame-payload-size
        decode-frame-payload)

(def frame-header-size   13)
(def frame-hello         #x01)
(def frame-auth          #x02)
(def frame-accept        #x03)
(def frame-confirm       #x04)
(def frame-reject        #x05)
(def frame-open          #x10)
(def frame-open-accept   #x11)
(def frame-open-reject   #x12)
(def frame-data          #x13)
(def frame-window-update #x14)
(def frame-fin           #x15)
(def frame-reset         #x16)
(def frame-renew-request #x20)
(def frame-renew-result  #x21)
(def frame-renew-offer   #x22)
(def frame-renew-auth    #x23)
(def frame-renew-commit  #x24)
(def frame-renew-ack     #x25)
(def frame-renew-abort   #x26)

(def frame-stream-renew-offer  #x30)
(def frame-stream-renew-auth   #x31)
(def frame-stream-renew-commit #x32)
(def frame-stream-renew-ack    #x33)
(def frame-stream-renew-abort  #x34)

;; OPEN uses the adaptive bit for connection-linked policy, not a new wire value.
(def lease-mode-fixed    0)
(def lease-mode-adaptive 1)

(def reason-ok             0)
(def reason-closed         1)
(def reason-refused        2)
(def reason-auth-failed    3)
(def reason-lifetime       4)
(def reason-limit          5)
(def reason-timeout        6)
(def reason-cancelled      7)
(def reason-duplicate      8)
(def reason-version        9)
(def reason-protocol       10)
(def reason-internal       11)
(def reason-no-credentials 12)
(def reason-headroom       13)

;; Construction does not authorize allocation. The codecs validate ranges, scope,
;; and limits independently, including for headers made with generated setters.
(defclass FrameHeader
  ((type           : :fixnum)
   (stream-id      : :integer)
   (payload-length : :integer))
  final: #t)

;; Descriptors are private; callers supply fields in the documented wire order.
(def (payload-layout (type  : :fixnum)
                     (unix? : :boolean))
  => :list
  (case type
    ((#x01) '(u16 string challenge u64 positive32 positive32 mode))
    ((#x02) (if unix? '(bundle signature) '(bundle)))
    ((#x03) '(u32))
    ((#x04 #x15) '())
    ((#x05 #x12 #x16) '(reason))
    ((#x10) '(string u64 positive32 bundle mode))
    ((#x11) '(u32 positive32))
    ((#x13) '(data))
    ((#x14) '(positive32))
    ((#x20) '(u64 u64 u64 mode))
    ((#x21) '(u64 u16))
    ((#x22) '(u64 u64 u64 bundle mode))
    ((#x23) '(u64 u32 bundle))
    ((#x24) '(u64 u32))
    ((#x25) '(u64))
    ((#x26) '(u64 reason))
    ((#x30) '(u64 u64 u64 bundle))
    ((#x31) '(u64 u32))
    ((#x32 #x33) '(u64))
    ((#x34) '(u64 reason))
    (else
     (raise-io-error payload-layout "Unknown frame type" type))))

(def (check-wire-uint (value   : :t)
                      (width   : :fixnum)
                      (minimum : :fixnum))
  => :void
  (unless (and (case width
                 ((2) (uint16? value))
                 ((4) (uint32? value))
                 ((8) (uint64? value))
                 (else #f))
               (>= value minimum))
    (raise-io-error check-wire-uint "Invalid unsigned wire integer" width minimum)))

(def (payload-limit (type   : :fixnum)
                    (limits : ConnectionLimits))
  => :integer
  (cond
   ((fx= type frame-hello) limits.hello-payload)
   ((fx= type frame-data) limits.data-payload)
   (else limits.control-payload)))

(def (validate-header (header : FrameHeader)
                      (limits : ConnectionLimits))
  => :void
  (let* ((type header.type)
         (id header.stream-id)
         (size header.payload-length)
         (layout (payload-layout type #f)))
    (check-wire-uint id 8 0)
    (check-wire-uint size 4 0)
    (unless (if (or (fx<= frame-open type frame-reset)
                    (fx<= frame-stream-renew-offer type frame-stream-renew-abort))
              (> id 0)
              (= id 0))
      (raise-io-error validate-header "Invalid frame stream ID scope" type id))
    (when (> size (payload-limit type limits))
      (raise-io-error validate-header "Invalid frame payload length" type size))
    ;; Length/count prefixes contribute four bytes even for empty fields. AUTH
    ;; uses the TLS layout here: only the payload decoder knows about Unix proofs.
    (let loop ((rest layout) (minimum 0) (variable? #f))
      (if (null? rest)
        (unless (if variable? (>= size minimum) (= size minimum))
          (raise-io-error validate-header "Impossible frame payload length" type size minimum))
        (let (kind (car rest))
          (loop (cdr rest)
                (fx+ minimum
                     (case kind
                       ((mode) 1)
                       ((u16 reason) 2)
                       ((u32 positive32 string bundle) 4)
                       ((u64) 8)
                       ((challenge) 32)
                       ((signature) 64)
                       ((data) 1)))
                (or variable? (memq kind '(string bundle data)))))))))

;; Decode exactly the envelope before allocating or reading its claimed payload.
(def (decode-frame-header (bytes          : :u8vector)
                          limits: (limits : ConnectionLimits := (ConnectionLimits)))
  => FrameHeader
  (unless (fx= (u8vector-length bytes) frame-header-size)
    (raise-io-error decode-frame-header "Expected 13-byte frame header"))
  (let (header (FrameHeader type: (u8vector-ref bytes 0)
                            stream-id: (&u8vector-uint-ref/be bytes 1 8)
                            payload-length: (&u8vector-uint-ref/be bytes 9 4)))
    (validate-header header limits)
    header))

(def (encode-frame-header (header         : FrameHeader)
                          limits: (limits : ConnectionLimits := (ConnectionLimits)))
  => :u8vector
  (validate-header header limits)
  (let (bytes (make-u8vector frame-header-size))
    (u8vector-set! bytes 0 header.type)
    (&u8vector-uint-set!/be bytes 1 header.stream-id 8)
    (&u8vector-uint-set!/be bytes 9 header.payload-length 4)
    bytes))

;; The same traversal measures/validates first, then writes to an exact buffer.
;; In the measuring pass even UTF-8 conversion is deferred until the total fits.
(def (write-payload-fields (layout :  :list)
                           (fields :  :list)
                           (output :? :u8vector)
                           (limit  :  :fixnum))
  => :fixnum
  (def pos 0)
  (def (reserve (size :- :fixnum))
    ;; Check remaining capacity before addition, so the cursor cannot overflow.
    (when (fx> size (fx- limit pos))
      (raise-io-error write-payload-fields "Encoded payload exceeds limit" limit))
    (let (start pos)
      (set! pos (fx+ pos size))
      start))
  (def (number value
               (width   :- :fixnum)
               (minimum :- :fixnum))
    (check-wire-uint value width minimum)
    (let (start (reserve width))
      (when output (&u8vector-uint-set!/be output start value width))))
  (def (blob (value   :  :u8vector)
             expected
             (prefix? :- :boolean))
    (let (size (u8vector-length value))
      (when (and expected (not (fx= size expected)))
        (raise-io-error write-payload-fields "Invalid fixed byte length" size expected))
      (when prefix? (number size 4 0))
      (let (start (reserve size))
        (when output (subu8vector-move! value 0 size output start)))))
  (def (bundle (tokens : :list))
    (number (length tokens) 4 0)
    (for-each (lambda (token) (blob token #f #t)) tokens))
  (unless (fx= (length layout) (length fields))
    (raise-io-error write-payload-fields "Wrong payload field count"))
  (for-each
    (lambda ((kind :- :symbol)
             value)
      (case kind
        ((mode)
         (unless (and (fixnum? value) (fx<= lease-mode-fixed value lease-mode-adaptive))
           (raise-io-error write-payload-fields "Invalid lease mode"))
         (let (start (reserve 1))
           (when output (u8vector-set! output start value))))
        ((u16) (number value 2 0))
        ((u32) (number value 4 0))
        ((u64) (number value 8 0))
        ((reason) (number value 2 1))
        ((positive32) (number value 4 1))
        ((challenge) (blob value 32 #f))
        ((signature) (blob value 64 #f))
        ((bundle) (bundle value))
        ((string)
         (let (size (string-utf8-length value))
           (number size 4 0)
           (let (start (reserve size))
             (when output
               (subu8vector-move! (string->utf8 value) 0 size output start)))))
        ((data)
         (blob value #f #f)
         (when (fxzero? pos)
           (raise-io-error write-payload-fields "Empty DATA payload")))))
    layout fields)
  pos)

;; unix? is explicit local transport state, never an option decoded from the peer.
;; A payload codec has no stream ID or phase information; validate its header too.
(def (frame-payload-size (type   : :fixnum)
                         (fields : :list)
                         (limits : ConnectionLimits))
  => :fixnum
  (write-payload-fields (payload-layout type #f) fields #f
                        (:- (min (payload-limit type limits) (##greatest-fixnum)) :fixnum)))

(def (encode-frame-payload (type           : :fixnum)
                           (fields         : :list)
                           limits: (limits : ConnectionLimits := (ConnectionLimits))
                           unix?: (unix?   : :boolean := #f))
  => :u8vector
  (let* ((layout (payload-layout type unix?))
         ;; Output buffers use fixnum indices even if a wire ceiling is larger.
         (limit (:- (min (payload-limit type limits) (##greatest-fixnum)) :fixnum))
         (size (write-payload-fields layout fields #f limit))
         (output (make-u8vector size)))
    (write-payload-fields layout fields output size)
    output))

;; No token deserialization occurs here. Prefixes must fit remaining bytes before
;; copying; bundle counts must be possible even with all zero-length candidates.
(def (decode-frame-payload (type           : :fixnum)
                           (bytes          : :u8vector)
                           limits: (limits : ConnectionLimits := (ConnectionLimits))
                           unix?: (unix?   : :boolean := #f))
  => :vector
  (def layout (payload-layout type unix?))
  (def end (u8vector-length bytes))
  (def pos 0)
  (def (take (size :- :integer))
    (when (> size (fx- end pos))
      (raise-io-error decode-frame-payload "Truncated payload field" pos size end))
    (let (start pos)
      (set! pos (fx+ pos size))
      start))
  (def (number (width   :- :fixnum)
               (minimum :- :fixnum))
    (let (value (&u8vector-uint-ref/be bytes (take width) width))
      (when (< value minimum)
        (raise-io-error decode-frame-payload "Zero reason, window, or credit"))
      value))
  (def (blob (size :- :integer))
    (let (start (take size))
      (subu8vector bytes start pos)))
  (def (bundle)
    (let (count (number 4 0))
      (when (> count (fxquotient (fx- end pos) 4))
        (raise-io-error decode-frame-payload "Impossible token count" count))
      (let loop ((left count :- :fixnum) (tokens '()))
        (if (fxzero? left)
          (reverse! tokens)
          (let (token (blob (number 4 0)))
            (loop (fx1- left) (cons token tokens)))))))
  (when (> end (payload-limit type limits))
    (raise-io-error decode-frame-payload "Payload exceeds limit" type end))
  (let (fields
        (map (lambda ((kind :- :symbol))
               (case kind
                 ((mode)
                  (let (value (u8vector-ref bytes (take 1)))
                    (when (fx> value lease-mode-adaptive)
                      (raise-io-error decode-frame-payload "Invalid lease mode" value))
                    value))
                 ((u16) (number 2 0))
                 ((u32) (number 4 0))
                 ((u64) (number 8 0))
                 ((reason) (number 2 1))
                 ((positive32) (number 4 1))
                 ((challenge) (blob 32))
                 ((signature) (blob 64))
                 ((bundle) (bundle))
                 ((string) (utf8->string (blob (number 4 0))))
                 ((data)
                  (when (fxzero? end)
                    (raise-io-error decode-frame-payload "Empty DATA payload"))
                  (blob end))))
             layout))
    (unless (fx= pos end)
      (raise-io-error decode-frame-payload "Trailing payload bytes" pos end))
    (list->vector fields)))
