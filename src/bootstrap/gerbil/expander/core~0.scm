(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1784461443)
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
      (lambda _%$args187403%_
        (apply make-instance gx#expander-context::t _%$args187403%_)))
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
      (lambda _%$args187400%_
        (apply make-instance gx#root-context::t _%$args187400%_)))
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
      (lambda _%$args187397%_
        (apply make-instance gx#phi-context::t _%$args187397%_)))
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
      (lambda _%$args187394%_
        (apply make-instance gx#top-context::t _%$args187394%_)))
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
      (lambda _%$args187391%_
        (apply make-instance gx#module-context::t _%$args187391%_)))
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
      (lambda _%$args187388%_
        (apply make-instance gx#prelude-context::t _%$args187388%_)))
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
      (lambda _%$args187385%_
        (apply make-instance gx#local-context::t _%$args187385%_)))
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
      (lambda (_%self187358%_ _%id187359%_ _%super187360%_)
        (let ((_%self187363%_ _%self187358%_))
          (if (##fx< '3 (##structure-length _%self187363%_))
              (begin
                (##unchecked-structure-set!
                 _%self187363%_
                 _%id187359%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187363%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187363%_
                 _%super187360%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187363%_
                     '3
                     (##structure-length _%self187363%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self187376%_ _%id187377%_)
        (let ((_%super187379%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self187376%_
           _%id187377%_
           _%super187379%_))))
    (define gx#phi-context:::init!
      (lambda _g187445_
        (let ((_g187446_ (##length _g187445_)))
          (cond ((##fx= _g187446_ 2)
                 (apply gx#phi-context:::init!__0 _g187445_))
                ((##fx= _g187446_ 3)
                 (apply gx#phi-context:::init!__% _g187445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g187445_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self187211%_ _%super187212%_)
        (let ((_%self187215%_ _%self187211%_))
          (if (##fx< '3 (##structure-length _%self187215%_))
              (begin
                (##unchecked-structure-set!
                 _%self187215%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187215%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self187215%_
                 _%super187212%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self187215%_
                     '3
                     (##structure-length _%self187215%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self187228%_)
        (let ((_%super187230%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self187228%_ _%super187230%_))))
    (define gx#local-context:::init!
      (lambda _g187447_
        (let ((_g187448_ (##length _g187447_)))
          (cond ((##fx= _g187448_ 1)
                 (apply gx#local-context:::init!__0 _g187447_))
                ((##fx= _g187448_ 2)
                 (apply gx#local-context:::init!__% _g187447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g187447_))))))
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
      (lambda _%$args187085%_
        (apply make-instance gx#binding::t _%$args187085%_)))
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
      (lambda (_%self187068%_ _%id187069%_ _%key187070%_ _%phi187071%_)
        (let ((_%self187074%_ _%self187068%_))
          (##unchecked-structure-set! _%self187074%_ _%id187069%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self187074%_ _%key187070%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self187074%_
           _%phi187071%_
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
      (lambda _%$args186943%_
        (apply make-instance gx#runtime-binding::t _%$args186943%_)))
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
      (lambda _%$args186940%_
        (apply make-instance gx#local-binding::t _%$args186940%_)))
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
      (lambda _%$args186937%_
        (apply make-instance gx#top-binding::t _%$args186937%_)))
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
      (lambda _%$args186934%_
        (apply make-instance gx#module-binding::t _%$args186934%_)))
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
      (lambda _%$args186931%_
        (apply make-instance gx#extern-binding::t _%$args186931%_)))
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
      (lambda (_%self186547%_
               _%id186548%_
               _%key186549%_
               _%phi186550%_
               _%ctx186551%_)
        (let ((_%self186554%_ _%self186547%_))
          (gx#binding:::init!
           _%self186554%_
           _%id186548%_
           _%key186549%_
           _%phi186550%_)
          (##unchecked-structure-set!
           _%self186554%_
           _%ctx186551%_
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
      (lambda _%$args186300%_
        (apply make-instance gx#syntax-binding::t _%$args186300%_)))
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
      (lambda _%$args186297%_
        (apply make-instance gx#import-binding::t _%$args186297%_)))
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
      (lambda _%$args186294%_
        (apply make-instance gx#alias-binding::t _%$args186294%_)))
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
      (lambda (_%self186276%_
               _%id186277%_
               _%key186278%_
               _%phi186279%_
               _%e186280%_)
        (let ((_%self186283%_ _%self186276%_))
          (gx#binding:::init!
           _%self186283%_
           _%id186277%_
           _%key186278%_
           _%phi186279%_)
          (##unchecked-structure-set! _%self186283%_ _%e186280%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self186134%_
               _%id186135%_
               _%key186136%_
               _%phi186137%_
               _%e186138%_
               _%ctx186139%_
               _%weak?186140%_)
        (let ((_%self186143%_ _%self186134%_))
          (gx#binding:::init!
           _%self186143%_
           _%id186135%_
           _%key186136%_
           _%phi186137%_)
          (##unchecked-structure-set! _%self186143%_ _%e186138%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self186143%_ _%ctx186139%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self186143%_
           _%weak?186140%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self185994%_
               _%id185995%_
               _%key185996%_
               _%phi185997%_
               _%e185998%_)
        (let ((_%self186001%_ _%self185994%_))
          (gx#binding:::init!
           _%self186001%_
           _%id185995%_
           _%key185996%_
           _%phi185997%_)
          (##unchecked-structure-set! _%self186001%_ _%e185998%_ '5 '#f '#f))))
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
      (lambda _%$args185869%_
        (apply make-instance gx#expander::t _%$args185869%_)))
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
      (lambda _%$args185866%_
        (apply make-instance gx#core-expander::t _%$args185866%_)))
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
      (lambda _%$args185863%_
        (apply make-instance gx#expression-form::t _%$args185863%_)))
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
      (lambda _%$args185860%_
        (apply make-instance gx#special-form::t _%$args185860%_)))
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
      (lambda _%$args185857%_
        (apply make-instance gx#definition-form::t _%$args185857%_)))
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
      (lambda _%$args185854%_
        (apply make-instance gx#top-special-form::t _%$args185854%_)))
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
      (lambda _%$args185851%_
        (apply make-instance gx#module-special-form::t _%$args185851%_)))
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
      (lambda _%$args185848%_
        (apply make-instance gx#feature-expander::t _%$args185848%_)))
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
      (lambda _%$args185845%_
        (apply make-instance gx#private-feature-expander::t _%$args185845%_)))
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
      (lambda _%$args185842%_
        (apply make-instance gx#reserved-expander::t _%$args185842%_)))
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
      (lambda _%$args185839%_
        (apply make-instance gx#macro-expander::t _%$args185839%_)))
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
      (lambda _%$args185836%_
        (apply make-instance gx#rename-macro-expander::t _%$args185836%_)))
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
      (lambda _%$args185833%_
        (apply make-instance gx#user-expander::t _%$args185833%_)))
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
      (lambda _%$args185830%_
        (apply make-instance gx#expander-mark::t _%$args185830%_)))
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
      (lambda (_%ctx185814%_
               _%message185815%_
               _%stx185816%_
               .
               _%details185817%_)
        (let ((_%ctx185828%_
               (let ((_%$e185819%_ _%ctx185814%_))
                 (if _%$e185819%_
                     _%$e185819%_
                     (let ((_%$e185822%_ (gx#core-context-top__0)))
                       (if _%$e185822%_
                           (list 'expand
                                 (##structure-ref
                                  _%$e185822%_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                           '#f))))))
          (raise (make-syntax-error
                  _%message185815%_
                  (cons _%stx185816%_ _%details185817%_)
                  _%ctx185828%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx185801%_ _%expression?185802%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx185801%_ _%expression?185802%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx185807%_)
        (let ((_%expression?185809%_ '#f))
          (gx#eval-syntax__% _%stx185807%_ _%expression?185809%_))))
    (define gx#eval-syntax
      (lambda _g187449_
        (let ((_g187450_ (##length _g187449_)))
          (cond ((##fx= _g187450_ 1) (apply gx#eval-syntax__0 _g187449_))
                ((##fx= _g187450_ 2) (apply gx#eval-syntax__% _g187449_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g187449_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx185786%_ _%expression?185787%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx185786%_ _%expression?185787%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx185793%_)
        (let ((_%expression?185795%_ '#f))
          (gx#eval-syntax+1__% _%stx185793%_ _%expression?185795%_))))
    (define gx#eval-syntax+1
      (lambda _g187451_
        (let ((_g187452_ (##length _g187451_)))
          (cond ((##fx= _g187452_ 1) (apply gx#eval-syntax+1__0 _g187451_))
                ((##fx= _g187452_ 2) (apply gx#eval-syntax+1__% _g187451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g187451_))))))
    (define gx#eval-expression+1
      (lambda (_%stx185783%_) (gx#eval-syntax+1__% _%stx185783%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx185781%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx185781%_))))
    (define gx#core-expand__%
      (lambda (_%stx185768%_ _%expression?185769%_)
        (if _%expression?185769%_
            (gx#core-expand-expression _%stx185768%_)
            (gx#core-expand-top _%stx185768%_))))
    (define gx#core-expand__0
      (lambda (_%stx185774%_)
        (let ((_%expression?185776%_ '#f))
          (gx#core-expand__% _%stx185774%_ _%expression?185776%_))))
    (define gx#core-expand
      (lambda _g187453_
        (let ((_g187454_ (##length _g187453_)))
          (cond ((##fx= _g187454_ 1) (apply gx#core-expand__0 _g187453_))
                ((##fx= _g187454_ 2) (apply gx#core-expand__% _g187453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g187453_))))))
    (define gx#core-expand-top
      (lambda (_%stx185735%_)
        (let* ((_%stx185737%_ (gx#core-expand*__0 _%stx185735%_))
               (_%$%e185738185745%_ _%stx185737%_)
               (_%$%E185740185749%_
                (lambda () (gx#core-expand-expression _%stx185737%_)))
               (_%$%E185739185763%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185738185745%_)
                      (let ((_%$%e185741185753%_
                             (gx#syntax-e _%$%e185738185745%_)))
                        (let ((_%$%hd185742185756%_
                               (##car _%$%e185741185753%_))
                              (_%$%tl185743185758%_
                               (##cdr _%$%e185741185753%_)))
                          (let ((_%form185761%_ _%$%hd185742185756%_))
                            (if (gx#core-bound-identifier?__0 _%form185761%_)
                                _%stx185737%_
                                (_%$%E185740185749%_)))))
                      (_%$%E185740185749%_)))))
          (_%$%E185739185763%_))))
    (define gx#core-expand-expression
      (lambda (_%stx185667%_)
        (letrec ((_%sealed-expression?185669%_
                  (lambda (_%hd185705%_)
                    (if (gx#sealed-syntax? _%hd185705%_)
                        (let* ((_%$%e185706185713%_ _%hd185705%_)
                               (_%$%E185708185717%_ (lambda () '#f))
                               (_%$%E185707185731%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e185706185713%_)
                                      (let ((_%$%e185709185721%_
                                             (gx#syntax-e
                                              _%$%e185706185713%_)))
                                        (let ((_%$%hd185710185724%_
                                               (##car _%$%e185709185721%_))
                                              (_%$%tl185711185726%_
                                               (##cdr _%$%e185709185721%_)))
                                          (let ((_%form185729%_
                                                 _%$%hd185710185724%_))
                                            (gx#core-bound-identifier?__%
                                             _%form185729%_
                                             gx#expression-form-binding?))))
                                      (_%$%E185708185717%_)))))
                          (_%$%E185707185731%_))
                        '#f)))
                 (_%illegal-expression185670%_
                  (lambda (_%hd185702%_ . _%_185703%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx185667%_
                     _%hd185702%_)))
                 (_%expand-e185671%_
                  (lambda (_%form185694%_ _%hd185695%_)
                    (let ((_%bind185697%_
                           (if (##structure-instance-of?
                                _%form185694%_
                                'gx#binding::t)
                               _%form185694%_
                               (gx#resolve-identifier__0 _%form185694%_))))
                      (if (gx#core-expander-binding? _%bind185697%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind185697%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd185695%_
                            (gx#stx-source _%stx185667%_)))
                          (if (##structure-direct-instance-of?
                               _%bind185697%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind185697%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd185695%_
                                 (gx#stx-source _%stx185667%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx185667%_
                               _%form185694%_)))))))
          (let ((_%hd185673%_ (gx#core-expand-head _%stx185667%_)))
            (if (_%sealed-expression?185669%_ _%hd185673%_)
                _%hd185673%_
                (if (gx#stx-pair? _%hd185673%_)
                    (let* ((_%form185677%_ (gx#stx-car _%hd185673%_))
                           (_%bind185679%_
                            (if (gx#identifier? _%form185677%_)
                                (gx#resolve-identifier__0 _%form185677%_)
                                '#f)))
                      (if (or (not _%bind185679%_)
                              (not (gx#core-expander-binding? _%bind185679%_)))
                          (_%expand-e185671%_
                           '%%app
                           (cons '%%app _%hd185673%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind185679%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd185673%_
                               _%illegal-expression185670%_)
                              (if (gx#expression-form-binding? _%bind185679%_)
                                  (_%expand-e185671%_
                                   _%bind185679%_
                                   _%hd185673%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind185679%_)
                                      (gx#core-expand-expression
                                       (_%expand-e185671%_
                                        _%bind185679%_
                                        _%hd185673%_))
                                      (_%illegal-expression185670%_
                                       _%hd185673%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd185673%_)
                        (_%illegal-expression185670%_ _%hd185673%_)
                        (if (gx#identifier? _%hd185673%_)
                            (_%expand-e185671%_
                             '%%ref
                             (cons '%%ref (cons _%hd185673%_ '())))
                            (if (gx#stx-datum? _%hd185673%_)
                                (_%expand-e185671%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd185673%_ '())))
                                (_%illegal-expression185670%_
                                 _%hd185673%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx185662%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx185665%_ (gx#core-expand-expression _%stx185662%_)))
             (values _%stx185665%_ (gx#eval-syntax* _%stx185665%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx185643%_ _%stop?185644%_)
        (let _%lp185646%_ ((_%stx185648%_ _%stx185643%_))
          (if (_%stop?185644%_ _%stx185648%_)
              _%stx185648%_
              (let ((_%rstx185650%_ (gx#core-expand1 _%stx185648%_)))
                (if (eq? _%stx185648%_ _%rstx185650%_)
                    _%stx185648%_
                    (_%lp185646%_ _%rstx185650%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx185655%_)
        (let ((_%stop?185657%_ false))
          (gx#core-expand*__% _%stx185655%_ _%stop?185657%_))))
    (define gx#core-expand*
      (lambda _g187455_
        (let ((_g187456_ (##length _g187455_)))
          (cond ((##fx= _g187456_ 1) (apply gx#core-expand*__0 _g187455_))
                ((##fx= _g187456_ 2) (apply gx#core-expand*__% _g187455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g187455_))))))
    (define gx#core-expand1
      (lambda (_%stx185595%_)
        (letrec ((_%step185597%_
                  (lambda (_%hd185634%_)
                    (let ((_%bind185636%_
                           (gx#resolve-identifier__0 _%hd185634%_)))
                      (if (##structure-instance-of?
                           _%bind185636%_
                           'gx#runtime-binding::t)
                          _%stx185595%_
                          (if (##structure-direct-instance-of?
                               _%bind185636%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind185636%_
                                '5
                                '#f
                                '#f)
                               _%stx185595%_)
                              (if (not _%bind185636%_)
                                  _%stx185595%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx185595%_))))))))
          (let* ((_%$%e185598185606%_ _%stx185595%_)
                 (_%$%E185604185610%_ (lambda () _%stx185595%_))
                 (_%$%E185600185616%_
                  (lambda ()
                    (let ((_%hd185614%_ _%$%e185598185606%_))
                      (if (gx#identifier? _%hd185614%_)
                          (_%step185597%_ _%hd185614%_)
                          (_%$%E185604185610%_)))))
                 (_%$%E185599185630%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185598185606%_)
                        (let ((_%$%e185601185620%_
                               (gx#syntax-e _%$%e185598185606%_)))
                          (let ((_%$%hd185602185623%_
                                 (##car _%$%e185601185620%_))
                                (_%$%tl185603185625%_
                                 (##cdr _%$%e185601185620%_)))
                            (let ((_%hd185628%_ _%$%hd185602185623%_))
                              (if (gx#identifier? _%hd185628%_)
                                  (_%step185597%_ _%hd185628%_)
                                  (_%$%E185600185616%_)))))
                        (_%$%E185600185616%_)))))
            (_%$%E185599185630%_)))))
    (define gx#core-expand-head
      (lambda (_%stx185561%_)
        (letrec ((_%stop?185563%_
                  (lambda (_%stx185565%_)
                    (let* ((_%$%e185566185573%_ _%stx185565%_)
                           (_%$%E185568185577%_ (lambda () '#f))
                           (_%$%E185567185591%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185566185573%_)
                                  (let ((_%$%e185569185581%_
                                         (gx#syntax-e _%$%e185566185573%_)))
                                    (let ((_%$%hd185570185584%_
                                           (##car _%$%e185569185581%_))
                                          (_%$%tl185571185586%_
                                           (##cdr _%$%e185569185581%_)))
                                      (let ((_%hd185589%_
                                             _%$%hd185570185584%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd185589%_))))
                                  (_%$%E185568185577%_)))))
                      (_%$%E185567185591%_)))))
          (gx#core-expand*__% _%stx185561%_ _%stop?185563%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx185367%_
               _%expand-special185368%_
               _%begin-form185369%_
               _%expand-e185370%_)
        (letrec ((_%expand-splice185372%_
                  (lambda (_%hd185535%_
                           _%body185536%_
                           _%rest185537%_
                           _%r185538%_)
                    (if (gx#stx-list? _%body185536%_)
                        (_%K185376%_
                         (gx#stx-foldr cons _%rest185537%_ _%body185536%_)
                         _%r185538%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx185367%_
                         _%hd185535%_))))
                 (_%expand-cond-expand185373%_
                  (lambda (_%hd185531%_ _%rest185532%_ _%r185533%_)
                    (_%K185376%_
                     (cons (gx#core-expand-cond-expand% _%hd185531%_)
                           _%rest185532%_)
                     _%r185533%_)))
                 (_%expand-include185374%_
                  (lambda (_%hd185480%_ _%rest185481%_ _%r185482%_)
                    (let* ((_%$%e185483185493%_ _%hd185480%_)
                           (_%$%E185485185497%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185483185493%_)))
                           (_%$%E185484185527%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185483185493%_)
                                  (let ((_%$%e185486185501%_
                                         (gx#syntax-e _%$%e185483185493%_)))
                                    (let ((_%$%hd185487185504%_
                                           (##car _%$%e185486185501%_))
                                          (_%$%tl185488185506%_
                                           (##cdr _%$%e185486185501%_)))
                                      (if (gx#stx-pair? _%$%tl185488185506%_)
                                          (let ((_%$%e185489185509%_
                                                 (gx#syntax-e
                                                  _%$%tl185488185506%_)))
                                            (let ((_%$%hd185490185512%_
                                                   (##car _%$%e185489185509%_))
                                                  (_%$%tl185491185514%_
                                                   (##cdr _%$%e185489185509%_)))
                                              (let ((_%path185517%_
                                                     _%$%hd185490185512%_))
                                                (if (gx#stx-null?
                                                     _%$%tl185491185514%_)
                                                    (if (gx#stx-string?
                                                         _%path185517%_)
                                                        (let* ((_%rpath185519%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path185517%_
                         (gx#stx-source _%hd185480%_)))
                       (_%block185521%_
                        (gx#core-expand-include%__%
                         _%hd185480%_
                         _%rpath185519%_))
                       (_%rbody185524%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block185521%_
                            _%expand-special185368%_
                            '#f
                            _%expand-e185370%_))
                         gx#current-expander-path
                         (cons _%rpath185519%_ (gx#current-expander-path)))))
                  (_%K185376%_
                   _%rest185481%_
                   (append _%rbody185524%_ _%r185482%_)))
                (_%$%E185485185497%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185485185497%_)))))
                                          (_%$%E185485185497%_))))
                                  (_%$%E185485185497%_)))))
                      (_%$%E185484185527%_))))
                 (_%expand-expression185375%_
                  (lambda (_%hd185476%_ _%rest185477%_ _%r185478%_)
                    (_%K185376%_
                     _%rest185477%_
                     (cons (_%expand-e185370%_ _%hd185476%_) _%r185478%_))))
                 (_%K185376%_
                  (lambda (_%rest185406%_ _%r185407%_)
                    (let* ((_%$%e185408185415%_ _%rest185406%_)
                           (_%$%E185410185419%_
                            (lambda ()
                              (if _%begin-form185369%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form185369%_
                                    (reverse _%r185407%_))
                                   (gx#stx-source _%stx185367%_))
                                  _%r185407%_)))
                           (_%$%E185409185472%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185408185415%_)
                                  (let ((_%$%e185411185423%_
                                         (gx#syntax-e _%$%e185408185415%_)))
                                    (let ((_%$%hd185412185426%_
                                           (##car _%$%e185411185423%_))
                                          (_%$%tl185413185428%_
                                           (##cdr _%$%e185411185423%_)))
                                      (let* ((_%hd185431%_
                                              _%$%hd185412185426%_)
                                             (_%rest185433%_
                                              _%$%tl185413185428%_)
                                             (_%hd185435%_
                                              (gx#core-expand-head
                                               _%hd185431%_))
                                             (_%$%e185436185443%_ _%hd185435%_)
                                             (_%$%E185438185447%_
                                              (lambda ()
                                                (_%expand-expression185375%_
                                                 _%hd185435%_
                                                 _%rest185433%_
                                                 _%r185407%_)))
                                             (_%$%E185437185468%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e185436185443%_)
                                                    (let ((_%$%e185439185451%_
                                                           (gx#syntax-e
                                                            _%$%e185436185443%_)))
                                                      (let ((_%$%hd185440185454%_
                                                             (##car _%$%e185439185451%_))
                                                            (_%$%tl185441185456%_
                                                             (##cdr _%$%e185439185451%_)))
                                                        (let* ((_%form185459%_
                                                                _%$%hd185440185454%_)
                                                               (_%body185461%_
                                                                _%$%tl185441185456%_)
                                                               (_%bind185463%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form185459%_)
                            (gx#resolve-identifier__0 _%form185459%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind185463%_)
                      (let ((_%$e185465%_
                             (##unchecked-structure-ref
                              _%bind185463%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e185465%_)
                            (_%expand-splice185372%_
                             _%hd185435%_
                             _%body185461%_
                             _%rest185433%_
                             _%r185407%_)
                            (if (eq? '%#cond-expand _%$e185465%_)
                                (_%expand-cond-expand185373%_
                                 _%hd185435%_
                                 _%rest185433%_
                                 _%r185407%_)
                                (if (eq? '%#include _%$e185465%_)
                                    (_%expand-include185374%_
                                     _%hd185435%_
                                     _%rest185433%_
                                     _%r185407%_)
                                    (_%expand-special185368%_
                                     _%hd185435%_
                                     _%K185376%_
                                     _%rest185433%_
                                     _%r185407%_)))))
                      (_%expand-expression185375%_
                       _%hd185435%_
                       _%rest185433%_
                       _%r185407%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185438185447%_)))))
                                        (_%$%E185437185468%_))))
                                  (_%$%E185410185419%_)))))
                      (_%$%E185409185472%_)))))
          (let* ((_%$%e185377185384%_ _%stx185367%_)
                 (_%$%E185379185388%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185377185384%_)))
                 (_%$%E185378185402%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185377185384%_)
                        (let ((_%$%e185380185392%_
                               (gx#syntax-e _%$%e185377185384%_)))
                          (let ((_%$%hd185381185395%_
                                 (##car _%$%e185380185392%_))
                                (_%$%tl185382185397%_
                                 (##cdr _%$%e185380185392%_)))
                            (let ((_%body185400%_ _%$%tl185382185397%_))
                              (if (gx#stx-list? _%body185400%_)
                                  (_%K185376%_ _%body185400%_ '())
                                  (_%$%E185379185388%_)))))
                        (_%$%E185379185388%_)))))
            (_%$%E185378185402%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx185543%_ _%expand-special185544%_)
        (let* ((_%begin-form185546%_ '%#begin)
               (_%expand-e185548%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185543%_
           _%expand-special185544%_
           _%begin-form185546%_
           _%expand-e185548%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx185550%_ _%expand-special185551%_ _%begin-form185552%_)
        (let ((_%expand-e185554%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx185550%_
           _%expand-special185551%_
           _%begin-form185552%_
           _%expand-e185554%_))))
    (define gx#core-expand-block
      (lambda _g187457_
        (let ((_g187458_ (##length _g187457_)))
          (cond ((##fx= _g187458_ 2) (apply gx#core-expand-block__0 _g187457_))
                ((##fx= _g187458_ 3) (apply gx#core-expand-block__1 _g187457_))
                ((##fx= _g187458_ 4) (apply gx#core-expand-block__% _g187457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g187457_))))))
    (define gx#core-expand-block*
      (lambda (_%stx185315%_ _%expand-special185316%_)
        (let* ((_%$%g185317185328%_
                (gx#core-expand-block__1
                 _%stx185315%_
                 _%expand-special185316%_
                 '#f))
               (_%$%E185321185332%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g185317185328%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K185326185363%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx185315%_)))
                (_%$%K185323185349%_ (lambda (_%expr185347%_) _%expr185347%_))
                (_%$%K185322185338%_
                 (lambda (_%body185336%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body185336%_))
                    (gx#stx-source _%stx185315%_)))))
            (let ((_%$%try-match185319185359%_
                   (lambda ()
                     (if (pair? _%$%g185317185328%_)
                         (let ((_%$%tl185325185354%_
                                (##cdr _%$%g185317185328%_))
                               (_%$%hd185324185352%_
                                (##car _%$%g185317185328%_)))
                           (if (null? _%$%tl185325185354%_)
                               (let ((_%expr185357%_ _%$%hd185324185352%_))
                                 (_%$%K185323185349%_ _%expr185357%_))
                               (let ((_%body185341%_ _%$%g185317185328%_))
                                 (_%$%K185322185338%_ _%body185341%_))))
                         (let ((_%body185341%_ _%$%g185317185328%_))
                           (_%$%K185322185338%_ _%body185341%_))))))
              (if (null? _%$%g185317185328%_)
                  (_%$%K185326185363%_)
                  (_%$%try-match185319185359%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx185141%_)
        (letrec ((_%satisfied?185143%_
                  (lambda (_%condition185244%_)
                    (let* ((_%$%e185245185260%_ _%condition185244%_)
                           (_%$%E185255185264%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185245185260%_)))
                           (_%$%E185248185283%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185245185260%_)
                                  (let ((_%$%e185256185268%_
                                         (gx#syntax-e _%$%e185245185260%_)))
                                    (let ((_%$%hd185257185271%_
                                           (##car _%$%e185256185268%_))
                                          (_%$%tl185258185273%_
                                           (##cdr _%$%e185256185268%_)))
                                      (let* ((_%combinator185276%_
                                              _%$%hd185257185271%_)
                                             (_%body185278%_
                                              _%$%tl185258185273%_))
                                        (if (gx#stx-list? _%body185278%_)
                                            (let ((_%$e185280%_
                                                   (gx#stx-e
                                                    _%combinator185276%_)))
                                              (if (eq? 'not _%$e185280%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?185143%_
                                                        _%body185278%_))
                                                  (if (eq? 'and _%$e185280%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?185143%_
                                                       _%body185278%_)
                                                      (if (eq? 'or
                                                               _%$e185280%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?185143%_
                                                           _%body185278%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e185280%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body185278%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx185141%_
                       _%combinator185276%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E185255185264%_)))))
                                  (_%$%E185255185264%_))))
                           (_%$%E185247185305%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185245185260%_)
                                  (let ((_%$%e185249185287%_
                                         (gx#syntax-e _%$%e185245185260%_)))
                                    (let ((_%$%hd185250185290%_
                                           (##car _%$%e185249185287%_))
                                          (_%$%tl185251185292%_
                                           (##cdr _%$%e185249185287%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd185250185290%_)
                                               (gx#core-identifier=?
                                                _%$%hd185250185290%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl185251185292%_)
                                              (let ((_%$%e185252185295%_
                                                     (gx#syntax-e
                                                      _%$%tl185251185292%_)))
                                                (let ((_%$%hd185253185298%_
                                                       (##car _%$%e185252185295%_))
                                                      (_%$%tl185254185300%_
                                                       (##cdr _%$%e185252185295%_)))
                                                  (let ((_%expr185303%_
                                                         _%$%hd185253185298%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl185254185300%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr185303%_)
                                                        (_%$%E185248185283%_)))))
                                              (_%$%E185248185283%_))
                                          (_%$%E185248185283%_))))
                                  (_%$%E185248185283%_))))
                           (_%$%E185246185311%_
                            (lambda ()
                              (let ((_%id185309%_ _%$%e185245185260%_))
                                (if (gx#identifier? _%id185309%_)
                                    (gx#core-bound-identifier?__%
                                     _%id185309%_
                                     gx#feature-binding?)
                                    (_%$%E185247185305%_))))))
                      (_%$%E185246185311%_))))
                 (_%loop185144%_
                  (lambda (_%rest185174%_)
                    (let* ((_%$%e185175185183%_ _%rest185174%_)
                           (_%$%E185181185187%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e185175185183%_)))
                           (_%$%E185177185191%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e185175185183%_)
                                  '()
                                  (_%$%E185181185187%_))))
                           (_%$%E185176185240%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e185175185183%_)
                                  (let ((_%$%e185178185195%_
                                         (gx#syntax-e _%$%e185175185183%_)))
                                    (let ((_%$%hd185179185198%_
                                           (##car _%$%e185178185195%_))
                                          (_%$%tl185180185200%_
                                           (##cdr _%$%e185178185195%_)))
                                      (let* ((_%hd185203%_
                                              _%$%hd185179185198%_)
                                             (_%rest185205%_
                                              _%$%tl185180185200%_)
                                             (_%$%e185206185213%_ _%hd185203%_)
                                             (_%$%E185208185217%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e185206185213%_)))
                                             (_%$%E185207185236%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e185206185213%_)
                                                    (let ((_%$%e185209185221%_
                                                           (gx#syntax-e
                                                            _%$%e185206185213%_)))
                                                      (let ((_%$%hd185210185224%_
                                                             (##car _%$%e185209185221%_))
                                                            (_%$%tl185211185226%_
                                                             (##cdr _%$%e185209185221%_)))
                                                        (let* ((_%condition185229%_
                                                                _%$%hd185210185224%_)
                                                               (_%body185231%_
                                                                _%$%tl185211185226%_))
                                                          (if (gx#stx-eq?
                                                               _%condition185229%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest185205%_)
                          _%body185231%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx185141%_
                           _%hd185203%_))
                      (if (_%satisfied?185143%_ _%condition185229%_)
                          _%body185231%_
                          (_%loop185144%_ _%rest185205%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E185208185217%_)))))
                                        (_%$%E185207185236%_))))
                                  (_%$%E185177185191%_)))))
                      (_%$%E185176185240%_)))))
          (let* ((_%$%e185145185152%_ _%stx185141%_)
                 (_%$%E185147185156%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e185145185152%_)))
                 (_%$%E185146185170%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e185145185152%_)
                        (let ((_%$%e185148185160%_
                               (gx#syntax-e _%$%e185145185152%_)))
                          (let ((_%$%hd185149185163%_
                                 (##car _%$%e185148185160%_))
                                (_%$%tl185150185165%_
                                 (##cdr _%$%e185148185160%_)))
                            (let ((_%clauses185168%_ _%$%tl185150185165%_))
                              (if (gx#stx-list? _%clauses185168%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop185144%_ _%clauses185168%_))
                                  (_%$%E185147185156%_)))))
                        (_%$%E185147185156%_)))))
            (_%$%E185146185170%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx185084%_ _%rpath185085%_)
        (let* ((_%$%e185086185096%_ _%stx185084%_)
               (_%$%E185088185100%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e185086185096%_)))
               (_%$%E185087185127%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e185086185096%_)
                      (let ((_%$%e185089185104%_
                             (gx#syntax-e _%$%e185086185096%_)))
                        (let ((_%$%hd185090185107%_
                               (##car _%$%e185089185104%_))
                              (_%$%tl185091185109%_
                               (##cdr _%$%e185089185104%_)))
                          (if (gx#stx-pair? _%$%tl185091185109%_)
                              (let ((_%$%e185092185112%_
                                     (gx#syntax-e _%$%tl185091185109%_)))
                                (let ((_%$%hd185093185115%_
                                       (##car _%$%e185092185112%_))
                                      (_%$%tl185094185117%_
                                       (##cdr _%$%e185092185112%_)))
                                  (let ((_%path185120%_ _%$%hd185093185115%_))
                                    (if (gx#stx-null? _%$%tl185094185117%_)
                                        (if (gx#stx-string? _%path185120%_)
                                            (let ((_%rpath185125%_
                                                   (let ((_%$e185122%_
                                                          _%rpath185085%_))
                                                     (if _%$e185122%_
                                                         _%$e185122%_
                                                         (gx#core-resolve-path__%
                                                          _%path185120%_
                                                          (gx#stx-source
                                                           _%stx185084%_))))))
                                              (if (member _%rpath185125%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx185084%_)
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath185125%_))
                                                    (gx#stx-source
                                                     _%stx185084%_)))))
                                            (_%$%E185088185100%_))
                                        (_%$%E185088185100%_)))))
                              (_%$%E185088185100%_))))
                      (_%$%E185088185100%_)))))
          (_%$%E185087185127%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx185134%_)
        (let ((_%rpath185136%_ '#f))
          (gx#core-expand-include%__% _%stx185134%_ _%rpath185136%_))))
    (define gx#core-expand-include%
      (lambda _g187459_
        (let ((_g187460_ (##length _g187459_)))
          (cond ((##fx= _g187460_ 1)
                 (apply gx#core-expand-include%__0 _g187459_))
                ((##fx= _g187460_ 2)
                 (apply gx#core-expand-include%__% _g187459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g187459_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K185050%_ _%stx185051%_ _%method185052%_)
        (if (procedure? _%K185050%_)
            (let ((_%$e185055%_ (gx#stx-source _%stx185051%_)))
              (if _%$e185055%_
                  (gx#stx-wrap-source (_%K185050%_ _%stx185051%_) _%$e185055%_)
                  (_%K185050%_ _%stx185051%_)))
            (let ((_%$e185063%_
                   (bound-method-ref _%K185050%_ _%method185052%_)))
              (if _%$e185063%_
                  (gx#core-apply-expander__%
                   _%$e185063%_
                   _%stx185051%_
                   _%method185052%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx185051%_
                   _%method185052%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K185074%_ _%stx185075%_)
        (let ((_%method185077%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K185074%_
           _%stx185075%_
           _%method185077%_))))
    (define gx#core-apply-expander
      (lambda _g187461_
        (let ((_g187462_ (##length _g187461_)))
          (cond ((##fx= _g187462_ 2)
                 (apply gx#core-apply-expander__0 _g187461_))
                ((##fx= _g187462_ 3)
                 (apply gx#core-apply-expander__% _g187461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g187461_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self185035%_ _%stx185036%_)
        (let ((_%self185039%_ _%self185035%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx185036%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self184878%_ _%stx184879%_)
        (let* ((_%self184882%_ _%self184878%_)
               (_%$%self184891184897%_ _%self184882%_)
               (_%$%E184893184900%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184891184897%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K184894184905%_
                (lambda (_%K184903%_)
                  (gx#core-apply-expander__0 _%K184903%_ _%stx184879%_)))
               (_%$%e184895184908%_
                (##unchecked-structure-ref _%$%self184891184897%_ '1 '#f '#f))
               (_%K184911%_ _%$%e184895184908%_))
          (_%$%K184894184905%_ _%K184911%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self184721%_ _%stx184722%_)
        (let ((_%self184725%_ _%self184721%_))
          (if (gx#sealed-syntax? _%stx184722%_)
              _%stx184722%_
              (let* ((_%$%self184734184740%_ _%self184725%_)
                     (_%$%E184736184743%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self184734184740%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K184737184748%_
                      (lambda (_%K184746%_)
                        (gx#core-apply-expander__0 _%K184746%_ _%stx184722%_)))
                     (_%$%e184738184751%_
                      (##unchecked-structure-ref
                       _%$%self184734184740%_
                       '1
                       '#f
                       '#f))
                     (_%K184754%_ _%$%e184738184751%_))
                (_%$%K184737184748%_ _%K184754%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self184571%_ _%stx184572%_ _%top?184573%_)
        (let ((_%self184576%_ _%self184571%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx184572%_))
                (force-output))
              '#!void)
          (if (_%top?184573%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self184576%_
               _%stx184572%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx184572%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self184590%_ _%stx184591%_)
        (let ((_%top?184593%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self184590%_
           _%stx184591%_
           _%top?184593%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g187463_
        (let ((_g187464_ (##length _g187463_)))
          (cond ((##fx= _g187464_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g187463_))
                ((##fx= _g187464_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g187463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g187463_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self184434%_ _%stx184435%_)
        (let ((_%self184438%_ _%self184434%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self184438%_
           _%stx184435%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self184249%_ _%stx184250%_)
        (let* ((_%self184253%_ _%self184249%_)
               (_%$%self184262184268%_ _%self184253%_)
               (_%$%E184264184271%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184262184268%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K184265184304%_
                (lambda (_%id184274%_)
                  (let* ((_%$%e184275184282%_ _%stx184250%_)
                         (_%$%E184277184286%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e184275184282%_)))
                         (_%$%E184276184300%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e184275184282%_)
                                (let ((_%$%e184278184290%_
                                       (gx#syntax-e _%$%e184275184282%_)))
                                  (let ((_%$%hd184279184293%_
                                         (##car _%$%e184278184290%_))
                                        (_%$%tl184280184295%_
                                         (##cdr _%$%e184278184290%_)))
                                    (let ((_%body184298%_
                                           _%$%tl184280184295%_))
                                      (gx#core-cons
                                       _%id184274%_
                                       _%body184298%_))))
                                (_%$%E184277184286%_)))))
                    (_%$%E184276184300%_))))
               (_%$%e184266184307%_
                (##unchecked-structure-ref _%$%self184262184268%_ '1 '#f '#f))
               (_%id184310%_ _%$%e184266184307%_))
          (_%$%K184265184304%_ _%id184310%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self184076%_ _%stx184077%_ _%method184078%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx184077%_))
              (force-output))
            '#!void)
        (let* ((_%$%self184079184087%_ _%self184076%_)
               (_%$%E184081184090%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self184079184087%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K184082184097%_
                (lambda (_%phi184093%_ _%ctx184094%_ _%K184095%_)
                  (gx#core-apply-user-macro
                   _%K184095%_
                   _%stx184077%_
                   _%ctx184094%_
                   _%phi184093%_
                   _%method184078%_))))
          (if (##structure-instance-of?
               _%$%self184079184087%_
               'gx#user-expander::t)
              (let* ((_%$%e184083184100%_
                      (##unchecked-structure-ref
                       _%$%self184079184087%_
                       '1
                       '#f
                       '#f))
                     (_%K184103%_ _%$%e184083184100%_)
                     (_%$%e184084184105%_
                      (##unchecked-structure-ref
                       _%$%self184079184087%_
                       '2
                       '#f
                       '#f))
                     (_%ctx184108%_ _%$%e184084184105%_)
                     (_%$%e184085184110%_
                      (##unchecked-structure-ref
                       _%$%self184079184087%_
                       '3
                       '#f
                       '#f))
                     (_%phi184113%_ _%$%e184085184110%_))
                (_%$%K184082184097%_ _%phi184113%_ _%ctx184108%_ _%K184103%_))
              (_%$%E184081184090%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self184118%_ _%stx184119%_)
        (let ((_%method184121%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self184118%_
           _%stx184119%_
           _%method184121%_))))
    (define gx#core-apply-user-expander
      (lambda _g187465_
        (let ((_g187466_ (##length _g187465_)))
          (cond ((##fx= _g187466_ 2)
                 (apply gx#core-apply-user-expander__0 _g187465_))
                ((##fx= _g187466_ 3)
                 (apply gx#core-apply-user-expander__% _g187465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g187465_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K184066%_
               _%stx184067%_
               _%ctx184068%_
               _%phi184069%_
               _%method184070%_)
        (let ((_%mark184072%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx184068%_
                _%phi184069%_
                _%stx184067%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K184066%_
               (gx#stx-apply-mark _%stx184067%_ _%mark184072%_)
               _%method184070%_)
              _%mark184072%_))
           gx#current-expander-marks
           (cons _%mark184072%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx183914%_ _%phi183915%_ _%ctx183916%_)
        (let _%lp183918%_ ((_%bind183920%_
                            (gx#core-resolve-identifier__%
                             _%stx183914%_
                             _%phi183915%_
                             _%ctx183916%_)))
          (if (##structure-direct-instance-of?
               _%bind183920%_
               'gx#import-binding::t)
              (_%lp183918%_
               (##unchecked-structure-ref _%bind183920%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind183920%_
                   'gx#alias-binding::t)
                  (_%lp183918%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind183920%_ '5 '#f '#f)
                    _%phi183915%_
                    _%ctx183916%_))
                  _%bind183920%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx183928%_)
        (let* ((_%phi183930%_ (gx#current-expander-phi))
               (_%ctx183932%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183928%_
           _%phi183930%_
           _%ctx183932%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx183934%_ _%phi183935%_)
        (let ((_%ctx183937%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx183934%_
           _%phi183935%_
           _%ctx183937%_))))
    (define gx#resolve-identifier
      (lambda _g187467_
        (let ((_g187468_ (##length _g187467_)))
          (cond ((##fx= _g187468_ 1)
                 (apply gx#resolve-identifier__0 _g187467_))
                ((##fx= _g187468_ 2)
                 (apply gx#resolve-identifier__1 _g187467_))
                ((##fx= _g187468_ 3)
                 (apply gx#resolve-identifier__% _g187467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g187467_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx183869%_
               _%val183870%_
               _%rebind?183871%_
               _%phi183872%_
               _%ctx183873%_)
        (let ((_%rebind?183878%_
               (if (not _%rebind?183871%_)
                   gx#core-context-rebind?
                   (if (procedure? _%rebind?183871%_)
                       _%rebind?183871%_
                       true))))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx183869%_)
           _%val183870%_
           _%rebind?183878%_
           _%phi183872%_
           _%ctx183873%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx183883%_ _%val183884%_)
        (let* ((_%rebind?183886%_ '#f)
               (_%phi183888%_ (gx#current-expander-phi))
               (_%ctx183890%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183883%_
           _%val183884%_
           _%rebind?183886%_
           _%phi183888%_
           _%ctx183890%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx183892%_ _%val183893%_ _%rebind?183894%_)
        (let* ((_%phi183896%_ (gx#current-expander-phi))
               (_%ctx183898%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183892%_
           _%val183893%_
           _%rebind?183894%_
           _%phi183896%_
           _%ctx183898%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx183900%_ _%val183901%_ _%rebind?183902%_ _%phi183903%_)
        (let ((_%ctx183905%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx183900%_
           _%val183901%_
           _%rebind?183902%_
           _%phi183903%_
           _%ctx183905%_))))
    (define gx#bind-identifier!
      (lambda _g187469_
        (let ((_g187470_ (##length _g187469_)))
          (cond ((##fx= _g187470_ 2) (apply gx#bind-identifier!__0 _g187469_))
                ((##fx= _g187470_ 3) (apply gx#bind-identifier!__1 _g187469_))
                ((##fx= _g187470_ 4) (apply gx#bind-identifier!__2 _g187469_))
                ((##fx= _g187470_ 5) (apply gx#bind-identifier!__% _g187469_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g187469_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx183835%_ _%phi183836%_ _%ctx183837%_)
        (let _%lp183839%_ ((_%e183841%_ _%stx183835%_)
                           (_%marks183842%_ (gx#current-expander-marks)))
          (if (symbol? _%e183841%_)
              (gx#core-resolve-binding
               _%e183841%_
               _%phi183836%_
               _%phi183836%_
               _%ctx183837%_
               (reverse _%marks183842%_))
              (if (gx#identifier-quote? _%e183841%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e183841%_ '1 '#f '#f)
                   _%phi183836%_
                   '0
                   (##unchecked-structure-ref _%e183841%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e183841%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e183841%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e183841%_ '1 '#f '#f)
                       _%phi183836%_
                       _%phi183836%_
                       _%ctx183837%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e183841%_ '3 '#f '#f)
                        _%marks183842%_))
                      (if (##structure-direct-instance-of?
                           _%e183841%_
                           'gx#syntax-wrap::t)
                          (_%lp183839%_
                           (##unchecked-structure-ref _%e183841%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e183841%_ '3 '#f '#f)
                            _%marks183842%_))
                          (if (##structure-instance-of?
                               _%e183841%_
                               'gerbil#AST::t)
                              (_%lp183839%_
                               (##unchecked-structure-ref
                                _%e183841%_
                                '1
                                '#f
                                '#f)
                               _%marks183842%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx183835%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx183853%_)
        (let* ((_%phi183855%_ (gx#current-expander-phi))
               (_%ctx183857%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183853%_
           _%phi183855%_
           _%ctx183857%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx183859%_ _%phi183860%_)
        (let ((_%ctx183862%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx183859%_
           _%phi183860%_
           _%ctx183862%_))))
    (define gx#core-resolve-identifier
      (lambda _g187471_
        (let ((_g187472_ (##length _g187471_)))
          (cond ((##fx= _g187472_ 1)
                 (apply gx#core-resolve-identifier__0 _g187471_))
                ((##fx= _g187472_ 2)
                 (apply gx#core-resolve-identifier__1 _g187471_))
                ((##fx= _g187472_ 3)
                 (apply gx#core-resolve-identifier__% _g187471_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g187471_))))))
    (define gx#core-resolve-binding
      (lambda (_%id183746%_
               _%phi183747%_
               _%src-phi183748%_
               _%ctx183749%_
               _%marks183750%_)
        (letrec ((_%resolve183752%_
                  (lambda (_%ctx183819%_ _%src-phi183820%_ _%key183821%_)
                    (let _%lp183823%_ ((_%ctx183825%_
                                        (gx#core-context-shift
                                         _%ctx183819%_
                                         _%phi183747%_))
                                       (_%dphi183826%_
                                        (fx- _%phi183747%_ _%src-phi183820%_)))
                      (let ((_%$e183828%_
                             (gx#core-context-resolve
                              _%ctx183825%_
                              _%key183821%_)))
                        (if _%$e183828%_
                            _%$e183828%_
                            (if (fxzero? _%dphi183826%_)
                                '#f
                                (if (fxpositive? _%dphi183826%_)
                                    (_%lp183823%_
                                     (gx#core-context-shift _%ctx183825%_ '-1)
                                     (##fx- _%dphi183826%_ '1))
                                    (_%lp183823%_
                                     (gx#core-context-shift _%ctx183825%_ '1)
                                     (##fx+ _%dphi183826%_ '1))))))))))
          (let _%lp183754%_ ((_%ctx183756%_ _%ctx183749%_)
                             (_%src-phi183757%_ _%src-phi183748%_)
                             (_%rest183758%_ _%marks183750%_))
            (let* ((_%$%rest183759183767%_ _%rest183758%_)
                   (_%$%else183761183775%_
                    (lambda ()
                      (_%resolve183752%_
                       _%ctx183756%_
                       _%src-phi183757%_
                       _%id183746%_)))
                   (_%$%K183763183807%_
                    (lambda (_%rest183778%_ _%hd183779%_)
                      (let* ((_%$%hd183780183786%_ _%hd183779%_)
                             (_%$%E183782183789%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd183780183786%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K183783183799%_
                              (lambda (_%subst183792%_)
                                (let ((_%$e183796%_
                                       (let ((_%key183794%_
                                              (if _%subst183792%_
                                                  (hash-get
                                                   _%subst183792%_
                                                   _%id183746%_)
                                                  '#f)))
                                         (if _%key183794%_
                                             (_%resolve183752%_
                                              _%ctx183756%_
                                              _%src-phi183757%_
                                              _%key183794%_)
                                             '#f))))
                                  (if _%$e183796%_
                                      _%$e183796%_
                                      (_%lp183754%_
                                       (##unchecked-structure-ref
                                        _%hd183779%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd183779%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest183778%_))))))
                        (if (##structure-instance-of?
                             _%$%hd183780183786%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e183784183802%_
                                    (##unchecked-structure-ref
                                     _%$%hd183780183786%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst183805%_ _%$%e183784183802%_))
                              (_%$%K183783183799%_ _%subst183805%_))
                            (_%$%E183782183789%_))))))
              (if (pair? _%$%rest183759183767%_)
                  (let ((_%$%hd183764183810%_ (##car _%$%rest183759183767%_))
                        (_%$%tl183765183812%_ (##cdr _%$%rest183759183767%_)))
                    (let* ((_%hd183815%_ _%$%hd183764183810%_)
                           (_%rest183817%_ _%$%tl183765183812%_))
                      (_%$%K183763183807%_ _%rest183817%_ _%hd183815%_)))
                  (_%$%else183761183775%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key183617%_
               _%val183618%_
               _%rebind?183619%_
               _%phi183620%_
               _%ctx183621%_)
        (letrec ((_%update-binding183623%_
                  (lambda (_%xval183695%_)
                    (if (or (_%rebind?183619%_
                             _%ctx183621%_
                             _%xval183695%_
                             _%val183618%_)
                            (and (##structure-direct-instance-of?
                                  _%xval183695%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval183695%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val183618%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val183618%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval183695%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val183618%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val183618%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval183695%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val183618%_
                        (if (and (##structure-direct-instance-of?
                                  _%val183618%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val183618%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval183695%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val183618%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval183695%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval183695%_
                            (if (and (##structure-direct-instance-of?
                                      _%val183618%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval183695%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key183617%_
                                 (cons (##unchecked-structure-ref
                                        _%val183618%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val183618%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval183695%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval183695%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval183695%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval183695%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key183617%_
                                 _%val183618%_
                                 _%xval183695%_))))))
                 (_%gensubst183624%_
                  (lambda (_%subst183690%_ _%id183691%_)
                    (let ((_%eid183693%_
                           (gensym (if (uninterned-symbol? _%id183691%_)
                                       '%
                                       _%id183691%_))))
                      (hash-put! _%subst183690%_ _%id183691%_ _%eid183693%_)
                      _%eid183693%_)))
                 (_%subst!183625%_
                  (lambda (_%key183627%_)
                    (let* ((_%$%key183628183636%_ _%key183627%_)
                           (_%$%else183630183644%_ (lambda () _%key183627%_))
                           (_%$%K183632183678%_
                            (lambda (_%mark183647%_ _%id183648%_)
                              (let* ((_%$%mark183649183655%_ _%mark183647%_)
                                     (_%$%E183651183658%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark183649183655%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K183652183670%_
                                      (lambda (_%subst183661%_)
                                        (if (not _%subst183661%_)
                                            (let ((_%subst183664%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark183647%_
                                               _%subst183664%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst183624%_
                                               _%subst183664%_
                                               _%id183648%_))
                                            (let ((_%$e183666%_
                                                   (hash-get
                                                    _%subst183661%_
                                                    _%id183648%_)))
                                              (if _%$e183666%_
                                                  _%$e183666%_
                                                  (_%gensubst183624%_
                                                   _%subst183661%_
                                                   _%id183648%_)))))))
                                (if (##structure-instance-of?
                                     _%$%mark183649183655%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e183653183673%_
                                            (##unchecked-structure-ref
                                             _%$%mark183649183655%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst183676%_
                                            _%$%e183653183673%_))
                                      (_%$%K183652183670%_ _%subst183676%_))
                                    (_%$%E183651183658%_))))))
                      (if (pair? _%$%key183628183636%_)
                          (let ((_%$%hd183633183681%_
                                 (##car _%$%key183628183636%_))
                                (_%$%tl183634183683%_
                                 (##cdr _%$%key183628183636%_)))
                            (let* ((_%id183686%_ _%$%hd183633183681%_)
                                   (_%mark183688%_ _%$%tl183634183683%_))
                              (_%$%K183632183678%_
                               _%mark183688%_
                               _%id183686%_)))
                          (_%$%else183630183644%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key183617%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx183621%_ _%phi183620%_)
           (_%subst!183625%_ _%key183617%_)
           _%val183618%_
           _%update-binding183623%_))))
    (define gx#core-bind!__0
      (lambda (_%key183716%_ _%val183717%_)
        (let* ((_%rebind?183719%_ false)
               (_%phi183721%_ (gx#current-expander-phi))
               (_%ctx183723%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183716%_
           _%val183717%_
           _%rebind?183719%_
           _%phi183721%_
           _%ctx183723%_))))
    (define gx#core-bind!__1
      (lambda (_%key183725%_ _%val183726%_ _%rebind?183727%_)
        (let* ((_%phi183729%_ (gx#current-expander-phi))
               (_%ctx183731%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183725%_
           _%val183726%_
           _%rebind?183727%_
           _%phi183729%_
           _%ctx183731%_))))
    (define gx#core-bind!__2
      (lambda (_%key183733%_ _%val183734%_ _%rebind?183735%_ _%phi183736%_)
        (let ((_%ctx183738%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key183733%_
           _%val183734%_
           _%rebind?183735%_
           _%phi183736%_
           _%ctx183738%_))))
    (define gx#core-bind!
      (lambda _g187473_
        (let ((_g187474_ (##length _g187473_)))
          (cond ((##fx= _g187474_ 2) (apply gx#core-bind!__0 _g187473_))
                ((##fx= _g187474_ 3) (apply gx#core-bind!__1 _g187473_))
                ((##fx= _g187474_ 4) (apply gx#core-bind!__2 _g187473_))
                ((##fx= _g187474_ 5) (apply gx#core-bind!__% _g187473_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g187473_))))))
    (define gx#core-identifier-key
      (lambda (_%stx183548%_)
        (if (symbol? _%stx183548%_)
            (let* ((_%$%g183550183558%_ (gx#current-expander-marks))
                   (_%$%else183552183566%_ (lambda () _%stx183548%_))
                   (_%$%K183554183571%_
                    (lambda (_%hd183569%_) (cons _%stx183548%_ _%hd183569%_))))
              (if (pair? _%$%g183550183558%_)
                  (let* ((_%$%hd183555183574%_ (##car _%$%g183550183558%_))
                         (_%hd183577%_ _%$%hd183555183574%_))
                    (_%$%K183554183571%_ _%hd183577%_))
                  (_%$%else183552183566%_)))
            (if (gx#identifier? _%stx183548%_)
                (let* ((_%id183580%_ (gx#syntax-local-unwrap _%stx183548%_))
                       (_%eid183582%_ (gx#stx-e _%id183580%_))
                       (_%marks183584%_
                        (gx#stx-identifier-marks* _%id183580%_))
                       (_%$%marks183586183594%_ _%marks183584%_)
                       (_%$%else183588183602%_ (lambda () _%eid183582%_))
                       (_%$%K183590183607%_
                        (lambda (_%hd183605%_)
                          (cons _%eid183582%_ _%hd183605%_))))
                  (if (pair? _%$%marks183586183594%_)
                      (let* ((_%$%hd183591183610%_
                              (##car _%$%marks183586183594%_))
                             (_%hd183613%_ _%$%hd183591183610%_))
                        (_%$%K183590183607%_ _%hd183613%_))
                      (_%$%else183588183602%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx183548%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx183487%_ _%phi183488%_)
        (letrec ((_%make-phi183490%_
                  (lambda (_%super183546%_)
                    (let ((__obj187444
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj187444
                       (##gensym 'phi)
                       _%super183546%_)
                      __obj187444)))
                 (_%make-phi/up183491%_
                  (lambda (_%ctx183541%_ _%super183542%_)
                    (let ((_%ctx+1183544%_
                           (_%make-phi183490%_ _%super183542%_)))
                      (##unchecked-structure-set!
                       _%ctx183541%_
                       _%ctx+1183544%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1183544%_
                       _%ctx183541%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1183544%_)))
                 (_%make-phi/down183492%_
                  (lambda (_%ctx183536%_ _%super183537%_)
                    (let ((_%ctx-1183539%_
                           (_%make-phi183490%_ _%super183537%_)))
                      (##unchecked-structure-set!
                       _%ctx-1183539%_
                       _%ctx183536%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx183536%_
                       _%ctx-1183539%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1183539%_)))
                 (_%shift183493%_
                  (lambda (_%ctx183519%_
                           _%delta183520%_
                           _%make-delta-context183521%_
                           _%phi183522%_
                           _%K183523%_)
                    (let ((_%$e183525%_
                           (##unchecked-structure-ref
                            _%ctx183519%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e183525%_
                          (let* ((_%super183530%_
                                  (_%K183523%_ _%$e183525%_ _%delta183520%_))
                                 (_%ctx+d183532%_
                                  (_%make-delta-context183521%_
                                   _%ctx183519%_
                                   _%super183530%_)))
                            (_%K183523%_
                             _%ctx+d183532%_
                             (fx- _%phi183522%_ _%delta183520%_)))
                          (error '"Bad context" _%ctx183519%_))))))
          (let _%K183495%_ ((_%ctx183497%_ _%ctx183487%_)
                            (_%phi183498%_ _%phi183488%_))
            (if (fxzero? _%phi183498%_)
                _%ctx183497%_
                (if (##structure-instance-of? _%ctx183497%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi183498%_)
                        (let ((_%$e183502%_
                               (##unchecked-structure-ref
                                _%ctx183497%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e183502%_
                              (_%K183495%_
                               _%$e183502%_
                               (##fx- _%phi183498%_ '1))
                              (_%shift183493%_
                               _%ctx183497%_
                               '1
                               _%make-phi/up183491%_
                               _%phi183498%_
                               _%K183495%_)))
                        (let ((_%$e183510%_
                               (##unchecked-structure-ref
                                _%ctx183497%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e183510%_
                              (_%K183495%_
                               _%$e183510%_
                               (##fx+ _%phi183498%_ '1))
                              (_%shift183493%_
                               _%ctx183497%_
                               '-1
                               _%make-phi/down183492%_
                               _%phi183498%_
                               _%K183495%_))))
                    _%ctx183497%_))))))
    (define gx#core-context-get
      (lambda (_%ctx183484%_ _%key183485%_)
        (hash-get
         (##unchecked-structure-ref _%ctx183484%_ '2 '#f '#f)
         _%key183485%_)))
    (define gx#core-context-put!
      (lambda (_%ctx183480%_ _%key183481%_ _%val183482%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx183480%_ '2 '#f '#f)
         _%key183481%_
         _%val183482%_)
        _%val183482%_))
    (define gx#core-context-resolve
      (lambda (_%ctx183466%_ _%key183467%_)
        (let _%lp183469%_ ((_%ctx183471%_ _%ctx183466%_))
          (let ((_%$e183473%_
                 (gx#core-context-get _%ctx183471%_ _%key183467%_)))
            (if _%$e183473%_
                _%$e183473%_
                (let ((_%$e183476%_
                       (if (##structure-instance-of?
                            _%ctx183471%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx183471%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e183476%_ (_%lp183469%_ _%$e183476%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx183455%_ _%key183456%_ _%val183457%_ _%rebind183458%_)
        (let ((_%$e183460%_ (gx#core-context-get _%ctx183455%_ _%key183456%_)))
          (if _%$e183460%_
              (gx#core-context-put!
               _%ctx183455%_
               _%key183456%_
               (_%rebind183458%_ _%$e183460%_))
              (gx#core-context-put!
               _%ctx183455%_
               _%key183456%_
               _%val183457%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx183430%_ _%stop?183431%_)
        (let _%lp183433%_ ((_%ctx183435%_ _%ctx183430%_))
          (if (_%stop?183431%_ _%ctx183435%_)
              _%ctx183435%_
              (if (##structure-instance-of? _%ctx183435%_ 'gx#phi-context::t)
                  (_%lp183433%_
                   (##unchecked-structure-ref _%ctx183435%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx183444%_ (gx#current-expander-context))
               (_%stop?183446%_ gx#top-context?))
          (gx#core-context-top__% _%ctx183444%_ _%stop?183446%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx183448%_)
        (let ((_%stop?183450%_ gx#top-context?))
          (gx#core-context-top__% _%ctx183448%_ _%stop?183450%_))))
    (define gx#core-context-top
      (lambda _g187475_
        (let ((_g187476_ (##length _g187475_)))
          (cond ((##fx= _g187476_ 0) (apply gx#core-context-top__0 _g187475_))
                ((##fx= _g187476_ 1) (apply gx#core-context-top__1 _g187475_))
                ((##fx= _g187476_ 2) (apply gx#core-context-top__% _g187475_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g187475_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx183415%_)
        (let _%lp183417%_ ((_%ctx183419%_ _%ctx183415%_))
          (if (##structure-instance-of? _%ctx183419%_ 'gx#phi-context::t)
              (_%lp183417%_
               (##unchecked-structure-ref _%ctx183419%_ '3 '#f '#f))
              _%ctx183419%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx183425%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx183425%_))))
    (define gx#core-context-root
      (lambda _g187477_
        (let ((_g187478_ (##length _g187477_)))
          (cond ((##fx= _g187478_ 0) (apply gx#core-context-root__0 _g187477_))
                ((##fx= _g187478_ 1) (apply gx#core-context-root__% _g187477_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g187477_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx183397%_ . _%ignore183398%_)
        (let ((_%$e183400%_ (gx#current-expander-allow-rebind?)))
          (if _%$e183400%_
              _%$e183400%_
              (if (##structure-instance-of? _%ctx183397%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx183397%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx183397%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx183407%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx183407%_))))
    (define gx#core-context-rebind?
      (lambda _g187479_
        (let ((_g187480_ (##length _g187479_)))
          (cond ((##fx= _g187480_ 0)
                 (apply gx#core-context-rebind?__0 _g187479_))
                ((##fx= _g187480_ 1)
                 (apply gx#core-context-rebind?__% _g187479_))
                ((##fx>= _g187480_ 1)
                 (apply gx#core-context-rebind?__% _g187479_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g187479_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx183380%_)
        (let ((_%$e183382%_ (gx#core-context-top__1 _%ctx183380%_)))
          (if _%$e183382%_
              (if (##structure-instance-of? _%$e183382%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e183382%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx183392%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx183392%_))))
    (define gx#core-context-namespace
      (lambda _g187481_
        (let ((_g187482_ (##length _g187481_)))
          (cond ((##fx= _g187482_ 0)
                 (apply gx#core-context-namespace__0 _g187481_))
                ((##fx= _g187482_ 1)
                 (apply gx#core-context-namespace__% _g187481_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g187481_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind183366%_ _%is?183367%_)
        (if (##structure-direct-instance-of?
             _%bind183366%_
             'gx#syntax-binding::t)
            (_%is?183367%_
             (##unchecked-structure-ref _%bind183366%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind183372%_)
        (let ((_%is?183374%_ gx#expander?))
          (gx#expander-binding?__% _%bind183372%_ _%is?183374%_))))
    (define gx#expander-binding?
      (lambda _g187483_
        (let ((_g187484_ (##length _g187483_)))
          (cond ((##fx= _g187484_ 1) (apply gx#expander-binding?__0 _g187483_))
                ((##fx= _g187484_ 2) (apply gx#expander-binding?__% _g187483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g187483_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind183363%_)
        (gx#expander-binding?__% _%bind183363%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind183361%_)
        (gx#expander-binding?__% _%bind183361%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind183355%_)
        (letrec ((_%direct-special-form?183357%_
                  (lambda (_%obj183359%_)
                    (##structure-direct-instance-of?
                     _%obj183359%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind183355%_
           _%direct-special-form?183357%_))))
    (define gx#special-form-binding?
      (lambda (_%bind183353%_)
        (gx#expander-binding?__% _%bind183353%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind183344%_)
        (letrec ((_%feature?183346%_
                  (lambda (_%e183348%_)
                    (let ((_%$e183350%_
                           (##structure-instance-of?
                            _%e183348%_
                            'gx#feature-expander::t)))
                      (if _%$e183350%_
                          _%$e183350%_
                          (##structure-instance-of?
                           _%e183348%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind183344%_ _%feature?183346%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind183342%_)
        (gx#expander-binding?__% _%bind183342%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id183329%_ _%bound?183330%_)
        (if (gx#identifier? _%id183329%_)
            (_%bound?183330%_ (gx#resolve-identifier__0 _%id183329%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id183335%_)
        (let ((_%bound?183337%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id183335%_ _%bound?183337%_))))
    (define gx#core-bound-identifier?
      (lambda _g187485_
        (let ((_g187486_ (##length _g187485_)))
          (cond ((##fx= _g187486_ 1)
                 (apply gx#core-bound-identifier?__0 _g187485_))
                ((##fx= _g187486_ 2)
                 (apply gx#core-bound-identifier?__% _g187485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g187485_))))))
    (define gx#core-identifier=?
      (lambda (_%x183319%_ _%y183320%_)
        (letrec ((_%y=?183322%_
                  (lambda (_%xid183326%_)
                    ((if (list? _%y183320%_) memq eq?)
                     _%xid183326%_
                     _%y183320%_))))
          (let ((_%bind183324%_ (gx#resolve-identifier__0 _%x183319%_)))
            (if (##structure-instance-of? _%bind183324%_ 'gx#binding::t)
                (_%y=?183322%_
                 (##unchecked-structure-ref _%bind183324%_ '1 '#f '#f))
                (_%y=?183322%_ (gx#stx-e _%x183319%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e183317%_)
        (if (interned-symbol? _%e183317%_)
            (string-index__0 (symbol->string _%e183317%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx183270%_ _%src183271%_ _%ctx183272%_ _%marks183273%_)
        (if (##structure? _%stx183270%_)
            (let ((_%$e183275%_ (gx#sealed-syntax-unwrap _%stx183270%_)))
              (if _%$e183275%_
                  _%$e183275%_
                  (if (gx#identifier? _%stx183270%_)
                      (let ((_%id183279%_
                             (gx#stx-unwrap__% _%stx183270%_ _%marks183273%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id183279%_ '1 '#f '#f)
                         (let ((_%$e183281%_
                                (##unchecked-structure-ref
                                 _%id183279%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e183281%_ _%$e183281%_ _%src183271%_))
                         _%ctx183272%_
                         (##unchecked-structure-ref _%id183279%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx183270%_)
                       (let ((_%$e183285%_ (gx#stx-source _%stx183270%_)))
                         (if _%$e183285%_ _%$e183285%_ _%src183271%_))
                       _%ctx183272%_
                       (reverse _%marks183273%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx183270%_
             _%src183271%_
             _%ctx183272%_
             (reverse _%marks183273%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx183291%_)
        (let* ((_%src183293%_ '#f)
               (_%ctx183295%_ (gx#current-expander-context))
               (_%marks183297%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183291%_
           _%src183293%_
           _%ctx183295%_
           _%marks183297%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx183299%_ _%src183300%_)
        (let* ((_%ctx183302%_ (gx#current-expander-context))
               (_%marks183304%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183299%_
           _%src183300%_
           _%ctx183302%_
           _%marks183304%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx183306%_ _%src183307%_ _%ctx183308%_)
        (let ((_%marks183310%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx183306%_
           _%src183307%_
           _%ctx183308%_
           _%marks183310%_))))
    (define gx#core-quote-syntax
      (lambda _g187487_
        (let ((_g187488_ (##length _g187487_)))
          (cond ((##fx= _g187488_ 1) (apply gx#core-quote-syntax__0 _g187487_))
                ((##fx= _g187488_ 2) (apply gx#core-quote-syntax__1 _g187487_))
                ((##fx= _g187488_ 3) (apply gx#core-quote-syntax__2 _g187487_))
                ((##fx= _g187488_ 4) (apply gx#core-quote-syntax__% _g187487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g187487_))))))
    (define gx#core-cons
      (lambda (_%hd183266%_ _%tl183267%_)
        (cons (gx#core-quote-syntax__0 _%hd183266%_) _%tl183267%_)))
    (define gx#core-list
      (lambda (_%hd183263%_ . _%rest183264%_)
        (cons (gx#core-quote-syntax__0 _%hd183263%_) _%rest183264%_)))
    (define gx#core-cons*
      (lambda (_%hd183260%_ . _%rest183261%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd183260%_) _%rest183261%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path183229%_ _%rel183230%_)
        (let ((_%path183247%_ (gx#stx-e _%stx-path183229%_))
              (_%reldir183248%_
               (let _%lp183232%_ ((_%relsrc183234%_
                                   (let ((_%$e183244%_
                                          (gx#stx-source _%stx-path183229%_)))
                                     (if _%$e183244%_
                                         _%$e183244%_
                                         _%rel183230%_))))
                 (if (##structure-instance-of? _%relsrc183234%_ 'gerbil#AST::t)
                     (_%lp183232%_
                      (let ((_%$e183237%_ (gx#stx-source _%relsrc183234%_)))
                        (if _%$e183237%_
                            _%$e183237%_
                            (gx#stx-e _%relsrc183234%_))))
                     (if (source-location-path? _%relsrc183234%_)
                         (path-directory
                          (source-location-path _%relsrc183234%_))
                         (if (string? _%relsrc183234%_)
                             (path-directory _%relsrc183234%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path183247%_ (path-normalize _%reldir183248%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path183253%_)
        (let ((_%rel183255%_ '#f))
          (gx#core-resolve-path__% _%stx-path183253%_ _%rel183255%_))))
    (define gx#core-resolve-path
      (lambda _g187489_
        (let ((_g187490_ (##length _g187489_)))
          (cond ((##fx= _g187490_ 1) (apply gx#core-resolve-path__0 _g187489_))
                ((##fx= _g187490_ 2) (apply gx#core-resolve-path__% _g187489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g187489_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr183185%_ _%ctx183186%_)
        (let* ((_%$%repr183187183194%_ _%repr183185%_)
               (_%$%E183189183198%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr183187183194%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K183190183206%_
                (lambda (_%subs183201%_ _%phi183202%_)
                  (let ((_%subst183204%_
                         (if (null? _%subs183201%_)
                             '#f
                             (list->hash-table-eq _%subs183201%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst183204%_
                     _%ctx183186%_
                     _%phi183202%_
                     '#f)))))
          (if (pair? _%$%repr183187183194%_)
              (let ((_%$%hd183191183209%_ (##car _%$%repr183187183194%_))
                    (_%$%tl183192183211%_ (##cdr _%$%repr183187183194%_)))
                (let* ((_%phi183214%_ _%$%hd183191183209%_)
                       (_%subs183216%_ _%$%tl183192183211%_))
                  (_%$%K183190183206%_ _%subs183216%_ _%phi183214%_)))
              (_%$%E183189183198%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr183221%_)
        (let ((_%ctx183223%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr183221%_ _%ctx183223%_))))
    (define gx#core-deserialize-mark
      (lambda _g187491_
        (let ((_g187492_ (##length _g187491_)))
          (cond ((##fx= _g187492_ 1)
                 (apply gx#core-deserialize-mark__0 _g187491_))
                ((##fx= _g187492_ 2)
                 (apply gx#core-deserialize-mark__% _g187491_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g187491_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx183182%_)
        (gx#stx-rewrap _%stx183182%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx183180%_)
        (gx#stx-unwrap__% _%stx183180%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx183150%_)
        (let* ((_%$%g183151183159%_ (gx#current-expander-marks))
               (_%$%else183153183167%_ (lambda () _%stx183150%_))
               (_%$%K183155183172%_
                (lambda (_%hd183170%_)
                  (gx#stx-apply-mark _%stx183150%_ _%hd183170%_))))
          (if (pair? _%$%g183151183159%_)
              (let* ((_%$%hd183156183175%_ (##car _%$%g183151183159%_))
                     (_%hd183178%_ _%$%hd183156183175%_))
                (_%$%K183155183172%_ _%hd183178%_))
              (_%$%else183153183167%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym183148%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym183148%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx183133%_ _%E183134%_)
        (let ((_%bind183136%_ (gx#resolve-identifier__0 _%stx183133%_)))
          (if (##structure-direct-instance-of?
               _%bind183136%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind183136%_ '5 '#f '#f)
              (_%E183134%_ _%stx183133%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx183141%_)
        (let ((_%E183143%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx183141%_ _%E183143%_))))
    (define gx#syntax-local-e
      (lambda _g187493_
        (let ((_g187494_ (##length _g187493_)))
          (cond ((##fx= _g187494_ 1) (apply gx#syntax-local-e__0 _g187493_))
                ((##fx= _g187494_ 2) (apply gx#syntax-local-e__% _g187493_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g187493_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx183117%_ _%E183118%_)
        (let ((_%e183120%_ (gx#syntax-local-e__% _%stx183117%_ _%E183118%_)))
          (if (##structure-instance-of? _%e183120%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e183120%_ '1 '#f '#f)
              _%e183120%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx183125%_)
        (let ((_%E183127%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx183125%_ _%E183127%_))))
    (define gx#syntax-local-value
      (lambda _g187495_
        (let ((_g187496_ (##length _g187495_)))
          (cond ((##fx= _g187496_ 1)
                 (apply gx#syntax-local-value__0 _g187495_))
                ((##fx= _g187496_ 2)
                 (apply gx#syntax-local-value__% _g187495_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g187495_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx183114%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx183114%_)))))
