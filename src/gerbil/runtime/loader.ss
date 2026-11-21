;;; -*- Gerbil -*-
;;; © vyzo
;;; Gerbil module loader
prelude: "../core"
package: gerbil/runtime
namespace: #f

(export #t)
(import "gambit" "util" "hash" "thread")

(def __modules (make-hash-table))
(def __load-mx (make-mutex 'loader))
(def __load-cv (make-condition-variable 'loader))
(def __load-path [])
(def __load-order (make-hash-table))
(def __load-order-next 1)

(def (load-path) => :list
  __load-path)

(def (add-load-path! . paths)
  (unless (andmap string? paths)
    (error "bad load path; expected list of paths" paths))
  (for-each (lambda (p) (set! __load-path (cons p __load-path)))
            (reverse! paths)))

(def (set-load-path! (paths : :list))
  (unless (andmap string? paths)
    (error "bad load path; expected list of paths" paths))
  (set! __load-path paths))

;; Members keep their public entry points. The Reader can publish their
;; canonical procedures through the shared native image before first use.
(def __reader-socket-members
  '("std/io/socket/sockaddr~0" "std/io/socket/socket~0" "std/io/socket/basic~0"
    "std/io/socket/client~0" "std/io/socket/stream~0" "std/io/socket/server~0"
    "std/io/socket/datagram~0"))
(def __reader-socket-publication "reader-socket-split/publication")
(def __reader-socket-implementation "reader-socket-split/implementation")
(def __reader-socket-split (make-parameter #f))

(def (load-module (requested : :string))
  (mutex-lock! __load-mx)
  (let* ((member? (and (string-prefix? "std/io/socket/" requested)
                       (member requested __reader-socket-members)))
         (implementation? (equal? requested __reader-socket-implementation))
         (publication (and (or member? implementation?)
                           (hash-get __modules __reader-socket-publication)))
         (grouped?
          (and member?
               (or publication (__reader-socket-split))
               (or publication
                   (and (string? (hash-get __modules "std/io/socket/types~0"))
                        (not (ormap (cut hash-get __modules <>) __reader-socket-members))))))
         (modpath (if grouped? __reader-socket-publication requested)))
    (def (requested-path path)
      (if grouped?
        (path-expand (string-append requested ".o1")
                     (path-directory (path-strip-trailing-directory-separator (path-directory path))))
        path))
    (def (find-selected-image)
      (if (and implementation? (string? publication))
        (path-expand "implementation.o1" (path-directory publication))
        (__find-library-module modpath)))
    (cond
     ((hash-get __modules modpath)
      => (lambda (state)
           (cond
            ((or (eq? 'builtin state) (string? state))
             (mutex-unlock! __load-mx)
             (requested-path state))
            ((eq? 'loading state)
             (mutex-unlock! __load-mx __load-cv)
             (load-module requested))
            ((and (pair? state) (eq? (car state) 'error))
             (mutex-unlock! __load-mx)
             (raise (cadr state)))
            (else
             (mutex-unlock! __load-mx)
             (error "inernal error; unexpected loading state" state)))))
     ((find-selected-image)
      => (lambda (path)
           (hash-put! __modules modpath 'loading)
           (mutex-unlock! __load-mx)
           (with-catch
               (lambda (exn)
                 (mutex-lock! __load-mx)
                 (hash-put! __modules modpath `(error ,exn))
                 (condition-variable-broadcast! __load-cv)
                 (mutex-unlock! __load-mx)
                 (raise exn))
             (lambda ()
               (let (loaded-path (load path))
                 (mutex-lock! __load-mx)
                 (hash-put! __modules modpath loaded-path)
                 (unless (hash-get __load-order modpath)
                   (hash-put! __load-order modpath __load-order-next)
                   (set! __load-order-next (1+ __load-order-next)))
                 (condition-variable-broadcast! __load-cv)
                 (mutex-unlock! __load-mx)
                 (requested-path loaded-path))))))
     (else
      (mutex-unlock! __load-mx)
      (error "module not found" requested)))))

(def (reload-module! (modpath : :string))
  (mutex-lock! __load-mx)
  (cond
   ((hash-get __modules modpath)
    => (lambda (state)
         (cond
          ((eq? state 'builtin)
           (mutex-unlock! __load-mx)
           (error "cannot reload builtin module" modpath))
          ((eq? 'loading state)
           (mutex-unlock! __load-mx __load-cv)
           (error "module is still loading"))
          ((string? state)
           (let (latest-path (__find-library-module modpath))
             (if (or (equal? (path-extension state) ".scm")
                     (not (equal? state latest-path)))
               (begin
                 (hash-remove! __modules modpath)
                 (mutex-unlock! __load-mx)
                 (load-module modpath))
               (mutex-unlock! __load-mx))))
          ((and (pair? state) (eq? (car state) 'error))
           (hash-remove! __modules modpath)
           (mutex-unlock! __load-mx)
           (load-module modpath))
          (else
           (mutex-unlock! __load-mx)
           (error "inernal error; unexpected loading state" state)))))
    (else
     (mutex-unlock! __load-mx)
     (load-module modpath))))

(def (__find-library-module modpath)
  (def (find-compiled-file npath)
    (let (basepath (##string-append npath ".o"))
      (let lp ((current #f) (n 1))
        (let (next (##string-append basepath (number->string n)))
          (if (##file-exists? next)
            (lp next (##fx+ n 1))
            current)))))

  (def (find-source-file npath)
    (let ((spath (##string-append npath ".scm")))
      (and (##file-exists? spath) spath)))

  (let lp ((rest (load-path)))
    (match rest
      ([dir . rest]
       (let ((npath (path-expand modpath (path-expand dir))))
         (cond
          ((find-compiled-file npath) => path-normalize)
          ((find-source-file npath) => path-normalize)
          (else (lp rest)))))
      (else #f))))

(def (list-modules)
  => :list
  (mutex-lock! __load-mx)
  (let (result (hash->list __modules))
    (mutex-unlock! __load-mx)
    (:- result :list)))

(def (module-load-order (modpath : :string))
  => :integer
  (mutex-lock! __load-mx)
  (let (ord
        (cond
         ((eq? (hash-get __modules modpath) 'builtin) 0)
         ((hash-get __load-order modpath))
         (else #f)))
    (mutex-unlock! __load-mx)
    (if (exact-integer? ord)
      ord
      (abort! (error "unknown module load order" module: modpath)))))
