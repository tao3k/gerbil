(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/module::timestamp 1789839226)
  (begin
    (declare (not safe))
    (define gx#__module-registry
      (make-hash-table__%
       '#f
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value))
    (define gx#__module-pkg-cache
      (make-hash-table__%
       '#f
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value
       absent-value))
    (define gx#module-import::t
      (make-class-type
       'gx#module-import::t
       'module-import
       (list)
       '(source name phi weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-import? (__make-class-predicate gx#module-import::t))
    (define gx#make-module-import
      (lambda _%$args197743%_
        (apply make-instance gx#module-import::t _%$args197743%_)))
    (define gx#module-import-source
      (__make-class-slot-accessor gx#module-import::t 'source))
    (define gx#module-import-name
      (__make-class-slot-accessor gx#module-import::t 'name))
    (define gx#module-import-phi
      (__make-class-slot-accessor gx#module-import::t 'phi))
    (define gx#module-import-weak?
      (__make-class-slot-accessor gx#module-import::t 'weak?))
    (define gx#module-import-source-set!
      (__make-class-slot-mutator gx#module-import::t 'source))
    (define gx#module-import-name-set!
      (__make-class-slot-mutator gx#module-import::t 'name))
    (define gx#module-import-phi-set!
      (__make-class-slot-mutator gx#module-import::t 'phi))
    (define gx#module-import-weak?-set!
      (__make-class-slot-mutator gx#module-import::t 'weak?))
    (define gx#&module-import-source
      (__make-class-slot-unchecked-accessor gx#module-import::t 'source))
    (define gx#&module-import-name
      (__make-class-slot-unchecked-accessor gx#module-import::t 'name))
    (define gx#&module-import-phi
      (__make-class-slot-unchecked-accessor gx#module-import::t 'phi))
    (define gx#&module-import-weak?
      (__make-class-slot-unchecked-accessor gx#module-import::t 'weak?))
    (define gx#&module-import-source-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'source))
    (define gx#&module-import-name-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'name))
    (define gx#&module-import-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'phi))
    (define gx#&module-import-weak?-set!
      (__make-class-slot-unchecked-mutator gx#module-import::t 'weak?))
    (define gx#module-export::t
      (make-class-type
       'gx#module-export::t
       'module-export
       (list)
       '(context key phi name weak?)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print: name))))
       '#f))
    (define gx#module-export? (__make-class-predicate gx#module-export::t))
    (define gx#make-module-export
      (lambda _%$args197740%_
        (apply make-instance gx#module-export::t _%$args197740%_)))
    (define gx#module-export-context
      (__make-class-slot-accessor gx#module-export::t 'context))
    (define gx#module-export-key
      (__make-class-slot-accessor gx#module-export::t 'key))
    (define gx#module-export-phi
      (__make-class-slot-accessor gx#module-export::t 'phi))
    (define gx#module-export-name
      (__make-class-slot-accessor gx#module-export::t 'name))
    (define gx#module-export-weak?
      (__make-class-slot-accessor gx#module-export::t 'weak?))
    (define gx#module-export-context-set!
      (__make-class-slot-mutator gx#module-export::t 'context))
    (define gx#module-export-key-set!
      (__make-class-slot-mutator gx#module-export::t 'key))
    (define gx#module-export-phi-set!
      (__make-class-slot-mutator gx#module-export::t 'phi))
    (define gx#module-export-name-set!
      (__make-class-slot-mutator gx#module-export::t 'name))
    (define gx#module-export-weak?-set!
      (__make-class-slot-mutator gx#module-export::t 'weak?))
    (define gx#&module-export-context
      (__make-class-slot-unchecked-accessor gx#module-export::t 'context))
    (define gx#&module-export-key
      (__make-class-slot-unchecked-accessor gx#module-export::t 'key))
    (define gx#&module-export-phi
      (__make-class-slot-unchecked-accessor gx#module-export::t 'phi))
    (define gx#&module-export-name
      (__make-class-slot-unchecked-accessor gx#module-export::t 'name))
    (define gx#&module-export-weak?
      (__make-class-slot-unchecked-accessor gx#module-export::t 'weak?))
    (define gx#&module-export-context-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'context))
    (define gx#&module-export-key-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'key))
    (define gx#&module-export-phi-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'phi))
    (define gx#&module-export-name-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'name))
    (define gx#&module-export-weak?-set!
      (__make-class-slot-unchecked-mutator gx#module-export::t 'weak?))
    (define gx#import-set::t
      (make-class-type
       'gx#import-set::t
       'import-set
       (list)
       '(source phi imports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#import-set? (__make-class-predicate gx#import-set::t))
    (define gx#make-import-set
      (lambda _%$args197737%_
        (apply make-instance gx#import-set::t _%$args197737%_)))
    (define gx#import-set-source
      (__make-class-slot-accessor gx#import-set::t 'source))
    (define gx#import-set-phi
      (__make-class-slot-accessor gx#import-set::t 'phi))
    (define gx#import-set-imports
      (__make-class-slot-accessor gx#import-set::t 'imports))
    (define gx#import-set-source-set!
      (__make-class-slot-mutator gx#import-set::t 'source))
    (define gx#import-set-phi-set!
      (__make-class-slot-mutator gx#import-set::t 'phi))
    (define gx#import-set-imports-set!
      (__make-class-slot-mutator gx#import-set::t 'imports))
    (define gx#&import-set-source
      (__make-class-slot-unchecked-accessor gx#import-set::t 'source))
    (define gx#&import-set-phi
      (__make-class-slot-unchecked-accessor gx#import-set::t 'phi))
    (define gx#&import-set-imports
      (__make-class-slot-unchecked-accessor gx#import-set::t 'imports))
    (define gx#&import-set-source-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'source))
    (define gx#&import-set-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'phi))
    (define gx#&import-set-imports-set!
      (__make-class-slot-unchecked-mutator gx#import-set::t 'imports))
    (define gx#export-set::t
      (make-class-type
       'gx#export-set::t
       'export-set
       (list)
       '(source phi exports)
       (cons (cons 'struct: '#t)
             (cons (cons 'final: '#t) '((print: source phi))))
       '#f))
    (define gx#export-set? (__make-class-predicate gx#export-set::t))
    (define gx#make-export-set
      (lambda _%$args197734%_
        (apply make-instance gx#export-set::t _%$args197734%_)))
    (define gx#export-set-source
      (__make-class-slot-accessor gx#export-set::t 'source))
    (define gx#export-set-phi
      (__make-class-slot-accessor gx#export-set::t 'phi))
    (define gx#export-set-exports
      (__make-class-slot-accessor gx#export-set::t 'exports))
    (define gx#export-set-source-set!
      (__make-class-slot-mutator gx#export-set::t 'source))
    (define gx#export-set-phi-set!
      (__make-class-slot-mutator gx#export-set::t 'phi))
    (define gx#export-set-exports-set!
      (__make-class-slot-mutator gx#export-set::t 'exports))
    (define gx#&export-set-source
      (__make-class-slot-unchecked-accessor gx#export-set::t 'source))
    (define gx#&export-set-phi
      (__make-class-slot-unchecked-accessor gx#export-set::t 'phi))
    (define gx#&export-set-exports
      (__make-class-slot-unchecked-accessor gx#export-set::t 'exports))
    (define gx#&export-set-source-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'source))
    (define gx#&export-set-phi-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'phi))
    (define gx#&export-set-exports-set!
      (__make-class-slot-unchecked-mutator gx#export-set::t 'exports))
    (define gx#import-expander::t
      (make-class-type
       'gx#import-expander::t
       'import-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-expander? (__make-class-predicate gx#import-expander::t))
    (define gx#make-import-expander
      (lambda _%$args197731%_
        (apply make-instance gx#import-expander::t _%$args197731%_)))
    (define gx#import-expander-context
      (__make-class-slot-accessor gx#import-expander::t 'context))
    (define gx#import-expander-phi
      (__make-class-slot-accessor gx#import-expander::t 'phi))
    (define gx#import-expander-e
      (__make-class-slot-accessor gx#import-expander::t 'e))
    (define gx#import-expander-context-set!
      (__make-class-slot-mutator gx#import-expander::t 'context))
    (define gx#import-expander-phi-set!
      (__make-class-slot-mutator gx#import-expander::t 'phi))
    (define gx#import-expander-e-set!
      (__make-class-slot-mutator gx#import-expander::t 'e))
    (define gx#&import-expander-context
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'context))
    (define gx#&import-expander-phi
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'phi))
    (define gx#&import-expander-e
      (__make-class-slot-unchecked-accessor gx#import-expander::t 'e))
    (define gx#&import-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'context))
    (define gx#&import-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'phi))
    (define gx#&import-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#import-expander::t 'e))
    (define gx#export-expander::t
      (make-class-type
       'gx#export-expander::t
       'export-expander
       (list gx#user-expander::t)
       '()
       '()
       ':init!))
    (define gx#export-expander? (__make-class-predicate gx#export-expander::t))
    (define gx#make-export-expander
      (lambda _%$args197728%_
        (apply make-instance gx#export-expander::t _%$args197728%_)))
    (define gx#export-expander-context
      (__make-class-slot-accessor gx#export-expander::t 'context))
    (define gx#export-expander-phi
      (__make-class-slot-accessor gx#export-expander::t 'phi))
    (define gx#export-expander-e
      (__make-class-slot-accessor gx#export-expander::t 'e))
    (define gx#export-expander-context-set!
      (__make-class-slot-mutator gx#export-expander::t 'context))
    (define gx#export-expander-phi-set!
      (__make-class-slot-mutator gx#export-expander::t 'phi))
    (define gx#export-expander-e-set!
      (__make-class-slot-mutator gx#export-expander::t 'e))
    (define gx#&export-expander-context
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'context))
    (define gx#&export-expander-phi
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'phi))
    (define gx#&export-expander-e
      (__make-class-slot-unchecked-accessor gx#export-expander::t 'e))
    (define gx#&export-expander-context-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'context))
    (define gx#&export-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'phi))
    (define gx#&export-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#export-expander::t 'e))
    (define gx#import-export-expander::t
      (make-class-type
       'gx#import-export-expander::t
       'import-export-expander
       (list gx#import-expander::t gx#export-expander::t)
       '()
       '()
       ':init!))
    (define gx#import-export-expander?
      (__make-class-predicate gx#import-export-expander::t))
    (define gx#make-import-export-expander
      (lambda _%$args197725%_
        (apply make-instance gx#import-export-expander::t _%$args197725%_)))
    (define gx#import-export-expander-context
      (__make-class-slot-accessor gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi
      (__make-class-slot-accessor gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e
      (__make-class-slot-accessor gx#import-export-expander::t 'e))
    (define gx#import-export-expander-context-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'context))
    (define gx#import-export-expander-phi-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'phi))
    (define gx#import-export-expander-e-set!
      (__make-class-slot-mutator gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context
      (__make-class-slot-unchecked-accessor
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi
      (__make-class-slot-unchecked-accessor gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e
      (__make-class-slot-unchecked-accessor gx#import-export-expander::t 'e))
    (define gx#&import-export-expander-context-set!
      (__make-class-slot-unchecked-mutator
       gx#import-export-expander::t
       'context))
    (define gx#&import-export-expander-phi-set!
      (__make-class-slot-unchecked-mutator gx#import-export-expander::t 'phi))
    (define gx#&import-export-expander-e-set!
      (__make-class-slot-unchecked-mutator gx#import-export-expander::t 'e))
    (define gx#current-import-expander-phi (make-parameter '#f))
    (define gx#current-export-expander-phi (make-parameter '#f))
    (define gx#current-module-reader-path (make-parameter '#f))
    (define gx#current-module-reader-args (make-parameter '#f))
    (define gx#source-file-settings '(char-encoding: UTF-8 eol-encoding: lf))
    (define gx#call-with-input-source-file
      (lambda (_%path197722%_ _%fun197723%_)
        (call-with-input-file
         (cons 'path: (cons _%path197722%_ gx#source-file-settings))
         _%fun197723%_)))
    (define gx#module-context:::init!
      (lambda (_%self197705%_
               _%id197706%_
               _%super197707%_
               _%ns197708%_
               _%path197709%_)
        (let ((_%self197712%_ _%self197705%_))
          (if (##fx< '11 (##structure-length _%self197712%_))
              (begin
                (##unchecked-structure-set!
                 _%self197712%_
                 _%id197706%_
                 '1
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197712%_
                 (make-hash-table-eq)
                 '2
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197712%_
                 _%super197707%_
                 '3
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197712%_ '#f '4 '#f '#f)
                (##unchecked-structure-set! _%self197712%_ '#f '5 '#f '#f)
                (##unchecked-structure-set!
                 _%self197712%_
                 _%ns197708%_
                 '6
                 '#f
                 '#f)
                (##unchecked-structure-set!
                 _%self197712%_
                 _%path197709%_
                 '7
                 '#f
                 '#f)
                (##unchecked-structure-set! _%self197712%_ '() '8 '#f '#f)
                (##unchecked-structure-set! _%self197712%_ '() '9 '#f '#f)
                (##unchecked-structure-set! _%self197712%_ '#f '10 '#f '#f)
                (##unchecked-structure-set! _%self197712%_ '#f '11 '#f '#f)
                '#!void)
              (error '"struct-instance-init!: too many arguments for struct"
                     _%self197712%_
                     '11
                     (##structure-length _%self197712%_))))))
    (__bind-method!__%
     gx#module-context::t
     ':init!
     gx#module-context:::init!
     '#f)
    (define gx#prelude-context:::init!__%
      (lambda (_%self197538%_ _%ctx197539%_ _%root197540%_)
        (let* ((_%self197543%_ _%self197538%_)
               (_%super197559%_
                (let ((_%$e197553%_ _%root197540%_))
                  (if _%$e197553%_
                      _%$e197553%_
                      (let ((_%$e197556%_ (gx#core-context-root__0)))
                        (if _%$e197556%_
                            _%$e197556%_
                            (let ((__obj197787
                                   (##structure gx#root-context::t '#f '#f)))
                              (let ((__constructor197788
                                     (direct-method-ref
                                      gx#root-context::t
                                      __obj197787
                                      ':init!)))
                                (if __constructor197788
                                    (__constructor197788 __obj197787)
                                    (error '"missing constructor method implementation"
                                           'class:
                                           gx#root-context::t
                                           'method:
                                           ':init!)))
                              __obj197787)))))))
          (if _%ctx197539%_
              (let ((_%id197562%_
                     (##structure-ref
                      _%ctx197539%_
                      '1
                      gx#expander-context::t
                      '#f))
                    (_%path197563%_
                     (##structure-ref
                      _%ctx197539%_
                      '7
                      gx#module-context::t
                      '#f))
                    (_%in197564%_
                     (map gx#core-module-export->import
                          (##structure-ref
                           _%ctx197539%_
                           '9
                           gx#module-context::t
                           '#f)))
                    (_%e197565%_
                     (__make-atomic-promise
                      (lambda () (gx#eval-module _%ctx197539%_)))))
                (if (##fx< '8 (##structure-length _%self197543%_))
                    (begin
                      (##unchecked-structure-set!
                       _%self197543%_
                       _%id197562%_
                       '1
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197543%_
                       (make-hash-table-eq 'size: (##length _%in197564%_))
                       '2
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197543%_
                       _%super197559%_
                       '3
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197543%_
                       '#f
                       '4
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197543%_
                       '#f
                       '5
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197543%_
                       _%path197563%_
                       '6
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197543%_
                       _%in197564%_
                       '7
                       '#f
                       '#f)
                      (##unchecked-structure-set!
                       _%self197543%_
                       _%e197565%_
                       '8
                       '#f
                       '#f)
                      '#!void)
                    (error '"struct-instance-init!: too many arguments for struct"
                           _%self197543%_
                           '8
                           (##structure-length _%self197543%_)))
                (##for-each
                 (lambda (_%$%g197566197568%_)
                   (gx#core-bind-weak-import!__%
                    _%$%g197566197568%_
                    _%self197543%_))
                 _%in197564%_))
              (if (##fx< '8 (##structure-length _%self197543%_))
                  (begin
                    (##unchecked-structure-set! _%self197543%_ '#f '1 '#f '#f)
                    (##unchecked-structure-set!
                     _%self197543%_
                     (make-hash-table-eq)
                     '2
                     '#f
                     '#f)
                    (##unchecked-structure-set!
                     _%self197543%_
                     _%super197559%_
                     '3
                     '#f
                     '#f)
                    (##unchecked-structure-set! _%self197543%_ '#f '4 '#f '#f)
                    (##unchecked-structure-set! _%self197543%_ '#f '5 '#f '#f)
                    (##unchecked-structure-set! _%self197543%_ '#f '6 '#f '#f)
                    (##unchecked-structure-set! _%self197543%_ '() '7 '#f '#f)
                    (##unchecked-structure-set! _%self197543%_ '#f '8 '#f '#f)
                    '#!void)
                  (error '"struct-instance-init!: too many arguments for struct"
                         _%self197543%_
                         '8
                         (##structure-length _%self197543%_)))))))
    (define gx#prelude-context:::init!__0
      (lambda (_%self197574%_ _%ctx197575%_)
        (let ((_%root197577%_ '#f))
          (gx#prelude-context:::init!__%
           _%self197574%_
           _%ctx197575%_
           _%root197577%_))))
    (define gx#prelude-context:::init!
      (lambda _g197794_
        (let ((_g197795_ (##length _g197794_)))
          (cond ((##fx= _g197795_ 2)
                 (apply gx#prelude-context:::init!__0 _g197794_))
                ((##fx= _g197795_ 3)
                 (apply gx#prelude-context:::init!__% _g197794_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#prelude-context:::init!
                  _g197794_))))))
    (__bind-method!__%
     gx#prelude-context::t
     ':init!
     gx#prelude-context:::init!
     '#f)
    (define gx#import-export-expander-init!
      (lambda (_%self197412%_ _%e197413%_)
        (if (##fx< '3 (##structure-length _%self197412%_))
            (begin
              (##unchecked-structure-set!
               _%self197412%_
               _%e197413%_
               '1
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self197412%_
               (gx#current-expander-context)
               '2
               '#f
               '#f)
              (##unchecked-structure-set!
               _%self197412%_
               (##fx- (gx#current-expander-phi) '1)
               '3
               '#f
               '#f)
              '#!void)
            (error '"struct-instance-init!: too many arguments for struct"
                   _%self197412%_
                   '3
                   (##structure-length _%self197412%_)))))
    (define gx#import-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#import-expander::t
     ':init!
     gx#import-expander:::init!
     '#f)
    (define gx#export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#export-expander::t
     ':init!
     gx#export-expander:::init!
     '#f)
    (define gx#import-export-expander:::init! gx#import-export-expander-init!)
    (__bind-method!__%
     gx#import-export-expander::t
     ':init!
     gx#import-export-expander:::init!
     '#f)
    (define gx#import-expander::apply-import-expander
      (lambda (_%$%g197038197041%_ _%$%g197039197043%_)
        (gx#core-apply-user-expander__%
         _%$%g197038197041%_
         _%$%g197039197043%_
         'apply-import-expander)))
    (__bind-method!__%
     gx#import-expander::t
     'apply-import-expander
     gx#import-expander::apply-import-expander
     '#f)
    (define gx#export-expander::apply-export-expander
      (lambda (_%$%g196909196912%_ _%$%g196910196914%_)
        (gx#core-apply-user-expander__%
         _%$%g196909196912%_
         _%$%g196910196914%_
         'apply-export-expander)))
    (__bind-method!__%
     gx#export-expander::t
     'apply-export-expander
     gx#export-expander::apply-export-expander
     '#f)
    (define gx#module-source-path
      (lambda (_%ctx196780%_)
        (let* ((_%path196782%_
                (##structure-ref _%ctx196780%_ '7 gx#module-context::t '#f))
               (_%path196784%_
                (if (pair? _%path196782%_)
                    (##last _%path196782%_)
                    _%path196782%_)))
          (if (string? _%path196784%_) _%path196784%_ '#f))))
    (define gx#import-module__%
      (lambda (_%path196756%_ _%reload?196757%_ _%eval?196758%_)
        (let ((_%ctx196760%_
               ((gx#current-expander-module-import)
                _%path196756%_
                _%reload?196757%_)))
          (if (and _%ctx196760%_ _%eval?196758%_)
              (gx#eval-module _%ctx196760%_)
              '#!void)
          _%ctx196760%_)))
    (define gx#import-module__0
      (lambda (_%path196765%_)
        (let* ((_%reload?196767%_ '#f) (_%eval?196769%_ '#f))
          (gx#import-module__%
           _%path196765%_
           _%reload?196767%_
           _%eval?196769%_))))
    (define gx#import-module__1
      (lambda (_%path196771%_ _%reload?196772%_)
        (let ((_%eval?196774%_ '#f))
          (gx#import-module__%
           _%path196771%_
           _%reload?196772%_
           _%eval?196774%_))))
    (define gx#import-module
      (lambda _g197796_
        (let ((_g197797_ (##length _g197796_)))
          (cond ((##fx= _g197797_ 1) (apply gx#import-module__0 _g197796_))
                ((##fx= _g197797_ 2) (apply gx#import-module__1 _g197796_))
                ((##fx= _g197797_ 3) (apply gx#import-module__% _g197796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#import-module
                  _g197796_))))))
    (define gx#eval-module
      (lambda (_%mod196753%_)
        ((gx#current-expander-module-eval) _%mod196753%_)))
    (define gx#core-eval-module
      (lambda (_%obj196732%_)
        (letrec ((_%force-e196734%_
                  (lambda (_%getf196748%_ _%e196749%_)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda () (force (_%getf196748%_ _%e196749%_)))
                        gx#current-expander-phi
                        '0))
                     gx#current-expander-context
                     _%e196749%_))))
          (let _%recur196736%_ ((_%e196738%_ _%obj196732%_))
            (if (##structure-instance-of? _%e196738%_ 'gx#module-context::t)
                (let ()
                  (let ((_%$e196741%_
                         (gx#core-context-prelude__% _%e196738%_)))
                    (if _%$e196741%_ (_%recur196736%_ _%$e196741%_) '#!void))
                  (_%force-e196734%_ gx#module-context-e _%e196738%_))
                (if (##structure-instance-of?
                     _%e196738%_
                     'gx#prelude-context::t)
                    (_%force-e196734%_ gx#prelude-context-e _%e196738%_)
                    (if (gx#stx-string? _%e196738%_)
                        (_%recur196736%_
                         (gx#import-module__0
                          (gx#core-resolve-module-path__0 _%e196738%_)))
                        (if (gx#core-library-module-path? _%e196738%_)
                            (_%recur196736%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%e196738%_)))
                            (error '"cannot eval module" _%obj196732%_)))))))))
    (define gx#core-context-prelude__%
      (lambda (_%ctx196712%_)
        (let _%lp196714%_ ((_%e196716%_ _%ctx196712%_))
          (if (or (##structure-instance-of? _%e196716%_ 'gx#module-context::t)
                  (##structure-instance-of? _%e196716%_ 'gx#local-context::t))
              (_%lp196714%_ (##unchecked-structure-ref _%e196716%_ '3 '#f '#f))
              (if (##structure-instance-of? _%e196716%_ 'gx#prelude-context::t)
                  _%e196716%_
                  '#f)))))
    (define gx#core-context-prelude__0
      (lambda ()
        (let ((_%ctx196728%_ (gx#current-expander-context)))
          (gx#core-context-prelude__% _%ctx196728%_))))
    (define gx#core-context-prelude
      (lambda _g197798_
        (let ((_g197799_ (##length _g197798_)))
          (cond ((##fx= _g197799_ 0)
                 (apply gx#core-context-prelude__0 _g197798_))
                ((##fx= _g197799_ 1)
                 (apply gx#core-context-prelude__% _g197798_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-context-prelude
                  _g197798_))))))
    (define gx#core-module->prelude-context
      (lambda (_%ctx196703%_)
        (let ((_%$e196705%_ (__hash-get gx#__module-registry _%ctx196703%_)))
          (if _%$e196705%_
              _%$e196705%_
              (let ((_%pre196709%_
                     (let ((__obj197789
                            (##structure
                             gx#prelude-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#prelude-context:::init!__0
                        __obj197789
                        _%ctx196703%_)
                       __obj197789)))
                (__hash-put! gx#__module-registry _%ctx196703%_ _%pre196709%_)
                _%pre196709%_)))))
    (define gx#core-import-module__%
      (lambda (_%rpath196571%_ _%reload?196572%_)
        (letrec ((_%import-source196574%_
                  (lambda (_%path196662%_)
                    (if (member _%path196662%_ (gx#current-expander-path))
                        (gx#raise-syntax-error
                         '#f
                         '"Cyclic expansion"
                         (##append
                          (##member
                           _%path196662%_
                           (reverse (gx#current-expander-path)))
                          (cons _%path196662%_ '())))
                        '#!void)
                    (call-with-parameters__1
                     (lambda ()
                       (call-with-parameters__1
                        (lambda ()
                          (call-with-parameters__1
                           (lambda ()
                             (call-with-parameters__1
                              (lambda ()
                                (call-with-parameters__1
                                 (lambda ()
                                   (call-with-parameters__1
                                    (lambda ()
                                      (let ((_g197800_
                                             (gx#core-read-module
                                              _%path196662%_)))
                                        (begin
                                          (let ((_g197801_
                                                 (if (##values? _g197800_)
                                                     (##values-length
                                                      _g197800_)
                                                     1)))
                                            (if (not (##fx= _g197801_ 4))
                                                (error "Context expects 4 values"
                                                       _g197801_)))
                                          (let ((_%pre196670%_
                                                 (##values-ref _g197800_ 0))
                                                (_%id196671%_
                                                 (##values-ref _g197800_ 1))
                                                (_%ns196672%_
                                                 (##values-ref _g197800_ 2))
                                                (_%body196673%_
                                                 (##values-ref _g197800_ 3)))
                                            (let* ((_%prelude196683%_
                                                    (if (##structure-instance-of?
                                                         _%pre196670%_
                                                         'gx#prelude-context::t)
                                                        _%pre196670%_
                                                        (if (##structure-instance-of?
                                                             _%pre196670%_
                                                             'gx#module-context::t)
                                                            (gx#core-module->prelude-context
                                                             _%pre196670%_)
                                                            (if (string? _%pre196670%_)
                                                                (gx#core-module->prelude-context
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-import-module__0 _%pre196670%_))
                        (if _%pre196670%_
                            (error '"cannot import module; unknown prelude"
                                   _%rpath196571%_
                                   _%pre196670%_)
                            (let ((_%$e196679%_
                                   (gx#current-expander-module-prelude)))
                              (if _%$e196679%_
                                  _%$e196679%_
                                  (let ((__obj197790
                                         (##structure
                                          gx#prelude-context::t
                                          '#f
                                          '#f
                                          '#f
                                          '#f
                                          '#f
                                          '#f
                                          '#f
                                          '#f)))
                                    (gx#prelude-context:::init!__0
                                     __obj197790
                                     '#f)
                                    __obj197790))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%ctx196685%_
                                                    (let ((__obj197791
                                                           (##structure
                                                            gx#module-context::t
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f
                                                            '#f)))
                                                      (gx#module-context:::init!
                                                       __obj197791
                                                       _%id196671%_
                                                       _%prelude196683%_
                                                       _%ns196672%_
                                                       _%path196662%_)
                                                      __obj197791))
                                                   (_%body196687%_
                                                    (gx#core-expand-module-begin
                                                     _%body196673%_
                                                     _%ctx196685%_))
                                                   (_%body196689%_
                                                    (gx#core-quote-syntax__%
                                                     (gx#core-cons
                                                      '%#begin
                                                      _%body196687%_)
                                                     _%path196662%_
                                                     _%ctx196685%_
                                                     '())))
                                              (##unchecked-structure-set!
                                               _%ctx196685%_
                                               (__make-atomic-promise
                                                (lambda ()
                                                  (gx#eval-syntax*
                                                   _%body196689%_)))
                                               '10
                                               '#f
                                               '#f)
                                              (##unchecked-structure-set!
                                               _%ctx196685%_
                                               _%body196689%_
                                               '11
                                               '#f
                                               '#f)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%path196662%_
                                               _%ctx196685%_)
                                              (__hash-put!
                                               gx#__module-registry
                                               _%id196671%_
                                               _%ctx196685%_)
                                              _%ctx196685%_)))))
                                    gx#current-export-expander-phi
                                    '#f))
                                 gx#current-import-expander-phi
                                 '#f))
                              gx#current-expander-path
                              (cons _%path196662%_
                                    (gx#current-expander-path))))
                           gx#current-expander-phi
                           '0))
                        gx#current-expander-marks
                        '()))
                     gx#current-expander-context
                     (gx#core-context-root__0))))
                 (_%import-submodule196575%_
                  (lambda (_%rpath196591%_)
                    (let* ((_%$%rpath196592196599%_ _%rpath196591%_)
                           (_%$%E196594196602%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%rpath196592196599%_
                                     '([origin . refs]))
                              '#!void))
                           (_%$%K196595196650%_
                            (lambda (_%refs196605%_ _%origin196606%_)
                              (let ((_%ctx196608%_
                                     (if _%origin196606%_
                                         (gx#core-import-module__%
                                          _%origin196606%_
                                          _%reload?196572%_)
                                         (gx#current-expander-context))))
                                (let _%lp196610%_ ((_%rest196612%_
                                                    _%refs196605%_)
                                                   (_%ctx196613%_
                                                    _%ctx196608%_))
                                  (let* ((_%$%rest196614196622%_
                                          _%rest196612%_)
                                         (_%$%else196616196630%_
                                          (lambda () _%ctx196613%_))
                                         (_%$%K196618196638%_
                                          (lambda (_%rest196633%_ _%id196634%_)
                                            (let ((_%bind196636%_
                                                   (gx#resolve-identifier__%
                                                    _%id196634%_
                                                    '0
                                                    _%ctx196613%_)))
                                              (if (and (##structure-direct-instance-of?
                                                        _%bind196636%_
                                                        'gx#syntax-binding::t)
                                                       (##structure-instance-of?
                                                        (##unchecked-structure-ref
                                                         _%bind196636%_
                                                         '5
                                                         '#f
                                                         '#f)
                                                        'gx#module-context::t))
                                                  (_%lp196610%_
                                                   _%rest196633%_
                                                   (##unchecked-structure-ref
                                                    _%bind196636%_
                                                    '5
                                                    '#f
                                                    '#f))
                                                  (error '"cannot import submodule; not bound as a module"
                                                         _%rpath196591%_
                                                         _%id196634%_
                                                         _%bind196636%_))))))
                                    (if (pair? _%$%rest196614196622%_)
                                        (let ((_%$%hd196619196641%_
                                               (##car _%$%rest196614196622%_))
                                              (_%$%tl196620196643%_
                                               (##cdr _%$%rest196614196622%_)))
                                          (let* ((_%id196646%_
                                                  _%$%hd196619196641%_)
                                                 (_%rest196648%_
                                                  _%$%tl196620196643%_))
                                            (_%$%K196618196638%_
                                             _%rest196648%_
                                             _%id196646%_)))
                                        (_%$%else196616196630%_))))))))
                      (if (pair? _%$%rpath196592196599%_)
                          (let ((_%$%hd196596196653%_
                                 (##car _%$%rpath196592196599%_))
                                (_%$%tl196597196655%_
                                 (##cdr _%$%rpath196592196599%_)))
                            (let* ((_%origin196658%_ _%$%hd196596196653%_)
                                   (_%refs196660%_ _%$%tl196597196655%_))
                              (_%$%K196595196650%_
                               _%refs196660%_
                               _%origin196658%_)))
                          (_%$%E196594196602%_))))))
          (let ((_%$e196577%_
                 (if _%reload?196572%_
                     '#f
                     (__hash-get gx#__module-registry _%rpath196571%_))))
            (if _%$e196577%_
                _%$e196577%_
                (if (list? _%rpath196571%_)
                    (_%import-submodule196575%_ _%rpath196571%_)
                    (if (gx#core-library-module-path? _%rpath196571%_)
                        (let ((_%ctx196582%_
                               (gx#core-import-module__%
                                (gx#core-resolve-library-module-path
                                 _%rpath196571%_)
                                _%reload?196572%_)))
                          (__hash-put!
                           gx#__module-registry
                           _%rpath196571%_
                           _%ctx196582%_)
                          _%ctx196582%_)
                        (let* ((_%npath196585%_
                                (path-normalize _%rpath196571%_))
                               (_%$e196587%_
                                (if _%reload?196572%_
                                    '#f
                                    (__hash-get
                                     gx#__module-registry
                                     _%npath196585%_))))
                          (if _%$e196587%_
                              _%$e196587%_
                              (_%import-source196574%_
                               _%npath196585%_))))))))))
    (define gx#core-import-module__0
      (lambda (_%rpath196696%_)
        (let ((_%reload?196698%_ '#f))
          (gx#core-import-module__% _%rpath196696%_ _%reload?196698%_))))
    (define gx#core-import-module
      (lambda _g197802_
        (let ((_g197803_ (##length _g197802_)))
          (cond ((##fx= _g197803_ 1)
                 (apply gx#core-import-module__0 _g197802_))
                ((##fx= _g197803_ 2)
                 (apply gx#core-import-module__% _g197802_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-import-module
                  _g197802_))))))
    (define gx#core-read-module
      (lambda (_%path196553%_)
        (__with-catch
         (lambda (_%exn196555%_)
           (if (datum-parsing-exception? _%exn196555%_)
               (let ((_%pos196557%_
                      (datum-parsing-exception-filepos _%exn196555%_)))
                 (if (= _%pos196557%_ '0)
                     (gx#core-read-module/lang _%path196553%_)
                     (gx#raise-syntax-error
                      'read-module
                      '"error reading module"
                      _%path196553%_
                      (call-with-parameters__1
                       (lambda ()
                         (call-with-output-string
                          '""
                          (lambda (_%$%g196559196561%_)
                            (display-exception__%
                             _%exn196555%_
                             _%$%g196559196561%_))))
                       dump-stack-trace?
                       '#f)
                      (cons 'line:
                            (cons (##filepos-line _%pos196557%_)
                                  (cons 'col:
                                        (cons (##filepos-col _%pos196557%_)
                                              '())))))))
               (gx#raise-syntax-error
                'read-module
                '"error reading module"
                _%path196553%_
                (call-with-parameters__1
                 (lambda ()
                   (call-with-output-string
                    '""
                    (lambda (_%$%g196564196566%_)
                      (display-exception__%
                       _%exn196555%_
                       _%$%g196564196566%_))))
                 dump-stack-trace?
                 '#f))))
         (lambda () (gx#core-read-module/sexp _%path196553%_)))))
    (define gx#core-read-module/sexp
      (lambda (_%path196405%_)
        (let _%lp196407%_ ((_%body196409%_
                            (read-syntax-from-file _%path196405%_))
                           (_%pre196410%_ '#f)
                           (_%ns196411%_ '#f)
                           (_%pkg196412%_ '#f))
          (let* ((_%$%e196413196437%_ _%body196409%_)
                 (_%$%E196429196463%_
                  (lambda ()
                    (let ((_g197804_
                           (if _%pkg196412%_
                               (values _%pre196410%_
                                       _%ns196411%_
                                       _%pkg196412%_)
                               (gx#core-read-module-package
                                _%path196405%_
                                _%pre196410%_
                                _%ns196411%_))))
                      (begin
                        (let ((_g197805_
                               (if (##values? _g197804_)
                                   (##values-length _g197804_)
                                   1)))
                          (if (not (##fx= _g197805_ 3))
                              (error "Context expects 3 values" _g197805_)))
                        (let ((_%pre196441%_ (##values-ref _g197804_ 0))
                              (_%ns196442%_ (##values-ref _g197804_ 1))
                              (_%pkg196443%_ (##values-ref _g197804_ 2)))
                          (let* ((_%prelude196449%_
                                  (if (gx#core-bound-module-prelude?
                                       _%pre196441%_)
                                      (gx#syntax-local-e__0 _%pre196441%_)
                                      (if (gx#core-library-module-path?
                                           _%pre196441%_)
                                          (gx#core-resolve-library-module-path
                                           _%pre196441%_)
                                          (if (gx#stx-string? _%pre196441%_)
                                              (gx#core-resolve-module-path__%
                                               _%pre196441%_
                                               _%path196405%_)
                                              (gx#stx-e _%pre196441%_)))))
                                 (_%path-id196451%_
                                  (gx#core-module-path->namespace
                                   _%path196405%_))
                                 (_%pkg-id196453%_
                                  (if _%pkg196443%_
                                      (##string-append
                                       _%pkg196443%_
                                       '"/"
                                       _%path-id196451%_)
                                      _%path-id196451%_))
                                 (_%module-id196455%_
                                  (##string->symbol _%pkg-id196453%_))
                                 (_%module-ns196460%_
                                  (if (eq? _%ns196442%_ '#!void)
                                      '#f
                                      (let ((_%$e196457%_ _%ns196442%_))
                                        (if _%$e196457%_
                                            _%$e196457%_
                                            _%pkg-id196453%_)))))
                            (values _%prelude196449%_
                                    _%module-id196455%_
                                    _%module-ns196460%_
                                    _%body196409%_)))))))
                 (_%$%E196422196495%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e196413196437%_)
                        (let ((_%$%e196430196467%_
                               (gx#syntax-e _%$%e196413196437%_)))
                          (let ((_%$%hd196431196470%_
                                 (##car _%$%e196430196467%_))
                                (_%$%tl196432196472%_
                                 (##cdr _%$%e196430196467%_)))
                            (if (eq? (gx#stx-e _%$%hd196431196470%_) 'package:)
                                (if (gx#stx-pair? _%$%tl196432196472%_)
                                    (let ((_%$%e196433196475%_
                                           (gx#syntax-e _%$%tl196432196472%_)))
                                      (let ((_%$%hd196434196478%_
                                             (##car _%$%e196433196475%_))
                                            (_%$%tl196435196480%_
                                             (##cdr _%$%e196433196475%_)))
                                        (let* ((_%pkg196483%_
                                                _%$%hd196434196478%_)
                                               (_%rest196485%_
                                                _%$%tl196435196480%_)
                                               (_%pkg196493%_
                                                (if (gx#identifier?
                                                     _%pkg196483%_)
                                                    (symbol->string
                                                     (gx#stx-e _%pkg196483%_))
                                                    (if (or (gx#stx-string?
                                                             _%pkg196483%_)
                                                            (gx#stx-false?
                                                             _%pkg196483%_))
                                                        (gx#stx-e
                                                         _%pkg196483%_)
                                                        (gx#raise-syntax-error
                                                         'import
                                                         '"Bad syntax; Illegal package name"
                                                         _%pkg196483%_)))))
                                          (_%lp196407%_
                                           _%rest196485%_
                                           _%pre196410%_
                                           _%ns196411%_
                                           _%pkg196493%_))))
                                    (_%$%E196429196463%_))
                                (_%$%E196429196463%_))))
                        (_%$%E196429196463%_))))
                 (_%$%E196415196525%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e196413196437%_)
                        (let ((_%$%e196423196499%_
                               (gx#syntax-e _%$%e196413196437%_)))
                          (let ((_%$%hd196424196502%_
                                 (##car _%$%e196423196499%_))
                                (_%$%tl196425196504%_
                                 (##cdr _%$%e196423196499%_)))
                            (if (eq? (gx#stx-e _%$%hd196424196502%_)
                                     'namespace:)
                                (if (gx#stx-pair? _%$%tl196425196504%_)
                                    (let ((_%$%e196426196507%_
                                           (gx#syntax-e _%$%tl196425196504%_)))
                                      (let ((_%$%hd196427196510%_
                                             (##car _%$%e196426196507%_))
                                            (_%$%tl196428196512%_
                                             (##cdr _%$%e196426196507%_)))
                                        (let* ((_%ns196515%_
                                                _%$%hd196427196510%_)
                                               (_%rest196517%_
                                                _%$%tl196428196512%_)
                                               (_%ns196523%_
                                                (if (gx#identifier?
                                                     _%ns196515%_)
                                                    (symbol->string
                                                     (gx#stx-e _%ns196515%_))
                                                    (if (gx#stx-string?
                                                         _%ns196515%_)
                                                        (gx#stx-e _%ns196515%_)
                                                        (if (gx#stx-false?
                                                             _%ns196515%_)
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             'import
                                                             '"Bad syntax; illegal namespace"
                                                             _%ns196515%_))))))
                                          (_%lp196407%_
                                           _%rest196517%_
                                           _%pre196410%_
                                           _%ns196523%_
                                           _%pkg196412%_))))
                                    (_%$%E196422196495%_))
                                (_%$%E196422196495%_))))
                        (_%$%E196422196495%_))))
                 (_%$%E196414196549%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e196413196437%_)
                        (let ((_%$%e196416196529%_
                               (gx#syntax-e _%$%e196413196437%_)))
                          (let ((_%$%hd196417196532%_
                                 (##car _%$%e196416196529%_))
                                (_%$%tl196418196534%_
                                 (##cdr _%$%e196416196529%_)))
                            (if (eq? (gx#stx-e _%$%hd196417196532%_) 'prelude:)
                                (if (gx#stx-pair? _%$%tl196418196534%_)
                                    (let ((_%$%e196419196537%_
                                           (gx#syntax-e _%$%tl196418196534%_)))
                                      (let ((_%$%hd196420196540%_
                                             (##car _%$%e196419196537%_))
                                            (_%$%tl196421196542%_
                                             (##cdr _%$%e196419196537%_)))
                                        (let* ((_%prelude196545%_
                                                _%$%hd196420196540%_)
                                               (_%rest196547%_
                                                _%$%tl196421196542%_))
                                          (_%lp196407%_
                                           _%rest196547%_
                                           _%prelude196545%_
                                           _%ns196411%_
                                           _%pkg196412%_))))
                                    (_%$%E196415196525%_))
                                (_%$%E196415196525%_))))
                        (_%$%E196415196525%_)))))
            (_%$%E196414196549%_)))))
    (define gx#core-read-module/lang
      (lambda (_%path196226%_)
        (letrec ((_%default-read-module-body196228%_
                  (lambda (_%inp196397%_)
                    (let _%lp196399%_ ((_%body196401%_ '()))
                      (let ((_%next196403%_ (read-syntax__% _%inp196397%_)))
                        (if (eof-object? _%next196403%_)
                            (reverse _%body196401%_)
                            (_%lp196399%_
                             (cons _%next196403%_ _%body196401%_)))))))
                 (_%read-body196229%_
                  (lambda (_%inp196314%_
                           _%pre196315%_
                           _%ns196316%_
                           _%pkg196317%_
                           _%args196318%_)
                    (let ((_g197806_
                           (if _%pkg196317%_
                               (values _%pre196315%_
                                       _%ns196316%_
                                       _%pkg196317%_)
                               (gx#core-read-module-package
                                _%path196226%_
                                _%pre196315%_
                                _%ns196316%_))))
                      (begin
                        (let ((_g197807_
                               (if (##values? _g197806_)
                                   (##values-length _g197806_)
                                   1)))
                          (if (not (##fx= _g197807_ 3))
                              (error "Context expects 3 values" _g197807_)))
                        (let ((_%pre196320%_ (##values-ref _g197806_ 0))
                              (_%ns196321%_ (##values-ref _g197806_ 1))
                              (_%pkg196322%_ (##values-ref _g197806_ 2)))
                          (let* ((_%prelude196324%_
                                  (gx#import-module__0 _%pre196320%_))
                                 (_%read-module-body196379%_
                                  (let ((_%$e196370%_
                                         (__find (lambda (_%$%e196325196327%_)
                                                   (let* ((_%$%$%e196325196329196339%_
                                                           _%$%e196325196327%_)
                                                          (_%$%else196331196347%_
                                                           (lambda () '#f))
                                                          (_%$%K196333196351%_
                                                           (lambda () '#t)))
                                                     (if (##structure-direct-instance-of?
                                                          _%$%$%e196325196329196339%_
                                                          'gx#module-export::t)
                                                         (let* ((_%$%e196334196354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##unchecked-structure-ref
                          _%$%$%e196325196329196339%_
                          '1
                          '#f
                          '#f))
                        (_%$%e196335196357%_
                         (##unchecked-structure-ref
                          _%$%$%e196325196329196339%_
                          '2
                          '#f
                          '#f))
                        (_%$%e196336196360%_
                         (##unchecked-structure-ref
                          _%$%$%e196325196329196339%_
                          '3
                          '#f
                          '#f)))
                   (if (##eq? _%$%e196336196360%_ '1)
                       (let ((_%$%e196337196363%_
                              (##unchecked-structure-ref
                               _%$%$%e196325196329196339%_
                               '4
                               '#f
                               '#f)))
                         (if (eq? _%$%e196337196363%_ 'read-module-body)
                             (_%$%K196333196351%_)
                             (_%$%else196331196347%_)))
                       (_%$%else196331196347%_)))
                 (_%$%else196331196347%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (##unchecked-structure-ref
                                                  _%prelude196324%_
                                                  '9
                                                  '#f
                                                  '#f))))
                                    (if _%$e196370%_
                                        (let ((_%proc196376%_
                                               (__with-catch
                                                void
                                                (lambda ()
                                                  (gx#eval-syntax__0
                                                   (##structure-ref
                                                    (gx#core-resolve-module-export
                                                     _%$e196370%_)
                                                    '1
                                                    gx#binding::t
                                                    '#f))))))
                                          (if (procedure? _%proc196376%_)
                                              _%proc196376%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal #lang prelude; read-module-body is not a procedure"
                                               _%path196226%_
                                               _%pre196320%_
                                               _%proc196376%_)))
                                        _%default-read-module-body196228%_)))
                                 (_%path-id196381%_
                                  (gx#core-module-path->namespace
                                   _%path196226%_))
                                 (_%pkg-id196383%_
                                  (if _%pkg196322%_
                                      (##string-append
                                       _%pkg196322%_
                                       '"/"
                                       _%path-id196381%_)
                                      _%path-id196381%_))
                                 (_%module-id196385%_
                                  (##string->symbol _%pkg-id196383%_))
                                 (_%module-ns196390%_
                                  (let ((_%$e196387%_ _%ns196321%_))
                                    (if _%$e196387%_
                                        _%$e196387%_
                                        _%pkg-id196383%_)))
                                 (_%body196394%_
                                  (call-with-parameters__1
                                   (lambda ()
                                     (call-with-parameters__1
                                      (lambda ()
                                        (_%read-module-body196379%_
                                         _%inp196314%_))
                                      gx#current-module-reader-args
                                      _%args196318%_))
                                   gx#current-module-reader-path
                                   _%path196226%_)))
                            (values _%prelude196324%_
                                    _%module-id196385%_
                                    _%module-ns196390%_
                                    _%body196394%_)))))))
                 (_%string-e196230%_
                  (lambda (_%obj196308%_ _%what196309%_)
                    (if (string? _%obj196308%_)
                        _%obj196308%_
                        (if (symbol? _%obj196308%_)
                            (##symbol->string _%obj196308%_)
                            (gx#raise-syntax-error
                             '#f
                             (string-append '"Illegal module " _%what196309%_)
                             _%path196226%_
                             _%obj196308%_)))))
                 (_%read-lang-args196231%_
                  (lambda (_%inp196263%_ _%args196264%_)
                    (let* ((_%$%args196265196273%_ _%args196264%_)
                           (_%$%else196267196281%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Illegal #lang arguments; missing prelude"
                               _%path196226%_)))
                           (_%$%K196269196296%_
                            (lambda (_%args196284%_ _%prelude196285%_)
                              (let* ((_%pkg196287%_
                                      (pgetq__0 'package: _%args196284%_))
                                     (_%pkg196289%_
                                      (if _%pkg196287%_
                                          (_%string-e196230%_
                                           _%pkg196287%_
                                           '"package")
                                          '#f))
                                     (_%ns196291%_
                                      (pgetq__0 'namespace: _%args196284%_))
                                     (_%ns196293%_
                                      (if _%ns196291%_
                                          (_%string-e196230%_
                                           _%ns196291%_
                                           '"namespace")
                                          '#f)))
                                (_%read-body196229%_
                                 _%inp196263%_
                                 _%prelude196285%_
                                 _%ns196293%_
                                 _%pkg196289%_
                                 _%args196284%_)))))
                      (if (pair? _%$%args196265196273%_)
                          (let ((_%$%hd196270196299%_
                                 (##car _%$%args196265196273%_))
                                (_%$%tl196271196301%_
                                 (##cdr _%$%args196265196273%_)))
                            (let* ((_%prelude196304%_ _%$%hd196270196299%_)
                                   (_%args196306%_ _%$%tl196271196301%_))
                              (_%$%K196269196296%_
                               _%args196306%_
                               _%prelude196304%_)))
                          (_%$%else196267196281%_)))))
                 (_%read-lang196232%_
                  (lambda (_%inp196237%_)
                    (let* ((_%head196239%_ (read-line _%inp196237%_))
                           (_%$e196241%_
                            (string-index__0 _%head196239%_ '#\space)))
                      (if _%$e196241%_
                          (let ((_%lang196246%_
                                 (substring _%head196239%_ '0 _%$e196241%_)))
                            (if (equal? _%lang196246%_ '"#lang")
                                (let* ((_%rest196248%_
                                        (substring
                                         _%head196239%_
                                         (##fx+ _%$e196241%_ '1)
                                         (string-length _%head196239%_)))
                                       (_%args196259%_
                                        (__with-catch
                                         (lambda (_%$%g196249196251%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Illegal #lang arguments"
                                            _%path196226%_
                                            _%$%g196249196251%_))
                                         (lambda ()
                                           (call-with-input-string
                                            _%rest196248%_
                                            (lambda (_%$%g196254196256%_)
                                              (read-all
                                               _%$%g196254196256%_
                                               read)))))))
                                  (_%read-lang-args196231%_
                                   _%inp196237%_
                                   _%args196259%_))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Illegal module syntax"
                                 _%path196226%_)))
                          (gx#raise-syntax-error
                           '#f
                           '"Illegal module syntax"
                           _%path196226%_)))))
                 (_%read-e196233%_
                  (lambda (_%inp196235%_)
                    (if (eq? (peek-char _%inp196235%_) '#\#)
                        (_%read-lang196232%_ _%inp196235%_)
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module syntax"
                         _%path196226%_)))))
          (gx#call-with-input-source-file _%path196226%_ _%read-e196233%_))))
    (define gx#core-read-module-package
      (lambda (_%path196174%_ _%pre196175%_ _%ns196176%_)
        (letrec ((_%string-e196178%_
                  (lambda (_%e196221%_)
                    (if (symbol? _%e196221%_)
                        (##symbol->string _%e196221%_)
                        (if (string? _%e196221%_)
                            _%e196221%_
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%e196221%_))))))
          (let _%lp196180%_ ((_%dir196182%_ (path-directory _%path196174%_))
                             (_%pkg-path196183%_ '()))
            (let ((_%gerbil.pkg196185%_
                   (path-expand '"gerbil.pkg" _%dir196182%_)))
              (if (##file-exists? _%gerbil.pkg196185%_)
                  (let ((_%plist196187%_
                         (gx#core-library-package-plist__% _%dir196182%_ '#t)))
                    (if (null? _%plist196187%_)
                        (let ((_%pkg196190%_
                               (if (null? _%pkg-path196183%_)
                                   '#f
                                   (string-join _%pkg-path196183%_ '"/"))))
                          (values _%pre196175%_ _%ns196176%_ _%pkg196190%_))
                        (if (list? _%plist196187%_)
                            (let* ((_%root196193%_
                                    (pgetq__0 'package: _%plist196187%_))
                                   (_%pkg196197%_
                                    (let ((_%pkg-path196195%_
                                           (if _%root196193%_
                                               (cons (_%string-e196178%_
                                                      _%root196193%_)
                                                     _%pkg-path196183%_)
                                               _%pkg-path196183%_)))
                                      (if (null? _%pkg-path196195%_)
                                          '#f
                                          (string-join
                                           _%pkg-path196195%_
                                           '"/"))))
                                   (_%ns196204%_
                                    (let ((_%ns196202%_
                                           (let ((_%$e196199%_ _%ns196176%_))
                                             (if _%$e196199%_
                                                 _%$e196199%_
                                                 (pgetq__0
                                                  'namespace:
                                                  _%plist196187%_)))))
                                      (if _%ns196202%_
                                          (_%string-e196178%_ _%ns196202%_)
                                          '#f)))
                                   (_%pre196209%_
                                    (let ((_%$e196206%_ _%pre196175%_))
                                      (if _%$e196206%_
                                          _%$e196206%_
                                          (pgetq__0
                                           'prelude:
                                           _%plist196187%_)))))
                              (values _%pre196209%_
                                      _%ns196204%_
                                      _%pkg196197%_))
                            (gx#raise-syntax-error
                             '#f
                             '"Malformed package info; unexpected datum"
                             _%plist196187%_))))
                  (let ((_%dir*196213%_
                         (path-strip-trailing-directory-separator
                          _%dir196182%_)))
                    (if (or (__string-empty? _%dir*196213%_)
                            (equal? _%dir196182%_ _%dir*196213%_))
                        (values _%pre196175%_ _%ns196176%_ '#f)
                        (let ((_%xpath196218%_
                               (path-strip-directory _%dir*196213%_))
                              (_%xdir196219%_ (path-directory _%dir*196213%_)))
                          (_%lp196180%_
                           _%xdir196219%_
                           (cons _%xpath196218%_ _%pkg-path196183%_)))))))))))
    (define gx#core-module-path->namespace
      (lambda (_%path196172%_)
        (path-strip-extension (path-strip-directory _%path196172%_))))
    (define gx#core-module-path->id
      (lambda (_%path196170%_)
        (##string->symbol (gx#core-module-path->namespace _%path196170%_))))
    (define gx#core-resolve-module-path__%
      (lambda (_%stx-path196149%_ _%rel196150%_)
        (let* ((_%path196152%_ (gx#stx-e _%stx-path196149%_))
               (_%path196154%_
                (if (__string-empty? (path-extension _%path196152%_))
                    (##string-append _%path196152%_ '".ss")
                    _%path196152%_)))
          (gx#core-resolve-path__%
           _%path196154%_
           (let ((_%$e196157%_ (gx#stx-source _%stx-path196149%_)))
             (if _%$e196157%_ _%$e196157%_ _%rel196150%_))))))
    (define gx#core-resolve-module-path__0
      (lambda (_%stx-path196163%_)
        (let ((_%rel196165%_ '#f))
          (gx#core-resolve-module-path__% _%stx-path196163%_ _%rel196165%_))))
    (define gx#core-resolve-module-path
      (lambda _g197808_
        (let ((_g197809_ (##length _g197808_)))
          (cond ((##fx= _g197809_ 1)
                 (apply gx#core-resolve-module-path__0 _g197808_))
                ((##fx= _g197809_ 2)
                 (apply gx#core-resolve-module-path__% _g197808_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-resolve-module-path
                  _g197808_))))))
    (define gx#core-resolve-library-module-path
      (lambda (_%libpath196034%_)
        (let* ((_%spath196036%_ (symbol->string (gx#stx-e _%libpath196034%_)))
               (_%spath196038%_
                (substring
                 _%spath196036%_
                 '1
                 (##string-length _%spath196036%_)))
               (_%ext196040%_ (path-extension _%spath196038%_))
               (_%ssi196042%_
                (if (__string-empty? _%ext196040%_)
                    (##string-append _%spath196038%_ '".ssi")
                    (##string-append
                     (path-strip-extension _%spath196038%_)
                     '".ssi")))
               (_%srcs196046%_
                (if (__string-empty? _%ext196040%_)
                    (##map (lambda (_%ext196044%_)
                             (string-append _%spath196038%_ _%ext196044%_))
                           '(".ss" ".sld" ".scm"))
                    (cons _%spath196038%_ '()))))
          (let _%lp196049%_ ((_%rest196051%_ (load-path)))
            (let* ((_%$%rest196052196061%_ _%rest196051%_)
                   (_%$%E196055196065%_
                    (lambda ()
                      (error '"No clause matching"
                             _%$%rest196052196061%_
                             '([dir . rest])
                             '([]))
                      '#!void)))
              (let ((_%$%K196057196136%_
                     (lambda (_%rest196076%_ _%dir196077%_)
                       (letrec ((_%resolve196079%_
                                 (lambda (_%ssi196092%_ _%srcs196093%_)
                                   (let ((_%compiled-path196095%_
                                          (path-expand
                                           _%ssi196092%_
                                           _%dir196077%_)))
                                     (if (##file-exists?
                                          _%compiled-path196095%_)
                                         (path-normalize
                                          _%compiled-path196095%_)
                                         (let _%lpr196097%_ ((_%rest-src196099%_
                                                              _%srcs196093%_))
                                           (let* ((_%$%rest-src196100196108%_
                                                   _%rest-src196099%_)
                                                  (_%$%else196102196116%_
                                                   (lambda ()
                                                     (_%lp196049%_
                                                      _%rest196076%_)))
                                                  (_%$%K196104196124%_
                                                   (lambda (_%rest-src196119%_
                                                            _%src196120%_)
                                                     (let ((_%src-path196122%_
                                                            (path-expand
                                                             _%src196120%_
                                                             _%dir196077%_)))
                                                       (if (##file-exists?
                                                            _%src-path196122%_)
                                                           (path-normalize
                                                            _%src-path196122%_)
                                                           (_%lpr196097%_
                                                            _%rest-src196119%_))))))
                                             (if (pair? _%$%rest-src196100196108%_)
                                                 (let ((_%$%hd196105196127%_
                                                        (##car _%$%rest-src196100196108%_))
                                                       (_%$%tl196106196129%_
                                                        (##cdr _%$%rest-src196100196108%_)))
                                                   (let* ((_%src196132%_
                                                           _%$%hd196105196127%_)
                                                          (_%rest-src196134%_
                                                           _%$%tl196106196129%_))
                                                     (_%$%K196104196124%_
                                                      _%rest-src196134%_
                                                      _%src196132%_)))
                                                 (_%$%else196102196116%_)))))))))
                         (let ((_%$e196081%_
                                (gx#core-library-package-path-prefix
                                 _%dir196077%_)))
                           (if _%$e196081%_
                               (if (##string-prefix?
                                    _%$e196081%_
                                    _%spath196038%_)
                                   (let ((_%ssi196088%_
                                          (substring
                                           _%ssi196042%_
                                           (##string-length _%$e196081%_)
                                           (##string-length _%ssi196042%_)))
                                         (_%srcs196089%_
                                          (##map (lambda (_%src196086%_)
                                                   (substring
                                                    _%src196086%_
                                                    (##string-length
                                                     _%$e196081%_)
                                                    (string-length
                                                     _%src196086%_)))
                                                 _%srcs196046%_)))
                                     (_%resolve196079%_
                                      _%ssi196088%_
                                      _%srcs196089%_))
                                   (_%lp196049%_ _%rest196076%_))
                               (_%resolve196079%_
                                _%ssi196042%_
                                _%srcs196046%_))))))
                    (_%$%K196056196070%_
                     (lambda ()
                       (gx#raise-syntax-error
                        '#f
                        '"cannot find library module"
                        _%libpath196034%_))))
                (let ((_%$%try-match196054196073%_
                       (lambda ()
                         (if (null? _%$%rest196052196061%_)
                             (_%$%K196056196070%_)
                             (_%$%E196055196065%_)))))
                  (if (pair? _%$%rest196052196061%_)
                      (let ((_%$%tl196059196141%_
                             (##cdr _%$%rest196052196061%_))
                            (_%$%hd196058196139%_
                             (##car _%$%rest196052196061%_)))
                        (let ((_%dir196144%_ _%$%hd196058196139%_)
                              (_%rest196146%_ _%$%tl196059196141%_))
                          (_%$%K196057196136%_ _%rest196146%_ _%dir196144%_)))
                      (_%$%try-match196054196073%_)))))))))
    (define gx#core-resolve-library-relative-module-path
      (lambda (_%modpath196002%_)
        (letrec ((_%resolve196004%_
                  (lambda (_%path196025%_ _%base196026%_)
                    (let ((_%$e196028%_
                           (string-rindex__0 _%base196026%_ '#\/)))
                      (if _%$e196028%_
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append
                             '":"
                             (substring _%base196026%_ '0 _%$e196028%_)
                             '"/"
                             _%path196025%_)))
                          (gx#core-resolve-library-module-path
                           (##string->symbol
                            (string-append '":" _%path196025%_))))))))
          (let ((_%spath196006%_ (symbol->string (gx#stx-e _%modpath196002%_)))
                (_%mod196007%_
                 (gx#core-context-top__%
                  (gx#current-expander-context)
                  gx#module-context?)))
            (if _%mod196007%_
                '#!void
                (gx#raise-syntax-error
                 '#f
                 '"cannot resolve relative module path; not in module context"
                 _%modpath196002%_))
            (let ((_%mpath196009%_
                   (symbol->string
                    (##structure-ref
                     _%mod196007%_
                     '1
                     gx#expander-context::t
                     '#f))))
              (let _%lp196011%_ ((_%spath196013%_ _%spath196006%_)
                                 (_%mpath196014%_ _%mpath196009%_))
                (if (string-prefix? '"../" _%spath196013%_)
                    (let ((_%$e196017%_
                           (string-rindex__0 _%mpath196014%_ '#\/)))
                      (if _%$e196017%_
                          (_%lp196011%_
                           (substring
                            _%spath196013%_
                            '3
                            (string-length _%spath196013%_))
                           (substring _%mpath196014%_ '0 _%$e196017%_))
                          (gx#raise-syntax-error
                           '#f
                           '"cannot resolve relative module path; illegal traversal"
                           _%modpath196002%_)))
                    (if (string-prefix? '"./" _%spath196013%_)
                        (_%lp196011%_
                         (substring
                          _%spath196013%_
                          '2
                          (string-length _%spath196013%_))
                         _%mpath196014%_)
                        (_%resolve196004%_
                         _%spath196013%_
                         _%mpath196014%_)))))))))
    (define gx#core-library-package-path-prefix
      (lambda (_%dir195994%_)
        (let ((_%$e195996%_
               (pgetq__0
                'package:
                (gx#core-library-package-plist__0 _%dir195994%_))))
          (if _%$e195996%_
              (##string-append (symbol->string _%$e195996%_) '"/")
              '#f))))
    (define gx#core-library-package-plist__%
      (lambda (_%dir195964%_ _%exists?195965%_)
        (let ((_%$e195967%_ (__hash-get gx#__module-pkg-cache _%dir195964%_)))
          (if _%$e195967%_
              _%$e195967%_
              (let* ((_%gerbil.pkg195971%_
                      (path-expand '"gerbil.pkg" _%dir195964%_))
                     (_%plist195981%_
                      (if (or _%exists?195965%_
                              (##file-exists? _%gerbil.pkg195971%_))
                          (let ((_%e195976%_
                                 (gx#call-with-input-source-file
                                  _%gerbil.pkg195971%_
                                  read)))
                            (if (eof-object? _%e195976%_)
                                '()
                                (if (list? _%e195976%_)
                                    _%e195976%_
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Malformed package info; unexpected datum"
                                     _%gerbil.pkg195971%_
                                     _%e195976%_))))
                          '())))
                (__hash-put!
                 gx#__module-pkg-cache
                 _%dir195964%_
                 _%plist195981%_)
                _%plist195981%_)))))
    (define gx#core-library-package-plist__0
      (lambda (_%dir195987%_)
        (let ((_%exists?195989%_ '#f))
          (gx#core-library-package-plist__% _%dir195987%_ _%exists?195989%_))))
    (define gx#core-library-package-plist
      (lambda _g197810_
        (let ((_g197811_ (##length _g197810_)))
          (cond ((##fx= _g197811_ 1)
                 (apply gx#core-library-package-plist__0 _g197810_))
                ((##fx= _g197811_ 2)
                 (apply gx#core-library-package-plist__% _g197810_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-library-package-plist
                  _g197810_))))))
    (define gx#core-library-module-path?
      (lambda (_%stx195961%_)
        (gx#core-special-module-path? _%stx195961%_ '#\:)))
    (define gx#core-library-relative-module-path?
      (lambda (_%stx195959%_)
        (gx#core-special-module-path? _%stx195959%_ '#\.)))
    (define gx#core-special-module-path?
      (lambda (_%stx195954%_ _%char195955%_)
        (if (gx#identifier? _%stx195954%_)
            (if (interned-symbol? (gx#stx-e _%stx195954%_))
                (let ((_%str195957%_
                       (symbol->string (gx#stx-e _%stx195954%_))))
                  (if (##fx> (##string-length _%str195957%_) '1)
                      (eq? (string-ref _%str195957%_ '0) _%char195955%_)
                      '#f))
                '#f)
            '#f)))
    (define gx#core-bound-prelude?
      (lambda (_%stx195948%_)
        (gx#core-bound-identifier?__%
         _%stx195948%_
         (lambda (_%$%g195949195951%_)
           (gx#expander-binding?__%
            _%$%g195949195951%_
            gx#prelude-context?)))))
    (define gx#core-bound-module?
      (lambda (_%stx195942%_)
        (gx#core-bound-identifier?__%
         _%stx195942%_
         (lambda (_%$%g195943195945%_)
           (gx#expander-binding?__% _%$%g195943195945%_ gx#module-context?)))))
    (define gx#core-bound-module-prelude?
      (lambda (_%stx195929%_)
        (letrec ((_%module-prelude?195931%_
                  (lambda (_%e195937%_)
                    (let ((_%$e195939%_
                           (##structure-instance-of?
                            _%e195937%_
                            'gx#module-context::t)))
                      (if _%$e195939%_
                          _%$e195939%_
                          (##structure-instance-of?
                           _%e195937%_
                           'gx#prelude-context::t))))))
          (gx#core-bound-identifier?__%
           _%stx195929%_
           (lambda (_%$%g195932195934%_)
             (gx#expander-binding?__%
              _%$%g195932195934%_
              _%module-prelude?195931%_))))))
    (define gx#core-bind-import!__%
      (lambda (_%in195860%_ _%ctx195861%_ _%force-weak?195862%_)
        (let* ((_%$%in195863195872%_ _%in195860%_)
               (_%$%E195865195875%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%in195863195872%_
                         '((module-import source key phi weak?)))
                  '#!void))
               (_%$%K195866195888%_
                (lambda (_%weak?195878%_
                         _%phi195879%_
                         _%key195880%_
                         _%source195881%_)
                  (gx#core-bind!__%
                   _%key195880%_
                   (let* ((_%e195883%_
                           (gx#core-resolve-module-export _%source195881%_))
                          (__obj197792
                           (##structure
                            gx#import-binding::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f)))
                     (gx#import-binding:::init!
                      __obj197792
                      (##unchecked-structure-ref _%e195883%_ '1 '#f '#f)
                      _%key195880%_
                      _%phi195879%_
                      _%e195883%_
                      (##unchecked-structure-ref _%source195881%_ '1 '#f '#f)
                      (let ((_%$e195885%_ _%force-weak?195862%_))
                        (if _%$e195885%_ _%$e195885%_ _%weak?195878%_)))
                     __obj197792)
                   gx#core-context-rebind?
                   _%phi195879%_
                   _%ctx195861%_))))
          (if (##structure-direct-instance-of?
               _%$%in195863195872%_
               'gx#module-import::t)
              (let* ((_%$%e195867195891%_
                      (##unchecked-structure-ref
                       _%$%in195863195872%_
                       '1
                       '#f
                       '#f))
                     (_%source195894%_ _%$%e195867195891%_)
                     (_%$%e195868195896%_
                      (##unchecked-structure-ref
                       _%$%in195863195872%_
                       '2
                       '#f
                       '#f))
                     (_%key195899%_ _%$%e195868195896%_)
                     (_%$%e195869195901%_
                      (##unchecked-structure-ref
                       _%$%in195863195872%_
                       '3
                       '#f
                       '#f))
                     (_%phi195904%_ _%$%e195869195901%_)
                     (_%$%e195870195906%_
                      (##unchecked-structure-ref
                       _%$%in195863195872%_
                       '4
                       '#f
                       '#f))
                     (_%weak?195909%_ _%$%e195870195906%_))
                (_%$%K195866195888%_
                 _%weak?195909%_
                 _%phi195904%_
                 _%key195899%_
                 _%source195894%_))
              (_%$%E195865195875%_)))))
    (define gx#core-bind-import!__0
      (lambda (_%in195914%_)
        (let* ((_%ctx195916%_ (gx#current-expander-context))
               (_%force-weak?195918%_ '#f))
          (gx#core-bind-import!__%
           _%in195914%_
           _%ctx195916%_
           _%force-weak?195918%_))))
    (define gx#core-bind-import!__1
      (lambda (_%in195920%_ _%ctx195921%_)
        (let ((_%force-weak?195923%_ '#f))
          (gx#core-bind-import!__%
           _%in195920%_
           _%ctx195921%_
           _%force-weak?195923%_))))
    (define gx#core-bind-import!
      (lambda _g197812_
        (let ((_g197813_ (##length _g197812_)))
          (cond ((##fx= _g197813_ 1) (apply gx#core-bind-import!__0 _g197812_))
                ((##fx= _g197813_ 2) (apply gx#core-bind-import!__1 _g197812_))
                ((##fx= _g197813_ 3) (apply gx#core-bind-import!__% _g197812_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-import!
                  _g197812_))))))
    (define gx#core-bind-weak-import!__%
      (lambda (_%in195846%_ _%ctx195847%_)
        (gx#core-bind-import!__% _%in195846%_ _%ctx195847%_ '#t)))
    (define gx#core-bind-weak-import!__0
      (lambda (_%in195852%_)
        (let ((_%ctx195854%_ (gx#current-expander-context)))
          (gx#core-bind-weak-import!__% _%in195852%_ _%ctx195854%_))))
    (define gx#core-bind-weak-import!
      (lambda _g197814_
        (let ((_g197815_ (##length _g197814_)))
          (cond ((##fx= _g197815_ 1)
                 (apply gx#core-bind-weak-import!__0 _g197814_))
                ((##fx= _g197815_ 2)
                 (apply gx#core-bind-weak-import!__% _g197814_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-weak-import!
                  _g197814_))))))
    (define gx#core-resolve-module-export
      (lambda (_%out195739%_)
        (letrec ((_%subst195741%_
                  (lambda (_%key195786%_)
                    (let* ((_%$%key195787195795%_ _%key195786%_)
                           (_%$%else195789195803%_ (lambda () _%key195786%_))
                           (_%$%K195791195833%_
                            (lambda (_%mark195806%_ _%id195807%_)
                              (let* ((_%$%mark195808195814%_ _%mark195806%_)
                                     (_%$%E195810195817%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%mark195808195814%_
                                               '((expander-mark subst)))
                                        '#!void))
                                     (_%$%K195811195825%_
                                      (lambda (_%subst195820%_)
                                        (let ((_%$e195822%_
                                               (if _%subst195820%_
                                                   (hash-get
                                                    _%subst195820%_
                                                    _%id195807%_)
                                                   '#f)))
                                          (if _%$e195822%_
                                              _%$e195822%_
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Illegal key; missing substitution"
                                               _%key195786%_))))))
                                (if (##structure-instance-of?
                                     _%$%mark195808195814%_
                                     'gx#expander-mark::t)
                                    (let* ((_%$%e195812195828%_
                                            (##unchecked-structure-ref
                                             _%$%mark195808195814%_
                                             '1
                                             '#f
                                             '#f))
                                           (_%subst195831%_
                                            _%$%e195812195828%_))
                                      (_%$%K195811195825%_ _%subst195831%_))
                                    (_%$%E195810195817%_))))))
                      (if (pair? _%$%key195787195795%_)
                          (let ((_%$%hd195792195836%_
                                 (##car _%$%key195787195795%_))
                                (_%$%tl195793195838%_
                                 (##cdr _%$%key195787195795%_)))
                            (let* ((_%id195841%_ _%$%hd195792195836%_)
                                   (_%mark195843%_ _%$%tl195793195838%_))
                              (_%$%K195791195833%_
                               _%mark195843%_
                               _%id195841%_)))
                          (_%$%else195789195803%_))))))
          (let* ((_%$%out195742195752%_ _%out195739%_)
                 (_%$%E195744195755%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%out195742195752%_
                           '((module-export ctx key phi _ _)))
                    '#!void))
                 (_%$%K195745195762%_
                  (lambda (_%phi195758%_ _%key195759%_ _%ctx195760%_)
                    (gx#core-context-resolve
                     (gx#core-context-shift _%ctx195760%_ _%phi195758%_)
                     (_%subst195741%_ _%key195759%_)))))
            (if (##structure-direct-instance-of?
                 _%$%out195742195752%_
                 'gx#module-export::t)
                (let* ((_%$%e195746195765%_
                        (##unchecked-structure-ref
                         _%$%out195742195752%_
                         '1
                         '#f
                         '#f))
                       (_%ctx195768%_ _%$%e195746195765%_)
                       (_%$%e195747195770%_
                        (##unchecked-structure-ref
                         _%$%out195742195752%_
                         '2
                         '#f
                         '#f))
                       (_%key195773%_ _%$%e195747195770%_)
                       (_%$%e195748195775%_
                        (##unchecked-structure-ref
                         _%$%out195742195752%_
                         '3
                         '#f
                         '#f))
                       (_%phi195778%_ _%$%e195748195775%_)
                       (_%$%e195749195780%_
                        (##unchecked-structure-ref
                         _%$%out195742195752%_
                         '4
                         '#f
                         '#f))
                       (_%$%e195750195783%_
                        (##unchecked-structure-ref
                         _%$%out195742195752%_
                         '5
                         '#f
                         '#f)))
                  (_%$%K195745195762%_
                   _%phi195778%_
                   _%key195773%_
                   _%ctx195768%_))
                (_%$%E195744195755%_))))))
    (define gx#core-module-export->import__%
      (lambda (_%out195665%_ _%rename195666%_ _%dphi195667%_)
        (let* ((_%$%out195668195678%_ _%out195665%_)
               (_%$%E195670195681%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%out195668195678%_
                         '((module-export ctx key phi name weak?)))
                  '#!void))
               (_%$%K195671195693%_
                (lambda (_%weak?195684%_
                         _%name195685%_
                         _%phi195686%_
                         _%key195687%_
                         _%ctx195688%_)
                  (##structure
                   gx#module-import::t
                   _%out195665%_
                   (let ((_%$e195690%_ _%rename195666%_))
                     (if _%$e195690%_ _%$e195690%_ _%name195685%_))
                   (fx+ _%phi195686%_ _%dphi195667%_)
                   _%weak?195684%_))))
          (if (##structure-direct-instance-of?
               _%$%out195668195678%_
               'gx#module-export::t)
              (let* ((_%$%e195672195696%_
                      (##unchecked-structure-ref
                       _%$%out195668195678%_
                       '1
                       '#f
                       '#f))
                     (_%ctx195699%_ _%$%e195672195696%_)
                     (_%$%e195673195701%_
                      (##unchecked-structure-ref
                       _%$%out195668195678%_
                       '2
                       '#f
                       '#f))
                     (_%key195704%_ _%$%e195673195701%_)
                     (_%$%e195674195706%_
                      (##unchecked-structure-ref
                       _%$%out195668195678%_
                       '3
                       '#f
                       '#f))
                     (_%phi195709%_ _%$%e195674195706%_)
                     (_%$%e195675195711%_
                      (##unchecked-structure-ref
                       _%$%out195668195678%_
                       '4
                       '#f
                       '#f))
                     (_%name195714%_ _%$%e195675195711%_)
                     (_%$%e195676195716%_
                      (##unchecked-structure-ref
                       _%$%out195668195678%_
                       '5
                       '#f
                       '#f))
                     (_%weak?195719%_ _%$%e195676195716%_))
                (_%$%K195671195693%_
                 _%weak?195719%_
                 _%name195714%_
                 _%phi195709%_
                 _%key195704%_
                 _%ctx195699%_))
              (_%$%E195670195681%_)))))
    (define gx#core-module-export->import__0
      (lambda (_%out195724%_)
        (let* ((_%rename195726%_ '#f) (_%dphi195728%_ '0))
          (gx#core-module-export->import__%
           _%out195724%_
           _%rename195726%_
           _%dphi195728%_))))
    (define gx#core-module-export->import__1
      (lambda (_%out195730%_ _%rename195731%_)
        (let ((_%dphi195733%_ '0))
          (gx#core-module-export->import__%
           _%out195730%_
           _%rename195731%_
           _%dphi195733%_))))
    (define gx#core-module-export->import
      (lambda _g197816_
        (let ((_g197817_ (##length _g197816_)))
          (cond ((##fx= _g197817_ 1)
                 (apply gx#core-module-export->import__0 _g197816_))
                ((##fx= _g197817_ 2)
                 (apply gx#core-module-export->import__1 _g197816_))
                ((##fx= _g197817_ 3)
                 (apply gx#core-module-export->import__% _g197816_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-module-export->import
                  _g197816_))))))
    (define gx#core-expand-module%
      (lambda (_%stx195564%_)
        (letrec ((_%make-context195566%_
                  (lambda (_%id195643%_)
                    (let* ((_%super195645%_ (gx#current-expander-context))
                           (_%bind-id195647%_ (gx#stx-e _%id195643%_))
                           (_%mod-id195649%_
                            (if (##structure-instance-of?
                                 _%super195645%_
                                 'gx#module-context::t)
                                (make-symbol__1
                                 (##unchecked-structure-ref
                                  _%super195645%_
                                  '1
                                  '#f
                                  '#f)
                                 '"~"
                                 _%bind-id195647%_)
                                _%bind-id195647%_))
                           (_%ns195651%_ (symbol->string _%mod-id195649%_))
                           (_%path195661%_
                            (if (##structure-instance-of?
                                 _%super195645%_
                                 'gx#module-context::t)
                                (let ((_%path195653%_
                                       (##unchecked-structure-ref
                                        _%super195645%_
                                        '7
                                        '#f
                                        '#f)))
                                  (if (or (pair? _%path195653%_)
                                          (null? _%path195653%_))
                                      (cons _%bind-id195647%_ _%path195653%_)
                                      (if _%path195653%_
                                          (cons _%bind-id195647%_
                                                (cons _%path195653%_ '()))
                                          _%bind-id195647%_)))
                                _%bind-id195647%_))
                           (__obj197793
                            (##structure
                             gx#module-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                      (gx#module-context:::init!
                       __obj197793
                       _%mod-id195649%_
                       _%super195645%_
                       _%ns195651%_
                       _%path195661%_)
                      __obj197793)))
                 (_%valid-module-id?195567%_
                  (lambda (_%id195618%_)
                    (let* ((_%str195620%_ (symbol->string _%id195618%_))
                           (_%len195622%_ (##string-length _%str195620%_)))
                      (if (##fx>= _%len195622%_ '1)
                          (let _%loop195625%_ ((_%index195627%_
                                                (##fx- (##string-length
                                                        _%str195620%_)
                                                       '1)))
                            (if (##fx>= _%index195627%_ '0)
                                (let ((_%c195629%_
                                       (string-ref
                                        _%str195620%_
                                        _%index195627%_)))
                                  (if (or (and (##char>=? _%c195629%_ '#\a)
                                               (##char<=? _%c195629%_ '#\z))
                                          (and (##char>=? _%c195629%_ '#\A)
                                               (##char<=? _%c195629%_ '#\Z))
                                          (and (##char>=? _%c195629%_ '#\0)
                                               (##char<=? _%c195629%_ '#\9))
                                          (##char=? _%c195629%_ '#\_)
                                          (##char=? _%c195629%_ '#\-))
                                      (_%loop195625%_
                                       (##fx- _%index195627%_ '1))
                                      '#f))
                                '#t))
                          '#f)))))
          (let* ((_%$%e195568195578%_ _%stx195564%_)
                 (_%$%E195570195582%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e195568195578%_)))
                 (_%$%E195569195614%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e195568195578%_)
                        (let ((_%$%e195571195586%_
                               (gx#syntax-e _%$%e195568195578%_)))
                          (let ((_%$%hd195572195589%_
                                 (##car _%$%e195571195586%_))
                                (_%$%tl195573195591%_
                                 (##cdr _%$%e195571195586%_)))
                            (if (gx#stx-pair? _%$%tl195573195591%_)
                                (let ((_%$%e195574195594%_
                                       (gx#syntax-e _%$%tl195573195591%_)))
                                  (let ((_%$%hd195575195597%_
                                         (##car _%$%e195574195594%_))
                                        (_%$%tl195576195599%_
                                         (##cdr _%$%e195574195594%_)))
                                    (let* ((_%id195602%_ _%$%hd195575195597%_)
                                           (_%body195604%_
                                            _%$%tl195576195599%_))
                                      (if (and (gx#identifier? _%id195602%_)
                                               (gx#stx-list? _%body195604%_))
                                          (if (_%valid-module-id?195567%_
                                               (gx#stx-e
                                                (gx#datum->syntax__0 '#f 'id)))
                                              (let* ((_%ctx195606%_
                                                      (_%make-context195566%_
                                                       _%id195602%_))
                                                     (_%body195608%_
                                                      (gx#core-expand-module-begin
                                                       _%body195604%_
                                                       _%ctx195606%_))
                                                     (_%body195610%_
                                                      (gx#core-quote-syntax__1
                                                       (gx#core-cons
                                                        '%#begin
                                                        _%body195608%_)
                                                       (gx#stx-source
                                                        _%stx195564%_))))
                                                (##unchecked-structure-set!
                                                 _%ctx195606%_
                                                 (__make-atomic-promise
                                                  (lambda ()
                                                    (gx#eval-syntax*
                                                     _%body195610%_)))
                                                 '10
                                                 '#f
                                                 '#f)
                                                (##unchecked-structure-set!
                                                 _%ctx195606%_
                                                 _%body195610%_
                                                 '11
                                                 '#f
                                                 '#f)
                                                (gx#core-bind-syntax!__0
                                                 _%id195602%_
                                                 _%ctx195606%_)
                                                (gx#core-quote-syntax__1
                                                 (gx#core-list
                                                  '%#module
                                                  (gx#core-quote-syntax__0
                                                   _%id195602%_)
                                                  _%body195610%_)
                                                 (gx#stx-source
                                                  _%stx195564%_)))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"invalid module id; allowed characters are A-Z,a-z,0-9,_,-"
                                               _%stx195564%_
                                               (gx#datum->syntax__0 '#f 'id)))
                                          (_%$%E195570195582%_)))))
                                (_%$%E195570195582%_))))
                        (_%$%E195570195582%_)))))
            (_%$%E195569195614%_)))))
    (define gx#core-expand-module-begin
      (lambda (_%body195529%_ _%ctx195530%_)
        (call-with-parameters__1
         (lambda ()
           (call-with-parameters__1
            (lambda ()
              (gx#core-bind-feature!__1 'gerbil-module '#t)
              (let* ((_%stx195534%_
                      (gx#core-expand-head
                       (cons '%%begin-module _%body195529%_)))
                     (_%$%e195535195542%_ _%stx195534%_)
                     (_%$%E195537195546%_
                      (lambda ()
                        (gx#raise-syntax-error
                         '#f
                         '"Illegal module body expansion"
                         _%stx195534%_)))
                     (_%$%E195536195560%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e195535195542%_)
                            (let ((_%$%e195538195550%_
                                   (gx#syntax-e _%$%e195535195542%_)))
                              (let ((_%$%hd195539195553%_
                                     (##car _%$%e195538195550%_))
                                    (_%$%tl195540195555%_
                                     (##cdr _%$%e195538195550%_)))
                                (if (and (gx#identifier? _%$%hd195539195553%_)
                                         (gx#core-identifier=?
                                          _%$%hd195539195553%_
                                          '%#begin-module))
                                    (let ((_%body195558%_
                                           _%$%tl195540195555%_))
                                      (if (gx#sealed-syntax? _%stx195534%_)
                                          _%body195558%_
                                          (gx#core-expand-module-body
                                           _%body195558%_)))
                                    (_%$%E195537195546%_))))
                            (_%$%E195537195546%_)))))
                (_%$%E195536195560%_)))
            gx#current-expander-phi
            '0))
         gx#current-expander-context
         _%ctx195530%_)))
    (define gx#core-expand-module-body
      (lambda (_%body195226%_)
        (letrec ((_%expand-special195228%_
                  (lambda (_%hd195357%_ _%K195358%_ _%rest195359%_ _%r195360%_)
                    (let* ((_%$%e195361195401%_ _%hd195357%_)
                           (_%$%E195396195405%_
                            (lambda ()
                              (_%K195358%_
                               _%rest195359%_
                               (cons (gx#core-expand-top _%hd195357%_)
                                     _%r195360%_))))
                           (_%$%E195383195417%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195361195401%_)
                                  (let ((_%$%e195397195409%_
                                         (gx#syntax-e _%$%e195361195401%_)))
                                    (let ((_%$%hd195398195412%_
                                           (##car _%$%e195397195409%_))
                                          (_%$%tl195399195414%_
                                           (##cdr _%$%e195397195409%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195398195412%_)
                                               (gx#core-identifier=?
                                                _%$%hd195398195412%_
                                                '%#export))
                                          (_%K195358%_
                                           _%rest195359%_
                                           (cons _%hd195357%_ _%r195360%_))
                                          (_%$%E195396195405%_))))
                                  (_%$%E195396195405%_))))
                           (_%$%E195373195459%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195361195401%_)
                                  (let ((_%$%e195384195421%_
                                         (gx#syntax-e _%$%e195361195401%_)))
                                    (let ((_%$%hd195385195424%_
                                           (##car _%$%e195384195421%_))
                                          (_%$%tl195386195426%_
                                           (##cdr _%$%e195384195421%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195385195424%_)
                                               (gx#core-identifier=?
                                                _%$%hd195385195424%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl195386195426%_)
                                              (let ((_%$%e195387195429%_
                                                     (gx#syntax-e
                                                      _%$%tl195386195426%_)))
                                                (let ((_%$%hd195388195432%_
                                                       (##car _%$%e195387195429%_))
                                                      (_%$%tl195389195434%_
                                                       (##cdr _%$%e195387195429%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd195388195432%_)
                                                      (let ((_%$%e195393195437%_
                                                             (gx#syntax-e
                                                              _%$%hd195388195432%_)))
                                                        (let ((_%$%hd195394195440%_
                                                               (##car _%$%e195393195437%_))
                                                              (_%$%tl195395195442%_
                                                               (##cdr _%$%e195393195437%_)))
                                                          (let ((_%id195445%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd195394195440%_))
                    (if (gx#stx-null? _%$%tl195395195442%_)
                        (if (gx#stx-pair? _%$%tl195389195434%_)
                            (let ((_%$%e195390195447%_
                                   (gx#syntax-e _%$%tl195389195434%_)))
                              (let ((_%$%hd195391195450%_
                                     (##car _%$%e195390195447%_))
                                    (_%$%tl195392195452%_
                                     (##cdr _%$%e195390195447%_)))
                                (let ((_%props195455%_ _%$%hd195391195450%_))
                                  (if (gx#stx-null? _%$%tl195392195452%_)
                                      (let ((_%bind195457%_
                                             (gx#resolve-identifier__0
                                              _%id195445%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind195457%_
                                         _%props195455%_)
                                        (_%K195358%_
                                         _%rest195359%_
                                         _%r195360%_))
                                      (_%$%E195383195417%_)))))
                            (_%$%E195383195417%_))
                        (_%$%E195383195417%_)))))
              (_%$%E195383195417%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195383195417%_))
                                          (_%$%E195383195417%_))))
                                  (_%$%E195383195417%_))))
                           (_%$%E195363195491%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195361195401%_)
                                  (let ((_%$%e195374195463%_
                                         (gx#syntax-e _%$%e195361195401%_)))
                                    (let ((_%$%hd195375195466%_
                                           (##car _%$%e195374195463%_))
                                          (_%$%tl195376195468%_
                                           (##cdr _%$%e195374195463%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195375195466%_)
                                               (gx#core-identifier=?
                                                _%$%hd195375195466%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl195376195468%_)
                                              (let ((_%$%e195377195471%_
                                                     (gx#syntax-e
                                                      _%$%tl195376195468%_)))
                                                (let ((_%$%hd195378195474%_
                                                       (##car _%$%e195377195471%_))
                                                      (_%$%tl195379195476%_
                                                       (##cdr _%$%e195377195471%_)))
                                                  (let ((_%hd-bind195479%_
                                                         _%$%hd195378195474%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl195379195476%_)
                                                        (let ((_%$%e195380195481%_
                                                               (gx#syntax-e
                                                                _%$%tl195379195476%_)))
                                                          (let ((_%$%hd195381195484%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e195380195481%_))
                        (_%$%tl195382195486%_ (##cdr _%$%e195380195481%_)))
                    (let ((_%expr195489%_ _%$%hd195381195484%_))
                      (if (gx#stx-null? _%$%tl195382195486%_)
                          (if (gx#core-bind-values? _%hd-bind195479%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind195479%_)
                                (_%K195358%_
                                 _%rest195359%_
                                 (cons _%hd195357%_ _%r195360%_)))
                              (_%$%E195373195459%_))
                          (_%$%E195373195459%_)))))
                (_%$%E195373195459%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195373195459%_))
                                          (_%$%E195373195459%_))))
                                  (_%$%E195373195459%_))))
                           (_%$%E195362195525%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195361195401%_)
                                  (let ((_%$%e195364195495%_
                                         (gx#syntax-e _%$%e195361195401%_)))
                                    (let ((_%$%hd195365195498%_
                                           (##car _%$%e195364195495%_))
                                          (_%$%tl195366195500%_
                                           (##cdr _%$%e195364195495%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd195365195498%_)
                                               (gx#core-identifier=?
                                                _%$%hd195365195498%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl195366195500%_)
                                              (let ((_%$%e195367195503%_
                                                     (gx#syntax-e
                                                      _%$%tl195366195500%_)))
                                                (let ((_%$%hd195368195506%_
                                                       (##car _%$%e195367195503%_))
                                                      (_%$%tl195369195508%_
                                                       (##cdr _%$%e195367195503%_)))
                                                  (let ((_%hd-bind195511%_
                                                         _%$%hd195368195506%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl195369195508%_)
                                                        (let ((_%$%e195370195513%_
                                                               (gx#syntax-e
                                                                _%$%tl195369195508%_)))
                                                          (let ((_%$%hd195371195516%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e195370195513%_))
                        (_%$%tl195372195518%_ (##cdr _%$%e195370195513%_)))
                    (let* ((_%expr195521%_ _%$%hd195371195516%_)
                           (_%props195523%_ _%$%tl195372195518%_))
                      (if (and (gx#core-bind-values? _%hd-bind195511%_)
                               (gx#stx-list? _%props195523%_)
                               (not (gx#stx-null? _%props195523%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind195511%_)
                            (_%K195358%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind195511%_
                                          (cons _%props195523%_ '())))
                                   _%rest195359%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind195511%_
                                          (cons _%expr195521%_ '())))
                                   _%r195360%_)))
                          (_%$%E195363195491%_)))))
                (_%$%E195363195491%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195363195491%_))
                                          (_%$%E195363195491%_))))
                                  (_%$%E195363195491%_)))))
                      (_%$%E195362195525%_))))
                 (_%expand-body195229%_
                  (lambda (_%rbody195231%_)
                    (let _%lp195233%_ ((_%rest195235%_ _%rbody195231%_)
                                       (_%body195236%_ '()))
                      (let* ((_%$%rest195237195245%_ _%rest195235%_)
                             (_%$%else195239195253%_
                              (lambda () _%body195236%_))
                             (_%$%K195241195345%_
                              (lambda (_%rest195256%_ _%hd195257%_)
                                (let* ((_%$%e195258195279%_ _%hd195257%_)
                                       (_%$%E195274195283%_
                                        (lambda ()
                                          (_%lp195233%_
                                           _%rest195256%_
                                           (cons (gx#core-expand-expression
                                                  _%hd195257%_)
                                                 _%body195236%_))))
                                       (_%$%E195270195297%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e195258195279%_)
                                              (let ((_%$%e195275195287%_
                                                     (gx#syntax-e
                                                      _%$%e195258195279%_)))
                                                (let ((_%$%hd195276195290%_
                                                       (##car _%$%e195275195287%_))
                                                      (_%$%tl195277195292%_
                                                       (##cdr _%$%e195275195287%_)))
                                                  (let ((_%form195295%_
                                                         _%$%hd195276195290%_))
                                                    (if (gx#core-bound-identifier?__%
                                                         _%form195295%_
                                                         gx#special-form-binding?)
                                                        (_%lp195233%_
                                                         _%rest195256%_
                                                         (cons _%hd195257%_
                                                               _%body195236%_))
                                                        (_%$%E195274195283%_)))))
                                              (_%$%E195274195283%_))))
                                       (_%$%E195260195309%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e195258195279%_)
                                              (let ((_%$%e195271195301%_
                                                     (gx#syntax-e
                                                      _%$%e195258195279%_)))
                                                (let ((_%$%hd195272195304%_
                                                       (##car _%$%e195271195301%_))
                                                      (_%$%tl195273195306%_
                                                       (##cdr _%$%e195271195301%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd195272195304%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd195272195304%_
                                                            '%#export))
                                                      (_%lp195233%_
                                                       _%rest195256%_
                                                       (cons (gx#core-expand-export%__0
                                                              _%hd195257%_)
                                                             _%body195236%_))
                                                      (_%$%E195270195297%_))))
                                              (_%$%E195270195297%_))))
                                       (_%$%E195259195341%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e195258195279%_)
                                              (let ((_%$%e195261195313%_
                                                     (gx#syntax-e
                                                      _%$%e195258195279%_)))
                                                (let ((_%$%hd195262195316%_
                                                       (##car _%$%e195261195313%_))
                                                      (_%$%tl195263195318%_
                                                       (##cdr _%$%e195261195313%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd195262195316%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd195262195316%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl195263195318%_)
                                                          (let ((_%$%e195264195321%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl195263195318%_)))
                    (let ((_%$%hd195265195324%_ (##car _%$%e195264195321%_))
                          (_%$%tl195266195326%_ (##cdr _%$%e195264195321%_)))
                      (let ((_%hd-bind195329%_ _%$%hd195265195324%_))
                        (if (gx#stx-pair? _%$%tl195266195326%_)
                            (let ((_%$%e195267195331%_
                                   (gx#syntax-e _%$%tl195266195326%_)))
                              (let ((_%$%hd195268195334%_
                                     (##car _%$%e195267195331%_))
                                    (_%$%tl195269195336%_
                                     (##cdr _%$%e195267195331%_)))
                                (let ((_%expr195339%_ _%$%hd195268195334%_))
                                  (if (gx#stx-null? _%$%tl195269195336%_)
                                      (_%lp195233%_
                                       _%rest195256%_
                                       (cons (gx#core-quote-syntax__1
                                              (gx#core-list
                                               '%#define-values
                                               (gx#core-quote-bind-values
                                                _%hd-bind195329%_)
                                               (gx#core-expand-expression
                                                _%expr195339%_))
                                              (gx#stx-source _%hd195257%_))
                                             _%body195236%_))
                                      (_%$%E195260195309%_)))))
                            (_%$%E195260195309%_)))))
                  (_%$%E195260195309%_))
              (_%$%E195260195309%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195260195309%_)))))
                                  (_%$%E195259195341%_)))))
                        (if (pair? _%$%rest195237195245%_)
                            (let ((_%$%hd195242195348%_
                                   (##car _%$%rest195237195245%_))
                                  (_%$%tl195243195350%_
                                   (##cdr _%$%rest195237195245%_)))
                              (let* ((_%hd195353%_ _%$%hd195242195348%_)
                                     (_%rest195355%_ _%$%tl195243195350%_))
                                (_%$%K195241195345%_
                                 _%rest195355%_
                                 _%hd195353%_)))
                            (_%$%else195239195253%_)))))))
          (_%expand-body195229%_
           (gx#core-expand-block__%
            (cons '%#begin-module _%body195226%_)
            _%expand-special195228%_
            '#f
            values)))))
    (define gx#core-expand-import/export
      (lambda (_%stx195067%_
               _%expanded?195068%_
               _%method195069%_
               _%current-phi195070%_
               _%expand1195071%_)
        (letrec ((_%K195073%_
                  (lambda (_%rest195193%_ _%r195194%_)
                    (let* ((_%$%e195195195202%_ _%rest195193%_)
                           (_%$%E195197195206%_ (lambda () _%r195194%_))
                           (_%$%E195196195222%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195195195202%_)
                                  (let ((_%$%e195198195210%_
                                         (gx#syntax-e _%$%e195195195202%_)))
                                    (let ((_%$%hd195199195213%_
                                           (##car _%$%e195198195210%_))
                                          (_%$%tl195200195215%_
                                           (##cdr _%$%e195198195210%_)))
                                      (let* ((_%hd195218%_
                                              _%$%hd195199195213%_)
                                             (_%rest195220%_
                                              _%$%tl195200195215%_))
                                        (_%step195074%_
                                         _%hd195218%_
                                         _%rest195220%_
                                         _%r195194%_))))
                                  (_%$%E195197195206%_)))))
                      (_%$%E195196195222%_))))
                 (_%step195074%_
                  (lambda (_%hd195107%_ _%rest195108%_ _%r195109%_)
                    (let* ((_%$%e195110195128%_ _%hd195107%_)
                           (_%$%E195123195132%_
                            (lambda ()
                              (if (_%expanded?195068%_ (gx#stx-e _%hd195107%_))
                                  (_%K195073%_
                                   _%rest195108%_
                                   (cons (gx#stx-e _%hd195107%_) _%r195109%_))
                                  (_%expand1195071%_
                                   _%hd195107%_
                                   _%K195073%_
                                   _%rest195108%_
                                   _%r195109%_))))
                           (_%$%E195119195148%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195110195128%_)
                                  (let ((_%$%e195124195136%_
                                         (gx#syntax-e _%$%e195110195128%_)))
                                    (let ((_%$%hd195125195139%_
                                           (##car _%$%e195124195136%_))
                                          (_%$%tl195126195141%_
                                           (##cdr _%$%e195124195136%_)))
                                      (let* ((_%macro195144%_
                                              _%$%hd195125195139%_)
                                             (_%body195146%_
                                              _%$%tl195126195141%_))
                                        (if (gx#core-bound-identifier?__%
                                             _%macro195144%_
                                             gx#syntax-binding?)
                                            (_%K195073%_
                                             (cons (gx#core-apply-expander__%
                                                    (gx#syntax-local-e__0
                                                     _%macro195144%_)
                                                    _%hd195107%_
                                                    _%method195069%_)
                                                   _%rest195108%_)
                                             _%r195109%_)
                                            (_%$%E195123195132%_)))))
                                  (_%$%E195123195132%_))))
                           (_%$%E195112195162%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195110195128%_)
                                  (let ((_%$%e195120195152%_
                                         (gx#syntax-e _%$%e195110195128%_)))
                                    (let ((_%$%hd195121195155%_
                                           (##car _%$%e195120195152%_))
                                          (_%$%tl195122195157%_
                                           (##cdr _%$%e195120195152%_)))
                                      (if (eq? (gx#stx-e _%$%hd195121195155%_)
                                               'begin:)
                                          (let ((_%body195160%_
                                                 _%$%tl195122195157%_))
                                            (_%K195073%_
                                             (gx#stx-foldr
                                              cons
                                              _%rest195108%_
                                              _%body195160%_)
                                             _%r195109%_))
                                          (_%$%E195119195148%_))))
                                  (_%$%E195119195148%_))))
                           (_%$%E195111195189%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e195110195128%_)
                                  (let ((_%$%e195113195166%_
                                         (gx#syntax-e _%$%e195110195128%_)))
                                    (let ((_%$%hd195114195169%_
                                           (##car _%$%e195113195166%_))
                                          (_%$%tl195115195171%_
                                           (##cdr _%$%e195113195166%_)))
                                      (if (eq? (gx#stx-e _%$%hd195114195169%_)
                                               'phi:)
                                          (if (gx#stx-pair?
                                               _%$%tl195115195171%_)
                                              (let ((_%$%e195116195174%_
                                                     (gx#syntax-e
                                                      _%$%tl195115195171%_)))
                                                (let ((_%$%hd195117195177%_
                                                       (##car _%$%e195116195174%_))
                                                      (_%$%tl195118195179%_
                                                       (##cdr _%$%e195116195174%_)))
                                                  (let* ((_%dphi195182%_
                                                          _%$%hd195117195177%_)
                                                         (_%body195184%_
                                                          _%$%tl195118195179%_))
                                                    (if (gx#stx-fixnum?
                                                         _%dphi195182%_)
                                                        (let ((_%rbody195187%_
                                                               (call-with-parameters__1
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (_%K195073%_ _%body195184%_ '()))
                        _%current-phi195070%_
                        (fx+ (gx#stx-e _%dphi195182%_)
                             (_%current-phi195070%_)))))
                  (_%K195073%_
                   _%rest195108%_
                   (append _%rbody195187%_ _%r195109%_)))
                (_%$%E195112195162%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E195112195162%_))
                                          (_%$%E195112195162%_))))
                                  (_%$%E195112195162%_)))))
                      (_%$%E195111195189%_)))))
          (let* ((_%$%e195075195082%_ _%stx195067%_)
                 (_%$%E195077195086%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e195075195082%_)))
                 (_%$%E195076195103%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e195075195082%_)
                        (let ((_%$%e195078195090%_
                               (gx#syntax-e _%$%e195075195082%_)))
                          (let ((_%$%hd195079195093%_
                                 (##car _%$%e195078195090%_))
                                (_%$%tl195080195095%_
                                 (##cdr _%$%e195078195090%_)))
                            (let ((_%body195098%_ _%$%tl195080195095%_))
                              (if (_%current-phi195070%_)
                                  (_%K195073%_ _%body195098%_ '())
                                  (call-with-parameters__1
                                   (lambda () (_%K195073%_ _%body195098%_ '()))
                                   _%current-phi195070%_
                                   (gx#current-expander-phi))))))
                        (_%$%E195077195086%_)))))
            (_%$%E195076195103%_)))))
    (define gx#core-expand-import%__%
      (lambda (_%stx194721%_ _%internal-expand?194722%_)
        (letrec ((_%expand1194724%_
                  (lambda (_%hd195039%_ _%K195040%_ _%rest195041%_ _%r195042%_)
                    (if (gx#core-bound-module? _%hd195039%_)
                        (_%import1194725%_
                         (gx#syntax-local-e__0 _%hd195039%_)
                         _%K195040%_
                         _%rest195041%_
                         _%r195042%_)
                        (if (gx#core-library-module-path? _%hd195039%_)
                            (_%import1194725%_
                             (gx#import-module__0
                              (gx#core-resolve-library-module-path
                               _%hd195039%_))
                             _%K195040%_
                             _%rest195041%_
                             _%r195042%_)
                            (if (gx#core-library-relative-module-path?
                                 _%hd195039%_)
                                (_%import1194725%_
                                 (gx#import-module__0
                                  (gx#core-resolve-library-relative-module-path
                                   _%hd195039%_))
                                 _%K195040%_
                                 _%rest195041%_
                                 _%r195042%_)
                                (let ((_%e195048%_ (gx#stx-e _%hd195039%_)))
                                  (if (pair? _%e195048%_)
                                      (let ((_%$e195051%_
                                             (gx#stx-e (##car _%e195048%_))))
                                        (if (eq? 'spec: _%$e195051%_)
                                            (_%import-spec194728%_
                                             _%hd195039%_
                                             _%K195040%_
                                             _%rest195041%_
                                             _%r195042%_)
                                            (if (eq? 'in: _%$e195051%_)
                                                (_%import-submodule194726%_
                                                 _%hd195039%_
                                                 _%K195040%_
                                                 _%rest195041%_
                                                 _%r195042%_)
                                                (if (eq? 'runtime:
                                                         _%$e195051%_)
                                                    (_%import-runtime194727%_
                                                     _%hd195039%_
                                                     _%K195040%_
                                                     _%rest195041%_
                                                     _%r195042%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; illegal import"
                                                     _%stx194721%_
                                                     _%hd195039%_)))))
                                      (if (string? _%e195048%_)
                                          (_%import1194725%_
                                           (gx#import-module__0
                                            (gx#core-resolve-module-path__%
                                             _%hd195039%_
                                             (gx#stx-source _%stx194721%_)))
                                           _%K195040%_
                                           _%rest195041%_
                                           _%r195042%_)
                                          (if (##structure-instance-of?
                                               _%e195048%_
                                               'gx#module-context::t)
                                              (_%K195040%_
                                               _%rest195041%_
                                               (cons _%e195048%_ _%r195042%_))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; illegal import"
                                               _%stx194721%_
                                               _%hd195039%_))))))))))
                 (_%import1194725%_
                  (lambda (_%ctx195028%_
                           _%K195029%_
                           _%rest195030%_
                           _%r195031%_)
                    (let ((_%dphi195033%_
                           (fx- (gx#current-import-expander-phi)
                                (gx#current-expander-phi))))
                      (_%K195029%_
                       _%rest195030%_
                       (cons (##structure
                              gx#import-set::t
                              _%ctx195028%_
                              _%dphi195033%_
                              (map (lambda (_%$%g195034195036%_)
                                     (gx#core-module-export->import__%
                                      _%$%g195034195036%_
                                      '#f
                                      _%dphi195033%_))
                                   (##unchecked-structure-ref
                                    _%ctx195028%_
                                    '9
                                    '#f
                                    '#f)))
                             _%r195031%_)))))
                 (_%import-submodule194726%_
                  (lambda (_%hd194995%_ _%K194996%_ _%rest194997%_ _%r194998%_)
                    (let* ((_%$%e194999195006%_ _%hd194995%_)
                           (_%$%E195001195010%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e194999195006%_)))
                           (_%$%E195000195024%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194999195006%_)
                                  (let ((_%$%e195002195014%_
                                         (gx#syntax-e _%$%e194999195006%_)))
                                    (let ((_%$%hd195003195017%_
                                           (##car _%$%e195002195014%_))
                                          (_%$%tl195004195019%_
                                           (##cdr _%$%e195002195014%_)))
                                      (let ((_%spath195022%_
                                             _%$%tl195004195019%_))
                                        (_%import1194725%_
                                         (_%import-spec-source194729%_
                                          _%spath195022%_)
                                         _%K194996%_
                                         _%rest194997%_
                                         _%r194998%_))))
                                  (_%$%E195001195010%_)))))
                      (_%$%E195000195024%_))))
                 (_%import-runtime194727%_
                  (lambda (_%hd194962%_ _%K194963%_ _%rest194964%_ _%r194965%_)
                    (let* ((_%$%e194966194973%_ _%hd194962%_)
                           (_%$%E194968194977%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e194966194973%_)))
                           (_%$%E194967194991%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194966194973%_)
                                  (let ((_%$%e194969194981%_
                                         (gx#syntax-e _%$%e194966194973%_)))
                                    (let ((_%$%hd194970194984%_
                                           (##car _%$%e194969194981%_))
                                          (_%$%tl194971194986%_
                                           (##cdr _%$%e194969194981%_)))
                                      (let ((_%spath194989%_
                                             _%$%tl194971194986%_))
                                        (_%K194963%_
                                         _%rest194964%_
                                         (cons (_%import-spec-source194729%_
                                                _%spath194989%_)
                                               _%r194965%_)))))
                                  (_%$%E194968194977%_)))))
                      (_%$%E194967194991%_))))
                 (_%import-spec194728%_
                  (lambda (_%hd194800%_ _%K194801%_ _%rest194802%_ _%r194803%_)
                    (let* ((_%$%e194804194821%_ _%hd194800%_)
                           (_%$%E194813194825%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e194804194821%_)))
                           (_%$%E194806194936%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194804194821%_)
                                  (let ((_%$%e194814194829%_
                                         (gx#syntax-e _%$%e194804194821%_)))
                                    (let ((_%$%hd194815194832%_
                                           (##car _%$%e194814194829%_))
                                          (_%$%tl194816194834%_
                                           (##cdr _%$%e194814194829%_)))
                                      (if (gx#stx-pair? _%$%tl194816194834%_)
                                          (let ((_%$%e194817194837%_
                                                 (gx#syntax-e
                                                  _%$%tl194816194834%_)))
                                            (let ((_%$%hd194818194840%_
                                                   (##car _%$%e194817194837%_))
                                                  (_%$%tl194819194842%_
                                                   (##cdr _%$%e194817194837%_)))
                                              (let* ((_%path194845%_
                                                      _%$%hd194818194840%_)
                                                     (_%specs194847%_
                                                      _%$%tl194819194842%_))
                                                (let ((_%src-ctx194849%_
                                                       (_%import-spec-source194729%_
                                                        _%path194845%_))
                                                      (_%exports194850%_
                                                       (make-hash-table__%
                                                        '#f
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value
                                                        absent-value))
                                                      (_%specs194851%_
                                                       (gx#syntax->list
                                                        _%specs194847%_)))
                                                  (for-each
                                                   (lambda (_%out194853%_)
                                                     (__hash-put!
                                                      _%exports194850%_
                                                      (cons (##unchecked-structure-ref
                                                             _%out194853%_
                                                             '3
                                                             '#f
                                                             '#f)
                                                            (##unchecked-structure-ref
                                                             _%out194853%_
                                                             '4
                                                             '#f
                                                             '#f))
                                                      _%out194853%_))
                                                   (##unchecked-structure-ref
                                                    _%src-ctx194849%_
                                                    '9
                                                    '#f
                                                    '#f))
                                                  (_%K194801%_
                                                   _%rest194802%_
                                                   (foldl__0
                                                    (lambda (_%spec194855%_
                                                             _%r194856%_)
                                                      (let* ((_%$%e194857194873%_
                                                              _%spec194855%_)
                                                             (_%$%E194859194877%_
                                                              (lambda ()
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid syntax-case clause"
                         _%$%e194857194873%_)))
                     (_%$%E194858194932%_
                      (lambda ()
                        (if (gx#stx-pair? _%$%e194857194873%_)
                            (let ((_%$%e194860194881%_
                                   (gx#syntax-e _%$%e194857194873%_)))
                              (let ((_%$%hd194861194884%_
                                     (##car _%$%e194860194881%_))
                                    (_%$%tl194862194886%_
                                     (##cdr _%$%e194860194881%_)))
                                (let ((_%phi194889%_ _%$%hd194861194884%_))
                                  (if (gx#stx-pair? _%$%tl194862194886%_)
                                      (let ((_%$%e194863194891%_
                                             (gx#syntax-e
                                              _%$%tl194862194886%_)))
                                        (let ((_%$%hd194864194894%_
                                               (##car _%$%e194863194891%_))
                                              (_%$%tl194865194896%_
                                               (##cdr _%$%e194863194891%_)))
                                          (let ((_%name194899%_
                                                 _%$%hd194864194894%_))
                                            (if (gx#stx-pair?
                                                 _%$%tl194865194896%_)
                                                (let ((_%$%e194866194901%_
                                                       (gx#syntax-e
                                                        _%$%tl194865194896%_)))
                                                  (let ((_%$%hd194867194904%_
                                                         (##car _%$%e194866194901%_))
                                                        (_%$%tl194868194906%_
                                                         (##cdr _%$%e194866194901%_)))
                                                    (let ((_%src-phi194909%_
                                                           _%$%hd194867194904%_))
                                                      (if (gx#stx-pair?
                                                           _%$%tl194868194906%_)
                                                          (let ((_%$%e194869194911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl194868194906%_)))
                    (let ((_%$%hd194870194914%_ (##car _%$%e194869194911%_))
                          (_%$%tl194871194916%_ (##cdr _%$%e194869194911%_)))
                      (let ((_%src-name194919%_ _%$%hd194870194914%_))
                        (if (gx#stx-null? _%$%tl194871194916%_)
                            (if (and (gx#stx-fixnum? _%src-phi194909%_)
                                     (gx#identifier? _%src-name194919%_)
                                     (gx#stx-fixnum? _%phi194889%_)
                                     (gx#identifier? _%name194899%_))
                                (let ((_%src-phi194921%_
                                       (gx#stx-e _%src-phi194909%_))
                                      (_%src-name194922%_
                                       (gx#core-identifier-key
                                        _%src-name194919%_))
                                      (_%phi194923%_ (gx#stx-e _%phi194889%_))
                                      (_%name194924%_
                                       (gx#core-identifier-key
                                        _%name194899%_)))
                                  (let ((_%$e194926%_
                                         (__hash-get
                                          _%exports194850%_
                                          (cons _%src-phi194921%_
                                                _%src-name194922%_))))
                                    (if _%$e194926%_
                                        (cons (gx#core-module-export->import__%
                                               _%$e194926%_
                                               _%name194924%_
                                               (fx- _%phi194923%_
                                                    _%src-phi194921%_))
                                              _%r194856%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; no matching export"
                                         _%stx194721%_
                                         _%hd194800%_))))
                                (_%$%E194859194877%_))
                            (_%$%E194859194877%_)))))
                  (_%$%E194859194877%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E194859194877%_)))))
                                      (_%$%E194859194877%_)))))
                            (_%$%E194859194877%_)))))
                (_%$%E194858194932%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%r194803%_
                                                    _%specs194851%_))))))
                                          (_%$%E194813194825%_))))
                                  (_%$%E194813194825%_))))
                           (_%$%E194805194958%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e194804194821%_)
                                  (let ((_%$%e194807194940%_
                                         (gx#syntax-e _%$%e194804194821%_)))
                                    (let ((_%$%hd194808194943%_
                                           (##car _%$%e194807194940%_))
                                          (_%$%tl194809194945%_
                                           (##cdr _%$%e194807194940%_)))
                                      (if (gx#stx-pair? _%$%tl194809194945%_)
                                          (let ((_%$%e194810194948%_
                                                 (gx#syntax-e
                                                  _%$%tl194809194945%_)))
                                            (let ((_%$%hd194811194951%_
                                                   (##car _%$%e194810194948%_))
                                                  (_%$%tl194812194953%_
                                                   (##cdr _%$%e194810194948%_)))
                                              (let ((_%path194956%_
                                                     _%$%hd194811194951%_))
                                                (if (gx#stx-null?
                                                     _%$%tl194812194953%_)
                                                    (_%K194801%_
                                                     _%rest194802%_
                                                     (cons (_%import-spec-source194729%_
                                                            _%path194956%_)
                                                           _%r194803%_))
                                                    (_%$%E194806194936%_)))))
                                          (_%$%E194806194936%_))))
                                  (_%$%E194806194936%_)))))
                      (_%$%E194805194958%_))))
                 (_%import-spec-source194729%_
                  (lambda (_%spath194798%_)
                    (gx#core-import-nested-module
                     _%spath194798%_
                     _%stx194721%_)))
                 (_%import!194730%_
                  (lambda (_%rbody194743%_)
                    (letrec* ((_%current-ctx194745%_
                               (gx#current-expander-context))
                              (_%deps194746%_ (make-hash-table-eq))
                              (_%bind!194747%_
                               (lambda (_%hd194796%_)
                                 (gx#core-bind-import!__1
                                  _%hd194796%_
                                  _%current-ctx194745%_))))
                      (let _%lp194749%_ ((_%rest194751%_ _%rbody194743%_)
                                         (_%body194752%_ '()))
                        (let* ((_%$%rest194753194761%_ _%rest194751%_)
                               (_%$%else194755194772%_
                                (lambda ()
                                  (if (##structure-instance-of?
                                       _%current-ctx194745%_
                                       'gx#module-context::t)
                                      (##unchecked-structure-set!
                                       _%current-ctx194745%_
                                       (foldl__0
                                        cons
                                        (##unchecked-structure-ref
                                         _%current-ctx194745%_
                                         '8
                                         '#f
                                         '#f)
                                        _%body194752%_)
                                       '8
                                       '#f
                                       '#f)
                                      '#!void)
                                  (__hash-for-each
                                   (lambda (_%ctx194769%_ _%_194770%_)
                                     (gx#eval-module _%ctx194769%_))
                                   _%deps194746%_)
                                  _%body194752%_))
                               (_%$%K194757194784%_
                                (lambda (_%rest194775%_ _%hd194776%_)
                                  (if (##structure-direct-instance-of?
                                       _%hd194776%_
                                       'gx#module-import::t)
                                      (let ()
                                        (_%bind!194747%_ _%hd194776%_)
                                        (if (and (fxpositive?
                                                  (##unchecked-structure-ref
                                                   _%hd194776%_
                                                   '3
                                                   '#f
                                                   '#f))
                                                 (fxzero? (##unchecked-structure-ref
                                                           (##unchecked-structure-ref
                                                            _%hd194776%_
                                                            '1
                                                            '#f
                                                            '#f)
                                                           '3
                                                           '#f
                                                           '#f)))
                                            (__hash-put!
                                             _%deps194746%_
                                             (##unchecked-structure-ref
                                              (##unchecked-structure-ref
                                               _%hd194776%_
                                               '1
                                               '#f
                                               '#f)
                                              '1
                                              '#f
                                              '#f)
                                             '#t)
                                            '#!void))
                                      (if (##structure-direct-instance-of?
                                           _%hd194776%_
                                           'gx#import-set::t)
                                          (let ()
                                            (for-each
                                             _%bind!194747%_
                                             (##unchecked-structure-ref
                                              _%hd194776%_
                                              '3
                                              '#f
                                              '#f))
                                            (if (fxpositive?
                                                 (##unchecked-structure-ref
                                                  _%hd194776%_
                                                  '2
                                                  '#f
                                                  '#f))
                                                (__hash-put!
                                                 _%deps194746%_
                                                 (##unchecked-structure-ref
                                                  _%hd194776%_
                                                  '1
                                                  '#f
                                                  '#f)
                                                 '#t)
                                                '#!void))
                                          (let ((_%$e194780%_
                                                 (##structure-instance-of?
                                                  _%hd194776%_
                                                  'gx#module-context::t)))
                                            (if _%$e194780%_
                                                _%$e194780%_
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Unexpected import"
                                                 _%stx194721%_
                                                 _%hd194776%_)))))
                                  (_%lp194749%_
                                   _%rest194775%_
                                   (cons _%hd194776%_ _%body194752%_)))))
                          (if (pair? _%$%rest194753194761%_)
                              (let ((_%$%hd194758194787%_
                                     (##car _%$%rest194753194761%_))
                                    (_%$%tl194759194789%_
                                     (##cdr _%$%rest194753194761%_)))
                                (let* ((_%hd194792%_ _%$%hd194758194787%_)
                                       (_%rest194794%_ _%$%tl194759194789%_))
                                  (_%$%K194757194784%_
                                   _%rest194794%_
                                   _%hd194792%_)))
                              (_%$%else194755194772%_)))))))
                 (_%expanded-import?194731%_
                  (lambda (_%e194735%_)
                    (let ((_%$e194737%_
                           (##structure-direct-instance-of?
                            _%e194735%_
                            'gx#import-set::t)))
                      (if _%$e194737%_
                          _%$e194737%_
                          (let ((_%$e194740%_
                                 (##structure-direct-instance-of?
                                  _%e194735%_
                                  'gx#module-import::t)))
                            (if _%$e194740%_
                                _%$e194740%_
                                (##structure-instance-of?
                                 _%e194735%_
                                 'gx#module-context::t))))))))
          (let ((_%rbody194733%_
                 (gx#core-expand-import/export
                  _%stx194721%_
                  _%expanded-import?194731%_
                  'apply-import-expander
                  gx#current-import-expander-phi
                  _%expand1194724%_)))
            (if _%internal-expand?194722%_
                (reverse _%rbody194733%_)
                (gx#core-quote-syntax__1
                 (gx#core-cons '%#import (_%import!194730%_ _%rbody194733%_))
                 (gx#stx-source _%stx194721%_)))))))
    (define gx#core-expand-import%__0
      (lambda (_%stx195060%_)
        (let ((_%internal-expand?195062%_ '#f))
          (gx#core-expand-import%__%
           _%stx195060%_
           _%internal-expand?195062%_))))
    (define gx#core-expand-import%
      (lambda _g197818_
        (let ((_g197819_ (##length _g197818_)))
          (cond ((##fx= _g197819_ 1)
                 (apply gx#core-expand-import%__0 _g197818_))
                ((##fx= _g197819_ 2)
                 (apply gx#core-expand-import%__% _g197818_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-import%
                  _g197818_))))))
    (define gx#core-import-nested-module
      (lambda (_%spath194648%_ _%where194649%_)
        (let* ((_%$%e194650194657%_ _%spath194648%_)
               (_%$%E194652194661%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e194650194657%_)))
               (_%$%E194651194716%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e194650194657%_)
                      (let ((_%$%e194653194665%_
                             (gx#syntax-e _%$%e194650194657%_)))
                        (let ((_%$%hd194654194668%_
                               (##car _%$%e194653194665%_))
                              (_%$%tl194655194670%_
                               (##cdr _%$%e194653194665%_)))
                          (let* ((_%origin194673%_ _%$%hd194654194668%_)
                                 (_%sub194675%_ _%$%tl194655194670%_)
                                 (_%origin-ctx194677%_
                                  (if (gx#stx-false? _%origin194673%_)
                                      (gx#current-expander-context)
                                      (gx#import-module__0 _%origin194673%_))))
                            (let _%lp194679%_ ((_%rest194681%_ _%sub194675%_)
                                               (_%ctx194682%_
                                                _%origin-ctx194677%_))
                              (let* ((_%$%e194683194690%_ _%rest194681%_)
                                     (_%$%E194685194694%_
                                      (lambda () _%ctx194682%_))
                                     (_%$%E194684194712%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e194683194690%_)
                                            (let ((_%$%e194686194698%_
                                                   (gx#syntax-e
                                                    _%$%e194683194690%_)))
                                              (let ((_%$%hd194687194701%_
                                                     (##car _%$%e194686194698%_))
                                                    (_%$%tl194688194703%_
                                                     (##cdr _%$%e194686194698%_)))
                                                (let* ((_%id194706%_
                                                        _%$%hd194687194701%_)
                                                       (_%rest194708%_
                                                        _%$%tl194688194703%_)
                                                       (_%bind194710%_
                                                        (gx#resolve-identifier__%
                                                         _%id194706%_
                                                         '0
                                                         _%ctx194682%_)))
                                                  (if (and (##structure-direct-instance-of?
                                                            _%bind194710%_
                                                            'gx#syntax-binding::t)
                                                           (##structure-instance-of?
                                                            (##unchecked-structure-ref
                                                             _%bind194710%_
                                                             '5
                                                             '#f
                                                             '#f)
                                                            'gx#module-context::t))
                                                      '#!void
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; not bound as module"
                                                       _%where194649%_
                                                       _%spath194648%_
                                                       _%id194706%_))
                                                  (_%lp194679%_
                                                   _%rest194708%_
                                                   (##unchecked-structure-ref
                                                    _%bind194710%_
                                                    '5
                                                    '#f
                                                    '#f)))))
                                            (_%$%E194685194694%_)))))
                                (_%$%E194684194712%_))))))
                      (_%$%E194652194661%_)))))
          (_%$%E194651194716%_))))
    (define gx#core-expand-import-source
      (lambda (_%hd194646%_)
        (gx#core-expand-import%__%
         (cons 'import-internal% (cons _%hd194646%_ '()))
         '#t)))
    (define gx#core-expand-export%__%
      (lambda (_%stx194141%_ _%internal-expand?194142%_)
        (letrec* ((_%make-export__197746197747%_
                   (lambda (_%bind194594%_
                            _%phi194595%_
                            _%ctx194596%_
                            _%name194597%_)
                     (let* ((_%key194599%_
                             (##unchecked-structure-ref
                              _%bind194594%_
                              '2
                              '#f
                              '#f))
                            (_%export-key194601%_
                             (if _%name194597%_
                                 (gx#core-identifier-key _%name194597%_)
                                 _%key194599%_)))
                       (##structure
                        gx#module-export::t
                        _%ctx194596%_
                        _%key194599%_
                        _%phi194595%_
                        _%export-key194601%_
                        (let ((_%$e194604%_
                               (##structure-instance-of?
                                _%bind194594%_
                                'gx#extern-binding::t)))
                          (if _%$e194604%_
                              _%$e194604%_
                              (##structure-direct-instance-of?
                               _%bind194594%_
                               'gx#import-binding::t)))))))
                  (_%make-export__0__197748197751%_
                   (lambda (_%bind194610%_)
                     (let* ((_%phi194612%_ (gx#current-export-expander-phi))
                            (_%ctx194614%_ (gx#current-expander-context))
                            (_%name194616%_ '#f))
                       (_%make-export__197746197747%_
                        _%bind194610%_
                        _%phi194612%_
                        _%ctx194614%_
                        _%name194616%_))))
                  (_%make-export__1__197749197752%_
                   (lambda (_%bind194618%_ _%phi194619%_)
                     (let* ((_%ctx194621%_ (gx#current-expander-context))
                            (_%name194623%_ '#f))
                       (_%make-export__197746197747%_
                        _%bind194618%_
                        _%phi194619%_
                        _%ctx194621%_
                        _%name194623%_))))
                  (_%make-export__2__197750197753%_
                   (lambda (_%bind194625%_ _%phi194626%_ _%ctx194627%_)
                     (let ((_%name194629%_ '#f))
                       (_%make-export__197746197747%_
                        _%bind194625%_
                        _%phi194626%_
                        _%ctx194627%_
                        _%name194629%_))))
                  (_%make-export194144%_
                   (lambda _g197820_
                     (let ((_g197821_ (##length _g197820_)))
                       (cond ((##fx= _g197821_ 1)
                              (apply _%make-export__0__197748197751%_
                                     _g197820_))
                             ((##fx= _g197821_ 2)
                              (apply _%make-export__1__197749197752%_
                                     _g197820_))
                             ((##fx= _g197821_ 3)
                              (apply _%make-export__2__197750197753%_
                                     _g197820_))
                             ((##fx= _g197821_ 4)
                              (apply _%make-export__197746197747%_ _g197820_))
                             (else
                              (##raise-wrong-number-of-arguments-exception
                               'case-lambda-dispatch
                               _g197820_))))))
                  (_%expand1194145%_
                   (lambda (_%hd194299%_
                            _%K194300%_
                            _%rest194301%_
                            _%r194302%_)
                     (let* ((_%$%e194303194335%_ _%hd194299%_)
                            (_%$%E194330194339%_
                             (lambda ()
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; illegal export"
                                _%stx194141%_
                                _%hd194299%_)))
                            (_%$%E194320194423%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e194303194335%_)
                                   (let ((_%$%e194331194343%_
                                          (gx#syntax-e _%$%e194303194335%_)))
                                     (let ((_%$%hd194332194346%_
                                            (##car _%$%e194331194343%_))
                                           (_%$%tl194333194348%_
                                            (##cdr _%$%e194331194343%_)))
                                       (if (eq? (gx#stx-e _%$%hd194332194346%_)
                                                'import:)
                                           (let ((_%in194351%_
                                                  _%$%tl194333194348%_))
                                             (if (gx#stx-list? _%in194351%_)
                                                 (let _%lp194353%_ ((_%in-rest194355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%in194351%_)
                            (_%r194356%_ _%r194302%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let* ((_%$%e194357194364%_
                                                           _%in-rest194355%_)
                                                          (_%$%E194359194368%_
                                                           (lambda ()
                                                             (_%K194300%_
                                                              _%rest194301%_
                                                              _%r194356%_)))
                                                          (_%$%E194358194419%_
                                                           (lambda ()
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%e194357194364%_)
                         (let ((_%$%e194360194372%_
                                (gx#syntax-e _%$%e194357194364%_)))
                           (let ((_%$%hd194361194375%_
                                  (##car _%$%e194360194372%_))
                                 (_%$%tl194362194377%_
                                  (##cdr _%$%e194360194372%_)))
                             (let* ((_%hd194380%_ _%$%hd194361194375%_)
                                    (_%in-rest194382%_ _%$%tl194362194377%_)
                                    (_%src194417%_
                                     (if (gx#core-bound-module? _%hd194380%_)
                                         (gx#syntax-local-e__0 _%hd194380%_)
                                         (if (gx#core-library-module-path?
                                              _%hd194380%_)
                                             (gx#import-module__0
                                              (gx#core-resolve-library-module-path
                                               _%hd194380%_))
                                             (if (gx#core-library-relative-module-path?
                                                  _%hd194380%_)
                                                 (gx#import-module__0
                                                  (gx#core-resolve-library-relative-module-path
                                                   _%hd194380%_))
                                                 (if (gx#stx-string?
                                                      _%hd194380%_)
                                                     (gx#import-module__0
                                                      (gx#core-resolve-module-path__%
                                                       _%hd194380%_
                                                       (gx#stx-source
                                                        _%stx194141%_)))
                                                     (let* ((_%$%e194388194395%_
                                                             _%hd194380%_)
                                                            (_%$%E194390194399%_
                                                             (lambda ()
                                                               (gx#raise-syntax-error
                                                                '#f
                                                                '"Bad syntax; illegal re-export"
                                                                _%stx194141%_
                                                                _%hd194380%_)))
                                                            (_%$%E194389194413%_
                                                             (lambda ()
                                                               (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%e194388194395%_)
                           (let ((_%$%e194391194403%_
                                  (gx#syntax-e _%$%e194388194395%_)))
                             (let ((_%$%hd194392194406%_
                                    (##car _%$%e194391194403%_))
                                   (_%$%tl194393194408%_
                                    (##cdr _%$%e194391194403%_)))
                               (if (eq? (gx#stx-e _%$%hd194392194406%_) 'in:)
                                   (let ((_%spath194411%_
                                          _%$%tl194393194408%_))
                                     (gx#core-import-nested-module
                                      _%spath194411%_
                                      _%stx194141%_))
                                   (_%$%E194390194399%_))))
                           (_%$%E194390194399%_)))))
               (_%$%E194389194413%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (_%lp194353%_
                                _%in-rest194382%_
                                (_%export-imports194146%_
                                 _%src194417%_
                                 _%r194356%_)))))
                         (_%$%E194359194368%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%E194358194419%_)))
                                                 (_%$%E194330194339%_)))
                                           (_%$%E194330194339%_))))
                                   (_%$%E194330194339%_))))
                            (_%$%E194307194463%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e194303194335%_)
                                   (let ((_%$%e194321194427%_
                                          (gx#syntax-e _%$%e194303194335%_)))
                                     (let ((_%$%hd194322194430%_
                                            (##car _%$%e194321194427%_))
                                           (_%$%tl194323194432%_
                                            (##cdr _%$%e194321194427%_)))
                                       (if (eq? (gx#stx-e _%$%hd194322194430%_)
                                                'rename:)
                                           (if (gx#stx-pair?
                                                _%$%tl194323194432%_)
                                               (let ((_%$%e194324194435%_
                                                      (gx#syntax-e
                                                       _%$%tl194323194432%_)))
                                                 (let ((_%$%hd194325194438%_
                                                        (##car _%$%e194324194435%_))
                                                       (_%$%tl194326194440%_
                                                        (##cdr _%$%e194324194435%_)))
                                                   (let ((_%id194443%_
                                                          _%$%hd194325194438%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl194326194440%_)
                                                         (let ((_%$%e194327194445%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl194326194440%_)))
                   (let ((_%$%hd194328194448%_ (##car _%$%e194327194445%_))
                         (_%$%tl194329194450%_ (##cdr _%$%e194327194445%_)))
                     (let ((_%name194453%_ _%$%hd194328194448%_))
                       (if (gx#stx-null? _%$%tl194329194450%_)
                           (let* ((_%phi194455%_
                                   (gx#current-export-expander-phi))
                                  (_%$e194457%_
                                   (gx#core-resolve-identifier__1
                                    _%id194443%_
                                    _%phi194455%_)))
                             (if _%$e194457%_
                                 (_%K194300%_
                                  _%rest194301%_
                                  (cons (_%make-export__197746197747%_
                                         _%$e194457%_
                                         _%phi194455%_
                                         (gx#current-expander-context)
                                         _%name194453%_)
                                        _%r194302%_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Reference to unbound identifier"
                                  _%stx194141%_
                                  _%hd194299%_
                                  _%id194443%_)))
                           (_%$%E194320194423%_)))))
                 (_%$%E194320194423%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E194320194423%_))
                                           (_%$%E194320194423%_))))
                                   (_%$%E194320194423%_))))
                            (_%$%E194306194513%_
                             (lambda ()
                               (if (gx#stx-pair? _%$%e194303194335%_)
                                   (let ((_%$%e194308194467%_
                                          (gx#syntax-e _%$%e194303194335%_)))
                                     (let ((_%$%hd194309194470%_
                                            (##car _%$%e194308194467%_))
                                           (_%$%tl194310194472%_
                                            (##cdr _%$%e194308194467%_)))
                                       (if (eq? (gx#stx-e _%$%hd194309194470%_)
                                                'spec:)
                                           (if (gx#stx-pair?
                                                _%$%tl194310194472%_)
                                               (let ((_%$%e194311194475%_
                                                      (gx#syntax-e
                                                       _%$%tl194310194472%_)))
                                                 (let ((_%$%hd194312194478%_
                                                        (##car _%$%e194311194475%_))
                                                       (_%$%tl194313194480%_
                                                        (##cdr _%$%e194311194475%_)))
                                                   (let ((_%phi194483%_
                                                          _%$%hd194312194478%_))
                                                     (if (gx#stx-pair?
                                                          _%$%tl194313194480%_)
                                                         (let ((_%$%e194314194485%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl194313194480%_)))
                   (let ((_%$%hd194315194488%_ (##car _%$%e194314194485%_))
                         (_%$%tl194316194490%_ (##cdr _%$%e194314194485%_)))
                     (let ((_%id194493%_ _%$%hd194315194488%_))
                       (if (gx#stx-pair? _%$%tl194316194490%_)
                           (let ((_%$%e194317194495%_
                                  (gx#syntax-e _%$%tl194316194490%_)))
                             (let ((_%$%hd194318194498%_
                                    (##car _%$%e194317194495%_))
                                   (_%$%tl194319194500%_
                                    (##cdr _%$%e194317194495%_)))
                               (let ((_%name194503%_ _%$%hd194318194498%_))
                                 (if (gx#stx-null? _%$%tl194319194500%_)
                                     (if (and (gx#stx-fixnum? _%phi194483%_)
                                              (gx#identifier? _%id194493%_)
                                              (gx#identifier? _%name194503%_))
                                         (let* ((_%phi194505%_
                                                 (gx#stx-e _%phi194483%_))
                                                (_%$e194507%_
                                                 (gx#core-resolve-identifier__1
                                                  _%id194493%_
                                                  _%phi194505%_)))
                                           (if _%$e194507%_
                                               (_%K194300%_
                                                _%rest194301%_
                                                (cons (_%make-export__197746197747%_
                                                       _%$e194507%_
                                                       _%phi194505%_
                                                       (gx#current-expander-context)
                                                       _%name194503%_)
                                                      _%r194302%_))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Reference to unbound identifier"
                                                _%stx194141%_
                                                _%hd194299%_
                                                _%id194493%_)))
                                         (_%$%E194307194463%_))
                                     (_%$%E194307194463%_)))))
                           (_%$%E194307194463%_)))))
                 (_%$%E194307194463%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E194307194463%_))
                                           (_%$%E194307194463%_))))
                                   (_%$%E194307194463%_))))
                            (_%$%E194305194525%_
                             (lambda ()
                               (let ((_%id194517%_ _%$%e194303194335%_))
                                 (if (gx#identifier? _%id194517%_)
                                     (let ((_%$e194519%_
                                            (gx#core-resolve-identifier__1
                                             _%id194517%_
                                             (gx#current-export-expander-phi))))
                                       (if _%$e194519%_
                                           (_%K194300%_
                                            _%rest194301%_
                                            (cons (_%make-export__0__197748197751%_
                                                   _%$e194519%_)
                                                  _%r194302%_))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Reference to unbound identifier"
                                            _%stx194141%_
                                            _%hd194299%_)))
                                     (_%$%E194306194513%_)))))
                            (_%$%E194304194589%_
                             (lambda ()
                               (if (eq? (gx#stx-e _%$%e194303194335%_) '#t)
                                   (let* ((_%current-ctx194529%_
                                           (gx#current-expander-context))
                                          (_%current-phi194531%_
                                           (gx#current-export-expander-phi))
                                          (_%phi-ctx194533%_
                                           (gx#core-context-shift
                                            _%current-ctx194529%_
                                            _%current-phi194531%_))
                                          (_%phi-bind194535%_
                                           (hash->list
                                            (##unchecked-structure-ref
                                             _%phi-ctx194533%_
                                             '2
                                             '#f
                                             '#f))))
                                     (let _%lp194538%_ ((_%bind-rest194540%_
                                                         _%phi-bind194535%_)
                                                        (_%set194541%_ '()))
                                       (let* ((_%$%bind-rest194542194552%_
                                               _%bind-rest194540%_)
                                              (_%$%else194544194560%_
                                               (lambda ()
                                                 (_%K194300%_
                                                  _%rest194301%_
                                                  (cons (##structure
                                                         gx#export-set::t
                                                         '#f
                                                         _%current-phi194531%_
                                                         _%set194541%_)
                                                        _%r194302%_))))
                                              (_%$%K194546194570%_
                                               (lambda (_%bind-rest194563%_
                                                        _%bind194564%_
                                                        _%key194565%_)
                                                 (if (or (##structure-direct-instance-of?
                                                          _%bind194564%_
                                                          'gx#import-binding::t)
                                                         (gx#private-feature-binding?
                                                          _%bind194564%_))
                                                     (_%lp194538%_
                                                      _%bind-rest194563%_
                                                      _%set194541%_)
                                                     (_%lp194538%_
                                                      _%bind-rest194563%_
                                                      (cons (_%make-export__2__197750197753%_
                                                             _%bind194564%_
                                                             _%current-phi194531%_
                                                             _%current-ctx194529%_)
                                                            _%set194541%_))))))
                                         (if (pair? _%$%bind-rest194542194552%_)
                                             (let ((_%$%hd194547194573%_
                                                    (##car _%$%bind-rest194542194552%_))
                                                   (_%$%tl194548194575%_
                                                    (##cdr _%$%bind-rest194542194552%_)))
                                               (if (pair? _%$%hd194547194573%_)
                                                   (let ((_%$%hd194549194578%_
                                                          (##car _%$%hd194547194573%_))
                                                         (_%$%tl194550194580%_
                                                          (##cdr _%$%hd194547194573%_)))
                                                     (let* ((_%key194583%_
                                                             _%$%hd194549194578%_)
                                                            (_%bind194585%_
                                                             _%$%tl194550194580%_)
                                                            (_%bind-rest194587%_
                                                             _%$%tl194548194575%_))
                                                       (_%$%K194546194570%_
                                                        _%bind-rest194587%_
                                                        _%bind194585%_
                                                        _%key194583%_)))
                                                   (_%$%else194544194560%_)))
                                             (_%$%else194544194560%_)))))
                                   (_%$%E194305194525%_)))))
                       (_%$%E194304194589%_))))
                  (_%export-imports194146%_
                   (lambda (_%src194176%_ _%r194177%_)
                     (letrec* ((_%current-ctx194179%_
                                (gx#current-expander-context))
                               (_%current-phi194180%_
                                (gx#current-export-expander-phi))
                               (_%import->export194181%_
                                (lambda (_%in194262%_)
                                  (let* ((_%$%in194263194271%_ _%in194262%_)
                                         (_%$%E194265194274%_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _%$%in194263194271%_
                                                   '((module-import
                                                      out
                                                      key
                                                      phi)))
                                            '#!void))
                                         (_%$%K194266194281%_
                                          (lambda (_%phi194277%_
                                                   _%key194278%_
                                                   _%out194279%_)
                                            (##structure
                                             gx#module-export::t
                                             _%current-ctx194179%_
                                             _%key194278%_
                                             _%phi194277%_
                                             _%key194278%_
                                             '#t))))
                                    (if (##structure-direct-instance-of?
                                         _%$%in194263194271%_
                                         'gx#module-import::t)
                                        (let* ((_%$%e194267194284%_
                                                (##unchecked-structure-ref
                                                 _%$%in194263194271%_
                                                 '1
                                                 '#f
                                                 '#f))
                                               (_%out194287%_
                                                _%$%e194267194284%_)
                                               (_%$%e194268194289%_
                                                (##unchecked-structure-ref
                                                 _%$%in194263194271%_
                                                 '2
                                                 '#f
                                                 '#f))
                                               (_%key194292%_
                                                _%$%e194268194289%_)
                                               (_%$%e194269194294%_
                                                (##unchecked-structure-ref
                                                 _%$%in194263194271%_
                                                 '3
                                                 '#f
                                                 '#f))
                                               (_%phi194297%_
                                                _%$%e194269194294%_))
                                          (_%$%K194266194281%_
                                           _%phi194297%_
                                           _%key194292%_
                                           _%out194287%_))
                                        (_%$%E194265194274%_)))))
                               (_%fold-e194182%_
                                (lambda (_%in194184%_ _%r194185%_)
                                  (let* ((_%$%in194186194200%_ _%in194184%_)
                                         (_%$%else194189194208%_
                                          (lambda () _%r194185%_)))
                                    (let ((_%$%K194195194244%_
                                           (lambda (_%phi194240%_
                                                    _%key194241%_
                                                    _%out194242%_)
                                             (if (and (fx= _%phi194240%_
                                                           _%current-phi194180%_)
                                                      (eq? _%src194176%_
                                                           (##unchecked-structure-ref
                                                            _%out194242%_
                                                            '1
                                                            '#f
                                                            '#f)))
                                                 (cons (_%import->export194181%_
                                                        _%in194184%_)
                                                       _%r194185%_)
                                                 _%r194185%_)))
                                          (_%$%K194191194219%_
                                           (lambda (_%imports194212%_
                                                    _%phi194213%_
                                                    _%ctx194214%_)
                                             (if (and (fx= _%phi194213%_
                                                           _%current-phi194180%_)
                                                      (eq? _%src194176%_
                                                           _%ctx194214%_))
                                                 (foldl__0
                                                  (lambda (_%in194216%_
                                                           _%r194217%_)
                                                    (cons (_%import->export194181%_
                                                           _%in194216%_)
                                                          _%r194217%_))
                                                  _%r194185%_
                                                  _%imports194212%_)
                                                 _%r194185%_))))
                                      (let ((_%$%try-match194188194237%_
                                             (lambda ()
                                               (if (##structure-direct-instance-of?
                                                    _%$%in194186194200%_
                                                    'gx#import-set::t)
                                                   (let* ((_%$%e194192194222%_
                                                           (##unchecked-structure-ref
                                                            _%$%in194186194200%_
                                                            '1
                                                            '#f
                                                            '#f))
                                                          (_%$%e194193194227%_
                                                           (##unchecked-structure-ref
                                                            _%$%in194186194200%_
                                                            '2
                                                            '#f
                                                            '#f))
                                                          (_%$%e194194194232%_
                                                           (##unchecked-structure-ref
                                                            _%$%in194186194200%_
                                                            '3
                                                            '#f
                                                            '#f)))
                                                     (let ((_%ctx194225%_
                                                            _%$%e194192194222%_)
                                                           (_%phi194230%_
                                                            _%$%e194193194227%_)
                                                           (_%imports194235%_
                                                            _%$%e194194194232%_))
                                                       (_%$%K194191194219%_
                                                        _%imports194235%_
                                                        _%phi194230%_
                                                        _%ctx194225%_)))
                                                   (_%$%else194189194208%_)))))
                                        (if (##structure-direct-instance-of?
                                             _%$%in194186194200%_
                                             'gx#module-import::t)
                                            (let* ((_%$%e194196194247%_
                                                    (##unchecked-structure-ref
                                                     _%$%in194186194200%_
                                                     '1
                                                     '#f
                                                     '#f))
                                                   (_%$%e194197194252%_
                                                    (##unchecked-structure-ref
                                                     _%$%in194186194200%_
                                                     '2
                                                     '#f
                                                     '#f))
                                                   (_%$%e194198194257%_
                                                    (##unchecked-structure-ref
                                                     _%$%in194186194200%_
                                                     '3
                                                     '#f
                                                     '#f)))
                                              (let ((_%out194250%_
                                                     _%$%e194196194247%_)
                                                    (_%key194255%_
                                                     _%$%e194197194252%_)
                                                    (_%phi194260%_
                                                     _%$%e194198194257%_))
                                                (_%$%K194195194244%_
                                                 _%phi194260%_
                                                 _%key194255%_
                                                 _%out194250%_)))
                                            (_%$%try-match194188194237%_))))))))
                       (cons (##structure
                              gx#export-set::t
                              _%src194176%_
                              _%current-phi194180%_
                              (foldl__0
                               _%fold-e194182%_
                               '()
                               (##unchecked-structure-ref
                                _%current-ctx194179%_
                                '8
                                '#f
                                '#f)))
                             _%r194177%_))))
                  (_%export!194147%_
                   (lambda (_%rbody194163%_)
                     (letrec* ((_%current-ctx194165%_
                                (gx#current-expander-context))
                               (_%fold-e194166%_
                                (lambda (_%out194170%_ _%r194171%_)
                                  (if (##structure-direct-instance-of?
                                       _%out194170%_
                                       'gx#module-export::t)
                                      (cons _%out194170%_ _%r194171%_)
                                      (if (##structure-direct-instance-of?
                                           _%out194170%_
                                           'gx#export-set::t)
                                          (foldl__0
                                           cons
                                           _%r194171%_
                                           (##unchecked-structure-ref
                                            _%out194170%_
                                            '3
                                            '#f
                                            '#f))
                                          _%r194171%_)))))
                       (let ((_%body194168%_ (reverse _%rbody194163%_)))
                         (##unchecked-structure-set!
                          _%current-ctx194165%_
                          (foldl__0
                           _%fold-e194166%_
                           (##unchecked-structure-ref
                            _%current-ctx194165%_
                            '9
                            '#f
                            '#f)
                           _%body194168%_)
                          '9
                          '#f
                          '#f)
                         _%body194168%_))))
                  (_%expanded-export?194148%_
                   (lambda (_%e194158%_)
                     (let ((_%$e194160%_
                            (##structure-direct-instance-of?
                             _%e194158%_
                             'gx#module-export::t)))
                       (if _%$e194160%_
                           _%$e194160%_
                           (##structure-direct-instance-of?
                            _%e194158%_
                            'gx#export-set::t))))))
          (if (or (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#module-context::t)
                  _%internal-expand?194142%_)
              (let ((_%rbody194154%_
                     (gx#core-expand-import/export
                      _%stx194141%_
                      _%expanded-export?194148%_
                      'apply-export-expander
                      gx#current-export-expander-phi
                      _%expand1194145%_)))
                (if _%internal-expand?194142%_
                    (reverse _%rbody194154%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons
                      '%#export
                      (_%export!194147%_ _%rbody194154%_))
                     (gx#stx-source _%stx194141%_))))
              (if (##structure-instance-of?
                   (gx#current-expander-context)
                   'gx#top-context::t)
                  (gx#core-quote-syntax__1
                   (gx#core-cons '%#begin '())
                   (gx#stx-source _%stx194141%_))
                  (gx#raise-syntax-error
                   '#f
                   '"Illegal context"
                   _%stx194141%_))))))
    (define gx#core-expand-export%__0
      (lambda (_%stx194639%_)
        (let ((_%internal-expand?194641%_ '#f))
          (gx#core-expand-export%__%
           _%stx194639%_
           _%internal-expand?194641%_))))
    (define gx#core-expand-export%
      (lambda _g197822_
        (let ((_g197823_ (##length _g197822_)))
          (cond ((##fx= _g197823_ 1)
                 (apply gx#core-expand-export%__0 _g197822_))
                ((##fx= _g197823_ 2)
                 (apply gx#core-expand-export%__% _g197822_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-export%
                  _g197822_))))))
    (define gx#core-expand-export-source
      (lambda (_%hd194138%_)
        (gx#core-expand-export%__%
         (cons 'export-macro% (cons _%hd194138%_ '()))
         '#t)))
    (define gx#core-expand-provide%
      (lambda (_%stx194108%_)
        (let* ((_%$%e194109194116%_ _%stx194108%_)
               (_%$%E194111194120%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e194109194116%_)))
               (_%$%E194110194134%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e194109194116%_)
                      (let ((_%$%e194112194124%_
                             (gx#syntax-e _%$%e194109194116%_)))
                        (let ((_%$%hd194113194127%_
                               (##car _%$%e194112194124%_))
                              (_%$%tl194114194129%_
                               (##cdr _%$%e194112194124%_)))
                          (let ((_%body194132%_ _%$%tl194114194129%_))
                            (if (gx#identifier-list? _%body194132%_)
                                (begin
                                  (gx#stx-for-each1
                                   gx#core-bind-feature!
                                   _%body194132%_)
                                  (gx#core-quote-syntax__1
                                   (gx#core-cons
                                    '%#provide
                                    (gx#stx-map1
                                     gx#core-quote-syntax
                                     _%body194132%_))
                                   (gx#stx-source _%stx194108%_)))
                                (_%$%E194111194120%_)))))
                      (_%$%E194111194120%_)))))
          (_%$%E194110194134%_))))
    (define gx#core-bind-feature!__%
      (lambda (_%id194074%_ _%private?194075%_ _%phi194076%_ _%ctx194077%_)
        (gx#core-bind-syntax!__%
         _%id194074%_
         ((if _%private?194075%_
              gx#make-private-feature-expander
              gx#make-feature-expander)
          (gx#stx-e _%id194074%_))
         _%private?194075%_
         _%phi194076%_
         _%ctx194077%_)))
    (define gx#core-bind-feature!__0
      (lambda (_%id194082%_)
        (let* ((_%private?194084%_ '#f)
               (_%phi194086%_ (gx#current-expander-phi))
               (_%ctx194088%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id194082%_
           _%private?194084%_
           _%phi194086%_
           _%ctx194088%_))))
    (define gx#core-bind-feature!__1
      (lambda (_%id194090%_ _%private?194091%_)
        (let* ((_%phi194093%_ (gx#current-expander-phi))
               (_%ctx194095%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id194090%_
           _%private?194091%_
           _%phi194093%_
           _%ctx194095%_))))
    (define gx#core-bind-feature!__2
      (lambda (_%id194097%_ _%private?194098%_ _%phi194099%_)
        (let ((_%ctx194101%_ (gx#current-expander-context)))
          (gx#core-bind-feature!__%
           _%id194097%_
           _%private?194098%_
           _%phi194099%_
           _%ctx194101%_))))
    (define gx#core-bind-feature!
      (lambda _g197824_
        (let ((_g197825_ (##length _g197824_)))
          (cond ((##fx= _g197825_ 1)
                 (apply gx#core-bind-feature!__0 _g197824_))
                ((##fx= _g197825_ 2)
                 (apply gx#core-bind-feature!__1 _g197824_))
                ((##fx= _g197825_ 3)
                 (apply gx#core-bind-feature!__2 _g197824_))
                ((##fx= _g197825_ 4)
                 (apply gx#core-bind-feature!__% _g197824_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-feature!
                  _g197824_))))))))
