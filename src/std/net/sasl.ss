;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; SASL authentication mechanisms

(import :std/error
        :std/encoding/base64
        :std/crypto/digest
        :std/crypto/hmac
        :std/crypto/random)
(export ScramContext?
        scram-sha-1-begin
        scram-sha-256-begin
        scram-client-first-message
        scram-client-first-server-message!
        scram-client-final-message
        scram-client-final-server-message!)

;; SCRAM RFC 5802
(defstruct ScramContext
  ((h    :- :procedure)  ; digest function (sha1/sha256)
   (hmac :- :procedure)  ; hmac function (hmac-sha1/hmac-sha256)
   (user :- :string)
   (pass :- :string)
   (nonce :- :string := #f)
   (cfm  :- :string := #f)
   (sfm  :- :string := #f)
   (r    :- :string := #f)
   (s    :- :u8vector := #f)
   (i    :- :fixnum := 0)
   (p    :- :string := #f)
   (v    :- :string := #f))
  constructor: :init!
  final: #t)

(defmethod {:init! ScramContext}
  (lambda (self (h :- :procedure) (hmac :- :procedure) (user : :string) (pass : :string))
    => :void
    (set! self.h h)
    (set! self.hmac hmac)
    (set! self.user user)
    (set! self.pass pass)
    (set! self.i 0)))

(def (scram-sha-1-begin (user : :string) (pass : :string))
  => ScramContext
  (ScramContext sha1 hmac-sha1 user pass))

;; SCRAM-SHA-256 RFC 7677
(def (scram-sha-256-begin (user : :string) (pass : :string))
  => ScramContext
  (ScramContext sha256 hmac-sha256 user pass))

(def (scram-client-first-message (ctx : ScramContext) (nonce :? :string := #f))
  => :string
  (def (first-message cfm)
    (string-append "n,," cfm))

  (let* ((nonce (or nonce (base64-encode (random-bytes 16))))
         (cfm (string-append "n=" ctx.user
                              ",r=" nonce)))
    (set! ctx.cfm cfm)
    (set! ctx.nonce nonce)
    (first-message cfm)))

(def (scram-client-first-server-message! (ctx : ScramContext) (sfm : :string))
  => :void
  (let* ((msg (scram-parse-message sfm))
         (r (or (aget "r" msg)
                (fail scram-client-first-server-message!
                      "Invalid server message; missing nonce" msg)))
         (s (base64-decode
             (or (aget "s" msg)
                 (fail scram-client-first-server-message!
                       "Invalid server message; missing salt" msg))))
         (i (string->number
             (or (aget "i" msg)
                 (fail scram-client-first-server-message!
                       "Invalid server message; missing iteration count" msg))))
         (nonce ctx.nonce))
    (unless (and (fx> (string-length r) (string-length nonce))
                 (string-prefix? nonce r))
      (fail scram-client-first-server-message!
            "Invalid server nonce" r nonce))
    (set! ctx.sfm sfm)
    (set! ctx.r r)
    (set! ctx.s s)
    (set! ctx.i i)
    (void)))

(def (scram-client-final-message (ctx : ScramContext))
  => :string
  (def (final-message csm p)
    (string-append csm ",p=" p))

  (with ((ScramContext h hmac user passwd _ cfm sfm r s i) ctx)
    (let* ((csm           (string-append "c=biws,r=" r))
           (salted-passwd (scram-Hi hmac passwd s i))
           (client-key    (hmac salted-passwd (string->utf8 "Client Key")))
           (stored-key    (h client-key))
           (auth-message  (string->utf8 (string-append cfm "," sfm "," csm)))
           (client-sign   (hmac stored-key auth-message))
           (client-proof  (bytes-xor client-key client-sign))
           (p             (base64-encode client-proof))
           (server-key    (hmac salted-passwd (string->utf8 "Server Key")))
           (server-sign   (hmac server-key auth-message))
           (v             (base64-encode server-sign)))
      (set! ctx.p p)
      (set! ctx.v v)
      (final-message csm p))))

(def (scram-client-final-server-message! (ctx : ScramContext) (smsg : :string))
  => :void
  (let* (msg (scram-parse-message smsg))
    (cond
     ((aget "e" msg)
      => (lambda (what)
           (fail scram-client-final-server-message!
                 "Authentication failed" what)))
     ((aget "v" msg)
      => (lambda (v)
           (let (verifier ctx.v)
             (unless (equal? v verifier)
               (fail scram-client-final-server-message!
                     "Authentication failed; invalid server signature" v verifier)))))
     (else
      (fail scram-client-final-server-message!
            "Malformed server message; missing verifier or error" msg)))))

(def (scram-Hi (hmac : :procedure) (passwd : :string) (salt : :u8vector) (count : :fixnum))
  => :u8vector
  (let* ((key (string->utf8 passwd))
         (u1 (hmac key (u8vector-append salt '#u8(0 0 0 1)))))
    (let lp ((i 1) (ui u1) (hi u1))
      (if (fx< i count)
        (let* ((ui+1 (hmac key ui))
               (hi+1 (bytes-xor ui+1 hi)))
          (lp (fx1+ i) ui+1 hi+1))
        hi))))

(def (bytes-xor (a : :u8vector) (b : :u8vector))
  => :u8vector
  (let ((len (u8vector-length a))
        (len-b (u8vector-length b)))
    (if (fx= len len-b)
      (let (res (make-u8vector len))
        (let lp ((i 0))
          (if (fx< i len)
            (begin
              (##u8vector-set! res i (##fxxor (##u8vector-ref a i) (##u8vector-ref b i)))
              (lp (fx1+ i)))
            res)))
      (BUG 'bytes-xor "Cannot xor bytes; length mismatch" a b))))

(def (scram-parse-message (msg : :string))
  => :list
  (try
   (map (lambda (str)
          (cond
           ((string-index str #\=)
            => (lambda (ix)
                 (cons (substring str 0 ix)
                       (substring str (fx1+ ix) (string-length str)))))
           (else
            (cons "str" #f))))
       (string-split msg #\,))
   (catch (e)
     (fail scram-parse-message "Malformed message" msg e))))

(defrule (fail where what irritants ...)
  (raise-io-error where what irritants ...))
