(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/core::timestamp 1789839225)
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
      (lambda _%$args189799%_
        (apply make-instance gx#expander-context::t _%$args189799%_)))
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
      (lambda _%$args189796%_
        (apply make-instance gx#root-context::t _%$args189796%_)))
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
      (lambda _%$args189793%_
        (apply make-instance gx#phi-context::t _%$args189793%_)))
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
      (lambda _%$args189790%_
        (apply make-instance gx#top-context::t _%$args189790%_)))
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
      (lambda _%$args189787%_
        (apply make-instance gx#module-context::t _%$args189787%_)))
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
      (lambda _%$args189784%_
        (apply make-instance gx#prelude-context::t _%$args189784%_)))
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
      (lambda _%$args189781%_
        (apply make-instance gx#local-context::t _%$args189781%_)))
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
      (lambda (_%self189754%_ _%id189755%_ _%super189756%_)
        (let ((_%self189759%_ _%self189754%_))
          (if (##fx< '3 (##structure-length _%self189759%_))
              (begin
                (##unchecked-structure-set!
                 _%self189759%_
                 _%id189755%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189759%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189759%_
                 _%super189756%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189759%_
                     '3
                     (##structure-length _%self189759%_))))))
    (define gx#phi-context:::init!__0
      (lambda (_%self189772%_ _%id189773%_)
        (let ((_%super189775%_ (gx#current-expander-context)))
          (gx#phi-context:::init!__%
           _%self189772%_
           _%id189773%_
           _%super189775%_))))
    (define gx#phi-context:::init!
      (lambda _g189841_
        (let ((_g189842_ (##length _g189841_)))
          (cond ((##fx= _g189842_ 2)
                 (apply gx#phi-context:::init!__0 _g189841_))
                ((##fx= _g189842_ 3)
                 (apply gx#phi-context:::init!__% _g189841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#phi-context:::init!
                  _g189841_))))))
    (__bind-method!__% gx#phi-context::t ':init! gx#phi-context:::init! '#f)
    (define gx#local-context:::init!__%
      (lambda (_%self189607%_ _%super189608%_)
        (let ((_%self189611%_ _%self189607%_))
          (if (##fx< '3 (##structure-length _%self189611%_))
              (begin
                (##unchecked-structure-set!
                 _%self189611%_
                 (##gensym 'L)
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189611%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self189611%_
                 _%super189608%_
                 '3
                 '#f
                 '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self189611%_
                     '3
                     (##structure-length _%self189611%_))))))
    (define gx#local-context:::init!__0
      (lambda (_%self189624%_)
        (let ((_%super189626%_ (gx#current-expander-context)))
          (gx#local-context:::init!__% _%self189624%_ _%super189626%_))))
    (define gx#local-context:::init!
      (lambda _g189843_
        (let ((_g189844_ (##length _g189843_)))
          (cond ((##fx= _g189844_ 1)
                 (apply gx#local-context:::init!__0 _g189843_))
                ((##fx= _g189844_ 2)
                 (apply gx#local-context:::init!__% _g189843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#local-context:::init!
                  _g189843_))))))
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
      (lambda _%$args189481%_
        (apply make-instance gx#binding::t _%$args189481%_)))
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
      (lambda (_%self189464%_ _%id189465%_ _%key189466%_ _%phi189467%_)
        (let ((_%self189470%_ _%self189464%_))
          (##unchecked-structure-set! _%self189470%_ _%id189465%_ '1 '#f '#f)
          (##unchecked-structure-set! _%self189470%_ _%key189466%_ '2 '#f '#f)
          (##unchecked-structure-set!
           _%self189470%_
           _%phi189467%_
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
      (lambda _%$args189339%_
        (apply make-instance gx#runtime-binding::t _%$args189339%_)))
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
      (lambda _%$args189336%_
        (apply make-instance gx#local-binding::t _%$args189336%_)))
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
      (lambda _%$args189333%_
        (apply make-instance gx#top-binding::t _%$args189333%_)))
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
      (lambda _%$args189330%_
        (apply make-instance gx#module-binding::t _%$args189330%_)))
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
      (lambda _%$args189327%_
        (apply make-instance gx#extern-binding::t _%$args189327%_)))
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
      (lambda (_%self188943%_
               _%id188944%_
               _%key188945%_
               _%phi188946%_
               _%ctx188947%_)
        (let ((_%self188950%_ _%self188943%_))
          (gx#binding:::init!
           _%self188950%_
           _%id188944%_
           _%key188945%_
           _%phi188946%_)
          (##unchecked-structure-set!
           _%self188950%_
           _%ctx188947%_
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
      (lambda _%$args188696%_
        (apply make-instance gx#syntax-binding::t _%$args188696%_)))
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
      (lambda _%$args188693%_
        (apply make-instance gx#import-binding::t _%$args188693%_)))
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
      (lambda _%$args188690%_
        (apply make-instance gx#alias-binding::t _%$args188690%_)))
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
      (lambda (_%self188672%_
               _%id188673%_
               _%key188674%_
               _%phi188675%_
               _%e188676%_)
        (let ((_%self188679%_ _%self188672%_))
          (gx#binding:::init!
           _%self188679%_
           _%id188673%_
           _%key188674%_
           _%phi188675%_)
          (##unchecked-structure-set! _%self188679%_ _%e188676%_ '5 '#f '#f))))
    (__bind-method!__%
     gx#syntax-binding::t
     ':init!
     gx#syntax-binding:::init!
     '#f)
    (define gx#import-binding:::init!
      (lambda (_%self188530%_
               _%id188531%_
               _%key188532%_
               _%phi188533%_
               _%e188534%_
               _%ctx188535%_
               _%weak?188536%_)
        (let ((_%self188539%_ _%self188530%_))
          (gx#binding:::init!
           _%self188539%_
           _%id188531%_
           _%key188532%_
           _%phi188533%_)
          (##unchecked-structure-set! _%self188539%_ _%e188534%_ '5 '#f '#f)
          (##unchecked-structure-set! _%self188539%_ _%ctx188535%_ '6 '#f '#f)
          (##unchecked-structure-set!
           _%self188539%_
           _%weak?188536%_
           '7
           '#f
           '#f))))
    (__bind-method!__%
     gx#import-binding::t
     ':init!
     gx#import-binding:::init!
     '#f)
    (define gx#alias-binding:::init!
      (lambda (_%self188390%_
               _%id188391%_
               _%key188392%_
               _%phi188393%_
               _%e188394%_)
        (let ((_%self188397%_ _%self188390%_))
          (gx#binding:::init!
           _%self188397%_
           _%id188391%_
           _%key188392%_
           _%phi188393%_)
          (##unchecked-structure-set! _%self188397%_ _%e188394%_ '5 '#f '#f))))
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
      (lambda _%$args188265%_
        (apply make-instance gx#expander::t _%$args188265%_)))
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
      (lambda _%$args188262%_
        (apply make-instance gx#core-expander::t _%$args188262%_)))
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
      (lambda _%$args188259%_
        (apply make-instance gx#expression-form::t _%$args188259%_)))
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
      (lambda _%$args188256%_
        (apply make-instance gx#special-form::t _%$args188256%_)))
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
      (lambda _%$args188253%_
        (apply make-instance gx#definition-form::t _%$args188253%_)))
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
      (lambda _%$args188250%_
        (apply make-instance gx#top-special-form::t _%$args188250%_)))
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
      (lambda _%$args188247%_
        (apply make-instance gx#module-special-form::t _%$args188247%_)))
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
      (lambda _%$args188244%_
        (apply make-instance gx#feature-expander::t _%$args188244%_)))
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
      (lambda _%$args188241%_
        (apply make-instance gx#private-feature-expander::t _%$args188241%_)))
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
      (lambda _%$args188238%_
        (apply make-instance gx#reserved-expander::t _%$args188238%_)))
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
      (lambda _%$args188235%_
        (apply make-instance gx#macro-expander::t _%$args188235%_)))
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
      (lambda _%$args188232%_
        (apply make-instance gx#rename-macro-expander::t _%$args188232%_)))
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
      (lambda _%$args188229%_
        (apply make-instance gx#user-expander::t _%$args188229%_)))
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
      (lambda _%$args188226%_
        (apply make-instance gx#expander-mark::t _%$args188226%_)))
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
      (lambda (_%ctx188210%_
               _%message188211%_
               _%stx188212%_
               .
               _%details188213%_)
        (let ((_%ctx188224%_
               (let ((_%$e188215%_ _%ctx188210%_))
                 (if _%$e188215%_
                     _%$e188215%_
                     (let ((_%$e188218%_ (gx#core-context-top__0)))
                       (if _%$e188218%_
                           (list 'expand
                                 (##structure-ref
                                  _%$e188218%_
                                  '1
                                  gx#expander-context::t
                                  '#f))
                           '#f))))))
          (raise (make-syntax-error
                  _%message188211%_
                  (cons _%stx188212%_ _%details188213%_)
                  _%ctx188224%_
                  (gx#current-expander-context)
                  (gx#current-expander-marks)
                  (gx#current-expander-phi))))))
    (define gx#eval-syntax__%
      (lambda (_%stx188197%_ _%expression?188198%_)
        (gx#eval-syntax*
         (gx#core-expand__% _%stx188197%_ _%expression?188198%_))))
    (define gx#eval-syntax__0
      (lambda (_%stx188203%_)
        (let ((_%expression?188205%_ '#f))
          (gx#eval-syntax__% _%stx188203%_ _%expression?188205%_))))
    (define gx#eval-syntax
      (lambda _g189845_
        (let ((_g189846_ (##length _g189845_)))
          (cond ((##fx= _g189846_ 1) (apply gx#eval-syntax__0 _g189845_))
                ((##fx= _g189846_ 2) (apply gx#eval-syntax__% _g189845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax
                  _g189845_))))))
    (define gx#eval-syntax+1__%
      (lambda (_%stx188182%_ _%expression?188183%_)
        (call-with-parameters__1
         (lambda () (gx#eval-syntax__% _%stx188182%_ _%expression?188183%_))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#eval-syntax+1__0
      (lambda (_%stx188189%_)
        (let ((_%expression?188191%_ '#f))
          (gx#eval-syntax+1__% _%stx188189%_ _%expression?188191%_))))
    (define gx#eval-syntax+1
      (lambda _g189847_
        (let ((_g189848_ (##length _g189847_)))
          (cond ((##fx= _g189848_ 1) (apply gx#eval-syntax+1__0 _g189847_))
                ((##fx= _g189848_ 2) (apply gx#eval-syntax+1__% _g189847_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#eval-syntax+1
                  _g189847_))))))
    (define gx#eval-expression+1
      (lambda (_%stx188179%_) (gx#eval-syntax+1__% _%stx188179%_ '#t)))
    (define gx#eval-syntax*
      (lambda (_%stx188177%_)
        ((gx#current-expander-eval)
         ((gx#current-expander-compile) _%stx188177%_))))
    (define gx#core-expand__%
      (lambda (_%stx188164%_ _%expression?188165%_)
        (if _%expression?188165%_
            (gx#core-expand-expression _%stx188164%_)
            (gx#core-expand-top _%stx188164%_))))
    (define gx#core-expand__0
      (lambda (_%stx188170%_)
        (let ((_%expression?188172%_ '#f))
          (gx#core-expand__% _%stx188170%_ _%expression?188172%_))))
    (define gx#core-expand
      (lambda _g189849_
        (let ((_g189850_ (##length _g189849_)))
          (cond ((##fx= _g189850_ 1) (apply gx#core-expand__0 _g189849_))
                ((##fx= _g189850_ 2) (apply gx#core-expand__% _g189849_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand
                  _g189849_))))))
    (define gx#core-expand-top
      (lambda (_%stx188131%_)
        (let* ((_%stx188133%_ (gx#core-expand*__0 _%stx188131%_))
               (_%$%e188134188141%_ _%stx188133%_)
               (_%$%E188136188145%_
                (lambda () (gx#core-expand-expression _%stx188133%_)))
               (_%$%E188135188159%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e188134188141%_)
                      (let ((_%$%e188137188149%_
                             (gx#syntax-e _%$%e188134188141%_)))
                        (let ((_%$%hd188138188152%_
                               (##car _%$%e188137188149%_))
                              (_%$%tl188139188154%_
                               (##cdr _%$%e188137188149%_)))
                          (let ((_%form188157%_ _%$%hd188138188152%_))
                            (if (gx#core-bound-identifier?__0 _%form188157%_)
                                _%stx188133%_
                                (_%$%E188136188145%_)))))
                      (_%$%E188136188145%_)))))
          (_%$%E188135188159%_))))
    (define gx#core-expand-expression
      (lambda (_%stx188063%_)
        (letrec ((_%sealed-expression?188065%_
                  (lambda (_%hd188101%_)
                    (if (gx#sealed-syntax? _%hd188101%_)
                        (let* ((_%$%e188102188109%_ _%hd188101%_)
                               (_%$%E188104188113%_ (lambda () '#f))
                               (_%$%E188103188127%_
                                (lambda ()
                                  (if (gx#stx-pair? _%$%e188102188109%_)
                                      (let ((_%$%e188105188117%_
                                             (gx#syntax-e
                                              _%$%e188102188109%_)))
                                        (let ((_%$%hd188106188120%_
                                               (##car _%$%e188105188117%_))
                                              (_%$%tl188107188122%_
                                               (##cdr _%$%e188105188117%_)))
                                          (let ((_%form188125%_
                                                 _%$%hd188106188120%_))
                                            (gx#core-bound-identifier?__%
                                             _%form188125%_
                                             gx#expression-form-binding?))))
                                      (_%$%E188104188113%_)))))
                          (_%$%E188103188127%_))
                        '#f)))
                 (_%illegal-expression188066%_
                  (lambda (_%hd188098%_ . _%_188099%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; illegal expression"
                     _%stx188063%_
                     _%hd188098%_)))
                 (_%expand-e188067%_
                  (lambda (_%form188090%_ _%hd188091%_)
                    (let ((_%bind188093%_
                           (if (##structure-instance-of?
                                _%form188090%_
                                'gx#binding::t)
                               _%form188090%_
                               (gx#resolve-identifier__0 _%form188090%_))))
                      (if (gx#core-expander-binding? _%bind188093%_)
                          (gx#core-apply-expander__0
                           (##unchecked-structure-ref
                            _%bind188093%_
                            '5
                            '#f
                            '#f)
                           (gx#stx-wrap-source
                            _%hd188091%_
                            (gx#stx-source _%stx188063%_)))
                          (if (##structure-direct-instance-of?
                               _%bind188093%_
                               'gx#syntax-binding::t)
                              (gx#core-expand-expression
                               (gx#core-apply-expander__0
                                (##unchecked-structure-ref
                                 _%bind188093%_
                                 '5
                                 '#f
                                 '#f)
                                (gx#stx-wrap-source
                                 _%hd188091%_
                                 (gx#stx-source _%stx188063%_))))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; missing expander"
                               _%stx188063%_
                               _%form188090%_)))))))
          (let ((_%hd188069%_ (gx#core-expand-head _%stx188063%_)))
            (if (_%sealed-expression?188065%_ _%hd188069%_)
                _%hd188069%_
                (if (gx#stx-pair? _%hd188069%_)
                    (let* ((_%form188073%_ (gx#stx-car _%hd188069%_))
                           (_%bind188075%_
                            (if (gx#identifier? _%form188073%_)
                                (gx#resolve-identifier__0 _%form188073%_)
                                '#f)))
                      (if (or (not _%bind188075%_)
                              (not (gx#core-expander-binding? _%bind188075%_)))
                          (_%expand-e188067%_
                           '%%app
                           (cons '%%app _%hd188069%_))
                          (if (eq? (##unchecked-structure-ref
                                    _%bind188075%_
                                    '1
                                    '#f
                                    '#f)
                                   '%#begin)
                              (gx#core-expand-block*
                               _%hd188069%_
                               _%illegal-expression188066%_)
                              (if (gx#expression-form-binding? _%bind188075%_)
                                  (_%expand-e188067%_
                                   _%bind188075%_
                                   _%hd188069%_)
                                  (if (gx#direct-special-form-binding?
                                       _%bind188075%_)
                                      (gx#core-expand-expression
                                       (_%expand-e188067%_
                                        _%bind188075%_
                                        _%hd188069%_))
                                      (_%illegal-expression188066%_
                                       _%hd188069%_))))))
                    (if (gx#core-bound-identifier?__0 _%hd188069%_)
                        (_%illegal-expression188066%_ _%hd188069%_)
                        (if (gx#identifier? _%hd188069%_)
                            (_%expand-e188067%_
                             '%%ref
                             (cons '%%ref (cons _%hd188069%_ '())))
                            (if (gx#stx-datum? _%hd188069%_)
                                (_%expand-e188067%_
                                 '%#quote
                                 (cons '%#quote (cons _%hd188069%_ '())))
                                (_%illegal-expression188066%_
                                 _%hd188069%_))))))))))
    (define gx#core-expand-expression+1
      (lambda (_%stx188058%_)
        (call-with-parameters__1
         (lambda ()
           (let ((_%stx188061%_ (gx#core-expand-expression _%stx188058%_)))
             (values _%stx188061%_ (gx#eval-syntax* _%stx188061%_))))
         gx#current-expander-phi
         (##fx+ (gx#current-expander-phi) '1))))
    (define gx#core-expand*__%
      (lambda (_%stx188039%_ _%stop?188040%_)
        (let _%lp188042%_ ((_%stx188044%_ _%stx188039%_))
          (if (_%stop?188040%_ _%stx188044%_)
              _%stx188044%_
              (let ((_%rstx188046%_ (gx#core-expand1 _%stx188044%_)))
                (if (eq? _%stx188044%_ _%rstx188046%_)
                    _%stx188044%_
                    (_%lp188042%_ _%rstx188046%_)))))))
    (define gx#core-expand*__0
      (lambda (_%stx188051%_)
        (let ((_%stop?188053%_ false))
          (gx#core-expand*__% _%stx188051%_ _%stop?188053%_))))
    (define gx#core-expand*
      (lambda _g189851_
        (let ((_g189852_ (##length _g189851_)))
          (cond ((##fx= _g189852_ 1) (apply gx#core-expand*__0 _g189851_))
                ((##fx= _g189852_ 2) (apply gx#core-expand*__% _g189851_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand*
                  _g189851_))))))
    (define gx#core-expand1
      (lambda (_%stx187991%_)
        (letrec ((_%step187993%_
                  (lambda (_%hd188030%_)
                    (let ((_%bind188032%_
                           (gx#resolve-identifier__0 _%hd188030%_)))
                      (if (##structure-instance-of?
                           _%bind188032%_
                           'gx#runtime-binding::t)
                          _%stx187991%_
                          (if (##structure-direct-instance-of?
                               _%bind188032%_
                               'gx#syntax-binding::t)
                              (gx#core-apply-expander__0
                               (##unchecked-structure-ref
                                _%bind188032%_
                                '5
                                '#f
                                '#f)
                               _%stx187991%_)
                              (if _%bind188032%_
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; no binding for head"
                                   _%stx187991%_)
                                  _%stx187991%_)))))))
          (let* ((_%$%e187994188002%_ _%stx187991%_)
                 (_%$%E188000188006%_ (lambda () _%stx187991%_))
                 (_%$%E187996188012%_
                  (lambda ()
                    (let ((_%hd188010%_ _%$%e187994188002%_))
                      (if (gx#identifier? _%hd188010%_)
                          (_%step187993%_ _%hd188010%_)
                          (_%$%E188000188006%_)))))
                 (_%$%E187995188026%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e187994188002%_)
                        (let ((_%$%e187997188016%_
                               (gx#syntax-e _%$%e187994188002%_)))
                          (let ((_%$%hd187998188019%_
                                 (##car _%$%e187997188016%_))
                                (_%$%tl187999188021%_
                                 (##cdr _%$%e187997188016%_)))
                            (let ((_%hd188024%_ _%$%hd187998188019%_))
                              (if (gx#identifier? _%hd188024%_)
                                  (_%step187993%_ _%hd188024%_)
                                  (_%$%E187996188012%_)))))
                        (_%$%E187996188012%_)))))
            (_%$%E187995188026%_)))))
    (define gx#core-expand-head
      (lambda (_%stx187957%_)
        (letrec ((_%stop?187959%_
                  (lambda (_%stx187961%_)
                    (let* ((_%$%e187962187969%_ _%stx187961%_)
                           (_%$%E187964187973%_ (lambda () '#f))
                           (_%$%E187963187987%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187962187969%_)
                                  (let ((_%$%e187965187977%_
                                         (gx#syntax-e _%$%e187962187969%_)))
                                    (let ((_%$%hd187966187980%_
                                           (##car _%$%e187965187977%_))
                                          (_%$%tl187967187982%_
                                           (##cdr _%$%e187965187977%_)))
                                      (let ((_%hd187985%_
                                             _%$%hd187966187980%_))
                                        (gx#core-bound-identifier?__0
                                         _%hd187985%_))))
                                  (_%$%E187964187973%_)))))
                      (_%$%E187963187987%_)))))
          (gx#core-expand*__% _%stx187957%_ _%stop?187959%_))))
    (define gx#core-expand-block__%
      (lambda (_%stx187763%_
               _%expand-special187764%_
               _%begin-form187765%_
               _%expand-e187766%_)
        (letrec ((_%expand-splice187768%_
                  (lambda (_%hd187931%_
                           _%body187932%_
                           _%rest187933%_
                           _%r187934%_)
                    (if (gx#stx-list? _%body187932%_)
                        (_%K187772%_
                         (gx#stx-foldr cons _%rest187933%_ _%body187932%_)
                         _%r187934%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; splice body isn't a list"
                         _%stx187763%_
                         _%hd187931%_))))
                 (_%expand-cond-expand187769%_
                  (lambda (_%hd187927%_ _%rest187928%_ _%r187929%_)
                    (_%K187772%_
                     (cons (gx#core-expand-cond-expand% _%hd187927%_)
                           _%rest187928%_)
                     _%r187929%_)))
                 (_%expand-include187770%_
                  (lambda (_%hd187876%_ _%rest187877%_ _%r187878%_)
                    (let* ((_%$%e187879187889%_ _%hd187876%_)
                           (_%$%E187881187893%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187879187889%_)))
                           (_%$%E187880187923%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187879187889%_)
                                  (let ((_%$%e187882187897%_
                                         (gx#syntax-e _%$%e187879187889%_)))
                                    (let ((_%$%hd187883187900%_
                                           (##car _%$%e187882187897%_))
                                          (_%$%tl187884187902%_
                                           (##cdr _%$%e187882187897%_)))
                                      (if (gx#stx-pair? _%$%tl187884187902%_)
                                          (let ((_%$%e187885187905%_
                                                 (gx#syntax-e
                                                  _%$%tl187884187902%_)))
                                            (let ((_%$%hd187886187908%_
                                                   (##car _%$%e187885187905%_))
                                                  (_%$%tl187887187910%_
                                                   (##cdr _%$%e187885187905%_)))
                                              (let ((_%path187913%_
                                                     _%$%hd187886187908%_))
                                                (if (gx#stx-null?
                                                     _%$%tl187887187910%_)
                                                    (if (gx#stx-string?
                                                         _%path187913%_)
                                                        (let* ((_%rpath187915%_
                                                                (gx#core-resolve-path__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%path187913%_
                         (gx#stx-source _%hd187876%_)))
                       (_%block187917%_
                        (gx#core-expand-include%__%
                         _%hd187876%_
                         _%rpath187915%_))
                       (_%rbody187920%_
                        (call-with-parameters__1
                         (lambda ()
                           (gx#core-expand-block__%
                            _%block187917%_
                            _%expand-special187764%_
                            '#f
                            _%expand-e187766%_))
                         gx#current-expander-path
                         (cons _%rpath187915%_ (gx#current-expander-path)))))
                  (_%K187772%_
                   _%rest187877%_
                   (append _%rbody187920%_ _%r187878%_)))
                (_%$%E187881187893%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187881187893%_)))))
                                          (_%$%E187881187893%_))))
                                  (_%$%E187881187893%_)))))
                      (_%$%E187880187923%_))))
                 (_%expand-expression187771%_
                  (lambda (_%hd187872%_ _%rest187873%_ _%r187874%_)
                    (_%K187772%_
                     _%rest187873%_
                     (cons (_%expand-e187766%_ _%hd187872%_) _%r187874%_))))
                 (_%K187772%_
                  (lambda (_%rest187802%_ _%r187803%_)
                    (let* ((_%$%e187804187811%_ _%rest187802%_)
                           (_%$%E187806187815%_
                            (lambda ()
                              (if _%begin-form187765%_
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    _%begin-form187765%_
                                    (reverse _%r187803%_))
                                   (gx#stx-source _%stx187763%_))
                                  _%r187803%_)))
                           (_%$%E187805187868%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187804187811%_)
                                  (let ((_%$%e187807187819%_
                                         (gx#syntax-e _%$%e187804187811%_)))
                                    (let ((_%$%hd187808187822%_
                                           (##car _%$%e187807187819%_))
                                          (_%$%tl187809187824%_
                                           (##cdr _%$%e187807187819%_)))
                                      (let* ((_%hd187827%_
                                              _%$%hd187808187822%_)
                                             (_%rest187829%_
                                              _%$%tl187809187824%_)
                                             (_%hd187831%_
                                              (gx#core-expand-head
                                               _%hd187827%_))
                                             (_%$%e187832187839%_ _%hd187831%_)
                                             (_%$%E187834187843%_
                                              (lambda ()
                                                (_%expand-expression187771%_
                                                 _%hd187831%_
                                                 _%rest187829%_
                                                 _%r187803%_)))
                                             (_%$%E187833187864%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e187832187839%_)
                                                    (let ((_%$%e187835187847%_
                                                           (gx#syntax-e
                                                            _%$%e187832187839%_)))
                                                      (let ((_%$%hd187836187850%_
                                                             (##car _%$%e187835187847%_))
                                                            (_%$%tl187837187852%_
                                                             (##cdr _%$%e187835187847%_)))
                                                        (let* ((_%form187855%_
                                                                _%$%hd187836187850%_)
                                                               (_%body187857%_
                                                                _%$%tl187837187852%_)
                                                               (_%bind187859%_
                                                                (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%form187855%_)
                            (gx#resolve-identifier__0 _%form187855%_)
                            '#f)))
                  (if (gx#special-form-binding? _%bind187859%_)
                      (let ((_%$e187861%_
                             (##unchecked-structure-ref
                              _%bind187859%_
                              '1
                              '#f
                              '#f)))
                        (if (eq? '%#begin _%$e187861%_)
                            (_%expand-splice187768%_
                             _%hd187831%_
                             _%body187857%_
                             _%rest187829%_
                             _%r187803%_)
                            (if (eq? '%#cond-expand _%$e187861%_)
                                (_%expand-cond-expand187769%_
                                 _%hd187831%_
                                 _%rest187829%_
                                 _%r187803%_)
                                (if (eq? '%#include _%$e187861%_)
                                    (_%expand-include187770%_
                                     _%hd187831%_
                                     _%rest187829%_
                                     _%r187803%_)
                                    (_%expand-special187764%_
                                     _%hd187831%_
                                     _%K187772%_
                                     _%rest187829%_
                                     _%r187803%_)))))
                      (_%expand-expression187771%_
                       _%hd187831%_
                       _%rest187829%_
                       _%r187803%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187834187843%_)))))
                                        (_%$%E187833187864%_))))
                                  (_%$%E187806187815%_)))))
                      (_%$%E187805187868%_)))))
          (let* ((_%$%e187773187780%_ _%stx187763%_)
                 (_%$%E187775187784%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e187773187780%_)))
                 (_%$%E187774187798%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e187773187780%_)
                        (let ((_%$%e187776187788%_
                               (gx#syntax-e _%$%e187773187780%_)))
                          (let ((_%$%hd187777187791%_
                                 (##car _%$%e187776187788%_))
                                (_%$%tl187778187793%_
                                 (##cdr _%$%e187776187788%_)))
                            (let ((_%body187796%_ _%$%tl187778187793%_))
                              (if (gx#stx-list? _%body187796%_)
                                  (_%K187772%_ _%body187796%_ '())
                                  (_%$%E187775187784%_)))))
                        (_%$%E187775187784%_)))))
            (_%$%E187774187798%_)))))
    (define gx#core-expand-block__0
      (lambda (_%stx187939%_ _%expand-special187940%_)
        (let* ((_%begin-form187942%_ '%#begin)
               (_%expand-e187944%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx187939%_
           _%expand-special187940%_
           _%begin-form187942%_
           _%expand-e187944%_))))
    (define gx#core-expand-block__1
      (lambda (_%stx187946%_ _%expand-special187947%_ _%begin-form187948%_)
        (let ((_%expand-e187950%_ gx#core-expand-expression))
          (gx#core-expand-block__%
           _%stx187946%_
           _%expand-special187947%_
           _%begin-form187948%_
           _%expand-e187950%_))))
    (define gx#core-expand-block
      (lambda _g189853_
        (let ((_g189854_ (##length _g189853_)))
          (cond ((##fx= _g189854_ 2) (apply gx#core-expand-block__0 _g189853_))
                ((##fx= _g189854_ 3) (apply gx#core-expand-block__1 _g189853_))
                ((##fx= _g189854_ 4) (apply gx#core-expand-block__% _g189853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-block
                  _g189853_))))))
    (define gx#core-expand-block*
      (lambda (_%stx187711%_ _%expand-special187712%_)
        (let* ((_%$%g187713187724%_
                (gx#core-expand-block__1
                 _%stx187711%_
                 _%expand-special187712%_
                 '#f))
               (_%$%E187717187728%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g187713187724%_
                         '([])
                         '([expr])
                         '(body))
                  '#!void)))
          (let ((_%$%K187722187759%_
                 (lambda ()
                   (gx#raise-syntax-error
                    '#f
                    '"Bad syntax; empty block"
                    _%stx187711%_)))
                (_%$%K187719187745%_ (lambda (_%expr187743%_) _%expr187743%_))
                (_%$%K187718187734%_
                 (lambda (_%body187732%_)
                   (gx#core-quote-syntax__1
                    (gx#core-cons '%#begin (reverse _%body187732%_))
                    (gx#stx-source _%stx187711%_)))))
            (let ((_%$%try-match187715187755%_
                   (lambda ()
                     (if (pair? _%$%g187713187724%_)
                         (let ((_%$%tl187721187750%_
                                (##cdr _%$%g187713187724%_))
                               (_%$%hd187720187748%_
                                (##car _%$%g187713187724%_)))
                           (if (null? _%$%tl187721187750%_)
                               (let ((_%expr187753%_ _%$%hd187720187748%_))
                                 (_%$%K187719187745%_ _%expr187753%_))
                               (let ((_%body187737%_ _%$%g187713187724%_))
                                 (_%$%K187718187734%_ _%body187737%_))))
                         (let ((_%body187737%_ _%$%g187713187724%_))
                           (_%$%K187718187734%_ _%body187737%_))))))
              (if (null? _%$%g187713187724%_)
                  (_%$%K187722187759%_)
                  (_%$%try-match187715187755%_)))))))
    (define gx#core-expand-cond-expand%
      (lambda (_%stx187537%_)
        (letrec ((_%satisfied?187539%_
                  (lambda (_%condition187640%_)
                    (let* ((_%$%e187641187656%_ _%condition187640%_)
                           (_%$%E187651187660%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187641187656%_)))
                           (_%$%E187644187679%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187641187656%_)
                                  (let ((_%$%e187652187664%_
                                         (gx#syntax-e _%$%e187641187656%_)))
                                    (let ((_%$%hd187653187667%_
                                           (##car _%$%e187652187664%_))
                                          (_%$%tl187654187669%_
                                           (##cdr _%$%e187652187664%_)))
                                      (let* ((_%combinator187672%_
                                              _%$%hd187653187667%_)
                                             (_%body187674%_
                                              _%$%tl187654187669%_))
                                        (if (gx#stx-list? _%body187674%_)
                                            (let ((_%$e187676%_
                                                   (gx#stx-e
                                                    _%combinator187672%_)))
                                              (if (eq? 'not _%$e187676%_)
                                                  (not (gx#stx-ormap
                                                        _%satisfied?187539%_
                                                        _%body187674%_))
                                                  (if (eq? 'and _%$e187676%_)
                                                      (gx#stx-andmap
                                                       _%satisfied?187539%_
                                                       _%body187674%_)
                                                      (if (eq? 'or
                                                               _%$e187676%_)
                                                          (gx#stx-ormap
                                                           _%satisfied?187539%_
                                                           _%body187674%_)
                                                          (if (eq? 'defined
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e187676%_)
                      (gx#stx-andmap gx#core-resolve-identifier _%body187674%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; bad cond-expannd combinator"
                       _%stx187537%_
                       _%combinator187672%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E187651187660%_)))))
                                  (_%$%E187651187660%_))))
                           (_%$%E187643187701%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187641187656%_)
                                  (let ((_%$%e187645187683%_
                                         (gx#syntax-e _%$%e187641187656%_)))
                                    (let ((_%$%hd187646187686%_
                                           (##car _%$%e187645187683%_))
                                          (_%$%tl187647187688%_
                                           (##cdr _%$%e187645187683%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd187646187686%_)
                                               (gx#core-identifier=?
                                                _%$%hd187646187686%_
                                                'unquote))
                                          (if (gx#stx-pair?
                                               _%$%tl187647187688%_)
                                              (let ((_%$%e187648187691%_
                                                     (gx#syntax-e
                                                      _%$%tl187647187688%_)))
                                                (let ((_%$%hd187649187694%_
                                                       (##car _%$%e187648187691%_))
                                                      (_%$%tl187650187696%_
                                                       (##cdr _%$%e187648187691%_)))
                                                  (let ((_%expr187699%_
                                                         _%$%hd187649187694%_))
                                                    (if (gx#stx-null?
                                                         _%$%tl187650187696%_)
                                                        (gx#eval-syntax+1__0
                                                         _%expr187699%_)
                                                        (_%$%E187644187679%_)))))
                                              (_%$%E187644187679%_))
                                          (_%$%E187644187679%_))))
                                  (_%$%E187644187679%_))))
                           (_%$%E187642187707%_
                            (lambda ()
                              (let ((_%id187705%_ _%$%e187641187656%_))
                                (if (gx#identifier? _%id187705%_)
                                    (gx#core-bound-identifier?__%
                                     _%id187705%_
                                     gx#feature-binding?)
                                    (_%$%E187643187701%_))))))
                      (_%$%E187642187707%_))))
                 (_%loop187540%_
                  (lambda (_%rest187570%_)
                    (let* ((_%$%e187571187579%_ _%rest187570%_)
                           (_%$%E187577187583%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e187571187579%_)))
                           (_%$%E187573187587%_
                            (lambda ()
                              (if (gx#stx-null? _%$%e187571187579%_)
                                  '()
                                  (_%$%E187577187583%_))))
                           (_%$%E187572187636%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e187571187579%_)
                                  (let ((_%$%e187574187591%_
                                         (gx#syntax-e _%$%e187571187579%_)))
                                    (let ((_%$%hd187575187594%_
                                           (##car _%$%e187574187591%_))
                                          (_%$%tl187576187596%_
                                           (##cdr _%$%e187574187591%_)))
                                      (let* ((_%hd187599%_
                                              _%$%hd187575187594%_)
                                             (_%rest187601%_
                                              _%$%tl187576187596%_)
                                             (_%$%e187602187609%_ _%hd187599%_)
                                             (_%$%E187604187613%_
                                              (lambda ()
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid syntax-case clause"
                                                 _%$%e187602187609%_)))
                                             (_%$%E187603187632%_
                                              (lambda ()
                                                (if (gx#stx-pair?
                                                     _%$%e187602187609%_)
                                                    (let ((_%$%e187605187617%_
                                                           (gx#syntax-e
                                                            _%$%e187602187609%_)))
                                                      (let ((_%$%hd187606187620%_
                                                             (##car _%$%e187605187617%_))
                                                            (_%$%tl187607187622%_
                                                             (##cdr _%$%e187605187617%_)))
                                                        (let* ((_%condition187625%_
                                                                _%$%hd187606187620%_)
                                                               (_%body187627%_
                                                                _%$%tl187607187622%_))
                                                          (if (gx#stx-eq?
                                                               _%condition187625%_
                                                               'else)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%rest187601%_)
                          _%body187627%_
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; clauses after else"
                           _%stx187537%_
                           _%hd187599%_))
                      (if (_%satisfied?187539%_ _%condition187625%_)
                          _%body187627%_
                          (_%loop187540%_ _%rest187601%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E187604187613%_)))))
                                        (_%$%E187603187632%_))))
                                  (_%$%E187573187587%_)))))
                      (_%$%E187572187636%_)))))
          (let* ((_%$%e187541187548%_ _%stx187537%_)
                 (_%$%E187543187552%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e187541187548%_)))
                 (_%$%E187542187566%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e187541187548%_)
                        (let ((_%$%e187544187556%_
                               (gx#syntax-e _%$%e187541187548%_)))
                          (let ((_%$%hd187545187559%_
                                 (##car _%$%e187544187556%_))
                                (_%$%tl187546187561%_
                                 (##cdr _%$%e187544187556%_)))
                            (let ((_%clauses187564%_ _%$%tl187546187561%_))
                              (if (gx#stx-list? _%clauses187564%_)
                                  (gx#core-cons
                                   'begin
                                   (_%loop187540%_ _%clauses187564%_))
                                  (_%$%E187543187552%_)))))
                        (_%$%E187543187552%_)))))
            (_%$%E187542187566%_)))))
    (define gx#core-expand-include%__%
      (lambda (_%stx187480%_ _%rpath187481%_)
        (let* ((_%$%e187482187492%_ _%stx187480%_)
               (_%$%E187484187496%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e187482187492%_)))
               (_%$%E187483187523%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e187482187492%_)
                      (let ((_%$%e187485187500%_
                             (gx#syntax-e _%$%e187482187492%_)))
                        (let ((_%$%hd187486187503%_
                               (##car _%$%e187485187500%_))
                              (_%$%tl187487187505%_
                               (##cdr _%$%e187485187500%_)))
                          (if (gx#stx-pair? _%$%tl187487187505%_)
                              (let ((_%$%e187488187508%_
                                     (gx#syntax-e _%$%tl187487187505%_)))
                                (let ((_%$%hd187489187511%_
                                       (##car _%$%e187488187508%_))
                                      (_%$%tl187490187513%_
                                       (##cdr _%$%e187488187508%_)))
                                  (let ((_%path187516%_ _%$%hd187489187511%_))
                                    (if (gx#stx-null? _%$%tl187490187513%_)
                                        (if (gx#stx-string? _%path187516%_)
                                            (let ((_%rpath187521%_
                                                   (let ((_%$e187518%_
                                                          _%rpath187481%_))
                                                     (if _%$e187518%_
                                                         _%$e187518%_
                                                         (gx#core-resolve-path__%
                                                          _%path187516%_
                                                          (gx#stx-source
                                                           _%stx187480%_))))))
                                              (if (member _%rpath187521%_
                                                          (gx#current-expander-path))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; cyclic expansion"
                                                   _%stx187480%_
                                                   (##append
                                                    (##member
                                                     _%rpath187521%_
                                                     (reverse (gx#current-expander-path)))
                                                    (cons _%rpath187521%_
                                                          '())))
                                                  (gx#syntax-local-rewrap
                                                   (gx#stx-wrap-source
                                                    (gx#core-cons
                                                     'begin
                                                     (read-syntax-from-file
                                                      _%rpath187521%_))
                                                    (gx#stx-source
                                                     _%stx187480%_)))))
                                            (_%$%E187484187496%_))
                                        (_%$%E187484187496%_)))))
                              (_%$%E187484187496%_))))
                      (_%$%E187484187496%_)))))
          (_%$%E187483187523%_))))
    (define gx#core-expand-include%__0
      (lambda (_%stx187530%_)
        (let ((_%rpath187532%_ '#f))
          (gx#core-expand-include%__% _%stx187530%_ _%rpath187532%_))))
    (define gx#core-expand-include%
      (lambda _g189855_
        (let ((_g189856_ (##length _g189855_)))
          (cond ((##fx= _g189856_ 1)
                 (apply gx#core-expand-include%__0 _g189855_))
                ((##fx= _g189856_ 2)
                 (apply gx#core-expand-include%__% _g189855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-include%
                  _g189855_))))))
    (define gx#core-apply-expander__%
      (lambda (_%K187446%_ _%stx187447%_ _%method187448%_)
        (if (procedure? _%K187446%_)
            (let ((_%$e187451%_ (gx#stx-source _%stx187447%_)))
              (if _%$e187451%_
                  (gx#stx-wrap-source (_%K187446%_ _%stx187447%_) _%$e187451%_)
                  (_%K187446%_ _%stx187447%_)))
            (let ((_%$e187459%_
                   (bound-method-ref _%K187446%_ _%method187448%_)))
              (if _%$e187459%_
                  (gx#core-apply-expander__%
                   _%$e187459%_
                   _%stx187447%_
                   _%method187448%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; no expander method"
                   _%stx187447%_
                   _%method187448%_))))))
    (define gx#core-apply-expander__0
      (lambda (_%K187470%_ _%stx187471%_)
        (let ((_%method187473%_ 'apply-macro-expander))
          (gx#core-apply-expander__%
           _%K187470%_
           _%stx187471%_
           _%method187473%_))))
    (define gx#core-apply-expander
      (lambda _g189857_
        (let ((_g189858_ (##length _g189857_)))
          (cond ((##fx= _g189858_ 2)
                 (apply gx#core-apply-expander__0 _g189857_))
                ((##fx= _g189858_ 3)
                 (apply gx#core-apply-expander__% _g189857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-expander
                  _g189857_))))))
    (define gx#expander::apply-macro-expander
      (lambda (_%self187431%_ _%stx187432%_)
        (let ((_%self187435%_ _%self187431%_))
          (gx#raise-syntax-error
           '#f
           '"Bad syntax; no applicable expander"
           _%stx187432%_))))
    (__bind-method!__%
     gx#expander::t
     'apply-macro-expander
     gx#expander::apply-macro-expander
     '#f)
    (define gx#macro-expander::apply-macro-expander
      (lambda (_%self187274%_ _%stx187275%_)
        (let* ((_%self187278%_ _%self187274%_)
               (_%$%self187287187293%_ _%self187278%_)
               (_%$%E187289187296%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self187287187293%_
                         '((macro-expander K)))
                  '#!void))
               (_%$%K187290187301%_
                (lambda (_%K187299%_)
                  (gx#core-apply-expander__0 _%K187299%_ _%stx187275%_)))
               (_%$%e187291187304%_
                (##unchecked-structure-ref _%$%self187287187293%_ '1 '#f '#f))
               (_%K187307%_ _%$%e187291187304%_))
          (_%$%K187290187301%_ _%K187307%_))))
    (__bind-method!__%
     gx#macro-expander::t
     'apply-macro-expander
     gx#macro-expander::apply-macro-expander
     '#f)
    (define gx#core-expander::apply-macro-expander
      (lambda (_%self187117%_ _%stx187118%_)
        (let ((_%self187121%_ _%self187117%_))
          (if (gx#sealed-syntax? _%stx187118%_)
              _%stx187118%_
              (let* ((_%$%self187130187136%_ _%self187121%_)
                     (_%$%E187132187139%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%self187130187136%_
                               '((core-expander K)))
                        '#!void))
                     (_%$%K187133187144%_
                      (lambda (_%K187142%_)
                        (gx#core-apply-expander__0 _%K187142%_ _%stx187118%_)))
                     (_%$%e187134187147%_
                      (##unchecked-structure-ref
                       _%$%self187130187136%_
                       '1
                       '#f
                       '#f))
                     (_%K187150%_ _%$%e187134187147%_))
                (_%$%K187133187144%_ _%K187150%_))))))
    (__bind-method!__%
     gx#core-expander::t
     'apply-macro-expander
     gx#core-expander::apply-macro-expander
     '#f)
    (define gx#top-special-form::apply-macro-expander__%
      (lambda (_%self186967%_ _%stx186968%_ _%top?186969%_)
        (let ((_%self186972%_ _%self186967%_))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin
                (displayln '"@expand " (gx#syntax->datum _%stx186968%_))
                (force-output))
              '#!void)
          (if (_%top?186969%_ (gx#current-expander-context))
              (gx#core-expander::apply-macro-expander
               _%self186972%_
               _%stx186968%_)
              (gx#raise-syntax-error
               '#f
               '"Bad syntax; illegal context"
               _%stx186968%_)))))
    (define gx#top-special-form::apply-macro-expander__0
      (lambda (_%self186986%_ _%stx186987%_)
        (let ((_%top?186989%_ gx#top-context?))
          (gx#top-special-form::apply-macro-expander__%
           _%self186986%_
           _%stx186987%_
           _%top?186989%_))))
    (define gx#top-special-form::apply-macro-expander
      (lambda _g189859_
        (let ((_g189860_ (##length _g189859_)))
          (cond ((##fx= _g189860_ 2)
                 (apply gx#top-special-form::apply-macro-expander__0
                        _g189859_))
                ((##fx= _g189860_ 3)
                 (apply gx#top-special-form::apply-macro-expander__%
                        _g189859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#top-special-form::apply-macro-expander
                  _g189859_))))))
    (__bind-method!__%
     gx#top-special-form::t
     'apply-macro-expander
     gx#top-special-form::apply-macro-expander
     '#f)
    (define gx#module-special-form::apply-macro-expander
      (lambda (_%self186830%_ _%stx186831%_)
        (let ((_%self186834%_ _%self186830%_))
          (gx#top-special-form::apply-macro-expander__%
           _%self186834%_
           _%stx186831%_
           gx#module-context?))))
    (__bind-method!__%
     gx#module-special-form::t
     'apply-macro-expander
     gx#module-special-form::apply-macro-expander
     '#f)
    (define gx#rename-macro-expander::apply-macro-expander
      (lambda (_%self186645%_ _%stx186646%_)
        (let* ((_%self186649%_ _%self186645%_)
               (_%$%self186658186664%_ _%self186649%_)
               (_%$%E186660186667%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self186658186664%_
                         '((rename-macro-expander id)))
                  '#!void))
               (_%$%K186661186700%_
                (lambda (_%id186670%_)
                  (let* ((_%$%e186671186678%_ _%stx186646%_)
                         (_%$%E186673186682%_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid syntax-case clause"
                             _%$%e186671186678%_)))
                         (_%$%E186672186696%_
                          (lambda ()
                            (if (gx#stx-pair? _%$%e186671186678%_)
                                (let ((_%$%e186674186686%_
                                       (gx#syntax-e _%$%e186671186678%_)))
                                  (let ((_%$%hd186675186689%_
                                         (##car _%$%e186674186686%_))
                                        (_%$%tl186676186691%_
                                         (##cdr _%$%e186674186686%_)))
                                    (let ((_%body186694%_
                                           _%$%tl186676186691%_))
                                      (gx#core-cons
                                       _%id186670%_
                                       _%body186694%_))))
                                (_%$%E186673186682%_)))))
                    (_%$%E186672186696%_))))
               (_%$%e186662186703%_
                (##unchecked-structure-ref _%$%self186658186664%_ '1 '#f '#f))
               (_%id186706%_ _%$%e186662186703%_))
          (_%$%K186661186700%_ _%id186706%_))))
    (__bind-method!__%
     gx#rename-macro-expander::t
     'apply-macro-expander
     gx#rename-macro-expander::apply-macro-expander
     '#f)
    (define gx#core-apply-user-expander__%
      (lambda (_%self186472%_ _%stx186473%_ _%method186474%_)
        (if gx#__DEBUG-EXPANDER
            (begin
              (displayln '"@expand " (gx#syntax->datum _%stx186473%_))
              (force-output))
            '#!void)
        (let* ((_%$%self186475186483%_ _%self186472%_)
               (_%$%E186477186486%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%self186475186483%_
                         '((user-expander K ctx phi)))
                  '#!void))
               (_%$%K186478186493%_
                (lambda (_%phi186489%_ _%ctx186490%_ _%K186491%_)
                  (gx#core-apply-user-macro
                   _%K186491%_
                   _%stx186473%_
                   _%ctx186490%_
                   _%phi186489%_
                   _%method186474%_))))
          (if (##structure-instance-of?
               _%$%self186475186483%_
               'gx#user-expander::t)
              (let* ((_%$%e186479186496%_
                      (##unchecked-structure-ref
                       _%$%self186475186483%_
                       '1
                       '#f
                       '#f))
                     (_%K186499%_ _%$%e186479186496%_)
                     (_%$%e186480186501%_
                      (##unchecked-structure-ref
                       _%$%self186475186483%_
                       '2
                       '#f
                       '#f))
                     (_%ctx186504%_ _%$%e186480186501%_)
                     (_%$%e186481186506%_
                      (##unchecked-structure-ref
                       _%$%self186475186483%_
                       '3
                       '#f
                       '#f))
                     (_%phi186509%_ _%$%e186481186506%_))
                (_%$%K186478186493%_ _%phi186509%_ _%ctx186504%_ _%K186499%_))
              (_%$%E186477186486%_)))))
    (define gx#core-apply-user-expander__0
      (lambda (_%self186514%_ _%stx186515%_)
        (let ((_%method186517%_ 'apply-macro-expander))
          (gx#core-apply-user-expander__%
           _%self186514%_
           _%stx186515%_
           _%method186517%_))))
    (define gx#core-apply-user-expander
      (lambda _g189861_
        (let ((_g189862_ (##length _g189861_)))
          (cond ((##fx= _g189862_ 2)
                 (apply gx#core-apply-user-expander__0 _g189861_))
                ((##fx= _g189862_ 3)
                 (apply gx#core-apply-user-expander__% _g189861_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-apply-user-expander
                  _g189861_))))))
    (define gx#core-apply-user-macro
      (lambda (_%K186462%_
               _%stx186463%_
               _%ctx186464%_
               _%phi186465%_
               _%method186466%_)
        (let ((_%mark186468%_
               (##structure
                gx#expander-mark::t
                '#f
                _%ctx186464%_
                _%phi186465%_
                _%stx186463%_)))
          (call-with-parameters__1
           (lambda ()
             (gx#stx-apply-mark
              (gx#core-apply-expander__%
               _%K186462%_
               (gx#stx-apply-mark _%stx186463%_ _%mark186468%_)
               _%method186466%_)
              _%mark186468%_))
           gx#current-expander-marks
           (cons _%mark186468%_ (gx#current-expander-marks))))))
    (define gx#user-expander::apply-macro-expander gx#core-apply-user-expander)
    (__bind-method!__%
     gx#user-expander::t
     'apply-macro-expander
     gx#user-expander::apply-macro-expander
     '#f)
    (define gx#resolve-identifier__%
      (lambda (_%stx186310%_ _%phi186311%_ _%ctx186312%_)
        (let _%lp186314%_ ((_%bind186316%_
                            (gx#core-resolve-identifier__%
                             _%stx186310%_
                             _%phi186311%_
                             _%ctx186312%_)))
          (if (##structure-direct-instance-of?
               _%bind186316%_
               'gx#import-binding::t)
              (_%lp186314%_
               (##unchecked-structure-ref _%bind186316%_ '5 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%bind186316%_
                   'gx#alias-binding::t)
                  (_%lp186314%_
                   (gx#core-resolve-identifier__%
                    (##unchecked-structure-ref _%bind186316%_ '5 '#f '#f)
                    _%phi186311%_
                    _%ctx186312%_))
                  _%bind186316%_)))))
    (define gx#resolve-identifier__0
      (lambda (_%stx186324%_)
        (let* ((_%phi186326%_ (gx#current-expander-phi))
               (_%ctx186328%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx186324%_
           _%phi186326%_
           _%ctx186328%_))))
    (define gx#resolve-identifier__1
      (lambda (_%stx186330%_ _%phi186331%_)
        (let ((_%ctx186333%_ (gx#current-expander-context)))
          (gx#resolve-identifier__%
           _%stx186330%_
           _%phi186331%_
           _%ctx186333%_))))
    (define gx#resolve-identifier
      (lambda _g189863_
        (let ((_g189864_ (##length _g189863_)))
          (cond ((##fx= _g189864_ 1)
                 (apply gx#resolve-identifier__0 _g189863_))
                ((##fx= _g189864_ 2)
                 (apply gx#resolve-identifier__1 _g189863_))
                ((##fx= _g189864_ 3)
                 (apply gx#resolve-identifier__% _g189863_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#resolve-identifier
                  _g189863_))))))
    (define gx#bind-identifier!__%
      (lambda (_%stx186265%_
               _%val186266%_
               _%rebind?186267%_
               _%phi186268%_
               _%ctx186269%_)
        (let ((_%rebind?186274%_
               (if _%rebind?186267%_
                   (if (procedure? _%rebind?186267%_) _%rebind?186267%_ true)
                   gx#core-context-rebind?)))
          (gx#core-bind!__%
           (gx#core-identifier-key _%stx186265%_)
           _%val186266%_
           _%rebind?186274%_
           _%phi186268%_
           _%ctx186269%_))))
    (define gx#bind-identifier!__0
      (lambda (_%stx186279%_ _%val186280%_)
        (let* ((_%rebind?186282%_ '#f)
               (_%phi186284%_ (gx#current-expander-phi))
               (_%ctx186286%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx186279%_
           _%val186280%_
           _%rebind?186282%_
           _%phi186284%_
           _%ctx186286%_))))
    (define gx#bind-identifier!__1
      (lambda (_%stx186288%_ _%val186289%_ _%rebind?186290%_)
        (let* ((_%phi186292%_ (gx#current-expander-phi))
               (_%ctx186294%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx186288%_
           _%val186289%_
           _%rebind?186290%_
           _%phi186292%_
           _%ctx186294%_))))
    (define gx#bind-identifier!__2
      (lambda (_%stx186296%_ _%val186297%_ _%rebind?186298%_ _%phi186299%_)
        (let ((_%ctx186301%_ (gx#current-expander-context)))
          (gx#bind-identifier!__%
           _%stx186296%_
           _%val186297%_
           _%rebind?186298%_
           _%phi186299%_
           _%ctx186301%_))))
    (define gx#bind-identifier!
      (lambda _g189865_
        (let ((_g189866_ (##length _g189865_)))
          (cond ((##fx= _g189866_ 2) (apply gx#bind-identifier!__0 _g189865_))
                ((##fx= _g189866_ 3) (apply gx#bind-identifier!__1 _g189865_))
                ((##fx= _g189866_ 4) (apply gx#bind-identifier!__2 _g189865_))
                ((##fx= _g189866_ 5) (apply gx#bind-identifier!__% _g189865_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#bind-identifier!
                  _g189865_))))))
    (define gx#core-resolve-identifier__%
      (lambda (_%stx186231%_ _%phi186232%_ _%ctx186233%_)
        (let _%lp186235%_ ((_%e186237%_ _%stx186231%_)
                           (_%marks186238%_ (gx#current-expander-marks)))
          (if (symbol? _%e186237%_)
              (gx#core-resolve-binding
               _%e186237%_
               _%phi186232%_
               _%phi186232%_
               _%ctx186233%_
               (reverse _%marks186238%_))
              (if (gx#identifier-quote? _%e186237%_)
                  (gx#core-resolve-binding
                   (##unchecked-structure-ref _%e186237%_ '1 '#f '#f)
                   _%phi186232%_
                   '0
                   (##unchecked-structure-ref _%e186237%_ '3 '#f '#f)
                   (##unchecked-structure-ref _%e186237%_ '4 '#f '#f))
                  (if (##structure-direct-instance-of?
                       _%e186237%_
                       'gx#identifier-wrap::t)
                      (gx#core-resolve-binding
                       (##unchecked-structure-ref _%e186237%_ '1 '#f '#f)
                       _%phi186232%_
                       _%phi186232%_
                       _%ctx186233%_
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e186237%_ '3 '#f '#f)
                        _%marks186238%_))
                      (if (##structure-direct-instance-of?
                           _%e186237%_
                           'gx#syntax-wrap::t)
                          (_%lp186235%_
                           (##unchecked-structure-ref _%e186237%_ '1 '#f '#f)
                           (gx#apply-mark
                            (##unchecked-structure-ref _%e186237%_ '3 '#f '#f)
                            _%marks186238%_))
                          (if (##structure-instance-of?
                               _%e186237%_
                               'gerbil#AST::t)
                              (_%lp186235%_
                               (##unchecked-structure-ref
                                _%e186237%_
                                '1
                                '#f
                                '#f)
                               _%marks186238%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad identifier"
                               _%stx186231%_)))))))))
    (define gx#core-resolve-identifier__0
      (lambda (_%stx186249%_)
        (let* ((_%phi186251%_ (gx#current-expander-phi))
               (_%ctx186253%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx186249%_
           _%phi186251%_
           _%ctx186253%_))))
    (define gx#core-resolve-identifier__1
      (lambda (_%stx186255%_ _%phi186256%_)
        (let ((_%ctx186258%_ (gx#current-expander-context)))
          (gx#core-resolve-identifier__%
           _%stx186255%_
           _%phi186256%_
           _%ctx186258%_))))
    (define gx#core-resolve-identifier
      (lambda _g189867_
        (let ((_g189868_ (##length _g189867_)))
          (cond ((##fx= _g189868_ 1)
                 (apply gx#core-resolve-identifier__0 _g189867_))
                ((##fx= _g189868_ 2)
                 (apply gx#core-resolve-identifier__1 _g189867_))
                ((##fx= _g189868_ 3)
                 (apply gx#core-resolve-identifier__% _g189867_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-identifier
                  _g189867_))))))
    (define gx#core-resolve-binding
      (lambda (_%id186142%_
               _%phi186143%_
               _%src-phi186144%_
               _%ctx186145%_
               _%marks186146%_)
        (letrec ((_%resolve186148%_
                  (lambda (_%ctx186215%_ _%src-phi186216%_ _%key186217%_)
                    (let _%lp186219%_ ((_%ctx186221%_
                                        (gx#core-context-shift
                                         _%ctx186215%_
                                         _%phi186143%_))
                                       (_%dphi186222%_
                                        (fx- _%phi186143%_ _%src-phi186216%_)))
                      (let ((_%$e186224%_
                             (gx#core-context-resolve
                              _%ctx186221%_
                              _%key186217%_)))
                        (if _%$e186224%_
                            _%$e186224%_
                            (if (fxzero? _%dphi186222%_)
                                '#f
                                (if (fxpositive? _%dphi186222%_)
                                    (_%lp186219%_
                                     (gx#core-context-shift _%ctx186221%_ '-1)
                                     (##fx- _%dphi186222%_ '1))
                                    (_%lp186219%_
                                     (gx#core-context-shift _%ctx186221%_ '1)
                                     (##fx+ _%dphi186222%_ '1))))))))))
          (let _%lp186150%_ ((_%ctx186152%_ _%ctx186145%_)
                             (_%src-phi186153%_ _%src-phi186144%_)
                             (_%rest186154%_ _%marks186146%_))
            (let* ((_%$%rest186155186163%_ _%rest186154%_)
                   (_%$%else186157186171%_
                    (lambda ()
                      (_%resolve186148%_
                       _%ctx186152%_
                       _%src-phi186153%_
                       _%id186142%_)))
                   (_%$%K186159186203%_
                    (lambda (_%rest186174%_ _%hd186175%_)
                      (let* ((_%$%hd186176186182%_ _%hd186175%_)
                             (_%$%E186178186185%_
                              (lambda ()
                                (error '"No clause matching"
                                       _%$%hd186176186182%_
                                       '((expander-mark subst)))
                                '#!void))
                             (_%$%K186179186195%_
                              (lambda (_%subst186188%_)
                                (let ((_%$e186192%_
                                       (let ((_%key186190%_
                                              (if _%subst186188%_
                                                  (hash-get
                                                   _%subst186188%_
                                                   _%id186142%_)
                                                  '#f)))
                                         (if _%key186190%_
                                             (_%resolve186148%_
                                              _%ctx186152%_
                                              _%src-phi186153%_
                                              _%key186190%_)
                                             '#f))))
                                  (if _%$e186192%_
                                      _%$e186192%_
                                      (_%lp186150%_
                                       (##unchecked-structure-ref
                                        _%hd186175%_
                                        '2
                                        '#f
                                        '#f)
                                       (##unchecked-structure-ref
                                        _%hd186175%_
                                        '3
                                        '#f
                                        '#f)
                                       _%rest186174%_))))))
                        (if (##structure-instance-of?
                             _%$%hd186176186182%_
                             'gx#expander-mark::t)
                            (let* ((_%$%e186180186198%_
                                    (##unchecked-structure-ref
                                     _%$%hd186176186182%_
                                     '1
                                     '#f
                                     '#f))
                                   (_%subst186201%_ _%$%e186180186198%_))
                              (_%$%K186179186195%_ _%subst186201%_))
                            (_%$%E186178186185%_))))))
              (if (pair? _%$%rest186155186163%_)
                  (let ((_%$%hd186160186206%_ (##car _%$%rest186155186163%_))
                        (_%$%tl186161186208%_ (##cdr _%$%rest186155186163%_)))
                    (let* ((_%hd186211%_ _%$%hd186160186206%_)
                           (_%rest186213%_ _%$%tl186161186208%_))
                      (_%$%K186159186203%_ _%rest186213%_ _%hd186211%_)))
                  (_%$%else186157186171%_)))))))
    (define gx#core-bind!__%
      (lambda (_%key186013%_
               _%val186014%_
               _%rebind?186015%_
               _%phi186016%_
               _%ctx186017%_)
        (letrec ((_%update-binding186019%_
                  (lambda (_%xval186091%_)
                    (if (or (_%rebind?186015%_
                             _%ctx186017%_
                             _%xval186091%_
                             _%val186014%_)
                            (and (##structure-direct-instance-of?
                                  _%xval186091%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%xval186091%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%val186014%_
                                           'gx#binding::t)
                                          (not (##structure-direct-instance-of?
                                                _%val186014%_
                                                'gx#import-binding::t)))))
                            (and (##structure-instance-of?
                                  _%xval186091%_
                                  'gx#extern-binding::t)
                                 (##structure-instance-of?
                                  _%val186014%_
                                  'gx#runtime-binding::t)
                                 (eq? (##unchecked-structure-ref
                                       _%val186014%_
                                       '1
                                       '#f
                                       '#f)
                                      (##unchecked-structure-ref
                                       _%xval186091%_
                                       '1
                                       '#f
                                       '#f))))
                        _%val186014%_
                        (if (and (##structure-direct-instance-of?
                                  _%val186014%_
                                  'gx#import-binding::t)
                                 (or (##unchecked-structure-ref
                                      _%val186014%_
                                      '7
                                      '#f
                                      '#f)
                                     (and (##structure-instance-of?
                                           _%xval186091%_
                                           'gx#binding::t)
                                          (eq? (##unchecked-structure-ref
                                                _%val186014%_
                                                '1
                                                '#f
                                                '#f)
                                               (##unchecked-structure-ref
                                                _%xval186091%_
                                                '1
                                                '#f
                                                '#f)))))
                            _%xval186091%_
                            (if (and (##structure-direct-instance-of?
                                      _%val186014%_
                                      'gx#import-binding::t)
                                     (##structure-instance-of?
                                      _%xval186091%_
                                      'gx#binding::t))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; import conflict"
                                 _%key186013%_
                                 (cons (##unchecked-structure-ref
                                        _%val186014%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (##structure-ref
                                              (##unchecked-structure-ref
                                               _%val186014%_
                                               '6
                                               '#f
                                               '#f)
                                              '1
                                              gx#expander-context::t
                                              '#f)
                                             '()))
                                 (cons (##unchecked-structure-ref
                                        _%xval186091%_
                                        '1
                                        '#f
                                        '#f)
                                       (cons (if (##structure-direct-instance-of?
                                                  _%xval186091%_
                                                  'gx#import-binding::t)
                                                 (##structure-ref
                                                  (##unchecked-structure-ref
                                                   _%xval186091%_
                                                   '6
                                                   '#f
                                                   '#f)
                                                  '1
                                                  gx#expander-context::t
                                                  '#f)
                                                 _%xval186091%_)
                                             '())))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad binding; rebind conflict"
                                 _%key186013%_
                                 _%val186014%_
                                 _%xval186091%_))))))
                 (_%gensubst186020%_
                  (lambda (_%subst186086%_ _%id186087%_)
                    (let ((_%eid186089%_
                           (gensym (if (uninterned-symbol? _%id186087%_)
                                       '%
                                       _%id186087%_))))
                      (hash-put! _%subst186086%_ _%id186087%_ _%eid186089%_)
                      _%eid186089%_)))
                 (_%subst!186021%_
                  (lambda (_%key186023%_)
                    (let* ((_%$%key186024186032%_ _%key186023%_)
                           (_%$%else186026186040%_ (lambda () _%key186023%_))
                           (_%$%K186028186074%_
                            (lambda (_%mark186043%_ _%id186044%_)
                              (let* ((_%$%mark186045186051%_ _%mark186043%_)
                                     (_%$%E186047186054%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark186045186051%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K186048186066%_
                                      (lambda (_%subst186057%_)
                                        (if _%subst186057%_
                                            (let ((_%$e186062%_
                                                   (hash-get
                                                    _%subst186057%_
                                                    _%id186044%_)))
                                              (if _%$e186062%_
                                                  _%$e186062%_
                                                  (_%gensubst186020%_
                                                   _%subst186057%_
                                                   _%id186044%_)))
                                            (let ((_%subst186060%_
                                                   (make-hash-table-eq)))
                                              (##unchecked-structure-set!
                                               _%mark186043%_
                                               _%subst186060%_
                                               '1
                                               '#f
                                               '#f)
                                              (_%gensubst186020%_
                                               _%subst186060%_
                                               _%id186044%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark186045186051%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e186049186069%_
                                            (##unchecked-structure-ref
                                             _%$%mark186045186051%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst186072%_
                                            _%$%e186049186069%_))
                                      (_%$%K186048186066%_ _%subst186072%_))
                                    (_%$%E186047186054%_))))))
                      (if (pair? _%$%key186024186032%_)
                          (let ((_%$%hd186029186077%_
                                 (##car _%$%key186024186032%_))
                                (_%$%tl186030186079%_
                                 (##cdr _%$%key186024186032%_)))
                            (let* ((_%id186082%_ _%$%hd186029186077%_)
                                   (_%mark186084%_ _%$%tl186030186079%_))
                              (_%$%K186028186074%_
                               _%mark186084%_
                               _%id186082%_)))
                          (_%$%else186026186040%_))))))
          (if (and gx#__DEBUG-EXPANDER gx#__DEBUG-VERBOSE)
              (begin (displayln '"@bind " _%key186013%_) (force-output))
              '#!void)
          (gx#core-context-bind!
           (gx#core-context-shift _%ctx186017%_ _%phi186016%_)
           (_%subst!186021%_ _%key186013%_)
           _%val186014%_
           _%update-binding186019%_))))
    (define gx#core-bind!__0
      (lambda (_%key186112%_ _%val186113%_)
        (let* ((_%rebind?186115%_ false)
               (_%phi186117%_ (gx#current-expander-phi))
               (_%ctx186119%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key186112%_
           _%val186113%_
           _%rebind?186115%_
           _%phi186117%_
           _%ctx186119%_))))
    (define gx#core-bind!__1
      (lambda (_%key186121%_ _%val186122%_ _%rebind?186123%_)
        (let* ((_%phi186125%_ (gx#current-expander-phi))
               (_%ctx186127%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key186121%_
           _%val186122%_
           _%rebind?186123%_
           _%phi186125%_
           _%ctx186127%_))))
    (define gx#core-bind!__2
      (lambda (_%key186129%_ _%val186130%_ _%rebind?186131%_ _%phi186132%_)
        (let ((_%ctx186134%_ (gx#current-expander-context)))
          (gx#core-bind!__%
           _%key186129%_
           _%val186130%_
           _%rebind?186131%_
           _%phi186132%_
           _%ctx186134%_))))
    (define gx#core-bind!
      (lambda _g189869_
        (let ((_g189870_ (##length _g189869_)))
          (cond ((##fx= _g189870_ 2) (apply gx#core-bind!__0 _g189869_))
                ((##fx= _g189870_ 3) (apply gx#core-bind!__1 _g189869_))
                ((##fx= _g189870_ 4) (apply gx#core-bind!__2 _g189869_))
                ((##fx= _g189870_ 5) (apply gx#core-bind!__% _g189869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind!
                  _g189869_))))))
    (define gx#core-identifier-key
      (lambda (_%stx185944%_)
        (if (symbol? _%stx185944%_)
            (let* ((_%$%g185946185954%_ (gx#current-expander-marks))
                   (_%$%else185948185962%_ (lambda () _%stx185944%_))
                   (_%$%K185950185967%_
                    (lambda (_%hd185965%_) (cons _%stx185944%_ _%hd185965%_))))
              (if (pair? _%$%g185946185954%_)
                  (let* ((_%$%hd185951185970%_ (##car _%$%g185946185954%_))
                         (_%hd185973%_ _%$%hd185951185970%_))
                    (_%$%K185950185967%_ _%hd185973%_))
                  (_%$%else185948185962%_)))
            (if (gx#identifier? _%stx185944%_)
                (let* ((_%id185976%_ (gx#syntax-local-unwrap _%stx185944%_))
                       (_%eid185978%_ (gx#stx-e _%id185976%_))
                       (_%marks185980%_
                        (gx#stx-identifier-marks* _%id185976%_))
                       (_%$%marks185982185990%_ _%marks185980%_)
                       (_%$%else185984185998%_ (lambda () _%eid185978%_))
                       (_%$%K185986186003%_
                        (lambda (_%hd186001%_)
                          (cons _%eid185978%_ _%hd186001%_))))
                  (if (pair? _%$%marks185982185990%_)
                      (let* ((_%$%hd185987186006%_
                              (##car _%$%marks185982185990%_))
                             (_%hd186009%_ _%$%hd185987186006%_))
                        (_%$%K185986186003%_ _%hd186009%_))
                      (_%$%else185984185998%_)))
                (gx#raise-syntax-error '#f '"Bad identifier" _%stx185944%_)))))
    (define gx#&phi-context? gx#phi-context?)
    (define gx#core-context-shift
      (lambda (_%ctx185883%_ _%phi185884%_)
        (letrec ((_%make-phi185886%_
                  (lambda (_%super185942%_)
                    (let ((__obj189840
                           (##structure
                            gx#phi-context::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                      (gx#phi-context:::init!__%
                       __obj189840
                       (##gensym 'phi)
                       _%super185942%_)
                      __obj189840)))
                 (_%make-phi/up185887%_
                  (lambda (_%ctx185937%_ _%super185938%_)
                    (let ((_%ctx+1185940%_
                           (_%make-phi185886%_ _%super185938%_)))
                      (##unchecked-structure-set!
                       _%ctx185937%_
                       _%ctx+1185940%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx+1185940%_
                       _%ctx185937%_
                       '5
                       '#f
                       '#f)
                      _%ctx+1185940%_)))
                 (_%make-phi/down185888%_
                  (lambda (_%ctx185932%_ _%super185933%_)
                    (let ((_%ctx-1185935%_
                           (_%make-phi185886%_ _%super185933%_)))
                      (##unchecked-structure-set!
                       _%ctx-1185935%_
                       _%ctx185932%_
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%ctx185932%_
                       _%ctx-1185935%_
                       '5
                       '#f
                       '#f)
                      _%ctx-1185935%_)))
                 (_%shift185889%_
                  (lambda (_%ctx185915%_
                           _%delta185916%_
                           _%make-delta-context185917%_
                           _%phi185918%_
                           _%K185919%_)
                    (let ((_%$e185921%_
                           (##unchecked-structure-ref
                            _%ctx185915%_
                            '3
                            '#f
                            '#f)))
                      (if _%$e185921%_
                          (let* ((_%super185926%_
                                  (_%K185919%_ _%$e185921%_ _%delta185916%_))
                                 (_%ctx+d185928%_
                                  (_%make-delta-context185917%_
                                   _%ctx185915%_
                                   _%super185926%_)))
                            (_%K185919%_
                             _%ctx+d185928%_
                             (fx- _%phi185918%_ _%delta185916%_)))
                          (error '"Bad context" _%ctx185915%_))))))
          (let _%K185891%_ ((_%ctx185893%_ _%ctx185883%_)
                            (_%phi185894%_ _%phi185884%_))
            (if (fxzero? _%phi185894%_)
                _%ctx185893%_
                (if (##structure-instance-of? _%ctx185893%_ 'gx#phi-context::t)
                    (if (fxpositive? _%phi185894%_)
                        (let ((_%$e185898%_
                               (##unchecked-structure-ref
                                _%ctx185893%_
                                '4
                                '#f
                                '#f)))
                          (if _%$e185898%_
                              (_%K185891%_
                               _%$e185898%_
                               (##fx- _%phi185894%_ '1))
                              (_%shift185889%_
                               _%ctx185893%_
                               '1
                               _%make-phi/up185887%_
                               _%phi185894%_
                               _%K185891%_)))
                        (let ((_%$e185906%_
                               (##unchecked-structure-ref
                                _%ctx185893%_
                                '5
                                '#f
                                '#f)))
                          (if _%$e185906%_
                              (_%K185891%_
                               _%$e185906%_
                               (##fx+ _%phi185894%_ '1))
                              (_%shift185889%_
                               _%ctx185893%_
                               '-1
                               _%make-phi/down185888%_
                               _%phi185894%_
                               _%K185891%_))))
                    _%ctx185893%_))))))
    (define gx#core-context-get
      (lambda (_%ctx185880%_ _%key185881%_)
        (hash-get
         (##unchecked-structure-ref _%ctx185880%_ '2 '#f '#f)
         _%key185881%_)))
    (define gx#core-context-put!
      (lambda (_%ctx185876%_ _%key185877%_ _%val185878%_)
        (hash-put!
         (##unchecked-structure-ref _%ctx185876%_ '2 '#f '#f)
         _%key185877%_
         _%val185878%_)
        _%val185878%_))
    (define gx#core-context-resolve
      (lambda (_%ctx185862%_ _%key185863%_)
        (let _%lp185865%_ ((_%ctx185867%_ _%ctx185862%_))
          (let ((_%$e185869%_
                 (gx#core-context-get _%ctx185867%_ _%key185863%_)))
            (if _%$e185869%_
                _%$e185869%_
                (let ((_%$e185872%_
                       (if (##structure-instance-of?
                            _%ctx185867%_
                            'gx#phi-context::t)
                           (##unchecked-structure-ref _%ctx185867%_ '3 '#f '#f)
                           '#f)))
                  (if _%$e185872%_ (_%lp185865%_ _%$e185872%_) '#f)))))))
    (define gx#core-context-bind!
      (lambda (_%ctx185851%_ _%key185852%_ _%val185853%_ _%rebind185854%_)
        (let ((_%$e185856%_ (gx#core-context-get _%ctx185851%_ _%key185852%_)))
          (if _%$e185856%_
              (gx#core-context-put!
               _%ctx185851%_
               _%key185852%_
               (_%rebind185854%_ _%$e185856%_))
              (gx#core-context-put!
               _%ctx185851%_
               _%key185852%_
               _%val185853%_)))))
    (define gx#core-context-top__%
      (lambda (_%ctx185826%_ _%stop?185827%_)
        (let _%lp185829%_ ((_%ctx185831%_ _%ctx185826%_))
          (if (_%stop?185827%_ _%ctx185831%_)
              _%ctx185831%_
              (if (##structure-instance-of? _%ctx185831%_ 'gx#phi-context::t)
                  (_%lp185829%_
                   (##unchecked-structure-ref _%ctx185831%_ '3 '#f '#f))
                  '#f)))))
    (define gx#core-context-top__0
      (lambda ()
        (let* ((_%ctx185840%_ (gx#current-expander-context))
               (_%stop?185842%_ gx#top-context?))
          (gx#core-context-top__% _%ctx185840%_ _%stop?185842%_))))
    (define gx#core-context-top__1
      (lambda (_%ctx185844%_)
        (let ((_%stop?185846%_ gx#top-context?))
          (gx#core-context-top__% _%ctx185844%_ _%stop?185846%_))))
    (define gx#core-context-top
      (lambda _g189871_
        (let ((_g189872_ (##length _g189871_)))
          (cond ((##fx= _g189872_ 0) (apply gx#core-context-top__0 _g189871_))
                ((##fx= _g189872_ 1) (apply gx#core-context-top__1 _g189871_))
                ((##fx= _g189872_ 2) (apply gx#core-context-top__% _g189871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-top
                  _g189871_))))))
    (define gx#core-context-root__%
      (lambda (_%ctx185811%_)
        (let _%lp185813%_ ((_%ctx185815%_ _%ctx185811%_))
          (if (##structure-instance-of? _%ctx185815%_ 'gx#phi-context::t)
              (_%lp185813%_
               (##unchecked-structure-ref _%ctx185815%_ '3 '#f '#f))
              _%ctx185815%_))))
    (define gx#core-context-root__0
      (lambda ()
        (let ((_%ctx185821%_ (gx#current-expander-context)))
          (gx#core-context-root__% _%ctx185821%_))))
    (define gx#core-context-root
      (lambda _g189873_
        (let ((_g189874_ (##length _g189873_)))
          (cond ((##fx= _g189874_ 0) (apply gx#core-context-root__0 _g189873_))
                ((##fx= _g189874_ 1) (apply gx#core-context-root__% _g189873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-root
                  _g189873_))))))
    (define gx#core-context-rebind?__%
      (lambda (_%ctx185793%_ . _%ignore185794%_)
        (let ((_%$e185796%_ (gx#current-expander-allow-rebind?)))
          (if _%$e185796%_
              _%$e185796%_
              (if (##structure-instance-of? _%ctx185793%_ 'gx#top-context::t)
                  (if (##structure-instance-of?
                       _%ctx185793%_
                       'gx#module-context::t)
                      '#f
                      (not (##structure-instance-of?
                            _%ctx185793%_
                            'gx#prelude-context::t)))
                  '#f)))))
    (define gx#core-context-rebind?__0
      (lambda ()
        (let ((_%ctx185803%_ (gx#current-expander-context)))
          (gx#core-context-rebind?__% _%ctx185803%_))))
    (define gx#core-context-rebind?
      (lambda _g189875_
        (let ((_g189876_ (##length _g189875_)))
          (cond ((##fx= _g189876_ 0)
                 (apply gx#core-context-rebind?__0 _g189875_))
                ((##fx= _g189876_ 1)
                 (apply gx#core-context-rebind?__% _g189875_))
                ((##fx>= _g189876_ 1)
                 (apply gx#core-context-rebind?__% _g189875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-rebind?
                  _g189875_))))))
    (define gx#core-context-namespace__%
      (lambda (_%ctx185776%_)
        (let ((_%$e185778%_ (gx#core-context-top__1 _%ctx185776%_)))
          (if _%$e185778%_
              (if (##structure-instance-of? _%$e185778%_ 'gx#module-context::t)
                  (##unchecked-structure-ref _%$e185778%_ '6 '#f '#f)
                  '#f)
              '#f))))
    (define gx#core-context-namespace__0
      (lambda ()
        (let ((_%ctx185788%_ (gx#current-expander-context)))
          (gx#core-context-namespace__% _%ctx185788%_))))
    (define gx#core-context-namespace
      (lambda _g189877_
        (let ((_g189878_ (##length _g189877_)))
          (cond ((##fx= _g189878_ 0)
                 (apply gx#core-context-namespace__0 _g189877_))
                ((##fx= _g189878_ 1)
                 (apply gx#core-context-namespace__% _g189877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-namespace
                  _g189877_))))))
    (define gx#expander-binding?__%
      (lambda (_%bind185762%_ _%is?185763%_)
        (if (##structure-direct-instance-of?
             _%bind185762%_
             'gx#syntax-binding::t)
            (_%is?185763%_
             (##unchecked-structure-ref _%bind185762%_ '5 '#f '#f))
            '#f)))
    (define gx#expander-binding?__0
      (lambda (_%bind185768%_)
        (let ((_%is?185770%_ gx#expander?))
          (gx#expander-binding?__% _%bind185768%_ _%is?185770%_))))
    (define gx#expander-binding?
      (lambda _g189879_
        (let ((_g189880_ (##length _g189879_)))
          (cond ((##fx= _g189880_ 1) (apply gx#expander-binding?__0 _g189879_))
                ((##fx= _g189880_ 2) (apply gx#expander-binding?__% _g189879_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#expander-binding?
                  _g189879_))))))
    (define gx#core-expander-binding?
      (lambda (_%bind185759%_)
        (gx#expander-binding?__% _%bind185759%_ gx#core-expander?)))
    (define gx#expression-form-binding?
      (lambda (_%bind185757%_)
        (gx#expander-binding?__% _%bind185757%_ gx#expression-form?)))
    (define gx#direct-special-form-binding?
      (lambda (_%bind185751%_)
        (letrec ((_%direct-special-form?185753%_
                  (lambda (_%obj185755%_)
                    (##structure-direct-instance-of?
                     _%obj185755%_
                     (##type-id gx#special-form::t)))))
          (gx#expander-binding?__%
           _%bind185751%_
           _%direct-special-form?185753%_))))
    (define gx#special-form-binding?
      (lambda (_%bind185749%_)
        (gx#expander-binding?__% _%bind185749%_ gx#special-form?)))
    (define gx#feature-binding?
      (lambda (_%bind185740%_)
        (letrec ((_%feature?185742%_
                  (lambda (_%e185744%_)
                    (let ((_%$e185746%_
                           (##structure-instance-of?
                            _%e185744%_
                            'gx#feature-expander::t)))
                      (if _%$e185746%_
                          _%$e185746%_
                          (##structure-instance-of?
                           _%e185744%_
                           'gx#module-context::t))))))
          (gx#expander-binding?__% _%bind185740%_ _%feature?185742%_))))
    (define gx#private-feature-binding?
      (lambda (_%bind185738%_)
        (gx#expander-binding?__% _%bind185738%_ gx#private-feature-expander?)))
    (define gx#core-bound-identifier?__%
      (lambda (_%id185725%_ _%bound?185726%_)
        (if (gx#identifier? _%id185725%_)
            (_%bound?185726%_ (gx#resolve-identifier__0 _%id185725%_))
            '#f)))
    (define gx#core-bound-identifier?__0
      (lambda (_%id185731%_)
        (let ((_%bound?185733%_ gx#core-expander-binding?))
          (gx#core-bound-identifier?__% _%id185731%_ _%bound?185733%_))))
    (define gx#core-bound-identifier?
      (lambda _g189881_
        (let ((_g189882_ (##length _g189881_)))
          (cond ((##fx= _g189882_ 1)
                 (apply gx#core-bound-identifier?__0 _g189881_))
                ((##fx= _g189882_ 2)
                 (apply gx#core-bound-identifier?__% _g189881_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bound-identifier?
                  _g189881_))))))
    (define gx#core-identifier=?
      (lambda (_%x185715%_ _%y185716%_)
        (letrec ((_%y=?185718%_
                  (lambda (_%xid185722%_)
                    ((if (list? _%y185716%_) memq eq?)
                     _%xid185722%_
                     _%y185716%_))))
          (let ((_%bind185720%_ (gx#resolve-identifier__0 _%x185715%_)))
            (if (##structure-instance-of? _%bind185720%_ 'gx#binding::t)
                (_%y=?185718%_
                 (##unchecked-structure-ref _%bind185720%_ '1 '#f '#f))
                (_%y=?185718%_ (gx#stx-e _%x185715%_)))))))
    (define gx#core-extern-symbol?
      (lambda (_%e185713%_)
        (if (interned-symbol? _%e185713%_)
            (string-index__0 (symbol->string _%e185713%_) '#\#)
            '#f)))
    (define gx#core-quote-syntax__%
      (lambda (_%stx185666%_ _%src185667%_ _%ctx185668%_ _%marks185669%_)
        (if (##structure? _%stx185666%_)
            (let ((_%$e185671%_ (gx#sealed-syntax-unwrap _%stx185666%_)))
              (if _%$e185671%_
                  _%$e185671%_
                  (if (gx#identifier? _%stx185666%_)
                      (let ((_%id185675%_
                             (gx#stx-unwrap__% _%stx185666%_ _%marks185669%_)))
                        (##structure
                         gx#syntax-quote::t
                         (##unchecked-structure-ref _%id185675%_ '1 '#f '#f)
                         (let ((_%$e185677%_
                                (##unchecked-structure-ref
                                 _%id185675%_
                                 '2
                                 '#f
                                 '#f)))
                           (if _%$e185677%_ _%$e185677%_ _%src185667%_))
                         _%ctx185668%_
                         (##unchecked-structure-ref _%id185675%_ '3 '#f '#f)))
                      (##structure
                       gx#syntax-quote::t
                       (gx#stx-e _%stx185666%_)
                       (let ((_%$e185681%_ (gx#stx-source _%stx185666%_)))
                         (if _%$e185681%_ _%$e185681%_ _%src185667%_))
                       _%ctx185668%_
                       (reverse _%marks185669%_)))))
            (##structure
             gx#syntax-quote::t
             _%stx185666%_
             _%src185667%_
             _%ctx185668%_
             (reverse _%marks185669%_)))))
    (define gx#core-quote-syntax__0
      (lambda (_%stx185687%_)
        (let* ((_%src185689%_ '#f)
               (_%ctx185691%_ (gx#current-expander-context))
               (_%marks185693%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx185687%_
           _%src185689%_
           _%ctx185691%_
           _%marks185693%_))))
    (define gx#core-quote-syntax__1
      (lambda (_%stx185695%_ _%src185696%_)
        (let* ((_%ctx185698%_ (gx#current-expander-context))
               (_%marks185700%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx185695%_
           _%src185696%_
           _%ctx185698%_
           _%marks185700%_))))
    (define gx#core-quote-syntax__2
      (lambda (_%stx185702%_ _%src185703%_ _%ctx185704%_)
        (let ((_%marks185706%_ (gx#current-expander-marks)))
          (gx#core-quote-syntax__%
           _%stx185702%_
           _%src185703%_
           _%ctx185704%_
           _%marks185706%_))))
    (define gx#core-quote-syntax
      (lambda _g189883_
        (let ((_g189884_ (##length _g189883_)))
          (cond ((##fx= _g189884_ 1) (apply gx#core-quote-syntax__0 _g189883_))
                ((##fx= _g189884_ 2) (apply gx#core-quote-syntax__1 _g189883_))
                ((##fx= _g189884_ 3) (apply gx#core-quote-syntax__2 _g189883_))
                ((##fx= _g189884_ 4) (apply gx#core-quote-syntax__% _g189883_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-quote-syntax
                  _g189883_))))))
    (define gx#core-cons
      (lambda (_%hd185662%_ _%tl185663%_)
        (cons (gx#core-quote-syntax__0 _%hd185662%_) _%tl185663%_)))
    (define gx#core-list
      (lambda (_%hd185659%_ . _%rest185660%_)
        (cons (gx#core-quote-syntax__0 _%hd185659%_) _%rest185660%_)))
    (define gx#core-cons*
      (lambda (_%hd185656%_ . _%rest185657%_)
        (apply cons* (gx#core-quote-syntax__0 _%hd185656%_) _%rest185657%_)))
    (define gx#core-resolve-path__%
      (lambda (_%stx-path185625%_ _%rel185626%_)
        (let ((_%path185643%_ (gx#stx-e _%stx-path185625%_))
              (_%reldir185644%_
               (let _%lp185628%_ ((_%relsrc185630%_
                                   (let ((_%$e185640%_
                                          (gx#stx-source _%stx-path185625%_)))
                                     (if _%$e185640%_
                                         _%$e185640%_
                                         _%rel185626%_))))
                 (if (##structure-instance-of? _%relsrc185630%_ 'gerbil#AST::t)
                     (_%lp185628%_
                      (let ((_%$e185633%_ (gx#stx-source _%relsrc185630%_)))
                        (if _%$e185633%_
                            _%$e185633%_
                            (gx#stx-e _%relsrc185630%_))))
                     (if (source-location-path? _%relsrc185630%_)
                         (path-directory
                          (source-location-path _%relsrc185630%_))
                         (if (string? _%relsrc185630%_)
                             (path-directory _%relsrc185630%_)
                             (if (null? (gx#current-expander-path))
                                 (current-directory)
                                 (path-directory
                                  (car (gx#current-expander-path))))))))))
          (path-expand _%path185643%_ (path-normalize _%reldir185644%_)))))
    (define gx#core-resolve-path__0
      (lambda (_%stx-path185649%_)
        (let ((_%rel185651%_ '#f))
          (gx#core-resolve-path__% _%stx-path185649%_ _%rel185651%_))))
    (define gx#core-resolve-path
      (lambda _g189885_
        (let ((_g189886_ (##length _g189885_)))
          (cond ((##fx= _g189886_ 1) (apply gx#core-resolve-path__0 _g189885_))
                ((##fx= _g189886_ 2) (apply gx#core-resolve-path__% _g189885_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-path
                  _g189885_))))))
    (define gx#core-deserialize-mark__%
      (lambda (_%repr185581%_ _%ctx185582%_)
        (let* ((_%$%repr185583185590%_ _%repr185581%_)
               (_%$%E185585185594%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%repr185583185590%_
                         '([phi . subs]))
                  '#!void))
               (_%$%K185586185602%_
                (lambda (_%subs185597%_ _%phi185598%_)
                  (let ((_%subst185600%_
                         (if (null? _%subs185597%_)
                             '#f
                             (list->hash-table-eq _%subs185597%_))))
                    (##structure
                     gx#expander-mark::t
                     _%subst185600%_
                     _%ctx185582%_
                     _%phi185598%_
                     '#f)))))
          (if (pair? _%$%repr185583185590%_)
              (let ((_%$%hd185587185605%_ (##car _%$%repr185583185590%_))
                    (_%$%tl185588185607%_ (##cdr _%$%repr185583185590%_)))
                (let* ((_%phi185610%_ _%$%hd185587185605%_)
                       (_%subs185612%_ _%$%tl185588185607%_))
                  (_%$%K185586185602%_ _%subs185612%_ _%phi185610%_)))
              (_%$%E185585185594%_)))))
    (define gx#core-deserialize-mark__0
      (lambda (_%repr185617%_)
        (let ((_%ctx185619%_ (gx#current-expander-context)))
          (gx#core-deserialize-mark__% _%repr185617%_ _%ctx185619%_))))
    (define gx#core-deserialize-mark
      (lambda _g189887_
        (let ((_g189888_ (##length _g189887_)))
          (cond ((##fx= _g189888_ 1)
                 (apply gx#core-deserialize-mark__0 _g189887_))
                ((##fx= _g189888_ 2)
                 (apply gx#core-deserialize-mark__% _g189887_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-deserialize-mark
                  _g189887_))))))
    (define gx#syntax-local-rewrap
      (lambda (_%stx185578%_)
        (gx#stx-rewrap _%stx185578%_ (gx#current-expander-marks))))
    (define gx#syntax-local-unwrap
      (lambda (_%stx185576%_)
        (gx#stx-unwrap__% _%stx185576%_ (gx#current-expander-marks))))
    (define gx#syntax-local-introduce
      (lambda (_%stx185546%_)
        (let* ((_%$%g185547185555%_ (gx#current-expander-marks))
               (_%$%else185549185563%_ (lambda () _%stx185546%_))
               (_%$%K185551185568%_
                (lambda (_%hd185566%_)
                  (gx#stx-apply-mark _%stx185546%_ _%hd185566%_))))
          (if (pair? _%$%g185547185555%_)
              (let* ((_%$%hd185552185571%_ (##car _%$%g185547185555%_))
                     (_%hd185574%_ _%$%hd185552185571%_))
                (_%$%K185551185568%_ _%hd185574%_))
              (_%$%else185549185563%_)))))
    (define gx#syntax-local-temp
      (lambda (_%sym185544%_)
        (gx#syntax-local-introduce (make-symbol__0 (gensym _%sym185544%_)))))
    (define gx#syntax-local-e__%
      (lambda (_%stx185529%_ _%E185530%_)
        (let ((_%bind185532%_ (gx#resolve-identifier__0 _%stx185529%_)))
          (if (##structure-direct-instance-of?
               _%bind185532%_
               'gx#syntax-binding::t)
              (##unchecked-structure-ref _%bind185532%_ '5 '#f '#f)
              (_%E185530%_ _%stx185529%_)))))
    (define gx#syntax-local-e__0
      (lambda (_%stx185537%_)
        (let ((_%E185539%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-e__% _%stx185537%_ _%E185539%_))))
    (define gx#syntax-local-e
      (lambda _g189889_
        (let ((_g189890_ (##length _g189889_)))
          (cond ((##fx= _g189890_ 1) (apply gx#syntax-local-e__0 _g189889_))
                ((##fx= _g189890_ 2) (apply gx#syntax-local-e__% _g189889_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-e
                  _g189889_))))))
    (define gx#syntax-local-value__%
      (lambda (_%stx185513%_ _%E185514%_)
        (let ((_%e185516%_ (gx#syntax-local-e__% _%stx185513%_ _%E185514%_)))
          (if (##structure-instance-of? _%e185516%_ 'gx#expander::t)
              (##unchecked-structure-ref _%e185516%_ '1 '#f '#f)
              _%e185516%_))))
    (define gx#syntax-local-value__0
      (lambda (_%stx185521%_)
        (let ((_%E185523%_ gx#raise-syntax-ref-error))
          (gx#syntax-local-value__% _%stx185521%_ _%E185523%_))))
    (define gx#syntax-local-value
      (lambda _g189891_
        (let ((_g189892_ (##length _g189891_)))
          (cond ((##fx= _g189892_ 1)
                 (apply gx#syntax-local-value__0 _g189891_))
                ((##fx= _g189892_ 2)
                 (apply gx#syntax-local-value__% _g189891_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#syntax-local-value
                  _g189891_))))))
    (define gx#raise-syntax-ref-error
      (lambda (_%stx185510%_)
        (gx#raise-syntax-error
         '#f
         '"Bad syntax; not a syntax binding"
         _%stx185510%_)))))
