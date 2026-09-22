;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Authenticated file-backed keystore with shared readers and exclusive writers
(import :std/error
        :std/interface
        :std/os/device
        :std/os/file
        :std/os/fcntl
        :std/os/flock
        :std/io/interface
        :std/io/file
        :std/io/tempfile
        :std/crypto/random
        ./interface
        ./crypto
        ./store)
(export create-persistent-keystore
        open-persistent-keystore)

;; Persistent backend state. The lock device is stable across snapshot renames;
;; lock-info records its identity so replacing the sidecar is detected.
(defstruct (persistent-keystore-impl keystore)
  ((path :- :string)
   (owner :- :t)
   (keys :- :string)
   (lock-path :- :string)
   (directory :- :t)
   (lock :- :t)
   (lock-info :- :t))
  final: #t transparent: #f)

;; Path-based checks assume trusted ancestors and exclude symlink/replacement
;; races and hostile same-uid processes. Final directory and file symlinks are
;; rejected. Requires local POSIX advisory locking and directory fsync support;
;; do not share inherited handles across fork. No chmod repairs user files.
;; Failed creation can leave a partial directory; opening one may fail before
;; initialization finishes. Failed saves may leave owner-only ciphertext temps.

;; Create a new owner-only keystore directory and sync its empty snapshot and
;; directory entries. The parent must exist and path must not already exist.
;; Passphrase bytes are borrowed; initialization failure may leave a partial store.
(def (create-persistent-keystore (path : :string)
                                 (passphrase : :u8vector))
  => Keystore
  (make-persistent-keystore path passphrase #t))

;; Open and authenticate an existing store using borrowed passphrase bytes.
;; Never create missing storage or repair unsafe paths, ownership, or permissions.
(def (open-persistent-keystore (path : :string)
                               (passphrase : :u8vector))
  => Keystore
  (make-persistent-keystore path passphrase #f))

;; Return non-following file metadata only for the requested type, owner, and
;; exact permission bits. Regular files must have one link. Reject symlinks and
;; unsafe metadata; path-replacement races are outside the backend's threat model.
(def (keystore-check-path (path : :string)
                          (type : :symbol)
                          (mode : :fixnum)
                          (owner : :fixnum))
  => :file-info
  (let (info (file-info path #f))
    (unless (and (eq? (file-info-type info) type)
                 (fx= (fxand (file-info-mode info) #o7777) mode)
                 (fx= (file-info-owner info) owner)
                 (or (eq? type 'directory) (fx= (file-info-number-of-links info) 1)))
      (raise-io-error persistent-keystore "unsafe keystore file type, owner or permissions"))
    info))

;; Determine the owner assigned to files created by this process using an
;; exclusively created temporary file, which the helper closes and deletes.
(def (keystore-current-owner) => :fixnum
  ;; user-name trusts environment variables, not the effective uid. A new
  ;; exclusive file supplies the actual owner without adding a native binding.
  (let (owner 0)
    (call-with-temporary-file "keystore-owner-"
      (lambda (io)
        (let (path (FileDevice-path (FileIO-dev io)))
          (set! owner (file-info-owner (file-info path #f)))
          path)))
    owner))

;; Attempt to close both storage devices, including after partial construction.
;; No snapshot is written; the base or constructor handles secret cleansing.
(def (persistent-keystore-close-storage! (self : persistent-keystore-impl)) => :void
  (unwind-protect!
    (when self.lock (device-close self.lock))
    (when self.directory (device-close self.directory))))

;; Cooperatively acquire the stable sidecar in shared or exclusive mode, then
;; revalidate directory permissions and lock identity. If validation fails,
;; release the acquired lock before propagating the error.
(def (persistent-keystore-lock! (self : persistent-keystore-impl)
                                (write? : :boolean))
  => :void
  (flock/block self.lock (if write? LOCK_EX LOCK_SH))
  (let (validated? #f)
    (unwind-protect!
      (begin
        (keystore-check-path self.path 'directory #o700 self.owner)
        (let (info (keystore-check-path self.lock-path 'regular #o600 self.owner))
          (unless (and (= (file-info-device info) (file-info-device self.lock-info))
                       (= (file-info-inode info) (file-info-inode self.lock-info)))
            (raise-io-error persistent-keystore "keystore lock file replaced")))
        (set! validated? #t))
      (unless validated? (persistent-keystore-unlock! self)))))

;; Release the advisory lock; let unlock failures propagate to transaction cleanup.
(def (persistent-keystore-unlock! (self : persistent-keystore-impl)) => :void
  (flock/block self.lock LOCK_UN))

;; Read fresh ciphertext while a shared or exclusive storage lock is held.
;; Validate metadata and bound allocation before reading, then reject size changes.
;; Close the reader on every exit; authentication is the base store's responsibility.
(def (persistent-keystore-load-snapshot (self : persistent-keystore-impl)) => :u8vector
  (let (size (file-info-size (keystore-check-path self.keys 'regular #o600 self.owner)))
    (unless (<= size keystore-max-file-size)
      (raise-io-error persistent-keystore "keystore snapshot exceeds size limit"))
    (let (bytes (make-u8vector size))
      (using (reader (open-file-reader self.keys flags: O_NOFOLLOW) : Reader)
        (unwind-protect!
          (when (fx> size 0)
            (unless (fx= (reader.read bytes 0 size size) size)
              (raise-io-error persistent-keystore "truncated keystore snapshot")))
          (reader.close)))
      (unless (= size (file-info-size (file-info self.keys #f)))
        (raise-io-error persistent-keystore "keystore snapshot changed during read"))
      bytes)))

;; Under an exclusive lock, write ciphertext to a private same-directory temp,
;; fsync it, publish by rename, then fsync the directory. Initial publication
;; forbids replacement. After publication, sync errors report committed state;
;; before publication, cleanup removes the temp when possible without altering keys.
(def (persistent-keystore-save-snapshot! (self : persistent-keystore-impl)
                                         (snapshot : :u8vector)
                                         (initial? : :boolean := #f))
  => :void
  (unless (fx<= (u8vector-length snapshot) keystore-max-file-size)
    (raise-io-error persistent-keystore "keystore snapshot exceeds size limit"))
  (unless initial? (keystore-check-path self.keys 'regular #o600 self.owner))
  (let ((tmp (make-temporary-file-name (path-expand ".keys-" self.path)))
        (io #f) (published? #f))
    (unwind-protect!
      (begin
        (set! io (open-output-file-io tmp (fxior O_WRONLY O_CREAT O_EXCL O_NOFOLLOW) #o600))
        (keystore-check-path tmp 'regular #o600 self.owner)
        (using (writer io : Writer) (writer.write snapshot))
        (file-device-sync (FileIO-dev io))
        (device-close (FileIO-dev io))
        ;; Initial publication must not replace an existing snapshot.
        (rename-file tmp self.keys (not initial?))
        (set! published? #t)
        (with-catch
          (lambda (e)
            (raise-io-error persistent-keystore
              "snapshot committed; directory fsync failed" e))
          (lambda () (file-device-sync self.directory))))
      (when io
        (unwind-protect!
          (device-close (FileIO-dev io))
          (unless published? (delete-file tmp))))))
  (void))

(implement KeystoreBackend persistent-keystore-impl
  (load-snapshot __persistent-keystore-load-snapshot)
  (save-snapshot! __persistent-keystore-save-snapshot!)
  (lock! __persistent-keystore-lock!)
  (unlock! __persistent-keystore-unlock!)
  (close-storage! __persistent-keystore-close-storage!))

(@implement Keystore persistent-keystore-impl)
(@implement Closer persistent-keystore-impl)

;; Shared constructor: validate inputs, acquire resources, create or load a salt,
;; and derive the encryption key under the appropriate storage lock. Initialize
;; the cached backend view and authenticate before transferring ownership to the
;; returned Keystore. Failure cleanses secrets and closes acquired devices.
(def (make-persistent-keystore (path : :string)
                               (passphrase : :u8vector)
                               (create? : :boolean))
  => Keystore
  (unless (and (not (string-index path #\nul))
               (not (member (path-strip-directory path) '("" "." ".."))))
    (raise-contract-violation persistent-keystore "expected keystore directory path"))
  (let* ((path (path-expand path)) (owner (keystore-current-owner))
         (keys (path-expand "keys" path)) (lock-path (path-expand "lock" path))
          (self (persistent-keystore-impl
                 #f #f (make-mutex 'keystore) #f #f
                 path owner keys lock-path #f #f #f))
         (transferred? #f))
    (using (self :- persistent-keystore-impl)
      ;; keystore-init! must unwind its transaction lock before devices close.
      (unwind-protect
        (begin
          (when create? (create-directory [path: path permissions: #o700]))
          (keystore-check-path path 'directory #o700 owner)
          (set! self.directory (open-file-device path (fxior O_RDONLY O_DIRECTORY O_NOFOLLOW) 0))
          (unless create? (keystore-check-path lock-path 'regular #o600 owner))
          (set! self.lock
            (open-file-device lock-path
              (fxior O_RDWR O_NOFOLLOW (if create? (fxior O_CREAT O_EXCL) 0)) #o600))
          (set! self.lock-info (keystore-check-path lock-path 'regular #o600 owner))
          (persistent-keystore-lock! self create?)
          (unwind-protect!
            (if create?
              (begin
                (set! self.salt (make-u8vector 32))
                (random-bytes! self.salt)
                (set! self.key (derive-keystore-key passphrase self.salt))
                (file-device-sync self.lock)
                (persistent-keystore-save-snapshot!
                 self (encrypt-keystore self.key self.salt []) #t)
                ;; Persist the new directory entry as well as its contents.
                ;; This opener does not add O_NOATIME to a possibly foreign-owned parent.
                (with-catch
                  (lambda (e)
                    (raise-io-error persistent-keystore
                      "keystore created; parent directory fsync failed" e))
                  (lambda ()
                    (let (parent (open-input-file/lock (path-directory path)
                                   flags: (fxior O_RDONLY O_DIRECTORY)))
                      (unwind-protect!
                        (file-device-sync parent)
                        (device-close parent))))))
              (begin
                (set! self.salt (keystore-snapshot-salt (persistent-keystore-load-snapshot self)))
                (set! self.key (derive-keystore-key passphrase self.salt))))
            (persistent-keystore-unlock! self))
          ;; Authenticate again under a shared lock before transferring ownership
          ;; of salt, key and both devices to the returned public interface.
          (let (store (keystore-init! self))
            (set! transferred? #t)
            store))
        (unless transferred?
          (unwind-protect!
            (begin
              (when self.key (wipe-keystore-bytes! self.key))
              (when self.salt (wipe-keystore-bytes! self.salt)))
            (persistent-keystore-close-storage! self)))))))
