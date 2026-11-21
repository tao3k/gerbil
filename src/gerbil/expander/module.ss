;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil.expander modules
prelude: "../core"
package: gerbil/expander
namespace: gx

(export #t)
(import "common" "stx" "core" "top")
(extern namespace: #f __compile-top __compile-top-source)
(declare (not safe))

(def __module-registry (make-hash-table))
(def __module-pkg-cache (make-hash-table))

;; A context key can hold its prelude and the outstanding phase visits from
;; its first expansion. Path and module-id entries still hold contexts.
(defstruct module-phase-visits (prelude pending activation)
  final: #t print: ())

(def current-defer-compiled-phase-images? (make-parameter #f))
(def current-module-phase-visits (make-parameter #f))

(def (deferred-phase-visits)
  (and (current-defer-compiled-phase-images?) (current-module-phase-visits)))

(def (record-module-phase-visit! visits visit (image #f))
  (set-box! visits (cons (cons image visit) (unbox visits))))

(def (complete-module-phase-visits! ctx)
  (let (state (hash-get __module-registry ctx))
    (when (module-phase-visits? state)
      (let (pending (&module-phase-visits-pending state))
        (when pending
          (force pending)
          (set! (&module-phase-visits-pending state) #f))))))

(def (use-module-context ctx)
  (when (module-context? ctx)
    (if (current-defer-compiled-phase-images?)
      (let ((visits (current-module-phase-visits))
            (state (hash-get __module-registry ctx)))
        (when (and visits (module-phase-visits? state)
                   (&module-phase-visits-pending state))
          (record-module-phase-visit! visits (lambda () (complete-module-phase-visits! ctx)))))
      (complete-module-phase-visits! ctx)))
  ctx)

;; The original import would read these contexts without visiting a module.
;; A context with outstanding phase visits is not ready.
(def (cached-phase-origin path)
  (def (ready ctx)
    (and (module-context? ctx)
         (let (state (hash-get __module-registry ctx))
           (or (not (module-phase-visits? state))
               (not (&module-phase-visits-pending state))))
         ctx))
  (cond
   ((hash-get __module-registry path) => ready)
   (else
    (match path
      ([root . nested]
       (let lp ((ctx (ready (hash-get __module-registry root))) (rest nested))
         (and ctx
              (match rest
                ([id . tail]
                 (let (binding (resolve-identifier-binding id 0 ctx))
                   (and (syntax-binding? binding)
                        (lp (ready (&syntax-binding-e binding)) tail))))
                ([] ctx)))))
      (else #f)))))

(def (compiled-phase-visit image origins)
  (let ((ctx (current-expander-context))
        (phi (current-expander-phi))
        (marks (current-expander-marks))
        (path (current-expander-path))
        (import (current-expander-module-import)))
    (lambda ()
      (parameterize ((current-expander-context ctx)
                     (current-expander-phi phi)
                     (current-expander-marks marks)
                     (current-expander-path path)
                     (current-expander-module-import
                      (if (null? origins) import
                        (lambda (path reload?)
                          (cond ((and (not reload?) (assoc path origins)) => cdr)
                                (else (import path reload?)))))))
        (load-module image)))))

(def (load-compiled-phase-image image (origins []))
  (cond
   ((deferred-phase-visits)
    => (lambda (visits)
         (let (contexts
               (if (null? origins) []
                 (and (eq? (current-expander-module-import) core-import-module)
                      (let/cc unavailable
                        (map (lambda (path)
                               (let (ctx (cached-phase-origin path))
                                 (if ctx (cons path ctx) (unavailable #f))))
                             origins)))))
           (if contexts
             (record-module-phase-visit! visits (compiled-phase-visit image contexts) image)
             (load-module image)))))
   (else (load-module image))))

(def (make-compiled-phase-expander images id)
  (def (transformer)
    (let (value (##global-var-ref (##make-global-var id)))
      ;; Compiled syntax bindings also carry type information and constants.
      (when (or (##unbound? value) (expander? value) (expander-context? value))
        (error "compiled transformer is not available" id images))
      value))
  (cond
   ((deferred-phase-visits)
    => (lambda (visits)
         (let (expander
               (make-deferred-user-expander
                (lambda ()
                  (for-each (lambda (image)
                              (cond ((assoc image (unbox visits)) => (lambda (entry) ((cdr entry))))
                                    (else (load-module image))))
                            images)
                  (transformer))
                (current-expander-context) (fx1- (current-expander-phi))))
           (record-module-phase-visit!
            visits (lambda () (set! (&expander-e expander) (transformer))))
           expander)))
   (else (transformer))))


(defstruct module-import (source name phi weak?)
  final: #t print: (name))
(defstruct module-export (context key phi name weak?)
  final: #t print: (name))

(defstruct import-set (source phi imports)
  final: #t print: (source phi))
(defstruct export-set (source phi exports)
  final: #t print: (source phi))

(defclass (import-expander user-expander) ()
  constructor: :init!)
(defclass (export-expander user-expander) ()
  constructor: :init!)
(defclass (import-export-expander import-expander export-expander) ()
  constructor: :init!)

(def current-import-expander-phi
  (make-parameter #f))
(def current-export-expander-phi
  (make-parameter #f))
(def current-module-reader-path
  (make-parameter #f))
(def current-module-reader-args
  (make-parameter #f))

(def source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))

(def (call-with-input-source-file path fun)
  (call-with-input-file [path: path . source-file-settings] fun))

(defmethod {:init! module-context}
  (lambda (self id super ns path)
    (struct-instance-init! self id (make-hash-table-eq) super #f #f
                           ns path [] [] #f #f)))

(defmethod {:init! prelude-context}
  (lambda (self ctx (root #f))
    (let (super (or root (core-context-root) (make-root-context)))
      (if ctx
        (let ((id   (expander-context-id ctx))
              (path (module-context-path ctx))
              (in   (map core-module-export->import
                         (module-context-export ctx)))
              (e    (delay-atomic (eval-module ctx))))
          (struct-instance-init! self id (make-hash-table-eq size: (length in))
                                 super #f #f
                                 path in e)
          (for-each (cut core-bind-weak-import! <> self) in))
        (struct-instance-init! self #f (make-hash-table-eq)
                               super #f #f
                               #f [] #f)))))

(def (import-export-expander-init! self e)
  (struct-instance-init! self
                         e (current-expander-context) (fx1- (current-expander-phi))))

(defmethod {:init! import-expander}
  import-export-expander-init!)

(defmethod {:init! export-expander}
  import-export-expander-init!)

(defmethod {:init! import-export-expander}
  import-export-expander-init!)

(defmethod {apply-import-expander import-expander}
  (cut core-apply-user-expander <> <> 'apply-import-expander))
(defmethod {apply-export-expander export-expander}
  (cut core-apply-user-expander <> <> 'apply-export-expander))

(def (module-source-path ctx)
  (let* ((path (module-context-path ctx))
         (path (if (pair? path)
                 (last path)
                 path)))
    (and (string? path) path)))

(def (import-module path (reload? #f) (eval? #f))
  (let (ctx ((current-expander-module-import) path reload?))
    (when (and ctx eval?)
      (eval-module ctx))
    ctx))

(def (eval-module mod)
  ((current-expander-module-eval) mod))

(def (core-eval-module obj)
  (def (force-e getf e)
    (parameterize ((current-expander-context e)
                   (current-expander-phi 0))
      (force (getf e))))

  (let recur ((e obj))
    (cond
     ((module-context? e)
      (let (root (registered-reader-activation e))
        (cond
         ((and root (not (current-defer-compiled-phase-images?))
               (registered-phase-zero?) (selected-sdk-layout? root)
               (native-phase-replay?) (not (current-expander-macro-observer)))
          (parameterize ((current-defer-compiled-phase-images? #t)
                           (__reader-socket-split (selected-reader-socket-split? root)))
            (recur e)))
         (else
          (unless (current-defer-compiled-phase-images?)
            (complete-module-phase-visits! e))
          (cond ((core-context-prelude e) => recur))
          (force-e module-context-e e)))))
     ((prelude-context? e)
      (force-e prelude-context-e e))
     ((stx-string? e)
      (recur (import-module (core-resolve-module-path e))))
     ((core-library-module-path? e)
      (recur (import-module (core-resolve-library-module-path e))))
     (else
      (error "cannot eval module" obj)))))

(def (core-context-prelude (ctx (current-expander-context)))
  (let lp ((e ctx))
    (cond
     ((or (module-context? e)
          (local-context? e))
      (lp (&phi-context-super e)))
     ((prelude-context? e) e)
     (else #f))))

(def (core-module->prelude-context ctx)
  (unless (current-defer-compiled-phase-images?)
    (complete-module-phase-visits! ctx))
  (let (cached (hash-get __module-registry ctx))
    (cond
     ((module-phase-visits? cached)
      (or (&module-phase-visits-prelude cached)
          (let (pre (make-prelude-context ctx))
            (set! (&module-phase-visits-prelude cached) pre)
            pre)))
     (cached cached)
     (else
      (let (pre (make-prelude-context ctx))
        (hash-put! __module-registry ctx pre)
        pre)))))

;; A verified build plan can supply the inputs to this expansion without
;; opening the interface again. Reloads always read the current source.
(def current-expander-module-plan (make-parameter #f))

;; The installation selects a single plan at a fixed entry in the SDK.
;; A Reader import never searches the module or package directories for plans.
(def current-registered-reader (make-parameter #f))
(def current-reader-projected-contexts (make-parameter #f))

(def (reader-projected-path? path)
  (let (contexts (current-reader-projected-contexts))
    (and contexts (hash-key? contexts path))))

(def (registered-projection? body)
  (and (vector? body) (= (vector-length body) 2)
       (eq? (vector-ref body 0) 'scoped-runtime-projection)))

(extern namespace: #f __registered-sdk-protected? __find-library-module __eval-import)
(begin-foreign
  (c-declare "
#include <sys/stat.h>

static int gerbil_registered_sdk_protected(const char *path) {
#if defined(__APPLE__)
  struct stat info;
  return lstat(path, &info) == 0 && !S_ISLNK(info.st_mode) &&
    (info.st_flags & (UF_IMMUTABLE | SF_IMMUTABLE)) != 0;
#else
  return 0;
#endif
}")
  (define __registered-sdk-protected?
    (c-lambda (nonnull-char-string) bool "gerbil_registered_sdk_protected")))

(def (registered-reader-activation ctx)
  (let (state (hash-get __module-registry ctx))
    (and (module-phase-visits? state) (&module-phase-visits-activation state))))

(def (normalized-directory path)
  (let ((n (string-length path)))
    (if (and (> n 1) (string-suffix? "/" path)) (substring path 0 (fx1- n)) path)))

(def (selected-sdk-library-root)
  (normalized-directory (path-normalize (path-expand "lib" (gerbil-home)))))

(def (selected-sdk-layout? root)
  (def interface-extensions '(".ssi" ".ss" ".sld" ".scm"))
  (def image-extensions '(".o1" ".scm"))

  (def (same-provider? entry earlier extensions)
    (and (member (path-extension entry) extensions)
         (let (stem (path-expand (path-strip-extension entry) earlier))
           (ormap (lambda (extension) (file-exists? (string-append stem extension)))
                  extensions))))

  ;; Check only branches with a provider in the selected SDK. The sealed
  ;; Reader may use std and gerbil, including deferred phase and runtime images.
  (def (shadowed-tree? earlier installed interfaces? images?)
    (and (file-exists? earlier) (file-exists? installed)
         (case (file-info-type (file-info installed #f))
           ((symbolic-link) #t)
           ((directory)
            (or (not (eq? (file-info-type (file-info earlier #t)) 'directory))
                (ormap (lambda (entry)
                         (or (and interfaces? (same-provider? entry earlier interface-extensions))
                             (and images? (same-provider? entry earlier image-extensions))
                             (shadowed-tree? (path-expand entry earlier)
                                             (path-expand entry installed)
                                             interfaces? images?)))
                       (directory-files installed))))
           (else #f))))

  (def (shadows-sdk? directory)
    (let* ((prefix (core-library-package-path-prefix directory))
           (package (and prefix (normalized-directory prefix))))
      ;; Runtime images use the raw load path. Interface resolution strips a
      ;; gerbil.pkg prefix before searching a package directory.
      (or (shadowed-tree? (path-expand "std" directory) (path-expand "std" root) (not prefix) #t)
          (shadowed-tree? (path-expand "gerbil" directory) (path-expand "gerbil" root) (not prefix) #t)
          (and package
               (or (member package '("std" "gerbil"))
                   (string-prefix? "std/" package) (string-prefix? "gerbil/" package))
               (shadowed-tree? directory (path-expand package root) #t #f)))))

  (with-catch
   (lambda (_) #f)
   (lambda ()
     (let loop ((paths (load-path)))
       (match paths
         ([directory . rest]
          (cond
           ((not (file-exists? directory)) (loop rest))
           ((equal? root (normalized-directory (path-normalize directory))) #t)
           (else (and (not (shadows-sdk? directory)) (loop rest)))))
         (else #f))))))

(extern namespace: #f __reader-socket-split __reader-socket-members
        __reader-socket-publication __reader-socket-implementation)

;; All raw member entries must share the protected carrier. A loaded
;; member makes the ordinary evaluator keep its existing publication.
(def (selected-reader-socket-split? root)
  (with-catch
   (lambda (_) #f)
   (lambda ()
     (let* ((publication (path-expand (string-append __reader-socket-publication ".o1") root))
            (implementation (path-expand (string-append __reader-socket-implementation ".o1") root)))
       (and (equal? publication (__find-library-module __reader-socket-publication))
            (equal? implementation (__find-library-module __reader-socket-implementation))
            (__registered-sdk-protected? publication)
            (__registered-sdk-protected? implementation)
            (__registered-sdk-protected? (normalized-directory (path-directory publication)))
            (let (info (file-info publication #t))
              (andmap
               (lambda (image)
                 (let* ((path (path-expand (string-append image ".o1") root))
                        (state (file-info path #t))
                        (owner (substring image 0 (fx- (string-length image) 2)))
                        (stamp (string->symbol (string-append owner "::timestamp"))))
                   (and (equal? path (__find-library-module image))
                        (__registered-sdk-protected? path)
                        (equal? (##file-info-device info) (##file-info-device state))
                        (equal? (##file-info-inode info) (##file-info-inode state))
                        (##unbound? (##global-var-ref (##make-global-var stamp))))))
               __reader-socket-members)))))))

(def (registered-sdk-stamp path)
  (let (info (file-info path #t))
    [(file-info-size info) (##file-info-device info) (##file-info-inode info)
     (time->seconds (##file-info-last-change-time info))]))

(def (selected-reader-inputs root reader)
  (or (read-selected-reader-inputs root reader "gerbil/reader-private-plan.bin")
      (read-selected-reader-inputs root reader "gerbil/reader-plan.bin")))

(def (read-selected-reader-inputs root reader filename)
  (with-catch
   (lambda (_) #f)
   (lambda ()
     (let ((registration (path-expand filename root))
           (projected (make-hash-table))
           (checked (make-hash-table))
           (table (make-hash-table))
           (prefix (string-append root "/")))
       (def (protected? path)
         (cond
          ((hash-get checked path))
          ((and (or (equal? path root) (string-prefix? prefix path))
                (__registered-sdk-protected? path)
                (let (parent (normalized-directory (path-directory path)))
                  (if (equal? path root)
                    (__registered-sdk-protected? parent)
                    (protected? parent))))
           (hash-put! checked path #t)
           #t)
          (else #f)))
       (and (protected? registration)
            (let* ((size (file-info-size (file-info registration #t)))
                   (bytes (make-u8vector size)))
              (call-with-input-file registration
                (lambda (port)
                  (and (= (read-subu8vector bytes 0 size port) size)
                       (match (u8vector->object bytes)
                         (['gerbil-selected-reader-v1 expected guards providers rows]
                          (and (equal? reader expected)
                               (pair? guards) (= (length providers) 9) (= (length rows) 74)
                               (andmap (match <>
                                         ([path stamp]
                                          (and (protected? path)
                                               (equal? stamp (registered-sdk-stamp path))))
                                         (else #f)) guards)
                               (andmap (match <>
                                         ([name expected globals]
                                          (and (equal? expected (__find-library-module name))
                                               (andmap (lambda (id)
                                                         (not (##unbound?
                                                               (##global-var-ref (##make-global-var id)))))
                                                       globals)))
                                         (else #f)) providers)
                               (andmap (lambda (row)
                                         (let ((path (car row)) (input (cdr row)))
                                           (and (protected? path)
                                                (vector? input) (= (vector-length input) 4)
                                                (protected? (vector-ref input 0))
                                                (not (hash-key? table path))
                                                (let (body (vector-ref input 3))
                                                  (and (or (not (registered-projection? body))
                                                           (and (not (hash-key? __module-registry path))
                                                                (not (hash-key? __module-registry (vector-ref input 1)))
                                                                (begin (hash-put! projected path #f) #t)))
                                                       (begin (hash-put! table path input) #t))))))
                                       rows)
                               (hash-key? table reader)
                               [table (and (positive? (hash-length projected)) projected)]))
                         (else #f)))))))))))

(def (registered-phase-zero?)
  (let (phase (current-import-expander-phi))
    (and (fxzero? (current-expander-phi))
         (or (not phase) (fxzero? phase)))))

(def (run-registered-reader-plan path root plan run)
  (with ([table projected] plan)
    (parameterize ((current-expander-module-plan (cut hash-get table <>))
                   (current-reader-projected-contexts projected)
                   (current-defer-compiled-phase-images? #t)
                   (current-registered-reader (cons path root)))
      (run))))

(def (registered-facade-reader-root path reload?)
  (let (registered (current-registered-reader))
    (and registered (not reload?) (registered-phase-zero?)
         (current-expander-module-plan) (current-defer-compiled-phase-images?)
         (string-suffix? "/std/encoding/json/reader.ssi" path)
         (let* ((root (cdr registered))
                (facade (path-expand "std/encoding/json.ssi" root))
                (parents (current-expander-path))
                (api-path [(path-expand "std/encoding/json/api.ssi" root) facade]))
           (and (equal? facade (car registered))
                (equal? path (path-expand "std/encoding/json/reader.ssi" root))
                ;; IO reexports can reach Reader before API's direct import.
                (or (equal? parents api-path)
                    (equal? parents (cons (path-expand "std/encoding/json/io.ssi" root)
                                          api-path)))
                root)))))

(def (with-registered-reader path reload? run)
  (cond
   ((registered-facade-reader-root path reload?)
    => (lambda (root)
         (parameterize ((current-registered-reader (cons path root)))
           (run))))
   ((or reload? (pair? (current-expander-path)) (current-expander-module-plan)
        (current-defer-compiled-phase-images?) (current-expander-compiling?)
        (not (registered-phase-zero?))
        (not (eq? (current-expander-module-import) core-import-module))
        (not (eq? (current-expander-module-eval) core-eval-module))
        (current-expander-macro-observer) (not (native-phase-replay?)))
    (run))
   ((or (string-suffix? "/std/encoding/json/reader.ssi" path)
        (string-suffix? "/std/encoding/json.ssi" path))
    (let* ((root (selected-sdk-library-root))
           (reader (path-expand "std/encoding/json/reader.ssi" root))
           (facade (path-expand "std/encoding/json.ssi" root)))
      (cond
       ((and (equal? path reader) (selected-sdk-layout? root)
             (selected-reader-inputs root reader))
        => (lambda (table) (run-registered-reader-plan path root table run)))
       ((and (equal? path facade) (selected-sdk-layout? root))
        (let ((context (hash-get __module-registry reader))
              (named-reader (hash-get __module-registry 'std/encoding/json/reader))
              (api (path-expand "std/encoding/json/api.ssi" root)))
          (cond
           ((and context (eq? context named-reader)
                 (equal? root (registered-reader-activation context)))
            (parameterize ((current-defer-compiled-phase-images? #t)
                           (current-registered-reader (cons path root)))
              (run)))
           ;; Use the original facade/API import order. In particular the
           ;; Reader is visited at its declaration, even on a cold facade.
           ((and (not context) (not named-reader)
                 (not (hash-key? __module-registry api))
                 (not (hash-key? __module-registry 'std/encoding/json/api))
                 (__registered-sdk-protected? api)
                 (__registered-sdk-protected? (path-expand "std/encoding/json/io.ssi" root))
                 (selected-reader-inputs root reader))
            => (lambda (table) (run-registered-reader-plan path root table run)))
           (else (run)))))
       (else (run)))))
   (else (run))))

;; Cache the proof only at one dynamic activation. A false entry is an
;; unfinished visit, so a cycle falls back to the ordinary evaluator.
(def (empty-runtime-import-frontier? root initial-phase)
  (let ((visited (make-hash-table-eq)) (count 0))
    (def (visit ctx phase)
      (let (states (or (hash-get visited ctx) []))
        (cond
         ((assv phase states) => cdr)
         ((fx>= count 20000) #f)
         (else
          (let (state (cons phase #f))
            (hash-put! visited ctx (cons state states))
            (set! count (fx1+ count))
            (and (andmap (cut empty-step? <> phase) (&module-context-import ctx))
                 (begin (set-cdr! state #t) #t)))))))
    (def (empty-step? in phase)
      (cond
       ((module-context? in) (not (fxzero? phase)))
       ((module-import? in)
        (let (effective (+ phase (&module-import-phi in)))
          (and (fixnum? effective) (not (fxzero? effective)))))
       ((import-set? in)
        (let (effective (+ phase (&import-set-phi in)))
          (and (fixnum? effective)
               (or (fxnegative? effective)
                   (and (fxpositive? effective) (visit (&import-set-source in) effective))))))
       (else #f)))
    (visit root initial-phase)))

(def (eval-registered-imports imports)
  (for-each (lambda (in)
              (unless (and (import-set? in) (fxpositive? (&import-set-phi in))
                           (empty-runtime-import-frontier? (&import-set-source in) (&import-set-phi in)))
                (__eval-import in)))
            imports))

(def (eval-imported-module-code ctx body)
  (let (registered (current-registered-reader))
    (if (and registered (eq? (expander-context-id ctx) 'gerbil/base)
             (equal? (&module-context-path ctx) (path-expand "gerbil/base.ssi" (cdr registered)))
             (member (path-expand "std/ffi.ssi" (cdr registered)) (current-expander-path))
             (native-phase-replay?) (not (current-expander-macro-observer)))
      (let (forms (syntax->list body))
        (if (and (pair? forms) (eq? (stx-e (car forms)) '%#begin)
                 (equal? (map (lambda (form) (stx-e (stx-car form))) (cdr forms))
                         '(%#import %#import %#export)))
          (begin
            (eval-registered-imports (cdr (stx-e (cadr forms))))
            (eval-registered-imports (cdr (stx-e (caddr forms))))
            (void))
          (eval-syntax* body)))
      (eval-syntax* body))))

(def (read-module-for-expansion path reload?)
  (let* ((plan (and (not reload?) (current-expander-module-plan)))
         (input (and plan (plan path))))
    (if (and (vector? input) (= (vector-length input) 4))
      (let (body (vector-ref input 3))
        (values (vector-ref input 0) (vector-ref input 1) (vector-ref input 2)
                (if (and (reader-projected-path? path) (registered-projection? body))
                  (vector-ref body 1)
                  body)))
      (core-read-module path))))

;; A prepared compiled interface has already classified its declarations.
;; First pass binds in source order. The ordinary expander elaborates
;; exports and pending expressions from the reversed first-pass stack.
;; Prepared phase operations still publish the canonical expanded forms.
;; A custom evaluator or compiler must see the corresponding ordinary call.
(def (native-phase-replay?)
  (let (compile (current-expander-compile))
    (and (eq? (current-expander-eval) ##eval)
         (or (eq? compile __compile-top-source) (eq? compile __compile-top)))))

;; Prepared phase operations already supply the two literal arguments.
;; The remaining expanded syntax records the original call for reflection.
(def (compiled-phase-literal-expression expression procedure first second)
  (let (source (stx-source expression))
    (def (quoted value)
      (core-quote-syntax (core-list '%#quote value) source))
    (core-quote-syntax
     (core-list '%#call
                (core-quote-syntax (core-list '%#ref (core-quote-syntax procedure source)) source)
                (quoted first) (quoted second))
     source)))

(def (replay-compiled-phase-visit operation)
  (match operation
    ([form expression image origins]
     (if (native-phase-replay?)
       (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
         (let (expanded
               (if (and (current-registered-reader) (not (current-expander-macro-observer)))
                 (compiled-phase-literal-expression expression 'gx#load-compiled-phase-image image origins)
                 (core-expand-expression expression)))
           (load-compiled-phase-image image origins)
           (core-quote-syntax (core-cons '%#begin-syntax [expanded]) (stx-source form))))
       (core-expand-begin-syntax% form)))))

(def (replay-compiled-phase-syntax operation)
  (match operation
    ([form binder expression images entry]
     (if (native-phase-replay?)
       (let-values (((expanded value)
                     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
                       (let (expanded
                             (if (and (current-registered-reader) (not (current-expander-macro-observer)))
                               (compiled-phase-literal-expression expression 'gx#make-compiled-phase-expander images entry)
                               (core-expand-expression expression)))
                         (values expanded (make-compiled-phase-expander images entry))))))
         (core-bind-syntax! binder value)
         (core-quote-syntax
          [(core-quote-syntax '%#define-syntax) (core-quote-syntax binder) expanded]
          (stx-source form)))
       (core-expand-define-syntax% form)))))

;; Copy only the lexical graph owned by the compiled expression. Keep
;; external phase contexts and canonical type metadata in the live SDK.
;; A copy has its own marks, local binding IDs and source locations.
(def (contract-local-context? context)
  (let loop ((ctx context))
    (or (local-context? ctx)
        (and (phi-context? ctx)
             (phi-context-down ctx)
             (loop (phi-context-down ctx))))))

(def (copy-expanded-load-contract expression before after refuse)
  (let (memo (make-hash-table-eq))
    (def (keep! old fresh)
      (hash-put! memo old fresh)
      fresh)
    (def (copy x)
      (cond
       ((hash-get memo x))
       ((pair? x)
        (let (out (keep! x (cons #f #f)))
          (set-car! out (copy (car x)))
          (set-cdr! out (copy (cdr x)))
          out))
       ((uninterned-symbol? x) (keep! x (gensym x)))
       ((string? x)
        (keep! x (if (equal? x before) after (string-copy x))))
       ((vector? x)
        (let* ((len (vector-length x)) (out (keep! x (make-vector len))))
          (let loop ((i 0))
            (when (< i len)
              (vector-set! out i (copy (vector-ref x i)))
              (loop (1+ i))))
          out))
       ((hash-table? x)
        (let (out (keep! x (hash-new x)))
          (hash-for-each (lambda (k v) (hash-put! out (copy k) (copy v))) x)
          out))
       ((and (expander-context? x) (not (contract-local-context? x))) x)
       ((##structure? x)
        (let* ((type (##structure-type x)) (id (##type-id type)))
          (case id
            ((gerbil/core#class-type-info::t) x)
            ((gerbil#AST::t gx#identifier-wrap::t gx#syntax-wrap::t gx#syntax-quote::t
              gx#local-context::t gx#phi-context::t gx#local-binding::t gx#syntax-binding::t
              gx#user-expander::t gx#expander-mark::t gerbil/core/contract~TypeEnv#type-env::t)
             (let ((out (keep! x (##structure-copy x))) (len (##structure-length x)))
               (let loop ((i 1))
                 (when (< i len)
                   (##unchecked-structure-set! out
                     (copy (##unchecked-structure-ref x i type copy-expanded-load-contract))
                     i type copy-expanded-load-contract)
                   (loop (1+ i))))
               out))
            (else (refuse #f)))))
       ((or (symbol? x) (number? x) (char? x) (keyword? x) (null? x)
            (boolean? x) (##type? x)) x)
       (else (refuse #f))))
    (copy expression)))



(def (compiled-load-form-literal form)
  (match form
    (['%#call ['%#ref 'load-module] ['%#quote (? string? literal)]] literal)
    (else #f)))

(def (ordinary-load-contract?)
  (def (stock-expression? key expand)
    (let (binding (resolve-identifier-binding key))
      (and (expression-form-binding? binding)
           (eq? (expander-e (syntax-binding-e binding)) expand))))
  (let* ((loader (resolve-identifier-binding 'load-module))
         (macro (and (runtime-binding? loader) (runtime-binding-macro loader)))
         (syntax (and macro (resolve-identifier-binding macro)))
         (expander (and (syntax-binding? syntax) (syntax-binding-e syntax))))
    (and (user-expander? expander)
         (eq? (binding-id loader) 'load-module)
         (eq? (binding-id syntax) '|[:0:]#@load-module|)
         (eq? (expander-context-id (user-expander-context expander)) 'gerbil/runtime/loader)
         (eq? (expander-e expander)
              (##global-var-ref (##make-global-var (binding-id syntax))))
         (stock-expression? '%#call core-expand-call%)
         (stock-expression? '%#ref core-expand-ref%)
         (stock-expression? '%#quote core-expand-quote%))))

(def (captured-load-contract? expanded literal)
  (match (syntax->datum expanded)
    (['%#let-values [[['modpath] ['%#quote name]]] _] (equal? name literal))
    (else #f)))

(def (core-expand-imported-module body ctx)
  (cond
   ((and (vector? body)
         (= 2 (vector-length body))
         (eq? 'compiled-interface-declarations (vector-ref body 0)))
    (parameterize ((current-expander-context ctx) (current-expander-phi 0))
      (core-bind-feature! 'gerbil-module #t)
      (let ((contract-template #f) (contract-literal #f))
        (def (expand-compiled-load form)
          (let (literal (and (native-phase-replay?)
                             (not (current-expander-macro-observer))
                             (compiled-load-form-literal form)))
            (cond
             ((and literal contract-template
                   (ordinary-load-contract?)
                   (call/cc
                    (lambda (refuse)
                      (copy-expanded-load-contract contract-template contract-literal literal refuse)))))
             (else
              (let (expanded (core-expand-expression form))
                (set! contract-template
                  (and literal (ordinary-load-contract?)
                       (captured-load-contract? expanded literal) expanded))
                (set! contract-literal literal)
                expanded)))))
        (let (pending
              (foldl
               (lambda (item reverse-forms)
                 (let* ((form (cdr item))
                        (action
                         (case (car item)
                           ((%#import) (cons 'ready (core-expand-import% form)))
                           ((phase-zero-import)
                            (cons 'ready (core-expand-import% (car form) #f (cdr form))))
                           ((phase-visit) (cons 'ready (replay-compiled-phase-visit form)))
                           ((phase-syntax) (cons 'ready (replay-compiled-phase-syntax form)))
                           ((%#define-runtime) (cons 'ready (core-expand-define-runtime% form)))
                           ((%#define-syntax) (cons 'ready (core-expand-define-syntax% form)))
                           ((%#define-alias) (cons 'ready (core-expand-define-alias% form)))
                           ((%#begin-syntax) (cons 'ready (core-expand-begin-syntax% form)))
                           ((%#export) (cons 'export form))
                           ((%#call) (cons 'expression form))
                           ((compiled-load) (cons 'compiled-load form))
                           (else (error "unsupported declaration operation" item)))))
                   (cons action reverse-forms)))
               [] (vector-ref body 1)))
          (foldl
           (lambda (entry forward-forms)
             (unless (eq? (car entry) 'compiled-load)
               (set! contract-template #f))
             (cons (case (car entry)
                     ((export) (core-expand-export% (cdr entry)))
                     ((expression) (core-expand-expression (cdr entry)))
                     ((compiled-load) (expand-compiled-load (cdr entry)))
                     (else (cdr entry)))
                   forward-forms))
           [] pending)))))
   (else (core-expand-module-begin body ctx))))

(def (core-import-module rpath (reload? #f))
  (def (import-source path)
    (when (member path (current-expander-path))
      (raise-syntax-error #f "Cyclic expansion"
             (append (member path (reverse (current-expander-path))) [path])))
    (parameterize ((current-expander-context (core-context-root))
                   (current-expander-marks [])
                   (current-expander-phi 0)
                   (current-expander-path
                    (cons path (current-expander-path)))
                   (current-import-expander-phi #f)
                   (current-export-expander-phi #f)
                   (current-module-phase-visits
                    (and (current-defer-compiled-phase-images?) (box []))))
      (let-values (((pre id ns body) (read-module-for-expansion path reload?)))
        (let* ((prelude
                (cond
                 ((prelude-context? pre) pre)
                 ((module-context? pre)
                  (core-module->prelude-context pre))
                 ((string? pre)
                  (core-module->prelude-context
                   (core-import-module pre)))
                 ((not pre)
                  (or (current-expander-module-prelude)
                      (make-prelude-context #f)))
                 (else
                  (error "cannot import module; unknown prelude" rpath pre))))
               (ctx
                (make-module-context id prelude ns path))
               (body
                (core-expand-imported-module body ctx))
               (body
                (core-quote-syntax
                 (core-cons '%#begin body)
                 path ctx [])))
          (set! (&module-context-e ctx)
            (delay-atomic (eval-imported-module-code ctx body)))
          (set! (&module-context-code ctx)
            body)
          (let* ((registered (current-registered-reader))
                 (activation (and registered (equal? path (car registered)) (cdr registered)))
                 (visits (current-module-phase-visits))
                 (ordered (and visits (pair? (unbox visits)) (reverse (unbox visits)))))
            (when (or ordered activation)
              (hash-put! __module-registry ctx
                (make-module-phase-visits
                 #f (and ordered (delay-atomic (for-each (lambda (entry) ((cdr entry))) ordered)))
                 activation))))
          (if (reader-projected-path? path)
            ;; Only the sealed Reader expansion sees the smaller lexical surface.
            ;; Native initialization remains at its original phase-zero edge.
            (hash-put! (current-reader-projected-contexts) path ctx)
            (begin
              (hash-put! __module-registry path ctx)
              (hash-put! __module-registry id ctx)))
          ctx))))

  (def (import-submodule rpath)
    (with ([origin . refs] rpath)
      (let (ctx (if origin
                  (core-import-module origin reload?)
                  (current-expander-context)))
        (let lp ((rest refs) (ctx ctx))
          (match rest
            ([id . rest]
             (let (bind (resolve-identifier id 0 ctx))
               (if (and (syntax-binding? bind)
                        (module-context? (&syntax-binding-e bind)))
                 (lp rest (&syntax-binding-e bind))
                 (error "cannot import submodule; not bound as a module" rpath id bind))))
            (else ctx))))))

  (cond
   ((and (not reload?) (hash-get __module-registry rpath)) => use-module-context)
   ((list? rpath)
    (import-submodule rpath))
   ((core-library-module-path? rpath)
    (let (ctx (core-import-module (core-resolve-library-module-path rpath)
                                  reload?))
      (unless (reader-projected-path? (&module-context-path ctx))
        (hash-put! __module-registry rpath ctx))
      ctx))
   (else
    (let (npath (path-normalize rpath))
      (cond
       ((and (not reload?) (reader-projected-path? npath)
             (hash-get (current-reader-projected-contexts) npath)) => use-module-context)
       ((and (not reload?) (hash-get __module-registry npath)) => use-module-context)
       (else
        (with-registered-reader npath reload?
          (lambda () (use-module-context (import-source npath))))))))))

(def (core-read-module path)
  (with-catch
   (lambda (exn)
     (if (datum-parsing-exception? exn)
       (let (pos (datum-parsing-exception-filepos exn))
         (if (= pos 0)
           (core-read-module/lang path)
           (raise-syntax-error 'read-module "error reading module" path
                               (parameterize ((dump-stack-trace? #f))
                                 (call-with-output-string "" (cut display-exception exn <>)))
                               [line: (##filepos-line pos) col: (##filepos-col pos)])))
       (raise-syntax-error 'read-module "error reading module" path
                           (parameterize ((dump-stack-trace? #f))
                             (call-with-output-string "" (cut display-exception exn <>))))))
   (cut core-read-module/sexp path)))

(def (core-read-module/sexp path)
  (let lp ((body (read-syntax-from-file path)) (pre #f) (ns #f) (pkg #f))
    (core-syntax-case body ()
      ((prelude: prelude . rest)
       (lp rest prelude ns pkg))
      ((namespace: ns . rest)
       (let (ns (cond
                 ((identifier? ns)
                  (symbol->string (stx-e ns)))
                 ((stx-string? ns)
                  (stx-e ns))
                 ((stx-false? ns)
                  #!void)
                 (else
                  (raise-syntax-error 'import
                    "Bad syntax; illegal namespace" ns))))
         (lp rest pre ns pkg)))
      ((package: pkg . rest)
       (let (pkg (cond
                  ((identifier? pkg)
                   (symbol->string (stx-e pkg)))
                  ((or (stx-string? pkg) (stx-false? pkg))
                   (stx-e pkg))
                  (else
                   (raise-syntax-error 'import
                     "Bad syntax; Illegal package name" pkg))))
         (lp rest pre ns pkg)))
      (else
       (let* (((values pre ns pkg)
               (if pkg
                 (values pre ns pkg)
                 (core-read-module-package path pre ns)))
              (prelude
               (cond
                ((core-bound-module-prelude? pre)
                 (syntax-local-e pre))
                ((core-library-module-path? pre)
                 (core-resolve-library-module-path pre))
                ((stx-string? pre)
                 (core-resolve-module-path pre path))
                (else
                 (stx-e pre))))
              (path-id   (core-module-path->namespace path))
              (pkg-id (if pkg (string-append pkg "/" path-id) path-id))
              (module-id (string->symbol pkg-id))
              (module-ns (if (void? ns) #f (or ns pkg-id))))
         (values prelude module-id module-ns body))))))

(def (core-read-module/lang path)
  (def (default-read-module-body inp)
    (let lp ((body []))
      (let (next (read-syntax inp))
        (if (eof-object? next)
          (reverse body)
          (lp (cons next body))))))

  (def (read-body inp pre ns pkg args)
    (let* (((values pre ns pkg)
            (if pkg
              (values pre ns pkg)
              (core-read-module-package path pre ns)))
           (prelude
            (import-module pre))
           (read-module-body
            (cond
             ((find (match <>
                      ((module-export _ _ 1 (eq? 'read-module-body)) #t)
                      (else #f))
                    (&module-context-export prelude))
              => (lambda (xport)
                   (let (proc
                         (with-catch void
                                     (cut eval-syntax (binding-id (core-resolve-module-export xport)))))
                     (if (procedure? proc) proc
                         (raise-syntax-error #f
                           "Illegal #lang prelude; read-module-body is not a procedure"
                           path pre proc)))))
             (else default-read-module-body)))
           (path-id (core-module-path->namespace path))
           (pkg-id (if pkg (string-append pkg "/" path-id) path-id))
           (module-id (string->symbol pkg-id))
           (module-ns (or ns pkg-id))
           (body
            (parameterize ((current-module-reader-path path)
                           (current-module-reader-args args))
              (read-module-body inp))))
      (values prelude module-id module-ns body)))

  (def (string-e obj what)
    (cond
     ((string? obj) obj)
     ((symbol? obj)
      (symbol->string obj))
     (else
      (raise-syntax-error #f (string-append "Illegal module " what) path obj))))

  (def (read-lang-args inp args)
    (match args
      ([prelude . args]
       (let* ((pkg (pgetq package: args))
              (pkg (and pkg (string-e pkg "package")))
              (ns (pgetq namespace: args))
              (ns (and ns (string-e ns "namespace"))))
         (read-body inp prelude ns pkg args)))
      (else
       (raise-syntax-error #f "Illegal #lang arguments; missing prelude" path))))

  (def (read-lang inp)
    (let (head (read-line inp))
      (cond
       ((string-index head #\space)
        => (lambda (ix)
             (let (lang (substring head 0 ix))
               (if (equal? lang "#lang")
                 (let* ((rest (substring head (fx1+ ix) (string-length head)))
                        (args
                         (with-catch
                          (cut raise-syntax-error #f "Illegal #lang arguments" path <>)
                          (cut call-with-input-string rest (cut read-all <> read)))))
                   (read-lang-args inp args))
                 (raise-syntax-error #f "Illegal module syntax" path)))))
       (else
        (raise-syntax-error #f "Illegal module syntax" path)))))

  (def (read-e inp)
    (if (eq? (peek-char inp) #\#)
      (read-lang inp)
      (raise-syntax-error #f "Illegal module syntax" path)))

  (call-with-input-source-file path read-e))

(def (core-read-module-package path pre ns)
  (def (string-e e)
    (cond
     ((symbol? e)
      (symbol->string e))
     ((string? e) e)
     (else
      (raise-syntax-error #f "Malformed package info; unexpected datum" e))))

  (let lp ((dir (path-directory path))
           (pkg-path []))
    (let (gerbil.pkg (path-expand "gerbil.pkg" dir))
      (if (file-exists? gerbil.pkg)
        (let (plist (core-library-package-plist dir #t))
          (cond
           ((null? plist)               ; empty
            (let (pkg (and (not (null? pkg-path))
                           (string-join pkg-path "/")))
              (values pre ns pkg)))
           ((list? plist)               ; property list
            (let* ((root (pgetq package: plist))
                   (pkg (let (pkg-path
                              (if root
                                (cons (string-e root) pkg-path)
                                pkg-path))
                          (and (not (null? pkg-path))
                               (string-join pkg-path "/"))))
                   (ns (let (ns (or ns (pgetq namespace: plist)))
                         (and ns (string-e ns))))
                   (pre (or pre (pgetq prelude: plist))))
              (values pre ns pkg)))
           (else
            (raise-syntax-error #f "Malformed package info; unexpected datum" plist))))
        (let (dir* (path-strip-trailing-directory-separator dir))
          (if (or (string-empty? dir*) (equal? dir dir*))
            (values pre ns #f)         ; reached root -- no gerbil.pkg
            (let ((xpath (path-strip-directory dir*))
                  (xdir (path-directory dir*)))
              (lp xdir (cons xpath pkg-path)))))))))

(def (core-module-path->namespace path)
  (path-strip-extension (path-strip-directory path)))

(def (core-module-path->id path)
  (string->symbol (core-module-path->namespace path)))

;; rel: source-location/path
(def (core-resolve-module-path stx-path (rel #f))
  (let* ((path (stx-e stx-path))
         (path (if (string-empty? (path-extension path))
                 (string-append path ".ss")
                 path)))
    (core-resolve-path path (or (stx-source stx-path) rel))))

;; for each path in load-path look for subpath with .ssi
;; (compiled module interface) or .ss (source)
(def (core-resolve-library-module-path libpath)
  (let* ((spath (symbol->string (stx-e libpath)))
         (spath (substring spath 1 (string-length spath)))
         (ext (path-extension spath))
         (ssi (if (string-empty? ext)
                (string-append spath ".ssi")
                (string-append (path-strip-extension spath) ".ssi")))
         (srcs (if (string-empty? ext)
                 (map (lambda (ext) (string-append spath ext))
                      '(".ss" ".sld" ".scm"))
                 [spath])))
    (let lp ((rest (load-path)))
      (match rest
        ([dir . rest]
         (def (resolve ssi srcs)
           (let (compiled-path (path-expand ssi dir))
             (if (file-exists? compiled-path)
               (path-normalize compiled-path)
               (let lpr ((rest-src srcs))
                 (match rest-src
                   ([src . rest-src]
                    (let (src-path (path-expand src dir))
                      (if (file-exists? src-path)
                        (path-normalize src-path)
                        (lpr rest-src))))
                   (else
                    (lp rest)))))))
         (cond
          ((core-library-package-path-prefix dir)
           => (lambda (prefix)
                (if (string-prefix? prefix spath)
                  (let ((ssi (substring ssi (string-length prefix) (string-length ssi)))
                        (srcs (map (lambda (src) (substring src (string-length prefix) (string-length src)))
                                   srcs)))
                    (resolve ssi srcs))
                  (lp rest))))
          (else
           (resolve ssi srcs))))
        ([] (raise-syntax-error #f "cannot find library module" libpath))))))

(def (core-resolve-library-relative-module-path modpath)
  (def (resolve path base)
    (cond
     ((string-rindex base #\/)
      => (lambda (idx)
           (core-resolve-library-module-path
            (string->symbol
             (string-append ":" (substring base 0 idx) "/" path)))))
     (else
      (core-resolve-library-module-path
       (string->symbol
        (string-append ":" path))))))

  (let ((spath (symbol->string (stx-e modpath)))
        (mod (core-context-top (current-expander-context) module-context?)))
    (unless mod
      (raise-syntax-error #f "cannot resolve relative module path; not in module context" modpath))
    (let (mpath (symbol->string (expander-context-id mod)))
      (let lp ((spath spath) (mpath mpath))
        (cond
         ((string-prefix? "../" spath)
          (cond
           ((string-rindex mpath #\/)
            => (lambda (idx)
                 (lp (substring spath 3 (string-length spath))
                     (substring mpath 0 idx))))
           (else
            (raise-syntax-error #f "cannot resolve relative module path; illegal traversal" modpath))))
         ((string-prefix? "./" spath)
          (lp (substring spath 2 (string-length spath)) mpath))
         (else
          (resolve spath mpath)))))))

(def (core-library-package-path-prefix dir)
  (cond
   ((pgetq package: (core-library-package-plist dir))
    => (lambda (pkg)
         (string-append (symbol->string pkg) "/")))
   (else #f)))

(def (core-library-package-plist dir (exists? #f))
  (cond
   ((hash-get __module-pkg-cache dir))
   (else
    (let* ((gerbil.pkg (path-expand "gerbil.pkg" dir))
           (plist
            (if (or exists? (file-exists? gerbil.pkg))
              (let (e (call-with-input-source-file gerbil.pkg read))
                (cond
                 ((eof-object? e) [])
                 ((list? e) e)
                 (else
                  (raise-syntax-error #f "Malformed package info; unexpected datum"
                                      gerbil.pkg e))))
              [])))
      (hash-put! __module-pkg-cache dir plist)
      plist))))

(def (core-library-module-path? stx)
  (core-special-module-path? stx #\:))

(def (core-library-relative-module-path? stx)
  (core-special-module-path? stx #\.))

(def (core-special-module-path? stx char)
  (and (identifier? stx)
       (interned-symbol? (stx-e stx))
       (let (str (symbol->string (stx-e stx)))
         (and (fx> (string-length str) 1)
              (eq? (string-ref str 0) char)))))

(def (core-bound-prelude? stx)
  (core-bound-identifier? stx
                          (cut expander-binding? <> prelude-context?)))

(def (core-bound-module? stx)
  (core-bound-identifier? stx
                          (cut expander-binding? <> module-context?)))

(def (core-bound-module-prelude? stx)
  (def (module-prelude? e)
    (or (module-context? e)
        (prelude-context? e)))

  (core-bound-identifier? stx
                          (cut expander-binding? <> module-prelude?)))

(def (core-bind-import! in
                        (ctx (current-expander-context))
                        (force-weak? #f))
  (with ((module-import source key phi weak?) in)
    (core-bind! key
                (let (e (core-find-module-export source))
                  (make-import-binding (&binding-id e) key phi
                                       e (&module-export-context source)
                                       (or force-weak? weak?)))
                core-context-rebind? phi ctx)))

(def (core-bind-weak-import! in (ctx (current-expander-context)))
  (core-bind-import! in ctx #t))

(def (core-resolve-module-export out)
  (publish-syntax-binding! (core-find-module-export out)))

(def (core-find-module-export out)
  (def (subst key)
    (match key
      ([id . mark]
       (with ((expander-mark subst) mark)
         (or (and subst (hash-get subst id))
             (raise-syntax-error #f "Illegal key; missing substitution" key))))
      (else key)))

  (with ((module-export ctx key phi _ _) out)
    (core-context-resolve (core-context-shift ctx phi) (subst key))))

(def (core-module-export->import out (rename #f) (dphi 0))
  (with ((module-export ctx key phi name weak?) out)
    (make-module-import out (or rename name) (fx+ phi dphi) weak?)))

;;; expansion
(def (core-expand-module% stx)
  (def (make-context id)
    (let* ((super
            (current-expander-context))
           (bind-id (stx-e id))
           (mod-id
            (if (module-context? super)
              (make-symbol (expander-context-id super) "~" bind-id)
              bind-id))
           (ns
            (symbol->string mod-id))
           (path
            (if (module-context? super)
              (let (path (&module-context-path super))
                (cond
                 ((or (pair? path) (null? path)) (cons bind-id path))
                 ((not path) bind-id)
                 (else [bind-id path])))
              bind-id)))
      (make-module-context mod-id super ns path)))

  (def (valid-module-id? id)
    (let* ((str (symbol->string id))
           (len (string-length str)))
      (and (fx>= len 1)
           (let loop ((index (fx- (string-length str) 1)))
             (if (fx>= index 0)
               (let (c (string-ref str index))
                 (and (or (and (char>=? c #\a) (char<=? c #\z))
                          (and (char>=? c #\A) (char<=? c #\Z))
                          (and (char>=? c #\0) (char<=? c #\9))
                          (char=? c #\_)
                          (char=? c #\-))
                      (loop (fx- index 1))))
               #t)))))

  (core-syntax-case stx ()
    ((_ id . body)
     (and (identifier? id)
          (stx-list? body))
     (if (valid-module-id? (stx-e #'id))
       (let* ((ctx (make-context id))
              (body
               (core-expand-module-begin body ctx))
              (body
               (core-quote-syntax
                (core-cons '%#begin body)
                (stx-source stx))))
         (set! (&module-context-e ctx)
           (delay-atomic (eval-syntax* body)))
         (set! (&module-context-code ctx)
           body)
         (core-bind-syntax! id ctx)
         (core-quote-syntax
          (core-list '%#module
                     (core-quote-syntax id)
                     body)
          (stx-source stx)))
       (raise-syntax-error #f "invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                           stx #'id)))))

(def (core-expand-module-begin body ctx)
  (parameterize ((current-expander-context ctx)
                 (current-expander-phi 0))
    (core-bind-feature! 'gerbil-module #t)
    (let (stx (core-expand-head (cons '%%begin-module body)))
      (core-syntax-case stx (%#begin-module)
        ((%#begin-module . body)
         (if (sealed-syntax? stx) ; full expansion
           body
           (core-expand-module-body body)))
        (else
         (raise-syntax-error #f "Illegal module body expansion" stx))))))

(def (core-expand-module-body body)
  (def (expand-special hd K rest r)
    (core-syntax-case hd (%#define-values
			  %#bind-runtime-properties!
			  %#export)
      ((%#define-values hd-bind expr . props)
       (and (core-bind-values? hd-bind)
	    (stx-list? props)
	    (not (stx-null? props)))
       (begin
	 (core-bind-values! hd-bind)
	 (K (cons (core-cons '%#bind-runtime-properties!
		             [hd-bind props])
		  rest)
	    (cons (core-cons '%#define-values
		             [hd-bind expr])
		  r))))
      ((%#define-values hd-bind expr)
       (core-bind-values? hd-bind)
       (begin
         (core-bind-values! hd-bind)
         (K rest (cons hd r))))
      ;; TODO generalize for multi-value properties
      ((%#bind-runtime-properties! (id) props)
       (let (bind (resolve-identifier id))
	 (core-bind-runtime-properties! bind props)
	 (K rest r)))
      ((%#export . _)
       (K rest (cons hd r)))
      (else
       (K rest (cons (core-expand-top hd) r)))))

  (def (expand-body rbody)
    (let lp ((rest rbody) (body []))
      (match rest
        ([hd . rest]
         (core-syntax-case hd (%#define-values %#export)
           ((%#define-values hd-bind expr)
            (lp rest
                (cons
                 (core-quote-syntax
                  (core-list '%#define-values
                             (core-quote-bind-values hd-bind)
                             (core-expand-expression expr))
                  (stx-source hd))
                 body)))
           ((%#export . _)
            (lp rest
                (cons (core-expand-export% hd) body)))
           ((form . _)
            (core-bound-identifier? form special-form-binding?)
            (lp rest (cons hd body)))
           (else
            (lp rest (cons (core-expand-expression hd) body)))))
        (else body))))

  (expand-body
   (core-expand-block
    (cons '%#begin-module body)
    expand-special #f values)))

(def (core-expand-import/export stx expanded? method current-phi expand1)
  (def (K rest r)
    (core-syntax-case rest ()
      ((hd . rest)
       (step hd rest r))
      (else r)))

  (def (step hd rest r)
    (core-syntax-case hd ()
      ((phi: dphi . body)
       (stx-fixnum? dphi)
       (let (rbody
             (parameterize ((current-phi (fx+ (stx-e dphi) (current-phi))))
               (K body [])))
         (K rest (append rbody r))))
      ((begin: . body)
       (K (stx-foldr cons rest body) r))
      ((macro . body)
       (core-bound-identifier? macro syntax-binding?)
       (K (cons (core-apply-expander (syntax-local-e macro) hd method)
                rest)
          r))
      (else
       (if (expanded? (stx-e hd))
         (K rest (cons (stx-e hd) r))
         (expand1 hd K rest r)))))

  (core-syntax-case stx ()
    ((_ . body)
     (cond
      ((current-phi)
       (K body []))
      (else
       (parameterize ((current-phi (current-expander-phi)))
         (K body [])))))))

(def (core-expand-import% stx (internal-expand? #f) (phase-zero-edges #f))
  (def (expand1 hd K rest r)
    (cond
     ((core-bound-module? hd)
      (import1 (syntax-local-e hd)
               K rest r))
     ((core-library-module-path? hd)
      (import1 (import-module
                (core-resolve-library-module-path hd))
               K rest r))
     ((core-library-relative-module-path? hd)
      (import1 (import-module
                (core-resolve-library-relative-module-path hd))
               K rest r))
     (else
      (let (e (stx-e hd))
        (cond
         ((pair? e)
          (case (stx-e (car e))
            ((spec:)
             (import-spec hd K rest r))
            ((in:)
             (import-submodule hd K rest r))
            ((runtime:)
             (import-runtime hd K rest r))
            (else
             (raise-syntax-error #f "Bad syntax; illegal import" stx hd))))
         ((string? e)
          (import1 (import-module
                    (core-resolve-module-path hd (stx-source stx)))
                   K rest r))
         ((module-context? e)
          (K rest (cons e r)))
         (else
          (raise-syntax-error #f "Bad syntax; illegal import" stx hd)))))))

  (def (import1 ctx K rest r)
    (let (dphi (fx- (current-import-expander-phi)
                    (current-expander-phi)))
      (K rest
         (cons (make-import-set ctx dphi
                                (map (cut core-module-export->import <> #f dphi)
                                     (&module-context-export ctx)))
               r))))

  (def (import-submodule hd K rest r)
    (core-syntax-case hd ()
      ((_ . spath)
       (import1 (import-spec-source spath) K rest r))))

  (def (import-runtime hd K rest r)
    (core-syntax-case hd ()
      ((_ . spath)
       (K rest (cons (import-spec-source spath) r)))))

  (def (import-spec hd K rest r)
    (core-syntax-case hd ()
      ((_ path)
       (K rest (cons (import-spec-source path) r)))
      ((_ path . specs)
       (let ((src-ctx (import-spec-source path))
             (exports (make-hash-table))
             (specs (syntax->list specs)))
         (for-each
           (lambda (out)
             (hash-put! exports
                        (cons (&module-export-phi out)
                              (&module-export-name out))
                        out))
           (&module-context-export src-ctx))
         (K rest
            (foldl
              (lambda (spec r)
                (core-syntax-case spec ()
                  ((phi name src-phi src-name)
                   (and (stx-fixnum? src-phi)
                        (identifier? src-name)
                        (stx-fixnum? phi)
                        (identifier? name))
                   (let ((src-phi (stx-e src-phi))
                         (src-name (core-identifier-key src-name))
                         (phi (stx-e phi))
                         (name (core-identifier-key name)))
                     (cond
                      ((hash-get exports (cons src-phi src-name))
                       => (lambda (out)
                            (cons (core-module-export->import
                                   out name (fx- phi src-phi))
                                  r)))
                      (else
                       (raise-syntax-error #f "Bad syntax; no matching export"
                                           stx hd)))))))
              r specs))))))

  (def (import-spec-source spath)
    (core-import-nested-module spath stx))

  (def (import! rbody)
    (def current-ctx (current-expander-context))
    (def deps (make-hash-table-eq))

    (def (bind! hd)
      (core-bind-import! hd current-ctx))

    (let lp ((rest rbody) (body []))
      (match rest
        ([hd . rest]
         (cond
          ((module-import? hd)
           (bind! hd)
           (when (and (fxpositive? (&module-import-phi hd))
                      (fxzero? (&module-export-phi (&module-import-source hd))))
             (hash-put! deps
                        (&module-export-context (&module-import-source hd))
                        #t)))
          ((import-set? hd)
           (for-each bind! (&import-set-imports hd))
           (when (fxpositive? (&import-set-phi hd))
             (hash-put! deps (&import-set-source hd) #t)))
          ((module-context? hd))
          (else
           (raise-syntax-error #f "Unexpected import" stx hd)))
         (lp rest (cons hd body)))
        (else
         (when (module-context? current-ctx)
           (set! (&module-context-import current-ctx)
             (foldl cons (&module-context-import current-ctx) body)))
         ;; eval expander deps
         (hash-for-each (lambda (ctx _) (eval-module ctx)) deps)
         body))))

  (def (expanded-import? e)
    (or (import-set? e)
        (module-import? e)
        (module-context? e)))

  ;; Compiled interface rows contain only unmarked, zero-phase import clauses.
  ;; Resolve providers in source order and hand the reversed result to import!.
  (def (replay-phase-zero edges)
    (foldl
     (lambda (edge rest)
       (let ((path (vector-ref edge 1))
             (source (vector-ref edge 2)))
         (case (vector-ref edge 0)
           ((whole)
            (expand1 source (lambda (_ result) result) [] rest))
           ((runtime)
            (cons (import-module path) rest))
           ((names)
            (let ((ctx (import-module path))
                  (exports (make-hash-table-eq)))
              (for-each
               (lambda (out)
                 (when (fxzero? (&module-export-phi out))
                   (hash-put! exports (&module-export-name out) out)))
               (&module-context-export ctx))
              (foldl
               (lambda (names result)
                 (let (out (hash-get exports (cdr names)))
                   (unless out
                     (raise-syntax-error #f "Bad syntax; no matching export" stx source))
                   (cons (core-module-export->import out (car names) 0) result)))
               rest (vector-ref edge 3))))
           (else
            (error "Unknown compiled import clause" edge)))))
     [] edges))

  (let (rbody (if (and phase-zero-edges
                       (fxzero? (current-expander-phi))
                       (not (current-import-expander-phi)))
                (parameterize ((current-import-expander-phi 0))
                  (replay-phase-zero phase-zero-edges))
                (core-expand-import/export stx expanded-import?
                                            'apply-import-expander
                                            current-import-expander-phi
                                            expand1)))
    (if internal-expand?
      (reverse rbody)
      (core-quote-syntax
       (core-cons '%#import (import! rbody))
       (stx-source stx)))))

(def (core-import-nested-module spath where)
  (core-syntax-case spath ()
    ((origin . sub)
     (let (origin-ctx
           (if (stx-false? origin)
             (current-expander-context)
             (import-module origin)))
       (let lp ((rest sub) (ctx origin-ctx))
         (core-syntax-case rest ()
           ((id . rest)
            (let (bind (resolve-identifier id 0 ctx))
              (unless (and (syntax-binding? bind)
                           (module-context? (&syntax-binding-e bind)))
                (raise-syntax-error #f "Bad syntax; not bound as module"
                                    where spath id))
              (lp rest (&syntax-binding-e bind))))
           (else ctx)))))))

(def (core-expand-import-source hd)
  (core-expand-import% ['import-internal% hd] #t))

(def (core-expand-export% stx (internal-expand? #f))
  (def (make-export bind
                    (phi (current-export-expander-phi))
                    (ctx (current-expander-context))
                    (name #f))
    (let* ((key (&binding-key bind))
           (export-key (if name (core-identifier-key name) key)))
      (make-module-export ctx key phi export-key
                          (or (extern-binding? bind)
                              (import-binding? bind)))))

  (def (expand1 hd K rest r)
    (core-syntax-case hd ()
      (#t
       (let* ((current-ctx (current-expander-context))
              (current-phi (current-export-expander-phi))
              (phi-ctx     (core-context-shift current-ctx current-phi))
              (phi-bind    (hash->list (&expander-context-table phi-ctx))))
         (let lp ((bind-rest phi-bind) (set []))
           (match bind-rest
             ([[key . bind] . bind-rest]
              (if (or (import-binding? bind)
                      (private-feature-binding? bind))
                (lp bind-rest set)
                (lp bind-rest
                    (cons (make-export bind current-phi current-ctx)
                          set))))
             (else
              (K rest (cons (make-export-set #f current-phi set) r)))))))
      (id
       (identifier? id)
       (cond
        ((core-find-identifier id (current-export-expander-phi)
                               (current-expander-context))
         => (lambda (bind)
              (K rest (cons (make-export bind) r))))
        (else
         (raise-syntax-error #f "Reference to unbound identifier" stx hd))))
      ((spec: phi id name)
       (and (stx-fixnum? phi) (identifier? id) (identifier? name))
       (let (phi (stx-e phi))
         (cond
          ((core-find-identifier id phi (current-expander-context))
           => (lambda (bind)
                (K rest (cons (make-export bind phi (current-expander-context)
                                           name)
                              r))))
          (else
           (raise-syntax-error #f "Reference to unbound identifier"
                               stx hd id)))))
      ((rename: id name)
       (let (phi (current-export-expander-phi))
         (cond
          ((core-find-identifier id phi (current-expander-context))
           => (lambda (bind)
                (K rest (cons (make-export bind phi (current-expander-context)
                                           name)
                              r))))
          (else
           (raise-syntax-error #f "Reference to unbound identifier"
                               stx hd id)))))
      ((import: . in)
       (stx-list? in)
       (let lp ((in-rest in) (r r))
         (core-syntax-case in-rest ()
           ((hd . in-rest)
            (let (src
                  (cond
                   ((core-bound-module? hd)
                    (syntax-local-e hd))
                   ((core-library-module-path? hd)
                    (import-module
                     (core-resolve-library-module-path hd)))
                   ((core-library-relative-module-path? hd)
                    (import-module
                     (core-resolve-library-relative-module-path hd)))
                   ((stx-string? hd)
                    (import-module
                     (core-resolve-module-path hd (stx-source stx))))
                   (else
                    (core-syntax-case hd ()
                      ((in: . spath)
                       (core-import-nested-module spath stx))
                      (else
                       (raise-syntax-error #f
                         "Bad syntax; illegal re-export" stx hd))))))
              (lp in-rest (export-imports src r))))
           (else
            (K rest r)))))
      (else
       (raise-syntax-error #f "Bad syntax; illegal export" stx hd))))

  (def (export-imports src r)
    (def current-ctx (current-expander-context))
    (def current-phi (current-export-expander-phi))

    (def (import->export in)
      (with ((module-import out key phi) in)
        (make-module-export current-ctx key phi key #t)))

    (def (fold-e in r)
      (match in
        ((module-import out key phi)
         (if (and (fx= phi current-phi)
                  (eq? src (&module-export-context out)))
           (cons (import->export in) r)
           r))
        ((import-set ctx phi imports)
         (if (and (fx= phi current-phi)
                  (eq? src ctx))
           (foldl (lambda (in r) (cons (import->export in) r))
                  r imports)
           r))
        (else r)))

    (cons (make-export-set src current-phi
                           (foldl fold-e [] (&module-context-import current-ctx)))
          r))

  (def (export! rbody)
    (def current-ctx (current-expander-context))

    (def (fold-e out r)
      (cond
       ((module-export? out)
        (cons out r))
       ((export-set? out)
        (foldl cons r (&export-set-exports out)))
       (else r)))

    (let (body (reverse rbody))
      (set! (&module-context-export current-ctx)
        (foldl fold-e (&module-context-export current-ctx) body))
      body))

  (def (expanded-export? e)
    (or (module-export? e)
        (export-set? e)))

  (cond
   ((or (module-context? (current-expander-context)) internal-expand?)
    (let (rbody (core-expand-import/export stx expanded-export?
                                           'apply-export-expander
                                           current-export-expander-phi
                                           expand1))
      (if internal-expand?
        (reverse rbody)
        (core-quote-syntax
         (core-cons '%#export (export! rbody))
         (stx-source stx)))))
   ((top-context? (current-expander-context))
    (core-quote-syntax
     (core-cons '%#begin [])
     (stx-source stx)))
   (else
    (raise-syntax-error #f "Illegal context" stx))))

(def (core-expand-export-source hd)
  (core-expand-export% ['export-macro% hd] #t))

(def (core-expand-provide% stx)
  (core-syntax-case stx ()
    ((_ . body)
     (identifier-list? body)
     (begin
       (stx-for-each core-bind-feature! body)
       (core-quote-syntax
        (core-cons '%#provide (stx-map core-quote-syntax body))
        (stx-source stx))))))

(def (core-bind-feature! id
                         (private? #f)
                         (phi (current-expander-phi))
                         (ctx (current-expander-context)))
  (core-bind-syntax! id
                     ((if private? make-private-feature-expander make-feature-expander)
                      (stx-e id))
                     private? phi ctx))
