;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Encrypted in-memory keystore
(import :std/error
        :std/interface
        :std/io/interface
        :std/crypto/random
        ./interface
        ./crypto
        ./store)
(export make-memory-keystore)

;; The backend retains only its current ciphertext; the base owns the derived key.
(defstruct (memory-keystore-impl keystore)
  ((snapshot :? :u8vector := #f))
  final: #t transparent: #f)

;; Create an empty store with a random salt and a passphrase-derived encryption key.
;; The passphrase bytes are borrowed, never retained or modified. Construction
;; failure wipes the derived material; successful close discards the ciphertext.
(def (make-memory-keystore (passphrase : :u8vector)) => Keystore
  (let ((salt (make-u8vector 32)) (key #f) (snapshot #f) (success? #f))
    (unwind-protect!
      (begin
        (random-bytes! salt)
        (set! key (derive-keystore-key passphrase salt))
        (set! snapshot (encrypt-keystore key salt []))
        (let (store (keystore-init!
                     (memory-keystore-impl salt: salt
                                           key: key
                                           mutex: (make-mutex 'keystore)
                                           closed?: #f
                                           this: #f
                                           snapshot: snapshot)))
          (set! success? #t)
          store))
      (unless success?
        (set! snapshot #f)
        (unwind-protect!
          (when key (wipe-keystore-bytes! key))
           (wipe-keystore-bytes! salt))))))

;; Borrow the current ciphertext while the base mutex prevents replacement.
(def (memory-keystore-load-snapshot (self : memory-keystore-impl)) => :u8vector
  (or self.snapshot
      (raise-io-closed memory-keystore-load-snapshot "Keystore snapshot is closed")))

;; Retain the newly encrypted snapshot; the caller must not mutate it afterward.
(def (memory-keystore-save-snapshot! (self : memory-keystore-impl)
                                     (snapshot : :u8vector))
  => :void
  (set! self.snapshot snapshot))

;; No additional storage lock is needed: the base mutex serializes all access.
(def (memory-keystore-lock! (self : memory-keystore-impl)
                            (write? : :boolean))
  => :void
  (void))

;; Match the no-op storage acquisition; the base releases its own mutex.
(def (memory-keystore-unlock! (self : memory-keystore-impl)) => :void
  (void))

;; Discard retained ciphertext after the base has cleansed its derived material.
(def (memory-keystore-close-storage! (self : memory-keystore-impl)) => :void
  (set! self.snapshot #f))

(implement KeystoreBackend memory-keystore-impl
  (load-snapshot __memory-keystore-load-snapshot)
  (save-snapshot! __memory-keystore-save-snapshot!)
  (lock! __memory-keystore-lock!)
  (unlock! __memory-keystore-unlock!)
  (close-storage! __memory-keystore-close-storage!))

(@implement Closer memory-keystore-impl)
(@implement Keystore memory-keystore-impl)
