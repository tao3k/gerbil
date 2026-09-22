;;; -*- Gerbil -*-
;;; © Gerbil contributors
;;; Persistent keystore — durability, concurrency and hostile storage regressions
(import :std/test
        :std/error
        :std/io/interface
        :std/io/tempfile
        :std/os/device
        :std/os/file
        :std/os/fcntl
        :std/os/flock
        :std/misc/ports
        :std/misc/process
        :std/crypto/pkey
        :std/ensemble/ucan/did
        :std/ensemble/keystore
        ./crypto)
(export persistent-test)

;; Read a test-owned snapshot verbatim to detect unintended on-disk changes.
(def (test-read-snapshot (path : :string)) => :u8vector
  (call-with-input-file path read-all-as-u8vector))

;; Deliberately replace a fixture's contents for corruption and restoration tests;
;; this bypasses the backend's atomic publication and authentication paths.
(def (test-write-snapshot (path : :string) (bytes : :u8vector)) => :void
  (call-with-output-file [path: path truncate: #t permissions: #o600]
    (lambda (port) (write-subu8vector bytes 0 (u8vector-length bytes) port))))

;; Use argv, not a shell, and never repair modes in the implementation under test.
(def (test-chmod (path : :string) (mode : :string)) => :string
  (run-process ["chmod" mode path]))

(def (test-file-mode (path : :string)) => :fixnum
  (bitwise-and #o7777 (file-info-mode (file-info path))))

;; Recognize expected storage failures, unwrapping Gambit runtime exceptions
;; without treating unrelated programming errors as successful rejection tests.
(def (test-storage-error? (e : :t)) => :boolean
  (if (RuntimeException? e)
    (test-storage-error? (@ e exception))
    (or (IOError? e) (ContractViolation? e) (os-exception? e)
        (file-exists-exception? e) (no-such-file-or-directory-exception? e))))

;; Close even an unexpectedly successful open before reporting a failed assertion.
(def (test-reject-open (path : :string) (pass : :u8vector)) => :void
  (check-exception
    (let (store (open-persistent-keystore path pass))
      (unwind-protect (void) (Closer-close store)))
    test-storage-error?))

(def persistent-test
  (test-suite "persistent keystore"
    (test-case "shared readers and exclusive writers"
      (call-with-temporary-directory "gerbil-keystore-lock-"
        (lambda (root)
           (let ((pass (make-u8vector 12 45)) (store #f) (probe #f) (threads []))
            ;; Wait for worker startup before checking whether advisory locking
            ;; blocks it, and retain the thread for cleanup after lock release.
            (def (worker proc)
              (let* ((caller (current-thread))
                     (thread (spawn (lambda ()
                                      (thread-send caller (current-thread))
                                      (proc)))))
                (set! threads (cons thread threads))
                (check (thread-receive 5 'timed-out) => thread)
                thread))
            (unwind-protect
              (let (path (path-expand "vault" root))
                (set! store (create-persistent-keystore path pass))
                (set! probe (open-file-device (path-expand "lock" path) O_RDWR 0))
                (flock/block probe LOCK_SH)
                (let (reader (worker (lambda () (Keystore-list-keys store))))
                  (check (thread-join! reader 5 'timed-out) => []))
                (let (writer (worker (lambda () (Keystore-generate-key! store))))
                  (check (thread-join! writer 0.1 'blocked) => 'blocked)
                  (flock/block probe LOCK_UN)
                  (let (did (thread-join! writer 5 'timed-out))
                    (check (string? did) => #t)
                    (flock/block probe LOCK_EX)
                    (let (reader (worker (lambda () (Keystore-list-keys store))))
                      (check (thread-join! reader 0.1 'blocked) => 'blocked)
                      (flock/block probe LOCK_UN)
                      (check (thread-join! reader 5 'timed-out) => [did])))))
              (begin
                (when probe (flock/block probe LOCK_UN))
                (for-each (lambda (thread) (thread-join! thread 10)) threads)
                (when store (Closer-close store))
                (when probe (device-close probe))
                (wipe-keystore-bytes! pass)))))))
    (test-case "create/open, relative paths, durable merges and thread serialization"
      (call-with-temporary-directory "gerbil-keystore-"
        (lambda (root)
          (let ((pass (make-u8vector 12 42)) (seed (make-u8vector 32 11))
                (handles []) (keys []) (threads []))
            (def (own store) (set! handles (cons store handles)) store)
            (def (own-key key) (set! keys (cons key keys)) key)
            ;; Keep handles and files alive until all concurrent writers finish.
            (def (join-all)
              (for-each (lambda (thread) (thread-join! thread 30)) threads))
            (unwind-protect
              (parameterize ((current-directory root))
                (check-exception
                  (let (s (open-persistent-keystore "missing" pass))
                    (unwind-protect (void) (Closer-close s)))
                   test-storage-error?)
                (check (file-exists? "missing") => #f)
                (let* ((a (own (create-persistent-keystore "vault" pass)))
                       (priv (own-key (bytes->ed25519-private-key seed)))
                       (did (private-key->did priv)))
                  (check (Keystore-list-keys a) => [])
                  (check (Keystore-put-private-key! a priv) => did)
                  (let (before (test-read-snapshot "vault/keys"))
                    (check-exception
                      (let (s (create-persistent-keystore "vault" pass))
                        (unwind-protect (void) (Closer-close s)))
                       test-storage-error?)
                    (test-reject-open "vault" '#u8(98 97 100))
                    (check (test-read-snapshot "vault/keys") => before))
                  (let* ((b (own (open-persistent-keystore "vault" pass)))
                         (did-b (Keystore-generate-key! b))
                         (did-a (Keystore-generate-key! a)))
                    (check (Keystore-list-keys b) => (list-sort string<? [did did-a did-b]))
                    ;; Two independent handles plus two workers sharing one handle.
                    ;; Every worker returns its DIDs; compare the exact union, not just a count.
                    (set! threads
                      (map (lambda (store)
                             (spawn (lambda ()
                                      (let loop ((n 3) (ids []))
                                        (if (zero? n) ids
                                          (let (id (Keystore-generate-key! store))
                                            (thread-yield!)
                                            (loop (- n 1) (cons id ids))))))))
                           [a b a]))
                    (let* ((results (map (lambda (thread) (thread-join! thread 30)) threads))
                           (expected (list-sort string<? (apply append [did did-a did-b] results))))
                      (check (Keystore-list-keys a) => expected)
                      (check (Keystore-list-keys b) => expected)
                      (Closer-close a)
                      (Closer-close b)
                      (Closer-close a)
                      (let* ((reopened (own (open-persistent-keystore "vault" pass)))
                             (key (own-key (Keystore-get-private-key reopened did)))
                             (bytes (private-key->private-bytes key)))
                        (unwind-protect (check bytes => seed) (wipe-keystore-bytes! bytes))
                        (check (Keystore-list-keys reopened) => expected)
                        (check (Keystore-put-private-key! reopened key) => did)
                        (check (Keystore-list-keys reopened) => expected))))
                  (check (test-file-mode "vault") => #o700)
                  (check (test-file-mode "vault/keys") => #o600)
                  (check (test-file-mode "vault/lock") => #o600)
                  (check pass => (make-u8vector 12 42))))
              (begin
                ;; Workers must finish before handles and their directory are released.
                (join-all)
                (for-each Closer-close handles)
                (for-each (lambda (key) (foreign-release! (PrivKey-key key))) keys)
                (wipe-keystore-bytes! seed)
                (wipe-keystore-bytes! pass)))))))
    (test-case "unsafe modes/symlinks and corrupt snapshots are rejected without overwrite"
      (call-with-temporary-directory "gerbil-keystore-unsafe-"
        (lambda (root)
          (let* ((path (path-expand "vault" root))
                 (key-path (path-expand "keys" path))
                 (lock-path (path-expand "lock" path))
                 (alias (path-expand "alias" root))
                 (pass (make-u8vector 12 43)) (store #f))
            (unwind-protect
              (begin
                (set! store (create-persistent-keystore path pass))
                (Keystore-generate-key! store)
                (let ((good (test-read-snapshot key-path)) (ids (Keystore-list-keys store)))
                  (for-each
                    (lambda (entry)
                      (let ((target (car entry)) (unsafe (cadr entry)) (safe (caddr entry)))
                        (unwind-protect
                          (begin
                            (test-chmod target unsafe)
                            (test-reject-open path pass)
                            (check (test-file-mode target) => (string->number unsafe 8))
                            (check (test-read-snapshot key-path) => good))
                          (test-chmod target safe))))
                    [[path "0755" "0700"] [key-path "0644" "0600"]
                     [lock-path "0644" "0600"]])
                  (unwind-protect
                    (begin
                      (create-symbolic-link path alias)
                      (test-reject-open alias pass)
                      (check-exception
                        (let (s (create-persistent-keystore alias pass))
                          (unwind-protect (void) (Closer-close s)))
                         test-storage-error?))
                    (when (file-exists? alias) (delete-file alias)))
                  (for-each
                    (lambda (target)
                      (let (saved (string-append target ".saved"))
                        (rename-file target saved)
                        (unwind-protect
                          (begin
                            (create-symbolic-link saved target)
                            (test-reject-open path pass)
                            (check (test-read-snapshot key-path) => good))
                          (begin
                            (when (file-exists? target) (delete-file target))
                            (rename-file saved target)))))
                    [key-path lock-path])
                  (let (tampered (u8vector-copy good))
                    (u8vector-set! tampered 60 (bitwise-xor 1 (u8vector-ref tampered 60)))
                    (for-each
                      (lambda (bad)
                        (unwind-protect
                          (begin
                            (test-write-snapshot key-path bad)
                            (test-reject-open path pass)
                            (check-exception (Keystore-list-keys store)
                                              test-storage-error?)
                            (check-exception (Keystore-generate-key! store)
                                              test-storage-error?)
                            (check (test-read-snapshot key-path) => bad))
                          (test-write-snapshot key-path good))
                        (check (Keystore-list-keys store) => ids))
                      [tampered (subu8vector good 0 20)
                       (make-u8vector (+ keystore-max-file-size 1) 0)]))
                  (check (test-file-mode key-path) => #o600)
                  (check pass => (make-u8vector 12 43))))
              (begin
                (when store (Closer-close store))
                (wipe-keystore-bytes! pass)))))))))
