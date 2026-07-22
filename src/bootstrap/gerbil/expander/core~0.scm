(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1784758124)
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
      (lambda _%$args187624%_
        (apply make-instance gx#expander-context::t _%$args187624%_)))
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
      (lambda _%$args187621%_
        (apply make-instance gx#root-context::t _%$args187621%_)))
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
      (lambda _%$args187618%_
        (apply make-instance gx#phi-context::t _%$args187618%_)))
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
      (lambda _%$args187615%_
        (apply make-instance gx#top-context::t _%$args187615%_)))
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
      (lambda _%$args187612%_
        (apply make-instance gx#module-context::t _%$args187612%_)))
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
      (lambda _%$args187609%_
        (apply make-instance gx#prelude-context::t _%$args187609%_)))
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
      (lambda _%$args187606%_
        (apply make-instance gx#local-context::t _%$args187606%_)))
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
      (lambda (_%self187579%_ _%id187580%_ _%super187581%_)
        (let ((_%self187584%_ _%self187579%_))
          (if (##fx< '3 (##structure-length _%self187584%_))
              (begin
                (##unchecked-structure-set!
                 _%self187584%_
                 _%id187580%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187584%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187584%_
                 _%super187581%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187584%_
                     '3
                     (##structure-length _%self187584%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self187597%_ _%id187598%_)
        (let ((_%super187600%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self187597%_
           _%id187598%_
           _%super187600%_))))
    (define gx#phi-context:::init!
      (lambda _g187666_
        (let ((_g187667_ (##length _g187666_)))
          (cond ((##fx= _g187667_ 2)
                 (apply gx#phi-context:::init!__0 _g187666_))
                ((##fx= _g187667_ 3)
                 (apply gx#phi-context:::init!__% _g187666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g187666_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self187432%_ _%super187433%_)
        (let ((_%self187436%_ _%self187432%_))
          (if (##fx< '3 (##structure-length _%self187436%_))
              (begin
                (##unchecked-structure-set!
                 _%self187436%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187436%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187436%_
                 _%super187433%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187436%_
                     '3
                     (##structure-length _%self187436%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self187449%_)
        (let ((_%super187451%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self187449%_ _%super187451%_))))
    (define gx#local-context:::init!
      (lambda _g187668_
        (let ((_g187669_ (##length _g187668_)))
          (cond ((##fx= _g187669_ 1)
                 (apply gx#local-context:::init!__0 _g187668_))
                ((##fx= _g187669_ 2)
                 (apply gx#local-context:::init!__% _g187668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g187668_))))))
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
      (lambda _%$args187306%_
        (apply make-instance gx#binding::t _%$args187306%_)))
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
      (lambda (_%self187289%_ _%id187290%_ _%key187291%_ _%phi187292%_)
        (let ((_%self187295%_ _%self187289%_))
          (##unchecked-structure-set! _%self187295%_ _%id187290%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self187295%_ _%key187291%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self187295%_
           _%phi187292%_
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
      (lambda _%$args187164%_
        (apply make-instance gx#runtime-binding::t _%$args187164%_)))
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
      (lambda _%$args187161%_
        (apply make-instance gx#local-binding::t _%$args187161%_)))
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
      (lambda _%$args187158%_
        (apply make-instance gx#top-binding::t _%$args187158%_)))
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
      (lambda _%$args187155%_
        (apply make-instance gx#module-binding::t _%$args187155%_)))
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
      (lambda _%$args187152%_
        (apply make-instance gx#extern-binding::t _%$args187152%_)))
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
      (lambda (_%self186768%_
               _%id186769%_
               _%key186770%_
               _%phi186771%_
               _%ctx186772%_)
        (let ((_%self186775%_ _%self186768%_))
          (gx#binding:::init!
           _%self186775%_
           _%id186769%_
           _%key186770%_
           _%phi186771%_)
          (##unchecked-structure-set!
           _%self186775%_
           _%ctx186772%_
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
      (lambda _%$args186521%_
        (apply make-instance gx#syntax-binding::t _%$args186521%_)))
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
      (lambda _%$args186518%_
        (apply make-instance gx#import-binding::t _%$args186518%_)))
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
      (lambda _%$args186515%_
        (apply make-instance gx#alias-binding::t _%$args186515%_)))
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
      (lambda (_%self186497%_
               _%id186498%_
               _%key186499%_
               _%phi186500%_
               _%e186501%_)
        (let ((_%self186504%_ _%self186497%_))
          (gx#binding:::init!
           _%self186504%_
           _%id186498%_
           _%key186499%_
           _%phi186500%_)
          (##unchecked-structure-set! _%self186504%_ _%e186501%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self186355%_
               _%id186356%_
               _%key186357%_
               _%phi186358%_
               _%e186359%_
               _%ctx186360%_
               _%weak?186361%_)
        (let ((_%self186364%_ _%self186355%_))
          (gx#binding:::init!
           _%self186364%_
           _%id186356%_
           _%key186357%_
           _%phi186358%_)
          (##unchecked-structure-set! _%self186364%_ _%e186359%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self186364%_ _%ctx186360%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self186364%_
           _%weak?186361%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self186215%_
               _%id186216%_
               _%key186217%_
               _%phi186218%_
               _%e186219%_)
        (let ((_%self186222%_ _%self186215%_))
          (gx#binding:::init!
           _%self186222%_
           _%id186216%_
           _%key186217%_
           _%phi186218%_)
          (##unchecked-structure-set! _%self186222%_ _%e186219%_ '5 '#f '#f))))
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
      (lambda _%$args186090%_
        (apply make-instance gx#expander::t _%$args186090%_)))
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
      (lambda _%$args186087%_
        (apply make-instance gx#core-expander::t _%$args186087%_)))
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
      (lambda _%$args186084%_
        (apply make-instance gx#expression-form::t _%$args186084%_)))
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
      (lambda _%$args186081%_
        (apply make-instance gx#special-form::t _%$args186081%_)))
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
      (lambda _%$args186078%_
        (apply make-instance gx#definition-form::t _%$args186078%_)))
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
      (lambda _%$args186075%_
        (apply make-instance gx#top-special-form::t _%$args186075%_)))
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
      (lambda _%$args186072%_
        (apply make-instance gx#module-special-form::t _%$args186072%_)))
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
      (lambda _%$args186069%_
        (apply make-instance gx#feature-expander::t _%$args186069%_)))
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
      (lambda _%$args186066%_
        (apply make-instance gx#private-feature-expander::t _%$args186066%_)))
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
      (lambda _%$args186063%_
        (apply make-instance gx#reserved-expander::t _%$args186063%_)))
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
      (lambda _%$args186060%_
        (apply make-instance gx#macro-expander::t _%$args186060%_)))
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
      (lambda _%$args186057%_
        (apply make-instance gx#rename-macro-expander::t _%$args186057%_)))
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
      (lambda _%$args186054%_
        (apply make-instance gx#user-expander::t _%$args186054%_)))
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
      (lambda _%$args186051%_
        (apply make-instance gx#expander-mark::t _%$args186051%_)))
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
      (lambda (_%ctx186035%_
               _%message186036%_
               _%stx186037%_
               .
               _%details186038%_)
        (let ((_%ctx186049%_
               (let ((_%$e186040%_ _%ctx186035%_))
                 (if _%$e186040%_
                     _%$e186040%_
                     (let ((_%$e186043%_ (gx#core-context-top__0)))
                       (if _%$e186043%_
                           (list 'expand
                                 (##structure-ref
                                  _%$e186043%_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                           '#f))))))
          (raise (make-syntax-error
                  _%message186036%_
                  (cons _%stx186037%_ _%details186038%_)
                  _%ctx186049%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx186022%_ _%expression?186023%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx186022%_ _%expression?186023%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx186028%_)
        (let ((_%expression?186030%_ '#f))
          (gx#eval-syntax__% _%stx186028%_ _%expression?186030%_))))
    (define gx#eval-syntax
      (lambda _g187670_
        (let ((_g187671_ (##length _g187670_)))
          (cond ((##fx= _g187671_ 1) (apply gx#eval-syntax__0 _g187670_))
                ((##fx= _g187671_ 2) (apply gx#eval-syntax__% _g187670_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g187670_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx186007%_ _%expression?186008%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx186007%_ _%expression?186008%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx186014%_)
        (let ((_%expression?186016%_ '#f))
          (gx#eval-syntax+1__% _%stx186014%_ _%expression?186016%_))))
    (define gx#eval-syntax+1
      (lambda _g187672_
        (let ((_g187673_ (##length _g187672_)))
          (cond ((##fx= _g187673_ 1) (apply gx#eval-syntax+1__0 _g187672_))
                ((##fx= _g187673_ 2) (apply gx#eval-syntax+1__% _g187672_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g187672_))))))
    (define gx#eval-expression+1
      (lambda (_%stx186004%_) (gx#eval-syntax+1__% _%stx186004%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx186002%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx186002%_))))
    (define gx#core-expand__%
      (lambda (_%stx185989%_ _%expression?185990%_)
        (if _%expression?185990%_
            (gx#core-expand-expression _%stx185989%_)
            (gx#core-expand-top _%stx185989%_))))
    (define gx#core-expand__0
      (lambda (_%stx185995%_)
        (let ((_%expression?185997%_ '#f))
          (gx#core-expand__% _%stx185995%_ _%expression?185997%_))))
    (define gx#core-expand
      (lambda _g187674_
        (let ((_g187675_ (##length _g187674_)))
          (cond ((##fx= _g187675_ 1) (apply gx#core-expand__0 _g187674_))
                ((##fx= _g187675_ 2) (apply gx#core-expand__% _g187674_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g187674_))))))
    (define gx#core-expand-top
      (lambda (_%stx185956%_)
        (let* ((_%stx185958%_ (gx#core-expand*__0 _%stx185956%_))
               (_%$%e185959185966%_ _%stx185958%_)
               (_%$%E185961185970%_
                (lambda () (gx#core-expand-expression _%stx185958%_)))
               (_%$%E185960185984%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185959185966%_)
                      (let ((_%$%e185962185974%_
                             (gx#syntax-e _%$%e185959185966%_)))
                        (let ((_%$%hd185963185977%_
                               (##car _%$%e185962185974%_))
                              (_%$%tl185964185979%_
                               (##cdr _%$%e185962185974%_)))
                          (let ((_%form185982%_ _%$%hd185963185977%_))
                            (if (gx#core-bound-identifier?__0 _%form185982%_)
                                _%stx185958%_
                                (_%$%E185961185970%_)))))
                      (_%$%E185961185970%_)))))
          (_%$%E185960185984%_))))
    (define gx#core-expand-expression
      (lambda (_%stx185888%_)
        (letrec ((_%sealed-expression?185890%_
                  (lambda (_%hd185926%_)
                    (if (gx#sealed-syntax? _%hd185926%_)
                        (let* ((_%$%e185927185934%_ _%hd185926%_)
                               (_%$%E185929185938%_ (lambda () '#f))
                               (_%$%E185928185952%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e185927185934%_)
                                      (let ((_%$%e185930185942%_
                                             (gx#syntax-e
                                              _%$%e185927185934%_)))
                                        (let ((_%$%hd185931185945%_
                                               (##car _%$%e185930185942%_))
                                              (_%$%tl185932185947%_
                                               (##cdr _%$%e185930185942%_)))
                                          (let ((_%form185950%_
                                                 _%$%hd185931185945%_))
                                            (gx#core-bound-identifier?__%
                                             _%form185950%_
                                             gx#expression-form-binding?))))
                                      (_%$%E185929185938%_)))))
                          (_%$%E185928185952%_))
                        '#f)))
                 (_%illegal-expression185891%_
                  (lambda (_%hd185923%_ . _%_185924%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx185888%_
                     _%hd185923%_)))
                 (_%expand-e185892%_
                  (lambda (_%form185915%_ _%hd185916%_)
                    (let ((_%bind185918%_
                           (if (##structure-instance-of?
                                _%form185915%_
                                'gx#binding::t)
                               _%form185915%_
                               (gx#resolve-identifier__0 _%form185915%_))))
                      (if (gx#core-expander-binding? _%bind185918%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind185918%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd185916%_
                            (gx#stx-source _%stx185888%_)))
                          (if (##structure-direct-instance-of?
                               _%bind185918%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind185918%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd185916%_
                                 (gx#stx-source _%stx185888%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx185888%_
                               _%form185915%_)))))))
          (let ((_%hd185894%_ (gx#core-expand-head _%stx185888%_)))
            (if (_%sealed-expression?185890%_ _%hd185894%_)
                _%hd185894%_
                (if (gx#stx-pair? _%hd185894%_)
                    (let* ((_%form185898%_ (gx#stx-car _%hd185894%_))
                           (_%bind185900%_
                            (if (gx#identifier? _%form185898%_)
                                (gx#resolve-identifier__0 _%form185898%_)
                                '#f)))
                      (if (or (not _%bind185900%_)
                              (not (gx#core-expander-binding? _%bind185900%_)))
                          (_%expand-e185892%_
                           '%%app
                           (cons '%%app _%hd185894%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind185900%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd185894%_
                               _%illegal-expression185891%_)
                              (if (gx#expression-form-binding? _%bind185900%_)
                                  (_%expand-e185892%_
                                   _%bind185900%_
                                   _%hd185894%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind185900%_)
                                      (gx#core-expand-expression
                                       (_%expand-e185892%_
                                        _%bind185900%_
                                        _%hd185894%_))
                                      (_%illegal-expression185891%_
                                       _%hd185894%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd185894%_)
                        (_%illegal-expression185891%_ _%hd185894%_)
                        (if (gx#identifier? _%hd185894%_)
                            (_%expand-e185892%_
                             '%%ref
                             (cons '%%ref (cons _%hd185894%_ '())))
                            (if (gx#stx-datum? _%hd185894%_)
                                (_%expand-e185892%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd185894%_ '())))
                                (_%illegal-expression185891%_
                                 _%hd185894%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx185883%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx185886%_ (gx#core-expand-expression _%stx185883%_)))
             (values _%stx185886%_ (gx#eval-syntax* _%stx185886%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx185864%_ _%stop?185865%_)
        (let _%lp185867%_ ((_%stx185869%_ _%stx185864%_))
          (if (_%stop?185865%_ _%stx185869%_)
              _%stx185869%_
              (let ((_%rstx185871%_ (gx#core-expand1 _%stx185869%_)))
                (if (eq? _%stx185869%_ _%rstx185871%_)
                    _%stx185869%_
                    (_%lp185867%_ _%rstx185871%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx185876%_)
        (let ((_%stop?185878%_ false))
          (gx#core-expand*__% _%stx185876%_ _%stop?185878%_))))
    (define gx#core-expand*
      (lambda _g187676_
        (let ((_g187677_ (##length _g187676_)))
          (cond ((##fx= _g187677_ 1) (apply gx#core-expand*__0 _g187676_))
                ((##fx= _g187677_ 2) (apply gx#core-expand*__% _g187676_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g187676_))))))
    (define gx#core-expand1
      (lambda (_%stx185816%_)
        (letrec ((_%step185818%_
                  (lambda (_%hd185855%_)
                    (let ((_%bind185857%_
                           (gx#resolve-identifier__0 _%hd185855%_)))
                      (if (##structure-instance-of?
                           _%bind185857%_
                           'gx#runtime-binding::t)
                          _%stx185816%_
                          (if (##structure-direct-instance-of?
                               _%bind185857%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind185857%_
                                '5
                                '#f
                                '#f)
                               _%stx185816%_)
                              (if (not _%bind185857%_)
                                  _%stx185816%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx185816%_))))))))
          (let* ((_%$%e185819185827%_ _%stx185816%_)
                 (_%$%E185825185831%_ (lambda () _%stx185816%_))
                 (_%$%E185821185837%_
                  (lambda ()
                    (let ((_%hd185835%_ _%$%e185819185827%_))
                      (if (gx#identifier? _%hd185835%_)
                          (_%step185818%_ _%hd185835%_)
                          (_%$%E185825185831%_)))))
                 (_%$%E185820185851%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185819185827%_)
                        (let ((_%$%e185822185841%_
                               (gx#syntax-e _%$%e185819185827%_)))
                          (let ((_%$%hd185823185844%_
                                 (##car _%$%e185822185841%_))
                                (_%$%tl185824185846%_
                                 (##cdr _%$%e185822185841%_)))
                            (let ((_%hd185849%_ _%$%hd185823185844%_))
                              (if (gx#identifier? _%hd185849%_)
                                  (_%step185818%_ _%hd185849%_)
                                  (_%$%E185821185837%_)))))
                        (_%$%E185821185837%_)))))
            (_%$%E185820185851%_)))))
    (define gx#core-expand-head
      (lambda (_%stx185782%_)
        (letrec ((_%stop?185784%_
                  (lambda (_%stx185786%_)
                    (let* ((_%$%e185787185794%_ _%stx185786%_)
                           (_%$%E185789185798%_ (lambda () '#f))
                           (_%$%E185788185812%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185787185794%_)
                                  (let ((_%$%e185790185802%_
                                         (gx#syntax-e _%$%e185787185794%_)))
                                    (let ((_%$%hd185791185805%_
                                           (##car _%$%e185790185802%_))
                                          (_%$%tl185792185807%_
                                           (##cdr _%$%e185790185802%_)))
                                      (let ((_%hd185810%_
                                             _%$%hd185791185805%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd185810%_))))
                                  (_%$%E185789185798%_)))))
                      (_%$%E185788185812%_)))))
          (gx#core-expand*__% _%stx185782%_ _%stop?185784%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx185588%_
               _%expand-special185589%_
               _%begin-form185590%_
               _%expand-e185591%_)
        (letrec ((_%expand-splice185593%_
                  (lambda (_%hd185756%_
                           _%body185757%_
                           _%rest185758%_
                           _%r185759%_)
                    (if (gx#stx-list? _%body185757%_)
                        (_%K185597%_
                         (gx#stx-foldr cons _%rest185758%_ _%body185757%_)
                         _%r185759%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx185588%_
                         _%hd185756%_))))
                 (_%expand-cond-expand185594%_
                  (lambda (_%hd185752%_ _%rest185753%_ _%r185754%_)
                    (_%K185597%_
                     (cons (gx#core-expand-cond-expand% _%hd185752%_)
                           _%rest185753%_)
                     _%r185754%_)))
                 (_%expand-include185595%_
                  (lambda (_%hd185701%_ _%rest185702%_ _%r185703%_)
                    (let* ((_%$%e185704185714%_ _%hd185701%_)
                           (_%$%E185706185718%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185704185714%_)))
                           (_%$%E185705185748%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185704185714%_)
                                  (let ((_%$%e185707185722%_
                                         (gx#syntax-e _%$%e185704185714%_)))
                                    (let ((_%$%hd185708185725%_
                                           (##car _%$%e185707185722%_))
                                          (_%$%tl185709185727%_
                                           (##cdr _%$%e185707185722%_)))
                                      (if (gx#stx-pair? _%$%tl185709185727%_)
                                          (let ((_%$%e185710185730%_
                                                 (gx#syntax-e
                                                  _%$%tl185709185727%_)))
                                            (let ((_%$%hd185711185733%_
                                                   (##car _%$%e185710185730%_))
                                                  (_%$%tl185712185735%_
                                                   (##cdr _%$%e185710185730%_)))
                                              (let ((_%path185738%_
                                                     _%$%hd185711185733%_))
                                                (if (gx#stx-null?
                                                     _%$%tl185712185735%_)
                                                    (if (gx#stx-string?
                                                         _%path185738%_)
                                                        (let* ((_%rpath185740%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path185738%_
                         (gx#stx-source _%hd185701%_)))
                       (_%block185742%_
                        (gx#core-expand-include%__%
                         _%hd185701%_
                         _%rpath185740%_))
                       (_%rbody185745%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block185742%_
                            _%expand-special185589%_
                            '#f
                            _%expand-e185591%_))
                         gx#current-expander-path
                         (cons _%rpath185740%_ (gx#current-expander-path)))))
                  (_%K185597%_
                   _%rest185702%_
                   (append _%rbody185745%_ _%r185703%_)))
                (_%$%E185706185718%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185706185718%_)))))
                                          (_%$%E185706185718%_))))
                                  (_%$%E185706185718%_)))))
                      (_%$%E185705185748%_))))
                 (_%expand-expression185596%_
                  (lambda (_%hd185697%_ _%rest185698%_ _%r185699%_)
                    (_%K185597%_
                     _%rest185698%_
                     (cons (_%expand-e185591%_ _%hd185697%_) _%r185699%_))))
                 (_%K185597%_
                  (lambda (_%rest185627%_ _%r185628%_)
                    (let* ((_%$%e185629185636%_ _%rest185627%_)
                           (_%$%E185631185640%_
                            (lambda ()
                              (if _%begin-form185590%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form185590%_
                                    (reverse _%r185628%_))
                                   (gx#stx-source _%stx185588%_))
                                  _%r185628%_)))
                           (_%$%E185630185693%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185629185636%_)
                                  (let ((_%$%e185632185644%_
                                         (gx#syntax-e _%$%e185629185636%_)))
                                    (let ((_%$%hd185633185647%_
                                           (##car _%$%e185632185644%_))
                                          (_%$%tl185634185649%_
                                           (##cdr _%$%e185632185644%_)))
                                      (let* ((_%hd185652%_
                                              _%$%hd185633185647%_)
                                             (_%rest185654%_
                                              _%$%tl185634185649%_)
                                             (_%hd185656%_
                                              (gx#core-expand-head
                                               _%hd185652%_))
                                             (_%$%e185657185664%_ _%hd185656%_)
                                             (_%$%E185659185668%_
                                              (lambda ()
                                                (_%expand-expression185596%_
                                                 _%hd185656%_
                                                 _%rest185654%_
                                                 _%r185628%_)))
                                             (_%$%E185658185689%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e185657185664%_)
                                                    (let ((_%$%e185660185672%_
                                                           (gx#syntax-e
                                                            _%$%e185657185664%_)))
                                                      (let ((_%$%hd185661185675%_
                                                             (##car _%$%e185660185672%_))
                                                            (_%$%tl185662185677%_
                                                             (##cdr _%$%e185660185672%_)))
                                                        (let* ((_%form185680%_
                                                                _%$%hd185661185675%_)
                                                               (_%body185682%_
                                                                _%$%tl185662185677%_)
                                                               (_%bind185684%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form185680%_)
                            (gx#resolve-identifier__0 _%form185680%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind185684%_)
                      (let ((_%$e185686%_
                             (##unchecked-structure-ref
                              _%bind185684%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e185686%_)
                            (_%expand-splice185593%_
                             _%hd185656%_
                             _%body185682%_
                             _%rest185654%_
                             _%r185628%_)
                            (if (eq? '%#cond-expand _%$e185686%_)
                                (_%expand-cond-expand185594%_
                                 _%hd185656%_
                                 _%rest185654%_
                                 _%r185628%_)
                                (if (eq? '%#include _%$e185686%_)
                                    (_%expand-include185595%_
                                     _%hd185656%_
                                     _%rest185654%_
                                     _%r185628%_)
                                    (_%expand-special185589%_
                                     _%hd185656%_
                                     _%K185597%_
                                     _%rest185654%_
                                     _%r185628%_)))))
                      (_%expand-expression185596%_
                       _%hd185656%_
                       _%rest185654%_
                       _%r185628%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185659185668%_)))))
                                        (_%$%E185658185689%_))))
                                  (_%$%E185631185640%_)))))
                      (_%$%E185630185693%_)))))
          (let* ((_%$%e185598185605%_ _%stx185588%_)
                 (_%$%E185600185609%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185598185605%_)))
                 (_%$%E185599185623%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185598185605%_)
                        (let ((_%$%e185601185613%_
                               (gx#syntax-e _%$%e185598185605%_)))
                          (let ((_%$%hd185602185616%_
                                 (##car _%$%e185601185613%_))
                                (_%$%tl185603185618%_
                                 (##cdr _%$%e185601185613%_)))
                            (let ((_%body185621%_ _%$%tl185603185618%_))
                              (if (gx#stx-list? _%body185621%_)
                                  (_%K185597%_ _%body185621%_ '())
                                  (_%$%E185600185609%_)))))
                        (_%$%E185600185609%_)))))
            (_%$%E185599185623%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx185764%_ _%expand-special185765%_)
        (let* ((_%begin-form185767%_ '%#begin)
               (_%expand-e185769%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185764%_
           _%expand-special185765%_
           _%begin-form185767%_
           _%expand-e185769%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx185771%_ _%expand-special185772%_ _%begin-form185773%_)
        (let ((_%expand-e185775%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185771%_
           _%expand-special185772%_
           _%begin-form185773%_
           _%expand-e185775%_))))
    (define gx#core-expand-block
      (lambda _g187678_
        (let ((_g187679_ (##length _g187678_)))
          (cond ((##fx= _g187679_ 2) (apply gx#core-expand-block__0 _g187678_))
                ((##fx= _g187679_ 3) (apply gx#core-expand-block__1 _g187678_))
                ((##fx= _g187679_ 4) (apply gx#core-expand-block__% _g187678_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g187678_))))))
    (define gx#core-expand-block*
      (lambda (_%stx185536%_ _%expand-special185537%_)
        (let* ((_%$%g185538185549%_
                (gx#core-expand-block__1
                 _%stx185536%_
                 _%expand-special185537%_
                 '#f))
               (_%$%E185542185553%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g185538185549%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K185547185584%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx185536%_)))
                (_%$%K185544185570%_ (lambda (_%expr185568%_) _%expr185568%_))
                (_%$%K185543185559%_
                 (lambda (_%body185557%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body185557%_))
                    (gx#stx-source _%stx185536%_)))))
            (let ((_%$%try-match185540185580%_
                   (lambda ()
                     (if (pair? _%$%g185538185549%_)
                         (let ((_%$%tl185546185575%_
                                (##cdr _%$%g185538185549%_))
                               (_%$%hd185545185573%_
                                (##car _%$%g185538185549%_)))
                           (if (null? _%$%tl185546185575%_)
                               (let ((_%expr185578%_ _%$%hd185545185573%_))
                                 (_%$%K185544185570%_ _%expr185578%_))
                               (let ((_%body185562%_ _%$%g185538185549%_))
                                 (_%$%K185543185559%_ _%body185562%_))))
                         (let ((_%body185562%_ _%$%g185538185549%_))
                           (_%$%K185543185559%_ _%body185562%_))))))
              (if (null? _%$%g185538185549%_)
                  (_%$%K185547185584%_)
                  (_%$%try-match185540185580%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx185362%_)
        (letrec ((_%satisfied?185364%_
                  (lambda (_%condition185465%_)
                    (let* ((_%$%e185466185481%_ _%condition185465%_)
                           (_%$%E185476185485%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185466185481%_)))
                           (_%$%E185469185504%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185466185481%_)
                                  (let ((_%$%e185477185489%_
                                         (gx#syntax-e _%$%e185466185481%_)))
                                    (let ((_%$%hd185478185492%_
                                           (##car _%$%e185477185489%_))
                                          (_%$%tl185479185494%_
                                           (##cdr _%$%e185477185489%_)))
                                      (let* ((_%combinator185497%_
                                              _%$%hd185478185492%_)
                                             (_%body185499%_
                                              _%$%tl185479185494%_))
                                        (if (gx#stx-list? _%body185499%_)
                                            (let ((_%$e185501%_
                                                   (gx#stx-e
                                                    _%combinator185497%_)))
                                              (if (eq? 'not _%$e185501%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?185364%_
                                                        _%body185499%_))
                                                  (if (eq? 'and _%$e185501%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?185364%_
                                                       _%body185499%_)
                                                      (if (eq? 'or
                                                               _%$e185501%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?185364%_
                                                           _%body185499%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e185501%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body185499%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx185362%_
                       _%combinator185497%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E185476185485%_)))))
                                  (_%$%E185476185485%_))))
                           (_%$%E185468185526%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185466185481%_)
                                  (let ((_%$%e185470185508%_
                                         (gx#syntax-e _%$%e185466185481%_)))
                                    (let ((_%$%hd185471185511%_
                                           (##car _%$%e185470185508%_))
                                          (_%$%tl185472185513%_
                                           (##cdr _%$%e185470185508%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd185471185511%_)
                                               (gx#core-identifier=?
                                                _%$%hd185471185511%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl185472185513%_)
                                              (let ((_%$%e185473185516%_
                                                     (gx#syntax-e
                                                      _%$%tl185472185513%_)))
                                                (let ((_%$%hd185474185519%_
                                                       (##car _%$%e185473185516%_))
                                                      (_%$%tl185475185521%_
                                                       (##cdr _%$%e185473185516%_)))
                                                  (let ((_%expr185524%_
                                                         _%$%hd185474185519%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl185475185521%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr185524%_)
                                                        (_%$%E185469185504%_)))))
                                              (_%$%E185469185504%_))
                                          (_%$%E185469185504%_))))
                                  (_%$%E185469185504%_))))
                           (_%$%E185467185532%_
                            (lambda ()
                              (let ((_%id185530%_ _%$%e185466185481%_))
                                (if (gx#identifier? _%id185530%_)
                                    (gx#core-bound-identifier?__%
                                     _%id185530%_
                                     gx#feature-binding?)
                                    (_%$%E185468185526%_))))))
                      (_%$%E185467185532%_))))
                 (_%loop185365%_
                  (lambda (_%rest185395%_)
                    (let* ((_%$%e185396185404%_ _%rest185395%_)
                           (_%$%E185402185408%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185396185404%_)))
                           (_%$%E185398185412%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e185396185404%_)
                                  '()
                                  (_%$%E185402185408%_))))
                           (_%$%E185397185461%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185396185404%_)
                                  (let ((_%$%e185399185416%_
                                         (gx#syntax-e _%$%e185396185404%_)))
                                    (let ((_%$%hd185400185419%_
                                           (##car _%$%e185399185416%_))
                                          (_%$%tl185401185421%_
                                           (##cdr _%$%e185399185416%_)))
                                      (let* ((_%hd185424%_
                                              _%$%hd185400185419%_)
                                             (_%rest185426%_
                                              _%$%tl185401185421%_)
                                             (_%$%e185427185434%_ _%hd185424%_)
                                             (_%$%E185429185438%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e185427185434%_)))
                                             (_%$%E185428185457%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e185427185434%_)
                                                    (let ((_%$%e185430185442%_
                                                           (gx#syntax-e
                                                            _%$%e185427185434%_)))
                                                      (let ((_%$%hd185431185445%_
                                                             (##car _%$%e185430185442%_))
                                                            (_%$%tl185432185447%_
                                                             (##cdr _%$%e185430185442%_)))
                                                        (let* ((_%condition185450%_
                                                                _%$%hd185431185445%_)
                                                               (_%body185452%_
                                                                _%$%tl185432185447%_))
                                                          (if (gx#stx-eq?
                                                               _%condition185450%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest185426%_)
                          _%body185452%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx185362%_
                           _%hd185424%_))
                      (if (_%satisfied?185364%_ _%condition185450%_)
                          _%body185452%_
                          (_%loop185365%_ _%rest185426%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185429185438%_)))))
                                        (_%$%E185428185457%_))))
                                  (_%$%E185398185412%_)))))
                      (_%$%E185397185461%_)))))
          (let* ((_%$%e185366185373%_ _%stx185362%_)
                 (_%$%E185368185377%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185366185373%_)))
                 (_%$%E185367185391%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185366185373%_)
                        (let ((_%$%e185369185381%_
                               (gx#syntax-e _%$%e185366185373%_)))
                          (let ((_%$%hd185370185384%_
                                 (##car _%$%e185369185381%_))
                                (_%$%tl185371185386%_
                                 (##cdr _%$%e185369185381%_)))
                            (let ((_%clauses185389%_ _%$%tl185371185386%_))
                              (if (gx#stx-list? _%clauses185389%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop185365%_ _%clauses185389%_))
                                  (_%$%E185368185377%_)))))
                        (_%$%E185368185377%_)))))
            (_%$%E185367185391%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx185305%_ _%rpath185306%_)
        (let* ((_%$%e185307185317%_ _%stx185305%_)
               (_%$%E185309185321%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185307185317%_)))
               (_%$%E185308185348%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185307185317%_)
                      (let ((_%$%e185310185325%_
                             (gx#syntax-e _%$%e185307185317%_)))
                        (let ((_%$%hd185311185328%_
                               (##car _%$%e185310185325%_))
                              (_%$%tl185312185330%_
                               (##cdr _%$%e185310185325%_)))
                          (if (gx#stx-pair? _%$%tl185312185330%_)
                              (let ((_%$%e185313185333%_
                                     (gx#syntax-e _%$%tl185312185330%_)))
                                (let ((_%$%hd185314185336%_
                                       (##car _%$%e185313185333%_))
                                      (_%$%tl185315185338%_
                                       (##cdr _%$%e185313185333%_)))
                                  (let ((_%path185341%_ _%$%hd185314185336%_))
                                    (if (gx#stx-null? _%$%tl185315185338%_)
                                        (if (gx#stx-string? _%path185341%_)
                                            (let ((_%rpath185346%_
                                                   (let ((_%$e185343%_
                                                          _%rpath185306%_))
                                                     (if _%$e185343%_
                                                         _%$e185343%_
                                                         (gx#core-resolve-path__%
                                                          _%path185341%_
                                                          (gx#stx-source
                                                           _%stx185305%_))))))
                                              (if (member _%rpath185346%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx185305%_
                                                   (##append
                                                    (##member
                                                     _%rpath185346%_
                                                     (reverse (gx#current-expander-path)))
                                                    (cons _%rpath185346%_
                                                          '())))
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath185346%_))
                                                    (gx#stx-source
                                                     _%stx185305%_)))))
                                            (_%$%E185309185321%_))
                                        (_%$%E185309185321%_)))))
                              (_%$%E185309185321%_))))
                      (_%$%E185309185321%_)))))
          (_%$%E185308185348%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx185355%_)
        (let ((_%rpath185357%_ '#f))
          (gx#core-expand-include%__% _%stx185355%_ _%rpath185357%_))))
    (define gx#core-expand-include%
      (lambda _g187680_
        (let ((_g187681_ (##length _g187680_)))
          (cond ((##fx= _g187681_ 1)
                 (apply gx#core-expand-include%__0 _g187680_))
                ((##fx= _g187681_ 2)
                 (apply gx#core-expand-include%__% _g187680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g187680_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K185271%_ _%stx185272%_ _%method185273%_)
        (if (procedure? _%K185271%_)
            (let ((_%$e185276%_ (gx#stx-source _%stx185272%_)))
              (if _%$e185276%_
                  (gx#stx-wrap-source (_%K185271%_ _%stx185272%_) _%$e185276%_)
                  (_%K185271%_ _%stx185272%_)))
            (let ((_%$e185284%_
                   (bound-method-ref _%K185271%_ _%method185273%_)))
              (if _%$e185284%_
                  (gx#core-apply-expander__%
                   _%$e185284%_
                   _%stx185272%_
                   _%method185273%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx185272%_
                   _%method185273%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K185295%_ _%stx185296%_)
        (let ((_%method185298%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K185295%_
           _%stx185296%_
           _%method185298%_))))
    (define gx#core-apply-expander
      (lambda _g187682_
        (let ((_g187683_ (##length _g187682_)))
          (cond ((##fx= _g187683_ 2)
                 (apply gx#core-apply-expander__0 _g187682_))
                ((##fx= _g187683_ 3)
                 (apply gx#core-apply-expander__% _g187682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g187682_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self185256%_ _%stx185257%_)
        (let ((_%self185260%_ _%self185256%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx185257%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self185099%_ _%stx185100%_)
        (let* ((_%self185103%_ _%self185099%_)
               (_%$%self185112185118%_ _%self185103%_)
               (_%$%E185114185121%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self185112185118%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K185115185126%_
                (lambda (_%K185124%_)
                  (gx#core-apply-expander__0 _%K185124%_ _%stx185100%_)))
               (_%$%e185116185129%_
                (##unchecked-structure-ref _%$%self185112185118%_ '1 '#f '#f))
               (_%K185132%_ _%$%e185116185129%_))
          (_%$%K185115185126%_ _%K185132%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self184942%_ _%stx184943%_)
        (let ((_%self184946%_ _%self184942%_))
          (if (gx#sealed-syntax? _%stx184943%_)
              _%stx184943%_
              (let* ((_%$%self184955184961%_ _%self184946%_)
                     (_%$%E184957184964%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self184955184961%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K184958184969%_
                      (lambda (_%K184967%_)
                        (gx#core-apply-expander__0 _%K184967%_ _%stx184943%_)))
                     (_%$%e184959184972%_
                      (##unchecked-structure-ref
                       _%$%self184955184961%_
                       '1
                       '#f
                       '#f))
                     (_%K184975%_ _%$%e184959184972%_))
                (_%$%K184958184969%_ _%K184975%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self184792%_ _%stx184793%_ _%top?184794%_)
        (let ((_%self184797%_ _%self184792%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx184793%_))
                (force-output))
              '#!void)
          (if (_%top?184794%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self184797%_
               _%stx184793%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx184793%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self184811%_ _%stx184812%_)
        (let ((_%top?184814%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self184811%_
           _%stx184812%_
           _%top?184814%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g187684_
        (let ((_g187685_ (##length _g187684_)))
          (cond ((##fx= _g187685_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g187684_))
                ((##fx= _g187685_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g187684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g187684_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self184655%_ _%stx184656%_)
        (let ((_%self184659%_ _%self184655%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self184659%_
           _%stx184656%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self184470%_ _%stx184471%_)
        (let* ((_%self184474%_ _%self184470%_)
               (_%$%self184483184489%_ _%self184474%_)
               (_%$%E184485184492%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184483184489%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K184486184525%_
                (lambda (_%id184495%_)
                  (let* ((_%$%e184496184503%_ _%stx184471%_)
                         (_%$%E184498184507%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e184496184503%_)))
                         (_%$%E184497184521%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e184496184503%_)
                                (let ((_%$%e184499184511%_
                                       (gx#syntax-e _%$%e184496184503%_)))
                                  (let ((_%$%hd184500184514%_
                                         (##car _%$%e184499184511%_))
                                        (_%$%tl184501184516%_
                                         (##cdr _%$%e184499184511%_)))
                                    (let ((_%body184519%_
                                           _%$%tl184501184516%_))
                                      (gx#core-cons
                                       _%id184495%_
                                       _%body184519%_))))
                                (_%$%E184498184507%_)))))
                    (_%$%E184497184521%_))))
               (_%$%e184487184528%_
                (##unchecked-structure-ref _%$%self184483184489%_ '1 '#f '#f))
               (_%id184531%_ _%$%e184487184528%_))
          (_%$%K184486184525%_ _%id184531%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self184297%_ _%stx184298%_ _%method184299%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx184298%_))
              (force-output))
            '#!void)
        (let* ((_%$%self184300184308%_ _%self184297%_)
               (_%$%E184302184311%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184300184308%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K184303184318%_
                (lambda (_%phi184314%_ _%ctx184315%_ _%K184316%_)
                  (gx#core-apply-user-macro
                   _%K184316%_
                   _%stx184298%_
                   _%ctx184315%_
                   _%phi184314%_
                   _%method184299%_))))
          (if (##structure-instance-of?
               _%$%self184300184308%_
               'gx#user-expander::t)
              (let* ((_%$%e184304184321%_
                      (##unchecked-structure-ref
                       _%$%self184300184308%_
                       '1
                       '#f
                       '#f))
                     (_%K184324%_ _%$%e184304184321%_)
                     (_%$%e184305184326%_
                      (##unchecked-structure-ref
                       _%$%self184300184308%_
                       '2
                       '#f
                       '#f))
                     (_%ctx184329%_ _%$%e184305184326%_)
                     (_%$%e184306184331%_
                      (##unchecked-structure-ref
                       _%$%self184300184308%_
                       '3
                       '#f
                       '#f))
                     (_%phi184334%_ _%$%e184306184331%_))
                (_%$%K184303184318%_ _%phi184334%_ _%ctx184329%_ _%K184324%_))
              (_%$%E184302184311%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self184339%_ _%stx184340%_)
        (let ((_%method184342%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self184339%_
           _%stx184340%_
           _%method184342%_))))
    (define gx#core-apply-user-expander
      (lambda _g187686_
        (let ((_g187687_ (##length _g187686_)))
          (cond ((##fx= _g187687_ 2)
                 (apply gx#core-apply-user-expander__0 _g187686_))
                ((##fx= _g187687_ 3)
                 (apply gx#core-apply-user-expander__% _g187686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g187686_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K184287%_
               _%stx184288%_
               _%ctx184289%_
               _%phi184290%_
               _%method184291%_)
        (let ((_%mark184293%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx184289%_
                _%phi184290%_
                _%stx184288%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K184287%_
               (gx#stx-apply-mark _%stx184288%_ _%mark184293%_)
               _%method184291%_)
              _%mark184293%_))
           gx#current-expander-marks
           (cons _%mark184293%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx184135%_ _%phi184136%_ _%ctx184137%_)
        (let _%lp184139%_ ((_%bind184141%_
                            (gx#core-resolve-identifier__%
                             _%stx184135%_
                             _%phi184136%_
                             _%ctx184137%_)))
          (if (##structure-direct-instance-of?
               _%bind184141%_
               'gx#import-binding::t)
              (_%lp184139%_
               (##unchecked-structure-ref _%bind184141%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind184141%_
                   'gx#alias-binding::t)
                  (_%lp184139%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind184141%_ '5 '#f '#f)
                    _%phi184136%_
                    _%ctx184137%_))
                  _%bind184141%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx184149%_)
        (let* ((_%phi184151%_ (gx#current-expander-phi))
               (_%ctx184153%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx184149%_
           _%phi184151%_
           _%ctx184153%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx184155%_ _%phi184156%_)
        (let ((_%ctx184158%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx184155%_
           _%phi184156%_
           _%ctx184158%_))))
    (define gx#resolve-identifier
      (lambda _g187688_
        (let ((_g187689_ (##length _g187688_)))
          (cond ((##fx= _g187689_ 1)
                 (apply gx#resolve-identifier__0 _g187688_))
                ((##fx= _g187689_ 2)
                 (apply gx#resolve-identifier__1 _g187688_))
                ((##fx= _g187689_ 3)
                 (apply gx#resolve-identifier__% _g187688_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g187688_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx184090%_
               _%val184091%_
               _%rebind?184092%_
               _%phi184093%_
               _%ctx184094%_)
        (let ((_%rebind?184099%_
               (if (not _%rebind?184092%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?184092%_)
                       _%rebind?184092%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx184090%_)
           _%val184091%_
           _%rebind?184099%_
           _%phi184093%_
           _%ctx184094%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx184104%_ _%val184105%_)
        (let* ((_%rebind?184107%_ '#f)
               (_%phi184109%_ (gx#current-expander-phi))
               (_%ctx184111%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx184104%_
           _%val184105%_
           _%rebind?184107%_
           _%phi184109%_
           _%ctx184111%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx184113%_ _%val184114%_ _%rebind?184115%_)
        (let* ((_%phi184117%_ (gx#current-expander-phi))
               (_%ctx184119%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx184113%_
           _%val184114%_
           _%rebind?184115%_
           _%phi184117%_
           _%ctx184119%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx184121%_ _%val184122%_ _%rebind?184123%_ _%phi184124%_)
        (let ((_%ctx184126%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx184121%_
           _%val184122%_
           _%rebind?184123%_
           _%phi184124%_
           _%ctx184126%_))))
    (define gx#bind-identifier!
      (lambda _g187690_
        (let ((_g187691_ (##length _g187690_)))
          (cond ((##fx= _g187691_ 2) (apply gx#bind-identifier!__0 _g187690_))
                ((##fx= _g187691_ 3) (apply gx#bind-identifier!__1 _g187690_))
                ((##fx= _g187691_ 4) (apply gx#bind-identifier!__2 _g187690_))
                ((##fx= _g187691_ 5) (apply gx#bind-identifier!__% _g187690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g187690_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx184056%_ _%phi184057%_ _%ctx184058%_)
        (let _%lp184060%_ ((_%e184062%_ _%stx184056%_)
                           (_%marks184063%_ (gx#current-expander-marks)))
          (if (symbol? _%e184062%_)
              (gx#core-resolve-binding
               _%e184062%_
               _%phi184057%_
               _%phi184057%_
               _%ctx184058%_
               (reverse _%marks184063%_))
              (if (gx#identifier-quote? _%e184062%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e184062%_ '1 '#f '#f)
                   _%phi184057%_
                   '0
                   (##unchecked-structure-ref _%e184062%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e184062%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e184062%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e184062%_ '1 '#f '#f)
                       _%phi184057%_
                       _%phi184057%_
                       _%ctx184058%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e184062%_ '3 '#f '#f)
                        _%marks184063%_))
                      (if (##structure-direct-instance-of?
                           _%e184062%_
                           'gx#syntax-wrap::t)
                          (_%lp184060%_
                           (##unchecked-structure-ref _%e184062%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e184062%_ '3 '#f '#f)
                            _%marks184063%_))
                          (if (##structure-instance-of?
                               _%e184062%_
                               'gerbil#AST::t)
                              (_%lp184060%_
                               (##unchecked-structure-ref
                                _%e184062%_
                                '1
                                '#f
                                '#f)
                               _%marks184063%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx184056%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx184074%_)
        (let* ((_%phi184076%_ (gx#current-expander-phi))
               (_%ctx184078%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx184074%_
           _%phi184076%_
           _%ctx184078%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx184080%_ _%phi184081%_)
        (let ((_%ctx184083%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx184080%_
           _%phi184081%_
           _%ctx184083%_))))
    (define gx#core-resolve-identifier
      (lambda _g187692_
        (let ((_g187693_ (##length _g187692_)))
          (cond ((##fx= _g187693_ 1)
                 (apply gx#core-resolve-identifier__0 _g187692_))
                ((##fx= _g187693_ 2)
                 (apply gx#core-resolve-identifier__1 _g187692_))
                ((##fx= _g187693_ 3)
                 (apply gx#core-resolve-identifier__% _g187692_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g187692_))))))
    (define gx#core-resolve-binding
      (lambda (_%id183967%_
               _%phi183968%_
               _%src-phi183969%_
               _%ctx183970%_
               _%marks183971%_)
        (letrec ((_%resolve183973%_
                  (lambda (_%ctx184040%_ _%src-phi184041%_ _%key184042%_)
                    (let _%lp184044%_ ((_%ctx184046%_
                                        (gx#core-context-shift
                                         _%ctx184040%_
                                         _%phi183968%_))
                                       (_%dphi184047%_
                                        (fx- _%phi183968%_ _%src-phi184041%_)))
                      (let ((_%$e184049%_
                             (gx#core-context-resolve
                              _%ctx184046%_
                              _%key184042%_)))
                        (if _%$e184049%_
                            _%$e184049%_
                            (if (fxzero? _%dphi184047%_)
                                '#f
                                (if (fxpositive? _%dphi184047%_)
                                    (_%lp184044%_
                                     (gx#core-context-shift _%ctx184046%_ '-1)
                                     (##fx- _%dphi184047%_ '1))
                                    (_%lp184044%_
                                     (gx#core-context-shift _%ctx184046%_ '1)
                                     (##fx+ _%dphi184047%_ '1))))))))))
          (let _%lp183975%_ ((_%ctx183977%_ _%ctx183970%_)
                             (_%src-phi183978%_ _%src-phi183969%_)
                             (_%rest183979%_ _%marks183971%_))
            (let* ((_%$%rest183980183988%_ _%rest183979%_)
                   (_%$%else183982183996%_
                    (lambda ()
                      (_%resolve183973%_
                       _%ctx183977%_
                       _%src-phi183978%_
                       _%id183967%_)))
                   (_%$%K183984184028%_
                    (lambda (_%rest183999%_ _%hd184000%_)
                      (let* ((_%$%hd184001184007%_ _%hd184000%_)
                             (_%$%E184003184010%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd184001184007%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K184004184020%_
                              (lambda (_%subst184013%_)
                                (let ((_%$e184017%_
                                       (let ((_%key184015%_
                                              (if _%subst184013%_
                                                  (hash-get
                                                   _%subst184013%_
                                                   _%id183967%_)
                                                  '#f)))
                                         (if _%key184015%_
                                             (_%resolve183973%_
                                              _%ctx183977%_
                                              _%src-phi183978%_
                                              _%key184015%_)
                                             '#f))))
                                  (if _%$e184017%_
                                      _%$e184017%_
                                      (_%lp183975%_
                                       (##unchecked-structure-ref
                                        _%hd184000%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd184000%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest183999%_))))))
                        (if (##structure-instance-of?
                             _%$%hd184001184007%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e184005184023%_
                                    (##unchecked-structure-ref
                                     _%$%hd184001184007%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst184026%_ _%$%e184005184023%_))
                              (_%$%K184004184020%_ _%subst184026%_))
                            (_%$%E184003184010%_))))))
              (if (pair? _%$%rest183980183988%_)
                  (let ((_%$%hd183985184031%_ (##car _%$%rest183980183988%_))
                        (_%$%tl183986184033%_ (##cdr _%$%rest183980183988%_)))
                    (let* ((_%hd184036%_ _%$%hd183985184031%_)
                           (_%rest184038%_ _%$%tl183986184033%_))
                      (_%$%K183984184028%_ _%rest184038%_ _%hd184036%_)))
                  (_%$%else183982183996%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key183838%_
               _%val183839%_
               _%rebind?183840%_
               _%phi183841%_
               _%ctx183842%_)
        (letrec ((_%update-binding183844%_
                  (lambda (_%xval183916%_)
                    (if (or (_%rebind?183840%_
                             _%ctx183842%_
                             _%xval183916%_
                             _%val183839%_)
                            (and (##structure-direct-instance-of?
                                  _%xval183916%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval183916%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val183839%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val183839%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval183916%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val183839%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val183839%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval183916%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val183839%_
                        (if (and (##structure-direct-instance-of?
                                  _%val183839%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val183839%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval183916%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val183839%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval183916%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval183916%_
                            (if (and (##structure-direct-instance-of?
                                      _%val183839%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval183916%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key183838%_
                                 (cons (##unchecked-structure-ref
                                        _%val183839%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val183839%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval183916%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval183916%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval183916%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval183916%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key183838%_
                                 _%val183839%_
                                 _%xval183916%_))))))
                 (_%gensubst183845%_
                  (lambda (_%subst183911%_ _%id183912%_)
                    (let ((_%eid183914%_
                           (gensym (if (uninterned-symbol? _%id183912%_)
                                       '%
                                       _%id183912%_))))
                      (hash-put! _%subst183911%_ _%id183912%_ _%eid183914%_)
                      _%eid183914%_)))
                 (_%subst!183846%_
                  (lambda (_%key183848%_)
                    (let* ((_%$%key183849183857%_ _%key183848%_)
                           (_%$%else183851183865%_ (lambda () _%key183848%_))
                           (_%$%K183853183899%_
                            (lambda (_%mark183868%_ _%id183869%_)
                              (let* ((_%$%mark183870183876%_ _%mark183868%_)
                                     (_%$%E183872183879%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark183870183876%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K183873183891%_
                                      (lambda (_%subst183882%_)
                                        (if (not _%subst183882%_)
                                            (let ((_%subst183885%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark183868%_
                                               _%subst183885%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst183845%_
                                               _%subst183885%_
                                               _%id183869%_))
                                            (let ((_%$e183887%_
                                                   (hash-get
                                                    _%subst183882%_
                                                    _%id183869%_)))
                                              (if _%$e183887%_
                                                  _%$e183887%_
                                                  (_%gensubst183845%_
                                                   _%subst183882%_
                                                   _%id183869%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark183870183876%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e183874183894%_
                                            (##unchecked-structure-ref
                                             _%$%mark183870183876%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183897%_
                                            _%$%e183874183894%_))
                                      (_%$%K183873183891%_ _%subst183897%_))
                                    (_%$%E183872183879%_))))))
                      (if (pair? _%$%key183849183857%_)
                          (let ((_%$%hd183854183902%_
                                 (##car _%$%key183849183857%_))
                                (_%$%tl183855183904%_
                                 (##cdr _%$%key183849183857%_)))
                            (let* ((_%id183907%_ _%$%hd183854183902%_)
                                   (_%mark183909%_ _%$%tl183855183904%_))
                              (_%$%K183853183899%_
                               _%mark183909%_
                               _%id183907%_)))
                          (_%$%else183851183865%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key183838%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx183842%_ _%phi183841%_)
           (_%subst!183846%_ _%key183838%_)
           _%val183839%_
           _%update-binding183844%_))))
    (define gx#core-bind!__0
      (lambda (_%key183937%_ _%val183938%_)
        (let* ((_%rebind?183940%_ false)
               (_%phi183942%_ (gx#current-expander-phi))
               (_%ctx183944%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183937%_
           _%val183938%_
           _%rebind?183940%_
           _%phi183942%_
           _%ctx183944%_))))
    (define gx#core-bind!__1
      (lambda (_%key183946%_ _%val183947%_ _%rebind?183948%_)
        (let* ((_%phi183950%_ (gx#current-expander-phi))
               (_%ctx183952%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183946%_
           _%val183947%_
           _%rebind?183948%_
           _%phi183950%_
           _%ctx183952%_))))
    (define gx#core-bind!__2
      (lambda (_%key183954%_ _%val183955%_ _%rebind?183956%_ _%phi183957%_)
        (let ((_%ctx183959%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183954%_
           _%val183955%_
           _%rebind?183956%_
           _%phi183957%_
           _%ctx183959%_))))
    (define gx#core-bind!
      (lambda _g187694_
        (let ((_g187695_ (##length _g187694_)))
          (cond ((##fx= _g187695_ 2) (apply gx#core-bind!__0 _g187694_))
                ((##fx= _g187695_ 3) (apply gx#core-bind!__1 _g187694_))
                ((##fx= _g187695_ 4) (apply gx#core-bind!__2 _g187694_))
                ((##fx= _g187695_ 5) (apply gx#core-bind!__% _g187694_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g187694_))))))
    (define gx#core-identifier-key
      (lambda (_%stx183769%_)
        (if (symbol? _%stx183769%_)
            (let* ((_%$%g183771183779%_ (gx#current-expander-marks))
                   (_%$%else183773183787%_ (lambda () _%stx183769%_))
                   (_%$%K183775183792%_
                    (lambda (_%hd183790%_) (cons _%stx183769%_ _%hd183790%_))))
              (if (pair? _%$%g183771183779%_)
                  (let* ((_%$%hd183776183795%_ (##car _%$%g183771183779%_))
                         (_%hd183798%_ _%$%hd183776183795%_))
                    (_%$%K183775183792%_ _%hd183798%_))
                  (_%$%else183773183787%_)))
            (if (gx#identifier? _%stx183769%_)
                (let* ((_%id183801%_ (gx#syntax-local-unwrap _%stx183769%_))
                       (_%eid183803%_ (gx#stx-e _%id183801%_))
                       (_%marks183805%_
                        (gx#stx-identifier-marks* _%id183801%_))
                       (_%$%marks183807183815%_ _%marks183805%_)
                       (_%$%else183809183823%_ (lambda () _%eid183803%_))
                       (_%$%K183811183828%_
                        (lambda (_%hd183826%_)
                          (cons _%eid183803%_ _%hd183826%_))))
                  (if (pair? _%$%marks183807183815%_)
                      (let* ((_%$%hd183812183831%_
                              (##car _%$%marks183807183815%_))
                             (_%hd183834%_ _%$%hd183812183831%_))
                        (_%$%K183811183828%_ _%hd183834%_))
                      (_%$%else183809183823%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx183769%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx183708%_ _%phi183709%_)
        (letrec ((_%make-phi183711%_
                  (lambda (_%super183767%_)
                    (let ((__obj187665
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj187665
                       (##gensym 'phi)
                       _%super183767%_)
                      __obj187665)))
                 (_%make-phi/up183712%_
                  (lambda (_%ctx183762%_ _%super183763%_)
                    (let ((_%ctx+1183765%_
                           (_%make-phi183711%_ _%super183763%_)))
                      (##unchecked-structure-set!
                       _%ctx183762%_
                       _%ctx+1183765%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1183765%_
                       _%ctx183762%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1183765%_)))
                 (_%make-phi/down183713%_
                  (lambda (_%ctx183757%_ _%super183758%_)
                    (let ((_%ctx-1183760%_
                           (_%make-phi183711%_ _%super183758%_)))
                      (##unchecked-structure-set!
                       _%ctx-1183760%_
                       _%ctx183757%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx183757%_
                       _%ctx-1183760%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1183760%_)))
                 (_%shift183714%_
                  (lambda (_%ctx183740%_
                           _%delta183741%_
                           _%make-delta-context183742%_
                           _%phi183743%_
                           _%K183744%_)
                    (let ((_%$e183746%_
                           (##unchecked-structure-ref
                            _%ctx183740%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e183746%_
                          (let* ((_%super183751%_
                                  (_%K183744%_ _%$e183746%_ _%delta183741%_))
                                 (_%ctx+d183753%_
                                  (_%make-delta-context183742%_
                                   _%ctx183740%_
                                   _%super183751%_)))
                            (_%K183744%_
                             _%ctx+d183753%_
                             (fx- _%phi183743%_ _%delta183741%_)))
                          (error '"Bad context" _%ctx183740%_))))))
          (let _%K183716%_ ((_%ctx183718%_ _%ctx183708%_)
                            (_%phi183719%_ _%phi183709%_))
            (if (fxzero? _%phi183719%_)
                _%ctx183718%_
                (if (##structure-instance-of? _%ctx183718%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi183719%_)
                        (let ((_%$e183723%_
                               (##unchecked-structure-ref
                                _%ctx183718%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e183723%_
                              (_%K183716%_
                               _%$e183723%_
                               (##fx- _%phi183719%_ '1))
                              (_%shift183714%_
                               _%ctx183718%_
                               '1
                               _%make-phi/up183712%_
                               _%phi183719%_
                               _%K183716%_)))
                        (let ((_%$e183731%_
                               (##unchecked-structure-ref
                                _%ctx183718%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e183731%_
                              (_%K183716%_
                               _%$e183731%_
                               (##fx+ _%phi183719%_ '1))
                              (_%shift183714%_
                               _%ctx183718%_
                               '-1
                               _%make-phi/down183713%_
                               _%phi183719%_
                               _%K183716%_))))
                    _%ctx183718%_))))))
    (define gx#core-context-get
      (lambda (_%ctx183705%_ _%key183706%_)
        (hash-get
         (##unchecked-structure-ref _%ctx183705%_ '2 '#f '#f)
         _%key183706%_)))
    (define gx#core-context-put!
      (lambda (_%ctx183701%_ _%key183702%_ _%val183703%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx183701%_ '2 '#f '#f)
         _%key183702%_
         _%val183703%_)
        _%val183703%_))
    (define gx#core-context-resolve
      (lambda (_%ctx183687%_ _%key183688%_)
        (let _%lp183690%_ ((_%ctx183692%_ _%ctx183687%_))
          (let ((_%$e183694%_
                 (gx#core-context-get _%ctx183692%_ _%key183688%_)))
            (if _%$e183694%_
                _%$e183694%_
                (let ((_%$e183697%_
                       (if (##structure-instance-of?
                            _%ctx183692%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx183692%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e183697%_ (_%lp183690%_ _%$e183697%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx183676%_ _%key183677%_ _%val183678%_ _%rebind183679%_)
        (let ((_%$e183681%_ (gx#core-context-get _%ctx183676%_ _%key183677%_)))
          (if _%$e183681%_
              (gx#core-context-put!
               _%ctx183676%_
               _%key183677%_
               (_%rebind183679%_ _%$e183681%_))
              (gx#core-context-put!
               _%ctx183676%_
               _%key183677%_
               _%val183678%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx183651%_ _%stop?183652%_)
        (let _%lp183654%_ ((_%ctx183656%_ _%ctx183651%_))
          (if (_%stop?183652%_ _%ctx183656%_)
              _%ctx183656%_
              (if (##structure-instance-of? _%ctx183656%_ 'gx#phi-context::t)
                  (_%lp183654%_
                   (##unchecked-structure-ref _%ctx183656%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx183665%_ (gx#current-expander-context))
               (_%stop?183667%_ gx#top-context?))
          (gx#core-context-top__% _%ctx183665%_ _%stop?183667%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx183669%_)
        (let ((_%stop?183671%_ gx#top-context?))
          (gx#core-context-top__% _%ctx183669%_ _%stop?183671%_))))
    (define gx#core-context-top
      (lambda _g187696_
        (let ((_g187697_ (##length _g187696_)))
          (cond ((##fx= _g187697_ 0) (apply gx#core-context-top__0 _g187696_))
                ((##fx= _g187697_ 1) (apply gx#core-context-top__1 _g187696_))
                ((##fx= _g187697_ 2) (apply gx#core-context-top__% _g187696_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g187696_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx183636%_)
        (let _%lp183638%_ ((_%ctx183640%_ _%ctx183636%_))
          (if (##structure-instance-of? _%ctx183640%_ 'gx#phi-context::t)
              (_%lp183638%_
               (##unchecked-structure-ref _%ctx183640%_ '3 '#f '#f))
              _%ctx183640%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx183646%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx183646%_))))
    (define gx#core-context-root
      (lambda _g187698_
        (let ((_g187699_ (##length _g187698_)))
          (cond ((##fx= _g187699_ 0) (apply gx#core-context-root__0 _g187698_))
                ((##fx= _g187699_ 1) (apply gx#core-context-root__% _g187698_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g187698_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx183618%_ . _%ignore183619%_)
        (let ((_%$e183621%_ (gx#current-expander-allow-rebind?)))
          (if _%$e183621%_
              _%$e183621%_
              (if (##structure-instance-of? _%ctx183618%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx183618%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx183618%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx183628%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx183628%_))))
    (define gx#core-context-rebind?
      (lambda _g187700_
        (let ((_g187701_ (##length _g187700_)))
          (cond ((##fx= _g187701_ 0)
                 (apply gx#core-context-rebind?__0 _g187700_))
                ((##fx= _g187701_ 1)
                 (apply gx#core-context-rebind?__% _g187700_))
                ((##fx>= _g187701_ 1)
                 (apply gx#core-context-rebind?__% _g187700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g187700_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx183601%_)
        (let ((_%$e183603%_ (gx#core-context-top__1 _%ctx183601%_)))
          (if _%$e183603%_
              (if (##structure-instance-of? _%$e183603%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e183603%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx183613%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx183613%_))))
    (define gx#core-context-namespace
      (lambda _g187702_
        (let ((_g187703_ (##length _g187702_)))
          (cond ((##fx= _g187703_ 0)
                 (apply gx#core-context-namespace__0 _g187702_))
                ((##fx= _g187703_ 1)
                 (apply gx#core-context-namespace__% _g187702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g187702_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind183587%_ _%is?183588%_)
        (if (##structure-direct-instance-of?
             _%bind183587%_
             'gx#syntax-binding::t)
            (_%is?183588%_
             (##unchecked-structure-ref _%bind183587%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind183593%_)
        (let ((_%is?183595%_ gx#expander?))
          (gx#expander-binding?__% _%bind183593%_ _%is?183595%_))))
    (define gx#expander-binding?
      (lambda _g187704_
        (let ((_g187705_ (##length _g187704_)))
          (cond ((##fx= _g187705_ 1) (apply gx#expander-binding?__0 _g187704_))
                ((##fx= _g187705_ 2) (apply gx#expander-binding?__% _g187704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g187704_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind183584%_)
        (gx#expander-binding?__% _%bind183584%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind183582%_)
        (gx#expander-binding?__% _%bind183582%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind183576%_)
        (letrec ((_%direct-special-form?183578%_
                  (lambda (_%obj183580%_)
                    (##structure-direct-instance-of?
                     _%obj183580%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind183576%_
           _%direct-special-form?183578%_))))
    (define gx#special-form-binding?
      (lambda (_%bind183574%_)
        (gx#expander-binding?__% _%bind183574%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind183565%_)
        (letrec ((_%feature?183567%_
                  (lambda (_%e183569%_)
                    (let ((_%$e183571%_
                           (##structure-instance-of?
                            _%e183569%_
                            'gx#feature-expander::t)))
                      (if _%$e183571%_
                          _%$e183571%_
                          (##structure-instance-of?
                           _%e183569%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind183565%_ _%feature?183567%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind183563%_)
        (gx#expander-binding?__% _%bind183563%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id183550%_ _%bound?183551%_)
        (if (gx#identifier? _%id183550%_)
            (_%bound?183551%_ (gx#resolve-identifier__0 _%id183550%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id183556%_)
        (let ((_%bound?183558%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id183556%_ _%bound?183558%_))))
    (define gx#core-bound-identifier?
      (lambda _g187706_
        (let ((_g187707_ (##length _g187706_)))
          (cond ((##fx= _g187707_ 1)
                 (apply gx#core-bound-identifier?__0 _g187706_))
                ((##fx= _g187707_ 2)
                 (apply gx#core-bound-identifier?__% _g187706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g187706_))))))
    (define gx#core-identifier=?
      (lambda (_%x183540%_ _%y183541%_)
        (letrec ((_%y=?183543%_
                  (lambda (_%xid183547%_)
                    ((if (list? _%y183541%_) memq eq?)
                     _%xid183547%_
                     _%y183541%_))))
          (let ((_%bind183545%_ (gx#resolve-identifier__0 _%x183540%_)))
            (if (##structure-instance-of? _%bind183545%_ 'gx#binding::t)
                (_%y=?183543%_
                 (##unchecked-structure-ref _%bind183545%_ '1 '#f '#f))
                (_%y=?183543%_ (gx#stx-e _%x183540%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e183538%_)
        (if (interned-symbol? _%e183538%_)
            (string-index__0 (symbol->string _%e183538%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx183491%_ _%src183492%_ _%ctx183493%_ _%marks183494%_)
        (if (##structure? _%stx183491%_)
            (let ((_%$e183496%_ (gx#sealed-syntax-unwrap _%stx183491%_)))
              (if _%$e183496%_
                  _%$e183496%_
                  (if (gx#identifier? _%stx183491%_)
                      (let ((_%id183500%_
                             (gx#stx-unwrap__% _%stx183491%_ _%marks183494%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id183500%_ '1 '#f '#f)
                         (let ((_%$e183502%_
                                (##unchecked-structure-ref
                                 _%id183500%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e183502%_ _%$e183502%_ _%src183492%_))
                         _%ctx183493%_
                         (##unchecked-structure-ref _%id183500%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx183491%_)
                       (let ((_%$e183506%_ (gx#stx-source _%stx183491%_)))
                         (if _%$e183506%_ _%$e183506%_ _%src183492%_))
                       _%ctx183493%_
                       (reverse _%marks183494%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx183491%_
             _%src183492%_
             _%ctx183493%_
             (reverse _%marks183494%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx183512%_)
        (let* ((_%src183514%_ '#f)
               (_%ctx183516%_ (gx#current-expander-context))
               (_%marks183518%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183512%_
           _%src183514%_
           _%ctx183516%_
           _%marks183518%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx183520%_ _%src183521%_)
        (let* ((_%ctx183523%_ (gx#current-expander-context))
               (_%marks183525%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183520%_
           _%src183521%_
           _%ctx183523%_
           _%marks183525%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx183527%_ _%src183528%_ _%ctx183529%_)
        (let ((_%marks183531%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183527%_
           _%src183528%_
           _%ctx183529%_
           _%marks183531%_))))
    (define gx#core-quote-syntax
      (lambda _g187708_
        (let ((_g187709_ (##length _g187708_)))
          (cond ((##fx= _g187709_ 1) (apply gx#core-quote-syntax__0 _g187708_))
                ((##fx= _g187709_ 2) (apply gx#core-quote-syntax__1 _g187708_))
                ((##fx= _g187709_ 3) (apply gx#core-quote-syntax__2 _g187708_))
                ((##fx= _g187709_ 4) (apply gx#core-quote-syntax__% _g187708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g187708_))))))
    (define gx#core-cons
      (lambda (_%hd183487%_ _%tl183488%_)
        (cons (gx#core-quote-syntax__0 _%hd183487%_) _%tl183488%_)))
    (define gx#core-list
      (lambda (_%hd183484%_ . _%rest183485%_)
        (cons (gx#core-quote-syntax__0 _%hd183484%_) _%rest183485%_)))
    (define gx#core-cons*
      (lambda (_%hd183481%_ . _%rest183482%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd183481%_) _%rest183482%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path183450%_ _%rel183451%_)
        (let ((_%path183468%_ (gx#stx-e _%stx-path183450%_))
              (_%reldir183469%_
               (let _%lp183453%_ ((_%relsrc183455%_
                                   (let ((_%$e183465%_
                                          (gx#stx-source _%stx-path183450%_)))
                                     (if _%$e183465%_
                                         _%$e183465%_
                                         _%rel183451%_))))
                 (if (##structure-instance-of? _%relsrc183455%_ 'gerbil#AST::t)
                     (_%lp183453%_
                      (let ((_%$e183458%_ (gx#stx-source _%relsrc183455%_)))
                        (if _%$e183458%_
                            _%$e183458%_
                            (gx#stx-e _%relsrc183455%_))))
                     (if (source-location-path? _%relsrc183455%_)
                         (path-directory
                          (source-location-path _%relsrc183455%_))
                         (if (string? _%relsrc183455%_)
                             (path-directory _%relsrc183455%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path183468%_ (path-normalize _%reldir183469%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path183474%_)
        (let ((_%rel183476%_ '#f))
          (gx#core-resolve-path__% _%stx-path183474%_ _%rel183476%_))))
    (define gx#core-resolve-path
      (lambda _g187710_
        (let ((_g187711_ (##length _g187710_)))
          (cond ((##fx= _g187711_ 1) (apply gx#core-resolve-path__0 _g187710_))
                ((##fx= _g187711_ 2) (apply gx#core-resolve-path__% _g187710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g187710_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr183406%_ _%ctx183407%_)
        (let* ((_%$%repr183408183415%_ _%repr183406%_)
               (_%$%E183410183419%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr183408183415%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K183411183427%_
                (lambda (_%subs183422%_ _%phi183423%_)
                  (let ((_%subst183425%_
                         (if (null? _%subs183422%_)
                             '#f
                             (list->hash-table-eq _%subs183422%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst183425%_
                     _%ctx183407%_
                     _%phi183423%_
                     '#f)))))
          (if (pair? _%$%repr183408183415%_)
              (let ((_%$%hd183412183430%_ (##car _%$%repr183408183415%_))
                    (_%$%tl183413183432%_ (##cdr _%$%repr183408183415%_)))
                (let* ((_%phi183435%_ _%$%hd183412183430%_)
                       (_%subs183437%_ _%$%tl183413183432%_))
                  (_%$%K183411183427%_ _%subs183437%_ _%phi183435%_)))
              (_%$%E183410183419%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr183442%_)
        (let ((_%ctx183444%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr183442%_ _%ctx183444%_))))
    (define gx#core-deserialize-mark
      (lambda _g187712_
        (let ((_g187713_ (##length _g187712_)))
          (cond ((##fx= _g187713_ 1)
                 (apply gx#core-deserialize-mark__0 _g187712_))
                ((##fx= _g187713_ 2)
                 (apply gx#core-deserialize-mark__% _g187712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g187712_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx183403%_)
        (gx#stx-rewrap _%stx183403%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx183401%_)
        (gx#stx-unwrap__% _%stx183401%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx183371%_)
        (let* ((_%$%g183372183380%_ (gx#current-expander-marks))
               (_%$%else183374183388%_ (lambda () _%stx183371%_))
               (_%$%K183376183393%_
                (lambda (_%hd183391%_)
                  (gx#stx-apply-mark _%stx183371%_ _%hd183391%_))))
          (if (pair? _%$%g183372183380%_)
              (let* ((_%$%hd183377183396%_ (##car _%$%g183372183380%_))
                     (_%hd183399%_ _%$%hd183377183396%_))
                (_%$%K183376183393%_ _%hd183399%_))
              (_%$%else183374183388%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym183369%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym183369%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx183354%_ _%E183355%_)
        (let ((_%bind183357%_ (gx#resolve-identifier__0 _%stx183354%_)))
          (if (##structure-direct-instance-of?
               _%bind183357%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind183357%_ '5 '#f '#f)
              (_%E183355%_ _%stx183354%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx183362%_)
        (let ((_%E183364%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx183362%_ _%E183364%_))))
    (define gx#syntax-local-e
      (lambda _g187714_
        (let ((_g187715_ (##length _g187714_)))
          (cond ((##fx= _g187715_ 1) (apply gx#syntax-local-e__0 _g187714_))
                ((##fx= _g187715_ 2) (apply gx#syntax-local-e__% _g187714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g187714_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx183338%_ _%E183339%_)
        (let ((_%e183341%_ (gx#syntax-local-e__% _%stx183338%_ _%E183339%_)))
          (if (##structure-instance-of? _%e183341%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e183341%_ '1 '#f '#f)
              _%e183341%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx183346%_)
        (let ((_%E183348%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx183346%_ _%E183348%_))))
    (define gx#syntax-local-value
      (lambda _g187716_
        (let ((_g187717_ (##length _g187716_)))
          (cond ((##fx= _g187717_ 1)
                 (apply gx#syntax-local-value__0 _g187716_))
                ((##fx= _g187717_ 2)
                 (apply gx#syntax-local-value__% _g187716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g187716_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx183335%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx183335%_)))))
