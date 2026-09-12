(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1789188907)
  (begin
    (declare (not safe))
    (define gx#current-expander-context (make-parameter '#f))
    (define gx#current-expander-marks (make-parameter '()))
    (define gx#current-expander-phi (make-parameter '0))
    (define gx#current-expander-path (make-parameter '()))
    (define gx#current-expander-eval (make-parameter '#f))
    (define gx#current-expander-compile (make-parameter '#f))
    (define gx#current-expander-module-eval (make-parameter '#f))
    (define gx#current-expander-module-import (make-parameter '#f))
    (define gx#current-expander-module-prelude (make-parameter '#f))
    (define gx#current-expander-allow-rebind? (make-parameter '#f))
    (define gx#current-expander-compiling? (make-parameter '#f))
    (define gx#current-compilation-target (make-parameter '#f))
    (define gx#expander-context::t
      (__make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args187607%_
        (apply make-instance gx#expander-context::t _%$args187607%_)))
    (define gx#expander-context-id
      (__make-class-slot-accessor gx#expander-context::t 'id))
    (define gx#expander-context-table
      (__make-class-slot-accessor gx#expander-context::t 'table))
    (define gx#expander-context-id-set!
      (__make-class-slot-mutator gx#expander-context::t 'id))
    (define gx#expander-context-table-set!
      (__make-class-slot-mutator gx#expander-context::t 'table))
    (define gx#&expander-context-id
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'id))
    (define gx#&expander-context-table
      (__make-class-slot-unchecked-accessor gx#expander-context::t 'table))
    (define gx#&expander-context-id-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'id))
    (define gx#&expander-context-table-set!
      (__make-class-slot-unchecked-mutator gx#expander-context::t 'table))
    (define gx#root-context::t
      (__make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#root-context? (__make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _%$args187604%_
        (apply make-instance gx#root-context::t _%$args187604%_)))
    (define gx#root-context-id
      (__make-class-slot-accessor gx#root-context::t 'id))
    (define gx#root-context-table
      (__make-class-slot-accessor gx#root-context::t 'table))
    (define gx#root-context-id-set!
      (__make-class-slot-mutator gx#root-context::t 'id))
    (define gx#root-context-table-set!
      (__make-class-slot-mutator gx#root-context::t 'table))
    (define gx#&root-context-id
      (__make-class-slot-unchecked-accessor gx#root-context::t 'id))
    (define gx#&root-context-table
      (__make-class-slot-unchecked-accessor gx#root-context::t 'table))
    (define gx#&root-context-id-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'id))
    (define gx#&root-context-table-set!
      (__make-class-slot-unchecked-mutator gx#root-context::t 'table))
    (define gx#phi-context::t
      (__make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args187601%_
        (apply make-instance gx#phi-context::t _%$args187601%_)))
    (define gx#phi-context-super
      (__make-class-slot-accessor gx#phi-context::t 'super))
    (define gx#phi-context-up
      (__make-class-slot-accessor gx#phi-context::t 'up))
    (define gx#phi-context-down
      (__make-class-slot-accessor gx#phi-context::t 'down))
    (define gx#phi-context-id
      (__make-class-slot-accessor gx#phi-context::t 'id))
    (define gx#phi-context-table
      (__make-class-slot-accessor gx#phi-context::t 'table))
    (define gx#phi-context-super-set!
      (__make-class-slot-mutator gx#phi-context::t 'super))
    (define gx#phi-context-up-set!
      (__make-class-slot-mutator gx#phi-context::t 'up))
    (define gx#phi-context-down-set!
      (__make-class-slot-mutator gx#phi-context::t 'down))
    (define gx#phi-context-id-set!
      (__make-class-slot-mutator gx#phi-context::t 'id))
    (define gx#phi-context-table-set!
      (__make-class-slot-mutator gx#phi-context::t 'table))
    (define gx#&phi-context-super
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'super))
    (define gx#&phi-context-up
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'up))
    (define gx#&phi-context-down
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'down))
    (define gx#&phi-context-id
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'id))
    (define gx#&phi-context-table
      (__make-class-slot-unchecked-accessor gx#phi-context::t 'table))
    (define gx#&phi-context-super-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'super))
    (define gx#&phi-context-up-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'up))
    (define gx#&phi-context-down-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'down))
    (define gx#&phi-context-id-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'id))
    (define gx#&phi-context-table-set!
      (__make-class-slot-unchecked-mutator gx#phi-context::t 'table))
    (define gx#top-context::t
      (__make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#top-context? (__make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _%$args187598%_
        (apply make-instance gx#top-context::t _%$args187598%_)))
    (define gx#top-context-super
      (__make-class-slot-accessor gx#top-context::t 'super))
    (define gx#top-context-up
      (__make-class-slot-accessor gx#top-context::t 'up))
    (define gx#top-context-down
      (__make-class-slot-accessor gx#top-context::t 'down))
    (define gx#top-context-id
      (__make-class-slot-accessor gx#top-context::t 'id))
    (define gx#top-context-table
      (__make-class-slot-accessor gx#top-context::t 'table))
    (define gx#top-context-super-set!
      (__make-class-slot-mutator gx#top-context::t 'super))
    (define gx#top-context-up-set!
      (__make-class-slot-mutator gx#top-context::t 'up))
    (define gx#top-context-down-set!
      (__make-class-slot-mutator gx#top-context::t 'down))
    (define gx#top-context-id-set!
      (__make-class-slot-mutator gx#top-context::t 'id))
    (define gx#top-context-table-set!
      (__make-class-slot-mutator gx#top-context::t 'table))
    (define gx#&top-context-super
      (__make-class-slot-unchecked-accessor gx#top-context::t 'super))
    (define gx#&top-context-up
      (__make-class-slot-unchecked-accessor gx#top-context::t 'up))
    (define gx#&top-context-down
      (__make-class-slot-unchecked-accessor gx#top-context::t 'down))
    (define gx#&top-context-id
      (__make-class-slot-unchecked-accessor gx#top-context::t 'id))
    (define gx#&top-context-table
      (__make-class-slot-unchecked-accessor gx#top-context::t 'table))
    (define gx#&top-context-super-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'super))
    (define gx#&top-context-up-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'up))
    (define gx#&top-context-down-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'down))
    (define gx#&top-context-id-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'id))
    (define gx#&top-context-table-set!
      (__make-class-slot-unchecked-mutator gx#top-context::t 'table))
    (define gx#module-context::t
      (__make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args187595%_
        (apply make-instance gx#module-context::t _%$args187595%_)))
    (define gx#module-context-ns
      (__make-class-slot-accessor gx#module-context::t 'ns))
    (define gx#module-context-path
      (__make-class-slot-accessor gx#module-context::t 'path))
    (define gx#module-context-import
      (__make-class-slot-accessor gx#module-context::t 'import))
    (define gx#module-context-export
      (__make-class-slot-accessor gx#module-context::t 'export))
    (define gx#module-context-e
      (__make-class-slot-accessor gx#module-context::t 'e))
    (define gx#module-context-code
      (__make-class-slot-accessor gx#module-context::t 'code))
    (define gx#module-context-super
      (__make-class-slot-accessor gx#module-context::t 'super))
    (define gx#module-context-up
      (__make-class-slot-accessor gx#module-context::t 'up))
    (define gx#module-context-down
      (__make-class-slot-accessor gx#module-context::t 'down))
    (define gx#module-context-id
      (__make-class-slot-accessor gx#module-context::t 'id))
    (define gx#module-context-table
      (__make-class-slot-accessor gx#module-context::t 'table))
    (define gx#module-context-ns-set!
      (__make-class-slot-mutator gx#module-context::t 'ns))
    (define gx#module-context-path-set!
      (__make-class-slot-mutator gx#module-context::t 'path))
    (define gx#module-context-import-set!
      (__make-class-slot-mutator gx#module-context::t 'import))
    (define gx#module-context-export-set!
      (__make-class-slot-mutator gx#module-context::t 'export))
    (define gx#module-context-e-set!
      (__make-class-slot-mutator gx#module-context::t 'e))
    (define gx#module-context-code-set!
      (__make-class-slot-mutator gx#module-context::t 'code))
    (define gx#module-context-super-set!
      (__make-class-slot-mutator gx#module-context::t 'super))
    (define gx#module-context-up-set!
      (__make-class-slot-mutator gx#module-context::t 'up))
    (define gx#module-context-down-set!
      (__make-class-slot-mutator gx#module-context::t 'down))
    (define gx#module-context-id-set!
      (__make-class-slot-mutator gx#module-context::t 'id))
    (define gx#module-context-table-set!
      (__make-class-slot-mutator gx#module-context::t 'table))
    (define gx#&module-context-ns
      (__make-class-slot-unchecked-accessor gx#module-context::t 'ns))
    (define gx#&module-context-path
      (__make-class-slot-unchecked-accessor gx#module-context::t 'path))
    (define gx#&module-context-import
      (__make-class-slot-unchecked-accessor gx#module-context::t 'import))
    (define gx#&module-context-export
      (__make-class-slot-unchecked-accessor gx#module-context::t 'export))
    (define gx#&module-context-e
      (__make-class-slot-unchecked-accessor gx#module-context::t 'e))
    (define gx#&module-context-code
      (__make-class-slot-unchecked-accessor gx#module-context::t 'code))
    (define gx#&module-context-super
      (__make-class-slot-unchecked-accessor gx#module-context::t 'super))
    (define gx#&module-context-up
      (__make-class-slot-unchecked-accessor gx#module-context::t 'up))
    (define gx#&module-context-down
      (__make-class-slot-unchecked-accessor gx#module-context::t 'down))
    (define gx#&module-context-id
      (__make-class-slot-unchecked-accessor gx#module-context::t 'id))
    (define gx#&module-context-table
      (__make-class-slot-unchecked-accessor gx#module-context::t 'table))
    (define gx#&module-context-ns-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'ns))
    (define gx#&module-context-path-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'path))
    (define gx#&module-context-import-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'import))
    (define gx#&module-context-export-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'export))
    (define gx#&module-context-e-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'e))
    (define gx#&module-context-code-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'code))
    (define gx#&module-context-super-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'super))
    (define gx#&module-context-up-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'up))
    (define gx#&module-context-down-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'down))
    (define gx#&module-context-id-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'id))
    (define gx#&module-context-table-set!
      (__make-class-slot-unchecked-mutator gx#module-context::t 'table))
    (define gx#prelude-context::t
      (__make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args187592%_
        (apply make-instance gx#prelude-context::t _%$args187592%_)))
    (define gx#prelude-context-path
      (__make-class-slot-accessor gx#prelude-context::t 'path))
    (define gx#prelude-context-import
      (__make-class-slot-accessor gx#prelude-context::t 'import))
    (define gx#prelude-context-e
      (__make-class-slot-accessor gx#prelude-context::t 'e))
    (define gx#prelude-context-super
      (__make-class-slot-accessor gx#prelude-context::t 'super))
    (define gx#prelude-context-up
      (__make-class-slot-accessor gx#prelude-context::t 'up))
    (define gx#prelude-context-down
      (__make-class-slot-accessor gx#prelude-context::t 'down))
    (define gx#prelude-context-id
      (__make-class-slot-accessor gx#prelude-context::t 'id))
    (define gx#prelude-context-table
      (__make-class-slot-accessor gx#prelude-context::t 'table))
    (define gx#prelude-context-path-set!
      (__make-class-slot-mutator gx#prelude-context::t 'path))
    (define gx#prelude-context-import-set!
      (__make-class-slot-mutator gx#prelude-context::t 'import))
    (define gx#prelude-context-e-set!
      (__make-class-slot-mutator gx#prelude-context::t 'e))
    (define gx#prelude-context-super-set!
      (__make-class-slot-mutator gx#prelude-context::t 'super))
    (define gx#prelude-context-up-set!
      (__make-class-slot-mutator gx#prelude-context::t 'up))
    (define gx#prelude-context-down-set!
      (__make-class-slot-mutator gx#prelude-context::t 'down))
    (define gx#prelude-context-id-set!
      (__make-class-slot-mutator gx#prelude-context::t 'id))
    (define gx#prelude-context-table-set!
      (__make-class-slot-mutator gx#prelude-context::t 'table))
    (define gx#&prelude-context-path
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'path))
    (define gx#&prelude-context-import
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'import))
    (define gx#&prelude-context-e
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'e))
    (define gx#&prelude-context-super
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'super))
    (define gx#&prelude-context-up
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'up))
    (define gx#&prelude-context-down
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'down))
    (define gx#&prelude-context-id
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'id))
    (define gx#&prelude-context-table
      (__make-class-slot-unchecked-accessor gx#prelude-context::t 'table))
    (define gx#&prelude-context-path-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'path))
    (define gx#&prelude-context-import-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'import))
    (define gx#&prelude-context-e-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'e))
    (define gx#&prelude-context-super-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'super))
    (define gx#&prelude-context-up-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'up))
    (define gx#&prelude-context-down-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'down))
    (define gx#&prelude-context-id-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'id))
    (define gx#&prelude-context-table-set!
      (__make-class-slot-unchecked-mutator gx#prelude-context::t 'table))
    (define gx#local-context::t
      (__make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#local-context? (__make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _%$args187589%_
        (apply make-instance gx#local-context::t _%$args187589%_)))
    (define gx#local-context-super
      (__make-class-slot-accessor gx#local-context::t 'super))
    (define gx#local-context-up
      (__make-class-slot-accessor gx#local-context::t 'up))
    (define gx#local-context-down
      (__make-class-slot-accessor gx#local-context::t 'down))
    (define gx#local-context-id
      (__make-class-slot-accessor gx#local-context::t 'id))
    (define gx#local-context-table
      (__make-class-slot-accessor gx#local-context::t 'table))
    (define gx#local-context-super-set!
      (__make-class-slot-mutator gx#local-context::t 'super))
    (define gx#local-context-up-set!
      (__make-class-slot-mutator gx#local-context::t 'up))
    (define gx#local-context-down-set!
      (__make-class-slot-mutator gx#local-context::t 'down))
    (define gx#local-context-id-set!
      (__make-class-slot-mutator gx#local-context::t 'id))
    (define gx#local-context-table-set!
      (__make-class-slot-mutator gx#local-context::t 'table))
    (define gx#&local-context-super
      (__make-class-slot-unchecked-accessor gx#local-context::t 'super))
    (define gx#&local-context-up
      (__make-class-slot-unchecked-accessor gx#local-context::t 'up))
    (define gx#&local-context-down
      (__make-class-slot-unchecked-accessor gx#local-context::t 'down))
    (define gx#&local-context-id
      (__make-class-slot-unchecked-accessor gx#local-context::t 'id))
    (define gx#&local-context-table
      (__make-class-slot-unchecked-accessor gx#local-context::t 'table))
    (define gx#&local-context-super-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'super))
    (define gx#&local-context-up-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'up))
    (define gx#&local-context-down-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'down))
    (define gx#&local-context-id-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'id))
    (define gx#&local-context-table-set!
      (__make-class-slot-unchecked-mutator gx#local-context::t 'table))
    (define gx#phi-context:::init!__%
      (lambda (_%self187562%_ _%id187563%_ _%super187564%_)
        (let ((_%self187567%_ _%self187562%_))
          (if (##fx< '3 (##structure-length _%self187567%_))
              (begin
                (##unchecked-structure-set!
                 _%self187567%_
                 _%id187563%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187567%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187567%_
                 _%super187564%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187567%_
                     '3
                     (##structure-length _%self187567%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self187580%_ _%id187581%_)
        (let ((_%super187583%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self187580%_
           _%id187581%_
           _%super187583%_))))
    (define gx#phi-context:::init!
      (lambda _g187649_
        (let ((_g187650_ (##length _g187649_)))
          (cond ((##fx= _g187650_ 2)
                 (apply gx#phi-context:::init!__0 _g187649_))
                ((##fx= _g187650_ 3)
                 (apply gx#phi-context:::init!__% _g187649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g187649_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self187415%_ _%super187416%_)
        (let ((_%self187419%_ _%self187415%_))
          (if (##fx< '3 (##structure-length _%self187419%_))
              (begin
                (##unchecked-structure-set!
                 _%self187419%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187419%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187419%_
                 _%super187416%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187419%_
                     '3
                     (##structure-length _%self187419%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self187432%_)
        (let ((_%super187434%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self187432%_ _%super187434%_))))
    (define gx#local-context:::init!
      (lambda _g187651_
        (let ((_g187652_ (##length _g187651_)))
          (cond ((##fx= _g187652_ 1)
                 (apply gx#local-context:::init!__0 _g187651_))
                ((##fx= _g187652_ 2)
                 (apply gx#local-context:::init!__% _g187651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g187651_))))))
    (__bind-method!__%
     gx#local-context::t
     ':init!
     gx#local-context:::init!
     '#f)
    (define gx#binding::t
      (__make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi properties)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args187289%_
        (apply make-instance gx#binding::t _%$args187289%_)))
    (define gx#binding-id (__make-class-slot-accessor gx#binding::t 'id))
    (define gx#binding-key (__make-class-slot-accessor gx#binding::t 'key))
    (define gx#binding-phi (__make-class-slot-accessor gx#binding::t 'phi))
    (define gx#binding-properties
      (__make-class-slot-accessor gx#binding::t 'properties))
    (define gx#binding-id-set! (__make-class-slot-mutator gx#binding::t 'id))
    (define gx#binding-key-set! (__make-class-slot-mutator gx#binding::t 'key))
    (define gx#binding-phi-set! (__make-class-slot-mutator gx#binding::t 'phi))
    (define gx#binding-properties-set!
      (__make-class-slot-mutator gx#binding::t 'properties))
    (define gx#&binding-id
      (__make-class-slot-unchecked-accessor gx#binding::t 'id))
    (define gx#&binding-key
      (__make-class-slot-unchecked-accessor gx#binding::t 'key))
    (define gx#&binding-phi
      (__make-class-slot-unchecked-accessor gx#binding::t 'phi))
    (define gx#&binding-properties
      (__make-class-slot-unchecked-accessor gx#binding::t 'properties))
    (define gx#&binding-id-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'id))
    (define gx#&binding-key-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'key))
    (define gx#&binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'phi))
    (define gx#&binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#binding::t 'properties))
    (define gx#binding:::init!
      (lambda (_%self187272%_ _%id187273%_ _%key187274%_ _%phi187275%_)
        (let ((_%self187278%_ _%self187272%_))
          (##unchecked-structure-set! _%self187278%_ _%id187273%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self187278%_ _%key187274%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self187278%_
           _%phi187275%_
           '3
           '#f
           '#f))))
    (__bind-method!__% gx#binding::t ':init! gx#binding:::init! '#f)
    (define gx#runtime-binding::t
      (__make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '(type macro)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args187147%_
        (apply make-instance gx#runtime-binding::t _%$args187147%_)))
    (define gx#runtime-binding-type
      (__make-class-slot-accessor gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro
      (__make-class-slot-accessor gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id
      (__make-class-slot-accessor gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key
      (__make-class-slot-accessor gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi
      (__make-class-slot-accessor gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties
      (__make-class-slot-accessor gx#runtime-binding::t 'properties))
    (define gx#runtime-binding-type-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'type))
    (define gx#runtime-binding-macro-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'macro))
    (define gx#runtime-binding-id-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'id))
    (define gx#runtime-binding-key-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'key))
    (define gx#runtime-binding-phi-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'phi))
    (define gx#runtime-binding-properties-set!
      (__make-class-slot-mutator gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties
      (__make-class-slot-unchecked-accessor gx#runtime-binding::t 'properties))
    (define gx#&runtime-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'type))
    (define gx#&runtime-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'macro))
    (define gx#&runtime-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'id))
    (define gx#&runtime-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'key))
    (define gx#&runtime-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'phi))
    (define gx#&runtime-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#runtime-binding::t 'properties))
    (define gx#local-binding::t
      (__make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args187144%_
        (apply make-instance gx#local-binding::t _%$args187144%_)))
    (define gx#local-binding-type
      (__make-class-slot-accessor gx#local-binding::t 'type))
    (define gx#local-binding-macro
      (__make-class-slot-accessor gx#local-binding::t 'macro))
    (define gx#local-binding-id
      (__make-class-slot-accessor gx#local-binding::t 'id))
    (define gx#local-binding-key
      (__make-class-slot-accessor gx#local-binding::t 'key))
    (define gx#local-binding-phi
      (__make-class-slot-accessor gx#local-binding::t 'phi))
    (define gx#local-binding-properties
      (__make-class-slot-accessor gx#local-binding::t 'properties))
    (define gx#local-binding-type-set!
      (__make-class-slot-mutator gx#local-binding::t 'type))
    (define gx#local-binding-macro-set!
      (__make-class-slot-mutator gx#local-binding::t 'macro))
    (define gx#local-binding-id-set!
      (__make-class-slot-mutator gx#local-binding::t 'id))
    (define gx#local-binding-key-set!
      (__make-class-slot-mutator gx#local-binding::t 'key))
    (define gx#local-binding-phi-set!
      (__make-class-slot-mutator gx#local-binding::t 'phi))
    (define gx#local-binding-properties-set!
      (__make-class-slot-mutator gx#local-binding::t 'properties))
    (define gx#&local-binding-type
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'type))
    (define gx#&local-binding-macro
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'macro))
    (define gx#&local-binding-id
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'id))
    (define gx#&local-binding-key
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'key))
    (define gx#&local-binding-phi
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'phi))
    (define gx#&local-binding-properties
      (__make-class-slot-unchecked-accessor gx#local-binding::t 'properties))
    (define gx#&local-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'type))
    (define gx#&local-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'macro))
    (define gx#&local-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'id))
    (define gx#&local-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'key))
    (define gx#&local-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'phi))
    (define gx#&local-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#local-binding::t 'properties))
    (define gx#top-binding::t
      (__make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args187141%_
        (apply make-instance gx#top-binding::t _%$args187141%_)))
    (define gx#top-binding-type
      (__make-class-slot-accessor gx#top-binding::t 'type))
    (define gx#top-binding-macro
      (__make-class-slot-accessor gx#top-binding::t 'macro))
    (define gx#top-binding-id
      (__make-class-slot-accessor gx#top-binding::t 'id))
    (define gx#top-binding-key
      (__make-class-slot-accessor gx#top-binding::t 'key))
    (define gx#top-binding-phi
      (__make-class-slot-accessor gx#top-binding::t 'phi))
    (define gx#top-binding-properties
      (__make-class-slot-accessor gx#top-binding::t 'properties))
    (define gx#top-binding-type-set!
      (__make-class-slot-mutator gx#top-binding::t 'type))
    (define gx#top-binding-macro-set!
      (__make-class-slot-mutator gx#top-binding::t 'macro))
    (define gx#top-binding-id-set!
      (__make-class-slot-mutator gx#top-binding::t 'id))
    (define gx#top-binding-key-set!
      (__make-class-slot-mutator gx#top-binding::t 'key))
    (define gx#top-binding-phi-set!
      (__make-class-slot-mutator gx#top-binding::t 'phi))
    (define gx#top-binding-properties-set!
      (__make-class-slot-mutator gx#top-binding::t 'properties))
    (define gx#&top-binding-type
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'type))
    (define gx#&top-binding-macro
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'macro))
    (define gx#&top-binding-id
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'id))
    (define gx#&top-binding-key
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'key))
    (define gx#&top-binding-phi
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'phi))
    (define gx#&top-binding-properties
      (__make-class-slot-unchecked-accessor gx#top-binding::t 'properties))
    (define gx#&top-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'type))
    (define gx#&top-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'macro))
    (define gx#&top-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'id))
    (define gx#&top-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'key))
    (define gx#&top-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'phi))
    (define gx#&top-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#top-binding::t 'properties))
    (define gx#module-binding::t
      (__make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args187138%_
        (apply make-instance gx#module-binding::t _%$args187138%_)))
    (define gx#module-binding-context
      (__make-class-slot-accessor gx#module-binding::t 'context))
    (define gx#module-binding-type
      (__make-class-slot-accessor gx#module-binding::t 'type))
    (define gx#module-binding-macro
      (__make-class-slot-accessor gx#module-binding::t 'macro))
    (define gx#module-binding-id
      (__make-class-slot-accessor gx#module-binding::t 'id))
    (define gx#module-binding-key
      (__make-class-slot-accessor gx#module-binding::t 'key))
    (define gx#module-binding-phi
      (__make-class-slot-accessor gx#module-binding::t 'phi))
    (define gx#module-binding-properties
      (__make-class-slot-accessor gx#module-binding::t 'properties))
    (define gx#module-binding-context-set!
      (__make-class-slot-mutator gx#module-binding::t 'context))
    (define gx#module-binding-type-set!
      (__make-class-slot-mutator gx#module-binding::t 'type))
    (define gx#module-binding-macro-set!
      (__make-class-slot-mutator gx#module-binding::t 'macro))
    (define gx#module-binding-id-set!
      (__make-class-slot-mutator gx#module-binding::t 'id))
    (define gx#module-binding-key-set!
      (__make-class-slot-mutator gx#module-binding::t 'key))
    (define gx#module-binding-phi-set!
      (__make-class-slot-mutator gx#module-binding::t 'phi))
    (define gx#module-binding-properties-set!
      (__make-class-slot-mutator gx#module-binding::t 'properties))
    (define gx#&module-binding-context
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'context))
    (define gx#&module-binding-type
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'type))
    (define gx#&module-binding-macro
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'macro))
    (define gx#&module-binding-id
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'id))
    (define gx#&module-binding-key
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'key))
    (define gx#&module-binding-phi
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'phi))
    (define gx#&module-binding-properties
      (__make-class-slot-unchecked-accessor gx#module-binding::t 'properties))
    (define gx#&module-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'context))
    (define gx#&module-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'type))
    (define gx#&module-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'macro))
    (define gx#&module-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'id))
    (define gx#&module-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'key))
    (define gx#&module-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'phi))
    (define gx#&module-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#module-binding::t 'properties))
    (define gx#extern-binding::t
      (__make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args187135%_
        (apply make-instance gx#extern-binding::t _%$args187135%_)))
    (define gx#extern-binding-type
      (__make-class-slot-accessor gx#extern-binding::t 'type))
    (define gx#extern-binding-macro
      (__make-class-slot-accessor gx#extern-binding::t 'macro))
    (define gx#extern-binding-id
      (__make-class-slot-accessor gx#extern-binding::t 'id))
    (define gx#extern-binding-key
      (__make-class-slot-accessor gx#extern-binding::t 'key))
    (define gx#extern-binding-phi
      (__make-class-slot-accessor gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties
      (__make-class-slot-accessor gx#extern-binding::t 'properties))
    (define gx#extern-binding-type-set!
      (__make-class-slot-mutator gx#extern-binding::t 'type))
    (define gx#extern-binding-macro-set!
      (__make-class-slot-mutator gx#extern-binding::t 'macro))
    (define gx#extern-binding-id-set!
      (__make-class-slot-mutator gx#extern-binding::t 'id))
    (define gx#extern-binding-key-set!
      (__make-class-slot-mutator gx#extern-binding::t 'key))
    (define gx#extern-binding-phi-set!
      (__make-class-slot-mutator gx#extern-binding::t 'phi))
    (define gx#extern-binding-properties-set!
      (__make-class-slot-mutator gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'id))
    (define gx#&extern-binding-key
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties
      (__make-class-slot-unchecked-accessor gx#extern-binding::t 'properties))
    (define gx#&extern-binding-type-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'type))
    (define gx#&extern-binding-macro-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'macro))
    (define gx#&extern-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'id))
    (define gx#&extern-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'key))
    (define gx#&extern-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'phi))
    (define gx#&extern-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#extern-binding::t 'properties))
    (define gx#runtime-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#runtime-binding::t
     ':init!
     gx#runtime-binding:::init!
     '#f)
    (define gx#local-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#local-binding::t
     ':init!
     gx#local-binding:::init!
     '#f)
    (define gx#top-binding:::init! gx#binding:::init!)
    (__bind-method!__% gx#top-binding::t ':init! gx#top-binding:::init! '#f)
    (define gx#module-binding:::init!
      (lambda (_%self186751%_
               _%id186752%_
               _%key186753%_
               _%phi186754%_
               _%ctx186755%_)
        (let ((_%self186758%_ _%self186751%_))
          (gx#binding:::init!
           _%self186758%_
           _%id186752%_
           _%key186753%_
           _%phi186754%_)
          (##unchecked-structure-set!
           _%self186758%_
           _%ctx186755%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#module-binding::t
     ':init!
     gx#module-binding:::init!
     '#f)
    (define gx#extern-binding:::init! gx#binding:::init!)
    (__bind-method!__%
     gx#extern-binding::t
     ':init!
     gx#extern-binding:::init!
     '#f)
    (define gx#syntax-binding::t
      (__make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       ':init!))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args186504%_
        (apply make-instance gx#syntax-binding::t _%$args186504%_)))
    (define gx#syntax-binding-e
      (__make-class-slot-accessor gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id
      (__make-class-slot-accessor gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key
      (__make-class-slot-accessor gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi
      (__make-class-slot-accessor gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties
      (__make-class-slot-accessor gx#syntax-binding::t 'properties))
    (define gx#syntax-binding-e-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'e))
    (define gx#syntax-binding-id-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'id))
    (define gx#syntax-binding-key-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'key))
    (define gx#syntax-binding-phi-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'phi))
    (define gx#syntax-binding-properties-set!
      (__make-class-slot-mutator gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties
      (__make-class-slot-unchecked-accessor gx#syntax-binding::t 'properties))
    (define gx#&syntax-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'e))
    (define gx#&syntax-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'id))
    (define gx#&syntax-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'key))
    (define gx#&syntax-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'phi))
    (define gx#&syntax-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#syntax-binding::t 'properties))
    (define gx#import-binding::t
      (__make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       ':init!))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args186501%_
        (apply make-instance gx#import-binding::t _%$args186501%_)))
    (define gx#import-binding-e
      (__make-class-slot-accessor gx#import-binding::t 'e))
    (define gx#import-binding-context
      (__make-class-slot-accessor gx#import-binding::t 'context))
    (define gx#import-binding-weak?
      (__make-class-slot-accessor gx#import-binding::t 'weak?))
    (define gx#import-binding-id
      (__make-class-slot-accessor gx#import-binding::t 'id))
    (define gx#import-binding-key
      (__make-class-slot-accessor gx#import-binding::t 'key))
    (define gx#import-binding-phi
      (__make-class-slot-accessor gx#import-binding::t 'phi))
    (define gx#import-binding-properties
      (__make-class-slot-accessor gx#import-binding::t 'properties))
    (define gx#import-binding-e-set!
      (__make-class-slot-mutator gx#import-binding::t 'e))
    (define gx#import-binding-context-set!
      (__make-class-slot-mutator gx#import-binding::t 'context))
    (define gx#import-binding-weak?-set!
      (__make-class-slot-mutator gx#import-binding::t 'weak?))
    (define gx#import-binding-id-set!
      (__make-class-slot-mutator gx#import-binding::t 'id))
    (define gx#import-binding-key-set!
      (__make-class-slot-mutator gx#import-binding::t 'key))
    (define gx#import-binding-phi-set!
      (__make-class-slot-mutator gx#import-binding::t 'phi))
    (define gx#import-binding-properties-set!
      (__make-class-slot-mutator gx#import-binding::t 'properties))
    (define gx#&import-binding-e
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'e))
    (define gx#&import-binding-context
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'context))
    (define gx#&import-binding-weak?
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'weak?))
    (define gx#&import-binding-id
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'id))
    (define gx#&import-binding-key
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'key))
    (define gx#&import-binding-phi
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'phi))
    (define gx#&import-binding-properties
      (__make-class-slot-unchecked-accessor gx#import-binding::t 'properties))
    (define gx#&import-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'e))
    (define gx#&import-binding-context-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'context))
    (define gx#&import-binding-weak?-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'weak?))
    (define gx#&import-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'id))
    (define gx#&import-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'key))
    (define gx#&import-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'phi))
    (define gx#&import-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#import-binding::t 'properties))
    (define gx#alias-binding::t
      (__make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: e))))
       ':init!))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args186498%_
        (apply make-instance gx#alias-binding::t _%$args186498%_)))
    (define gx#alias-binding-e
      (__make-class-slot-accessor gx#alias-binding::t 'e))
    (define gx#alias-binding-id
      (__make-class-slot-accessor gx#alias-binding::t 'id))
    (define gx#alias-binding-key
      (__make-class-slot-accessor gx#alias-binding::t 'key))
    (define gx#alias-binding-phi
      (__make-class-slot-accessor gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties
      (__make-class-slot-accessor gx#alias-binding::t 'properties))
    (define gx#alias-binding-e-set!
      (__make-class-slot-mutator gx#alias-binding::t 'e))
    (define gx#alias-binding-id-set!
      (__make-class-slot-mutator gx#alias-binding::t 'id))
    (define gx#alias-binding-key-set!
      (__make-class-slot-mutator gx#alias-binding::t 'key))
    (define gx#alias-binding-phi-set!
      (__make-class-slot-mutator gx#alias-binding::t 'phi))
    (define gx#alias-binding-properties-set!
      (__make-class-slot-mutator gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'e))
    (define gx#&alias-binding-id
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'id))
    (define gx#&alias-binding-key
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties
      (__make-class-slot-unchecked-accessor gx#alias-binding::t 'properties))
    (define gx#&alias-binding-e-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'e))
    (define gx#&alias-binding-id-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'id))
    (define gx#&alias-binding-key-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'key))
    (define gx#&alias-binding-phi-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'phi))
    (define gx#&alias-binding-properties-set!
      (__make-class-slot-unchecked-mutator gx#alias-binding::t 'properties))
    (define gx#syntax-binding:::init!
      (lambda (_%self186480%_
               _%id186481%_
               _%key186482%_
               _%phi186483%_
               _%e186484%_)
        (let ((_%self186487%_ _%self186480%_))
          (gx#binding:::init!
           _%self186487%_
           _%id186481%_
           _%key186482%_
           _%phi186483%_)
          (##unchecked-structure-set! _%self186487%_ _%e186484%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self186338%_
               _%id186339%_
               _%key186340%_
               _%phi186341%_
               _%e186342%_
               _%ctx186343%_
               _%weak?186344%_)
        (let ((_%self186347%_ _%self186338%_))
          (gx#binding:::init!
           _%self186347%_
           _%id186339%_
           _%key186340%_
           _%phi186341%_)
          (##unchecked-structure-set! _%self186347%_ _%e186342%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self186347%_ _%ctx186343%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self186347%_
           _%weak?186344%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self186198%_
               _%id186199%_
               _%key186200%_
               _%phi186201%_
               _%e186202%_)
        (let ((_%self186205%_ _%self186198%_))
          (gx#binding:::init!
           _%self186205%_
           _%id186199%_
           _%key186200%_
           _%phi186201%_)
          (##unchecked-structure-set! _%self186205%_ _%e186202%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#alias-binding::t
     ':init!
     gx#alias-binding:::init!
     '#f)
    (define gx#expander::t
      (__make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args186073%_
        (apply make-instance gx#expander::t _%$args186073%_)))
    (define gx#expander-e (__make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (__make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (__make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (__make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (__make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '((print: id)))
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args186070%_
        (apply make-instance gx#core-expander::t _%$args186070%_)))
    (define gx#core-expander-id
      (__make-class-slot-accessor gx#core-expander::t 'id))
    (define gx#core-expander-compile-top
      (__make-class-slot-accessor gx#core-expander::t 'compile-top))
    (define gx#core-expander-e
      (__make-class-slot-accessor gx#core-expander::t 'e))
    (define gx#core-expander-id-set!
      (__make-class-slot-mutator gx#core-expander::t 'id))
    (define gx#core-expander-compile-top-set!
      (__make-class-slot-mutator gx#core-expander::t 'compile-top))
    (define gx#core-expander-e-set!
      (__make-class-slot-mutator gx#core-expander::t 'e))
    (define gx#&core-expander-id
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e
      (__make-class-slot-unchecked-accessor gx#core-expander::t 'e))
    (define gx#&core-expander-id-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'id))
    (define gx#&core-expander-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'compile-top))
    (define gx#&core-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#core-expander::t 'e))
    (define gx#expression-form::t
      (__make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (__make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _%$args186067%_
        (apply make-instance gx#expression-form::t _%$args186067%_)))
    (define gx#expression-form-id
      (__make-class-slot-accessor gx#expression-form::t 'id))
    (define gx#expression-form-compile-top
      (__make-class-slot-accessor gx#expression-form::t 'compile-top))
    (define gx#expression-form-e
      (__make-class-slot-accessor gx#expression-form::t 'e))
    (define gx#expression-form-id-set!
      (__make-class-slot-mutator gx#expression-form::t 'id))
    (define gx#expression-form-compile-top-set!
      (__make-class-slot-mutator gx#expression-form::t 'compile-top))
    (define gx#expression-form-e-set!
      (__make-class-slot-mutator gx#expression-form::t 'e))
    (define gx#&expression-form-id
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#expression-form::t
       'compile-top))
    (define gx#&expression-form-e
      (__make-class-slot-unchecked-accessor gx#expression-form::t 'e))
    (define gx#&expression-form-id-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'id))
    (define gx#&expression-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'compile-top))
    (define gx#&expression-form-e-set!
      (__make-class-slot-unchecked-mutator gx#expression-form::t 'e))
    (define gx#special-form::t
      (__make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (__make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _%$args186064%_
        (apply make-instance gx#special-form::t _%$args186064%_)))
    (define gx#special-form-id
      (__make-class-slot-accessor gx#special-form::t 'id))
    (define gx#special-form-compile-top
      (__make-class-slot-accessor gx#special-form::t 'compile-top))
    (define gx#special-form-e
      (__make-class-slot-accessor gx#special-form::t 'e))
    (define gx#special-form-id-set!
      (__make-class-slot-mutator gx#special-form::t 'id))
    (define gx#special-form-compile-top-set!
      (__make-class-slot-mutator gx#special-form::t 'compile-top))
    (define gx#special-form-e-set!
      (__make-class-slot-mutator gx#special-form::t 'e))
    (define gx#&special-form-id
      (__make-class-slot-unchecked-accessor gx#special-form::t 'id))
    (define gx#&special-form-compile-top
      (__make-class-slot-unchecked-accessor gx#special-form::t 'compile-top))
    (define gx#&special-form-e
      (__make-class-slot-unchecked-accessor gx#special-form::t 'e))
    (define gx#&special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'id))
    (define gx#&special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'compile-top))
    (define gx#&special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#special-form::t 'e))
    (define gx#definition-form::t
      (__make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (__make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _%$args186061%_
        (apply make-instance gx#definition-form::t _%$args186061%_)))
    (define gx#definition-form-id
      (__make-class-slot-accessor gx#definition-form::t 'id))
    (define gx#definition-form-compile-top
      (__make-class-slot-accessor gx#definition-form::t 'compile-top))
    (define gx#definition-form-e
      (__make-class-slot-accessor gx#definition-form::t 'e))
    (define gx#definition-form-id-set!
      (__make-class-slot-mutator gx#definition-form::t 'id))
    (define gx#definition-form-compile-top-set!
      (__make-class-slot-mutator gx#definition-form::t 'compile-top))
    (define gx#definition-form-e-set!
      (__make-class-slot-mutator gx#definition-form::t 'e))
    (define gx#&definition-form-id
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#definition-form::t
       'compile-top))
    (define gx#&definition-form-e
      (__make-class-slot-unchecked-accessor gx#definition-form::t 'e))
    (define gx#&definition-form-id-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'id))
    (define gx#&definition-form-compile-top-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'compile-top))
    (define gx#&definition-form-e-set!
      (__make-class-slot-unchecked-mutator gx#definition-form::t 'e))
    (define gx#top-special-form::t
      (__make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (__make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _%$args186058%_
        (apply make-instance gx#top-special-form::t _%$args186058%_)))
    (define gx#top-special-form-id
      (__make-class-slot-accessor gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top
      (__make-class-slot-accessor gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e
      (__make-class-slot-accessor gx#top-special-form::t 'e))
    (define gx#top-special-form-id-set!
      (__make-class-slot-mutator gx#top-special-form::t 'id))
    (define gx#top-special-form-compile-top-set!
      (__make-class-slot-mutator gx#top-special-form::t 'compile-top))
    (define gx#top-special-form-e-set!
      (__make-class-slot-mutator gx#top-special-form::t 'e))
    (define gx#&top-special-form-id
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e
      (__make-class-slot-unchecked-accessor gx#top-special-form::t 'e))
    (define gx#&top-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'id))
    (define gx#&top-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#top-special-form::t
       'compile-top))
    (define gx#&top-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#top-special-form::t 'e))
    (define gx#module-special-form::t
      (__make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (__make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _%$args186055%_
        (apply make-instance gx#module-special-form::t _%$args186055%_)))
    (define gx#module-special-form-id
      (__make-class-slot-accessor gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top
      (__make-class-slot-accessor gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e
      (__make-class-slot-accessor gx#module-special-form::t 'e))
    (define gx#module-special-form-id-set!
      (__make-class-slot-mutator gx#module-special-form::t 'id))
    (define gx#module-special-form-compile-top-set!
      (__make-class-slot-mutator gx#module-special-form::t 'compile-top))
    (define gx#module-special-form-e-set!
      (__make-class-slot-mutator gx#module-special-form::t 'e))
    (define gx#&module-special-form-id
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top
      (__make-class-slot-unchecked-accessor
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e
      (__make-class-slot-unchecked-accessor gx#module-special-form::t 'e))
    (define gx#&module-special-form-id-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'id))
    (define gx#&module-special-form-compile-top-set!
      (__make-class-slot-unchecked-mutator
       gx#module-special-form::t
       'compile-top))
    (define gx#&module-special-form-e-set!
      (__make-class-slot-unchecked-mutator gx#module-special-form::t 'e))
    (define gx#feature-expander::t
      (__make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (__make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _%$args186052%_
        (apply make-instance gx#feature-expander::t _%$args186052%_)))
    (define gx#feature-expander-e
      (__make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (__make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (__make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (__make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (__make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _%$args186049%_
        (apply make-instance gx#private-feature-expander::t _%$args186049%_)))
    (define gx#private-feature-expander-e
      (__make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (__make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (__make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (__make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (__make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _%$args186046%_
        (apply make-instance gx#reserved-expander::t _%$args186046%_)))
    (define gx#reserved-expander-e
      (__make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (__make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (__make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (__make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (__make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _%$args186043%_
        (apply make-instance gx#macro-expander::t _%$args186043%_)))
    (define gx#macro-expander-e
      (__make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (__make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (__make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (__make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (__make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _%$args186040%_
        (apply make-instance gx#rename-macro-expander::t _%$args186040%_)))
    (define gx#rename-macro-expander-e
      (__make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (__make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (__make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (__make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args186037%_
        (apply make-instance gx#user-expander::t _%$args186037%_)))
    (define gx#user-expander-context
      (__make-class-slot-accessor gx#user-expander::t 'context))
    (define gx#user-expander-phi
      (__make-class-slot-accessor gx#user-expander::t 'phi))
    (define gx#user-expander-e
      (__make-class-slot-accessor gx#user-expander::t 'e))
    (define gx#user-expander-context-set!
      (__make-class-slot-mutator gx#user-expander::t 'context))
    (define gx#user-expander-phi-set!
      (__make-class-slot-mutator gx#user-expander::t 'phi))
    (define gx#user-expander-e-set!
      (__make-class-slot-mutator gx#user-expander::t 'e))
    (define gx#&user-expander-context
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'context))
    (define gx#&user-expander-phi
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'phi))
    (define gx#&user-expander-e
      (__make-class-slot-unchecked-accessor gx#user-expander::t 'e))
    (define gx#&user-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'context))
    (define gx#&user-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'phi))
    (define gx#&user-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#user-expander::t 'e))
    (define gx#expander-mark::t
      (__make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args186034%_
        (apply make-instance gx#expander-mark::t _%$args186034%_)))
    (define gx#expander-mark-subst
      (__make-class-slot-accessor gx#expander-mark::t 'subst))
    (define gx#expander-mark-context
      (__make-class-slot-accessor gx#expander-mark::t 'context))
    (define gx#expander-mark-phi
      (__make-class-slot-accessor gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace
      (__make-class-slot-accessor gx#expander-mark::t 'trace))
    (define gx#expander-mark-subst-set!
      (__make-class-slot-mutator gx#expander-mark::t 'subst))
    (define gx#expander-mark-context-set!
      (__make-class-slot-mutator gx#expander-mark::t 'context))
    (define gx#expander-mark-phi-set!
      (__make-class-slot-mutator gx#expander-mark::t 'phi))
    (define gx#expander-mark-trace-set!
      (__make-class-slot-mutator gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace
      (__make-class-slot-unchecked-accessor gx#expander-mark::t 'trace))
    (define gx#&expander-mark-subst-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'subst))
    (define gx#&expander-mark-context-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'context))
    (define gx#&expander-mark-phi-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'phi))
    (define gx#&expander-mark-trace-set!
      (__make-class-slot-unchecked-mutator gx#expander-mark::t 'trace))
    (define gx#raise-syntax-error
      (lambda (_%ctx186018%_
               _%message186019%_
               _%stx186020%_
               .
               _%details186021%_)
        (let ((_%ctx186032%_
               (let ((_%$e186023%_ _%ctx186018%_))
                 (if _%$e186023%_
                     _%$e186023%_
                     (let ((_%$e186026%_ (gx#core-context-top__0)))
                       (if _%$e186026%_
                           (list 'expand
                                 (##structure-ref
                                  _%$e186026%_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                           '#f))))))
          (raise (make-syntax-error
                  _%message186019%_
                  (cons _%stx186020%_ _%details186021%_)
                  _%ctx186032%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx186005%_ _%expression?186006%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx186005%_ _%expression?186006%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx186011%_)
        (let ((_%expression?186013%_ '#f))
          (gx#eval-syntax__% _%stx186011%_ _%expression?186013%_))))
    (define gx#eval-syntax
      (lambda _g187653_
        (let ((_g187654_ (##length _g187653_)))
          (cond ((##fx= _g187654_ 1) (apply gx#eval-syntax__0 _g187653_))
                ((##fx= _g187654_ 2) (apply gx#eval-syntax__% _g187653_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g187653_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx185990%_ _%expression?185991%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx185990%_ _%expression?185991%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx185997%_)
        (let ((_%expression?185999%_ '#f))
          (gx#eval-syntax+1__% _%stx185997%_ _%expression?185999%_))))
    (define gx#eval-syntax+1
      (lambda _g187655_
        (let ((_g187656_ (##length _g187655_)))
          (cond ((##fx= _g187656_ 1) (apply gx#eval-syntax+1__0 _g187655_))
                ((##fx= _g187656_ 2) (apply gx#eval-syntax+1__% _g187655_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g187655_))))))
    (define gx#eval-expression+1
      (lambda (_%stx185987%_) (gx#eval-syntax+1__% _%stx185987%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx185985%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx185985%_))))
    (define gx#core-expand__%
      (lambda (_%stx185972%_ _%expression?185973%_)
        (if _%expression?185973%_
            (gx#core-expand-expression _%stx185972%_)
            (gx#core-expand-top _%stx185972%_))))
    (define gx#core-expand__0
      (lambda (_%stx185978%_)
        (let ((_%expression?185980%_ '#f))
          (gx#core-expand__% _%stx185978%_ _%expression?185980%_))))
    (define gx#core-expand
      (lambda _g187657_
        (let ((_g187658_ (##length _g187657_)))
          (cond ((##fx= _g187658_ 1) (apply gx#core-expand__0 _g187657_))
                ((##fx= _g187658_ 2) (apply gx#core-expand__% _g187657_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g187657_))))))
    (define gx#core-expand-top
      (lambda (_%stx185939%_)
        (let* ((_%stx185941%_ (gx#core-expand*__0 _%stx185939%_))
               (_%$%e185942185949%_ _%stx185941%_)
               (_%$%E185944185953%_
                (lambda () (gx#core-expand-expression _%stx185941%_)))
               (_%$%E185943185967%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185942185949%_)
                      (let ((_%$%e185945185957%_
                             (gx#syntax-e _%$%e185942185949%_)))
                        (let ((_%$%hd185946185960%_
                               (##car _%$%e185945185957%_))
                              (_%$%tl185947185962%_
                               (##cdr _%$%e185945185957%_)))
                          (let ((_%form185965%_ _%$%hd185946185960%_))
                            (if (gx#core-bound-identifier?__0 _%form185965%_)
                                _%stx185941%_
                                (_%$%E185944185953%_)))))
                      (_%$%E185944185953%_)))))
          (_%$%E185943185967%_))))
    (define gx#core-expand-expression
      (lambda (_%stx185871%_)
        (letrec ((_%sealed-expression?185873%_
                  (lambda (_%hd185909%_)
                    (if (gx#sealed-syntax? _%hd185909%_)
                        (let* ((_%$%e185910185917%_ _%hd185909%_)
                               (_%$%E185912185921%_ (lambda () '#f))
                               (_%$%E185911185935%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e185910185917%_)
                                      (let ((_%$%e185913185925%_
                                             (gx#syntax-e
                                              _%$%e185910185917%_)))
                                        (let ((_%$%hd185914185928%_
                                               (##car _%$%e185913185925%_))
                                              (_%$%tl185915185930%_
                                               (##cdr _%$%e185913185925%_)))
                                          (let ((_%form185933%_
                                                 _%$%hd185914185928%_))
                                            (gx#core-bound-identifier?__%
                                             _%form185933%_
                                             gx#expression-form-binding?))))
                                      (_%$%E185912185921%_)))))
                          (_%$%E185911185935%_))
                        '#f)))
                 (_%illegal-expression185874%_
                  (lambda (_%hd185906%_ . _%_185907%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx185871%_
                     _%hd185906%_)))
                 (_%expand-e185875%_
                  (lambda (_%form185898%_ _%hd185899%_)
                    (let ((_%bind185901%_
                           (if (##structure-instance-of?
                                _%form185898%_
                                'gx#binding::t)
                               _%form185898%_
                               (gx#resolve-identifier__0 _%form185898%_))))
                      (if (gx#core-expander-binding? _%bind185901%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind185901%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd185899%_
                            (gx#stx-source _%stx185871%_)))
                          (if (##structure-direct-instance-of?
                               _%bind185901%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind185901%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd185899%_
                                 (gx#stx-source _%stx185871%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx185871%_
                               _%form185898%_)))))))
          (let ((_%hd185877%_ (gx#core-expand-head _%stx185871%_)))
            (if (_%sealed-expression?185873%_ _%hd185877%_)
                _%hd185877%_
                (if (gx#stx-pair? _%hd185877%_)
                    (let* ((_%form185881%_ (gx#stx-car _%hd185877%_))
                           (_%bind185883%_
                            (if (gx#identifier? _%form185881%_)
                                (gx#resolve-identifier__0 _%form185881%_)
                                '#f)))
                      (if (or (not _%bind185883%_)
                              (not (gx#core-expander-binding? _%bind185883%_)))
                          (_%expand-e185875%_
                           '%%app
                           (cons '%%app _%hd185877%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind185883%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd185877%_
                               _%illegal-expression185874%_)
                              (if (gx#expression-form-binding? _%bind185883%_)
                                  (_%expand-e185875%_
                                   _%bind185883%_
                                   _%hd185877%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind185883%_)
                                      (gx#core-expand-expression
                                       (_%expand-e185875%_
                                        _%bind185883%_
                                        _%hd185877%_))
                                      (_%illegal-expression185874%_
                                       _%hd185877%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd185877%_)
                        (_%illegal-expression185874%_ _%hd185877%_)
                        (if (gx#identifier? _%hd185877%_)
                            (_%expand-e185875%_
                             '%%ref
                             (cons '%%ref (cons _%hd185877%_ '())))
                            (if (gx#stx-datum? _%hd185877%_)
                                (_%expand-e185875%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd185877%_ '())))
                                (_%illegal-expression185874%_
                                 _%hd185877%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx185866%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx185869%_ (gx#core-expand-expression _%stx185866%_)))
             (values _%stx185869%_ (gx#eval-syntax* _%stx185869%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx185847%_ _%stop?185848%_)
        (let _%lp185850%_ ((_%stx185852%_ _%stx185847%_))
          (if (_%stop?185848%_ _%stx185852%_)
              _%stx185852%_
              (let ((_%rstx185854%_ (gx#core-expand1 _%stx185852%_)))
                (if (eq? _%stx185852%_ _%rstx185854%_)
                    _%stx185852%_
                    (_%lp185850%_ _%rstx185854%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx185859%_)
        (let ((_%stop?185861%_ false))
          (gx#core-expand*__% _%stx185859%_ _%stop?185861%_))))
    (define gx#core-expand*
      (lambda _g187659_
        (let ((_g187660_ (##length _g187659_)))
          (cond ((##fx= _g187660_ 1) (apply gx#core-expand*__0 _g187659_))
                ((##fx= _g187660_ 2) (apply gx#core-expand*__% _g187659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g187659_))))))
    (define gx#core-expand1
      (lambda (_%stx185799%_)
        (letrec ((_%step185801%_
                  (lambda (_%hd185838%_)
                    (let ((_%bind185840%_
                           (gx#resolve-identifier__0 _%hd185838%_)))
                      (if (##structure-instance-of?
                           _%bind185840%_
                           'gx#runtime-binding::t)
                          _%stx185799%_
                          (if (##structure-direct-instance-of?
                               _%bind185840%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind185840%_
                                '5
                                '#f
                                '#f)
                               _%stx185799%_)
                              (if (not _%bind185840%_)
                                  _%stx185799%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx185799%_))))))))
          (let* ((_%$%e185802185810%_ _%stx185799%_)
                 (_%$%E185808185814%_ (lambda () _%stx185799%_))
                 (_%$%E185804185820%_
                  (lambda ()
                    (let ((_%hd185818%_ _%$%e185802185810%_))
                      (if (gx#identifier? _%hd185818%_)
                          (_%step185801%_ _%hd185818%_)
                          (_%$%E185808185814%_)))))
                 (_%$%E185803185834%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185802185810%_)
                        (let ((_%$%e185805185824%_
                               (gx#syntax-e _%$%e185802185810%_)))
                          (let ((_%$%hd185806185827%_
                                 (##car _%$%e185805185824%_))
                                (_%$%tl185807185829%_
                                 (##cdr _%$%e185805185824%_)))
                            (let ((_%hd185832%_ _%$%hd185806185827%_))
                              (if (gx#identifier? _%hd185832%_)
                                  (_%step185801%_ _%hd185832%_)
                                  (_%$%E185804185820%_)))))
                        (_%$%E185804185820%_)))))
            (_%$%E185803185834%_)))))
    (define gx#core-expand-head
      (lambda (_%stx185765%_)
        (letrec ((_%stop?185767%_
                  (lambda (_%stx185769%_)
                    (let* ((_%$%e185770185777%_ _%stx185769%_)
                           (_%$%E185772185781%_ (lambda () '#f))
                           (_%$%E185771185795%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185770185777%_)
                                  (let ((_%$%e185773185785%_
                                         (gx#syntax-e _%$%e185770185777%_)))
                                    (let ((_%$%hd185774185788%_
                                           (##car _%$%e185773185785%_))
                                          (_%$%tl185775185790%_
                                           (##cdr _%$%e185773185785%_)))
                                      (let ((_%hd185793%_
                                             _%$%hd185774185788%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd185793%_))))
                                  (_%$%E185772185781%_)))))
                      (_%$%E185771185795%_)))))
          (gx#core-expand*__% _%stx185765%_ _%stop?185767%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx185571%_
               _%expand-special185572%_
               _%begin-form185573%_
               _%expand-e185574%_)
        (letrec ((_%expand-splice185576%_
                  (lambda (_%hd185739%_
                           _%body185740%_
                           _%rest185741%_
                           _%r185742%_)
                    (if (gx#stx-list? _%body185740%_)
                        (_%K185580%_
                         (gx#stx-foldr cons _%rest185741%_ _%body185740%_)
                         _%r185742%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx185571%_
                         _%hd185739%_))))
                 (_%expand-cond-expand185577%_
                  (lambda (_%hd185735%_ _%rest185736%_ _%r185737%_)
                    (_%K185580%_
                     (cons (gx#core-expand-cond-expand% _%hd185735%_)
                           _%rest185736%_)
                     _%r185737%_)))
                 (_%expand-include185578%_
                  (lambda (_%hd185684%_ _%rest185685%_ _%r185686%_)
                    (let* ((_%$%e185687185697%_ _%hd185684%_)
                           (_%$%E185689185701%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185687185697%_)))
                           (_%$%E185688185731%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185687185697%_)
                                  (let ((_%$%e185690185705%_
                                         (gx#syntax-e _%$%e185687185697%_)))
                                    (let ((_%$%hd185691185708%_
                                           (##car _%$%e185690185705%_))
                                          (_%$%tl185692185710%_
                                           (##cdr _%$%e185690185705%_)))
                                      (if (gx#stx-pair? _%$%tl185692185710%_)
                                          (let ((_%$%e185693185713%_
                                                 (gx#syntax-e
                                                  _%$%tl185692185710%_)))
                                            (let ((_%$%hd185694185716%_
                                                   (##car _%$%e185693185713%_))
                                                  (_%$%tl185695185718%_
                                                   (##cdr _%$%e185693185713%_)))
                                              (let ((_%path185721%_
                                                     _%$%hd185694185716%_))
                                                (if (gx#stx-null?
                                                     _%$%tl185695185718%_)
                                                    (if (gx#stx-string?
                                                         _%path185721%_)
                                                        (let* ((_%rpath185723%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path185721%_
                         (gx#stx-source _%hd185684%_)))
                       (_%block185725%_
                        (gx#core-expand-include%__%
                         _%hd185684%_
                         _%rpath185723%_))
                       (_%rbody185728%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block185725%_
                            _%expand-special185572%_
                            '#f
                            _%expand-e185574%_))
                         gx#current-expander-path
                         (cons _%rpath185723%_ (gx#current-expander-path)))))
                  (_%K185580%_
                   _%rest185685%_
                   (append _%rbody185728%_ _%r185686%_)))
                (_%$%E185689185701%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185689185701%_)))))
                                          (_%$%E185689185701%_))))
                                  (_%$%E185689185701%_)))))
                      (_%$%E185688185731%_))))
                 (_%expand-expression185579%_
                  (lambda (_%hd185680%_ _%rest185681%_ _%r185682%_)
                    (_%K185580%_
                     _%rest185681%_
                     (cons (_%expand-e185574%_ _%hd185680%_) _%r185682%_))))
                 (_%K185580%_
                  (lambda (_%rest185610%_ _%r185611%_)
                    (let* ((_%$%e185612185619%_ _%rest185610%_)
                           (_%$%E185614185623%_
                            (lambda ()
                              (if _%begin-form185573%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form185573%_
                                    (reverse _%r185611%_))
                                   (gx#stx-source _%stx185571%_))
                                  _%r185611%_)))
                           (_%$%E185613185676%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185612185619%_)
                                  (let ((_%$%e185615185627%_
                                         (gx#syntax-e _%$%e185612185619%_)))
                                    (let ((_%$%hd185616185630%_
                                           (##car _%$%e185615185627%_))
                                          (_%$%tl185617185632%_
                                           (##cdr _%$%e185615185627%_)))
                                      (let* ((_%hd185635%_
                                              _%$%hd185616185630%_)
                                             (_%rest185637%_
                                              _%$%tl185617185632%_)
                                             (_%hd185639%_
                                              (gx#core-expand-head
                                               _%hd185635%_))
                                             (_%$%e185640185647%_ _%hd185639%_)
                                             (_%$%E185642185651%_
                                              (lambda ()
                                                (_%expand-expression185579%_
                                                 _%hd185639%_
                                                 _%rest185637%_
                                                 _%r185611%_)))
                                             (_%$%E185641185672%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e185640185647%_)
                                                    (let ((_%$%e185643185655%_
                                                           (gx#syntax-e
                                                            _%$%e185640185647%_)))
                                                      (let ((_%$%hd185644185658%_
                                                             (##car _%$%e185643185655%_))
                                                            (_%$%tl185645185660%_
                                                             (##cdr _%$%e185643185655%_)))
                                                        (let* ((_%form185663%_
                                                                _%$%hd185644185658%_)
                                                               (_%body185665%_
                                                                _%$%tl185645185660%_)
                                                               (_%bind185667%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form185663%_)
                            (gx#resolve-identifier__0 _%form185663%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind185667%_)
                      (let ((_%$e185669%_
                             (##unchecked-structure-ref
                              _%bind185667%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e185669%_)
                            (_%expand-splice185576%_
                             _%hd185639%_
                             _%body185665%_
                             _%rest185637%_
                             _%r185611%_)
                            (if (eq? '%#cond-expand _%$e185669%_)
                                (_%expand-cond-expand185577%_
                                 _%hd185639%_
                                 _%rest185637%_
                                 _%r185611%_)
                                (if (eq? '%#include _%$e185669%_)
                                    (_%expand-include185578%_
                                     _%hd185639%_
                                     _%rest185637%_
                                     _%r185611%_)
                                    (_%expand-special185572%_
                                     _%hd185639%_
                                     _%K185580%_
                                     _%rest185637%_
                                     _%r185611%_)))))
                      (_%expand-expression185579%_
                       _%hd185639%_
                       _%rest185637%_
                       _%r185611%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185642185651%_)))))
                                        (_%$%E185641185672%_))))
                                  (_%$%E185614185623%_)))))
                      (_%$%E185613185676%_)))))
          (let* ((_%$%e185581185588%_ _%stx185571%_)
                 (_%$%E185583185592%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185581185588%_)))
                 (_%$%E185582185606%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185581185588%_)
                        (let ((_%$%e185584185596%_
                               (gx#syntax-e _%$%e185581185588%_)))
                          (let ((_%$%hd185585185599%_
                                 (##car _%$%e185584185596%_))
                                (_%$%tl185586185601%_
                                 (##cdr _%$%e185584185596%_)))
                            (let ((_%body185604%_ _%$%tl185586185601%_))
                              (if (gx#stx-list? _%body185604%_)
                                  (_%K185580%_ _%body185604%_ '())
                                  (_%$%E185583185592%_)))))
                        (_%$%E185583185592%_)))))
            (_%$%E185582185606%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx185747%_ _%expand-special185748%_)
        (let* ((_%begin-form185750%_ '%#begin)
               (_%expand-e185752%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185747%_
           _%expand-special185748%_
           _%begin-form185750%_
           _%expand-e185752%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx185754%_ _%expand-special185755%_ _%begin-form185756%_)
        (let ((_%expand-e185758%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185754%_
           _%expand-special185755%_
           _%begin-form185756%_
           _%expand-e185758%_))))
    (define gx#core-expand-block
      (lambda _g187661_
        (let ((_g187662_ (##length _g187661_)))
          (cond ((##fx= _g187662_ 2) (apply gx#core-expand-block__0 _g187661_))
                ((##fx= _g187662_ 3) (apply gx#core-expand-block__1 _g187661_))
                ((##fx= _g187662_ 4) (apply gx#core-expand-block__% _g187661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g187661_))))))
    (define gx#core-expand-block*
      (lambda (_%stx185519%_ _%expand-special185520%_)
        (let* ((_%$%g185521185532%_
                (gx#core-expand-block__1
                 _%stx185519%_
                 _%expand-special185520%_
                 '#f))
               (_%$%E185525185536%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g185521185532%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K185530185567%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx185519%_)))
                (_%$%K185527185553%_ (lambda (_%expr185551%_) _%expr185551%_))
                (_%$%K185526185542%_
                 (lambda (_%body185540%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body185540%_))
                    (gx#stx-source _%stx185519%_)))))
            (let ((_%$%try-match185523185563%_
                   (lambda ()
                     (if (pair? _%$%g185521185532%_)
                         (let ((_%$%tl185529185558%_
                                (##cdr _%$%g185521185532%_))
                               (_%$%hd185528185556%_
                                (##car _%$%g185521185532%_)))
                           (if (null? _%$%tl185529185558%_)
                               (let ((_%expr185561%_ _%$%hd185528185556%_))
                                 (_%$%K185527185553%_ _%expr185561%_))
                               (let ((_%body185545%_ _%$%g185521185532%_))
                                 (_%$%K185526185542%_ _%body185545%_))))
                         (let ((_%body185545%_ _%$%g185521185532%_))
                           (_%$%K185526185542%_ _%body185545%_))))))
              (if (null? _%$%g185521185532%_)
                  (_%$%K185530185567%_)
                  (_%$%try-match185523185563%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx185345%_)
        (letrec ((_%satisfied?185347%_
                  (lambda (_%condition185448%_)
                    (let* ((_%$%e185449185464%_ _%condition185448%_)
                           (_%$%E185459185468%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185449185464%_)))
                           (_%$%E185452185487%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185449185464%_)
                                  (let ((_%$%e185460185472%_
                                         (gx#syntax-e _%$%e185449185464%_)))
                                    (let ((_%$%hd185461185475%_
                                           (##car _%$%e185460185472%_))
                                          (_%$%tl185462185477%_
                                           (##cdr _%$%e185460185472%_)))
                                      (let* ((_%combinator185480%_
                                              _%$%hd185461185475%_)
                                             (_%body185482%_
                                              _%$%tl185462185477%_))
                                        (if (gx#stx-list? _%body185482%_)
                                            (let ((_%$e185484%_
                                                   (gx#stx-e
                                                    _%combinator185480%_)))
                                              (if (eq? 'not _%$e185484%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?185347%_
                                                        _%body185482%_))
                                                  (if (eq? 'and _%$e185484%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?185347%_
                                                       _%body185482%_)
                                                      (if (eq? 'or
                                                               _%$e185484%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?185347%_
                                                           _%body185482%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e185484%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body185482%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx185345%_
                       _%combinator185480%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E185459185468%_)))))
                                  (_%$%E185459185468%_))))
                           (_%$%E185451185509%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185449185464%_)
                                  (let ((_%$%e185453185491%_
                                         (gx#syntax-e _%$%e185449185464%_)))
                                    (let ((_%$%hd185454185494%_
                                           (##car _%$%e185453185491%_))
                                          (_%$%tl185455185496%_
                                           (##cdr _%$%e185453185491%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd185454185494%_)
                                               (gx#core-identifier=?
                                                _%$%hd185454185494%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl185455185496%_)
                                              (let ((_%$%e185456185499%_
                                                     (gx#syntax-e
                                                      _%$%tl185455185496%_)))
                                                (let ((_%$%hd185457185502%_
                                                       (##car _%$%e185456185499%_))
                                                      (_%$%tl185458185504%_
                                                       (##cdr _%$%e185456185499%_)))
                                                  (let ((_%expr185507%_
                                                         _%$%hd185457185502%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl185458185504%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr185507%_)
                                                        (_%$%E185452185487%_)))))
                                              (_%$%E185452185487%_))
                                          (_%$%E185452185487%_))))
                                  (_%$%E185452185487%_))))
                           (_%$%E185450185515%_
                            (lambda ()
                              (let ((_%id185513%_ _%$%e185449185464%_))
                                (if (gx#identifier? _%id185513%_)
                                    (gx#core-bound-identifier?__%
                                     _%id185513%_
                                     gx#feature-binding?)
                                    (_%$%E185451185509%_))))))
                      (_%$%E185450185515%_))))
                 (_%loop185348%_
                  (lambda (_%rest185378%_)
                    (let* ((_%$%e185379185387%_ _%rest185378%_)
                           (_%$%E185385185391%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185379185387%_)))
                           (_%$%E185381185395%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e185379185387%_)
                                  '()
                                  (_%$%E185385185391%_))))
                           (_%$%E185380185444%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185379185387%_)
                                  (let ((_%$%e185382185399%_
                                         (gx#syntax-e _%$%e185379185387%_)))
                                    (let ((_%$%hd185383185402%_
                                           (##car _%$%e185382185399%_))
                                          (_%$%tl185384185404%_
                                           (##cdr _%$%e185382185399%_)))
                                      (let* ((_%hd185407%_
                                              _%$%hd185383185402%_)
                                             (_%rest185409%_
                                              _%$%tl185384185404%_)
                                             (_%$%e185410185417%_ _%hd185407%_)
                                             (_%$%E185412185421%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e185410185417%_)))
                                             (_%$%E185411185440%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e185410185417%_)
                                                    (let ((_%$%e185413185425%_
                                                           (gx#syntax-e
                                                            _%$%e185410185417%_)))
                                                      (let ((_%$%hd185414185428%_
                                                             (##car _%$%e185413185425%_))
                                                            (_%$%tl185415185430%_
                                                             (##cdr _%$%e185413185425%_)))
                                                        (let* ((_%condition185433%_
                                                                _%$%hd185414185428%_)
                                                               (_%body185435%_
                                                                _%$%tl185415185430%_))
                                                          (if (gx#stx-eq?
                                                               _%condition185433%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest185409%_)
                          _%body185435%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx185345%_
                           _%hd185407%_))
                      (if (_%satisfied?185347%_ _%condition185433%_)
                          _%body185435%_
                          (_%loop185348%_ _%rest185409%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185412185421%_)))))
                                        (_%$%E185411185440%_))))
                                  (_%$%E185381185395%_)))))
                      (_%$%E185380185444%_)))))
          (let* ((_%$%e185349185356%_ _%stx185345%_)
                 (_%$%E185351185360%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185349185356%_)))
                 (_%$%E185350185374%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185349185356%_)
                        (let ((_%$%e185352185364%_
                               (gx#syntax-e _%$%e185349185356%_)))
                          (let ((_%$%hd185353185367%_
                                 (##car _%$%e185352185364%_))
                                (_%$%tl185354185369%_
                                 (##cdr _%$%e185352185364%_)))
                            (let ((_%clauses185372%_ _%$%tl185354185369%_))
                              (if (gx#stx-list? _%clauses185372%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop185348%_ _%clauses185372%_))
                                  (_%$%E185351185360%_)))))
                        (_%$%E185351185360%_)))))
            (_%$%E185350185374%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx185288%_ _%rpath185289%_)
        (let* ((_%$%e185290185300%_ _%stx185288%_)
               (_%$%E185292185304%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185290185300%_)))
               (_%$%E185291185331%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185290185300%_)
                      (let ((_%$%e185293185308%_
                             (gx#syntax-e _%$%e185290185300%_)))
                        (let ((_%$%hd185294185311%_
                               (##car _%$%e185293185308%_))
                              (_%$%tl185295185313%_
                               (##cdr _%$%e185293185308%_)))
                          (if (gx#stx-pair? _%$%tl185295185313%_)
                              (let ((_%$%e185296185316%_
                                     (gx#syntax-e _%$%tl185295185313%_)))
                                (let ((_%$%hd185297185319%_
                                       (##car _%$%e185296185316%_))
                                      (_%$%tl185298185321%_
                                       (##cdr _%$%e185296185316%_)))
                                  (let ((_%path185324%_ _%$%hd185297185319%_))
                                    (if (gx#stx-null? _%$%tl185298185321%_)
                                        (if (gx#stx-string? _%path185324%_)
                                            (let ((_%rpath185329%_
                                                   (let ((_%$e185326%_
                                                          _%rpath185289%_))
                                                     (if _%$e185326%_
                                                         _%$e185326%_
                                                         (gx#core-resolve-path__%
                                                          _%path185324%_
                                                          (gx#stx-source
                                                           _%stx185288%_))))))
                                              (if (member _%rpath185329%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx185288%_
                                                   (##append
                                                    (##member
                                                     _%rpath185329%_
                                                     (reverse (gx#current-expander-path)))
                                                    (cons _%rpath185329%_
                                                          '())))
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath185329%_))
                                                    (gx#stx-source
                                                     _%stx185288%_)))))
                                            (_%$%E185292185304%_))
                                        (_%$%E185292185304%_)))))
                              (_%$%E185292185304%_))))
                      (_%$%E185292185304%_)))))
          (_%$%E185291185331%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx185338%_)
        (let ((_%rpath185340%_ '#f))
          (gx#core-expand-include%__% _%stx185338%_ _%rpath185340%_))))
    (define gx#core-expand-include%
      (lambda _g187663_
        (let ((_g187664_ (##length _g187663_)))
          (cond ((##fx= _g187664_ 1)
                 (apply gx#core-expand-include%__0 _g187663_))
                ((##fx= _g187664_ 2)
                 (apply gx#core-expand-include%__% _g187663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g187663_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K185254%_ _%stx185255%_ _%method185256%_)
        (if (procedure? _%K185254%_)
            (let ((_%$e185259%_ (gx#stx-source _%stx185255%_)))
              (if _%$e185259%_
                  (gx#stx-wrap-source (_%K185254%_ _%stx185255%_) _%$e185259%_)
                  (_%K185254%_ _%stx185255%_)))
            (let ((_%$e185267%_
                   (bound-method-ref _%K185254%_ _%method185256%_)))
              (if _%$e185267%_
                  (gx#core-apply-expander__%
                   _%$e185267%_
                   _%stx185255%_
                   _%method185256%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx185255%_
                   _%method185256%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K185278%_ _%stx185279%_)
        (let ((_%method185281%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K185278%_
           _%stx185279%_
           _%method185281%_))))
    (define gx#core-apply-expander
      (lambda _g187665_
        (let ((_g187666_ (##length _g187665_)))
          (cond ((##fx= _g187666_ 2)
                 (apply gx#core-apply-expander__0 _g187665_))
                ((##fx= _g187666_ 3)
                 (apply gx#core-apply-expander__% _g187665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g187665_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self185239%_ _%stx185240%_)
        (let ((_%self185243%_ _%self185239%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx185240%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self185082%_ _%stx185083%_)
        (let* ((_%self185086%_ _%self185082%_)
               (_%$%self185095185101%_ _%self185086%_)
               (_%$%E185097185104%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self185095185101%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K185098185109%_
                (lambda (_%K185107%_)
                  (gx#core-apply-expander__0 _%K185107%_ _%stx185083%_)))
               (_%$%e185099185112%_
                (##unchecked-structure-ref _%$%self185095185101%_ '1 '#f '#f))
               (_%K185115%_ _%$%e185099185112%_))
          (_%$%K185098185109%_ _%K185115%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self184925%_ _%stx184926%_)
        (let ((_%self184929%_ _%self184925%_))
          (if (gx#sealed-syntax? _%stx184926%_)
              _%stx184926%_
              (let* ((_%$%self184938184944%_ _%self184929%_)
                     (_%$%E184940184947%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self184938184944%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K184941184952%_
                      (lambda (_%K184950%_)
                        (gx#core-apply-expander__0 _%K184950%_ _%stx184926%_)))
                     (_%$%e184942184955%_
                      (##unchecked-structure-ref
                       _%$%self184938184944%_
                       '1
                       '#f
                       '#f))
                     (_%K184958%_ _%$%e184942184955%_))
                (_%$%K184941184952%_ _%K184958%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self184775%_ _%stx184776%_ _%top?184777%_)
        (let ((_%self184780%_ _%self184775%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx184776%_))
                (force-output))
              '#!void)
          (if (_%top?184777%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self184780%_
               _%stx184776%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx184776%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self184794%_ _%stx184795%_)
        (let ((_%top?184797%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self184794%_
           _%stx184795%_
           _%top?184797%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g187667_
        (let ((_g187668_ (##length _g187667_)))
          (cond ((##fx= _g187668_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g187667_))
                ((##fx= _g187668_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g187667_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g187667_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self184638%_ _%stx184639%_)
        (let ((_%self184642%_ _%self184638%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self184642%_
           _%stx184639%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self184453%_ _%stx184454%_)
        (let* ((_%self184457%_ _%self184453%_)
               (_%$%self184466184472%_ _%self184457%_)
               (_%$%E184468184475%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184466184472%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K184469184508%_
                (lambda (_%id184478%_)
                  (let* ((_%$%e184479184486%_ _%stx184454%_)
                         (_%$%E184481184490%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e184479184486%_)))
                         (_%$%E184480184504%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e184479184486%_)
                                (let ((_%$%e184482184494%_
                                       (gx#syntax-e _%$%e184479184486%_)))
                                  (let ((_%$%hd184483184497%_
                                         (##car _%$%e184482184494%_))
                                        (_%$%tl184484184499%_
                                         (##cdr _%$%e184482184494%_)))
                                    (let ((_%body184502%_
                                           _%$%tl184484184499%_))
                                      (gx#core-cons
                                       _%id184478%_
                                       _%body184502%_))))
                                (_%$%E184481184490%_)))))
                    (_%$%E184480184504%_))))
               (_%$%e184470184511%_
                (##unchecked-structure-ref _%$%self184466184472%_ '1 '#f '#f))
               (_%id184514%_ _%$%e184470184511%_))
          (_%$%K184469184508%_ _%id184514%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self184280%_ _%stx184281%_ _%method184282%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx184281%_))
              (force-output))
            '#!void)
        (let* ((_%$%self184283184291%_ _%self184280%_)
               (_%$%E184285184294%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184283184291%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K184286184301%_
                (lambda (_%phi184297%_ _%ctx184298%_ _%K184299%_)
                  (gx#core-apply-user-macro
                   _%K184299%_
                   _%stx184281%_
                   _%ctx184298%_
                   _%phi184297%_
                   _%method184282%_))))
          (if (##structure-instance-of?
               _%$%self184283184291%_
               'gx#user-expander::t)
              (let* ((_%$%e184287184304%_
                      (##unchecked-structure-ref
                       _%$%self184283184291%_
                       '1
                       '#f
                       '#f))
                     (_%K184307%_ _%$%e184287184304%_)
                     (_%$%e184288184309%_
                      (##unchecked-structure-ref
                       _%$%self184283184291%_
                       '2
                       '#f
                       '#f))
                     (_%ctx184312%_ _%$%e184288184309%_)
                     (_%$%e184289184314%_
                      (##unchecked-structure-ref
                       _%$%self184283184291%_
                       '3
                       '#f
                       '#f))
                     (_%phi184317%_ _%$%e184289184314%_))
                (_%$%K184286184301%_ _%phi184317%_ _%ctx184312%_ _%K184307%_))
              (_%$%E184285184294%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self184322%_ _%stx184323%_)
        (let ((_%method184325%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self184322%_
           _%stx184323%_
           _%method184325%_))))
    (define gx#core-apply-user-expander
      (lambda _g187669_
        (let ((_g187670_ (##length _g187669_)))
          (cond ((##fx= _g187670_ 2)
                 (apply gx#core-apply-user-expander__0 _g187669_))
                ((##fx= _g187670_ 3)
                 (apply gx#core-apply-user-expander__% _g187669_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g187669_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K184270%_
               _%stx184271%_
               _%ctx184272%_
               _%phi184273%_
               _%method184274%_)
        (let ((_%mark184276%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx184272%_
                _%phi184273%_
                _%stx184271%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K184270%_
               (gx#stx-apply-mark _%stx184271%_ _%mark184276%_)
               _%method184274%_)
              _%mark184276%_))
           gx#current-expander-marks
           (cons _%mark184276%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx184118%_ _%phi184119%_ _%ctx184120%_)
        (let _%lp184122%_ ((_%bind184124%_
                            (gx#core-resolve-identifier__%
                             _%stx184118%_
                             _%phi184119%_
                             _%ctx184120%_)))
          (if (##structure-direct-instance-of?
               _%bind184124%_
               'gx#import-binding::t)
              (_%lp184122%_
               (##unchecked-structure-ref _%bind184124%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind184124%_
                   'gx#alias-binding::t)
                  (_%lp184122%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind184124%_ '5 '#f '#f)
                    _%phi184119%_
                    _%ctx184120%_))
                  _%bind184124%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx184132%_)
        (let* ((_%phi184134%_ (gx#current-expander-phi))
               (_%ctx184136%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx184132%_
           _%phi184134%_
           _%ctx184136%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx184138%_ _%phi184139%_)
        (let ((_%ctx184141%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx184138%_
           _%phi184139%_
           _%ctx184141%_))))
    (define gx#resolve-identifier
      (lambda _g187671_
        (let ((_g187672_ (##length _g187671_)))
          (cond ((##fx= _g187672_ 1)
                 (apply gx#resolve-identifier__0 _g187671_))
                ((##fx= _g187672_ 2)
                 (apply gx#resolve-identifier__1 _g187671_))
                ((##fx= _g187672_ 3)
                 (apply gx#resolve-identifier__% _g187671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g187671_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx184073%_
               _%val184074%_
               _%rebind?184075%_
               _%phi184076%_
               _%ctx184077%_)
        (let ((_%rebind?184082%_
               (if (not _%rebind?184075%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?184075%_)
                       _%rebind?184075%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx184073%_)
           _%val184074%_
           _%rebind?184082%_
           _%phi184076%_
           _%ctx184077%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx184087%_ _%val184088%_)
        (let* ((_%rebind?184090%_ '#f)
               (_%phi184092%_ (gx#current-expander-phi))
               (_%ctx184094%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx184087%_
           _%val184088%_
           _%rebind?184090%_
           _%phi184092%_
           _%ctx184094%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx184096%_ _%val184097%_ _%rebind?184098%_)
        (let* ((_%phi184100%_ (gx#current-expander-phi))
               (_%ctx184102%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx184096%_
           _%val184097%_
           _%rebind?184098%_
           _%phi184100%_
           _%ctx184102%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx184104%_ _%val184105%_ _%rebind?184106%_ _%phi184107%_)
        (let ((_%ctx184109%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx184104%_
           _%val184105%_
           _%rebind?184106%_
           _%phi184107%_
           _%ctx184109%_))))
    (define gx#bind-identifier!
      (lambda _g187673_
        (let ((_g187674_ (##length _g187673_)))
          (cond ((##fx= _g187674_ 2) (apply gx#bind-identifier!__0 _g187673_))
                ((##fx= _g187674_ 3) (apply gx#bind-identifier!__1 _g187673_))
                ((##fx= _g187674_ 4) (apply gx#bind-identifier!__2 _g187673_))
                ((##fx= _g187674_ 5) (apply gx#bind-identifier!__% _g187673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g187673_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx184039%_ _%phi184040%_ _%ctx184041%_)
        (let _%lp184043%_ ((_%e184045%_ _%stx184039%_)
                           (_%marks184046%_ (gx#current-expander-marks)))
          (if (symbol? _%e184045%_)
              (gx#core-resolve-binding
               _%e184045%_
               _%phi184040%_
               _%phi184040%_
               _%ctx184041%_
               (reverse _%marks184046%_))
              (if (gx#identifier-quote? _%e184045%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e184045%_ '1 '#f '#f)
                   _%phi184040%_
                   '0
                   (##unchecked-structure-ref _%e184045%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e184045%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e184045%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e184045%_ '1 '#f '#f)
                       _%phi184040%_
                       _%phi184040%_
                       _%ctx184041%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e184045%_ '3 '#f '#f)
                        _%marks184046%_))
                      (if (##structure-direct-instance-of?
                           _%e184045%_
                           'gx#syntax-wrap::t)
                          (_%lp184043%_
                           (##unchecked-structure-ref _%e184045%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e184045%_ '3 '#f '#f)
                            _%marks184046%_))
                          (if (##structure-instance-of?
                               _%e184045%_
                               'gerbil#AST::t)
                              (_%lp184043%_
                               (##unchecked-structure-ref
                                _%e184045%_
                                '1
                                '#f
                                '#f)
                               _%marks184046%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx184039%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx184057%_)
        (let* ((_%phi184059%_ (gx#current-expander-phi))
               (_%ctx184061%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx184057%_
           _%phi184059%_
           _%ctx184061%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx184063%_ _%phi184064%_)
        (let ((_%ctx184066%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx184063%_
           _%phi184064%_
           _%ctx184066%_))))
    (define gx#core-resolve-identifier
      (lambda _g187675_
        (let ((_g187676_ (##length _g187675_)))
          (cond ((##fx= _g187676_ 1)
                 (apply gx#core-resolve-identifier__0 _g187675_))
                ((##fx= _g187676_ 2)
                 (apply gx#core-resolve-identifier__1 _g187675_))
                ((##fx= _g187676_ 3)
                 (apply gx#core-resolve-identifier__% _g187675_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g187675_))))))
    (define gx#core-resolve-binding
      (lambda (_%id183950%_
               _%phi183951%_
               _%src-phi183952%_
               _%ctx183953%_
               _%marks183954%_)
        (letrec ((_%resolve183956%_
                  (lambda (_%ctx184023%_ _%src-phi184024%_ _%key184025%_)
                    (let _%lp184027%_ ((_%ctx184029%_
                                        (gx#core-context-shift
                                         _%ctx184023%_
                                         _%phi183951%_))
                                       (_%dphi184030%_
                                        (fx- _%phi183951%_ _%src-phi184024%_)))
                      (let ((_%$e184032%_
                             (gx#core-context-resolve
                              _%ctx184029%_
                              _%key184025%_)))
                        (if _%$e184032%_
                            _%$e184032%_
                            (if (fxzero? _%dphi184030%_)
                                '#f
                                (if (fxpositive? _%dphi184030%_)
                                    (_%lp184027%_
                                     (gx#core-context-shift _%ctx184029%_ '-1)
                                     (##fx- _%dphi184030%_ '1))
                                    (_%lp184027%_
                                     (gx#core-context-shift _%ctx184029%_ '1)
                                     (##fx+ _%dphi184030%_ '1))))))))))
          (let _%lp183958%_ ((_%ctx183960%_ _%ctx183953%_)
                             (_%src-phi183961%_ _%src-phi183952%_)
                             (_%rest183962%_ _%marks183954%_))
            (let* ((_%$%rest183963183971%_ _%rest183962%_)
                   (_%$%else183965183979%_
                    (lambda ()
                      (_%resolve183956%_
                       _%ctx183960%_
                       _%src-phi183961%_
                       _%id183950%_)))
                   (_%$%K183967184011%_
                    (lambda (_%rest183982%_ _%hd183983%_)
                      (let* ((_%$%hd183984183990%_ _%hd183983%_)
                             (_%$%E183986183993%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd183984183990%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K183987184003%_
                              (lambda (_%subst183996%_)
                                (let ((_%$e184000%_
                                       (let ((_%key183998%_
                                              (if _%subst183996%_
                                                  (hash-get
                                                   _%subst183996%_
                                                   _%id183950%_)
                                                  '#f)))
                                         (if _%key183998%_
                                             (_%resolve183956%_
                                              _%ctx183960%_
                                              _%src-phi183961%_
                                              _%key183998%_)
                                             '#f))))
                                  (if _%$e184000%_
                                      _%$e184000%_
                                      (_%lp183958%_
                                       (##unchecked-structure-ref
                                        _%hd183983%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd183983%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest183982%_))))))
                        (if (##structure-instance-of?
                             _%$%hd183984183990%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e183988184006%_
                                    (##unchecked-structure-ref
                                     _%$%hd183984183990%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst184009%_ _%$%e183988184006%_))
                              (_%$%K183987184003%_ _%subst184009%_))
                            (_%$%E183986183993%_))))))
              (if (pair? _%$%rest183963183971%_)
                  (let ((_%$%hd183968184014%_ (##car _%$%rest183963183971%_))
                        (_%$%tl183969184016%_ (##cdr _%$%rest183963183971%_)))
                    (let* ((_%hd184019%_ _%$%hd183968184014%_)
                           (_%rest184021%_ _%$%tl183969184016%_))
                      (_%$%K183967184011%_ _%rest184021%_ _%hd184019%_)))
                  (_%$%else183965183979%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key183821%_
               _%val183822%_
               _%rebind?183823%_
               _%phi183824%_
               _%ctx183825%_)
        (letrec ((_%update-binding183827%_
                  (lambda (_%xval183899%_)
                    (if (or (_%rebind?183823%_
                             _%ctx183825%_
                             _%xval183899%_
                             _%val183822%_)
                            (and (##structure-direct-instance-of?
                                  _%xval183899%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval183899%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val183822%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val183822%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval183899%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val183822%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val183822%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval183899%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val183822%_
                        (if (and (##structure-direct-instance-of?
                                  _%val183822%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val183822%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval183899%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val183822%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval183899%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval183899%_
                            (if (and (##structure-direct-instance-of?
                                      _%val183822%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval183899%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key183821%_
                                 (cons (##unchecked-structure-ref
                                        _%val183822%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val183822%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval183899%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval183899%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval183899%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval183899%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key183821%_
                                 _%val183822%_
                                 _%xval183899%_))))))
                 (_%gensubst183828%_
                  (lambda (_%subst183894%_ _%id183895%_)
                    (let ((_%eid183897%_
                           (gensym (if (uninterned-symbol? _%id183895%_)
                                       '%
                                       _%id183895%_))))
                      (hash-put! _%subst183894%_ _%id183895%_ _%eid183897%_)
                      _%eid183897%_)))
                 (_%subst!183829%_
                  (lambda (_%key183831%_)
                    (let* ((_%$%key183832183840%_ _%key183831%_)
                           (_%$%else183834183848%_ (lambda () _%key183831%_))
                           (_%$%K183836183882%_
                            (lambda (_%mark183851%_ _%id183852%_)
                              (let* ((_%$%mark183853183859%_ _%mark183851%_)
                                     (_%$%E183855183862%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark183853183859%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K183856183874%_
                                      (lambda (_%subst183865%_)
                                        (if (not _%subst183865%_)
                                            (let ((_%subst183868%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark183851%_
                                               _%subst183868%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst183828%_
                                               _%subst183868%_
                                               _%id183852%_))
                                            (let ((_%$e183870%_
                                                   (hash-get
                                                    _%subst183865%_
                                                    _%id183852%_)))
                                              (if _%$e183870%_
                                                  _%$e183870%_
                                                  (_%gensubst183828%_
                                                   _%subst183865%_
                                                   _%id183852%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark183853183859%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e183857183877%_
                                            (##unchecked-structure-ref
                                             _%$%mark183853183859%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183880%_
                                            _%$%e183857183877%_))
                                      (_%$%K183856183874%_ _%subst183880%_))
                                    (_%$%E183855183862%_))))))
                      (if (pair? _%$%key183832183840%_)
                          (let ((_%$%hd183837183885%_
                                 (##car _%$%key183832183840%_))
                                (_%$%tl183838183887%_
                                 (##cdr _%$%key183832183840%_)))
                            (let* ((_%id183890%_ _%$%hd183837183885%_)
                                   (_%mark183892%_ _%$%tl183838183887%_))
                              (_%$%K183836183882%_
                               _%mark183892%_
                               _%id183890%_)))
                          (_%$%else183834183848%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key183821%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx183825%_ _%phi183824%_)
           (_%subst!183829%_ _%key183821%_)
           _%val183822%_
           _%update-binding183827%_))))
    (define gx#core-bind!__0
      (lambda (_%key183920%_ _%val183921%_)
        (let* ((_%rebind?183923%_ false)
               (_%phi183925%_ (gx#current-expander-phi))
               (_%ctx183927%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183920%_
           _%val183921%_
           _%rebind?183923%_
           _%phi183925%_
           _%ctx183927%_))))
    (define gx#core-bind!__1
      (lambda (_%key183929%_ _%val183930%_ _%rebind?183931%_)
        (let* ((_%phi183933%_ (gx#current-expander-phi))
               (_%ctx183935%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183929%_
           _%val183930%_
           _%rebind?183931%_
           _%phi183933%_
           _%ctx183935%_))))
    (define gx#core-bind!__2
      (lambda (_%key183937%_ _%val183938%_ _%rebind?183939%_ _%phi183940%_)
        (let ((_%ctx183942%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183937%_
           _%val183938%_
           _%rebind?183939%_
           _%phi183940%_
           _%ctx183942%_))))
    (define gx#core-bind!
      (lambda _g187677_
        (let ((_g187678_ (##length _g187677_)))
          (cond ((##fx= _g187678_ 2) (apply gx#core-bind!__0 _g187677_))
                ((##fx= _g187678_ 3) (apply gx#core-bind!__1 _g187677_))
                ((##fx= _g187678_ 4) (apply gx#core-bind!__2 _g187677_))
                ((##fx= _g187678_ 5) (apply gx#core-bind!__% _g187677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g187677_))))))
    (define gx#core-identifier-key
      (lambda (_%stx183752%_)
        (if (symbol? _%stx183752%_)
            (let* ((_%$%g183754183762%_ (gx#current-expander-marks))
                   (_%$%else183756183770%_ (lambda () _%stx183752%_))
                   (_%$%K183758183775%_
                    (lambda (_%hd183773%_) (cons _%stx183752%_ _%hd183773%_))))
              (if (pair? _%$%g183754183762%_)
                  (let* ((_%$%hd183759183778%_ (##car _%$%g183754183762%_))
                         (_%hd183781%_ _%$%hd183759183778%_))
                    (_%$%K183758183775%_ _%hd183781%_))
                  (_%$%else183756183770%_)))
            (if (gx#identifier? _%stx183752%_)
                (let* ((_%id183784%_ (gx#syntax-local-unwrap _%stx183752%_))
                       (_%eid183786%_ (gx#stx-e _%id183784%_))
                       (_%marks183788%_
                        (gx#stx-identifier-marks* _%id183784%_))
                       (_%$%marks183790183798%_ _%marks183788%_)
                       (_%$%else183792183806%_ (lambda () _%eid183786%_))
                       (_%$%K183794183811%_
                        (lambda (_%hd183809%_)
                          (cons _%eid183786%_ _%hd183809%_))))
                  (if (pair? _%$%marks183790183798%_)
                      (let* ((_%$%hd183795183814%_
                              (##car _%$%marks183790183798%_))
                             (_%hd183817%_ _%$%hd183795183814%_))
                        (_%$%K183794183811%_ _%hd183817%_))
                      (_%$%else183792183806%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx183752%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx183691%_ _%phi183692%_)
        (letrec ((_%make-phi183694%_
                  (lambda (_%super183750%_)
                    (let ((__obj187648
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj187648
                       (##gensym 'phi)
                       _%super183750%_)
                      __obj187648)))
                 (_%make-phi/up183695%_
                  (lambda (_%ctx183745%_ _%super183746%_)
                    (let ((_%ctx+1183748%_
                           (_%make-phi183694%_ _%super183746%_)))
                      (##unchecked-structure-set!
                       _%ctx183745%_
                       _%ctx+1183748%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1183748%_
                       _%ctx183745%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1183748%_)))
                 (_%make-phi/down183696%_
                  (lambda (_%ctx183740%_ _%super183741%_)
                    (let ((_%ctx-1183743%_
                           (_%make-phi183694%_ _%super183741%_)))
                      (##unchecked-structure-set!
                       _%ctx-1183743%_
                       _%ctx183740%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx183740%_
                       _%ctx-1183743%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1183743%_)))
                 (_%shift183697%_
                  (lambda (_%ctx183723%_
                           _%delta183724%_
                           _%make-delta-context183725%_
                           _%phi183726%_
                           _%K183727%_)
                    (let ((_%$e183729%_
                           (##unchecked-structure-ref
                            _%ctx183723%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e183729%_
                          (let* ((_%super183734%_
                                  (_%K183727%_ _%$e183729%_ _%delta183724%_))
                                 (_%ctx+d183736%_
                                  (_%make-delta-context183725%_
                                   _%ctx183723%_
                                   _%super183734%_)))
                            (_%K183727%_
                             _%ctx+d183736%_
                             (fx- _%phi183726%_ _%delta183724%_)))
                          (error '"Bad context" _%ctx183723%_))))))
          (let _%K183699%_ ((_%ctx183701%_ _%ctx183691%_)
                            (_%phi183702%_ _%phi183692%_))
            (if (fxzero? _%phi183702%_)
                _%ctx183701%_
                (if (##structure-instance-of? _%ctx183701%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi183702%_)
                        (let ((_%$e183706%_
                               (##unchecked-structure-ref
                                _%ctx183701%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e183706%_
                              (_%K183699%_
                               _%$e183706%_
                               (##fx- _%phi183702%_ '1))
                              (_%shift183697%_
                               _%ctx183701%_
                               '1
                               _%make-phi/up183695%_
                               _%phi183702%_
                               _%K183699%_)))
                        (let ((_%$e183714%_
                               (##unchecked-structure-ref
                                _%ctx183701%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e183714%_
                              (_%K183699%_
                               _%$e183714%_
                               (##fx+ _%phi183702%_ '1))
                              (_%shift183697%_
                               _%ctx183701%_
                               '-1
                               _%make-phi/down183696%_
                               _%phi183702%_
                               _%K183699%_))))
                    _%ctx183701%_))))))
    (define gx#core-context-get
      (lambda (_%ctx183688%_ _%key183689%_)
        (hash-get
         (##unchecked-structure-ref _%ctx183688%_ '2 '#f '#f)
         _%key183689%_)))
    (define gx#core-context-put!
      (lambda (_%ctx183684%_ _%key183685%_ _%val183686%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx183684%_ '2 '#f '#f)
         _%key183685%_
         _%val183686%_)
        _%val183686%_))
    (define gx#core-context-resolve
      (lambda (_%ctx183670%_ _%key183671%_)
        (let _%lp183673%_ ((_%ctx183675%_ _%ctx183670%_))
          (let ((_%$e183677%_
                 (gx#core-context-get _%ctx183675%_ _%key183671%_)))
            (if _%$e183677%_
                _%$e183677%_
                (let ((_%$e183680%_
                       (if (##structure-instance-of?
                            _%ctx183675%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx183675%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e183680%_ (_%lp183673%_ _%$e183680%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx183659%_ _%key183660%_ _%val183661%_ _%rebind183662%_)
        (let ((_%$e183664%_ (gx#core-context-get _%ctx183659%_ _%key183660%_)))
          (if _%$e183664%_
              (gx#core-context-put!
               _%ctx183659%_
               _%key183660%_
               (_%rebind183662%_ _%$e183664%_))
              (gx#core-context-put!
               _%ctx183659%_
               _%key183660%_
               _%val183661%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx183634%_ _%stop?183635%_)
        (let _%lp183637%_ ((_%ctx183639%_ _%ctx183634%_))
          (if (_%stop?183635%_ _%ctx183639%_)
              _%ctx183639%_
              (if (##structure-instance-of? _%ctx183639%_ 'gx#phi-context::t)
                  (_%lp183637%_
                   (##unchecked-structure-ref _%ctx183639%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx183648%_ (gx#current-expander-context))
               (_%stop?183650%_ gx#top-context?))
          (gx#core-context-top__% _%ctx183648%_ _%stop?183650%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx183652%_)
        (let ((_%stop?183654%_ gx#top-context?))
          (gx#core-context-top__% _%ctx183652%_ _%stop?183654%_))))
    (define gx#core-context-top
      (lambda _g187679_
        (let ((_g187680_ (##length _g187679_)))
          (cond ((##fx= _g187680_ 0) (apply gx#core-context-top__0 _g187679_))
                ((##fx= _g187680_ 1) (apply gx#core-context-top__1 _g187679_))
                ((##fx= _g187680_ 2) (apply gx#core-context-top__% _g187679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g187679_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx183619%_)
        (let _%lp183621%_ ((_%ctx183623%_ _%ctx183619%_))
          (if (##structure-instance-of? _%ctx183623%_ 'gx#phi-context::t)
              (_%lp183621%_
               (##unchecked-structure-ref _%ctx183623%_ '3 '#f '#f))
              _%ctx183623%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx183629%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx183629%_))))
    (define gx#core-context-root
      (lambda _g187681_
        (let ((_g187682_ (##length _g187681_)))
          (cond ((##fx= _g187682_ 0) (apply gx#core-context-root__0 _g187681_))
                ((##fx= _g187682_ 1) (apply gx#core-context-root__% _g187681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g187681_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx183601%_ . _%ignore183602%_)
        (let ((_%$e183604%_ (gx#current-expander-allow-rebind?)))
          (if _%$e183604%_
              _%$e183604%_
              (if (##structure-instance-of? _%ctx183601%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx183601%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx183601%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx183611%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx183611%_))))
    (define gx#core-context-rebind?
      (lambda _g187683_
        (let ((_g187684_ (##length _g187683_)))
          (cond ((##fx= _g187684_ 0)
                 (apply gx#core-context-rebind?__0 _g187683_))
                ((##fx= _g187684_ 1)
                 (apply gx#core-context-rebind?__% _g187683_))
                ((##fx>= _g187684_ 1)
                 (apply gx#core-context-rebind?__% _g187683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g187683_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx183584%_)
        (let ((_%$e183586%_ (gx#core-context-top__1 _%ctx183584%_)))
          (if _%$e183586%_
              (if (##structure-instance-of? _%$e183586%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e183586%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx183596%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx183596%_))))
    (define gx#core-context-namespace
      (lambda _g187685_
        (let ((_g187686_ (##length _g187685_)))
          (cond ((##fx= _g187686_ 0)
                 (apply gx#core-context-namespace__0 _g187685_))
                ((##fx= _g187686_ 1)
                 (apply gx#core-context-namespace__% _g187685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g187685_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind183570%_ _%is?183571%_)
        (if (##structure-direct-instance-of?
             _%bind183570%_
             'gx#syntax-binding::t)
            (_%is?183571%_
             (##unchecked-structure-ref _%bind183570%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind183576%_)
        (let ((_%is?183578%_ gx#expander?))
          (gx#expander-binding?__% _%bind183576%_ _%is?183578%_))))
    (define gx#expander-binding?
      (lambda _g187687_
        (let ((_g187688_ (##length _g187687_)))
          (cond ((##fx= _g187688_ 1) (apply gx#expander-binding?__0 _g187687_))
                ((##fx= _g187688_ 2) (apply gx#expander-binding?__% _g187687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g187687_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind183567%_)
        (gx#expander-binding?__% _%bind183567%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind183565%_)
        (gx#expander-binding?__% _%bind183565%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind183559%_)
        (letrec ((_%direct-special-form?183561%_
                  (lambda (_%obj183563%_)
                    (##structure-direct-instance-of?
                     _%obj183563%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind183559%_
           _%direct-special-form?183561%_))))
    (define gx#special-form-binding?
      (lambda (_%bind183557%_)
        (gx#expander-binding?__% _%bind183557%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind183548%_)
        (letrec ((_%feature?183550%_
                  (lambda (_%e183552%_)
                    (let ((_%$e183554%_
                           (##structure-instance-of?
                            _%e183552%_
                            'gx#feature-expander::t)))
                      (if _%$e183554%_
                          _%$e183554%_
                          (##structure-instance-of?
                           _%e183552%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind183548%_ _%feature?183550%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind183546%_)
        (gx#expander-binding?__% _%bind183546%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id183533%_ _%bound?183534%_)
        (if (gx#identifier? _%id183533%_)
            (_%bound?183534%_ (gx#resolve-identifier__0 _%id183533%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id183539%_)
        (let ((_%bound?183541%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id183539%_ _%bound?183541%_))))
    (define gx#core-bound-identifier?
      (lambda _g187689_
        (let ((_g187690_ (##length _g187689_)))
          (cond ((##fx= _g187690_ 1)
                 (apply gx#core-bound-identifier?__0 _g187689_))
                ((##fx= _g187690_ 2)
                 (apply gx#core-bound-identifier?__% _g187689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g187689_))))))
    (define gx#core-identifier=?
      (lambda (_%x183523%_ _%y183524%_)
        (letrec ((_%y=?183526%_
                  (lambda (_%xid183530%_)
                    ((if (list? _%y183524%_) memq eq?)
                     _%xid183530%_
                     _%y183524%_))))
          (let ((_%bind183528%_ (gx#resolve-identifier__0 _%x183523%_)))
            (if (##structure-instance-of? _%bind183528%_ 'gx#binding::t)
                (_%y=?183526%_
                 (##unchecked-structure-ref _%bind183528%_ '1 '#f '#f))
                (_%y=?183526%_ (gx#stx-e _%x183523%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e183521%_)
        (if (interned-symbol? _%e183521%_)
            (string-index__0 (symbol->string _%e183521%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx183474%_ _%src183475%_ _%ctx183476%_ _%marks183477%_)
        (if (##structure? _%stx183474%_)
            (let ((_%$e183479%_ (gx#sealed-syntax-unwrap _%stx183474%_)))
              (if _%$e183479%_
                  _%$e183479%_
                  (if (gx#identifier? _%stx183474%_)
                      (let ((_%id183483%_
                             (gx#stx-unwrap__% _%stx183474%_ _%marks183477%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id183483%_ '1 '#f '#f)
                         (let ((_%$e183485%_
                                (##unchecked-structure-ref
                                 _%id183483%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e183485%_ _%$e183485%_ _%src183475%_))
                         _%ctx183476%_
                         (##unchecked-structure-ref _%id183483%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx183474%_)
                       (let ((_%$e183489%_ (gx#stx-source _%stx183474%_)))
                         (if _%$e183489%_ _%$e183489%_ _%src183475%_))
                       _%ctx183476%_
                       (reverse _%marks183477%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx183474%_
             _%src183475%_
             _%ctx183476%_
             (reverse _%marks183477%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx183495%_)
        (let* ((_%src183497%_ '#f)
               (_%ctx183499%_ (gx#current-expander-context))
               (_%marks183501%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183495%_
           _%src183497%_
           _%ctx183499%_
           _%marks183501%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx183503%_ _%src183504%_)
        (let* ((_%ctx183506%_ (gx#current-expander-context))
               (_%marks183508%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183503%_
           _%src183504%_
           _%ctx183506%_
           _%marks183508%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx183510%_ _%src183511%_ _%ctx183512%_)
        (let ((_%marks183514%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183510%_
           _%src183511%_
           _%ctx183512%_
           _%marks183514%_))))
    (define gx#core-quote-syntax
      (lambda _g187691_
        (let ((_g187692_ (##length _g187691_)))
          (cond ((##fx= _g187692_ 1) (apply gx#core-quote-syntax__0 _g187691_))
                ((##fx= _g187692_ 2) (apply gx#core-quote-syntax__1 _g187691_))
                ((##fx= _g187692_ 3) (apply gx#core-quote-syntax__2 _g187691_))
                ((##fx= _g187692_ 4) (apply gx#core-quote-syntax__% _g187691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g187691_))))))
    (define gx#core-cons
      (lambda (_%hd183470%_ _%tl183471%_)
        (cons (gx#core-quote-syntax__0 _%hd183470%_) _%tl183471%_)))
    (define gx#core-list
      (lambda (_%hd183467%_ . _%rest183468%_)
        (cons (gx#core-quote-syntax__0 _%hd183467%_) _%rest183468%_)))
    (define gx#core-cons*
      (lambda (_%hd183464%_ . _%rest183465%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd183464%_) _%rest183465%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path183433%_ _%rel183434%_)
        (let ((_%path183451%_ (gx#stx-e _%stx-path183433%_))
              (_%reldir183452%_
               (let _%lp183436%_ ((_%relsrc183438%_
                                   (let ((_%$e183448%_
                                          (gx#stx-source _%stx-path183433%_)))
                                     (if _%$e183448%_
                                         _%$e183448%_
                                         _%rel183434%_))))
                 (if (##structure-instance-of? _%relsrc183438%_ 'gerbil#AST::t)
                     (_%lp183436%_
                      (let ((_%$e183441%_ (gx#stx-source _%relsrc183438%_)))
                        (if _%$e183441%_
                            _%$e183441%_
                            (gx#stx-e _%relsrc183438%_))))
                     (if (source-location-path? _%relsrc183438%_)
                         (path-directory
                          (source-location-path _%relsrc183438%_))
                         (if (string? _%relsrc183438%_)
                             (path-directory _%relsrc183438%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path183451%_ (path-normalize _%reldir183452%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path183457%_)
        (let ((_%rel183459%_ '#f))
          (gx#core-resolve-path__% _%stx-path183457%_ _%rel183459%_))))
    (define gx#core-resolve-path
      (lambda _g187693_
        (let ((_g187694_ (##length _g187693_)))
          (cond ((##fx= _g187694_ 1) (apply gx#core-resolve-path__0 _g187693_))
                ((##fx= _g187694_ 2) (apply gx#core-resolve-path__% _g187693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g187693_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr183389%_ _%ctx183390%_)
        (let* ((_%$%repr183391183398%_ _%repr183389%_)
               (_%$%E183393183402%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr183391183398%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K183394183410%_
                (lambda (_%subs183405%_ _%phi183406%_)
                  (let ((_%subst183408%_
                         (if (null? _%subs183405%_)
                             '#f
                             (list->hash-table-eq _%subs183405%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst183408%_
                     _%ctx183390%_
                     _%phi183406%_
                     '#f)))))
          (if (pair? _%$%repr183391183398%_)
              (let ((_%$%hd183395183413%_ (##car _%$%repr183391183398%_))
                    (_%$%tl183396183415%_ (##cdr _%$%repr183391183398%_)))
                (let* ((_%phi183418%_ _%$%hd183395183413%_)
                       (_%subs183420%_ _%$%tl183396183415%_))
                  (_%$%K183394183410%_ _%subs183420%_ _%phi183418%_)))
              (_%$%E183393183402%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr183425%_)
        (let ((_%ctx183427%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr183425%_ _%ctx183427%_))))
    (define gx#core-deserialize-mark
      (lambda _g187695_
        (let ((_g187696_ (##length _g187695_)))
          (cond ((##fx= _g187696_ 1)
                 (apply gx#core-deserialize-mark__0 _g187695_))
                ((##fx= _g187696_ 2)
                 (apply gx#core-deserialize-mark__% _g187695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g187695_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx183386%_)
        (gx#stx-rewrap _%stx183386%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx183384%_)
        (gx#stx-unwrap__% _%stx183384%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx183354%_)
        (let* ((_%$%g183355183363%_ (gx#current-expander-marks))
               (_%$%else183357183371%_ (lambda () _%stx183354%_))
               (_%$%K183359183376%_
                (lambda (_%hd183374%_)
                  (gx#stx-apply-mark _%stx183354%_ _%hd183374%_))))
          (if (pair? _%$%g183355183363%_)
              (let* ((_%$%hd183360183379%_ (##car _%$%g183355183363%_))
                     (_%hd183382%_ _%$%hd183360183379%_))
                (_%$%K183359183376%_ _%hd183382%_))
              (_%$%else183357183371%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym183352%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym183352%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx183337%_ _%E183338%_)
        (let ((_%bind183340%_ (gx#resolve-identifier__0 _%stx183337%_)))
          (if (##structure-direct-instance-of?
               _%bind183340%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind183340%_ '5 '#f '#f)
              (_%E183338%_ _%stx183337%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx183345%_)
        (let ((_%E183347%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx183345%_ _%E183347%_))))
    (define gx#syntax-local-e
      (lambda _g187697_
        (let ((_g187698_ (##length _g187697_)))
          (cond ((##fx= _g187698_ 1) (apply gx#syntax-local-e__0 _g187697_))
                ((##fx= _g187698_ 2) (apply gx#syntax-local-e__% _g187697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g187697_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx183321%_ _%E183322%_)
        (let ((_%e183324%_ (gx#syntax-local-e__% _%stx183321%_ _%E183322%_)))
          (if (##structure-instance-of? _%e183324%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e183324%_ '1 '#f '#f)
              _%e183324%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx183329%_)
        (let ((_%E183331%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx183329%_ _%E183331%_))))
    (define gx#syntax-local-value
      (lambda _g187699_
        (let ((_g187700_ (##length _g187699_)))
          (cond ((##fx= _g187700_ 1)
                 (apply gx#syntax-local-value__0 _g187699_))
                ((##fx= _g187700_ 2)
                 (apply gx#syntax-local-value__% _g187699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g187699_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx183318%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx183318%_)))))
