(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1789552478)
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
      (make-class-type
       'gx#expander-context::t
       'expander-context
       (list)
       '(id table)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#expander-context?
      (__make-class-predicate gx#expander-context::t))
    (define gx#make-expander-context
      (lambda _%$args189637%_
        (apply make-instance gx#expander-context::t _%$args189637%_)))
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
      (make-class-type
       'gx#root-context::t
       'root-context
       (list gx#expander-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#root-context? (__make-class-predicate gx#root-context::t))
    (define gx#make-root-context
      (lambda _%$args189634%_
        (apply make-instance gx#root-context::t _%$args189634%_)))
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
      (make-class-type
       'gx#phi-context::t
       'phi-context
       (list gx#expander-context::t)
       '(super up down)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#phi-context? (__make-class-predicate gx#phi-context::t))
    (define gx#make-phi-context
      (lambda _%$args189631%_
        (apply make-instance gx#phi-context::t _%$args189631%_)))
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
      (make-class-type
       'gx#top-context::t
       'top-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#top-context? (__make-class-predicate gx#top-context::t))
    (define gx#make-top-context
      (lambda _%$args189628%_
        (apply make-instance gx#top-context::t _%$args189628%_)))
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
      (make-class-type
       'gx#module-context::t
       'module-context
       (list gx#top-context::t)
       '(ns path import export e code)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#module-context? (__make-class-predicate gx#module-context::t))
    (define gx#make-module-context
      (lambda _%$args189625%_
        (apply make-instance gx#module-context::t _%$args189625%_)))
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
      (make-class-type
       'gx#prelude-context::t
       'prelude-context
       (list gx#top-context::t)
       '(path import e)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#prelude-context? (__make-class-predicate gx#prelude-context::t))
    (define gx#make-prelude-context
      (lambda _%$args189622%_
        (apply make-instance gx#prelude-context::t _%$args189622%_)))
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
      (make-class-type
       'gx#local-context::t
       'local-context
       (list gx#phi-context::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#local-context? (__make-class-predicate gx#local-context::t))
    (define gx#make-local-context
      (lambda _%$args189619%_
        (apply make-instance gx#local-context::t _%$args189619%_)))
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
      (lambda (_%self189592%_ _%id189593%_ _%super189594%_)
        (let ((_%self189597%_ _%self189592%_))
          (if (##fx< '3 (##structure-length _%self189597%_))
              (begin
                (##unchecked-structure-set!
                 _%self189597%_
                 _%id189593%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189597%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189597%_
                 _%super189594%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189597%_
                     '3
                     (##structure-length _%self189597%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self189610%_ _%id189611%_)
        (let ((_%super189613%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self189610%_
           _%id189611%_
           _%super189613%_))))
    (define gx#phi-context:::init!
      (lambda _g189679_
        (let ((_g189680_ (##length _g189679_)))
          (cond ((##fx= _g189680_ 2)
                 (apply gx#phi-context:::init!__0 _g189679_))
                ((##fx= _g189680_ 3)
                 (apply gx#phi-context:::init!__% _g189679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g189679_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self189445%_ _%super189446%_)
        (let ((_%self189449%_ _%self189445%_))
          (if (##fx< '3 (##structure-length _%self189449%_))
              (begin
                (##unchecked-structure-set!
                 _%self189449%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189449%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189449%_
                 _%super189446%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189449%_
                     '3
                     (##structure-length _%self189449%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self189462%_)
        (let ((_%super189464%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self189462%_ _%super189464%_))))
    (define gx#local-context:::init!
      (lambda _g189681_
        (let ((_g189682_ (##length _g189681_)))
          (cond ((##fx= _g189682_ 1)
                 (apply gx#local-context:::init!__0 _g189681_))
                ((##fx= _g189682_ 2)
                 (apply gx#local-context:::init!__% _g189681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g189681_))))))
    (__bind-method!__%
     gx#local-context::t
     ':init!
     gx#local-context:::init!
     '#f)
    (define gx#binding::t
      (make-class-type
       'gx#binding::t
       'binding
       (list)
       '(id key phi properties)
       (cons (cons 'struct: '#t) '((print: id)))
       ':init!))
    (define gx#binding? (__make-class-predicate gx#binding::t))
    (define gx#make-binding
      (lambda _%$args189319%_
        (apply make-instance gx#binding::t _%$args189319%_)))
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
      (lambda (_%self189302%_ _%id189303%_ _%key189304%_ _%phi189305%_)
        (let ((_%self189308%_ _%self189302%_))
          (##unchecked-structure-set! _%self189308%_ _%id189303%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self189308%_ _%key189304%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self189308%_
           _%phi189305%_
           '3
           '#f
           '#f))))
    (__bind-method!__% gx#binding::t ':init! gx#binding:::init! '#f)
    (define gx#runtime-binding::t
      (make-class-type
       'gx#runtime-binding::t
       'runtime-binding
       (list gx#binding::t)
       '(type macro)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#runtime-binding? (__make-class-predicate gx#runtime-binding::t))
    (define gx#make-runtime-binding
      (lambda _%$args189177%_
        (apply make-instance gx#runtime-binding::t _%$args189177%_)))
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
      (make-class-type
       'gx#local-binding::t
       'local-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#local-binding? (__make-class-predicate gx#local-binding::t))
    (define gx#make-local-binding
      (lambda _%$args189174%_
        (apply make-instance gx#local-binding::t _%$args189174%_)))
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
      (make-class-type
       'gx#top-binding::t
       'top-binding
       (list gx#runtime-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#top-binding? (__make-class-predicate gx#top-binding::t))
    (define gx#make-top-binding
      (lambda _%$args189171%_
        (apply make-instance gx#top-binding::t _%$args189171%_)))
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
      (make-class-type
       'gx#module-binding::t
       'module-binding
       (list gx#top-binding::t)
       '(context)
       (cons (cons 'struct: '#t) '((print:)))
       ':init!))
    (define gx#module-binding? (__make-class-predicate gx#module-binding::t))
    (define gx#make-module-binding
      (lambda _%$args189168%_
        (apply make-instance gx#module-binding::t _%$args189168%_)))
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
      (make-class-type
       'gx#extern-binding::t
       'extern-binding
       (list gx#top-binding::t)
       '()
       (cons (cons 'struct: '#t) '())
       ':init!))
    (define gx#extern-binding? (__make-class-predicate gx#extern-binding::t))
    (define gx#make-extern-binding
      (lambda _%$args189165%_
        (apply make-instance gx#extern-binding::t _%$args189165%_)))
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
      (lambda (_%self188781%_
               _%id188782%_
               _%key188783%_
               _%phi188784%_
               _%ctx188785%_)
        (let ((_%self188788%_ _%self188781%_))
          (gx#binding:::init!
           _%self188788%_
           _%id188782%_
           _%key188783%_
           _%phi188784%_)
          (##unchecked-structure-set!
           _%self188788%_
           _%ctx188785%_
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
      (make-class-type
       'gx#syntax-binding::t
       'syntax-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       ':init!))
    (define gx#syntax-binding? (__make-class-predicate gx#syntax-binding::t))
    (define gx#make-syntax-binding
      (lambda _%$args188534%_
        (apply make-instance gx#syntax-binding::t _%$args188534%_)))
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
      (make-class-type
       'gx#import-binding::t
       'import-binding
       (list gx#binding::t)
       '(e context weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       ':init!))
    (define gx#import-binding? (__make-class-predicate gx#import-binding::t))
    (define gx#make-import-binding
      (lambda _%$args188531%_
        (apply make-instance gx#import-binding::t _%$args188531%_)))
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
      (make-class-type
       'gx#alias-binding::t
       'alias-binding
       (list gx#binding::t)
       '(e)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: e))))
       ':init!))
    (define gx#alias-binding? (__make-class-predicate gx#alias-binding::t))
    (define gx#make-alias-binding
      (lambda _%$args188528%_
        (apply make-instance gx#alias-binding::t _%$args188528%_)))
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
      (lambda (_%self188510%_
               _%id188511%_
               _%key188512%_
               _%phi188513%_
               _%e188514%_)
        (let ((_%self188517%_ _%self188510%_))
          (gx#binding:::init!
           _%self188517%_
           _%id188511%_
           _%key188512%_
           _%phi188513%_)
          (##unchecked-structure-set! _%self188517%_ _%e188514%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self188368%_
               _%id188369%_
               _%key188370%_
               _%phi188371%_
               _%e188372%_
               _%ctx188373%_
               _%weak?188374%_)
        (let ((_%self188377%_ _%self188368%_))
          (gx#binding:::init!
           _%self188377%_
           _%id188369%_
           _%key188370%_
           _%phi188371%_)
          (##unchecked-structure-set! _%self188377%_ _%e188372%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self188377%_ _%ctx188373%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self188377%_
           _%weak?188374%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self188228%_
               _%id188229%_
               _%key188230%_
               _%phi188231%_
               _%e188232%_)
        (let ((_%self188235%_ _%self188228%_))
          (gx#binding:::init!
           _%self188235%_
           _%id188229%_
           _%key188230%_
           _%phi188231%_)
          (##unchecked-structure-set! _%self188235%_ _%e188232%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#alias-binding::t
     ':init!
     gx#alias-binding:::init!
     '#f)
    (define gx#expander::t
      (make-class-type
       'gx#expander::t
       'expander
       (list)
       '(e)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander? (__make-class-predicate gx#expander::t))
    (define gx#make-expander
      (lambda _%$args188103%_
        (apply make-instance gx#expander::t _%$args188103%_)))
    (define gx#expander-e (__make-class-slot-accessor gx#expander::t 'e))
    (define gx#expander-e-set! (__make-class-slot-mutator gx#expander::t 'e))
    (define gx#&expander-e
      (__make-class-slot-unchecked-accessor gx#expander::t 'e))
    (define gx#&expander-e-set!
      (__make-class-slot-unchecked-mutator gx#expander::t 'e))
    (define gx#core-expander::t
      (make-class-type
       'gx#core-expander::t
       'core-expander
       (list gx#expander::t)
       '(id compile-top)
       (cons (cons 'struct: '#t) '((print: id)))
       '#f))
    (define gx#core-expander? (__make-class-predicate gx#core-expander::t))
    (define gx#make-core-expander
      (lambda _%$args188100%_
        (apply make-instance gx#core-expander::t _%$args188100%_)))
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
      (make-class-type
       'gx#expression-form::t
       'expression-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#expression-form? (__make-class-predicate gx#expression-form::t))
    (define gx#make-expression-form
      (lambda _%$args188097%_
        (apply make-instance gx#expression-form::t _%$args188097%_)))
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
      (make-class-type
       'gx#special-form::t
       'special-form
       (list gx#core-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#special-form? (__make-class-predicate gx#special-form::t))
    (define gx#make-special-form
      (lambda _%$args188094%_
        (apply make-instance gx#special-form::t _%$args188094%_)))
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
      (make-class-type
       'gx#definition-form::t
       'definition-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#definition-form? (__make-class-predicate gx#definition-form::t))
    (define gx#make-definition-form
      (lambda _%$args188091%_
        (apply make-instance gx#definition-form::t _%$args188091%_)))
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
      (make-class-type
       'gx#top-special-form::t
       'top-special-form
       (list gx#special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#top-special-form?
      (__make-class-predicate gx#top-special-form::t))
    (define gx#make-top-special-form
      (lambda _%$args188088%_
        (apply make-instance gx#top-special-form::t _%$args188088%_)))
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
      (make-class-type
       'gx#module-special-form::t
       'module-special-form
       (list gx#top-special-form::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#module-special-form?
      (__make-class-predicate gx#module-special-form::t))
    (define gx#make-module-special-form
      (lambda _%$args188085%_
        (apply make-instance gx#module-special-form::t _%$args188085%_)))
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
      (make-class-type
       'gx#feature-expander::t
       'feature-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#feature-expander?
      (__make-class-predicate gx#feature-expander::t))
    (define gx#make-feature-expander
      (lambda _%$args188082%_
        (apply make-instance gx#feature-expander::t _%$args188082%_)))
    (define gx#feature-expander-e
      (__make-class-slot-accessor gx#feature-expander::t 'e))
    (define gx#feature-expander-e-set!
      (__make-class-slot-mutator gx#feature-expander::t 'e))
    (define gx#&feature-expander-e
      (__make-class-slot-unchecked-accessor gx#feature-expander::t 'e))
    (define gx#&feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#feature-expander::t 'e))
    (define gx#private-feature-expander::t
      (make-class-type
       'gx#private-feature-expander::t
       'private-feature-expander
       (list gx#feature-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#private-feature-expander?
      (__make-class-predicate gx#private-feature-expander::t))
    (define gx#make-private-feature-expander
      (lambda _%$args188079%_
        (apply make-instance gx#private-feature-expander::t _%$args188079%_)))
    (define gx#private-feature-expander-e
      (__make-class-slot-accessor gx#private-feature-expander::t 'e))
    (define gx#private-feature-expander-e-set!
      (__make-class-slot-mutator gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e
      (__make-class-slot-unchecked-accessor gx#private-feature-expander::t 'e))
    (define gx#&private-feature-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#private-feature-expander::t 'e))
    (define gx#reserved-expander::t
      (make-class-type
       'gx#reserved-expander::t
       'reserved-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#reserved-expander?
      (__make-class-predicate gx#reserved-expander::t))
    (define gx#make-reserved-expander
      (lambda _%$args188076%_
        (apply make-instance gx#reserved-expander::t _%$args188076%_)))
    (define gx#reserved-expander-e
      (__make-class-slot-accessor gx#reserved-expander::t 'e))
    (define gx#reserved-expander-e-set!
      (__make-class-slot-mutator gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e
      (__make-class-slot-unchecked-accessor gx#reserved-expander::t 'e))
    (define gx#&reserved-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#reserved-expander::t 'e))
    (define gx#macro-expander::t
      (make-class-type
       'gx#macro-expander::t
       'macro-expander
       (list gx#expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#macro-expander? (__make-class-predicate gx#macro-expander::t))
    (define gx#make-macro-expander
      (lambda _%$args188073%_
        (apply make-instance gx#macro-expander::t _%$args188073%_)))
    (define gx#macro-expander-e
      (__make-class-slot-accessor gx#macro-expander::t 'e))
    (define gx#macro-expander-e-set!
      (__make-class-slot-mutator gx#macro-expander::t 'e))
    (define gx#&macro-expander-e
      (__make-class-slot-unchecked-accessor gx#macro-expander::t 'e))
    (define gx#&macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#macro-expander::t 'e))
    (define gx#rename-macro-expander::t
      (make-class-type
       'gx#rename-macro-expander::t
       'rename-macro-expander
       (list gx#macro-expander::t)
       '()
       (cons (cons 'struct: '#t) '())
       '#f))
    (define gx#rename-macro-expander?
      (__make-class-predicate gx#rename-macro-expander::t))
    (define gx#make-rename-macro-expander
      (lambda _%$args188070%_
        (apply make-instance gx#rename-macro-expander::t _%$args188070%_)))
    (define gx#rename-macro-expander-e
      (__make-class-slot-accessor gx#rename-macro-expander::t 'e))
    (define gx#rename-macro-expander-e-set!
      (__make-class-slot-mutator gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e
      (__make-class-slot-unchecked-accessor gx#rename-macro-expander::t 'e))
    (define gx#&rename-macro-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#rename-macro-expander::t 'e))
    (define gx#user-expander::t
      (make-class-type
       'gx#user-expander::t
       'user-expander
       (list gx#macro-expander::t)
       '(context phi)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#user-expander? (__make-class-predicate gx#user-expander::t))
    (define gx#make-user-expander
      (lambda _%$args188067%_
        (apply make-instance gx#user-expander::t _%$args188067%_)))
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
      (make-class-type
       'gx#expander-mark::t
       'expander-mark
       (list)
       '(subst context phi trace)
       (cons (cons 'struct: '#t) '((print:)))
       '#f))
    (define gx#expander-mark? (__make-class-predicate gx#expander-mark::t))
    (define gx#make-expander-mark
      (lambda _%$args188064%_
        (apply make-instance gx#expander-mark::t _%$args188064%_)))
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
      (lambda (_%ctx188048%_
               _%message188049%_
               _%stx188050%_
               .
               _%details188051%_)
        (let ((_%ctx188062%_
               (let ((_%$e188053%_ _%ctx188048%_))
                 (if _%$e188053%_
                     _%$e188053%_
                     (let ((_%$e188056%_ (gx#core-context-top__0)))
                       (if _%$e188056%_
                           (list 'expand
                                 (##structure-ref
                                  _%$e188056%_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                           '#f))))))
          (raise (make-syntax-error
                  _%message188049%_
                  (cons _%stx188050%_ _%details188051%_)
                  _%ctx188062%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx188035%_ _%expression?188036%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx188035%_ _%expression?188036%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx188041%_)
        (let ((_%expression?188043%_ '#f))
          (gx#eval-syntax__% _%stx188041%_ _%expression?188043%_))))
    (define gx#eval-syntax
      (lambda _g189683_
        (let ((_g189684_ (##length _g189683_)))
          (cond ((##fx= _g189684_ 1) (apply gx#eval-syntax__0 _g189683_))
                ((##fx= _g189684_ 2) (apply gx#eval-syntax__% _g189683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g189683_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx188020%_ _%expression?188021%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx188020%_ _%expression?188021%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx188027%_)
        (let ((_%expression?188029%_ '#f))
          (gx#eval-syntax+1__% _%stx188027%_ _%expression?188029%_))))
    (define gx#eval-syntax+1
      (lambda _g189685_
        (let ((_g189686_ (##length _g189685_)))
          (cond ((##fx= _g189686_ 1) (apply gx#eval-syntax+1__0 _g189685_))
                ((##fx= _g189686_ 2) (apply gx#eval-syntax+1__% _g189685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g189685_))))))
    (define gx#eval-expression+1
      (lambda (_%stx188017%_) (gx#eval-syntax+1__% _%stx188017%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx188015%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx188015%_))))
    (define gx#core-expand__%
      (lambda (_%stx188002%_ _%expression?188003%_)
        (if _%expression?188003%_
            (gx#core-expand-expression _%stx188002%_)
            (gx#core-expand-top _%stx188002%_))))
    (define gx#core-expand__0
      (lambda (_%stx188008%_)
        (let ((_%expression?188010%_ '#f))
          (gx#core-expand__% _%stx188008%_ _%expression?188010%_))))
    (define gx#core-expand
      (lambda _g189687_
        (let ((_g189688_ (##length _g189687_)))
          (cond ((##fx= _g189688_ 1) (apply gx#core-expand__0 _g189687_))
                ((##fx= _g189688_ 2) (apply gx#core-expand__% _g189687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g189687_))))))
    (define gx#core-expand-top
      (lambda (_%stx187969%_)
        (let* ((_%stx187971%_ (gx#core-expand*__0 _%stx187969%_))
               (_%$%e187972187979%_ _%stx187971%_)
               (_%$%E187974187983%_
                (lambda () (gx#core-expand-expression _%stx187971%_)))
               (_%$%E187973187997%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187972187979%_)
                      (let ((_%$%e187975187987%_
                             (gx#syntax-e _%$%e187972187979%_)))
                        (let ((_%$%hd187976187990%_
                               (##car _%$%e187975187987%_))
                              (_%$%tl187977187992%_
                               (##cdr _%$%e187975187987%_)))
                          (let ((_%form187995%_ _%$%hd187976187990%_))
                            (if (gx#core-bound-identifier?__0 _%form187995%_)
                                _%stx187971%_
                                (_%$%E187974187983%_)))))
                      (_%$%E187974187983%_)))))
          (_%$%E187973187997%_))))
    (define gx#core-expand-expression
      (lambda (_%stx187901%_)
        (letrec ((_%sealed-expression?187903%_
                  (lambda (_%hd187939%_)
                    (if (gx#sealed-syntax? _%hd187939%_)
                        (let* ((_%$%e187940187947%_ _%hd187939%_)
                               (_%$%E187942187951%_ (lambda () '#f))
                               (_%$%E187941187965%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e187940187947%_)
                                      (let ((_%$%e187943187955%_
                                             (gx#syntax-e
                                              _%$%e187940187947%_)))
                                        (let ((_%$%hd187944187958%_
                                               (##car _%$%e187943187955%_))
                                              (_%$%tl187945187960%_
                                               (##cdr _%$%e187943187955%_)))
                                          (let ((_%form187963%_
                                                 _%$%hd187944187958%_))
                                            (gx#core-bound-identifier?__%
                                             _%form187963%_
                                             gx#expression-form-binding?))))
                                      (_%$%E187942187951%_)))))
                          (_%$%E187941187965%_))
                        '#f)))
                 (_%illegal-expression187904%_
                  (lambda (_%hd187936%_ . _%_187937%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx187901%_
                     _%hd187936%_)))
                 (_%expand-e187905%_
                  (lambda (_%form187928%_ _%hd187929%_)
                    (let ((_%bind187931%_
                           (if (##structure-instance-of?
                                _%form187928%_
                                'gx#binding::t)
                               _%form187928%_
                               (gx#resolve-identifier__0 _%form187928%_))))
                      (if (gx#core-expander-binding? _%bind187931%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind187931%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd187929%_
                            (gx#stx-source _%stx187901%_)))
                          (if (##structure-direct-instance-of?
                               _%bind187931%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind187931%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd187929%_
                                 (gx#stx-source _%stx187901%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx187901%_
                               _%form187928%_)))))))
          (let ((_%hd187907%_ (gx#core-expand-head _%stx187901%_)))
            (if (_%sealed-expression?187903%_ _%hd187907%_)
                _%hd187907%_
                (if (gx#stx-pair? _%hd187907%_)
                    (let* ((_%form187911%_ (gx#stx-car _%hd187907%_))
                           (_%bind187913%_
                            (if (gx#identifier? _%form187911%_)
                                (gx#resolve-identifier__0 _%form187911%_)
                                '#f)))
                      (if (or (not _%bind187913%_)
                              (not (gx#core-expander-binding? _%bind187913%_)))
                          (_%expand-e187905%_
                           '%%app
                           (cons '%%app _%hd187907%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind187913%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd187907%_
                               _%illegal-expression187904%_)
                              (if (gx#expression-form-binding? _%bind187913%_)
                                  (_%expand-e187905%_
                                   _%bind187913%_
                                   _%hd187907%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind187913%_)
                                      (gx#core-expand-expression
                                       (_%expand-e187905%_
                                        _%bind187913%_
                                        _%hd187907%_))
                                      (_%illegal-expression187904%_
                                       _%hd187907%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd187907%_)
                        (_%illegal-expression187904%_ _%hd187907%_)
                        (if (gx#identifier? _%hd187907%_)
                            (_%expand-e187905%_
                             '%%ref
                             (cons '%%ref (cons _%hd187907%_ '())))
                            (if (gx#stx-datum? _%hd187907%_)
                                (_%expand-e187905%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd187907%_ '())))
                                (_%illegal-expression187904%_
                                 _%hd187907%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx187896%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx187899%_ (gx#core-expand-expression _%stx187896%_)))
             (values _%stx187899%_ (gx#eval-syntax* _%stx187899%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx187877%_ _%stop?187878%_)
        (let _%lp187880%_ ((_%stx187882%_ _%stx187877%_))
          (if (_%stop?187878%_ _%stx187882%_)
              _%stx187882%_
              (let ((_%rstx187884%_ (gx#core-expand1 _%stx187882%_)))
                (if (eq? _%stx187882%_ _%rstx187884%_)
                    _%stx187882%_
                    (_%lp187880%_ _%rstx187884%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx187889%_)
        (let ((_%stop?187891%_ false))
          (gx#core-expand*__% _%stx187889%_ _%stop?187891%_))))
    (define gx#core-expand*
      (lambda _g189689_
        (let ((_g189690_ (##length _g189689_)))
          (cond ((##fx= _g189690_ 1) (apply gx#core-expand*__0 _g189689_))
                ((##fx= _g189690_ 2) (apply gx#core-expand*__% _g189689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g189689_))))))
    (define gx#core-expand1
      (lambda (_%stx187829%_)
        (letrec ((_%step187831%_
                  (lambda (_%hd187868%_)
                    (let ((_%bind187870%_
                           (gx#resolve-identifier__0 _%hd187868%_)))
                      (if (##structure-instance-of?
                           _%bind187870%_
                           'gx#runtime-binding::t)
                          _%stx187829%_
                          (if (##structure-direct-instance-of?
                               _%bind187870%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind187870%_
                                '5
                                '#f
                                '#f)
                               _%stx187829%_)
                              (if _%bind187870%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx187829%_)
                                  _%stx187829%_)))))))
          (let* ((_%$%e187832187840%_ _%stx187829%_)
                 (_%$%E187838187844%_ (lambda () _%stx187829%_))
                 (_%$%E187834187850%_
                  (lambda ()
                    (let ((_%hd187848%_ _%$%e187832187840%_))
                      (if (gx#identifier? _%hd187848%_)
                          (_%step187831%_ _%hd187848%_)
                          (_%$%E187838187844%_)))))
                 (_%$%E187833187864%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e187832187840%_)
                        (let ((_%$%e187835187854%_
                               (gx#syntax-e _%$%e187832187840%_)))
                          (let ((_%$%hd187836187857%_
                                 (##car _%$%e187835187854%_))
                                (_%$%tl187837187859%_
                                 (##cdr _%$%e187835187854%_)))
                            (let ((_%hd187862%_ _%$%hd187836187857%_))
                              (if (gx#identifier? _%hd187862%_)
                                  (_%step187831%_ _%hd187862%_)
                                  (_%$%E187834187850%_)))))
                        (_%$%E187834187850%_)))))
            (_%$%E187833187864%_)))))
    (define gx#core-expand-head
      (lambda (_%stx187795%_)
        (letrec ((_%stop?187797%_
                  (lambda (_%stx187799%_)
                    (let* ((_%$%e187800187807%_ _%stx187799%_)
                           (_%$%E187802187811%_ (lambda () '#f))
                           (_%$%E187801187825%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187800187807%_)
                                  (let ((_%$%e187803187815%_
                                         (gx#syntax-e _%$%e187800187807%_)))
                                    (let ((_%$%hd187804187818%_
                                           (##car _%$%e187803187815%_))
                                          (_%$%tl187805187820%_
                                           (##cdr _%$%e187803187815%_)))
                                      (let ((_%hd187823%_
                                             _%$%hd187804187818%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd187823%_))))
                                  (_%$%E187802187811%_)))))
                      (_%$%E187801187825%_)))))
          (gx#core-expand*__% _%stx187795%_ _%stop?187797%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx187601%_
               _%expand-special187602%_
               _%begin-form187603%_
               _%expand-e187604%_)
        (letrec ((_%expand-splice187606%_
                  (lambda (_%hd187769%_
                           _%body187770%_
                           _%rest187771%_
                           _%r187772%_)
                    (if (gx#stx-list? _%body187770%_)
                        (_%K187610%_
                         (gx#stx-foldr cons _%rest187771%_ _%body187770%_)
                         _%r187772%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx187601%_
                         _%hd187769%_))))
                 (_%expand-cond-expand187607%_
                  (lambda (_%hd187765%_ _%rest187766%_ _%r187767%_)
                    (_%K187610%_
                     (cons (gx#core-expand-cond-expand% _%hd187765%_)
                           _%rest187766%_)
                     _%r187767%_)))
                 (_%expand-include187608%_
                  (lambda (_%hd187714%_ _%rest187715%_ _%r187716%_)
                    (let* ((_%$%e187717187727%_ _%hd187714%_)
                           (_%$%E187719187731%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187717187727%_)))
                           (_%$%E187718187761%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187717187727%_)
                                  (let ((_%$%e187720187735%_
                                         (gx#syntax-e _%$%e187717187727%_)))
                                    (let ((_%$%hd187721187738%_
                                           (##car _%$%e187720187735%_))
                                          (_%$%tl187722187740%_
                                           (##cdr _%$%e187720187735%_)))
                                      (if (gx#stx-pair? _%$%tl187722187740%_)
                                          (let ((_%$%e187723187743%_
                                                 (gx#syntax-e
                                                  _%$%tl187722187740%_)))
                                            (let ((_%$%hd187724187746%_
                                                   (##car _%$%e187723187743%_))
                                                  (_%$%tl187725187748%_
                                                   (##cdr _%$%e187723187743%_)))
                                              (let ((_%path187751%_
                                                     _%$%hd187724187746%_))
                                                (if (gx#stx-null?
                                                     _%$%tl187725187748%_)
                                                    (if (gx#stx-string?
                                                         _%path187751%_)
                                                        (let* ((_%rpath187753%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path187751%_
                         (gx#stx-source _%hd187714%_)))
                       (_%block187755%_
                        (gx#core-expand-include%__%
                         _%hd187714%_
                         _%rpath187753%_))
                       (_%rbody187758%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block187755%_
                            _%expand-special187602%_
                            '#f
                            _%expand-e187604%_))
                         gx#current-expander-path
                         (cons _%rpath187753%_ (gx#current-expander-path)))))
                  (_%K187610%_
                   _%rest187715%_
                   (append _%rbody187758%_ _%r187716%_)))
                (_%$%E187719187731%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187719187731%_)))))
                                          (_%$%E187719187731%_))))
                                  (_%$%E187719187731%_)))))
                      (_%$%E187718187761%_))))
                 (_%expand-expression187609%_
                  (lambda (_%hd187710%_ _%rest187711%_ _%r187712%_)
                    (_%K187610%_
                     _%rest187711%_
                     (cons (_%expand-e187604%_ _%hd187710%_) _%r187712%_))))
                 (_%K187610%_
                  (lambda (_%rest187640%_ _%r187641%_)
                    (let* ((_%$%e187642187649%_ _%rest187640%_)
                           (_%$%E187644187653%_
                            (lambda ()
                              (if _%begin-form187603%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form187603%_
                                    (reverse _%r187641%_))
                                   (gx#stx-source _%stx187601%_))
                                  _%r187641%_)))
                           (_%$%E187643187706%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187642187649%_)
                                  (let ((_%$%e187645187657%_
                                         (gx#syntax-e _%$%e187642187649%_)))
                                    (let ((_%$%hd187646187660%_
                                           (##car _%$%e187645187657%_))
                                          (_%$%tl187647187662%_
                                           (##cdr _%$%e187645187657%_)))
                                      (let* ((_%hd187665%_
                                              _%$%hd187646187660%_)
                                             (_%rest187667%_
                                              _%$%tl187647187662%_)
                                             (_%hd187669%_
                                              (gx#core-expand-head
                                               _%hd187665%_))
                                             (_%$%e187670187677%_ _%hd187669%_)
                                             (_%$%E187672187681%_
                                              (lambda ()
                                                (_%expand-expression187609%_
                                                 _%hd187669%_
                                                 _%rest187667%_
                                                 _%r187641%_)))
                                             (_%$%E187671187702%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e187670187677%_)
                                                    (let ((_%$%e187673187685%_
                                                           (gx#syntax-e
                                                            _%$%e187670187677%_)))
                                                      (let ((_%$%hd187674187688%_
                                                             (##car _%$%e187673187685%_))
                                                            (_%$%tl187675187690%_
                                                             (##cdr _%$%e187673187685%_)))
                                                        (let* ((_%form187693%_
                                                                _%$%hd187674187688%_)
                                                               (_%body187695%_
                                                                _%$%tl187675187690%_)
                                                               (_%bind187697%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form187693%_)
                            (gx#resolve-identifier__0 _%form187693%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind187697%_)
                      (let ((_%$e187699%_
                             (##unchecked-structure-ref
                              _%bind187697%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e187699%_)
                            (_%expand-splice187606%_
                             _%hd187669%_
                             _%body187695%_
                             _%rest187667%_
                             _%r187641%_)
                            (if (eq? '%#cond-expand _%$e187699%_)
                                (_%expand-cond-expand187607%_
                                 _%hd187669%_
                                 _%rest187667%_
                                 _%r187641%_)
                                (if (eq? '%#include _%$e187699%_)
                                    (_%expand-include187608%_
                                     _%hd187669%_
                                     _%rest187667%_
                                     _%r187641%_)
                                    (_%expand-special187602%_
                                     _%hd187669%_
                                     _%K187610%_
                                     _%rest187667%_
                                     _%r187641%_)))))
                      (_%expand-expression187609%_
                       _%hd187669%_
                       _%rest187667%_
                       _%r187641%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187672187681%_)))))
                                        (_%$%E187671187702%_))))
                                  (_%$%E187644187653%_)))))
                      (_%$%E187643187706%_)))))
          (let* ((_%$%e187611187618%_ _%stx187601%_)
                 (_%$%E187613187622%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e187611187618%_)))
                 (_%$%E187612187636%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e187611187618%_)
                        (let ((_%$%e187614187626%_
                               (gx#syntax-e _%$%e187611187618%_)))
                          (let ((_%$%hd187615187629%_
                                 (##car _%$%e187614187626%_))
                                (_%$%tl187616187631%_
                                 (##cdr _%$%e187614187626%_)))
                            (let ((_%body187634%_ _%$%tl187616187631%_))
                              (if (gx#stx-list? _%body187634%_)
                                  (_%K187610%_ _%body187634%_ '())
                                  (_%$%E187613187622%_)))))
                        (_%$%E187613187622%_)))))
            (_%$%E187612187636%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx187777%_ _%expand-special187778%_)
        (let* ((_%begin-form187780%_ '%#begin)
               (_%expand-e187782%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx187777%_
           _%expand-special187778%_
           _%begin-form187780%_
           _%expand-e187782%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx187784%_ _%expand-special187785%_ _%begin-form187786%_)
        (let ((_%expand-e187788%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx187784%_
           _%expand-special187785%_
           _%begin-form187786%_
           _%expand-e187788%_))))
    (define gx#core-expand-block
      (lambda _g189691_
        (let ((_g189692_ (##length _g189691_)))
          (cond ((##fx= _g189692_ 2) (apply gx#core-expand-block__0 _g189691_))
                ((##fx= _g189692_ 3) (apply gx#core-expand-block__1 _g189691_))
                ((##fx= _g189692_ 4) (apply gx#core-expand-block__% _g189691_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g189691_))))))
    (define gx#core-expand-block*
      (lambda (_%stx187549%_ _%expand-special187550%_)
        (let* ((_%$%g187551187562%_
                (gx#core-expand-block__1
                 _%stx187549%_
                 _%expand-special187550%_
                 '#f))
               (_%$%E187555187566%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g187551187562%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K187560187597%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx187549%_)))
                (_%$%K187557187583%_ (lambda (_%expr187581%_) _%expr187581%_))
                (_%$%K187556187572%_
                 (lambda (_%body187570%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body187570%_))
                    (gx#stx-source _%stx187549%_)))))
            (let ((_%$%try-match187553187593%_
                   (lambda ()
                     (if (pair? _%$%g187551187562%_)
                         (let ((_%$%tl187559187588%_
                                (##cdr _%$%g187551187562%_))
                               (_%$%hd187558187586%_
                                (##car _%$%g187551187562%_)))
                           (if (null? _%$%tl187559187588%_)
                               (let ((_%expr187591%_ _%$%hd187558187586%_))
                                 (_%$%K187557187583%_ _%expr187591%_))
                               (let ((_%body187575%_ _%$%g187551187562%_))
                                 (_%$%K187556187572%_ _%body187575%_))))
                         (let ((_%body187575%_ _%$%g187551187562%_))
                           (_%$%K187556187572%_ _%body187575%_))))))
              (if (null? _%$%g187551187562%_)
                  (_%$%K187560187597%_)
                  (_%$%try-match187553187593%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx187375%_)
        (letrec ((_%satisfied?187377%_
                  (lambda (_%condition187478%_)
                    (let* ((_%$%e187479187494%_ _%condition187478%_)
                           (_%$%E187489187498%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187479187494%_)))
                           (_%$%E187482187517%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187479187494%_)
                                  (let ((_%$%e187490187502%_
                                         (gx#syntax-e _%$%e187479187494%_)))
                                    (let ((_%$%hd187491187505%_
                                           (##car _%$%e187490187502%_))
                                          (_%$%tl187492187507%_
                                           (##cdr _%$%e187490187502%_)))
                                      (let* ((_%combinator187510%_
                                              _%$%hd187491187505%_)
                                             (_%body187512%_
                                              _%$%tl187492187507%_))
                                        (if (gx#stx-list? _%body187512%_)
                                            (let ((_%$e187514%_
                                                   (gx#stx-e
                                                    _%combinator187510%_)))
                                              (if (eq? 'not _%$e187514%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?187377%_
                                                        _%body187512%_))
                                                  (if (eq? 'and _%$e187514%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?187377%_
                                                       _%body187512%_)
                                                      (if (eq? 'or
                                                               _%$e187514%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?187377%_
                                                           _%body187512%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e187514%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body187512%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx187375%_
                       _%combinator187510%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E187489187498%_)))))
                                  (_%$%E187489187498%_))))
                           (_%$%E187481187539%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187479187494%_)
                                  (let ((_%$%e187483187521%_
                                         (gx#syntax-e _%$%e187479187494%_)))
                                    (let ((_%$%hd187484187524%_
                                           (##car _%$%e187483187521%_))
                                          (_%$%tl187485187526%_
                                           (##cdr _%$%e187483187521%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187484187524%_)
                                               (gx#core-identifier=?
                                                _%$%hd187484187524%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl187485187526%_)
                                              (let ((_%$%e187486187529%_
                                                     (gx#syntax-e
                                                      _%$%tl187485187526%_)))
                                                (let ((_%$%hd187487187532%_
                                                       (##car _%$%e187486187529%_))
                                                      (_%$%tl187488187534%_
                                                       (##cdr _%$%e187486187529%_)))
                                                  (let ((_%expr187537%_
                                                         _%$%hd187487187532%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl187488187534%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr187537%_)
                                                        (_%$%E187482187517%_)))))
                                              (_%$%E187482187517%_))
                                          (_%$%E187482187517%_))))
                                  (_%$%E187482187517%_))))
                           (_%$%E187480187545%_
                            (lambda ()
                              (let ((_%id187543%_ _%$%e187479187494%_))
                                (if (gx#identifier? _%id187543%_)
                                    (gx#core-bound-identifier?__%
                                     _%id187543%_
                                     gx#feature-binding?)
                                    (_%$%E187481187539%_))))))
                      (_%$%E187480187545%_))))
                 (_%loop187378%_
                  (lambda (_%rest187408%_)
                    (let* ((_%$%e187409187417%_ _%rest187408%_)
                           (_%$%E187415187421%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187409187417%_)))
                           (_%$%E187411187425%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e187409187417%_)
                                  '()
                                  (_%$%E187415187421%_))))
                           (_%$%E187410187474%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187409187417%_)
                                  (let ((_%$%e187412187429%_
                                         (gx#syntax-e _%$%e187409187417%_)))
                                    (let ((_%$%hd187413187432%_
                                           (##car _%$%e187412187429%_))
                                          (_%$%tl187414187434%_
                                           (##cdr _%$%e187412187429%_)))
                                      (let* ((_%hd187437%_
                                              _%$%hd187413187432%_)
                                             (_%rest187439%_
                                              _%$%tl187414187434%_)
                                             (_%$%e187440187447%_ _%hd187437%_)
                                             (_%$%E187442187451%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e187440187447%_)))
                                             (_%$%E187441187470%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e187440187447%_)
                                                    (let ((_%$%e187443187455%_
                                                           (gx#syntax-e
                                                            _%$%e187440187447%_)))
                                                      (let ((_%$%hd187444187458%_
                                                             (##car _%$%e187443187455%_))
                                                            (_%$%tl187445187460%_
                                                             (##cdr _%$%e187443187455%_)))
                                                        (let* ((_%condition187463%_
                                                                _%$%hd187444187458%_)
                                                               (_%body187465%_
                                                                _%$%tl187445187460%_))
                                                          (if (gx#stx-eq?
                                                               _%condition187463%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest187439%_)
                          _%body187465%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx187375%_
                           _%hd187437%_))
                      (if (_%satisfied?187377%_ _%condition187463%_)
                          _%body187465%_
                          (_%loop187378%_ _%rest187439%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187442187451%_)))))
                                        (_%$%E187441187470%_))))
                                  (_%$%E187411187425%_)))))
                      (_%$%E187410187474%_)))))
          (let* ((_%$%e187379187386%_ _%stx187375%_)
                 (_%$%E187381187390%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e187379187386%_)))
                 (_%$%E187380187404%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e187379187386%_)
                        (let ((_%$%e187382187394%_
                               (gx#syntax-e _%$%e187379187386%_)))
                          (let ((_%$%hd187383187397%_
                                 (##car _%$%e187382187394%_))
                                (_%$%tl187384187399%_
                                 (##cdr _%$%e187382187394%_)))
                            (let ((_%clauses187402%_ _%$%tl187384187399%_))
                              (if (gx#stx-list? _%clauses187402%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop187378%_ _%clauses187402%_))
                                  (_%$%E187381187390%_)))))
                        (_%$%E187381187390%_)))))
            (_%$%E187380187404%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx187318%_ _%rpath187319%_)
        (let* ((_%$%e187320187330%_ _%stx187318%_)
               (_%$%E187322187334%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187320187330%_)))
               (_%$%E187321187361%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187320187330%_)
                      (let ((_%$%e187323187338%_
                             (gx#syntax-e _%$%e187320187330%_)))
                        (let ((_%$%hd187324187341%_
                               (##car _%$%e187323187338%_))
                              (_%$%tl187325187343%_
                               (##cdr _%$%e187323187338%_)))
                          (if (gx#stx-pair? _%$%tl187325187343%_)
                              (let ((_%$%e187326187346%_
                                     (gx#syntax-e _%$%tl187325187343%_)))
                                (let ((_%$%hd187327187349%_
                                       (##car _%$%e187326187346%_))
                                      (_%$%tl187328187351%_
                                       (##cdr _%$%e187326187346%_)))
                                  (let ((_%path187354%_ _%$%hd187327187349%_))
                                    (if (gx#stx-null? _%$%tl187328187351%_)
                                        (if (gx#stx-string? _%path187354%_)
                                            (let ((_%rpath187359%_
                                                   (let ((_%$e187356%_
                                                          _%rpath187319%_))
                                                     (if _%$e187356%_
                                                         _%$e187356%_
                                                         (gx#core-resolve-path__%
                                                          _%path187354%_
                                                          (gx#stx-source
                                                           _%stx187318%_))))))
                                              (if (member _%rpath187359%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx187318%_
                                                   (##append
                                                    (##member
                                                     _%rpath187359%_
                                                     (reverse (gx#current-expander-path)))
                                                    (cons _%rpath187359%_
                                                          '())))
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath187359%_))
                                                    (gx#stx-source
                                                     _%stx187318%_)))))
                                            (_%$%E187322187334%_))
                                        (_%$%E187322187334%_)))))
                              (_%$%E187322187334%_))))
                      (_%$%E187322187334%_)))))
          (_%$%E187321187361%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx187368%_)
        (let ((_%rpath187370%_ '#f))
          (gx#core-expand-include%__% _%stx187368%_ _%rpath187370%_))))
    (define gx#core-expand-include%
      (lambda _g189693_
        (let ((_g189694_ (##length _g189693_)))
          (cond ((##fx= _g189694_ 1)
                 (apply gx#core-expand-include%__0 _g189693_))
                ((##fx= _g189694_ 2)
                 (apply gx#core-expand-include%__% _g189693_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g189693_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K187284%_ _%stx187285%_ _%method187286%_)
        (if (procedure? _%K187284%_)
            (let ((_%$e187289%_ (gx#stx-source _%stx187285%_)))
              (if _%$e187289%_
                  (gx#stx-wrap-source (_%K187284%_ _%stx187285%_) _%$e187289%_)
                  (_%K187284%_ _%stx187285%_)))
            (let ((_%$e187297%_
                   (bound-method-ref _%K187284%_ _%method187286%_)))
              (if _%$e187297%_
                  (gx#core-apply-expander__%
                   _%$e187297%_
                   _%stx187285%_
                   _%method187286%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx187285%_
                   _%method187286%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K187308%_ _%stx187309%_)
        (let ((_%method187311%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K187308%_
           _%stx187309%_
           _%method187311%_))))
    (define gx#core-apply-expander
      (lambda _g189695_
        (let ((_g189696_ (##length _g189695_)))
          (cond ((##fx= _g189696_ 2)
                 (apply gx#core-apply-expander__0 _g189695_))
                ((##fx= _g189696_ 3)
                 (apply gx#core-apply-expander__% _g189695_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g189695_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self187269%_ _%stx187270%_)
        (let ((_%self187273%_ _%self187269%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx187270%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self187112%_ _%stx187113%_)
        (let* ((_%self187116%_ _%self187112%_)
               (_%$%self187125187131%_ _%self187116%_)
               (_%$%E187127187134%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self187125187131%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K187128187139%_
                (lambda (_%K187137%_)
                  (gx#core-apply-expander__0 _%K187137%_ _%stx187113%_)))
               (_%$%e187129187142%_
                (##unchecked-structure-ref _%$%self187125187131%_ '1 '#f '#f))
               (_%K187145%_ _%$%e187129187142%_))
          (_%$%K187128187139%_ _%K187145%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self186955%_ _%stx186956%_)
        (let ((_%self186959%_ _%self186955%_))
          (if (gx#sealed-syntax? _%stx186956%_)
              _%stx186956%_
              (let* ((_%$%self186968186974%_ _%self186959%_)
                     (_%$%E186970186977%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self186968186974%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K186971186982%_
                      (lambda (_%K186980%_)
                        (gx#core-apply-expander__0 _%K186980%_ _%stx186956%_)))
                     (_%$%e186972186985%_
                      (##unchecked-structure-ref
                       _%$%self186968186974%_
                       '1
                       '#f
                       '#f))
                     (_%K186988%_ _%$%e186972186985%_))
                (_%$%K186971186982%_ _%K186988%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self186805%_ _%stx186806%_ _%top?186807%_)
        (let ((_%self186810%_ _%self186805%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx186806%_))
                (force-output))
              '#!void)
          (if (_%top?186807%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self186810%_
               _%stx186806%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx186806%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self186824%_ _%stx186825%_)
        (let ((_%top?186827%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self186824%_
           _%stx186825%_
           _%top?186827%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g189697_
        (let ((_g189698_ (##length _g189697_)))
          (cond ((##fx= _g189698_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g189697_))
                ((##fx= _g189698_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g189697_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g189697_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self186668%_ _%stx186669%_)
        (let ((_%self186672%_ _%self186668%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self186672%_
           _%stx186669%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self186483%_ _%stx186484%_)
        (let* ((_%self186487%_ _%self186483%_)
               (_%$%self186496186502%_ _%self186487%_)
               (_%$%E186498186505%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self186496186502%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K186499186538%_
                (lambda (_%id186508%_)
                  (let* ((_%$%e186509186516%_ _%stx186484%_)
                         (_%$%E186511186520%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e186509186516%_)))
                         (_%$%E186510186534%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e186509186516%_)
                                (let ((_%$%e186512186524%_
                                       (gx#syntax-e _%$%e186509186516%_)))
                                  (let ((_%$%hd186513186527%_
                                         (##car _%$%e186512186524%_))
                                        (_%$%tl186514186529%_
                                         (##cdr _%$%e186512186524%_)))
                                    (let ((_%body186532%_
                                           _%$%tl186514186529%_))
                                      (gx#core-cons
                                       _%id186508%_
                                       _%body186532%_))))
                                (_%$%E186511186520%_)))))
                    (_%$%E186510186534%_))))
               (_%$%e186500186541%_
                (##unchecked-structure-ref _%$%self186496186502%_ '1 '#f '#f))
               (_%id186544%_ _%$%e186500186541%_))
          (_%$%K186499186538%_ _%id186544%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self186310%_ _%stx186311%_ _%method186312%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx186311%_))
              (force-output))
            '#!void)
        (let* ((_%$%self186313186321%_ _%self186310%_)
               (_%$%E186315186324%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self186313186321%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K186316186331%_
                (lambda (_%phi186327%_ _%ctx186328%_ _%K186329%_)
                  (gx#core-apply-user-macro
                   _%K186329%_
                   _%stx186311%_
                   _%ctx186328%_
                   _%phi186327%_
                   _%method186312%_))))
          (if (##structure-instance-of?
               _%$%self186313186321%_
               'gx#user-expander::t)
              (let* ((_%$%e186317186334%_
                      (##unchecked-structure-ref
                       _%$%self186313186321%_
                       '1
                       '#f
                       '#f))
                     (_%K186337%_ _%$%e186317186334%_)
                     (_%$%e186318186339%_
                      (##unchecked-structure-ref
                       _%$%self186313186321%_
                       '2
                       '#f
                       '#f))
                     (_%ctx186342%_ _%$%e186318186339%_)
                     (_%$%e186319186344%_
                      (##unchecked-structure-ref
                       _%$%self186313186321%_
                       '3
                       '#f
                       '#f))
                     (_%phi186347%_ _%$%e186319186344%_))
                (_%$%K186316186331%_ _%phi186347%_ _%ctx186342%_ _%K186337%_))
              (_%$%E186315186324%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self186352%_ _%stx186353%_)
        (let ((_%method186355%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self186352%_
           _%stx186353%_
           _%method186355%_))))
    (define gx#core-apply-user-expander
      (lambda _g189699_
        (let ((_g189700_ (##length _g189699_)))
          (cond ((##fx= _g189700_ 2)
                 (apply gx#core-apply-user-expander__0 _g189699_))
                ((##fx= _g189700_ 3)
                 (apply gx#core-apply-user-expander__% _g189699_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g189699_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K186300%_
               _%stx186301%_
               _%ctx186302%_
               _%phi186303%_
               _%method186304%_)
        (let ((_%mark186306%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx186302%_
                _%phi186303%_
                _%stx186301%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K186300%_
               (gx#stx-apply-mark _%stx186301%_ _%mark186306%_)
               _%method186304%_)
              _%mark186306%_))
           gx#current-expander-marks
           (cons _%mark186306%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx186148%_ _%phi186149%_ _%ctx186150%_)
        (let _%lp186152%_ ((_%bind186154%_
                            (gx#core-resolve-identifier__%
                             _%stx186148%_
                             _%phi186149%_
                             _%ctx186150%_)))
          (if (##structure-direct-instance-of?
               _%bind186154%_
               'gx#import-binding::t)
              (_%lp186152%_
               (##unchecked-structure-ref _%bind186154%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind186154%_
                   'gx#alias-binding::t)
                  (_%lp186152%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind186154%_ '5 '#f '#f)
                    _%phi186149%_
                    _%ctx186150%_))
                  _%bind186154%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx186162%_)
        (let* ((_%phi186164%_ (gx#current-expander-phi))
               (_%ctx186166%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx186162%_
           _%phi186164%_
           _%ctx186166%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx186168%_ _%phi186169%_)
        (let ((_%ctx186171%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx186168%_
           _%phi186169%_
           _%ctx186171%_))))
    (define gx#resolve-identifier
      (lambda _g189701_
        (let ((_g189702_ (##length _g189701_)))
          (cond ((##fx= _g189702_ 1)
                 (apply gx#resolve-identifier__0 _g189701_))
                ((##fx= _g189702_ 2)
                 (apply gx#resolve-identifier__1 _g189701_))
                ((##fx= _g189702_ 3)
                 (apply gx#resolve-identifier__% _g189701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g189701_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx186103%_
               _%val186104%_
               _%rebind?186105%_
               _%phi186106%_
               _%ctx186107%_)
        (let ((_%rebind?186112%_
               (if _%rebind?186105%_
                   (if (procedure? _%rebind?186105%_) _%rebind?186105%_ true)
                   gx#core-context-rebind?)))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx186103%_)
           _%val186104%_
           _%rebind?186112%_
           _%phi186106%_
           _%ctx186107%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx186117%_ _%val186118%_)
        (let* ((_%rebind?186120%_ '#f)
               (_%phi186122%_ (gx#current-expander-phi))
               (_%ctx186124%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx186117%_
           _%val186118%_
           _%rebind?186120%_
           _%phi186122%_
           _%ctx186124%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx186126%_ _%val186127%_ _%rebind?186128%_)
        (let* ((_%phi186130%_ (gx#current-expander-phi))
               (_%ctx186132%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx186126%_
           _%val186127%_
           _%rebind?186128%_
           _%phi186130%_
           _%ctx186132%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx186134%_ _%val186135%_ _%rebind?186136%_ _%phi186137%_)
        (let ((_%ctx186139%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx186134%_
           _%val186135%_
           _%rebind?186136%_
           _%phi186137%_
           _%ctx186139%_))))
    (define gx#bind-identifier!
      (lambda _g189703_
        (let ((_g189704_ (##length _g189703_)))
          (cond ((##fx= _g189704_ 2) (apply gx#bind-identifier!__0 _g189703_))
                ((##fx= _g189704_ 3) (apply gx#bind-identifier!__1 _g189703_))
                ((##fx= _g189704_ 4) (apply gx#bind-identifier!__2 _g189703_))
                ((##fx= _g189704_ 5) (apply gx#bind-identifier!__% _g189703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g189703_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx186069%_ _%phi186070%_ _%ctx186071%_)
        (let _%lp186073%_ ((_%e186075%_ _%stx186069%_)
                           (_%marks186076%_ (gx#current-expander-marks)))
          (if (symbol? _%e186075%_)
              (gx#core-resolve-binding
               _%e186075%_
               _%phi186070%_
               _%phi186070%_
               _%ctx186071%_
               (reverse _%marks186076%_))
              (if (gx#identifier-quote? _%e186075%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e186075%_ '1 '#f '#f)
                   _%phi186070%_
                   '0
                   (##unchecked-structure-ref _%e186075%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e186075%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e186075%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e186075%_ '1 '#f '#f)
                       _%phi186070%_
                       _%phi186070%_
                       _%ctx186071%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e186075%_ '3 '#f '#f)
                        _%marks186076%_))
                      (if (##structure-direct-instance-of?
                           _%e186075%_
                           'gx#syntax-wrap::t)
                          (_%lp186073%_
                           (##unchecked-structure-ref _%e186075%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e186075%_ '3 '#f '#f)
                            _%marks186076%_))
                          (if (##structure-instance-of?
                               _%e186075%_
                               'gerbil#AST::t)
                              (_%lp186073%_
                               (##unchecked-structure-ref
                                _%e186075%_
                                '1
                                '#f
                                '#f)
                               _%marks186076%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx186069%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx186087%_)
        (let* ((_%phi186089%_ (gx#current-expander-phi))
               (_%ctx186091%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx186087%_
           _%phi186089%_
           _%ctx186091%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx186093%_ _%phi186094%_)
        (let ((_%ctx186096%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx186093%_
           _%phi186094%_
           _%ctx186096%_))))
    (define gx#core-resolve-identifier
      (lambda _g189705_
        (let ((_g189706_ (##length _g189705_)))
          (cond ((##fx= _g189706_ 1)
                 (apply gx#core-resolve-identifier__0 _g189705_))
                ((##fx= _g189706_ 2)
                 (apply gx#core-resolve-identifier__1 _g189705_))
                ((##fx= _g189706_ 3)
                 (apply gx#core-resolve-identifier__% _g189705_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g189705_))))))
    (define gx#core-resolve-binding
      (lambda (_%id185980%_
               _%phi185981%_
               _%src-phi185982%_
               _%ctx185983%_
               _%marks185984%_)
        (letrec ((_%resolve185986%_
                  (lambda (_%ctx186053%_ _%src-phi186054%_ _%key186055%_)
                    (let _%lp186057%_ ((_%ctx186059%_
                                        (gx#core-context-shift
                                         _%ctx186053%_
                                         _%phi185981%_))
                                       (_%dphi186060%_
                                        (fx- _%phi185981%_ _%src-phi186054%_)))
                      (let ((_%$e186062%_
                             (gx#core-context-resolve
                              _%ctx186059%_
                              _%key186055%_)))
                        (if _%$e186062%_
                            _%$e186062%_
                            (if (fxzero? _%dphi186060%_)
                                '#f
                                (if (fxpositive? _%dphi186060%_)
                                    (_%lp186057%_
                                     (gx#core-context-shift _%ctx186059%_ '-1)
                                     (##fx- _%dphi186060%_ '1))
                                    (_%lp186057%_
                                     (gx#core-context-shift _%ctx186059%_ '1)
                                     (##fx+ _%dphi186060%_ '1))))))))))
          (let _%lp185988%_ ((_%ctx185990%_ _%ctx185983%_)
                             (_%src-phi185991%_ _%src-phi185982%_)
                             (_%rest185992%_ _%marks185984%_))
            (let* ((_%$%rest185993186001%_ _%rest185992%_)
                   (_%$%else185995186009%_
                    (lambda ()
                      (_%resolve185986%_
                       _%ctx185990%_
                       _%src-phi185991%_
                       _%id185980%_)))
                   (_%$%K185997186041%_
                    (lambda (_%rest186012%_ _%hd186013%_)
                      (let* ((_%$%hd186014186020%_ _%hd186013%_)
                             (_%$%E186016186023%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd186014186020%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K186017186033%_
                              (lambda (_%subst186026%_)
                                (let ((_%$e186030%_
                                       (let ((_%key186028%_
                                              (if _%subst186026%_
                                                  (hash-get
                                                   _%subst186026%_
                                                   _%id185980%_)
                                                  '#f)))
                                         (if _%key186028%_
                                             (_%resolve185986%_
                                              _%ctx185990%_
                                              _%src-phi185991%_
                                              _%key186028%_)
                                             '#f))))
                                  (if _%$e186030%_
                                      _%$e186030%_
                                      (_%lp185988%_
                                       (##unchecked-structure-ref
                                        _%hd186013%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd186013%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest186012%_))))))
                        (if (##structure-instance-of?
                             _%$%hd186014186020%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e186018186036%_
                                    (##unchecked-structure-ref
                                     _%$%hd186014186020%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst186039%_ _%$%e186018186036%_))
                              (_%$%K186017186033%_ _%subst186039%_))
                            (_%$%E186016186023%_))))))
              (if (pair? _%$%rest185993186001%_)
                  (let ((_%$%hd185998186044%_ (##car _%$%rest185993186001%_))
                        (_%$%tl185999186046%_ (##cdr _%$%rest185993186001%_)))
                    (let* ((_%hd186049%_ _%$%hd185998186044%_)
                           (_%rest186051%_ _%$%tl185999186046%_))
                      (_%$%K185997186041%_ _%rest186051%_ _%hd186049%_)))
                  (_%$%else185995186009%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key185851%_
               _%val185852%_
               _%rebind?185853%_
               _%phi185854%_
               _%ctx185855%_)
        (letrec ((_%update-binding185857%_
                  (lambda (_%xval185929%_)
                    (if (or (_%rebind?185853%_
                             _%ctx185855%_
                             _%xval185929%_
                             _%val185852%_)
                            (and (##structure-direct-instance-of?
                                  _%xval185929%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval185929%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val185852%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val185852%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval185929%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val185852%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val185852%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval185929%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val185852%_
                        (if (and (##structure-direct-instance-of?
                                  _%val185852%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val185852%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval185929%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val185852%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval185929%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval185929%_
                            (if (and (##structure-direct-instance-of?
                                      _%val185852%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval185929%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key185851%_
                                 (cons (##unchecked-structure-ref
                                        _%val185852%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val185852%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval185929%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval185929%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval185929%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval185929%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key185851%_
                                 _%val185852%_
                                 _%xval185929%_))))))
                 (_%gensubst185858%_
                  (lambda (_%subst185924%_ _%id185925%_)
                    (let ((_%eid185927%_
                           (gensym (if (uninterned-symbol? _%id185925%_)
                                       '%
                                       _%id185925%_))))
                      (hash-put! _%subst185924%_ _%id185925%_ _%eid185927%_)
                      _%eid185927%_)))
                 (_%subst!185859%_
                  (lambda (_%key185861%_)
                    (let* ((_%$%key185862185870%_ _%key185861%_)
                           (_%$%else185864185878%_ (lambda () _%key185861%_))
                           (_%$%K185866185912%_
                            (lambda (_%mark185881%_ _%id185882%_)
                              (let* ((_%$%mark185883185889%_ _%mark185881%_)
                                     (_%$%E185885185892%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark185883185889%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K185886185904%_
                                      (lambda (_%subst185895%_)
                                        (if _%subst185895%_
                                            (let ((_%$e185900%_
                                                   (hash-get
                                                    _%subst185895%_
                                                    _%id185882%_)))
                                              (if _%$e185900%_
                                                  _%$e185900%_
                                                  (_%gensubst185858%_
                                                   _%subst185895%_
                                                   _%id185882%_)))
                                            (let ((_%subst185898%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark185881%_
                                               _%subst185898%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst185858%_
                                               _%subst185898%_
                                               _%id185882%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark185883185889%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e185887185907%_
                                            (##unchecked-structure-ref
                                             _%$%mark185883185889%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst185910%_
                                            _%$%e185887185907%_))
                                      (_%$%K185886185904%_ _%subst185910%_))
                                    (_%$%E185885185892%_))))))
                      (if (pair? _%$%key185862185870%_)
                          (let ((_%$%hd185867185915%_
                                 (##car _%$%key185862185870%_))
                                (_%$%tl185868185917%_
                                 (##cdr _%$%key185862185870%_)))
                            (let* ((_%id185920%_ _%$%hd185867185915%_)
                                   (_%mark185922%_ _%$%tl185868185917%_))
                              (_%$%K185866185912%_
                               _%mark185922%_
                               _%id185920%_)))
                          (_%$%else185864185878%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key185851%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx185855%_ _%phi185854%_)
           (_%subst!185859%_ _%key185851%_)
           _%val185852%_
           _%update-binding185857%_))))
    (define gx#core-bind!__0
      (lambda (_%key185950%_ _%val185951%_)
        (let* ((_%rebind?185953%_ false)
               (_%phi185955%_ (gx#current-expander-phi))
               (_%ctx185957%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key185950%_
           _%val185951%_
           _%rebind?185953%_
           _%phi185955%_
           _%ctx185957%_))))
    (define gx#core-bind!__1
      (lambda (_%key185959%_ _%val185960%_ _%rebind?185961%_)
        (let* ((_%phi185963%_ (gx#current-expander-phi))
               (_%ctx185965%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key185959%_
           _%val185960%_
           _%rebind?185961%_
           _%phi185963%_
           _%ctx185965%_))))
    (define gx#core-bind!__2
      (lambda (_%key185967%_ _%val185968%_ _%rebind?185969%_ _%phi185970%_)
        (let ((_%ctx185972%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key185967%_
           _%val185968%_
           _%rebind?185969%_
           _%phi185970%_
           _%ctx185972%_))))
    (define gx#core-bind!
      (lambda _g189707_
        (let ((_g189708_ (##length _g189707_)))
          (cond ((##fx= _g189708_ 2) (apply gx#core-bind!__0 _g189707_))
                ((##fx= _g189708_ 3) (apply gx#core-bind!__1 _g189707_))
                ((##fx= _g189708_ 4) (apply gx#core-bind!__2 _g189707_))
                ((##fx= _g189708_ 5) (apply gx#core-bind!__% _g189707_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g189707_))))))
    (define gx#core-identifier-key
      (lambda (_%stx185782%_)
        (if (symbol? _%stx185782%_)
            (let* ((_%$%g185784185792%_ (gx#current-expander-marks))
                   (_%$%else185786185800%_ (lambda () _%stx185782%_))
                   (_%$%K185788185805%_
                    (lambda (_%hd185803%_) (cons _%stx185782%_ _%hd185803%_))))
              (if (pair? _%$%g185784185792%_)
                  (let* ((_%$%hd185789185808%_ (##car _%$%g185784185792%_))
                         (_%hd185811%_ _%$%hd185789185808%_))
                    (_%$%K185788185805%_ _%hd185811%_))
                  (_%$%else185786185800%_)))
            (if (gx#identifier? _%stx185782%_)
                (let* ((_%id185814%_ (gx#syntax-local-unwrap _%stx185782%_))
                       (_%eid185816%_ (gx#stx-e _%id185814%_))
                       (_%marks185818%_
                        (gx#stx-identifier-marks* _%id185814%_))
                       (_%$%marks185820185828%_ _%marks185818%_)
                       (_%$%else185822185836%_ (lambda () _%eid185816%_))
                       (_%$%K185824185841%_
                        (lambda (_%hd185839%_)
                          (cons _%eid185816%_ _%hd185839%_))))
                  (if (pair? _%$%marks185820185828%_)
                      (let* ((_%$%hd185825185844%_
                              (##car _%$%marks185820185828%_))
                             (_%hd185847%_ _%$%hd185825185844%_))
                        (_%$%K185824185841%_ _%hd185847%_))
                      (_%$%else185822185836%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx185782%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx185721%_ _%phi185722%_)
        (letrec ((_%make-phi185724%_
                  (lambda (_%super185780%_)
                    (let ((__obj189678
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj189678
                       (##gensym 'phi)
                       _%super185780%_)
                      __obj189678)))
                 (_%make-phi/up185725%_
                  (lambda (_%ctx185775%_ _%super185776%_)
                    (let ((_%ctx+1185778%_
                           (_%make-phi185724%_ _%super185776%_)))
                      (##unchecked-structure-set!
                       _%ctx185775%_
                       _%ctx+1185778%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1185778%_
                       _%ctx185775%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1185778%_)))
                 (_%make-phi/down185726%_
                  (lambda (_%ctx185770%_ _%super185771%_)
                    (let ((_%ctx-1185773%_
                           (_%make-phi185724%_ _%super185771%_)))
                      (##unchecked-structure-set!
                       _%ctx-1185773%_
                       _%ctx185770%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx185770%_
                       _%ctx-1185773%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1185773%_)))
                 (_%shift185727%_
                  (lambda (_%ctx185753%_
                           _%delta185754%_
                           _%make-delta-context185755%_
                           _%phi185756%_
                           _%K185757%_)
                    (let ((_%$e185759%_
                           (##unchecked-structure-ref
                            _%ctx185753%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e185759%_
                          (let* ((_%super185764%_
                                  (_%K185757%_ _%$e185759%_ _%delta185754%_))
                                 (_%ctx+d185766%_
                                  (_%make-delta-context185755%_
                                   _%ctx185753%_
                                   _%super185764%_)))
                            (_%K185757%_
                             _%ctx+d185766%_
                             (fx- _%phi185756%_ _%delta185754%_)))
                          (error '"Bad context" _%ctx185753%_))))))
          (let _%K185729%_ ((_%ctx185731%_ _%ctx185721%_)
                            (_%phi185732%_ _%phi185722%_))
            (if (fxzero? _%phi185732%_)
                _%ctx185731%_
                (if (##structure-instance-of? _%ctx185731%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi185732%_)
                        (let ((_%$e185736%_
                               (##unchecked-structure-ref
                                _%ctx185731%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e185736%_
                              (_%K185729%_
                               _%$e185736%_
                               (##fx- _%phi185732%_ '1))
                              (_%shift185727%_
                               _%ctx185731%_
                               '1
                               _%make-phi/up185725%_
                               _%phi185732%_
                               _%K185729%_)))
                        (let ((_%$e185744%_
                               (##unchecked-structure-ref
                                _%ctx185731%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e185744%_
                              (_%K185729%_
                               _%$e185744%_
                               (##fx+ _%phi185732%_ '1))
                              (_%shift185727%_
                               _%ctx185731%_
                               '-1
                               _%make-phi/down185726%_
                               _%phi185732%_
                               _%K185729%_))))
                    _%ctx185731%_))))))
    (define gx#core-context-get
      (lambda (_%ctx185718%_ _%key185719%_)
        (hash-get
         (##unchecked-structure-ref _%ctx185718%_ '2 '#f '#f)
         _%key185719%_)))
    (define gx#core-context-put!
      (lambda (_%ctx185714%_ _%key185715%_ _%val185716%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx185714%_ '2 '#f '#f)
         _%key185715%_
         _%val185716%_)
        _%val185716%_))
    (define gx#core-context-resolve
      (lambda (_%ctx185700%_ _%key185701%_)
        (let _%lp185703%_ ((_%ctx185705%_ _%ctx185700%_))
          (let ((_%$e185707%_
                 (gx#core-context-get _%ctx185705%_ _%key185701%_)))
            (if _%$e185707%_
                _%$e185707%_
                (let ((_%$e185710%_
                       (if (##structure-instance-of?
                            _%ctx185705%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx185705%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e185710%_ (_%lp185703%_ _%$e185710%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx185689%_ _%key185690%_ _%val185691%_ _%rebind185692%_)
        (let ((_%$e185694%_ (gx#core-context-get _%ctx185689%_ _%key185690%_)))
          (if _%$e185694%_
              (gx#core-context-put!
               _%ctx185689%_
               _%key185690%_
               (_%rebind185692%_ _%$e185694%_))
              (gx#core-context-put!
               _%ctx185689%_
               _%key185690%_
               _%val185691%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx185664%_ _%stop?185665%_)
        (let _%lp185667%_ ((_%ctx185669%_ _%ctx185664%_))
          (if (_%stop?185665%_ _%ctx185669%_)
              _%ctx185669%_
              (if (##structure-instance-of? _%ctx185669%_ 'gx#phi-context::t)
                  (_%lp185667%_
                   (##unchecked-structure-ref _%ctx185669%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx185678%_ (gx#current-expander-context))
               (_%stop?185680%_ gx#top-context?))
          (gx#core-context-top__% _%ctx185678%_ _%stop?185680%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx185682%_)
        (let ((_%stop?185684%_ gx#top-context?))
          (gx#core-context-top__% _%ctx185682%_ _%stop?185684%_))))
    (define gx#core-context-top
      (lambda _g189709_
        (let ((_g189710_ (##length _g189709_)))
          (cond ((##fx= _g189710_ 0) (apply gx#core-context-top__0 _g189709_))
                ((##fx= _g189710_ 1) (apply gx#core-context-top__1 _g189709_))
                ((##fx= _g189710_ 2) (apply gx#core-context-top__% _g189709_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g189709_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx185649%_)
        (let _%lp185651%_ ((_%ctx185653%_ _%ctx185649%_))
          (if (##structure-instance-of? _%ctx185653%_ 'gx#phi-context::t)
              (_%lp185651%_
               (##unchecked-structure-ref _%ctx185653%_ '3 '#f '#f))
              _%ctx185653%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx185659%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx185659%_))))
    (define gx#core-context-root
      (lambda _g189711_
        (let ((_g189712_ (##length _g189711_)))
          (cond ((##fx= _g189712_ 0) (apply gx#core-context-root__0 _g189711_))
                ((##fx= _g189712_ 1) (apply gx#core-context-root__% _g189711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g189711_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx185631%_ . _%ignore185632%_)
        (let ((_%$e185634%_ (gx#current-expander-allow-rebind?)))
          (if _%$e185634%_
              _%$e185634%_
              (if (##structure-instance-of? _%ctx185631%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx185631%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx185631%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx185641%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx185641%_))))
    (define gx#core-context-rebind?
      (lambda _g189713_
        (let ((_g189714_ (##length _g189713_)))
          (cond ((##fx= _g189714_ 0)
                 (apply gx#core-context-rebind?__0 _g189713_))
                ((##fx= _g189714_ 1)
                 (apply gx#core-context-rebind?__% _g189713_))
                ((##fx>= _g189714_ 1)
                 (apply gx#core-context-rebind?__% _g189713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g189713_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx185614%_)
        (let ((_%$e185616%_ (gx#core-context-top__1 _%ctx185614%_)))
          (if _%$e185616%_
              (if (##structure-instance-of? _%$e185616%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e185616%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx185626%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx185626%_))))
    (define gx#core-context-namespace
      (lambda _g189715_
        (let ((_g189716_ (##length _g189715_)))
          (cond ((##fx= _g189716_ 0)
                 (apply gx#core-context-namespace__0 _g189715_))
                ((##fx= _g189716_ 1)
                 (apply gx#core-context-namespace__% _g189715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g189715_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind185600%_ _%is?185601%_)
        (if (##structure-direct-instance-of?
             _%bind185600%_
             'gx#syntax-binding::t)
            (_%is?185601%_
             (##unchecked-structure-ref _%bind185600%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind185606%_)
        (let ((_%is?185608%_ gx#expander?))
          (gx#expander-binding?__% _%bind185606%_ _%is?185608%_))))
    (define gx#expander-binding?
      (lambda _g189717_
        (let ((_g189718_ (##length _g189717_)))
          (cond ((##fx= _g189718_ 1) (apply gx#expander-binding?__0 _g189717_))
                ((##fx= _g189718_ 2) (apply gx#expander-binding?__% _g189717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g189717_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind185597%_)
        (gx#expander-binding?__% _%bind185597%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind185595%_)
        (gx#expander-binding?__% _%bind185595%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind185589%_)
        (letrec ((_%direct-special-form?185591%_
                  (lambda (_%obj185593%_)
                    (##structure-direct-instance-of?
                     _%obj185593%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind185589%_
           _%direct-special-form?185591%_))))
    (define gx#special-form-binding?
      (lambda (_%bind185587%_)
        (gx#expander-binding?__% _%bind185587%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind185578%_)
        (letrec ((_%feature?185580%_
                  (lambda (_%e185582%_)
                    (let ((_%$e185584%_
                           (##structure-instance-of?
                            _%e185582%_
                            'gx#feature-expander::t)))
                      (if _%$e185584%_
                          _%$e185584%_
                          (##structure-instance-of?
                           _%e185582%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind185578%_ _%feature?185580%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind185576%_)
        (gx#expander-binding?__% _%bind185576%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id185563%_ _%bound?185564%_)
        (if (gx#identifier? _%id185563%_)
            (_%bound?185564%_ (gx#resolve-identifier__0 _%id185563%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id185569%_)
        (let ((_%bound?185571%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id185569%_ _%bound?185571%_))))
    (define gx#core-bound-identifier?
      (lambda _g189719_
        (let ((_g189720_ (##length _g189719_)))
          (cond ((##fx= _g189720_ 1)
                 (apply gx#core-bound-identifier?__0 _g189719_))
                ((##fx= _g189720_ 2)
                 (apply gx#core-bound-identifier?__% _g189719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g189719_))))))
    (define gx#core-identifier=?
      (lambda (_%x185553%_ _%y185554%_)
        (letrec ((_%y=?185556%_
                  (lambda (_%xid185560%_)
                    ((if (list? _%y185554%_) memq eq?)
                     _%xid185560%_
                     _%y185554%_))))
          (let ((_%bind185558%_ (gx#resolve-identifier__0 _%x185553%_)))
            (if (##structure-instance-of? _%bind185558%_ 'gx#binding::t)
                (_%y=?185556%_
                 (##unchecked-structure-ref _%bind185558%_ '1 '#f '#f))
                (_%y=?185556%_ (gx#stx-e _%x185553%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e185551%_)
        (if (interned-symbol? _%e185551%_)
            (string-index__0 (symbol->string _%e185551%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx185504%_ _%src185505%_ _%ctx185506%_ _%marks185507%_)
        (if (##structure? _%stx185504%_)
            (let ((_%$e185509%_ (gx#sealed-syntax-unwrap _%stx185504%_)))
              (if _%$e185509%_
                  _%$e185509%_
                  (if (gx#identifier? _%stx185504%_)
                      (let ((_%id185513%_
                             (gx#stx-unwrap__% _%stx185504%_ _%marks185507%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id185513%_ '1 '#f '#f)
                         (let ((_%$e185515%_
                                (##unchecked-structure-ref
                                 _%id185513%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e185515%_ _%$e185515%_ _%src185505%_))
                         _%ctx185506%_
                         (##unchecked-structure-ref _%id185513%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx185504%_)
                       (let ((_%$e185519%_ (gx#stx-source _%stx185504%_)))
                         (if _%$e185519%_ _%$e185519%_ _%src185505%_))
                       _%ctx185506%_
                       (reverse _%marks185507%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx185504%_
             _%src185505%_
             _%ctx185506%_
             (reverse _%marks185507%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx185525%_)
        (let* ((_%src185527%_ '#f)
               (_%ctx185529%_ (gx#current-expander-context))
               (_%marks185531%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx185525%_
           _%src185527%_
           _%ctx185529%_
           _%marks185531%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx185533%_ _%src185534%_)
        (let* ((_%ctx185536%_ (gx#current-expander-context))
               (_%marks185538%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx185533%_
           _%src185534%_
           _%ctx185536%_
           _%marks185538%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx185540%_ _%src185541%_ _%ctx185542%_)
        (let ((_%marks185544%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx185540%_
           _%src185541%_
           _%ctx185542%_
           _%marks185544%_))))
    (define gx#core-quote-syntax
      (lambda _g189721_
        (let ((_g189722_ (##length _g189721_)))
          (cond ((##fx= _g189722_ 1) (apply gx#core-quote-syntax__0 _g189721_))
                ((##fx= _g189722_ 2) (apply gx#core-quote-syntax__1 _g189721_))
                ((##fx= _g189722_ 3) (apply gx#core-quote-syntax__2 _g189721_))
                ((##fx= _g189722_ 4) (apply gx#core-quote-syntax__% _g189721_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g189721_))))))
    (define gx#core-cons
      (lambda (_%hd185500%_ _%tl185501%_)
        (cons (gx#core-quote-syntax__0 _%hd185500%_) _%tl185501%_)))
    (define gx#core-list
      (lambda (_%hd185497%_ . _%rest185498%_)
        (cons (gx#core-quote-syntax__0 _%hd185497%_) _%rest185498%_)))
    (define gx#core-cons*
      (lambda (_%hd185494%_ . _%rest185495%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd185494%_) _%rest185495%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path185463%_ _%rel185464%_)
        (let ((_%path185481%_ (gx#stx-e _%stx-path185463%_))
              (_%reldir185482%_
               (let _%lp185466%_ ((_%relsrc185468%_
                                   (let ((_%$e185478%_
                                          (gx#stx-source _%stx-path185463%_)))
                                     (if _%$e185478%_
                                         _%$e185478%_
                                         _%rel185464%_))))
                 (if (##structure-instance-of? _%relsrc185468%_ 'gerbil#AST::t)
                     (_%lp185466%_
                      (let ((_%$e185471%_ (gx#stx-source _%relsrc185468%_)))
                        (if _%$e185471%_
                            _%$e185471%_
                            (gx#stx-e _%relsrc185468%_))))
                     (if (source-location-path? _%relsrc185468%_)
                         (path-directory
                          (source-location-path _%relsrc185468%_))
                         (if (string? _%relsrc185468%_)
                             (path-directory _%relsrc185468%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path185481%_ (path-normalize _%reldir185482%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path185487%_)
        (let ((_%rel185489%_ '#f))
          (gx#core-resolve-path__% _%stx-path185487%_ _%rel185489%_))))
    (define gx#core-resolve-path
      (lambda _g189723_
        (let ((_g189724_ (##length _g189723_)))
          (cond ((##fx= _g189724_ 1) (apply gx#core-resolve-path__0 _g189723_))
                ((##fx= _g189724_ 2) (apply gx#core-resolve-path__% _g189723_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g189723_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr185419%_ _%ctx185420%_)
        (let* ((_%$%repr185421185428%_ _%repr185419%_)
               (_%$%E185423185432%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr185421185428%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K185424185440%_
                (lambda (_%subs185435%_ _%phi185436%_)
                  (let ((_%subst185438%_
                         (if (null? _%subs185435%_)
                             '#f
                             (list->hash-table-eq _%subs185435%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst185438%_
                     _%ctx185420%_
                     _%phi185436%_
                     '#f)))))
          (if (pair? _%$%repr185421185428%_)
              (let ((_%$%hd185425185443%_ (##car _%$%repr185421185428%_))
                    (_%$%tl185426185445%_ (##cdr _%$%repr185421185428%_)))
                (let* ((_%phi185448%_ _%$%hd185425185443%_)
                       (_%subs185450%_ _%$%tl185426185445%_))
                  (_%$%K185424185440%_ _%subs185450%_ _%phi185448%_)))
              (_%$%E185423185432%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr185455%_)
        (let ((_%ctx185457%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr185455%_ _%ctx185457%_))))
    (define gx#core-deserialize-mark
      (lambda _g189725_
        (let ((_g189726_ (##length _g189725_)))
          (cond ((##fx= _g189726_ 1)
                 (apply gx#core-deserialize-mark__0 _g189725_))
                ((##fx= _g189726_ 2)
                 (apply gx#core-deserialize-mark__% _g189725_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g189725_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx185416%_)
        (gx#stx-rewrap _%stx185416%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx185414%_)
        (gx#stx-unwrap__% _%stx185414%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx185384%_)
        (let* ((_%$%g185385185393%_ (gx#current-expander-marks))
               (_%$%else185387185401%_ (lambda () _%stx185384%_))
               (_%$%K185389185406%_
                (lambda (_%hd185404%_)
                  (gx#stx-apply-mark _%stx185384%_ _%hd185404%_))))
          (if (pair? _%$%g185385185393%_)
              (let* ((_%$%hd185390185409%_ (##car _%$%g185385185393%_))
                     (_%hd185412%_ _%$%hd185390185409%_))
                (_%$%K185389185406%_ _%hd185412%_))
              (_%$%else185387185401%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym185382%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym185382%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx185367%_ _%E185368%_)
        (let ((_%bind185370%_ (gx#resolve-identifier__0 _%stx185367%_)))
          (if (##structure-direct-instance-of?
               _%bind185370%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind185370%_ '5 '#f '#f)
              (_%E185368%_ _%stx185367%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx185375%_)
        (let ((_%E185377%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx185375%_ _%E185377%_))))
    (define gx#syntax-local-e
      (lambda _g189727_
        (let ((_g189728_ (##length _g189727_)))
          (cond ((##fx= _g189728_ 1) (apply gx#syntax-local-e__0 _g189727_))
                ((##fx= _g189728_ 2) (apply gx#syntax-local-e__% _g189727_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g189727_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx185351%_ _%E185352%_)
        (let ((_%e185354%_ (gx#syntax-local-e__% _%stx185351%_ _%E185352%_)))
          (if (##structure-instance-of? _%e185354%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e185354%_ '1 '#f '#f)
              _%e185354%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx185359%_)
        (let ((_%E185361%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx185359%_ _%E185361%_))))
    (define gx#syntax-local-value
      (lambda _g189729_
        (let ((_g189730_ (##length _g189729_)))
          (cond ((##fx= _g189730_ 1)
                 (apply gx#syntax-local-value__0 _g189729_))
                ((##fx= _g189730_ 2)
                 (apply gx#syntax-local-value__% _g189729_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g189729_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx185348%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx185348%_)))))
