;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler basic env
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander")
(export #t)

(def __DEBUG-COMPILE
  (and (string? __DEBUG)
       (string-contains __DEBUG "compilation")))

(defsyntax (ast-case stx)
  (macro-expand-syntax-case stx 'stx-eq? 'stx-e 'quote))

(defsyntax (ast-rules stx)
  (syntax-case stx ()
    ((_ ids clause ...)
     (identifier-list? #'ids)
     (with-syntax (((clause ...)
                    (stx-map (lambda (clause)
                               (syntax-case clause ()
                                 ((hd body)
                                  #'(hd (syntax body)))
                                 ((hd fender body)
                                  #'(hd fender (syntax body)))))
                             #'(clause ...))))
       #'(lambda ($stx)
           (ast-case $stx ids clause ...))))))

(def current-compile-symbol-table
  (make-parameter #f))
(def current-compile-runtime-sections
  (make-parameter #f))
(def current-compile-runtime-names
  (make-parameter #f))
(def current-compile-output-dir
  (make-parameter #f))
(def current-compile-invoke-gsc
  (make-parameter #f))
(def current-compile-gsc-options
  (make-parameter #f))
(def current-compile-keep-scm
  (make-parameter #f))
(def current-compile-verbose
  (make-parameter
   (alet (verbosity (getenv "GERBIL_BUILD_VERBOSE" #f))
     (or (string->number verbosity)
         verbosity))))
(def current-compile-optimize
  (make-parameter #f))
(def current-compile-debug
  (make-parameter #f))
(def current-compile-generate-ssxi
  (make-parameter #f))
(def current-compile-static
  (make-parameter #f))
(def current-compile-timestamp
  (make-parameter #f))
(def current-compile-decls
  (make-parameter #f))
(def current-compile-context
  (make-parameter #f))
(def current-compile-parallel
  (make-parameter #f))

;; quote-syntax lifts
(def current-compile-lift
  (make-parameter #f))
(def current-compile-marks
  (make-parameter #f))
(def current-compile-identifiers
  (make-parameter #f))
(def current-compile-boolean-context
  (make-parameter #f))

(def (make-bound-identifier-table)
  (def (hash-e id)
    (symbol-hash (stx-e id)))
  (make-hash-table test: bound-identifier=? hash: hash-e))

;; locally scoped identifiers
(def current-compile-local-env
  (make-parameter []))

(defstruct symbol-table (gensyms bindings)
  id: gxc#symbol-table::t
  constructor: :init!)

(defmethod {:init! symbol-table}
  (lambda (self)
    (struct-instance-init! self (make-hash-table-eq) (make-hash-table-eq))))

(def (raise-compile-error message stx . details)
  (let (ctx (or (current-compile-context) '(compile)))
    (apply raise-syntax-error ctx message stx details)))

(def (verbose . args)
  (when (current-compile-verbose)
    (with-verbose-mutex (apply displayln args))))

(def __verbose-mutex (make-mutex 'compiler/driver))
(defrules with-verbose-mutex ()
  ((_ expr)
   (with-lock __verbose-mutex (lambda () expr))))

;; these characters are restricted to avoid confusing shells and other tools
(def module-path-reserved-chars
  ":#<>&!?*;()[]{}|'`\"\\")

(def (module-id->path-string id)
  (let* ((str (if (symbol? id) (symbol->string id) id))
         (len (string-length str))
         (res (make-string len)))
    (let lp ((i 0))
      (if (fx< i len)
        (let* ((char (string-ref str i))
               (xchar (if (string-index module-path-reserved-chars char)
                        #\_ char)))
          (string-set! res i xchar)
          (lp (fx1+ i)))
        res))))

(def (map* proc maybe-improper-list)
  (let recur ((rest maybe-improper-list))
    (match rest
      ([hd . rest]
       (cons (proc hd)
             (recur rest)))
      ([] [])
      (tail (proc tail)))))

(def (symbol-in-local-scope? sym)
  (or ;; either not a gensym refernce (in which case it is global)
    (not (gensym-reference? sym))
    ;; or it should be in the local env
    (memq sym (current-compile-local-env))))

(def (gensym-reference? sym)
  (let (str (symbol->string sym))
    (and (string-prefix? "_%" str)
         (string-suffix? "%_" str))))

(def (generate-runtime-binding-id id)
  (cond
   ((and (syntax-quote? id) (resolve-identifier id))
    => (lambda (bind)
         (let ((eid (binding-id bind))
               (ht (symbol-table-bindings (current-compile-symbol-table))))
           (cond
            ((interned-symbol? eid) eid)
            ((hash-get ht eid))
            ((local-binding? bind)
             (let (gid (generate-runtime-gensym-reference eid))
               (hash-put! ht eid gid)
               gid))
            ((module-binding? bind)
             (let (gid
                   (cond
                    ((module-context-ns (module-binding-context bind))
                     => (lambda (ns) (make-symbol ns "#" eid)))
                    (else (generate-runtime-gensym-reference eid))))
               (hash-put! ht eid gid)
               gid))
            (else
             ;; module bindings have been mapped in collect-bindings.
             (raise-compile-error "Cannot compile reference to uninterned binding"
                                  id eid bind))))))
   ((interned-symbol? (stx-e id))
    ;; implicit extern or optimizer introduced symbol
    (stx-e id))
   (else
    ;; gensymed reference, where did you get this one?
    (raise-compile-error "Cannot compile reference to uninterned identifier"
                         id))))

(def (generate-runtime-binding-id* id)
  (if (identifier? id)
    (generate-runtime-binding-id id)
    (generate-runtime-temporary)))

(def (generate-runtime-temporary (top #f))
  (if top
    (let ((ns (module-context-ns (core-context-top (current-expander-context))))
          (phi (current-expander-phi)))
      (if ns
        (if (fxpositive? phi)
          (make-symbol ns "[" (number->string phi) "]#_" (gensym) "_")
          (make-symbol ns "#_" (gensym) "_"))
        (if (fxpositive? phi)
          (make-symbol "[" (number->string phi) "]#_" (gensym) "_")
          (make-symbol "_" (gensym) "_"))))
    (make-symbol "_" (gensym) "_")))

(def (generate-runtime-gensym-reference sym (quote? #f))
  (let (ht (symbol-table-gensyms (current-compile-symbol-table)))
    (cond
     ((hash-get ht sym))
     (else
      (let (g (if quote?
                (make-symbol "__" sym "__" (current-compile-timestamp))
                (make-symbol "_%" sym "%_")))
        (hash-put! ht sym g)
        g)))))

(def (generate-runtime-identifier id)
  (generate-runtime-identifier-key (core-identifier-key id)))

(def (generate-runtime-identifier-key key)
  (cond
   ((interned-symbol? key) key)
   ((uninterned-symbol? key)
    (generate-runtime-gensym-reference key))
   (else
    (match key
      ([eid . mark]
       (cond
        ((expander-mark-subst mark)
         => (lambda (ht)
              (cond
               ((hash-get ht eid)
                => (lambda (id)
                     (if (interned-symbol? id) id
                         (generate-runtime-gensym-reference id))))
               (else
                (generate-runtime-identifier-key eid)))))
        (else
         (generate-runtime-identifier-key eid))))))))

(def (runtime-identifier=? id1 id2)
  (def (symbol-e id)
    (if (symbol? id) id
        (generate-runtime-binding-id id)))
  (eq? (symbol-e id1) (symbol-e id2)))

(def (identifier-symbol stx)
  (if (syntax-quote? stx)
    (generate-runtime-binding-id stx)
    (stx-e stx)))

(def (runtime-identifier-properties id)
  (let* ((bind (resolve-identifier id))
         (runtime-props
          (cond
           ((runtime-binding? bind)
            (let* ((props
                    (cond
                     ((runtime-binding-macro bind)
                      => (lambda (macro-id)
                           [macro: (generate-runtime-identifier macro-id)]))

                     (else [])))
                   (props
                    (cond
                     ((runtime-binding-type bind)
                      => (lambda (type)
                           (cond
                            ((method-ref type ':repr)
                             => (lambda (method)
                                  (let (repr (method type))
                                    [type: repr :: props])))
                            (else
                             (raise-compile-error "unrepresentable type" id type)))))
                     (else props))))
              props))
           (else []))))
         (cond
          ((binding-properties bind)
           => (lambda (props)
                (foldl (lambda (prop props)
                         (with ([key . value] prop)
                           (cond
                            ((method-ref value ':repr)
                             => (lambda (method)
                                  (let (repr (method value))
                                    [key repr :: props])))
                            (else
                             [key ['quote value] :: props]))))
                       runtime-props
                       props)))
          (else runtime-props))))

;; Parallel build support. Fixed workers start while the frontend produces work,
;; as in the installed Darwin streaming executor. Dependencies are completion
;; records, not Scheme threads waiting for a bounded native-worker permit.
(def (available-build-cores)
  (let* ((value (getenv "GERBIL_BUILD_CORES" #f))
         (configured (and value (string->number value))))
    (if (and (integer? configured) (> configured 0)) configured (##core-count))))
(def __available-cores (available-build-cores))
(defstruct compile-executor (submit close output-job))
(defstruct compile-output-result (owner completed? failed? callbacks))
(defstruct compile-job-record (body name result remaining failed?))
(def __compile-executor #f)
(def __compile-executor-mx (make-mutex 'compile-executor-lifecycle))

(def (open-compile-executor)
  (def mx (make-mutex 'compile-worker-pool))
  (def cv (make-condition-variable 'compile-worker-pool))
  (def front [])
  (def back [])
  (def outputs (make-hash-table))
  (def producer-closed? #f)
  (def active 0)
  (def first-error? #f)
  (def first-error #f)

  (def (submit! thunk name dependencies paths key)
    (unless (and (list? dependencies) (andmap compile-output-result? dependencies))
      (error "Invalid compiler task dependencies" name))
    (set! dependencies
          (foldr (lambda (dep result) (if (memq dep result) result (cons dep result)))
                 [] dependencies))
    (match (make-compile-job thunk name)
      ([body job-name]
       (let* ((result (make-compile-output-result mx #f #f []))
              (job (make-compile-job-record body job-name result 0 #f)))
         (with-lock mx
           (lambda ()
             (when (and producer-closed? (not (memq (current-thread) workers)))
               (error "Compiler producer admission is closed" name))
             (for-each (lambda (dep)
                         (unless (eq? (compile-output-result-owner dep) mx)
                           (error "Compiler dependency belongs to a retired graph" name))) dependencies)
             ;; Prepare every alias and callback cell before publishing any.
             ;; A failed allocation leaves the previous graph authoritative.
             (let* ((index (hash-copy outputs))
                    (waiting (filter (lambda (dep) (not (compile-output-result-completed? dep))) dependencies))
                    (callbacks (map (lambda (dep) (cons dep (cons job (compile-output-result-callbacks dep)))) waiting)))
               (for-each (lambda (path)
                           (when (hash-get index path) (error "Duplicate compile output producer" path))
                           (hash-put! index path (cons result key))) paths)
               (let (queue (if (null? waiting) (cons job back) back))
                 (set! (compile-job-record-remaining job) (length waiting))
                 (set! (compile-job-record-failed? job)
                       (ormap compile-output-result-failed? dependencies))
                 (for-each (lambda (entry) (set! (compile-output-result-callbacks (car entry)) (cdr entry))) callbacks)
                 (set! outputs index)
                 (set! back queue)
                 (condition-variable-broadcast! cv)))))
         result))))

  (def (output-job path key)
    (with-lock mx
      (lambda ()
        (alet (entry (hash-get outputs path))
          (and (equal? (cdr entry) key) (car entry))))))

  (def (next-job)
    (mutex-lock! mx)
    (let wait ()
      (cond
       ((pair? front)
        (let (job (car front))
          (set! front (cdr front))
          (set! active (fx1+ active))
          (mutex-unlock! mx)
          job))
       ((pair? back) (set! front (reverse! back)) (set! back []) (wait))
       ((and producer-closed? (fxzero? active)) (mutex-unlock! mx) #f)
       (else (mutex-unlock! mx cv) (mutex-lock! mx) (wait)))))

  (def (complete! job success? value)
    (with-lock mx
      (lambda ()
        (let* ((result (compile-job-record-result job))
               (callbacks (compile-output-result-callbacks result))
               ;; Allocate queue cells before changing completion or counters.
               (ready (filter (lambda (dependent) (fx= (compile-job-record-remaining dependent) 1)) callbacks))
               (queue (append ready back)))
          (when (and (not success?) (not first-error?))
            (set! first-error? #t)
            (set! first-error value))
          (set! (compile-output-result-completed? result) #t)
          (set! (compile-output-result-failed? result) (not success?))
          (for-each
           (lambda (dependent)
             (unless success? (set! (compile-job-record-failed? dependent) #t))
             (set! (compile-job-record-remaining dependent) (fx1- (compile-job-record-remaining dependent))))
           callbacks)
          (set! (compile-output-result-callbacks result) [])
          (set! back queue))
        (set! active (fx1- active))
        (condition-variable-broadcast! cv))))

  (def (worker)
    (let loop ()
      (alet (job (next-job))
        (with-catch
         (lambda (error) (complete! job #f error))
         (lambda ()
           (if (compile-job-record-failed? job)
             (complete! job #f #f)
             (begin
               (with-verbose-mutex (displayln "... execute compile job " (compile-job-record-name job)))
               ((compile-job-record-body job))
               (complete! job #t #f)))))
        (loop))))

  (def workers
    (map (lambda (index) (make-thread worker `(compile-worker ,index)))
         (iota (max 1 __available-cores))))
  (for-each thread-start! workers)

  (def (close!)
    (with-lock mx (lambda () (set! producer-closed? #t) (condition-variable-broadcast! cv)))
    (for-each join! workers)
    (when first-error? (raise first-error)))
  (make-compile-executor submit! close! output-job))

(def (current-or-open-compile-executor)
  (with-lock __compile-executor-mx
    (lambda ()
      (unless __compile-executor (set! __compile-executor (open-compile-executor)))
      __compile-executor)))

(def (add-compile-job! thunk (name (current-compile-context)) (dependencies []))
  (let (executor (current-or-open-compile-executor))
    ((compile-executor-submit executor) thunk name dependencies [] #f)))

(def (add-compile-output-job! paths key thunk (name (current-compile-context)))
  (unless (and (pair? paths) (andmap string? paths))
    (error "Invalid compiler output set" paths))
  (let (executor (current-or-open-compile-executor))
    ((compile-executor-submit executor) thunk name [] (map path-expand paths) key)))

(def (current-compile-output-job path key)
  (let (executor (with-lock __compile-executor-mx (lambda () __compile-executor)))
    (and executor ((compile-executor-output-job executor) (path-expand path) key))))

(def (execute-pending-compile-jobs!)
  (let (executor (with-lock __compile-executor-mx (lambda () __compile-executor)))
    (when executor
      (unwind-protect
        ((compile-executor-close executor))
        (with-lock __compile-executor-mx
          (lambda ()
            (when (eq? __compile-executor executor) (set! __compile-executor #f))))))))

(def (make-compile-job thunk name)
  ;; The official executor created the job thread here, so Gambit captured the
  ;; compiler parameterization at submission. A fixed worker pool must retain
  ;; the same semantic explicitly.
  (let ((output-dir (current-compile-output-dir))
        (invoke-gsc (current-compile-invoke-gsc))
        (gsc-options (current-compile-gsc-options))
        (keep-scm (current-compile-keep-scm))
        (verbose (current-compile-verbose))
        (optimize (current-compile-optimize))
        (debug (current-compile-debug))
        (generate-ssxi (current-compile-generate-ssxi))
        (static (current-compile-static))
        (timestamp (current-compile-timestamp))
        (decls (current-compile-decls))
        (context (current-compile-context))
        (parallel (current-compile-parallel)))
    [(lambda ()
       (parameterize ((current-compile-output-dir output-dir)
                      (current-compile-invoke-gsc invoke-gsc)
                      (current-compile-gsc-options gsc-options)
                      (current-compile-keep-scm keep-scm)
                      (current-compile-verbose verbose)
                      (current-compile-optimize optimize)
                      (current-compile-debug debug)
                      (current-compile-generate-ssxi generate-ssxi)
                      (current-compile-static static)
                      (current-compile-timestamp timestamp)
                      (current-compile-decls decls)
                      (current-compile-context context)
                      (current-compile-parallel parallel))
         (thunk)))
     name]))

(defrules go! ()
  ((_ expr)
   (spawn (lambda () expr))))

(def (join! thread)
  (with-catch
   (lambda (exn)
     (if (uncaught-exception? exn)
       (raise (uncaught-exception-reason exn))
       (raise exn)))
   (cut thread-join! thread)))
