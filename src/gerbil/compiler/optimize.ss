;;; -*- Gerbil -*-
;;; (C) vyzo at hackzen.org
;;; gerbil compiler optimization passes
prelude: "../core"
package: gerbil/compiler
namespace: gxc

(import "../core/expander"
        "../expander"
        "base"
        "method"
        "compile"
        "optimize-base"
        "optimize-xform"
        "optimize-top"
        "optimize-spec"
        "optimize-ann"
        "optimize-call")
(export #t)

(def +optimizer-info-mutex+ (make-mutex 'compiler/optimizer-info))
(def +shared-optimizer-info+ #f)

;; sticky to persist across batch compilation and avoid reloading ssxi modules
(def (optimizer-info-init!)
  (with-lock +optimizer-info-mutex+
    (lambda ()
      (unless +shared-optimizer-info+
        (set! +shared-optimizer-info+ (make-optimizer-info)))
      (unless (current-compile-optimizer-info)
        (current-compile-optimizer-info +shared-optimizer-info+)))))

(def (clone-!class-with-method klass method sym)
  (let* ((old-methods (!class-methods klass))
         (new-methods (if old-methods (hash-copy old-methods) (make-hash-table-eq))))
    (hash-put! new-methods method sym)
    (##structure !class::t
                 (!type-id klass)
                 (!class-super klass)
                 (!class-precedence-list klass)
                 (!class-slots klass)
                 (!class-fields klass)
                 (!class-constructor klass)
                 (!class-struct? klass)
                 (!class-final? klass)
                 (!class-system? klass)
                 (!class-metaclass klass)
                 new-methods)))

;; Per-module isolated optimizer session for true parallel SMP compilation:
;;   1. Load any missing builtin/dependency .ssxi under +optimizer-info-mutex+
;;   2. Snapshot immutable base tables into a thread-private session + overlay
;;   3. Run optimize-source, codegen, and compile-ssxi-code lock-free in parallel
;;   4. Commit the module's delta into base using copy-on-write !class records
;;      strictly after compile-ssxi-code finishes.
(def (optimizer-session-begin! ctx)
  (with-lock +optimizer-info-mutex+
    (lambda ()
      (unless +shared-optimizer-info+
        (set! +shared-optimizer-info+ (make-optimizer-info)))
      (let (base (or (current-compile-optimizer-info) +shared-optimizer-info+))
        (parameterize ((current-compile-optimizer-info base)
                       (current-compile-class-methods-overlay #f)
                       (current-compile-optimizer-delta #f))
          (optimizer-load-builtin-ssxi ctx)
          (optimizer-load-ssxi-deps ctx))
        (let ((session (##structure optimizer-info::t
                                    (hash-copy (optimizer-info-type base))
                                    (hash-copy (optimizer-info-classes base))
                                    (hash-copy (optimizer-info-ssxi base))
                                    (hash-copy (optimizer-info-methods base))))
              (overlay (make-hash-table-eq))
              (delta (box [])))
          (values base session overlay delta))))))

(def (optimizer-session-commit! ctx base delta)
  (with-lock +optimizer-info-mutex+
    (lambda ()
      (let ((types (optimizer-info-type base))
            (classes (optimizer-info-classes base))
            (methods (optimizer-info-methods base))
            (ssxi (optimizer-info-ssxi base)))
        (for-each
         (lambda (entry)
           (match entry
             (['type sym val]
              (hash-put! types sym val))
             (['clear-type sym]
              (hash-remove! types sym))
             (['class sym klass]
              (hash-put! classes sym klass)
              (hash-put! classes klass sym))
             (['builtin-class sym klass]
              (unless (hash-get classes sym)
                (hash-put! classes sym klass)
                (hash-put! classes klass sym)))
             (['method-flag sym]
              (hash-put! methods sym #t))
             (['method type-t method sym rebind?]
              (hash-put! methods sym #t)
              (alet (klass (hash-get classes type-t))
                (let (updated (clone-!class-with-method klass method sym))
                  (hash-put! classes type-t updated)
                  (hash-put! classes updated type-t)
                  (let (stale [])
                    (hash-for-each
                     (lambda (k v)
                       (when (eq? v klass)
                         (set! stale (cons k stale))))
                     types)
                    (for-each (lambda (k) (hash-put! types k updated)) stale)))))))
         (reverse (unbox delta)))
        (hash-put! ssxi (expander-context-id ctx) #t)))))

(def (optimize-module-source! ctx)
  (parameterize ((current-compile-mutators (make-hash-table-eq))
                 (current-compile-local-type (make-hash-table-eq)))
    (let (code (optimize-source (module-context-code ctx)))
      (set! (module-context-code ctx) code))))

;;; optimizer entry point (direct/single-module compatibility)
(def (optimize! ctx)
  (parameterize ((current-compile-mutators (make-hash-table-eq))
                 (current-compile-local-type (make-hash-table-eq)))
    ;; load builtins
    (optimizer-load-builtin-ssxi ctx)
    ;; load deps
    (optimizer-load-ssxi-deps ctx)
    ;; mark ssxi presence for batch
    (hash-put! (optimizer-info-ssxi (current-compile-optimizer-info))
               (expander-context-id ctx)
               #t)
    (let (code (optimize-source (module-context-code ctx)))
      (set! (module-context-code ctx) code))))

;;; ssxi loading
(def (optimizer-load-builtin-ssxi ctx)
  (def (load-it! id)
    (unless (hash-get (optimizer-info-ssxi (current-compile-optimizer-info)) id)
      (optimizer-import-ssxi-by-id id)
      (hash-put! (optimizer-info-ssxi (current-compile-optimizer-info))
                 id
                 #t)))

  (let* ((modid (expander-context-id ctx))
         (modid-str (symbol->string modid)))
    (if (or (string-prefix? "gerbil/runtime" modid-str)
            (string-prefix? "gerbil/core" modid-str))
      ;; don't laod the runtime when building core or itself, as it can
      ;; create a vicious bootstrap cycle because of forward references
      (for-each load-it!
                '(gerbil/builtin
                  gerbil/builtin-inline-rules))
      (for-each load-it!
                '(gerbil/builtin
                  gerbil/builtin-inline-rules
                  gerbil/runtime/gambit
                  gerbil/runtime/util
                  gerbil/runtime/table
                  gerbil/runtime/control
                  gerbil/runtime/system
                  gerbil/runtime/c3
                  gerbil/runtime/mop
                  gerbil/runtime/mop-system-classes
                  gerbil/runtime/error
                  gerbil/runtime/interface
                  gerbil/runtime/hash
                  gerbil/runtime/thread
                  gerbil/runtime/syntax
                  gerbil/runtime/eval
                  gerbil/runtime/repl
                  gerbil/runtime/loader
                  gerbil/runtime/init
                  gerbil/runtime)))))

(def (optimizer-load-ssxi-deps ctx)
  (def deps
    (let (imports (module-context-import ctx))
      (cond
       ((core-context-prelude ctx) => (cut cons <> imports))
       (else imports))))

  (let lp ((rest deps))
    (match rest
      ([hd . rest]
       (cond
        ((module-context? hd)
         (unless (hash-get (optimizer-info-ssxi (current-compile-optimizer-info))
                           (expander-context-id hd))
           (cond
            ((core-context-prelude hd)
             => (lambda (pre)
                  (lp (cons pre (module-context-import hd)))))
            (else
             (lp (module-context-import hd))))
           (optimizer-load-ssxi hd))
         (lp rest))
        ((prelude-context? hd)
         (unless (hash-get (optimizer-info-ssxi (current-compile-optimizer-info))
                           (expander-context-id hd))
           (lp (prelude-context-import hd))
           (optimizer-load-ssxi hd))
         (lp rest))
        ((module-import? hd)
         (lp (cons (module-import-source hd) rest)))
        ((module-export? hd)
         (lp (cons (module-export-context hd) rest)))
        ((import-set? hd)
         (lp (cons (import-set-source hd) rest)))
        (else
         (error "Unexpected module import" hd))))
      (else (void)))))

(def (optimizer-load-ssxi ctx)
  (unless (and (module-context? ctx)
               (list? (module-context-path ctx)))
    (let* ((ht (optimizer-info-ssxi (current-compile-optimizer-info)))
           (id (expander-context-id ctx))
           (mod (hash-get ht id)))
      (or mod
          (let* ((mod (optimizer-import-ssxi ctx))
                 (val (or mod #!void)))
            (hash-put! ht id val)
            val)))))

(def (optimizer-import-ssxi ctx)
  (and (expander-context-id ctx)
       (optimizer-import-ssxi-by-id (expander-context-id ctx))))

(def (optimizer-import-ssxi-by-id id)
  ;; check output-dir/id.ssxi.ss for existence; this is a current compilation
  ;; artefact; else check and :id.ssxi library path
  ;; catch error and display exception in verbose mode
  (def (catch-e exn)
    (unless (equal? (error-message exn) "cannot find library module")
      (display-exception exn)
      (displayln "*** WARNING Failed to load ssxi module for " id))
    #f)

  (def (import-e)
    (let* ((str-id (string-append (module-id->path-string id) ".ssxi"))
           (artefact-path
            (alet (odir (current-compile-output-dir))
              (path-expand (string-append str-id ".ss") odir)))
           (library-path
            (string->symbol
             (string-append ":" str-id ".ss")))
           (ssxi-path
            (if (and artefact-path (file-exists? artefact-path))
              artefact-path
              library-path)))
      (verbose "Loading ssxi module " ssxi-path)
      (import-module ssxi-path #t #t)))

  (with-catch catch-e import-e))

;;; source transforms
(def (optimize-source stx)
  ;; collect mutators for anything that needs it
  (apply-collect-mutators stx)
  ;; collect top-level types and methods
  (apply-collect-top-level-type-info stx)
  ;; generate specializers and lift lambdas for things like case/opt/kw lambdas
  (let* ((stx (apply-generate-method-specializers stx))
         (stx (apply-lift-top-lambdas stx)))
    ;; full type collection for type directed optimizations
    (apply-collect-type-info stx)
    (apply-collect-mutable-type-info stx)
    (let fixpoint ((current (optimizer-current-types)))
      (apply-refine-type-info stx)
      (let (refined (optimizer-current-types))
        (unless (equal? current refined)
          (fixpoint refined))))
    ;; check declared procedure return types
    (apply-check-return-type stx)
    ;; process user declarations
    (apply-collect-top-level-declarations stx)
    ;; optimize special constructs (match, syntax-case)
    (let (stx (apply-optimize-annotated stx))
      ;; TODO apply-optimize-abstract-eval
      ;; final type-check and optimize procedure applications
      (apply-optimize-call stx))))

;; method to generate the ssxi optimizer meta module
(defcompile-method (apply-generate-ssxi) (::generate-ssxi ::generate-runtime-empty)
  ()
  final:
  (%#begin            generate-runtime-begin%)
  (%#begin-syntax     generate-ssxi-begin-syntax%)
  (%#begin-annotation generate-ssxi-begin-annotation%)
  (%#module           generate-ssxi-module%)
  (%#define-values    generate-ssxi-define-values%)
  (%#call             generate-ssxi-call%))

;;; apply-generate-ssxi
(def (generate-ssxi-begin-syntax% self stx)
  (ast-case stx ()
    ((_ . forms)
     (parameterize ((current-expander-phi (fx1+ (current-expander-phi))))
       (generate-runtime-begin% self stx)))))

(def (generate-ssxi-module% self stx)
  (ast-case stx ()
    ((_ id . body)
     (let* ((ctx (syntax-local-e #'id))
            (code (module-context-code ctx)))
       (parameterize ((current-expander-context ctx))
         (compile-e self code))))))

(def (generate-ssxi-define-values% self stx)
  (def (generate-e id)
    (let (sym (and (identifier? #'id) (identifier-symbol id)))
      (cond
       ((optimizer-lookup-class sym)
        => (lambda (klass)
             (verbose "generate class decl" sym)
             ['begin
               ['declare-class sym {klass.typedecl}]
               ['declare-type sym `(optimizer-resolve-class '(typedecl ,sym) 'class::t)]]))
       ((optimizer-lookup-type sym)
        => (lambda (type)
             (verbose "generate typedecl " sym " " type)
             (if (!class? type)
               ['declare-type sym `(optimizer-resolve-class '(typedecl ,sym) ',(optimizer-lookup-class-name type))]
               ['declare-type sym {type.typedecl}])))
       (else '(begin)))))

  (ast-case stx ()
    ((_ (id) _)
     (generate-e #'id))
    ((_ (id ...) _)
     (let (types (map generate-e #'(id ...)))
       ['begin types ...]))))

(def (generate-ssxi-call% self stx)
  (ast-case stx (%#ref %#quote)
    ((_ (%#ref -bind-method) (%#ref type-t) (%#quote method) (%#ref impl) (%#quote rebind?))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     ['declare-method (identifier-symbol #'type-t)
                      (stx-e #'method) (identifier-symbol #'impl)
                      (stx-e #'rebind?)])
    ((_ (%#ref -bind-method!) (%#ref type-t) (%#quote method) (%#ref impl))
     (runtime-identifier=? #'-bind-method 'bind-method!)
     ['declare-method (identifier-symbol #'type-t)
                      (stx-e #'method) (identifier-symbol #'impl)
                      #f])
    (_ '(begin))))

(def (generate-ssxi-begin-annotation% self stx)
  (ast-case stx (@inline %#quote)
    ((_ (@inline proc) (%#quote rules))
     ['declare-inline-rule! (identifier-symbol #'proc) #'rules])
    ((_ ann body) '(begin))))

;; typedecls
(defmethod {typedecl !nullable-type}
  (lambda (self)
    `(optimizer-resolve-type-expression 'typedecl ',(optimizer-type-expression self))))

(defmethod {typedecl !alias}
  (lambda (self)
    ['@alias self.id]))

;; MOP
(defmethod {typedecl !class}
  (lambda (self)
    (with ((!class id super precendence-list slots fields constructor struct? final? system? metaclass methods) self)
      (let (methods (or (alet (ov (current-compile-class-methods-overlay))
                          (hash-get ov self))
                        methods))
        ['@class id super precendence-list slots fields constructor struct? final? system? metaclass (and methods (hash->list methods))]))))

(defmethod {typedecl !predicate}
  (lambda (self)
    ['@predicate self.id]))

(defmethod {typedecl !constructor}
  (lambda (self)
    ['@constructor self.id]))

(defmethod {typedecl !accessor}
  (lambda (self)
    ['@accessor self.id self.slot self.checked?]))

(defmethod {typedecl !mutator}
  (lambda (self)
    ['@mutator self.id self.slot self.checked?]))

;; interfaces
(defmethod {typedecl !interface}
  (lambda (self)
    ['@interface self.id self.methods]))

;; procedure types
(defmethod {typedecl !lambda}
  (lambda (self)
    (with ((!lambda _ signature arity dispatch) self)
      (if signature
        (using (signature :- !signature)
          ['@lambda arity dispatch
               signature: [return: signature.return
                           effect: signature.effect
                           arguments: signature.arguments
                           unchecked: signature.unchecked
                           origin: signature.origin]])
        ['@lambda arity dispatch]))))

(defmethod {typedecl !case-lambda}
  (lambda (self)
    (def (clause-e clause)
      (cdr {clause.typedecl}))
      ['@case-lambda (map clause-e self.clauses) ...]))

(defmethod {typedecl !kw-lambda}
  (lambda (self)
    ['@kw-lambda self.table self.dispatch]))

(defmethod {typedecl !kw-lambda-primary}
  (lambda (self)
    ['@kw-lambda-dispatch self.keys self.main]))

(defmethod {typedecl !primitive-predicate}
  (lambda (self)
    ['@primitive-predicate self.id]))
